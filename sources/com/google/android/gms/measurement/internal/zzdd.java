package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzdd implements Runnable {
    private final /* synthetic */ AtomicReference zzarq;
    private final /* synthetic */ zzcy zzarr;

    zzdd(zzcy zzcyVar, AtomicReference atomicReference) {
        this.zzarr = zzcyVar;
        this.zzarq = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzarr.zzgl().zza(this.zzarq);
    }
}
