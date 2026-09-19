package com.google.android.gms.gcm;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.huxq17.download.DownloadProvider;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;

/* JADX INFO: loaded from: classes2.dex */
final class zzm implements zzn {
    private final PendingIntent zzat;
    private final Context zzk;

    zzm(Context context) {
        this.zzk = context;
        this.zzat = PendingIntent.getBroadcast(context, 0, new Intent().setPackage("com.google.example.invalidpackage"), 0);
    }

    private final Intent zzh(String str) {
        Intent intent = new Intent("com.google.android.gms.gcm.ACTION_SCHEDULE");
        intent.setPackage("com.google.android.gms");
        intent.putExtra(SettingsJsonConstants.APP_KEY, this.zzat);
        intent.putExtra(FirebaseAnalytics.Param.SOURCE, 4);
        intent.putExtra("source_version", 12451000);
        intent.putExtra("scheduler_action", str);
        return intent;
    }

    @Override // com.google.android.gms.gcm.zzn
    public final boolean zzd(ComponentName componentName) {
        Intent intentZzh = zzh("CANCEL_ALL");
        intentZzh.putExtra("component", componentName);
        this.zzk.sendBroadcast(intentZzh);
        return true;
    }

    @Override // com.google.android.gms.gcm.zzn
    public final boolean zzd(ComponentName componentName, String str) {
        Intent intentZzh = zzh("CANCEL_TASK");
        intentZzh.putExtra("component", componentName);
        intentZzh.putExtra(DownloadProvider.DownloadTable.TAG, str);
        this.zzk.sendBroadcast(intentZzh);
        return true;
    }

    @Override // com.google.android.gms.gcm.zzn
    public final boolean zzd(Task task) {
        Intent intentZzh = zzh("SCHEDULE_TASK");
        Bundle bundle = new Bundle();
        task.toBundle(bundle);
        intentZzh.putExtras(bundle);
        this.zzk.sendBroadcast(intentZzh);
        return true;
    }
}
