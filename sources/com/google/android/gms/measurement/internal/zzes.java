package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
final class zzes implements Runnable {
    private final /* synthetic */ zzeo zzate;

    zzes(zzeo zzeoVar) {
        this.zzate = zzeoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdz zzdzVar = this.zzate.zzasv;
        Context context = this.zzate.zzasv.getContext();
        this.zzate.zzasv.zzgw();
        zzdzVar.onServiceDisconnected(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
