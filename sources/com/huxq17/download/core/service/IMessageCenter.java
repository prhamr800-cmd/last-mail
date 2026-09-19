package com.huxq17.download.core.service;

import android.content.Context;
import com.huxq17.download.core.DownloadDetailsInfo;
import com.huxq17.download.core.DownloadListener;

/* JADX INFO: loaded from: classes2.dex */
public interface IMessageCenter {
    void notifyProgressChanged(DownloadDetailsInfo downloadDetailsInfo);

    void register(DownloadListener downloadListener);

    void start(Context context);

    void unRegister(DownloadListener downloadListener);

    void unRegister(String str);
}
