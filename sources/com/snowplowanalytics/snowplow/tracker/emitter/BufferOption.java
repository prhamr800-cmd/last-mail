package com.snowplowanalytics.snowplow.tracker.emitter;

/* JADX INFO: loaded from: classes2.dex */
public enum BufferOption {
    Single(1),
    DefaultGroup(10),
    HeavyGroup(25);

    private int code;

    BufferOption(int c) {
        this.code = c;
    }

    public int getCode() {
        return this.code;
    }
}
