package com.snowplowanalytics.snowplow.tracker.storage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.snowplowanalytics.snowplow.tracker.utils.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class EventStoreHelper extends SQLiteOpenHelper {
    public static final String COLUMN_DATE_CREATED = "dateCreated";
    public static final String COLUMN_EVENT_DATA = "eventData";
    public static final String COLUMN_ID = "id";
    private static final String DATABASE_NAME = "snowplowEvents.sqlite";
    private static final int DATABASE_VERSION = 1;
    public static final String METADATA_DATE_CREATED = "dateCreated";
    public static final String METADATA_EVENT_DATA = "eventData";
    public static final String METADATA_ID = "id";
    public static final String TABLE_EVENTS = "events";
    private static final String TAG = EventStoreHelper.class.getName();
    private static final String queryCreateTable = "CREATE TABLE IF NOT EXISTS 'events' (id INTEGER PRIMARY KEY, eventData BLOB, dateCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP)";
    private static final String queryDropTable = "DROP TABLE IF EXISTS 'events'";
    private static EventStoreHelper sInstance;

    public static EventStoreHelper getInstance(Context context) {
        if (sInstance == null) {
            sInstance = new EventStoreHelper(context.getApplicationContext());
        }
        return sInstance;
    }

    private EventStoreHelper(Context context) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase database) {
        database.execSQL(queryCreateTable);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase database, int oldVersion, int newVersion) {
        Logger.d(TAG, "Upgrade not implemented, resetting database...", new Object[0]);
        database.execSQL(queryDropTable);
        onCreate(database);
    }
}
