package com.snowplowanalytics.snowplow.tracker.emitter;

import java.util.LinkedList;
import okhttp3.Request;

/* JADX INFO: loaded from: classes2.dex */
public class ReadyRequest {
    private final LinkedList<Long> ids;
    private final boolean oversize;
    private final Request request;

    public ReadyRequest(boolean oversize, Request request, LinkedList<Long> ids) {
        this.oversize = oversize;
        this.request = request;
        this.ids = ids;
    }

    public Request getRequest() {
        return this.request;
    }

    public LinkedList<Long> getEventIds() {
        return this.ids;
    }

    public boolean isOversize() {
        return this.oversize;
    }
}
