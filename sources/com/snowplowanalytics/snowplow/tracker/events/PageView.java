package com.snowplowanalytics.snowplow.tracker.events;

import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import com.snowplowanalytics.snowplow.tracker.constants.TrackerConstants;
import com.snowplowanalytics.snowplow.tracker.events.AbstractEvent;
import com.snowplowanalytics.snowplow.tracker.payload.TrackerPayload;
import com.snowplowanalytics.snowplow.tracker.utils.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public class PageView extends AbstractEvent {
    private final String pageTitle;
    private final String pageUrl;
    private final String referrer;

    public static abstract class Builder<T extends Builder<T>> extends AbstractEvent.Builder<T> {
        private String pageTitle;
        private String pageUrl;
        private String referrer;

        public T pageUrl(String pageUrl) {
            this.pageUrl = pageUrl;
            return self();
        }

        public T pageTitle(String pageTitle) {
            this.pageTitle = pageTitle;
            return self();
        }

        public T referrer(String referrer) {
            this.referrer = referrer;
            return self();
        }

        public PageView build() {
            return new PageView(this);
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

    protected PageView(Builder<?> builder) {
        super(builder);
        Preconditions.checkNotNull(((Builder) builder).pageUrl);
        Preconditions.checkArgument(!((Builder) builder).pageUrl.isEmpty(), "pageUrl cannot be empty");
        this.pageUrl = ((Builder) builder).pageUrl;
        this.pageTitle = ((Builder) builder).pageTitle;
        this.referrer = ((Builder) builder).referrer;
    }

    @Override // com.snowplowanalytics.snowplow.tracker.events.AbstractEvent, com.snowplowanalytics.snowplow.tracker.events.Event
    public TrackerPayload getPayload() {
        TrackerPayload payload = new TrackerPayload();
        payload.add(Parameters.EVENT, TrackerConstants.EVENT_PAGE_VIEW);
        payload.add("url", this.pageUrl);
        payload.add(Parameters.PAGE_TITLE, this.pageTitle);
        payload.add(Parameters.PAGE_REFR, this.referrer);
        return putDefaultParams(payload);
    }
}
