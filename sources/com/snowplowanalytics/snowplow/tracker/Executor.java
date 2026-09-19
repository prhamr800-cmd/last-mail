package com.snowplowanalytics.snowplow.tracker;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes2.dex */
public class Executor {
    private static ExecutorService executor;
    private static int threadCount = 2;

    private static synchronized ExecutorService getExecutor() {
        if (executor == null) {
            executor = Executors.newScheduledThreadPool(threadCount);
        }
        return executor;
    }

    public static void execute(Runnable runnable) {
        getExecutor().execute(runnable);
    }

    public static Future futureCallable(Callable callable) {
        return getExecutor().submit(callable);
    }

    public static void shutdown() {
        if (executor != null) {
            executor.shutdown();
            executor = null;
        }
    }

    public static void setThreadCount(int count) {
        threadCount = count;
    }
}
