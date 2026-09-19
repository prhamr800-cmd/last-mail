package com.huxq17.download;

import com.huxq17.download.core.DownloadInfo;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadInfoSnapshot {
    private static DownloadInfoSnapshot sPool;
    private static int sPoolSize = 0;
    public long completedSize;
    public DownloadInfo downloadInfo;
    private DownloadInfoSnapshot next;
    public DownloadInfo.Status status;

    public static DownloadInfoSnapshot obtain() {
        synchronized (DownloadInfoSnapshot.class) {
            if (sPool != null) {
                DownloadInfoSnapshot snapshot = sPool;
                sPool = snapshot.next;
                snapshot.next = null;
                sPoolSize--;
                return snapshot;
            }
            return new DownloadInfoSnapshot();
        }
    }

    public void recycle() {
        this.completedSize = 0L;
        this.status = null;
        this.downloadInfo = null;
        synchronized (DownloadInfoSnapshot.class) {
            this.next = sPool;
            sPool = this;
            sPoolSize++;
        }
    }

    public static void release() {
        synchronized (DownloadInfoSnapshot.class) {
            while (sPool != null) {
                DownloadInfoSnapshot snapshot = sPool;
                sPool = snapshot.next;
                snapshot.next = null;
                sPoolSize--;
            }
        }
    }

    public static int getPoolSize() {
        return sPoolSize;
    }
}
