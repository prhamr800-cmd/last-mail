package com.snowplowanalytics.snowplow.tracker.events;

import com.snowplowanalytics.snowplow.tracker.payload.Payload;
import com.snowplowanalytics.snowplow.tracker.payload.SelfDescribingJson;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface Event {
    List<SelfDescribingJson> getContext();

    long getDeviceCreatedTimestamp();

    String getEventId();

    Payload getPayload();

    long getTrueTimestamp();
}
