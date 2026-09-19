package com.huxq17.download;

import android.os.Handler;
import android.os.Looper;
import com.huxq17.download.core.task.Task;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes2.dex */
public class TaskManager {
    private static ExecutorService customThreadPool;
    private static final ExecutorService defaultThreadPool = Executors.newCachedThreadPool();
    private static final Handler mUiHandler = new Handler(Looper.getMainLooper());

    public static void execute(Task runnable) {
        getExecutorService().execute(runnable);
    }

    public static void execute(Runnable runnable) {
        getExecutorService().execute(runnable);
    }

    public static void executeOnMainThread(Runnable runnable) {
        mUiHandler.post(runnable);
    }

    public static void executeOnMainThread(Runnable runnable, long delay) {
        mUiHandler.postDelayed(runnable, delay);
    }

    public static Future<?> submit(Callable task) {
        return getExecutorService().submit(task);
    }

    public static Future<?> submit(Runnable task) {
        return getExecutorService().submit(task);
    }

    public static void setThreadPool(ExecutorService customThreadPool2) {
        customThreadPool = customThreadPool2;
    }

    public static void useDefaultThreadPool() {
        customThreadPool = null;
    }

    static ExecutorService getExecutorService() {
        if (customThreadPool == null) {
            return defaultThreadPool;
        }
        return customThreadPool;
    }
}
