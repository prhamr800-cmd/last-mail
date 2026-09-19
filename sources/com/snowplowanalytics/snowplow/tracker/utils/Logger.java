package com.snowplowanalytics.snowplow.tracker.utils;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class Logger {
    private static int level = 0;

    public static void e(String tag, String msg, Object... args) {
        if (level >= 1) {
            Log.e(getTag(tag), getMessage(msg, args));
        }
    }

    public static void d(String tag, String msg, Object... args) {
        if (level >= 2) {
            Log.d(getTag(tag), getMessage(msg, args));
        }
    }

    public static void v(String tag, String msg, Object... args) {
        if (level >= 3) {
            Log.v(getTag(tag), getMessage(msg, args));
        }
    }

    private static String getMessage(String msg, Object... args) {
        return getThread() + "|" + String.format(msg, args);
    }

    private static String getTag(String tag) {
        return "SnowplowTracker->" + tag;
    }

    private static String getThread() {
        return Thread.currentThread().getName();
    }

    public static void updateLogLevel(LogLevel newLevel) {
        level = newLevel.getLevel();
    }
}
