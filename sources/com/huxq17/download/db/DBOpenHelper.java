package com.huxq17.download.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import com.huxq17.download.DownloadProvider;

/* JADX INFO: loaded from: classes2.dex */
public class DBOpenHelper extends SQLiteOpenHelper {
    public DBOpenHelper(Context context) {
        super(context, "pump.db", (SQLiteDatabase.CursorFactory) null, 5);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE IF NOT EXISTS download_info (url CHAR,path CHAR,thread_num INTEGER,file_length INTEGER,finished INTEGER,create_time TIMESTAMP NOT NULL default (strftime('%s','now','localtime')*1000+(strftime('%f','now','localtime')-strftime('%S','now','localtime'))*1000),tag CHAR,id CHAR primary key);");
        db.execSQL("CREATE TABLE IF NOT EXISTS download_cache (url CHAR primary key,eTag CHAR,Last_modified CHAR);");
    }

    private void newVersion3(SQLiteDatabase db, int oldVersion) {
        if (oldVersion < 2) {
            onCreate(db);
        }
    }

    private void newVersion4(SQLiteDatabase db, int oldVersion) {
        if (oldVersion < 3) {
            newVersion3(db, oldVersion);
        }
        try {
            db.execSQL("ALTER TABLE download_info ADD COLUMN id CHAR default('');");
        } catch (SQLiteException e) {
        }
        db.execSQL("CREATE TABLE IF NOT EXISTS download_info_temp (url CHAR," + DownloadProvider.DownloadTable.PATH + " CHAR," + DownloadProvider.DownloadTable.THREAD_NUM + " INTEGER," + DownloadProvider.DownloadTable.FILE_LENGTH + " INTEGER," + DownloadProvider.DownloadTable.FINISHED + " INTEGER," + DownloadProvider.DownloadTable.CREATE_TIME + " INTEGER," + DownloadProvider.DownloadTable.TAG + " CHAR,id CHAR primary key);");
        db.execSQL("INSERT INTO download_info_temp SELECT url," + DownloadProvider.DownloadTable.PATH + "," + DownloadProvider.DownloadTable.THREAD_NUM + "," + DownloadProvider.DownloadTable.FILE_LENGTH + "," + DownloadProvider.DownloadTable.FINISHED + "," + DownloadProvider.DownloadTable.CREATE_TIME + "," + DownloadProvider.DownloadTable.TAG + ",url FROM " + DownloadProvider.DownloadTable.TABLE_NAME + ";");
        db.execSQL(String.format("DROP TABLE %s;", DownloadProvider.DownloadTable.TABLE_NAME));
        db.execSQL("CREATE TABLE IF NOT EXISTS download_info (url CHAR,path CHAR,thread_num INTEGER,file_length INTEGER,finished INTEGER,create_time INTEGER,tag CHAR,id CHAR primary key);");
        StringBuilder sb = new StringBuilder();
        sb.append("INSERT INTO download_info SELECT *  FROM ");
        sb.append("download_info_temp");
        sb.append(";");
        db.execSQL(sb.toString());
        db.execSQL(String.format("DROP TABLE %s", "download_info_temp"));
    }

    private void newVersion5(SQLiteDatabase db, int oldVersion) {
        if (oldVersion < 4) {
            newVersion4(db, oldVersion);
        }
        db.execSQL("CREATE TABLE download_info_temp (url CHAR," + DownloadProvider.DownloadTable.PATH + " CHAR," + DownloadProvider.DownloadTable.THREAD_NUM + " INTEGER," + DownloadProvider.DownloadTable.FILE_LENGTH + " INTEGER," + DownloadProvider.DownloadTable.FINISHED + " INTEGER," + DownloadProvider.DownloadTable.CREATE_TIME + " TIMESTAMP NOT NULL default (strftime('%s','now','localtime')*1000+(strftime('%f','now','localtime')-strftime('%S','now','localtime'))*1000)," + DownloadProvider.DownloadTable.TAG + " CHAR,id CHAR primary key);");
        StringBuilder sb = new StringBuilder();
        sb.append("INSERT INTO ");
        sb.append("download_info_temp");
        sb.append(" SELECT * FROM ");
        sb.append(DownloadProvider.DownloadTable.TABLE_NAME);
        sb.append(";");
        db.execSQL(sb.toString());
        db.execSQL(String.format("DROP TABLE %s;", DownloadProvider.DownloadTable.TABLE_NAME));
        db.execSQL("CREATE TABLE download_info (url CHAR,path CHAR,thread_num INTEGER,file_length INTEGER,finished INTEGER,create_time TIMESTAMP NOT NULL default (strftime('%s','now','localtime')*1000+(strftime('%f','now','localtime')-strftime('%S','now','localtime'))*1000),tag CHAR,id CHAR primary key);");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("INSERT INTO download_info SELECT *  FROM ");
        sb2.append("download_info_temp");
        sb2.append(";");
        db.execSQL(sb2.toString());
        db.execSQL(String.format("DROP TABLE %s", "download_info_temp"));
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        if (oldVersion == 0) {
            onCreate(db);
            return;
        }
        if (newVersion == 2) {
            onCreate(db);
            return;
        }
        if (newVersion == 3) {
            newVersion3(db, oldVersion);
        } else if (newVersion == 4) {
            newVersion4(db, oldVersion);
        } else if (newVersion == 5) {
            newVersion5(db, oldVersion);
        }
    }
}
