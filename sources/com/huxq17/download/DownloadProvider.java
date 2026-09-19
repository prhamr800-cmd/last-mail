package com.huxq17.download;

import android.annotation.SuppressLint;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.huxq17.download.config.DownloadConfigService;
import com.huxq17.download.core.DownloadManager;
import com.huxq17.download.core.MessageCenter;
import com.huxq17.download.core.service.IDownloadConfigService;
import com.huxq17.download.core.service.IDownloadManager;
import com.huxq17.download.core.service.IMessageCenter;
import com.huxq17.download.db.DBService;
import com.huxq17.download.utils.OKHttpUtil;
import com.huxq17.download.utils.ReflectUtil;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadProvider extends ContentProvider {
    public static final String AUTHORITY_URI = "content://%s.huxq17.download-provider";
    public static Uri CONTENT_URI;

    @SuppressLint({"StaticFieldLeak"})
    public static Context context;

    public static final class CacheTable {
        public static final String ETAG = "eTag";
        public static final String LAST_MODIFIED = "Last_modified";
        public static final String TABLE_NAME = "download_cache";
        public static final String URL = "url";
    }

    public static final class DownloadTable {
        public static final String CREATE_TIME = "create_time";
        public static final String FILE_LENGTH = "file_length";
        public static final String FINISHED = "finished";
        public static final String ID = "id";
        public static final String PATH = "path";
        public static final String TABLE_NAME = "download_info";
        public static final String TAG = "tag";
        public static final String THREAD_NUM = "thread_num";
        public static final String URL = "url";
    }

    public static Uri getContentUri(Context context2) {
        if (CONTENT_URI == null) {
            CONTENT_URI = Uri.parse(String.format(AUTHORITY_URI, context2.getPackageName()));
        }
        return CONTENT_URI;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        context = getContext();
        DBService.init(context);
        DownloadManager downloadManager = (DownloadManager) ReflectUtil.newInstance(DownloadManager.class);
        downloadManager.start(context);
        PumpFactory.addService(IDownloadManager.class, downloadManager);
        MessageCenter messageCenter = (MessageCenter) ReflectUtil.newInstance(MessageCenter.class);
        messageCenter.start(context);
        PumpFactory.addService(IMessageCenter.class, messageCenter);
        IDownloadConfigService downloadConfig = (IDownloadConfigService) ReflectUtil.newInstance(DownloadConfigService.class);
        PumpFactory.addService(IDownloadConfigService.class, downloadConfig);
        OKHttpUtil.init(context);
        return true;
    }

    public static final class CacheBean {
        public String eTag;
        public String lastModified;
        public String url;

        public String getIfRangeField() {
            return TextUtils.isEmpty(this.eTag) ? this.lastModified : this.eTag;
        }

        public CacheBean(String url, String lastModified, String eTag) {
            this.lastModified = lastModified;
            this.eTag = eTag;
            this.url = url;
        }
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] projection, @Nullable String selection, @Nullable String[] selectionArgs, @Nullable String sortOrder) {
        throw new SQLException("Not support to query.");
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues values) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, @Nullable String selection, @Nullable String[] selectionArgs) {
        throw new SQLException("Not support to delete.");
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, @Nullable ContentValues values, @Nullable String selection, @Nullable String[] selectionArgs) {
        throw new SQLException("Not support to update.");
    }
}
