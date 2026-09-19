package com.huxq17.download.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.huxq17.download.DownloadProvider;
import com.huxq17.download.core.DownloadDetailsInfo;
import com.huxq17.download.core.DownloadInfoManager;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class DBService {
    private static DBService instance;
    private DBOpenHelper helper;
    private AtomicInteger mOpenCounter = new AtomicInteger();
    private DownloadInfoManager downloadInfoManager = DownloadInfoManager.getInstance();

    public static void init(Context context) {
        instance = new DBService(context);
    }

    private DBService(Context context) {
        this.helper = new DBOpenHelper(context);
    }

    public static synchronized DBService getInstance() {
        return instance;
    }

    public void updateCache(DownloadProvider.CacheBean cacheBean) {
        if (TextUtils.isEmpty(cacheBean.lastModified) && TextUtils.isEmpty(cacheBean.eTag)) {
            return;
        }
        SQLiteDatabase db = getDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("url", cacheBean.url);
        contentValues.put(DownloadProvider.CacheTable.LAST_MODIFIED, cacheBean.lastModified);
        contentValues.put(DownloadProvider.CacheTable.ETAG, cacheBean.eTag);
        db.replace(DownloadProvider.CacheTable.TABLE_NAME, null, contentValues);
        closeDatabase();
    }

    public DownloadProvider.CacheBean queryCache(String url) {
        SQLiteDatabase db = getDatabase();
        Cursor cursor = db.rawQuery("select * from download_cache where url=?", new String[]{url});
        DownloadProvider.CacheBean cacheBean = null;
        if (cursor.moveToNext()) {
            cacheBean = new DownloadProvider.CacheBean(url, cursor.getString(2), cursor.getString(1));
        }
        cursor.close();
        closeDatabase();
        return cacheBean;
    }

    public void updateInfo(DownloadDetailsInfo downloadInfo) {
        if (downloadInfo.isDeleted()) {
            return;
        }
        SQLiteDatabase db = getDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("url", downloadInfo.getUrl());
        contentValues.put(DownloadProvider.DownloadTable.PATH, downloadInfo.getFilePath());
        contentValues.put(DownloadProvider.DownloadTable.THREAD_NUM, Integer.valueOf(downloadInfo.getThreadNum()));
        contentValues.put(DownloadProvider.DownloadTable.FILE_LENGTH, Long.valueOf(downloadInfo.getContentLength()));
        contentValues.put(DownloadProvider.DownloadTable.FINISHED, Integer.valueOf(downloadInfo.getFinished()));
        contentValues.put(DownloadProvider.DownloadTable.TAG, downloadInfo.getTag());
        contentValues.put("id", downloadInfo.getId());
        contentValues.put(DownloadProvider.DownloadTable.CREATE_TIME, Long.valueOf(downloadInfo.getCreateTime()));
        db.replace(DownloadProvider.DownloadTable.TABLE_NAME, null, contentValues);
        closeDatabase();
    }

    public List<DownloadDetailsInfo> getDownloadList() {
        return getDownloadListByTag(null);
    }

    public List<DownloadDetailsInfo> getDownloadListByTag(String tag) {
        Cursor cursor;
        List<DownloadDetailsInfo> tasks = new ArrayList<>();
        SQLiteDatabase db = getDatabase();
        if (tag == null) {
            cursor = db.query(DownloadProvider.DownloadTable.TABLE_NAME, null, null, null, null, null, "create_time DESC", null);
        } else {
            cursor = db.query(DownloadProvider.DownloadTable.TABLE_NAME, null, "tag = ?", new String[]{tag}, null, null, "create_time DESC", null);
        }
        while (cursor.moveToNext()) {
            DownloadDetailsInfo info = this.downloadInfoManager.createInfoByCursor(cursor);
            tasks.add(info);
        }
        cursor.close();
        closeDatabase();
        return tasks;
    }

    public DownloadDetailsInfo getDownloadInfo(String id) {
        if (id == null || id.length() == 0) {
            throw new IllegalArgumentException("id is empty.");
        }
        DownloadDetailsInfo info = null;
        SQLiteDatabase db = getDatabase();
        Cursor cursor = db.query(DownloadProvider.DownloadTable.TABLE_NAME, null, "id=?", new String[]{id}, null, null, null, null);
        if (cursor.moveToNext()) {
            info = this.downloadInfoManager.createInfoByCursor(cursor);
        }
        cursor.close();
        closeDatabase();
        return info;
    }

    public void deleteInfo(String id) {
        SQLiteDatabase db = getDatabase();
        db.delete(DownloadProvider.DownloadTable.TABLE_NAME, "id=?", new String[]{id});
        db.delete(DownloadProvider.CacheTable.TABLE_NAME, "url=?", new String[]{id});
        closeDatabase();
    }

    private synchronized SQLiteDatabase getDatabase() {
        this.mOpenCounter.incrementAndGet();
        return this.helper.getWritableDatabase();
    }

    private synchronized void closeDatabase() {
        if (this.mOpenCounter.decrementAndGet() == 0) {
            this.helper.close();
        }
    }
}
