package io.realm.exceptions;

import io.realm.RealmConfiguration;
import io.realm.SyncConfiguration;
import io.realm.exceptions.RealmFileException;
import io.realm.internal.Keep;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class IncompatibleSyncedFileException extends RealmFileException {
    private final String path;

    public IncompatibleSyncedFileException(String message, String recoveryPath) {
        super(RealmFileException.Kind.INCOMPATIBLE_SYNC_FILE, message);
        this.path = recoveryPath;
    }

    public RealmConfiguration getBackupRealmConfiguration() {
        return SyncConfiguration.forRecovery(this.path, (byte[]) null, new Object[0]);
    }

    public RealmConfiguration getBackupRealmConfiguration(@Nullable byte[] encryptionKey) {
        return SyncConfiguration.forRecovery(this.path, encryptionKey, new Object[0]);
    }

    public RealmConfiguration getBackupRealmConfiguration(@Nullable byte[] encryptionKey, Object... modules) {
        return SyncConfiguration.forRecovery(this.path, encryptionKey, modules);
    }

    public String getRecoveryPath() {
        return this.path;
    }
}
