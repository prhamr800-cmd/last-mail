package com.snowplowanalytics.snowplow.tracker.payload;

import com.snowplowanalytics.snowplow.tracker.utils.Logger;
import com.snowplowanalytics.snowplow.tracker.utils.Util;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class TrackerPayload implements Payload {
    private final String TAG = TrackerPayload.class.getSimpleName();
    private final HashMap<String, Object> payload = new HashMap<>();

    @Override // com.snowplowanalytics.snowplow.tracker.payload.Payload
    public void add(String key, String value) {
        if (value == null || value.isEmpty()) {
            Logger.v(this.TAG, "The keys value is empty, returning without adding key: %s", key);
            return;
        }
        Logger.v(this.TAG, "Adding new kv pair: " + key + "->%s", value);
        this.payload.put(key, value);
    }

    @Override // com.snowplowanalytics.snowplow.tracker.payload.Payload
    public void add(String key, Object value) {
        if (value == null) {
            Logger.v(this.TAG, "The keys value is empty, returning without adding key: %s", key);
            return;
        }
        Logger.v(this.TAG, "Adding new kv pair: " + key + "->%s", value);
        this.payload.put(key, value);
    }

    @Override // com.snowplowanalytics.snowplow.tracker.payload.Payload
    public void addMap(Map<String, Object> map) {
        if (map == null) {
            Logger.v(this.TAG, "Map passed in is null, returning without adding map.", new Object[0]);
        } else {
            Logger.v(this.TAG, "Adding new map: %s", map);
            this.payload.putAll(map);
        }
    }

    @Override // com.snowplowanalytics.snowplow.tracker.payload.Payload
    public void addMap(Map map, Boolean base64_encoded, String type_encoded, String type_no_encoded) {
        if (map == null) {
            Logger.v(this.TAG, "Map passed in is null, returning nothing.", new Object[0]);
            return;
        }
        String mapString = Util.mapToJSONObject(map).toString();
        Logger.v(this.TAG, "Adding new map: %s", map);
        if (base64_encoded.booleanValue()) {
            add(type_encoded, Util.base64Encode(mapString));
        } else {
            add(type_no_encoded, mapString);
        }
    }

    @Override // com.snowplowanalytics.snowplow.tracker.payload.Payload
    public Map getMap() {
        return this.payload;
    }

    @Override // com.snowplowanalytics.snowplow.tracker.payload.Payload
    public String toString() {
        return Util.mapToJSONObject(this.payload).toString();
    }

    @Override // com.snowplowanalytics.snowplow.tracker.payload.Payload
    public long getByteSize() {
        return Util.getUTF8Length(toString());
    }
}
