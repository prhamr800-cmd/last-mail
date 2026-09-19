package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.MainThread;
import android.support.v4.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.zzbk;
import com.google.android.gms.measurement.internal.zzbn;

/* JADX INFO: loaded from: classes2.dex */
public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements zzbn {
    private zzbk zzadq;

    @Override // android.content.BroadcastReceiver
    @MainThread
    public final void onReceive(Context context, Intent intent) {
        if (this.zzadq == null) {
            this.zzadq = new zzbk(this);
        }
        this.zzadq.onReceive(context, intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzbn
    @MainThread
    public final void doStartService(Context context, Intent intent) {
        startWakefulService(context, intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzbn
    public final BroadcastReceiver.PendingResult doGoAsync() {
        return goAsync();
    }
}
