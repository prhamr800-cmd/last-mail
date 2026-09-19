package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzdc implements Runnable {
    private final /* synthetic */ boolean zzaev;
    private final /* synthetic */ AtomicReference zzarq;
    private final /* synthetic */ zzcy zzarr;

    zzdc(zzcy zzcyVar, AtomicReference atomicReference, boolean z) {
        this.zzarr = zzcyVar;
        this.zzarq = atomicReference;
        this.zzaev = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzarr.zzgl().zza(this.zzarq, this.zzaev);
    }
}
