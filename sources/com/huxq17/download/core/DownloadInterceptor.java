package com.huxq17.download.core;

/* JADX INFO: loaded from: classes2.dex */
public interface DownloadInterceptor {

    public interface DownloadChain {
        DownloadInfo proceed(DownloadRequest downloadRequest);

        DownloadRequest request();
    }

    DownloadInfo intercept(DownloadChain downloadChain);
}
