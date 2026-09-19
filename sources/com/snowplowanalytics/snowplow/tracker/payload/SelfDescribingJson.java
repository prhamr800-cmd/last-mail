package com.snowplowanalytics.snowplow.tracker.payload;

import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import com.snowplowanalytics.snowplow.tracker.utils.Logger;
import com.snowplowanalytics.snowplow.tracker.utils.Preconditions;
import com.snowplowanalytics.snowplow.tracker.utils.Util;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class SelfDescribingJson implements Payload {
    private final String TAG;
    private final HashMap<String, Object> payload;

    public SelfDescribingJson(String schema) {
        this(schema, new HashMap());
    }

    public SelfDescribingJson(String schema, TrackerPayload data) {
        this.TAG = SelfDescribingJson.class.getSimpleName();
        this.payload = new HashMap<>();
        setSchema(schema);
        setData(data);
    }

    public SelfDescribingJson(String schema, SelfDescribingJson data) {
        this.TAG = SelfDescribingJson.class.getSimpleName();
        this.payload = new HashMap<>();
        setSchema(schema);
        setData(data);
    }

    public SelfDescribingJson(String schema, Object data) {
        this.TAG = SelfDescribingJson.class.getSimpleName();
        this.payload = new HashMap<>();
        setSchema(schema);
        setData(data);
    }

    public SelfDescribingJson setSchema(String schema) {
        Preconditions.checkNotNull(schema, "schema cannot be null");
        Preconditions.checkArgument(!schema.isEmpty(), "schema cannot be empty.");
        this.payload.put(Parameters.SCHEMA, schema);
        return this;
    }

    public SelfDescribingJson setData(TrackerPayload trackerPayload) {
        if (trackerPayload == null) {
            return this;
        }
        this.payload.put(Parameters.DATA, trackerPayload.getMap());
        return this;
    }

    public SelfDescribingJson setData(Object data) {
        if (data == null) {
            return this;
        }
        this.payload.put(Parameters.DATA, data);
        return this;
    }

    public SelfDescribingJson setData(SelfDescribingJson selfDescribingJson) {
        if (selfDescribingJson == null) {
            return this;
        }
        this.payload.put(Parameters.DATA, selfDescribingJson.getMap());
        return this;
    }

    @Override // com.snowplowanalytics.snowplow.tracker.payload.Payload
    @Deprecated
    public void add(String key, String value) {
        Logger.v(this.TAG, "Payload: add(String, String) method called - Doing nothing.", new Object[0]);
    }

    @Override // com.snowplowanalytics.snowplow.tracker.payload.Payload
    @Deprecated
    public void add(String key, Object value) {
        Logger.v(this.TAG, "Payload: add(String, Object) method called - Doing nothing.", new Object[0]);
    }

    @Override // com.snowplowanalytics.snowplow.tracker.payload.Payload
    @Deprecated
    public void addMap(Map<String, Object> map) {
        Logger.v(this.TAG, "Payload: addMap(Map<String, Object>) method called - Doing nothing.", new Object[0]);
    }

    @Override // com.snowplowanalytics.snowplow.tracker.payload.Payload
    @Deprecated
    public void addMap(Map map, Boolean base64_encoded, String type_encoded, String type_no_encoded) {
        Logger.v(this.TAG, "Payload: addMap(Map, Boolean, String, String) method called - Doing nothing.", new Object[0]);
    }

    @Override // com.snowplowanalytics.snowplow.tracker.payload.Payload
    public Map<String, Object> getMap() {
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
