package com.snowplowanalytics.snowplow.tracker.events;

import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import com.snowplowanalytics.snowplow.tracker.constants.TrackerConstants;
import com.snowplowanalytics.snowplow.tracker.events.AbstractEvent;
import com.snowplowanalytics.snowplow.tracker.payload.TrackerPayload;
import com.snowplowanalytics.snowplow.tracker.utils.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public class Structured extends AbstractEvent {
    private final String action;
    private final String category;
    private final String label;
    private final String property;
    private final Double value;

    public static abstract class Builder<T extends Builder<T>> extends AbstractEvent.Builder<T> {
        private String action;
        private String category;
        private String label;
        private String property;
        private Double value;

        public T category(String category) {
            this.category = category;
            return self();
        }

        public T action(String action) {
            this.action = action;
            return self();
        }

        public T label(String label) {
            this.label = label;
            return self();
        }

        public T property(String property) {
            this.property = property;
            return self();
        }

        public T value(Double value) {
            this.value = value;
            return self();
        }

        public Structured build() {
            return new Structured(this);
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

    protected Structured(Builder<?> builder) {
        super(builder);
        Preconditions.checkNotNull(((Builder) builder).category);
        Preconditions.checkNotNull(((Builder) builder).action);
        Preconditions.checkArgument(!((Builder) builder).category.isEmpty(), "category cannot be empty");
        Preconditions.checkArgument(!((Builder) builder).action.isEmpty(), "action cannot be empty");
        this.category = ((Builder) builder).category;
        this.action = ((Builder) builder).action;
        this.label = ((Builder) builder).label;
        this.property = ((Builder) builder).property;
        this.value = ((Builder) builder).value;
    }

    @Override // com.snowplowanalytics.snowplow.tracker.events.AbstractEvent, com.snowplowanalytics.snowplow.tracker.events.Event
    public TrackerPayload getPayload() {
        TrackerPayload payload = new TrackerPayload();
        payload.add(Parameters.EVENT, TrackerConstants.EVENT_STRUCTURED);
        payload.add(Parameters.SE_CATEGORY, this.category);
        payload.add(Parameters.SE_ACTION, this.action);
        payload.add(Parameters.SE_LABEL, this.label);
        payload.add(Parameters.SE_PROPERTY, this.property);
        payload.add(Parameters.SE_VALUE, this.value != null ? Double.toString(this.value.doubleValue()) : null);
        return putDefaultParams(payload);
    }
}
