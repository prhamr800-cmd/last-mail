package com.snowplowanalytics.snowplow.tracker.events;

import com.snowplowanalytics.snowplow.tracker.constants.TrackerConstants;
import com.snowplowanalytics.snowplow.tracker.events.AbstractEvent;
import com.snowplowanalytics.snowplow.tracker.payload.SelfDescribingJson;
import com.snowplowanalytics.snowplow.tracker.payload.TrackerPayload;
import com.snowplowanalytics.snowplow.tracker.utils.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenView extends AbstractEvent {
    private final String id;
    private final String name;

    public static abstract class Builder<T extends Builder<T>> extends AbstractEvent.Builder<T> {
        private String id;
        private String name;

        public T name(String name) {
            this.name = name;
            return self();
        }

        public T id(String id) {
            this.id = id;
            return self();
        }

        public ScreenView build() {
            return new ScreenView(this);
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

    protected ScreenView(Builder<?> builder) {
        super(builder);
        Preconditions.checkArgument((((Builder) builder).name == null && ((Builder) builder).id == null) ? false : true);
        this.name = ((Builder) builder).name;
        this.id = ((Builder) builder).id;
    }

    public TrackerPayload getData() {
        TrackerPayload payload = new TrackerPayload();
        payload.add("name", this.name);
        payload.add("id", this.id);
        return payload;
    }

    @Override // com.snowplowanalytics.snowplow.tracker.events.AbstractEvent, com.snowplowanalytics.snowplow.tracker.events.Event
    public SelfDescribingJson getPayload() {
        return new SelfDescribingJson(TrackerConstants.SCHEMA_SCREEN_VIEW, getData());
    }
}
