package io.realm;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Process;
import android.support.v4.os.EnvironmentCompat;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import io.realm.SyncManager;
import io.realm.internal.Keep;
import java.io.File;
import java.io.IOException;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
@Keep
class ObjectServer {
    ObjectServer() {
    }

    public static void init(Context context) {
        String appId = EnvironmentCompat.MEDIA_UNKNOWN;
        try {
            PackageInfo pi = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            appId = pi.packageName;
        } catch (Exception e) {
        }
        if (SyncManager.Debug.separatedDirForSyncManager) {
            try {
                File dir = File.createTempFile("remote_sync_", EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + Process.myPid(), context.getFilesDir());
                if (!dir.delete()) {
                    throw new IllegalStateException(String.format(Locale.US, "Temp file '%s' cannot be deleted.", dir.getPath()));
                }
                if (!dir.mkdir()) {
                    throw new IllegalStateException(String.format(Locale.US, "Directory '%s' for SyncManager cannot be created. ", dir.getPath()));
                }
                SyncManager.nativeInitializeSyncManager(dir.getPath());
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        } else {
            SyncManager.nativeInitializeSyncManager(context.getFilesDir().getPath());
        }
        UserStore userStore = new RealmFileUserStore();
        SyncManager.init(appId, userStore);
    }
}
