package com.huxq17.download.core.task;

import android.text.TextUtils;
import com.huxq17.download.DownloadProvider;
import com.huxq17.download.ErrorCode;
import com.huxq17.download.PumpFactory;
import com.huxq17.download.core.DownloadDetailsInfo;
import com.huxq17.download.core.DownloadRequest;
import com.huxq17.download.core.connection.DownloadConnection;
import com.huxq17.download.core.service.IDownloadConfigService;
import com.huxq17.download.utils.FileUtil;
import com.huxq17.download.utils.Util;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadBlockTask extends Task {
    private int blockId;
    private DownloadConnection connection;
    private DownloadDetailsInfo downloadInfo;
    private boolean isConnected;
    private File tempFile;

    public DownloadBlockTask(DownloadRequest downloadRequest, int blockId) {
        this(downloadRequest, blockId, null);
    }

    public DownloadBlockTask(DownloadRequest downloadRequest, int blockId, DownloadConnection connection) {
        this.downloadInfo = downloadRequest.getDownloadInfo();
        this.isConnected = connection != null;
        if (connection == null) {
            this.connection = ((IDownloadConfigService) PumpFactory.getService(IDownloadConfigService.class)).getDownloadConnectionFactory().create(downloadRequest.getHttpRequestBuilder());
        } else {
            this.connection = connection;
        }
        this.blockId = blockId;
        calculateCompletedSize();
    }

    @Override // com.huxq17.download.core.task.Task
    public void cancel() {
        if (this.currentThread != null) {
            this.currentThread.interrupt();
        }
        this.connection.cancel();
    }

    @Override // com.huxq17.download.core.task.Task
    public void execute() {
        long endPosition;
        DownloadTask downloadTask = this.downloadInfo.getDownloadTask();
        long threadNum = this.downloadInfo.getThreadNum();
        long fileLength = this.downloadInfo.getContentLength();
        long startPosition = ((((long) this.blockId) * fileLength) / threadNum) + getCompletedSize();
        if (threadNum == this.blockId + 1) {
            endPosition = fileLength;
        } else {
            endPosition = (((long) (this.blockId + 1)) * fileLength) / threadNum;
        }
        long endPosition2 = endPosition;
        if (startPosition < endPosition2 || this.downloadInfo.isChunked()) {
            try {
                if (!this.isConnected) {
                    DownloadProvider.CacheBean cacheBean = this.downloadInfo.getCacheBean();
                    String eTag = cacheBean.eTag;
                    String lastModified = cacheBean.lastModified;
                    this.connection.addHeader("Range", "bytes=" + startPosition + "-");
                    if (!TextUtils.isEmpty(lastModified)) {
                        this.connection.addHeader("If-Unmodified-Since", lastModified);
                    }
                    if (!TextUtils.isEmpty(eTag)) {
                        this.connection.addHeader("If-Match", eTag);
                    }
                    Response response = this.connection.connect();
                    int code = response.code();
                    if (code == 206) {
                        download(this.connection, downloadTask, startPosition, endPosition2);
                    } else if (code == 412 || code == 416) {
                        if (this.downloadInfo.getErrorCode() == null) {
                            this.downloadInfo.setForceRetry(true);
                        }
                        this.downloadInfo.setErrorCode(ErrorCode.ERROR_NETWORK_UNAVAILABLE);
                        downloadTask.cancel();
                    } else {
                        this.downloadInfo.setErrorCode(ErrorCode.ERROR_NETWORK_UNAVAILABLE);
                        downloadTask.cancel();
                    }
                } else {
                    download(this.connection, downloadTask, startPosition, endPosition2);
                }
                if (this.downloadInfo.isChunked() && this.downloadInfo.getErrorCode() == null && !isCanceled()) {
                    this.downloadInfo.setContentLength(this.tempFile.length());
                    this.downloadInfo.setProgress(100);
                }
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                if (!isCanceled()) {
                    e2.printStackTrace();
                    this.downloadInfo.setErrorCode(ErrorCode.ERROR_NETWORK_UNAVAILABLE);
                }
            }
        } else if (startPosition > endPosition2) {
            if (this.downloadInfo.getErrorCode() == null) {
                this.downloadInfo.setForceRetry(true);
            }
            downloadTask.cancel();
            this.downloadInfo.setErrorCode(ErrorCode.ERROR_FILE_OUT_LIMIT);
        }
        this.connection.close();
    }

    private void download(DownloadConnection connection, DownloadTask downloadTask, long startPosition, long endPosition) throws IOException {
        int len;
        createTempFileIfNeed();
        connection.prepareDownload(this.tempFile);
        byte[] buffer = new byte[8092];
        int byteCount = buffer.length;
        if (!this.downloadInfo.isChunked() && endPosition - startPosition < buffer.length) {
            byteCount = (int) (endPosition - startPosition);
        }
        if (isCanceled()) {
            return;
        }
        do {
            if ((!this.downloadInfo.isChunked() && startPosition >= endPosition) || (len = connection.downloadBuffer(buffer, 0, byteCount)) == -1 || isCanceled()) {
                break;
            }
            startPosition += (long) len;
            if (!this.downloadInfo.isChunked()) {
                long remainCount = endPosition - startPosition;
                if (remainCount < byteCount) {
                    byteCount = (int) remainCount;
                }
            }
        } while (downloadTask.onDownload(len));
        connection.flushDownload();
    }

    private void calculateCompletedSize() {
        File tempDir = this.downloadInfo.getTempDir();
        if (tempDir != null) {
            this.tempFile = new File(tempDir, Util.DOWNLOAD_PART + this.blockId);
        }
    }

    private void createTempFileIfNeed() {
        if (this.tempFile == null || !this.tempFile.exists()) {
            File tempDir = this.downloadInfo.getTempDir();
            this.tempFile = new File(tempDir, Util.DOWNLOAD_PART + this.blockId);
            try {
                if (!tempDir.exists()) {
                    tempDir.mkdirs();
                }
                this.tempFile.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public long getCompletedSize() {
        if (this.tempFile == null) {
            return 0L;
        }
        return this.tempFile.length();
    }

    public void clearTemp() {
        FileUtil.deleteFile(this.tempFile);
    }
}
