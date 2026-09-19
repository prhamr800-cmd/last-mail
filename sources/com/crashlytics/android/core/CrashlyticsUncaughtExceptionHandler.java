package com.crashlytics.android.core;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import com.crashlytics.android.core.internal.models.SessionEventData;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.persistence.FileStore;
import io.fabric.sdk.android.services.settings.SessionSettingsData;
import io.fabric.sdk.android.services.settings.Settings;
import io.fabric.sdk.android.services.settings.SettingsData;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.lang.Thread;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class CrashlyticsUncaughtExceptionHandler implements Thread.UncaughtExceptionHandler {
    private static final int ANALYZER_VERSION = 1;
    private static final String EVENT_TYPE_CRASH = "crash";
    private static final String EVENT_TYPE_LOGGED = "error";
    private static final String GENERATOR_FORMAT = "Crashlytics Android SDK/%s";
    static final String INVALID_CLS_CACHE_DIR = "invalidClsFiles";
    private static final int MAX_COMPLETE_SESSIONS_COUNT = 4;
    static final int MAX_INVALID_SESSIONS = 4;
    private static final int MAX_LOCAL_LOGGED_EXCEPTIONS = 64;
    static final int MAX_OPEN_SESSIONS = 8;
    static final int MAX_STACK_SIZE = 1024;
    static final int NUM_STACK_REPETITIONS_ALLOWED = 10;
    static final String SESSION_BEGIN_TAG = "BeginSession";
    static final String SESSION_EVENT_MISSING_BINARY_IMGS_TAG = "SessionMissingBinaryImages";
    static final String SESSION_FATAL_TAG = "SessionCrash";
    private static final int SESSION_ID_LENGTH = 35;
    static final String SESSION_NON_FATAL_TAG = "SessionEvent";
    private final CrashlyticsCore crashlyticsCore;
    private final Thread.UncaughtExceptionHandler defaultHandler;
    private final DevicePowerStateListener devicePowerStateListener;
    private final CrashlyticsExecutorServiceWrapper executorServiceWrapper;
    private final FileStore fileStore;
    private final IdManager idManager;
    private final LogFileManager logFileManager;
    private final StackTraceTrimmingStrategy stackTraceTrimmingStrategy;
    private final String unityVersion;
    static final FilenameFilter SESSION_FILE_FILTER = new FilenameFilter() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.1
        @Override // java.io.FilenameFilter
        public boolean accept(File dir, String filename) {
            return filename.length() == ClsFileOutputStream.SESSION_FILE_EXTENSION.length() + 35 && filename.endsWith(ClsFileOutputStream.SESSION_FILE_EXTENSION);
        }
    };
    static final Comparator<File> LARGEST_FILE_NAME_FIRST = new Comparator<File>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.2
        @Override // java.util.Comparator
        public int compare(File file1, File file2) {
            return file2.getName().compareTo(file1.getName());
        }
    };
    static final Comparator<File> SMALLEST_FILE_NAME_FIRST = new Comparator<File>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.3
        @Override // java.util.Comparator
        public int compare(File file1, File file2) {
            return file1.getName().compareTo(file2.getName());
        }
    };
    static final FilenameFilter ANY_SESSION_FILENAME_FILTER = new FilenameFilter() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.4
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String filename) {
            return CrashlyticsUncaughtExceptionHandler.SESSION_FILE_PATTERN.matcher(filename).matches();
        }
    };
    private static final Pattern SESSION_FILE_PATTERN = Pattern.compile("([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+");
    private static final Map<String, String> SEND_AT_CRASHTIME_HEADER = Collections.singletonMap("X-CRASHLYTICS-SEND-FLAGS", "1");
    static final String SESSION_USER_TAG = "SessionUser";
    static final String SESSION_APP_TAG = "SessionApp";
    static final String SESSION_OS_TAG = "SessionOS";
    static final String SESSION_DEVICE_TAG = "SessionDevice";
    private static final String[] INITIAL_SESSION_PART_TAGS = {SESSION_USER_TAG, SESSION_APP_TAG, SESSION_OS_TAG, SESSION_DEVICE_TAG};
    private final AtomicInteger eventCounter = new AtomicInteger(0);
    private final AtomicBoolean isHandlingException = new AtomicBoolean(false);

    static class FileNameContainsFilter implements FilenameFilter {
        private final String string;

        public FileNameContainsFilter(String s) {
            this.string = s;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File dir, String filename) {
            return filename.contains(this.string) && !filename.endsWith(ClsFileOutputStream.IN_PROGRESS_SESSION_FILE_EXTENSION);
        }
    }

    static class SessionPartFileFilter implements FilenameFilter {
        private final String sessionId;

        public SessionPartFileFilter(String sessionId) {
            this.sessionId = sessionId;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String fileName) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.sessionId);
            sb.append(ClsFileOutputStream.SESSION_FILE_EXTENSION);
            return (fileName.equals(sb.toString()) || !fileName.contains(this.sessionId) || fileName.endsWith(ClsFileOutputStream.IN_PROGRESS_SESSION_FILE_EXTENSION)) ? false : true;
        }
    }

    private static class AnySessionPartFileFilter implements FilenameFilter {
        private AnySessionPartFileFilter() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String fileName) {
            return !CrashlyticsUncaughtExceptionHandler.SESSION_FILE_FILTER.accept(file, fileName) && CrashlyticsUncaughtExceptionHandler.SESSION_FILE_PATTERN.matcher(fileName).matches();
        }
    }

    static class InvalidPartFileFilter implements FilenameFilter {
        InvalidPartFileFilter() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String fileName) {
            return ClsFileOutputStream.TEMP_FILENAME_FILTER.accept(file, fileName) || fileName.contains(CrashlyticsUncaughtExceptionHandler.SESSION_EVENT_MISSING_BINARY_IMGS_TAG);
        }
    }

    CrashlyticsUncaughtExceptionHandler(Thread.UncaughtExceptionHandler handler, CrashlyticsExecutorServiceWrapper executorServiceWrapper, IdManager idManager, UnityVersionProvider unityVersionProvider, FileStore fileStore, CrashlyticsCore crashlyticsCore) {
        this.defaultHandler = handler;
        this.executorServiceWrapper = executorServiceWrapper;
        this.idManager = idManager;
        this.crashlyticsCore = crashlyticsCore;
        this.unityVersion = unityVersionProvider.getUnityVersion();
        this.fileStore = fileStore;
        Context context = crashlyticsCore.getContext();
        this.logFileManager = new LogFileManager(context, fileStore);
        this.devicePowerStateListener = new DevicePowerStateListener(context);
        this.stackTraceTrimmingStrategy = new MiddleOutFallbackStrategy(1024, new RemoveRepeatsStrategy(10));
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public synchronized void uncaughtException(final Thread thread, final Throwable ex) {
        AtomicBoolean atomicBoolean;
        this.isHandlingException.set(true);
        try {
            try {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Crashlytics is handling uncaught exception \"" + ex + "\" from thread " + thread.getName());
                this.devicePowerStateListener.dispose();
                final Date now = new Date();
                this.executorServiceWrapper.executeSyncLoggingException(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.5
                    @Override // java.util.concurrent.Callable
                    public Void call() throws Exception {
                        CrashlyticsUncaughtExceptionHandler.this.handleUncaughtException(now, thread, ex);
                        return null;
                    }
                });
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Crashlytics completed exception processing. Invoking default exception handler.");
                this.defaultHandler.uncaughtException(thread, ex);
                atomicBoolean = this.isHandlingException;
            } catch (Throwable th) {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Crashlytics completed exception processing. Invoking default exception handler.");
                this.defaultHandler.uncaughtException(thread, ex);
                this.isHandlingException.set(false);
                throw th;
            }
        } catch (Exception e) {
            Fabric.getLogger().e(CrashlyticsCore.TAG, "An error occurred in the uncaught exception handler", e);
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Crashlytics completed exception processing. Invoking default exception handler.");
            this.defaultHandler.uncaughtException(thread, ex);
            atomicBoolean = this.isHandlingException;
        }
        atomicBoolean.set(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUncaughtException(Date time, Thread thread, Throwable ex) throws Exception {
        this.crashlyticsCore.createCrashMarker();
        writeFatal(time, thread, ex);
        doCloseSessions();
        doOpenSession();
        trimSessionFiles();
        if (!this.crashlyticsCore.shouldPromptUserBeforeSendingCrashReports()) {
            sendSessionReports();
        }
    }

    boolean isHandlingException() {
        return this.isHandlingException.get();
    }

    File getInvalidFilesDir() {
        return new File(getFilesDir(), INVALID_CLS_CACHE_DIR);
    }

    void writeToLog(final long timestamp, final String msg) {
        this.executorServiceWrapper.executeAsync(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.6
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                if (!CrashlyticsUncaughtExceptionHandler.this.isHandlingException.get()) {
                    CrashlyticsUncaughtExceptionHandler.this.logFileManager.writeToLog(timestamp, msg);
                    return null;
                }
                return null;
            }
        });
    }

    void writeNonFatalException(final Thread thread, final Throwable ex) {
        final Date now = new Date();
        this.executorServiceWrapper.executeAsync(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.7
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                if (!CrashlyticsUncaughtExceptionHandler.this.isHandlingException.get()) {
                    CrashlyticsUncaughtExceptionHandler.this.doWriteNonFatal(now, thread, ex);
                }
            }
        });
    }

    void cacheUserData(final String userId, final String userName, final String userEmail) {
        this.executorServiceWrapper.executeAsync(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.8
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                String currentSessionId = CrashlyticsUncaughtExceptionHandler.this.getCurrentSessionId();
                new MetaDataStore(CrashlyticsUncaughtExceptionHandler.this.getFilesDir()).writeUserData(currentSessionId, new UserMetaData(userId, userName, userEmail));
                return null;
            }
        });
    }

    void cacheKeyData(final Map<String, String> keyData) {
        this.executorServiceWrapper.executeAsync(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.9
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                String currentSessionId = CrashlyticsUncaughtExceptionHandler.this.getCurrentSessionId();
                new MetaDataStore(CrashlyticsUncaughtExceptionHandler.this.getFilesDir()).writeKeyData(currentSessionId, keyData);
                return null;
            }
        });
    }

    void openSession() {
        this.executorServiceWrapper.executeAsync(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.10
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                CrashlyticsUncaughtExceptionHandler.this.doOpenSession();
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCurrentSessionId() {
        File[] sessionBeginFiles = listSortedSessionBeginFiles();
        if (sessionBeginFiles.length > 0) {
            return getSessionIdFromSessionFile(sessionBeginFiles[0]);
        }
        return null;
    }

    private String getPreviousSessionId() {
        File[] sessionBeginFiles = listSortedSessionBeginFiles();
        if (sessionBeginFiles.length > 1) {
            return getSessionIdFromSessionFile(sessionBeginFiles[1]);
        }
        return null;
    }

    static String getSessionIdFromSessionFile(File sessionFile) {
        return sessionFile.getName().substring(0, 35);
    }

    boolean hasOpenSession() {
        return listSessionBeginFiles().length > 0;
    }

    boolean finalizeSessions() {
        return ((Boolean) this.executorServiceWrapper.executeSyncLoggingException(new Callable<Boolean>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.11
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Boolean call() throws Exception {
                if (CrashlyticsUncaughtExceptionHandler.this.isHandlingException.get()) {
                    Fabric.getLogger().d(CrashlyticsCore.TAG, "Skipping session finalization because a crash has already occurred.");
                    return Boolean.FALSE;
                }
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Finalizing previously open sessions.");
                CrashlyticsUncaughtExceptionHandler.this.doCloseSessions(true);
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Closed all previously open sessions");
                return Boolean.TRUE;
            }
        })).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doOpenSession() throws Exception {
        Date startedAt = new Date();
        String sessionIdentifier = new CLSUUID(this.idManager).toString();
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Opening an new session with ID " + sessionIdentifier);
        writeBeginSession(sessionIdentifier, startedAt);
        writeSessionApp(sessionIdentifier);
        writeSessionOS(sessionIdentifier);
        writeSessionDevice(sessionIdentifier);
        this.logFileManager.setCurrentSession(sessionIdentifier);
    }

    void doCloseSessions() throws Exception {
        doCloseSessions(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void doCloseSessions(boolean z) throws Exception {
        trimOpenSessions((z ? 1 : 0) + 8);
        File[] fileArrListSortedSessionBeginFiles = listSortedSessionBeginFiles();
        if (fileArrListSortedSessionBeginFiles.length <= z) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "No open sessions to be closed.");
            return;
        }
        writeSessionUser(getSessionIdFromSessionFile(fileArrListSortedSessionBeginFiles[z ? 1 : 0]));
        CrashlyticsCore crashlyticsCore = this.crashlyticsCore;
        SessionSettingsData sessionSettingsData = CrashlyticsCore.getSessionSettingsData();
        if (sessionSettingsData == null) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Unable to close session. Settings are not loaded.");
        } else {
            closeOpenSessions(fileArrListSortedSessionBeginFiles, z ? 1 : 0, sessionSettingsData.maxCustomExceptionEvents);
        }
    }

    private void closeOpenSessions(File[] sessionBeginFiles, int beginIndex, int maxLoggedExceptionsCount) {
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Closing open sessions.");
        for (int i = beginIndex; i < sessionBeginFiles.length; i++) {
            File sessionBeginFile = sessionBeginFiles[i];
            String sessionIdentifier = getSessionIdFromSessionFile(sessionBeginFile);
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Closing session: " + sessionIdentifier);
            writeSessionPartsToSessionFile(sessionBeginFile, sessionIdentifier, maxLoggedExceptionsCount);
        }
    }

    private void closeWithoutRenamingOrLog(ClsFileOutputStream fos) {
        if (fos == null) {
            return;
        }
        try {
            fos.closeInProgressStream();
        } catch (IOException ex) {
            Fabric.getLogger().e(CrashlyticsCore.TAG, "Error closing session file stream in the presence of an exception", ex);
        }
    }

    private void deleteSessionPartFilesFor(String sessionId) {
        File[] arr$ = listSessionPartFilesFor(sessionId);
        for (File file : arr$) {
            file.delete();
        }
    }

    private File[] listSessionPartFilesFor(String sessionId) {
        return listFilesMatching(new SessionPartFileFilter(sessionId));
    }

    private File[] listCompleteSessionFiles() {
        return listFilesMatching(SESSION_FILE_FILTER);
    }

    File[] listSessionBeginFiles() {
        return listFilesMatching(new FileNameContainsFilter(SESSION_BEGIN_TAG));
    }

    private File[] listSortedSessionBeginFiles() {
        File[] sessionBeginFiles = listSessionBeginFiles();
        Arrays.sort(sessionBeginFiles, LARGEST_FILE_NAME_FIRST);
        return sessionBeginFiles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File[] listFilesMatching(FilenameFilter filter) {
        return listFilesMatching(getFilesDir(), filter);
    }

    private File[] listFilesMatching(File directory, FilenameFilter filter) {
        return ensureFileArrayNotNull(directory.listFiles(filter));
    }

    private File[] listFiles(File directory) {
        return ensureFileArrayNotNull(directory.listFiles());
    }

    private File[] ensureFileArrayNotNull(File[] files) {
        return files == null ? new File[0] : files;
    }

    private void trimSessionEventFiles(String sessionId, int limit) {
        Utils.capFileCount(getFilesDir(), new FileNameContainsFilter(sessionId + SESSION_NON_FATAL_TAG), limit, SMALLEST_FILE_NAME_FIRST);
    }

    void trimSessionFiles() {
        Utils.capFileCount(getFilesDir(), SESSION_FILE_FILTER, 4, SMALLEST_FILE_NAME_FIRST);
    }

    private void trimOpenSessions(int maxOpenSessionCount) {
        Set<String> sessionIdsToKeep = new HashSet<>();
        File[] beginSessionFiles = listSortedSessionBeginFiles();
        int count = Math.min(maxOpenSessionCount, beginSessionFiles.length);
        for (int i = 0; i < count; i++) {
            String sessionId = getSessionIdFromSessionFile(beginSessionFiles[i]);
            sessionIdsToKeep.add(sessionId);
        }
        this.logFileManager.discardOldLogFiles(sessionIdsToKeep);
        retainSessions(listFilesMatching(new AnySessionPartFileFilter()), sessionIdsToKeep);
    }

    private void retainSessions(File[] files, Set<String> sessionIdsToKeep) {
        for (File sessionPartFile : files) {
            String fileName = sessionPartFile.getName();
            Matcher matcher = SESSION_FILE_PATTERN.matcher(fileName);
            if (!matcher.matches()) {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Deleting unknown file: " + fileName);
                sessionPartFile.delete();
                return;
            }
            String sessionId = matcher.group(1);
            if (!sessionIdsToKeep.contains(sessionId)) {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Trimming session file: " + fileName);
                sessionPartFile.delete();
            }
        }
    }

    private File[] getTrimmedNonFatalFiles(String sessionId, File[] nonFatalFiles, int maxLoggedExceptionsCount) {
        if (nonFatalFiles.length > maxLoggedExceptionsCount) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, String.format(Locale.US, "Trimming down to %d logged exceptions.", Integer.valueOf(maxLoggedExceptionsCount)));
            trimSessionEventFiles(sessionId, maxLoggedExceptionsCount);
            return listFilesMatching(new FileNameContainsFilter(sessionId + SESSION_NON_FATAL_TAG));
        }
        return nonFatalFiles;
    }

    void cleanInvalidTempFiles() {
        this.executorServiceWrapper.executeAsync(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.12
            @Override // java.lang.Runnable
            public void run() {
                CrashlyticsUncaughtExceptionHandler.this.doCleanInvalidTempFiles(CrashlyticsUncaughtExceptionHandler.this.listFilesMatching(new InvalidPartFileFilter()));
            }
        });
    }

    void doCleanInvalidTempFiles(File[] invalidFiles) {
        final Set<String> invalidSessionIds = new HashSet<>();
        for (File invalidFile : invalidFiles) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Found invalid session part file: " + invalidFile);
            invalidSessionIds.add(getSessionIdFromSessionFile(invalidFile));
        }
        if (invalidSessionIds.isEmpty()) {
            return;
        }
        File invalidFilesDir = getInvalidFilesDir();
        if (!invalidFilesDir.exists()) {
            invalidFilesDir.mkdir();
        }
        FilenameFilter invalidSessionFilter = new FilenameFilter() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.13
            @Override // java.io.FilenameFilter
            public boolean accept(File dir, String filename) {
                if (filename.length() < 35) {
                    return false;
                }
                return invalidSessionIds.contains(filename.substring(0, 35));
            }
        };
        File[] arr$ = listFilesMatching(invalidSessionFilter);
        for (File sessionFile : arr$) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Moving session file: " + sessionFile);
            if (!sessionFile.renameTo(new File(invalidFilesDir, sessionFile.getName()))) {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Could not move session file. Deleting " + sessionFile);
                sessionFile.delete();
            }
        }
        trimInvalidSessionFiles();
    }

    private void trimInvalidSessionFiles() {
        File invalidFilesDir = getInvalidFilesDir();
        if (!invalidFilesDir.exists()) {
            return;
        }
        File[] oldInvalidFiles = listFilesMatching(invalidFilesDir, new InvalidPartFileFilter());
        Arrays.sort(oldInvalidFiles, Collections.reverseOrder());
        Set<String> sessionIdsToKeep = new HashSet<>();
        for (int i = 0; i < oldInvalidFiles.length && sessionIdsToKeep.size() < 4; i++) {
            sessionIdsToKeep.add(getSessionIdFromSessionFile(oldInvalidFiles[i]));
        }
        retainSessions(listFiles(invalidFilesDir), sessionIdsToKeep);
    }

    private void writeFatal(Date time, Thread thread, Throwable ex) throws Throwable {
        ClsFileOutputStream fos = null;
        CodedOutputStream cos = null;
        try {
            try {
                String currentSessionId = getCurrentSessionId();
                if (currentSessionId == null) {
                    Fabric.getLogger().e(CrashlyticsCore.TAG, "Tried to write a fatal exception while no session was open.", null);
                    CommonUtils.flushOrLog(null, "Failed to flush to session begin file.");
                    CommonUtils.closeOrLog(null, "Failed to close fatal exception file output stream.");
                    return;
                }
                CrashlyticsCore.recordFatalExceptionEvent(currentSessionId, ex.getClass().getName());
                fos = new ClsFileOutputStream(getFilesDir(), currentSessionId + SESSION_FATAL_TAG);
                CodedOutputStream cos2 = CodedOutputStream.newInstance(fos);
                try {
                    writeSessionEvent(cos2, time, thread, ex, "crash", true);
                    CommonUtils.flushOrLog(cos2, "Failed to flush to session begin file.");
                    CommonUtils.closeOrLog(fos, "Failed to close fatal exception file output stream.");
                } catch (Exception e) {
                    cos = cos2;
                    e = e;
                    Fabric.getLogger().e(CrashlyticsCore.TAG, "An error occurred in the fatal exception logger", e);
                    CommonUtils.flushOrLog(cos, "Failed to flush to session begin file.");
                    CommonUtils.closeOrLog(fos, "Failed to close fatal exception file output stream.");
                } catch (Throwable th) {
                    cos = cos2;
                    th = th;
                    CommonUtils.flushOrLog(cos, "Failed to flush to session begin file.");
                    CommonUtils.closeOrLog(fos, "Failed to close fatal exception file output stream.");
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    void writeExternalCrashEvent(final SessionEventData crashEventData) {
        this.executorServiceWrapper.executeAsync(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.14
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                if (!CrashlyticsUncaughtExceptionHandler.this.isHandlingException.get()) {
                    CrashlyticsUncaughtExceptionHandler.this.doWriteExternalCrashEvent(crashEventData);
                    return null;
                }
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doWriteExternalCrashEvent(SessionEventData crashEventData) throws IOException {
        String previousSessionId;
        ClsFileOutputStream fos = null;
        CodedOutputStream cos = null;
        try {
            try {
                previousSessionId = getPreviousSessionId();
            } catch (Exception e) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "An error occurred in the native crash logger", e);
            }
            if (previousSessionId == null) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "Tried to write a native crash while no session was open.", null);
                return;
            }
            boolean z = false;
            CrashlyticsCore.recordFatalExceptionEvent(previousSessionId, String.format(Locale.US, "<native-crash [%s (%s)]>", crashEventData.signal.code, crashEventData.signal.name));
            if (crashEventData.binaryImages != null && crashEventData.binaryImages.length > 0) {
                z = true;
            }
            boolean hasBinaryImages = z;
            String fileTag = hasBinaryImages ? SESSION_FATAL_TAG : SESSION_EVENT_MISSING_BINARY_IMGS_TAG;
            fos = new ClsFileOutputStream(getFilesDir(), previousSessionId + fileTag);
            cos = CodedOutputStream.newInstance(fos);
            Map<String, String> storedKeyData = new MetaDataStore(getFilesDir()).readKeyData(previousSessionId);
            LogFileManager previousSessionLogManager = new LogFileManager(this.crashlyticsCore.getContext(), this.fileStore, previousSessionId);
            NativeCrashWriter.writeNativeCrash(crashEventData, previousSessionLogManager, storedKeyData, cos);
        } finally {
            CommonUtils.flushOrLog(null, "Failed to flush to session begin file.");
            CommonUtils.closeOrLog(null, "Failed to close fatal exception file output stream.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v9 */
    public void doWriteNonFatal(Date date, Thread thread, Throwable th) throws Throwable {
        ClsFileOutputStream clsFileOutputStream;
        CodedOutputStream codedOutputStreamNewInstance;
        String currentSessionId = getCurrentSessionId();
        if (currentSessionId == null) {
            Fabric.getLogger().e(CrashlyticsCore.TAG, "Tried to write a non-fatal exception while no session was open.", null);
            return;
        }
        CrashlyticsCore.recordLoggedExceptionEvent(currentSessionId, th.getClass().getName());
        ?? r1 = 0;
        clsFileOutputStream = null;
        ClsFileOutputStream clsFileOutputStream2 = null;
        r1 = 0;
        CodedOutputStream codedOutputStream = null;
        try {
            try {
                Logger logger = Fabric.getLogger();
                StringBuilder sb = new StringBuilder();
                sb.append("Crashlytics is logging non-fatal exception \"");
                try {
                    sb.append(th);
                    sb.append("\" from thread ");
                    sb.append(thread.getName());
                    logger.d(CrashlyticsCore.TAG, sb.toString());
                    clsFileOutputStream = new ClsFileOutputStream(getFilesDir(), currentSessionId + SESSION_NON_FATAL_TAG + CommonUtils.padWithZerosToMaxIntWidth(this.eventCounter.getAndIncrement()));
                    try {
                        codedOutputStreamNewInstance = CodedOutputStream.newInstance(clsFileOutputStream);
                    } catch (Exception e) {
                        e = e;
                        clsFileOutputStream2 = clsFileOutputStream;
                    } catch (Throwable th2) {
                        th = th2;
                        r1 = clsFileOutputStream;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
            try {
                CrashlyticsUncaughtExceptionHandler crashlyticsUncaughtExceptionHandler = this;
                codedOutputStream = codedOutputStreamNewInstance;
                crashlyticsUncaughtExceptionHandler.writeSessionEvent(codedOutputStream, date, thread, th, EVENT_TYPE_LOGGED, false);
                CommonUtils.flushOrLog(codedOutputStreamNewInstance, "Failed to flush to non-fatal file.");
                CommonUtils.closeOrLog(clsFileOutputStream, "Failed to close non-fatal file output stream.");
                r1 = crashlyticsUncaughtExceptionHandler;
            } catch (Exception e3) {
                e = e3;
                clsFileOutputStream2 = clsFileOutputStream;
                codedOutputStream = codedOutputStreamNewInstance;
                Fabric.getLogger().e(CrashlyticsCore.TAG, "An error occurred in the non-fatal exception logger", e);
                CommonUtils.flushOrLog(codedOutputStream, "Failed to flush to non-fatal file.");
                CommonUtils.closeOrLog(clsFileOutputStream2, "Failed to close non-fatal file output stream.");
                r1 = clsFileOutputStream2;
            } catch (Throwable th4) {
                th = th4;
                r1 = clsFileOutputStream;
                codedOutputStream = codedOutputStreamNewInstance;
                CommonUtils.flushOrLog(codedOutputStream, "Failed to flush to non-fatal file.");
                CommonUtils.closeOrLog(r1, "Failed to close non-fatal file output stream.");
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
        } catch (Throwable th5) {
            th = th5;
        }
        try {
            trimSessionEventFiles(currentSessionId, 64);
        } catch (Exception e5) {
            Fabric.getLogger().e(CrashlyticsCore.TAG, "An error occurred when trimming non-fatal files.", e5);
        }
    }

    private void writeBeginSession(String sessionId, Date startedAt) throws Exception {
        FileOutputStream fos = null;
        CodedOutputStream cos = null;
        try {
            fos = new ClsFileOutputStream(getFilesDir(), sessionId + SESSION_BEGIN_TAG);
            cos = CodedOutputStream.newInstance(fos);
            String generator = String.format(Locale.US, GENERATOR_FORMAT, this.crashlyticsCore.getVersion());
            long startedAtSeconds = startedAt.getTime() / 1000;
            SessionProtobufHelper.writeBeginSession(cos, sessionId, generator, startedAtSeconds);
        } finally {
            String generator2 = "Failed to flush to session begin file.";
            CommonUtils.flushOrLog(cos, generator2);
            CommonUtils.closeOrLog(fos, "Failed to close begin session file.");
        }
    }

    private void writeSessionApp(String sessionId) throws Exception {
        FileOutputStream fos = null;
        CodedOutputStream cos = null;
        try {
            fos = new ClsFileOutputStream(getFilesDir(), sessionId + SESSION_APP_TAG);
            cos = CodedOutputStream.newInstance(fos);
            String appIdentifier = this.idManager.getAppIdentifier();
            String apiKey = this.crashlyticsCore.getApiKey();
            String versionCode = this.crashlyticsCore.getVersionCode();
            String versionName = this.crashlyticsCore.getVersionName();
            String installUuid = this.idManager.getAppInstallIdentifier();
            int deliveryMechanism = DeliveryMechanism.determineFrom(this.crashlyticsCore.getInstallerPackageName()).getId();
            SessionProtobufHelper.writeSessionApp(cos, appIdentifier, apiKey, versionCode, versionName, installUuid, deliveryMechanism, this.unityVersion);
        } finally {
            CommonUtils.flushOrLog(cos, "Failed to flush to session app file.");
            CommonUtils.closeOrLog(fos, "Failed to close session app file.");
        }
    }

    private void writeSessionOS(String sessionId) throws Exception {
        FileOutputStream fos = null;
        CodedOutputStream cos = null;
        try {
            fos = new ClsFileOutputStream(getFilesDir(), sessionId + SESSION_OS_TAG);
            cos = CodedOutputStream.newInstance(fos);
            boolean isRooted = CommonUtils.isRooted(this.crashlyticsCore.getContext());
            SessionProtobufHelper.writeSessionOS(cos, isRooted);
        } finally {
            CommonUtils.flushOrLog(cos, "Failed to flush to session OS file.");
            CommonUtils.closeOrLog(fos, "Failed to close session OS file.");
        }
    }

    private void writeSessionDevice(String sessionId) throws Exception {
        FileOutputStream fos = null;
        CodedOutputStream cos = null;
        try {
            File filesDir = getFilesDir();
            StringBuilder sb = new StringBuilder();
            try {
                sb.append(sessionId);
                sb.append(SESSION_DEVICE_TAG);
                fos = new ClsFileOutputStream(filesDir, sb.toString());
                cos = CodedOutputStream.newInstance(fos);
                Context context = this.crashlyticsCore.getContext();
                StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                String clsDeviceId = this.idManager.getDeviceUUID();
                int arch = CommonUtils.getCpuArchitectureInt();
                int availableProcessors = Runtime.getRuntime().availableProcessors();
                long totalRam = CommonUtils.getTotalRamInBytes();
                long diskSpace = ((long) statFs.getBlockSize()) * ((long) statFs.getBlockCount());
                boolean isEmulator = CommonUtils.isEmulator(context);
                Map<IdManager.DeviceIdentifierType, String> ids = this.idManager.getDeviceIdentifiers();
                int state = CommonUtils.getDeviceState(context);
                SessionProtobufHelper.writeSessionDevice(cos, clsDeviceId, arch, Build.MODEL, availableProcessors, totalRam, diskSpace, isEmulator, ids, state, Build.MANUFACTURER, Build.PRODUCT);
                CommonUtils.flushOrLog(cos, "Failed to flush session device info.");
                CommonUtils.closeOrLog(fos, "Failed to close session device file.");
            } catch (Throwable th) {
                th = th;
                CommonUtils.flushOrLog(cos, "Failed to flush session device info.");
                CommonUtils.closeOrLog(fos, "Failed to close session device file.");
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void writeSessionUser(String sessionId) throws Exception {
        FileOutputStream fos = null;
        CodedOutputStream cos = null;
        try {
            fos = new ClsFileOutputStream(getFilesDir(), sessionId + SESSION_USER_TAG);
            cos = CodedOutputStream.newInstance(fos);
            UserMetaData userMetaData = getUserMetaData(sessionId);
            if (userMetaData.isEmpty()) {
                return;
            }
            SessionProtobufHelper.writeSessionUser(cos, userMetaData.id, userMetaData.name, userMetaData.email);
        } finally {
            CommonUtils.flushOrLog(cos, "Failed to flush session user file.");
            CommonUtils.closeOrLog(fos, "Failed to close session user file.");
        }
    }

    private void writeSessionEvent(CodedOutputStream cos, Date time, Thread thread, Throwable ex, String eventType, boolean includeAllThreads) throws Exception {
        Thread[] threads;
        Map<String, String> attributes;
        TrimmedThrowableData trimmedEx = new TrimmedThrowableData(ex, this.stackTraceTrimmingStrategy);
        Context context = this.crashlyticsCore.getContext();
        long eventTime = time.getTime() / 1000;
        Float batteryLevel = CommonUtils.getBatteryLevel(context);
        int batteryVelocity = CommonUtils.getBatteryVelocity(context, this.devicePowerStateListener.isPowerConnected());
        boolean proximityEnabled = CommonUtils.getProximitySensorEnabled(context);
        int orientation = context.getResources().getConfiguration().orientation;
        long usedRamBytes = CommonUtils.getTotalRamInBytes() - CommonUtils.calculateFreeRamInBytes(context);
        long diskUsedBytes = CommonUtils.calculateUsedDiskSpaceInBytes(Environment.getDataDirectory().getPath());
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = CommonUtils.getAppProcessInfo(context.getPackageName(), context);
        List<StackTraceElement[]> stacks = new LinkedList<>();
        StackTraceElement[] exceptionStack = trimmedEx.stacktrace;
        String buildId = this.crashlyticsCore.getBuildId();
        String appIdentifier = this.idManager.getAppIdentifier();
        if (includeAllThreads) {
            Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
            Thread[] threads2 = new Thread[allStackTraces.size()];
            int i = 0;
            for (Map.Entry<Thread, StackTraceElement[]> entry : allStackTraces.entrySet()) {
                threads2[i] = entry.getKey();
                stacks.add(this.stackTraceTrimmingStrategy.getTrimmedStackTrace(entry.getValue()));
                i++;
            }
            threads = threads2;
        } else {
            threads = new Thread[0];
        }
        if (!CommonUtils.getBooleanResourceValue(context, "com.crashlytics.CollectCustomKeys", true)) {
            attributes = new TreeMap<>();
        } else {
            attributes = this.crashlyticsCore.getAttributes();
            if (attributes != null && attributes.size() > 1) {
                attributes = new TreeMap(attributes);
            }
        }
        SessionProtobufHelper.writeSessionEvent(cos, eventTime, eventType, trimmedEx, thread, exceptionStack, threads, stacks, attributes, this.logFileManager, runningAppProcessInfo, orientation, appIdentifier, buildId, batteryLevel, batteryVelocity, proximityEnabled, usedRamBytes, diskUsedBytes);
    }

    private void writeSessionPartsToSessionFile(File sessionBeginFile, String sessionId, int maxLoggedExceptionsCount) {
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Collecting session parts for ID " + sessionId);
        File[] fatalFiles = listFilesMatching(new FileNameContainsFilter(sessionId + SESSION_FATAL_TAG));
        boolean hasFatal = fatalFiles != null && fatalFiles.length > 0;
        Fabric.getLogger().d(CrashlyticsCore.TAG, String.format(Locale.US, "Session %s has fatal exception: %s", sessionId, Boolean.valueOf(hasFatal)));
        File[] nonFatalFiles = listFilesMatching(new FileNameContainsFilter(sessionId + SESSION_NON_FATAL_TAG));
        boolean hasNonFatal = nonFatalFiles != null && nonFatalFiles.length > 0;
        Fabric.getLogger().d(CrashlyticsCore.TAG, String.format(Locale.US, "Session %s has non-fatal exceptions: %s", sessionId, Boolean.valueOf(hasNonFatal)));
        if (hasFatal || hasNonFatal) {
            File[] trimmedNonFatalFiles = getTrimmedNonFatalFiles(sessionId, nonFatalFiles, maxLoggedExceptionsCount);
            File fatalFile = hasFatal ? fatalFiles[0] : null;
            synthesizeSessionFile(sessionBeginFile, sessionId, trimmedNonFatalFiles, fatalFile);
        } else {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "No events present for session ID " + sessionId);
        }
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Removing session part files for ID " + sessionId);
        deleteSessionPartFilesFor(sessionId);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0093, code lost:
    
        if (1 == 0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0096, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void synthesizeSessionFile(java.io.File r11, java.lang.String r12, java.io.File[] r13, java.io.File r14) {
        /*
            r10 = this;
            r0 = 1
            if (r14 == 0) goto L5
            r1 = 1
            goto L6
        L5:
            r1 = 0
        L6:
            r2 = 0
            r3 = 0
            r4 = 0
            com.crashlytics.android.core.ClsFileOutputStream r5 = new com.crashlytics.android.core.ClsFileOutputStream     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            java.io.File r6 = r10.getFilesDir()     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            r5.<init>(r6, r12)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            r3 = r5
            com.crashlytics.android.core.CodedOutputStream r5 = com.crashlytics.android.core.CodedOutputStream.newInstance(r3)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            r4 = r5
            io.fabric.sdk.android.Logger r5 = io.fabric.sdk.android.Fabric.getLogger()     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            java.lang.String r6 = "CrashlyticsCore"
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            r7.<init>()     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            java.lang.String r8 = "Collecting SessionStart data for session ID "
            r7.append(r8)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            r7.append(r12)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            r5.d(r6, r7)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            writeToCosFromFile(r4, r11)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            r5 = 4
            java.util.Date r6 = new java.util.Date     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            r6.<init>()     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            long r6 = r6.getTime()     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            r8 = 1000(0x3e8, double:4.94E-321)
            long r6 = r6 / r8
            r4.writeUInt64(r5, r6)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            r5 = 5
            r4.writeBool(r5, r1)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            r5 = 11
            r4.writeUInt32(r5, r0)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            r0 = 12
            r5 = 3
            r4.writeEnum(r0, r5)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            r10.writeInitialPartsTo(r4, r12)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            writeNonFatalEventsTo(r4, r13, r12)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
            if (r1 == 0) goto L5f
            writeToCosFromFile(r4, r14)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L72
        L5f:
            java.lang.String r0 = "Error flushing session file stream"
            io.fabric.sdk.android.services.common.CommonUtils.flushOrLog(r4, r0)
            if (r2 == 0) goto L6a
        L66:
            r10.closeWithoutRenamingOrLog(r3)
            goto L96
        L6a:
            java.lang.String r0 = "Failed to close CLS file"
            io.fabric.sdk.android.services.common.CommonUtils.closeOrLog(r3, r0)
            goto L96
        L70:
            r0 = move-exception
            goto L97
        L72:
            r0 = move-exception
            io.fabric.sdk.android.Logger r5 = io.fabric.sdk.android.Fabric.getLogger()     // Catch: java.lang.Throwable -> L70
            java.lang.String r6 = "CrashlyticsCore"
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L70
            r7.<init>()     // Catch: java.lang.Throwable -> L70
            java.lang.String r8 = "Failed to write session file for session ID: "
            r7.append(r8)     // Catch: java.lang.Throwable -> L70
            r7.append(r12)     // Catch: java.lang.Throwable -> L70
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L70
            r5.e(r6, r7, r0)     // Catch: java.lang.Throwable -> L70
            r2 = 1
            java.lang.String r0 = "Error flushing session file stream"
            io.fabric.sdk.android.services.common.CommonUtils.flushOrLog(r4, r0)
            if (r2 == 0) goto L6a
            goto L66
        L96:
            return
        L97:
            java.lang.String r5 = "Error flushing session file stream"
            io.fabric.sdk.android.services.common.CommonUtils.flushOrLog(r4, r5)
            if (r2 == 0) goto La2
            r10.closeWithoutRenamingOrLog(r3)
            goto La7
        La2:
            java.lang.String r5 = "Failed to close CLS file"
            io.fabric.sdk.android.services.common.CommonUtils.closeOrLog(r3, r5)
        La7:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.synthesizeSessionFile(java.io.File, java.lang.String, java.io.File[], java.io.File):void");
    }

    private static void writeNonFatalEventsTo(CodedOutputStream cos, File[] nonFatalFiles, String sessionId) {
        Arrays.sort(nonFatalFiles, CommonUtils.FILE_MODIFIED_COMPARATOR);
        for (File nonFatalFile : nonFatalFiles) {
            try {
                Fabric.getLogger().d(CrashlyticsCore.TAG, String.format(Locale.US, "Found Non Fatal for session ID %s in %s ", sessionId, nonFatalFile.getName()));
                writeToCosFromFile(cos, nonFatalFile);
            } catch (Exception e) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "Error writting non-fatal to session.", e);
            }
        }
    }

    private void writeInitialPartsTo(CodedOutputStream cos, String sessionId) throws IOException {
        String[] arr$ = INITIAL_SESSION_PART_TAGS;
        for (String tag : arr$) {
            File[] sessionPartFiles = listFilesMatching(new FileNameContainsFilter(sessionId + tag));
            if (sessionPartFiles.length == 0) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "Can't find " + tag + " data for session ID " + sessionId, null);
            } else {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Collecting " + tag + " data for session ID " + sessionId);
                writeToCosFromFile(cos, sessionPartFiles[0]);
            }
        }
    }

    private static void writeToCosFromFile(CodedOutputStream cos, File file) throws IOException {
        if (!file.exists()) {
            Fabric.getLogger().e(CrashlyticsCore.TAG, "Tried to include a file that doesn't exist: " + file.getName(), null);
            return;
        }
        FileInputStream fis = null;
        try {
            fis = new FileInputStream(file);
            copyToCodedOutputStream(fis, cos, (int) file.length());
        } finally {
            CommonUtils.closeOrLog(fis, "Failed to close file input stream.");
        }
    }

    private static void copyToCodedOutputStream(InputStream inStream, CodedOutputStream cos, int bufferLength) throws IOException {
        int numRead;
        byte[] buffer = new byte[bufferLength];
        int offset = 0;
        while (offset < buffer.length && (numRead = inStream.read(buffer, offset, buffer.length - offset)) >= 0) {
            offset += numRead;
        }
        cos.writeRawBytes(buffer);
    }

    private UserMetaData getUserMetaData(String sessionId) {
        return isHandlingException() ? new UserMetaData(this.crashlyticsCore.getUserIdentifier(), this.crashlyticsCore.getUserName(), this.crashlyticsCore.getUserEmail()) : new MetaDataStore(getFilesDir()).readUserData(sessionId);
    }

    private void sendSessionReports() {
        File[] arr$ = listCompleteSessionFiles();
        for (File finishedSessionFile : arr$) {
            this.executorServiceWrapper.executeAsync(new SendSessionRunnable(this.crashlyticsCore, finishedSessionFile));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File getFilesDir() {
        return this.fileStore.getFilesDir();
    }

    private static final class SendSessionRunnable implements Runnable {
        private final CrashlyticsCore crashlyticsCore;
        private final File fileToSend;

        public SendSessionRunnable(CrashlyticsCore crashlyticsCore, File fileToSend) {
            this.crashlyticsCore = crashlyticsCore;
            this.fileToSend = fileToSend;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!CommonUtils.canTryConnection(this.crashlyticsCore.getContext())) {
                return;
            }
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Attempting to send crash report at time of crash...");
            SettingsData settingsData = Settings.getInstance().awaitSettingsData();
            CreateReportSpiCall call = this.crashlyticsCore.getCreateReportSpiCall(settingsData);
            if (call != null) {
                new ReportUploader(this.crashlyticsCore.getApiKey(), call).forceUpload(new SessionReport(this.fileToSend, CrashlyticsUncaughtExceptionHandler.SEND_AT_CRASHTIME_HEADER));
            }
        }
    }
}
