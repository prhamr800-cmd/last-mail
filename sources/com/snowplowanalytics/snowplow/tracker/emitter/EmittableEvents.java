package com.snowplowanalytics.snowplow.tracker.emitter;

import com.snowplowanalytics.snowplow.tracker.payload.Payload;
import java.util.ArrayList;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class EmittableEvents {
    private final LinkedList<Long> eventIds;
    private final ArrayList<Payload> events;

    public EmittableEvents(ArrayList<Payload> events, LinkedList<Long> eventIds) {
        this.events = events;
        this.eventIds = eventIds;
    }

    public ArrayList<Payload> getEvents() {
        return this.events;
    }

    public LinkedList<Long> getEventIds() {
        return this.eventIds;
    }
}
