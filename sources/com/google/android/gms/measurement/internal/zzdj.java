package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzdj implements Runnable {
    private final /* synthetic */ AtomicReference zzarq;
    private final /* synthetic */ zzcy zzarr;

    zzdj(zzcy zzcyVar, AtomicReference atomicReference) {
        this.zzarr = zzcyVar;
        this.zzarq = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzarq) {
            try {
                this.zzarq.set(this.zzarr.zzgv().zzba(this.zzarr.zzgk().zzal()));
            } finally {
                this.zzarq.notify();
            }
        }
    }
}
