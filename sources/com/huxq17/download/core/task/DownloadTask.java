package com.huxq17.download.core.task;

import android.text.TextUtils;
import com.huxq17.download.PumpFactory;
import com.huxq17.download.core.DownloadDetailsInfo;
import com.huxq17.download.core.DownloadInfo;
import com.huxq17.download.core.DownloadInterceptor;
import com.huxq17.download.core.DownloadRequest;
import com.huxq17.download.core.RealDownloadChain;
import com.huxq17.download.core.interceptor.ConnectInterceptor;
import com.huxq17.download.core.interceptor.MergeFileInterceptor;
import com.huxq17.download.core.interceptor.RetryInterceptor;
import com.huxq17.download.core.service.IDownloadConfigService;
import com.huxq17.download.core.service.IMessageCenter;
import com.huxq17.download.db.DBService;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadTask extends Task {
    private ConnectInterceptor connectInterceptor;
    private DBService dbService;
    private final DownloadDetailsInfo downloadInfo;
    private DownloadRequest downloadRequest;
    private int lastProgress;
    private final Object lock;
    private IMessageCenter messageCenter;

    public DownloadTask(DownloadRequest downloadRequest) {
        if (downloadRequest != null) {
            this.downloadRequest = downloadRequest;
            this.downloadInfo = downloadRequest.getDownloadInfo();
            this.lock = this.downloadInfo;
            this.downloadInfo.setDownloadTask(this);
            this.dbService = DBService.getInstance();
            this.messageCenter = (IMessageCenter) PumpFactory.getService(IMessageCenter.class);
            this.downloadInfo.clearErrorCode();
            this.downloadInfo.setStatus(DownloadInfo.Status.WAIT);
            this.downloadInfo.setCompletedSize(0L);
            this.downloadInfo.setProgress(0);
            if (this.downloadInfo.getCompletedSize() > 0 && this.downloadInfo.getCompletedSize() == this.downloadInfo.getContentLength() && downloadRequest.isForceReDownload()) {
                this.downloadInfo.deleteDownloadFile();
                updateInfo();
            }
            notifyProgressChanged(this.downloadInfo);
            return;
        }
        this.downloadInfo = null;
        this.lock = null;
    }

    public Object getLock() {
        return this.lock;
    }

    public DownloadRequest getRequest() {
        return this.downloadRequest;
    }

    public String getUrl() {
        return this.downloadRequest.getUrl();
    }

    public String getId() {
        return this.downloadRequest.getId();
    }

    public String getName() {
        String name = this.downloadRequest.getDownloadInfo().getName();
        if (TextUtils.isEmpty(name)) {
            return this.downloadRequest.getName();
        }
        return name;
    }

    @Override // com.huxq17.download.core.task.Task
    public void execute() {
        if (isRunning()) {
            this.downloadInfo.setStatus(DownloadInfo.Status.RUNNING);
            notifyProgressChanged(this.downloadInfo);
            downloadWithDownloadChain();
            notifyProgressChanged(this.downloadInfo);
        }
        this.downloadInfo.setDownloadTask(null);
    }

    private void downloadWithDownloadChain() {
        List<DownloadInterceptor> interceptors = new ArrayList<>(((IDownloadConfigService) PumpFactory.getService(IDownloadConfigService.class)).getDownloadInterceptors());
        this.connectInterceptor = new ConnectInterceptor();
        interceptors.add(new RetryInterceptor());
        interceptors.add(this.connectInterceptor);
        interceptors.add(new MergeFileInterceptor());
        RealDownloadChain realDownloadChain = new RealDownloadChain(interceptors, this.downloadRequest, 0);
        realDownloadChain.proceed(this.downloadRequest);
        synchronized (this.lock) {
            if (this.downloadInfo.getStatus() == DownloadInfo.Status.PAUSING) {
                this.downloadInfo.setStatus(DownloadInfo.Status.PAUSED);
            }
        }
        updateInfo();
    }

    boolean onDownload(int length) {
        synchronized (this.lock) {
            if (!isRunning()) {
                return false;
            }
            this.downloadInfo.download(length);
            int progress = (int) (((this.downloadInfo.getCompletedSize() * 1.0f) / this.downloadInfo.getContentLength()) * 100.0f);
            if (progress < 0) {
                progress = 0;
            }
            this.downloadInfo.setProgress(progress);
            if (progress != this.lastProgress && progress != 100) {
                this.lastProgress = progress;
                notifyProgressChanged(this.downloadInfo);
            }
            return true;
        }
    }

    public void notifyProgressChanged(DownloadDetailsInfo downloadInfo) {
        if (this.messageCenter != null) {
            this.messageCenter.notifyProgressChanged(downloadInfo);
        }
    }

    public DownloadDetailsInfo getDownloadInfo() {
        return this.downloadInfo;
    }

    public void pause() {
        synchronized (this.lock) {
            if (isRunning()) {
                this.downloadInfo.setStatus(DownloadInfo.Status.PAUSING);
                notifyProgressChanged(this.downloadInfo);
                cancel();
            }
        }
    }

    public void stop() {
        synchronized (this.lock) {
            if (this.downloadInfo.getStatus().shouldStop()) {
                this.downloadInfo.setStatus(DownloadInfo.Status.STOPPED);
                cancel();
            }
        }
    }

    @Override // com.huxq17.download.core.task.Task
    public void cancel() {
        if (this.connectInterceptor != null) {
            this.connectInterceptor.cancel();
        }
        if (this.currentThread != null) {
            this.currentThread.interrupt();
        }
    }

    public void updateInfo() {
        synchronized (this.lock) {
            this.dbService.updateInfo(this.downloadInfo);
        }
    }

    public boolean isRunning() {
        return this.downloadInfo != null && this.downloadInfo.isRunning();
    }
}
