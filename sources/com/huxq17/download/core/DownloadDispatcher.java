package com.huxq17.download.core;

import android.content.Context;
import android.os.Environment;
import android.text.format.Formatter;
import com.huxq17.download.ErrorCode;
import com.huxq17.download.PumpFactory;
import com.huxq17.download.TaskManager;
import com.huxq17.download.core.DownloadInfo;
import com.huxq17.download.core.service.IDownloadConfigService;
import com.huxq17.download.core.service.IDownloadManager;
import com.huxq17.download.core.service.IMessageCenter;
import com.huxq17.download.core.task.DownloadTask;
import com.huxq17.download.core.task.Task;
import com.huxq17.download.db.DBService;
import com.huxq17.download.utils.LogUtil;
import com.huxq17.download.utils.Util;
import java.io.File;
import java.util.HashSet;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadDispatcher extends Task {
    private DownloadTaskExecutor defaultTaskExecutor;
    private DownloadInfoManager downloadInfoManager;
    private DownloadManager downloadManager;
    private AtomicBoolean isRunning = new AtomicBoolean();
    private AtomicBoolean isCanceled = new AtomicBoolean();
    private final ConcurrentLinkedQueue<DownloadRequest> requestQueue = new ConcurrentLinkedQueue<>();
    private Lock lock = new ReentrantLock();
    private Condition consumer = this.lock.newCondition();
    private HashSet<DownloadTaskExecutor> downloadTaskExecutors = new HashSet<>(1);

    DownloadDispatcher(DownloadManager downloadManager) {
        this.downloadManager = downloadManager;
    }

    public synchronized void start() {
        if (isRunning()) {
            return;
        }
        this.isRunning.set(true);
        this.isCanceled.set(false);
        TaskManager.execute((Task) this);
        this.downloadInfoManager = DownloadInfoManager.getInstance();
        this.defaultTaskExecutor = new SimpleDownloadTaskExecutor();
    }

    void enqueueRequest(DownloadRequest downloadRequest) {
        start();
        if (isRunning()) {
            if (!this.requestQueue.contains(downloadRequest)) {
                this.requestQueue.add(downloadRequest);
                signalConsumer();
            } else {
                printExistRequestWarning(downloadRequest);
            }
        }
    }

    void consumeRequest() {
        waitForConsumer();
        DownloadRequest downloadRequest = this.requestQueue.poll();
        DownloadTask downloadTask = null;
        if (downloadRequest != null) {
            if (!this.downloadManager.isTaskRunning(downloadRequest.getId())) {
                downloadTask = createTaskFromRequest(downloadRequest);
            } else {
                printExistRequestWarning(downloadRequest);
            }
        }
        if (downloadTask != null) {
            DownloadTaskExecutor downloadTaskExecutor = downloadTask.getRequest().getDownloadExecutor();
            if (downloadTaskExecutor == null) {
                downloadTaskExecutor = this.defaultTaskExecutor;
            }
            if (!this.downloadTaskExecutors.contains(downloadTaskExecutor)) {
                downloadTaskExecutor.init();
                this.downloadTaskExecutors.add(downloadTaskExecutor);
            }
            downloadTaskExecutor.execute(downloadTask);
        }
    }

    @Override // com.huxq17.download.core.task.Task
    public void execute() {
        while (isRunnable()) {
            consumeRequest();
        }
        this.isRunning.set(false);
    }

    public boolean isRunning() {
        return this.isRunning.get();
    }

    void setIsRunning(boolean isRunning) {
        this.isRunning.set(isRunning);
    }

    @Override // com.huxq17.download.core.task.Task
    public synchronized void cancel() {
        this.isCanceled.set(true);
        signalConsumer();
        this.downloadTaskExecutors.clear();
        if (this.defaultTaskExecutor != null) {
            this.defaultTaskExecutor.shutdown();
        }
    }

    boolean isBlockForConsumeRequest() {
        return this.requestQueue.isEmpty() && isRunnable();
    }

    void waitForConsumer() {
        this.lock.lock();
        while (isBlockForConsumeRequest()) {
            try {
                try {
                    this.consumer.await();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            } finally {
                this.lock.unlock();
            }
        }
    }

    boolean isRunnable() {
        return isRunning() && !this.isCanceled.get();
    }

    void signalConsumer() {
        this.lock.lock();
        try {
            this.consumer.signal();
        } finally {
            this.lock.unlock();
        }
    }

    void printExistRequestWarning(DownloadRequest request) {
        LogUtil.w("task " + request.getName() + " already enqueue,we need do nothing.");
    }

    DownloadTask createTaskFromRequest(DownloadRequest downloadRequest) {
        String url = downloadRequest.getUrl();
        String id = downloadRequest.getId();
        String tag = downloadRequest.getTag();
        String filePath = downloadRequest.getFilePath();
        if (!isUsableSpaceEnough(downloadRequest)) {
            return null;
        }
        DownloadDetailsInfo downloadInfo = downloadRequest.getDownloadInfo();
        if (downloadInfo == null) {
            downloadInfo = createDownloadInfo(id, url, filePath, tag);
            downloadRequest.setDownloadInfo(downloadInfo);
        }
        if (downloadInfo.getFilePath() != null && downloadRequest.getFilePath() == null) {
            downloadRequest.setFilePath(downloadInfo.getFilePath());
        }
        downloadInfo.setDownloadRequest(downloadRequest);
        downloadInfo.setStatus(DownloadInfo.Status.STOPPED);
        return new DownloadTask(downloadRequest);
    }

    boolean isUsableSpaceEnough(DownloadRequest downloadRequest) {
        long downloadDirUsableSpace;
        String filePath = downloadRequest.getFilePath();
        if (filePath == null) {
            downloadDirUsableSpace = Util.getUsableSpace(new File(Util.getCachePath(((IDownloadManager) PumpFactory.getService(IDownloadManager.class)).getContext())));
        } else {
            downloadDirUsableSpace = Util.getUsableSpace(new File(filePath));
        }
        long downloadDirUsableSpace2 = downloadDirUsableSpace;
        long dataFileUsableSpace = Util.getUsableSpace(Environment.getDataDirectory());
        long minUsableStorageSpace = getMinUsableStorageSpace();
        if (downloadDirUsableSpace2 <= minUsableStorageSpace || dataFileUsableSpace <= minUsableStorageSpace) {
            Context context = ((IDownloadManager) PumpFactory.getService(IDownloadManager.class)).getContext();
            String dataFileAvailableSize = Formatter.formatFileSize(context, dataFileUsableSpace);
            String downloadFileAvailableSize = Formatter.formatFileSize(context, downloadDirUsableSpace2);
            LogUtil.e("Data directory usable space is " + dataFileAvailableSize + " and download directory usable space is " + downloadFileAvailableSize);
            DownloadDetailsInfo downloadInfo = this.downloadInfoManager.createDownloadInfo(downloadRequest.getUrl(), filePath, downloadRequest.getTag(), downloadRequest.getId(), System.currentTimeMillis(), false);
            downloadInfo.setErrorCode(ErrorCode.ERROR_USABLE_SPACE_NOT_ENOUGH);
            ((IMessageCenter) PumpFactory.getService(IMessageCenter.class)).notifyProgressChanged(downloadInfo);
            return false;
        }
        return true;
    }

    long getMinUsableStorageSpace() {
        return ((IDownloadConfigService) PumpFactory.getService(IDownloadConfigService.class)).getMinUsableSpace();
    }

    DownloadDetailsInfo createDownloadInfo(String id, String url, String filePath, String tag) {
        DownloadDetailsInfo downloadInfo = DBService.getInstance().getDownloadInfo(id);
        if (downloadInfo != null) {
            return downloadInfo;
        }
        DownloadDetailsInfo downloadInfo2 = this.downloadInfoManager.createDownloadInfo(url, filePath, tag, id, System.currentTimeMillis());
        DBService.getInstance().updateInfo(downloadInfo2);
        return downloadInfo2;
    }
}
