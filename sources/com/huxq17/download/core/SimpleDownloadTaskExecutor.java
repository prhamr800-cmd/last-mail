package com.huxq17.download.core;

import com.huxq17.download.PumpFactory;
import com.huxq17.download.core.service.IDownloadConfigService;
import com.huxq17.download.core.task.DownloadTask;
import com.huxq17.download.utils.LogUtil;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class SimpleDownloadTaskExecutor extends ThreadPoolExecutor implements DownloadTaskExecutor {
    private static final int DEFAULT_THREAD_COUNT = 3;
    private ConcurrentHashMap<String, Long> countTimeMap;

    public SimpleDownloadTaskExecutor() {
        super(3, 3, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new DownloadRejectedExecutionHandler());
        this.countTimeMap = new ConcurrentHashMap<>();
        allowCoreThreadTimeOut(true);
    }

    @Override // com.huxq17.download.core.DownloadTaskExecutor
    public void init() {
        setCorePoolSize(getSafeThreadCount());
        setMaximumPoolSize(getSafeThreadCount());
        setThreadFactory(new DownloadDisPatcherThreadFactory());
    }

    @Override // com.huxq17.download.core.DownloadTaskExecutor
    public void execute(DownloadTask downloadTask) {
        if (downloadTask == null) {
            throw new NullPointerException();
        }
        super.execute((Runnable) downloadTask);
        LogUtil.d("Task " + downloadTask.getName() + " is ready.");
        if (getQueue().size() + getActiveCount() > getMaxDownloadNumber()) {
            String printName = getSafeName();
            LogUtil.w(printName + " only " + getMaxDownloadNumber() + " tasks can be run at the same time;but " + getActiveCount() + " tasks have been run,so " + downloadTask.getName() + " is waiting.");
        }
    }

    private int getSafeThreadCount() {
        if (getMaxDownloadNumber() <= 0) {
            return 3;
        }
        return getMaxDownloadNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getSafeName() {
        String name = getName();
        return (name == null || name.length() <= 0) ? toString() : name;
    }

    private void checkIsDownloadTask(Runnable runnable) {
        if (!(runnable instanceof DownloadTask)) {
            throw new IllegalArgumentException("Only DownloadTask Can be executed.but execute " + runnable.getClass().getCanonicalName());
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected final void beforeExecute(Thread t, Runnable r) {
        checkIsDownloadTask(r);
        DownloadTask downloadTask = (DownloadTask) r;
        LogUtil.d("start run " + downloadTask.getName() + " at thread name=" + t.getName());
        this.countTimeMap.put(downloadTask.getId(), Long.valueOf(System.currentTimeMillis()));
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected final void afterExecute(Runnable r, Throwable t) {
        checkIsDownloadTask(r);
        DownloadTask downloadTask = (DownloadTask) r;
        Long startTime = this.countTimeMap.remove(downloadTask.getId());
        if (startTime != null) {
            LogUtil.d("download " + downloadTask.getName() + " is stopped,and spend=" + (System.currentTimeMillis() - startTime.longValue()));
        }
    }

    @Override // com.huxq17.download.core.DownloadTaskExecutor
    public int getMaxDownloadNumber() {
        return ((IDownloadConfigService) PumpFactory.getService(IDownloadConfigService.class)).getMaxRunningTaskNumber();
    }

    @Override // com.huxq17.download.core.DownloadTaskExecutor
    public String getName() {
        return "SimpleDownloadTaskExecutor";
    }

    @Override // com.huxq17.download.core.DownloadTaskExecutor
    public String getTag() {
        return null;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService, com.huxq17.download.core.DownloadTaskExecutor
    public void shutdown() {
        shutdownNow();
    }

    private class DownloadDisPatcherThreadFactory implements ThreadFactory {
        private AtomicInteger count;

        private DownloadDisPatcherThreadFactory() {
            this.count = new AtomicInteger(0);
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable r) {
            Thread t = new Thread(r);
            String threadName = SimpleDownloadTaskExecutor.this.getSafeName() + "-thread-" + this.count.addAndGet(1);
            t.setName(threadName);
            return t;
        }
    }

    private static class DownloadRejectedExecutionHandler implements RejectedExecutionHandler {
        private DownloadRejectedExecutionHandler() {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable r, ThreadPoolExecutor executor) {
            if (executor.isShutdown()) {
                return;
            }
            executor.getQueue().offer(r);
        }
    }
}
