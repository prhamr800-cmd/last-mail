package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.MainThread;
import com.google.android.gms.measurement.internal.zzbk;
import com.google.android.gms.measurement.internal.zzbn;

/* JADX INFO: loaded from: classes2.dex */
public final class AppMeasurementInstallReferrerReceiver extends BroadcastReceiver implements zzbn {
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
    public final void doStartService(Context context, Intent intent) {
    }

    @Override // com.google.android.gms.measurement.internal.zzbn
    public final BroadcastReceiver.PendingResult doGoAsync() {
        return goAsync();
    }
}
