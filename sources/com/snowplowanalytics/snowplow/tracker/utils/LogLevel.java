package com.snowplowanalytics.snowplow.tracker.utils;

/* JADX INFO: loaded from: classes2.dex */
public enum LogLevel {
    OFF(0),
    ERROR(1),
    DEBUG(2),
    VERBOSE(3);

    private int level;

    LogLevel(int c) {
        this.level = c;
    }

    public int getLevel() {
        return this.level;
    }
}
