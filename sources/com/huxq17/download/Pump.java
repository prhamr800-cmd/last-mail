package com.huxq17.download;

import androidx.annotation.NonNull;
import com.huxq17.download.config.DownloadConfig;
import com.huxq17.download.core.DownloadInfo;
import com.huxq17.download.core.DownloadListener;
import com.huxq17.download.core.DownloadRequest;
import com.huxq17.download.core.service.IDownloadManager;
import com.huxq17.download.core.service.IMessageCenter;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Pump {
    public static DownloadConfig.Builder newConfigBuilder() {
        return DownloadConfig.newBuilder();
    }

    public static DownloadRequest.DownloadGenerator newRequest(String url) {
        return newRequest(url, null);
    }

    public static DownloadRequest.DownloadGenerator newRequest(String url, String filePath) {
        return DownloadRequest.newRequest(url, filePath);
    }

    @Deprecated
    public static void download(String url, String filePath) {
        DownloadRequest.newRequest(url, filePath).submit();
    }

    public static void subscribe(DownloadListener downloadListener) {
        ((IMessageCenter) PumpFactory.getService(IMessageCenter.class)).register(downloadListener);
    }

    public static void unSubscribe(String id) {
        ((IMessageCenter) PumpFactory.getService(IMessageCenter.class)).unRegister(id);
    }

    public static void unSubscribe(DownloadListener downloadListener) {
        ((IMessageCenter) PumpFactory.getService(IMessageCenter.class)).unRegister(downloadListener);
    }

    public static void pause(String id) {
        ((IDownloadManager) PumpFactory.getService(IDownloadManager.class)).pause(id);
    }

    public static void stop(String id) {
        ((IDownloadManager) PumpFactory.getService(IDownloadManager.class)).stop(id);
    }

    public static void deleteByTag(String tag) {
        ((IDownloadManager) PumpFactory.getService(IDownloadManager.class)).deleteByTag(tag);
    }

    public static void deleteById(String id) {
        ((IDownloadManager) PumpFactory.getService(IDownloadManager.class)).deleteById(id);
    }

    public static void resume(String id) {
        ((IDownloadManager) PumpFactory.getService(IDownloadManager.class)).resume(id);
    }

    public static void shutdown() {
        ((IDownloadManager) PumpFactory.getService(IDownloadManager.class)).shutdown();
    }

    public static List<DownloadInfo> getAllDownloadList() {
        return ((IDownloadManager) PumpFactory.getService(IDownloadManager.class)).getAllDownloadList();
    }

    public static List<DownloadInfo> getDownloadingList() {
        return ((IDownloadManager) PumpFactory.getService(IDownloadManager.class)).getDownloadingList();
    }

    public static List<DownloadInfo> getDownloadedList() {
        return ((IDownloadManager) PumpFactory.getService(IDownloadManager.class)).getDownloadedList();
    }

    public static List<DownloadInfo> getDownloadListByTag(String tag) {
        return ((IDownloadManager) PumpFactory.getService(IDownloadManager.class)).getDownloadListByTag(tag);
    }

    public static DownloadInfo getDownloadInfoById(String id) {
        return ((IDownloadManager) PumpFactory.getService(IDownloadManager.class)).getDownloadInfoById(id);
    }

    public static boolean hasDownloadSucceed(@NonNull String id) {
        return ((IDownloadManager) PumpFactory.getService(IDownloadManager.class)).hasDownloadSucceed(id);
    }

    public static File getFileIfSucceed(@NonNull String id) {
        return ((IDownloadManager) PumpFactory.getService(IDownloadManager.class)).getFileIfSucceed(id);
    }
}
