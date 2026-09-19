package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzdl implements Runnable {
    private final /* synthetic */ AtomicReference zzarq;
    private final /* synthetic */ zzcy zzarr;

    zzdl(zzcy zzcyVar, AtomicReference atomicReference) {
        this.zzarr = zzcyVar;
        this.zzarq = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzarq) {
            try {
                this.zzarq.set(Long.valueOf(this.zzarr.zzgv().zza(this.zzarr.zzgk().zzal(), zzag.zzakp)));
            } finally {
                this.zzarq.notify();
            }
        }
    }
}
