package io.realm.exceptions;

import io.realm.SyncConfiguration;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadingRealmInterruptedException extends RuntimeException {
    public DownloadingRealmInterruptedException(SyncConfiguration syncConfig, Throwable exception) {
        super("Realm was interrupted while downloading the latest changes from the server: " + syncConfig.getPath(), exception);
    }
}
