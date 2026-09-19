package com.huxq17.download.core;

import android.content.Context;
import android.text.TextUtils;
import com.huxq17.download.DownloadInfoSnapshot;
import com.huxq17.download.callback.Filter;
import com.huxq17.download.core.DownloadInfo;
import com.huxq17.download.core.service.IDownloadManager;
import com.huxq17.download.core.task.DownloadTask;
import com.huxq17.download.db.DBService;
import com.huxq17.download.utils.LogUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadManager implements IDownloadManager {
    private Context context;
    private volatile boolean hasFetchDownloadList;
    private DownloadInfoManager downloadInfoManager = DownloadInfoManager.getInstance();
    private DownloadDispatcher downloadDispatcher = new DownloadDispatcher(this);

    private DownloadManager() {
    }

    @Override // com.huxq17.download.core.service.IDownloadManager
    public void start(Context context) {
        this.context = context;
    }

    @Override // com.huxq17.download.core.service.IDownloadManager
    public void submit(DownloadRequest downloadRequest) {
        String id = downloadRequest.getId();
        if (isTaskRunning(id)) {
            LogUtil.e("task " + downloadRequest.getName() + " is running,we need do nothing.");
            return;
        }
        DownloadDetailsInfo downloadInfo = this.downloadInfoManager.get(id);
        if (downloadInfo != null) {
            downloadRequest.setDownloadInfo(downloadInfo);
        }
        this.downloadDispatcher.enqueueRequest(downloadRequest);
    }

    @Override // com.huxq17.download.core.service.IDownloadManager
    public void deleteById(String id) {
        if (TextUtils.isEmpty(id)) {
            throw new IllegalArgumentException("Id is empty.");
        }
        DownloadTask downloadTask = getDownloadTaskById(id);
        if (downloadTask != null) {
            synchronized (downloadTask.getLock()) {
                downloadTask.cancel();
                deleteDownloadInfo(downloadTask.getDownloadInfo());
            }
            return;
        }
        DownloadDetailsInfo downloadInfo = this.downloadInfoManager.get(id);
        if (downloadInfo == null) {
            downloadInfo = DBService.getInstance().getDownloadInfo(id);
        }
        deleteDownloadInfo(downloadInfo);
    }

    private void deleteDownloadInfo(DownloadDetailsInfo downloadInfo) {
        if (downloadInfo != null) {
            downloadInfo.setStatus(DownloadInfo.Status.DELETED);
            this.downloadInfoManager.remove(downloadInfo.getId());
            downloadInfo.deleteTempDir();
            downloadInfo.deleteDownloadFile();
            DBService.getInstance().deleteInfo(downloadInfo.getId());
        }
    }

    @Override // com.huxq17.download.core.service.IDownloadManager
    public void deleteByTag(String tag) {
        List<DownloadInfo> tasks = getDownloadListByTag(tag);
        for (DownloadInfo info : tasks) {
            deleteById(info.getId());
        }
    }

    @Override // com.huxq17.download.core.service.IDownloadManager
    public void stop(String id) {
        checkId(id);
        DownloadTask downloadTask = getDownloadTaskById(id);
        if (downloadTask != null) {
            downloadTask.stop();
        }
    }

    @Override // com.huxq17.download.core.service.IDownloadManager
    public void pause(String id) {
        checkId(id);
        DownloadTask downloadTask = getDownloadTaskById(id);
        if (downloadTask != null) {
            downloadTask.pause();
        }
    }

    private void checkId(String id) {
        if (id == null || id.length() == 0) {
            throw new IllegalArgumentException("id is empty.");
        }
    }

    @Override // com.huxq17.download.core.service.IDownloadManager
    public void resume(String id) {
        checkId(id);
        DownloadDetailsInfo transferInfo = this.downloadInfoManager.get(id);
        if (transferInfo == null) {
            return;
        }
        DownloadRequest downloadRequest = transferInfo.getDownloadRequest();
        if (downloadRequest != null) {
            submit(downloadRequest);
        } else {
            DownloadRequest.newRequest(transferInfo.getUrl(), transferInfo.getFilePath()).submit();
        }
    }

    @Override // com.huxq17.download.core.service.IDownloadManager
    public List<DownloadInfo> getDownloadingList() {
        return getDownloadList(new Filter<DownloadDetailsInfo>() { // from class: com.huxq17.download.core.DownloadManager.1
            @Override // com.huxq17.download.callback.Filter
            public boolean filter(DownloadDetailsInfo downloadDetailsInfo) {
                return !downloadDetailsInfo.isFinished();
            }
        });
    }

    @Override // com.huxq17.download.core.service.IDownloadManager
    public List<DownloadInfo> getDownloadedList() {
        return getDownloadList(new Filter<DownloadDetailsInfo>() { // from class: com.huxq17.download.core.DownloadManager.2
            @Override // com.huxq17.download.callback.Filter
            public boolean filter(DownloadDetailsInfo downloadDetailsInfo) {
                return downloadDetailsInfo.isFinished();
            }
        });
    }

    @Override // com.huxq17.download.core.service.IDownloadManager
    public List<DownloadInfo> getDownloadListByTag(final String tag) {
        return getDownloadList(new Filter<DownloadDetailsInfo>() { // from class: com.huxq17.download.core.DownloadManager.3
            @Override // com.huxq17.download.callback.Filter
            public boolean filter(DownloadDetailsInfo downloadDetailsInfo) {
                return downloadDetailsInfo.getTag().equals(tag);
            }
        });
    }

    @Override // com.huxq17.download.core.service.IDownloadManager
    public List<DownloadInfo> getAllDownloadList() {
        return getDownloadList(null);
    }

    private List<DownloadInfo> getDownloadList(Filter<DownloadDetailsInfo> filter) {
        List<DownloadInfo> downloadList = new ArrayList<>();
        if (!this.hasFetchDownloadList) {
            this.hasFetchDownloadList = true;
            List<DownloadDetailsInfo> list = DBService.getInstance().getDownloadList();
            for (DownloadDetailsInfo downloadDetailsInfo : list) {
                if (filter == null || filter.filter(downloadDetailsInfo)) {
                    downloadList.add(downloadDetailsInfo.snapshot());
                }
            }
        } else {
            for (DownloadDetailsInfo downloadDetailsInfo2 : this.downloadInfoManager.getAll()) {
                if (filter == null || filter.filter(downloadDetailsInfo2)) {
                    downloadList.add(downloadDetailsInfo2.snapshot());
                }
            }
        }
        return downloadList;
    }

    @Override // com.huxq17.download.core.service.IDownloadManager
    public DownloadInfo getDownloadInfoById(String id) {
        DownloadDetailsInfo downloadDetailsInfo = this.downloadInfoManager.get(id);
        if (downloadDetailsInfo == null) {
            downloadDetailsInfo = DBService.getInstance().getDownloadInfo(id);
        }
        if (downloadDetailsInfo != null) {
            return downloadDetailsInfo.snapshot();
        }
        return null;
    }

    @Override // com.huxq17.download.core.service.IDownloadManager
    public boolean hasDownloadSucceed(String id) {
        DownloadDetailsInfo info = DBService.getInstance().getDownloadInfo(id);
        return info != null && info.isFinished();
    }

    @Override // com.huxq17.download.core.service.IDownloadManager
    public boolean isTaskRunning(String id) {
        DownloadTask downloadTask = getDownloadTaskById(id);
        return downloadTask != null;
    }

    public DownloadTask getDownloadTaskById(String id) {
        DownloadDetailsInfo downloadDetailsInfo = this.downloadInfoManager.get(id);
        if (downloadDetailsInfo != null) {
            return downloadDetailsInfo.getDownloadTask();
        }
        return null;
    }

    @Override // com.huxq17.download.core.service.IDownloadManager
    public File getFileIfSucceed(String id) {
        if (hasDownloadSucceed(id)) {
            DownloadDetailsInfo info = DBService.getInstance().getDownloadInfo(id);
            return info.getDownloadFile();
        }
        return null;
    }

    @Override // com.huxq17.download.core.service.IDownloadManager
    public void shutdown() {
        this.downloadDispatcher.cancel();
        this.downloadInfoManager.clear();
        DownloadInfoSnapshot.release();
        this.hasFetchDownloadList = false;
    }

    @Override // com.huxq17.download.core.service.IDownloadManager
    public boolean isShutdown() {
        return !this.downloadDispatcher.isRunning();
    }

    @Override // com.huxq17.download.core.service.IDownloadManager
    public Context getContext() {
        return this.context;
    }
}
