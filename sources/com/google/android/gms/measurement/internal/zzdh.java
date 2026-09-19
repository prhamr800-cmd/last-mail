package com.google.android.gms.measurement.internal;

import com.google.android.gms.measurement.AppMeasurement;

/* JADX INFO: loaded from: classes2.dex */
final class zzdh implements Runnable {
    private final /* synthetic */ zzcy zzarr;
    private final /* synthetic */ AppMeasurement.ConditionalUserProperty zzary;

    zzdh(zzcy zzcyVar, AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        this.zzarr = zzcyVar;
        this.zzary = conditionalUserProperty;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzarr.zzc(this.zzary);
    }
}
