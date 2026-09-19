package com.digikala.dms.helper.downloader;

/* JADX INFO: loaded from: classes2.dex */
interface IDownloadTaskListener {
    void onCancel();

    void onComplete();

    void onContinue(int i);

    void onError(String str);
}
