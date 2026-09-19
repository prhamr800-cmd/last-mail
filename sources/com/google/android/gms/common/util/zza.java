package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.SystemClock;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes2.dex */
public final class zza {
    private static long zzgt;
    private static final IntentFilter filter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
    private static float zzgu = Float.NaN;

    @TargetApi(20)
    public static int zzg(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            return -1;
        }
        Intent intentRegisterReceiver = context.getApplicationContext().registerReceiver(null, filter);
        int i = ((intentRegisterReceiver == null ? 0 : intentRegisterReceiver.getIntExtra("plugged", 0)) & 7) != 0 ? 1 : 0;
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            return -1;
        }
        return ((PlatformVersion.isAtLeastKitKatWatch() ? powerManager.isInteractive() : powerManager.isScreenOn() ? 1 : 0) << 1) | i;
    }

    public static synchronized float zzh(Context context) {
        if (SystemClock.elapsedRealtime() - zzgt < 60000 && !Float.isNaN(zzgu)) {
            return zzgu;
        }
        if (context.getApplicationContext().registerReceiver(null, filter) != null) {
            zzgu = r6.getIntExtra(FirebaseAnalytics.Param.LEVEL, -1) / r6.getIntExtra("scale", -1);
        }
        zzgt = SystemClock.elapsedRealtime();
        return zzgu;
    }
}
