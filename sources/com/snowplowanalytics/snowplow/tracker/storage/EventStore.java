package com.snowplowanalytics.snowplow.tracker.storage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import com.snowplowanalytics.snowplow.tracker.emitter.EmittableEvents;
import com.snowplowanalytics.snowplow.tracker.payload.Payload;
import com.snowplowanalytics.snowplow.tracker.payload.TrackerPayload;
import com.snowplowanalytics.snowplow.tracker.utils.Logger;
import com.snowplowanalytics.snowplow.tracker.utils.Util;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class EventStore {
    private SQLiteDatabase database;
    private EventStoreHelper dbHelper;
    private int sendLimit;
    private String TAG = EventStore.class.getSimpleName();
    private String[] allColumns = {"id", "eventData", "dateCreated"};
    private long lastInsertedRowId = -1;

    public EventStore(Context context, int sendLimit) {
        this.dbHelper = EventStoreHelper.getInstance(context);
        open();
        this.sendLimit = sendLimit;
        Logger.d(this.TAG, "DB Path: %s", this.database.getPath());
    }

    public void add(Payload payload) {
        insertEvent(payload);
    }

    public void open() {
        if (!isDatabaseOpen()) {
            this.database = this.dbHelper.getWritableDatabase();
            this.database.enableWriteAheadLogging();
        }
    }

    public void close() {
        this.dbHelper.close();
    }

    public long insertEvent(Payload payload) {
        if (isDatabaseOpen()) {
            byte[] bytes = Util.serialize(payload.getMap());
            ContentValues values = new ContentValues(2);
            values.put("eventData", bytes);
            this.lastInsertedRowId = this.database.insert(EventStoreHelper.TABLE_EVENTS, null, values);
        }
        Logger.d(this.TAG, "Added event to database: %s", Long.valueOf(this.lastInsertedRowId));
        return this.lastInsertedRowId;
    }

    public boolean removeEvent(long id) {
        int retval = -1;
        if (isDatabaseOpen()) {
            retval = this.database.delete(EventStoreHelper.TABLE_EVENTS, "id=" + id, null);
        }
        Logger.d(this.TAG, "Removed event from database: %s", "" + id);
        return retval == 1;
    }

    public boolean removeEvents(List<Long> ids) {
        if (ids.size() == 0) {
            return false;
        }
        int retval = -1;
        if (isDatabaseOpen()) {
            retval = this.database.delete(EventStoreHelper.TABLE_EVENTS, "id in (" + Util.joinLongList(ids) + ")", null);
        }
        Logger.d(this.TAG, "Removed events from database: %s", Integer.valueOf(retval));
        return retval == ids.size();
    }

    public boolean removeAllEvents() {
        int retval = -1;
        if (isDatabaseOpen()) {
            retval = this.database.delete(EventStoreHelper.TABLE_EVENTS, null, null);
        }
        Logger.d(this.TAG, "Removing all events from database.", new Object[0]);
        return retval == 0;
    }

    private List<Map<String, Object>> queryDatabase(String query, String orderBy) {
        List<Map<String, Object>> res = new ArrayList<>();
        if (isDatabaseOpen()) {
            Cursor cursor = this.database.query(EventStoreHelper.TABLE_EVENTS, this.allColumns, query, null, null, null, orderBy);
            cursor.moveToFirst();
            while (!cursor.isAfterLast()) {
                Map<String, Object> eventMetadata = new HashMap<>();
                eventMetadata.put("id", Long.valueOf(cursor.getLong(0)));
                eventMetadata.put("eventData", Util.deserializer(cursor.getBlob(1)));
                eventMetadata.put("dateCreated", cursor.getString(2));
                cursor.moveToNext();
                res.add(eventMetadata);
            }
            cursor.close();
        }
        return res;
    }

    public long getSize() {
        return DatabaseUtils.queryNumEntries(this.database, EventStoreHelper.TABLE_EVENTS);
    }

    public long getLastInsertedRowId() {
        return this.lastInsertedRowId;
    }

    public EmittableEvents getEmittableEvents() {
        LinkedList<Long> eventIds = new LinkedList<>();
        ArrayList<Payload> events = new ArrayList<>();
        for (Map<String, Object> eventMetadata : getDescEventsInRange(this.sendLimit)) {
            TrackerPayload payload = new TrackerPayload();
            Map<String, Object> eventData = (Map) eventMetadata.get("eventData");
            payload.addMap(eventData);
            Long eventId = (Long) eventMetadata.get("id");
            eventIds.add(eventId);
            events.add(payload);
        }
        return new EmittableEvents(events, eventIds);
    }

    public Map<String, Object> getEvent(long id) {
        List<Map<String, Object>> res = queryDatabase("id=" + id, null);
        if (res.isEmpty()) {
            return null;
        }
        return res.get(0);
    }

    public List<Map<String, Object>> getAllEvents() {
        return queryDatabase(null, null);
    }

    public List<Map<String, Object>> getDescEventsInRange(int range) {
        return queryDatabase(null, "id DESC LIMIT " + range);
    }

    public boolean isDatabaseOpen() {
        return this.database != null && this.database.isOpen();
    }
}
