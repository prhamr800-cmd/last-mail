package com.huxq17.download.core;

import com.huxq17.download.core.DownloadInterceptor;
import com.huxq17.download.core.task.DownloadTask;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class RealDownloadChain implements DownloadInterceptor.DownloadChain {
    private int calls;
    private final DownloadRequest downloadRequest;
    private final int index;
    private final List<DownloadInterceptor> interceptors;

    public RealDownloadChain(List<DownloadInterceptor> interceptors, DownloadRequest downloadRequest, int index) {
        this.index = index;
        this.downloadRequest = downloadRequest;
        this.interceptors = interceptors;
    }

    @Override // com.huxq17.download.core.DownloadInterceptor.DownloadChain
    public DownloadRequest request() {
        return this.downloadRequest;
    }

    public DownloadTask downloadTask() {
        return null;
    }

    @Override // com.huxq17.download.core.DownloadInterceptor.DownloadChain
    public DownloadInfo proceed(DownloadRequest downloadRequest) {
        return proceed(downloadRequest, false);
    }

    public DownloadInfo proceed(DownloadRequest downloadRequest, boolean shouldRetry) {
        this.calls++;
        if (!shouldRetry && this.calls > 1) {
            throw new IllegalStateException("download interceptor " + this.interceptors.get(this.index - 1) + " must call proceed() exactly once");
        }
        DownloadInterceptor interceptor = this.interceptors.get(this.index);
        DownloadInterceptor.DownloadChain nextChain = new RealDownloadChain(this.interceptors, downloadRequest, this.index + 1);
        return interceptor.intercept(nextChain);
    }
}
