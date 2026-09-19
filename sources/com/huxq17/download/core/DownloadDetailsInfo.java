package com.huxq17.download.core;

import android.text.TextUtils;
import com.huxq17.download.DownloadProvider;
import com.huxq17.download.ErrorCode;
import com.huxq17.download.core.DownloadInfo;
import com.huxq17.download.core.task.DownloadTask;
import com.huxq17.download.db.DBService;
import com.huxq17.download.utils.FileUtil;
import com.huxq17.download.utils.Util;
import java.io.File;
import java.io.FilenameFilter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadDetailsInfo {
    private DownloadProvider.CacheBean cacheBean;
    private long completedSize;
    private long contentLength;
    private final long createTime;
    private File downloadFile;
    private List<File> downloadPartFiles;
    private DownloadRequest downloadRequest;
    private DownloadTask downloadTask;
    private ErrorCode errorCode;
    private String filePath;
    private int finished;
    protected final String id;
    private boolean isForceRetry;
    private String md5;
    private int progress;
    private String speed;
    private SpeedMonitor speedMonitor;
    protected volatile DownloadInfo.Status status;
    private final String tag;
    private File tempDir;
    private int threadNum;
    private String transferEncoding;
    protected final String url;
    private WeakReference<Object> wfExtraData;

    public DownloadDetailsInfo(String url, String filePath) {
        this(url, filePath, null, url, System.currentTimeMillis());
    }

    public DownloadDetailsInfo(String url, String filePath, String tag, String id, long createTime) {
        this.contentLength = -1L;
        this.downloadPartFiles = new ArrayList();
        this.isForceRetry = false;
        this.url = url;
        if (TextUtils.isEmpty(id)) {
            this.id = url;
        } else {
            this.id = id;
        }
        this.tag = tag;
        this.filePath = filePath;
        this.createTime = createTime;
        if (filePath != null) {
            this.downloadFile = new File(filePath);
        }
        this.speedMonitor = new SpeedMonitor();
    }

    public void setForceRetry(boolean isForceRetry) {
        this.isForceRetry = isForceRetry;
    }

    public boolean isForceRetry() {
        return this.isForceRetry;
    }

    public void setThreadNum(int threadNum) {
        this.threadNum = threadNum;
    }

    public int getThreadNum() {
        return this.threadNum;
    }

    public void setFilePath(String filePath) {
        if (filePath != null && !filePath.equals(this.filePath)) {
            this.filePath = filePath;
            deleteTempDir();
            this.downloadFile = new File(filePath);
        }
    }

    public void setDownloadTask(DownloadTask downloadTask) {
        this.downloadTask = downloadTask;
    }

    public DownloadTask getDownloadTask() {
        return this.downloadTask;
    }

    public DownloadRequest getDownloadRequest() {
        return this.downloadRequest;
    }

    public void setDownloadRequest(DownloadRequest downloadRequest) {
        this.downloadRequest = downloadRequest;
    }

    public void updateFilePath(String filePath) {
        if (filePath == null || filePath.isEmpty()) {
            return;
        }
        synchronized (this) {
            setFilePath(filePath);
            deleteDownloadFile();
            DBService.getInstance().updateInfo(this);
        }
    }

    public boolean isDisableBreakPointDownload() {
        return this.downloadRequest.isDisableBreakPointDownload();
    }

    public void setCacheBean(DownloadProvider.CacheBean cacheBean) {
        this.cacheBean = cacheBean;
    }

    public DownloadProvider.CacheBean getCacheBean() {
        return this.cacheBean;
    }

    public String getMd5() {
        return this.md5 == null ? "" : this.md5;
    }

    public void setMD5(String md5) {
        this.md5 = md5;
    }

    public void setTransferEncoding(String transferEncoding) {
        this.transferEncoding = transferEncoding;
    }

    public boolean isChunked() {
        return Util.TRANSFER_ENCODING_CHUNKED.equalsIgnoreCase(this.transferEncoding);
    }

    public void setCompletedSize(long completedSize) {
        this.completedSize = completedSize;
    }

    public void download(long length) {
        this.completedSize += length;
        this.speedMonitor.download(length);
    }

    public void computeSpeed() {
        this.speed = this.speedMonitor.getSpeed();
    }

    public void setContentLength(long contentLength) {
        this.contentLength = contentLength;
    }

    public void setFinished(int finished) {
        this.finished = finished;
    }

    public void setStatus(DownloadInfo.Status status) {
        this.status = status;
    }

    public boolean isDeleted() {
        return this.status == DownloadInfo.Status.DELETED;
    }

    public void setProgress(int progress) {
        this.progress = progress;
    }

    public void setErrorCode(ErrorCode code) {
        setErrorCode(code, false);
    }

    public void setErrorCode(ErrorCode code, boolean force) {
        if (this.status != null) {
            if (this.status.isRunning() || force) {
                this.errorCode = code;
                setStatus(DownloadInfo.Status.FAILED);
            }
        }
    }

    public void clearErrorCode() {
        this.errorCode = null;
    }

    public DownloadInfo.Status getStatus() {
        return this.status;
    }

    public File getTempDir() {
        if (this.tempDir == null && this.filePath != null) {
            this.tempDir = Util.getTempDir(this.filePath);
        }
        return this.tempDir;
    }

    public boolean isFinished() {
        synchronized (this) {
            if (this.downloadFile == null) {
                return false;
            }
            if (this.finished == 1) {
                if (this.contentLength > 0 && this.downloadFile.exists() && this.downloadFile.length() == this.contentLength) {
                    return true;
                }
                if (this.downloadFile.exists()) {
                    FileUtil.deleteFile(this.downloadFile);
                }
            }
            this.finished = 0;
            return false;
        }
    }

    private void loadDownloadFiles() {
        if (this.filePath == null) {
            return;
        }
        File tempDir = Util.getTempDir(this.filePath);
        tempDir.listFiles(new FilenameFilter() { // from class: com.huxq17.download.core.DownloadDetailsInfo.1
            @Override // java.io.FilenameFilter
            public boolean accept(File dir, String name) {
                if (name.startsWith(Util.DOWNLOAD_PART)) {
                    File file = new File(dir, name);
                    DownloadDetailsInfo.this.downloadPartFiles.add(file);
                    DownloadDetailsInfo.this.completedSize += file.length();
                    return true;
                }
                return false;
            }
        });
    }

    public void calculateDownloadProgress() {
        if (isFinished()) {
            setCompletedSize(this.contentLength);
            if (this.status == null) {
                setStatus(DownloadInfo.Status.FINISHED);
            }
        } else {
            if (this.downloadPartFiles.size() == 0) {
                this.completedSize = 0L;
                loadDownloadFiles();
            }
            if (this.status == null) {
                setStatus(DownloadInfo.Status.STOPPED);
            }
        }
        this.progress = (int) (((this.completedSize * 1.0f) / this.contentLength) * 100.0f);
    }

    public DownloadInfo snapshot() {
        computeSpeed();
        return new DownloadInfo(this.url, this.downloadFile, this.tag, this.id, this.createTime, this.speed, this.completedSize, this.contentLength, this.errorCode, this.status, this.finished, this.progress, this);
    }

    public File getDownloadFile() {
        return this.downloadFile;
    }

    public void deleteDownloadFile() {
        if (this.downloadFile != null) {
            FileUtil.deleteFile(this.downloadFile);
        }
    }

    public void deleteTempDir() {
        if (getTempDir() != null) {
            FileUtil.deleteDir(getTempDir());
        }
    }

    public String getFilePath() {
        return this.filePath;
    }

    public String getName() {
        return this.downloadFile == null ? "" : this.downloadFile.getName();
    }

    public String getUrl() {
        return this.url;
    }

    public String getId() {
        return this.id;
    }

    public long getContentLength() {
        return this.contentLength;
    }

    public String getTag() {
        return this.tag;
    }

    public int getFinished() {
        return this.finished;
    }

    public long getCreateTime() {
        return this.createTime;
    }

    public long getCompletedSize() {
        return this.completedSize;
    }

    public ErrorCode getErrorCode() {
        return this.errorCode;
    }

    public void setExtraData(Object extraData) {
        this.wfExtraData = new WeakReference<>(extraData);
    }

    public Object getWfExtraData() {
        if (this.wfExtraData == null) {
            return null;
        }
        return this.wfExtraData.get();
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x000f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean isRunning() {
        /*
            r1 = this;
            monitor-enter(r1)
            com.huxq17.download.core.DownloadInfo$Status r0 = r1.status     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto Lf
            com.huxq17.download.core.DownloadInfo$Status r0 = r1.status     // Catch: java.lang.Throwable -> L12
            boolean r0 = r0.isRunning()     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto Lf
            r0 = 1
            goto L10
        Lf:
            r0 = 0
        L10:
            monitor-exit(r1)
            return r0
        L12:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huxq17.download.core.DownloadDetailsInfo.isRunning():boolean");
    }
}
