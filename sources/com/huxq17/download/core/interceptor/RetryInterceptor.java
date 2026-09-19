package com.huxq17.download.core.interceptor;

import com.huxq17.download.ErrorCode;
import com.huxq17.download.core.DownloadDetailsInfo;
import com.huxq17.download.core.DownloadInfo;
import com.huxq17.download.core.DownloadInterceptor;
import com.huxq17.download.core.DownloadRequest;
import com.huxq17.download.core.RealDownloadChain;

/* JADX INFO: loaded from: classes2.dex */
public class RetryInterceptor implements DownloadInterceptor {
    private DownloadDetailsInfo downloadDetailsInfo;
    private int retryUpperLimit;
    private int tryCount;

    @Override // com.huxq17.download.core.DownloadInterceptor
    public DownloadInfo intercept(DownloadInterceptor.DownloadChain chain) {
        RealDownloadChain realDownloadChain = (RealDownloadChain) chain;
        DownloadRequest downloadRequest = chain.request();
        this.downloadDetailsInfo = downloadRequest.getDownloadInfo();
        int retryDelay = downloadRequest.getRetryDelay();
        this.retryUpperLimit = downloadRequest.getRetryCount();
        boolean shouldRetry = false;
        while (true) {
            DownloadInfo downloadInfo = realDownloadChain.proceed(downloadRequest, shouldRetry);
            shouldRetry = shouldRetry();
            if (shouldRetry) {
                if (this.downloadDetailsInfo.isForceRetry()) {
                    this.downloadDetailsInfo.deleteTempDir();
                    this.downloadDetailsInfo.setForceRetry(false);
                } else {
                    this.tryCount++;
                }
                this.downloadDetailsInfo.setStatus(DownloadInfo.Status.RUNNING);
                this.downloadDetailsInfo.clearErrorCode();
                if (retryDelay > 0) {
                    try {
                        Thread.sleep(retryDelay);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            } else {
                return downloadInfo;
            }
        }
    }

    private boolean shouldRetry() {
        return this.downloadDetailsInfo.isForceRetry() || (this.downloadDetailsInfo.getErrorCode() == ErrorCode.ERROR_NETWORK_UNAVAILABLE && this.retryUpperLimit > this.tryCount);
    }
}
