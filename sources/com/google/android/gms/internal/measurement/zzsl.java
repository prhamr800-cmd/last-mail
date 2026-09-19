package com.google.android.gms.internal.measurement;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.os.UserManager;
import android.support.annotation.RequiresApi;
import android.support.annotation.VisibleForTesting;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class zzsl {
    private static volatile UserManager zzbrk;
    private static volatile boolean zzbrl = !zztj();

    private zzsl() {
    }

    public static boolean zztj() {
        return Build.VERSION.SDK_INT >= 24;
    }

    public static boolean isUserUnlocked(Context context) {
        return !zztj() || zzab(context);
    }

    @RequiresApi(24)
    @TargetApi(24)
    private static boolean zzab(Context context) {
        boolean z = zzbrl;
        if (!z) {
            boolean z2 = z;
            for (int i = 1; i <= 2; i++) {
                UserManager userManagerZzac = zzac(context);
                if (userManagerZzac == null) {
                    zzbrl = true;
                    return true;
                }
                try {
                    z2 = userManagerZzac.isUserUnlocked() || !userManagerZzac.isUserRunning(Process.myUserHandle());
                    zzbrl = z2;
                    break;
                } catch (NullPointerException e) {
                    Log.w("DirectBootUtils", "Failed to check if user is unlocked", e);
                    zzbrk = null;
                }
            }
            z = z2;
            if (z) {
                zzbrk = null;
            }
        }
        return z;
    }

    @VisibleForTesting
    @RequiresApi(24)
    @TargetApi(24)
    private static UserManager zzac(Context context) {
        UserManager userManager = zzbrk;
        if (userManager == null) {
            synchronized (zzsl.class) {
                userManager = zzbrk;
                if (userManager == null) {
                    UserManager userManager2 = (UserManager) context.getSystemService(UserManager.class);
                    zzbrk = userManager2;
                    userManager = userManager2;
                }
            }
        }
        return userManager;
    }
}
