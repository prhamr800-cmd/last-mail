package com.crashlytics.android.core;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.services.common.BackgroundPriorityRunnable;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class ReportUploader {
    private static final String CLS_FILE_EXT = ".cls";
    private final String apiKey;
    private final CreateReportSpiCall createReportCall;
    private final Object fileAccessLock = new Object();
    private Thread uploadThread;
    private static final FilenameFilter crashFileFilter = new FilenameFilter() { // from class: com.crashlytics.android.core.ReportUploader.1
        @Override // java.io.FilenameFilter
        public boolean accept(File dir, String filename) {
            return filename.endsWith(".cls") && !filename.contains("Session");
        }
    };
    static final Map<String, String> HEADER_INVALID_CLS_FILE = Collections.singletonMap("X-CRASHLYTICS-INVALID-SESSION", "1");
    private static final short[] RETRY_INTERVALS = {10, 20, 30, 60, 120, 300};

    public ReportUploader(String apiKey, CreateReportSpiCall createReportCall) {
        if (createReportCall == null) {
            throw new IllegalArgumentException("createReportCall must not be null.");
        }
        this.createReportCall = createReportCall;
        this.apiKey = apiKey;
    }

    public void uploadReports() {
        uploadReports(0.0f);
    }

    public synchronized void uploadReports(float delay) {
        if (this.uploadThread == null) {
            this.uploadThread = new Thread(new Worker(delay), "Crashlytics Report Uploader");
            this.uploadThread.start();
        }
    }

    boolean isUploading() {
        return this.uploadThread != null;
    }

    boolean forceUpload(Report report) {
        boolean sent;
        boolean removed = false;
        synchronized (this.fileAccessLock) {
            try {
                CreateReportRequest requestData = new CreateReportRequest(this.apiKey, report);
                sent = this.createReportCall.invoke(requestData);
                Logger logger = Fabric.getLogger();
                StringBuilder sb = new StringBuilder();
                sb.append("Crashlytics report upload ");
                sb.append(sent ? "complete: " : "FAILED: ");
                sb.append(report.getIdentifier());
                logger.i(CrashlyticsCore.TAG, sb.toString());
            } catch (Exception e) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "Error occurred sending report " + report, e);
            }
            if (sent) {
                report.remove();
                removed = true;
            }
        }
        return removed;
    }

    List<Report> findReports() throws Throwable {
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Checking for crash reports...");
        CrashlyticsCore crashlyticsCore = CrashlyticsCore.getInstance();
        CrashlyticsUncaughtExceptionHandler handler = crashlyticsCore.getHandler();
        synchronized (this.fileAccessLock) {
            File[] invalidClsFiles = null;
            try {
                File[] clsFiles = crashlyticsCore.getSdkDirectory().listFiles(crashFileFilter);
                try {
                    invalidClsFiles = handler.getInvalidFilesDir().listFiles();
                    List<Report> reports = new LinkedList<>();
                    for (File file : clsFiles) {
                        Fabric.getLogger().d(CrashlyticsCore.TAG, "Found crash report " + file.getPath());
                        reports.add(new SessionReport(file));
                    }
                    Map<String, List<File>> invalidSessionFiles = new HashMap<>();
                    if (invalidClsFiles != null) {
                        for (File invalidFile : invalidClsFiles) {
                            String sessionId = CrashlyticsUncaughtExceptionHandler.getSessionIdFromSessionFile(invalidFile);
                            if (!invalidSessionFiles.containsKey(sessionId)) {
                                invalidSessionFiles.put(sessionId, new LinkedList<>());
                            }
                            invalidSessionFiles.get(sessionId).add(invalidFile);
                        }
                    }
                    for (String key : invalidSessionFiles.keySet()) {
                        Fabric.getLogger().d(CrashlyticsCore.TAG, "Found invalid session: " + key);
                        List<File> invalidFiles = invalidSessionFiles.get(key);
                        reports.add(new InvalidSessionReport(key, (File[]) invalidFiles.toArray(new File[invalidFiles.size()])));
                    }
                    if (reports.isEmpty()) {
                        Fabric.getLogger().d(CrashlyticsCore.TAG, "No reports found.");
                    }
                    return reports;
                } catch (Throwable th) {
                    th = th;
                    while (true) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    private class Worker extends BackgroundPriorityRunnable {
        private final float delay;

        Worker(float delay) {
            this.delay = delay;
        }

        @Override // io.fabric.sdk.android.services.common.BackgroundPriorityRunnable
        public void onRun() throws Throwable {
            try {
                attemptUploadWithRetry();
            } catch (Exception e) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "An unexpected error occurred while attempting to upload crash reports.", e);
            }
            ReportUploader.this.uploadThread = null;
        }

        private void attemptUploadWithRetry() throws Throwable {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Starting report processing in " + this.delay + " second(s)...");
            if (this.delay > 0.0f) {
                try {
                    Thread.sleep((long) (this.delay * 1000.0f));
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
            CrashlyticsCore crashlyticsCore = CrashlyticsCore.getInstance();
            CrashlyticsUncaughtExceptionHandler handler = crashlyticsCore.getHandler();
            List<Report> reports = ReportUploader.this.findReports();
            if (handler.isHandlingException()) {
                return;
            }
            if (!reports.isEmpty() && !crashlyticsCore.canSendWithUserApproval()) {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "User declined to send. Removing " + reports.size() + " Report(s).");
                for (Report report : reports) {
                    report.remove();
                }
                return;
            }
            int retryCount = 0;
            while (!reports.isEmpty() && !CrashlyticsCore.getInstance().getHandler().isHandlingException()) {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Attempting to send " + reports.size() + " report(s)");
                for (Report report2 : reports) {
                    ReportUploader.this.forceUpload(report2);
                }
                reports = ReportUploader.this.findReports();
                if (!reports.isEmpty()) {
                    int retryCount2 = retryCount + 1;
                    long interval = ReportUploader.RETRY_INTERVALS[Math.min(retryCount, ReportUploader.RETRY_INTERVALS.length - 1)];
                    Fabric.getLogger().d(CrashlyticsCore.TAG, "Report submisson: scheduling delayed retry in " + interval + " seconds");
                    try {
                        Thread.sleep(1000 * interval);
                        retryCount = retryCount2;
                    } catch (InterruptedException e2) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                }
            }
        }
    }
}
