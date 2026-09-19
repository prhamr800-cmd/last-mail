package com.huxq17.download.core;

import android.database.Cursor;
import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadInfoManager {
    private static DownloadInfoManager instance = new DownloadInfoManager();
    private ConcurrentHashMap<String, DownloadDetailsInfo> downloadInfoMap = new ConcurrentHashMap<>();

    private DownloadInfoManager() {
    }

    public static DownloadInfoManager getInstance() {
        return instance;
    }

    public DownloadDetailsInfo get(String id) {
        return this.downloadInfoMap.get(id);
    }

    public Collection<DownloadDetailsInfo> getAll() {
        return this.downloadInfoMap.values();
    }

    public DownloadDetailsInfo remove(String id) {
        return this.downloadInfoMap.remove(id);
    }

    public void clear() {
        this.downloadInfoMap.clear();
    }

    public DownloadDetailsInfo createDownloadInfo(String url, String filePath, String tag, String id, long createTime) {
        return createDownloadInfo(url, filePath, tag, id, createTime, true);
    }

    public DownloadDetailsInfo createDownloadInfo(String url, String filePath, String tag, String id, long createTime, boolean addInMap) {
        if (url == null || url.length() == 0) {
            throw new IllegalArgumentException("url==null or url.length()==0");
        }
        String id2 = (id == null || id.length() == 0) ? url : id;
        DownloadDetailsInfo downloadInfo = this.downloadInfoMap.get(id2);
        if (downloadInfo != null) {
            return downloadInfo;
        }
        DownloadDetailsInfo downloadInfo2 = new DownloadDetailsInfo(url, filePath, tag, id2, createTime);
        if (addInMap) {
            this.downloadInfoMap.put(id2, downloadInfo2);
        }
        return downloadInfo2;
    }

    public DownloadDetailsInfo createInfoByCursor(Cursor cursor) {
        String id = cursor.getString(7);
        DownloadDetailsInfo info = this.downloadInfoMap.get(id);
        if (info == null) {
            DownloadDetailsInfo info2 = new DownloadDetailsInfo(cursor.getString(0), cursor.getString(1), cursor.getString(6), id, cursor.getLong(5));
            info2.setThreadNum(cursor.getInt(2));
            info2.setContentLength(cursor.getLong(3));
            info2.setFinished(cursor.getShort(4));
            info2.calculateDownloadProgress();
            this.downloadInfoMap.put(id, info2);
            return info2;
        }
        return info;
    }
}
