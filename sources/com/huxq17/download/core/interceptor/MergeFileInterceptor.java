package com.huxq17.download.core.interceptor;

import com.huxq17.download.ErrorCode;
import com.huxq17.download.core.DownloadDetailsInfo;
import com.huxq17.download.core.DownloadInfo;
import com.huxq17.download.core.DownloadInterceptor;
import com.huxq17.download.core.DownloadRequest;
import com.huxq17.download.core.task.DownloadTask;
import com.huxq17.download.utils.FileUtil;
import com.huxq17.download.utils.LogUtil;
import com.huxq17.download.utils.Util;
import java.io.File;
import java.io.FilenameFilter;

/* JADX INFO: loaded from: classes2.dex */
public class MergeFileInterceptor implements DownloadInterceptor {
    private DownloadDetailsInfo downloadInfo;

    @Override // com.huxq17.download.core.DownloadInterceptor
    public DownloadInfo intercept(DownloadInterceptor.DownloadChain chain) throws Throwable {
        boolean mergeSuccess;
        DownloadRequest downloadRequest = chain.request();
        this.downloadInfo = downloadRequest.getDownloadInfo();
        DownloadTask downloadTask = this.downloadInfo.getDownloadTask();
        Object lock = downloadTask.getLock();
        if (lock == null) {
            return this.downloadInfo.snapshot();
        }
        synchronized (lock) {
            try {
                try {
                    long contentLength = this.downloadInfo.getContentLength();
                    long completedSize = this.downloadInfo.getCompletedSize();
                    File tempDir = this.downloadInfo.getTempDir();
                    File[] downloadPartFiles = tempDir.listFiles(new FilenameFilter() { // from class: com.huxq17.download.core.interceptor.MergeFileInterceptor.1
                        @Override // java.io.FilenameFilter
                        public boolean accept(File dir, String name) {
                            return name.startsWith(Util.DOWNLOAD_PART);
                        }
                    });
                    if (contentLength > 0 && completedSize == contentLength && downloadPartFiles != null && downloadPartFiles.length == this.downloadInfo.getThreadNum()) {
                        File file = this.downloadInfo.getDownloadFile();
                        this.downloadInfo.deleteDownloadFile();
                        long startTime = System.currentTimeMillis();
                        if (downloadPartFiles.length == 1) {
                            try {
                                mergeSuccess = FileUtil.renameTo(downloadPartFiles[0], file);
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        } else {
                            mergeSuccess = FileUtil.mergeFiles(downloadPartFiles, file);
                        }
                        this.downloadInfo.deleteTempDir();
                        if (!mergeSuccess) {
                            this.downloadInfo.setErrorCode(ErrorCode.ERROR_MERGE_FILE_FAILED);
                        } else {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Merge ");
                            sb.append(this.downloadInfo.getName());
                            sb.append(" spend=");
                            sb.append(System.currentTimeMillis() - startTime);
                            sb.append("; file.length=");
                            sb.append(file.length());
                            LogUtil.d(sb.toString());
                            checkDownloadResult(contentLength, completedSize);
                        }
                    }
                    return this.downloadInfo.snapshot();
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    private void checkDownloadResult(long contentLength, long completedSize) {
        File downloadFile = this.downloadInfo.getDownloadFile();
        long downloadFileLength = downloadFile == null ? 0L : downloadFile.length();
        if (this.downloadInfo.getStatus() != DownloadInfo.Status.FAILED && downloadFileLength > 0 && downloadFileLength == contentLength && downloadFileLength == completedSize) {
            this.downloadInfo.setFinished(1);
            this.downloadInfo.setStatus(DownloadInfo.Status.FINISHED);
            this.downloadInfo.setCompletedSize(completedSize);
        } else {
            this.downloadInfo.setFinished(0);
            this.downloadInfo.setErrorCode(ErrorCode.ERROR_DOWNLOAD_FAILED);
        }
    }
}
