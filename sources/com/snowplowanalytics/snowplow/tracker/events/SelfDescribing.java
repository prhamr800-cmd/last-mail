package com.snowplowanalytics.snowplow.tracker.events;

import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import com.snowplowanalytics.snowplow.tracker.constants.TrackerConstants;
import com.snowplowanalytics.snowplow.tracker.events.AbstractEvent;
import com.snowplowanalytics.snowplow.tracker.payload.SelfDescribingJson;
import com.snowplowanalytics.snowplow.tracker.payload.TrackerPayload;
import com.snowplowanalytics.snowplow.tracker.utils.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public class SelfDescribing extends AbstractEvent {
    private boolean base64Encode;
    private final SelfDescribingJson eventData;

    public static abstract class Builder<T extends Builder<T>> extends AbstractEvent.Builder<T> {
        private SelfDescribingJson eventData;

        public T eventData(SelfDescribingJson eventData) {
            this.eventData = eventData;
            return self();
        }

        public SelfDescribing build() {
            return new SelfDescribing(this);
        }
    }

    private static class Builder2 extends Builder<Builder2> {
        private Builder2() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.snowplowanalytics.snowplow.tracker.events.AbstractEvent.Builder
        public Builder2 self() {
            return this;
        }
    }

    public static Builder<?> builder() {
        return new Builder2();
    }

    protected SelfDescribing(Builder<?> builder) {
        super(builder);
        Preconditions.checkNotNull(((Builder) builder).eventData);
        this.eventData = ((Builder) builder).eventData;
    }

    public void setBase64Encode(boolean base64Encode) {
        this.base64Encode = base64Encode;
    }

    @Override // com.snowplowanalytics.snowplow.tracker.events.AbstractEvent, com.snowplowanalytics.snowplow.tracker.events.Event
    public TrackerPayload getPayload() {
        TrackerPayload payload = new TrackerPayload();
        SelfDescribingJson envelope = new SelfDescribingJson(TrackerConstants.SCHEMA_UNSTRUCT_EVENT, this.eventData.getMap());
        payload.add(Parameters.EVENT, TrackerConstants.EVENT_UNSTRUCTURED);
        payload.addMap(envelope.getMap(), Boolean.valueOf(this.base64Encode), Parameters.UNSTRUCTURED_ENCODED, Parameters.UNSTRUCTURED);
        return putDefaultParams(payload);
    }
}
