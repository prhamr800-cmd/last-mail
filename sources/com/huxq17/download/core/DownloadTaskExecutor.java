package com.huxq17.download.core;

import com.huxq17.download.core.task.DownloadTask;

/* JADX INFO: loaded from: classes2.dex */
public interface DownloadTaskExecutor {
    void execute(DownloadTask downloadTask);

    int getMaxDownloadNumber();

    String getName();

    String getTag();

    void init();

    void shutdown();
}
