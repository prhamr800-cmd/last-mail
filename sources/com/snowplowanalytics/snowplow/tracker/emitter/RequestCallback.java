package com.snowplowanalytics.snowplow.tracker.emitter;

/* JADX INFO: loaded from: classes2.dex */
public interface RequestCallback {
    void onFailure(int i, int i2);

    void onSuccess(int i);
}
