package com.google.android.gms.measurement.internal;

import com.google.android.gms.measurement.AppMeasurement;

/* JADX INFO: loaded from: classes2.dex */
final class zzdg implements Runnable {
    private final /* synthetic */ zzcy zzarr;
    private final /* synthetic */ AppMeasurement.ConditionalUserProperty zzary;

    zzdg(zzcy zzcyVar, AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        this.zzarr = zzcyVar;
        this.zzary = conditionalUserProperty;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzarr.zzb(this.zzary);
    }
}
