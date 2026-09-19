package com.snowplowanalytics.snowplow.tracker.events;

import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import com.snowplowanalytics.snowplow.tracker.payload.Payload;
import com.snowplowanalytics.snowplow.tracker.payload.SelfDescribingJson;
import com.snowplowanalytics.snowplow.tracker.payload.TrackerPayload;
import com.snowplowanalytics.snowplow.tracker.utils.Preconditions;
import com.snowplowanalytics.snowplow.tracker.utils.Util;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractEvent implements Event {
    private final List<SelfDescribingJson> context;
    protected long deviceCreatedTimestamp;
    private final String eventId;
    private Long trueTimestamp;

    @Override // com.snowplowanalytics.snowplow.tracker.events.Event
    public abstract Payload getPayload();

    public static abstract class Builder<T extends Builder<T>> {
        private List<SelfDescribingJson> context = new LinkedList();
        private String eventId = Util.getEventId();
        private long deviceCreatedTimestamp = System.currentTimeMillis();
        private Long trueTimestamp = null;

        protected abstract T self();

        public T customContext(List<SelfDescribingJson> list) {
            this.context = list;
            return (T) self();
        }

        public T eventId(String str) {
            this.eventId = str;
            return (T) self();
        }

        @Deprecated
        public T timestamp(long j) {
            this.deviceCreatedTimestamp = j;
            return (T) self();
        }

        public T deviceCreatedTimestamp(long j) {
            this.deviceCreatedTimestamp = j;
            return (T) self();
        }

        public T trueTimestamp(long j) {
            this.trueTimestamp = Long.valueOf(j);
            return (T) self();
        }
    }

    AbstractEvent(Builder<?> builder) {
        Preconditions.checkNotNull(((Builder) builder).context);
        Preconditions.checkNotNull(((Builder) builder).eventId);
        Preconditions.checkArgument(!((Builder) builder).eventId.isEmpty(), "eventId cannot be empty");
        this.context = ((Builder) builder).context;
        this.deviceCreatedTimestamp = ((Builder) builder).deviceCreatedTimestamp;
        this.trueTimestamp = ((Builder) builder).trueTimestamp;
        this.eventId = ((Builder) builder).eventId;
    }

    @Override // com.snowplowanalytics.snowplow.tracker.events.Event
    public List<SelfDescribingJson> getContext() {
        return new ArrayList(this.context);
    }

    @Override // com.snowplowanalytics.snowplow.tracker.events.Event
    public long getDeviceCreatedTimestamp() {
        return this.deviceCreatedTimestamp;
    }

    @Override // com.snowplowanalytics.snowplow.tracker.events.Event
    public long getTrueTimestamp() {
        return this.trueTimestamp.longValue();
    }

    @Override // com.snowplowanalytics.snowplow.tracker.events.Event
    public String getEventId() {
        return this.eventId;
    }

    TrackerPayload putDefaultParams(TrackerPayload payload) {
        payload.add(Parameters.EID, getEventId());
        payload.add("dtm", Long.toString(getDeviceCreatedTimestamp()));
        if (this.trueTimestamp != null) {
            payload.add(Parameters.TRUE_TIMESTAMP, Long.toString(getTrueTimestamp()));
        }
        return payload;
    }
}
