package com.huxq17.download.core.service;

import android.content.Context;
import com.huxq17.download.core.DownloadInfo;
import com.huxq17.download.core.DownloadRequest;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IDownloadManager {
    void deleteById(String str);

    void deleteByTag(String str);

    List<DownloadInfo> getAllDownloadList();

    Context getContext();

    DownloadInfo getDownloadInfoById(String str);

    List<DownloadInfo> getDownloadListByTag(String str);

    List<DownloadInfo> getDownloadedList();

    List<DownloadInfo> getDownloadingList();

    File getFileIfSucceed(String str);

    boolean hasDownloadSucceed(String str);

    boolean isShutdown();

    boolean isTaskRunning(String str);

    void pause(String str);

    void resume(String str);

    void shutdown();

    void start(Context context);

    void stop(String str);

    void submit(DownloadRequest downloadRequest);
}
