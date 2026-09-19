package com.snowplowanalytics.snowplow.tracker.events;

import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import com.snowplowanalytics.snowplow.tracker.constants.TrackerConstants;
import com.snowplowanalytics.snowplow.tracker.events.AbstractEvent;
import com.snowplowanalytics.snowplow.tracker.payload.SelfDescribingJson;
import com.snowplowanalytics.snowplow.tracker.utils.Preconditions;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class Timing extends AbstractEvent {
    private final String category;
    private final String label;
    private final Integer timing;
    private final String variable;

    public static abstract class Builder<T extends Builder<T>> extends AbstractEvent.Builder<T> {
        private String category;
        private String label;
        private Integer timing;
        private String variable;

        public T category(String category) {
            this.category = category;
            return self();
        }

        public T variable(String variable) {
            this.variable = variable;
            return self();
        }

        public T timing(Integer timing) {
            this.timing = timing;
            return self();
        }

        public T label(String label) {
            this.label = label;
            return self();
        }

        public Timing build() {
            return new Timing(this);
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

    protected Timing(Builder<?> builder) {
        super(builder);
        Preconditions.checkNotNull(((Builder) builder).category);
        Preconditions.checkNotNull(((Builder) builder).timing);
        Preconditions.checkNotNull(((Builder) builder).variable);
        Preconditions.checkArgument(!((Builder) builder).category.isEmpty(), "category cannot be empty");
        Preconditions.checkArgument(!((Builder) builder).variable.isEmpty(), "variable cannot be empty");
        this.category = ((Builder) builder).category;
        this.variable = ((Builder) builder).variable;
        this.label = ((Builder) builder).label;
        this.timing = ((Builder) builder).timing;
    }

    public HashMap<String, Object> getData() {
        HashMap<String, Object> payload = new HashMap<>();
        payload.put(Parameters.UT_CATEGORY, this.category);
        payload.put(Parameters.UT_VARIABLE, this.variable);
        payload.put(Parameters.UT_TIMING, this.timing);
        if (this.label != null && !this.label.isEmpty()) {
            payload.put(Parameters.UT_LABEL, this.label);
        }
        return payload;
    }

    @Override // com.snowplowanalytics.snowplow.tracker.events.AbstractEvent, com.snowplowanalytics.snowplow.tracker.events.Event
    public SelfDescribingJson getPayload() {
        return new SelfDescribingJson(TrackerConstants.SCHEMA_USER_TIMINGS, getData());
    }
}
