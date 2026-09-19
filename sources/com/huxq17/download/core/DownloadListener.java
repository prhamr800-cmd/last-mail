package com.huxq17.download.core;

import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.huxq17.download.Pump;
import com.huxq17.download.android.ViewLifecycleHandler;
import com.huxq17.download.core.DownloadInfo;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadListener {
    private DownloadInfo downloadInfo;
    private boolean enable;
    private String id;
    private DownloadInfo.Status status;

    public DownloadListener() {
    }

    public DownloadListener(FragmentActivity activity) {
        ViewLifecycleHandler.handleLifecycle(activity.getLifecycle(), this);
    }

    public DownloadListener(Fragment fragment) {
        ViewLifecycleHandler.handleLifecycleForFragment(fragment, fragment.getLifecycle(), this);
    }

    public final void disable() {
        Pump.unSubscribe(this);
    }

    void setEnable(boolean enable) {
        this.enable = enable;
    }

    void setId(String id) {
        this.id = id;
    }

    public final void enable() {
        if (!this.enable) {
            Pump.subscribe(this);
        }
    }

    public final boolean isEnable() {
        return this.enable;
    }

    public final DownloadInfo.Status getStatus() {
        return this.status;
    }

    public final DownloadInfo getDownloadInfo() {
        return this.downloadInfo;
    }

    final void downloading(DownloadInfo downloadInfo) {
        DownloadInfo.Status status = downloadInfo.getStatus();
        this.downloadInfo = downloadInfo;
        this.status = status;
        int progress = downloadInfo.getProgress();
        onProgress(progress);
        if (status == DownloadInfo.Status.FAILED) {
            onFailed();
            unSubscribe();
        } else if (downloadInfo.getStatus() == DownloadInfo.Status.FINISHED) {
            onSuccess();
            unSubscribe();
        }
    }

    private void unSubscribe() {
        if (this.id != null) {
            Pump.unSubscribe(this.id);
        }
    }

    public String getId() {
        return this.id;
    }

    public boolean filter(DownloadInfo downloadInfo) {
        return this.id == null || this.id.equals(downloadInfo.getId());
    }

    public void onProgress(int progress) {
    }

    public void onSuccess() {
    }

    public void onFailed() {
    }

    public int hashCode() {
        if (!TextUtils.isEmpty(this.id)) {
            return this.id.hashCode();
        }
        return super.hashCode();
    }

    public String toString() {
        return "DownloadListener{id='" + this.id + "'}";
    }

    public boolean equals(Object obj) {
        if (DownloadListener.class.isAssignableFrom(obj.getClass())) {
            DownloadListener that = (DownloadListener) obj;
            String thatId = that.getId();
            if (!TextUtils.isEmpty(thatId) && thatId.equals(getId())) {
                return true;
            }
        }
        return super.equals(obj);
    }
}
