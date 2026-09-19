package com.huxq17.download.core;

import com.huxq17.download.ErrorCode;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public final class DownloadInfo {
    private final long completedSize;
    private final long contentLength;
    private final long createTime;
    private DownloadDetailsInfo downloadDetailsInfo;
    private final File downloadFile;
    private final ErrorCode errorCode;
    private final int finished;
    private final String id;
    private final int progress;
    private final String speed;
    private final Status status;
    private final String tag;
    private final String url;

    DownloadInfo(String url, File downloadFile, String tag, String id, long createTime, String speed, long completedSize, long contentLength, ErrorCode errorCode, Status status, int finished, int progress, DownloadDetailsInfo downloadDetailsInfo) {
        this.url = url;
        this.downloadFile = downloadFile;
        this.tag = tag;
        this.id = id;
        this.createTime = createTime;
        this.speed = speed;
        this.completedSize = completedSize;
        this.contentLength = contentLength;
        this.errorCode = errorCode;
        this.status = status;
        this.finished = finished;
        this.progress = progress;
        this.downloadDetailsInfo = downloadDetailsInfo;
    }

    DownloadDetailsInfo getDownloadDetailsInfo() {
        return this.downloadDetailsInfo;
    }

    public void updateFilePath(String filePath) {
        this.downloadDetailsInfo.updateFilePath(filePath);
    }

    public void setExtraData(Object extraData) {
        this.downloadDetailsInfo.setExtraData(extraData);
    }

    public Object getExtraData() {
        return this.downloadDetailsInfo.getWfExtraData();
    }

    public String getSpeed() {
        return this.speed;
    }

    public String getTag() {
        return this.tag == null ? "" : this.tag;
    }

    public String getId() {
        return this.id;
    }

    public long getCreateTime() {
        return this.createTime;
    }

    public ErrorCode getErrorCode() {
        return this.errorCode;
    }

    public String getUrl() {
        return this.url;
    }

    public String getFilePath() {
        if (this.downloadFile != null) {
            return this.downloadFile.getPath();
        }
        return null;
    }

    public String getName() {
        return this.downloadFile == null ? "" : this.downloadFile.getName();
    }

    public long getCompletedSize() {
        return this.completedSize;
    }

    public long getContentLength() {
        return this.contentLength;
    }

    public int getProgress() {
        return this.progress;
    }

    public String getMD5() {
        return this.downloadDetailsInfo.getMd5();
    }

    public int getFinished() {
        return this.finished;
    }

    public boolean isFinished() {
        return this.finished == 1;
    }

    public Status getStatus() {
        return this.status;
    }

    public void setErrorCode(ErrorCode errorCode) {
        this.downloadDetailsInfo.setErrorCode(errorCode, true);
    }

    public boolean isRunning() {
        return this.status.isRunning();
    }

    public enum Status {
        STOPPED,
        WAIT,
        RUNNING,
        PAUSING,
        PAUSED,
        FAILED,
        FINISHED,
        DELETED;

        public boolean isRunning() {
            return ordinal() >= WAIT.ordinal() && ordinal() <= RUNNING.ordinal();
        }

        public boolean shouldStop() {
            return ordinal() > STOPPED.ordinal() && ordinal() < FAILED.ordinal();
        }

        public boolean isCanceled() {
            return ordinal() >= PAUSING.ordinal() && ordinal() <= PAUSED.ordinal();
        }
    }
}
