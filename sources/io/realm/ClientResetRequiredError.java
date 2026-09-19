package io.realm;

import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class ClientResetRequiredError extends ObjectServerError {
    private final RealmConfiguration backupConfiguration;
    private final File backupFile;
    private final SyncConfiguration originalConfiguration;
    private final File originalFile;

    private native void nativeExecuteClientReset(String str);

    ClientResetRequiredError(ErrorCode errorCode, String errorMessage, SyncConfiguration originalConfiguration, RealmConfiguration backupConfiguration) {
        super(errorCode, errorMessage);
        this.originalConfiguration = originalConfiguration;
        this.backupConfiguration = backupConfiguration;
        this.backupFile = new File(backupConfiguration.getPath());
        this.originalFile = new File(originalConfiguration.getPath());
    }

    public void executeClientReset() {
        synchronized (Realm.class) {
            if (Realm.getGlobalInstanceCount(this.originalConfiguration) > 0) {
                throw new IllegalStateException("Realm has not been fully closed. Client Reset cannot run before all instances have been closed.");
            }
            nativeExecuteClientReset(this.originalConfiguration.getPath());
        }
    }

    public File getBackupFile() {
        return this.backupFile;
    }

    public RealmConfiguration getBackupRealmConfiguration() {
        return this.backupConfiguration;
    }

    public File getOriginalFile() {
        return this.originalFile;
    }
}
