package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzdn implements Runnable {
    private final /* synthetic */ AtomicReference zzarq;
    private final /* synthetic */ zzcy zzarr;

    zzdn(zzcy zzcyVar, AtomicReference atomicReference) {
        this.zzarr = zzcyVar;
        this.zzarq = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzarq) {
            try {
                this.zzarq.set(Double.valueOf(this.zzarr.zzgv().zzc(this.zzarr.zzgk().zzal(), zzag.zzakr)));
            } finally {
                this.zzarq.notify();
            }
        }
    }
}
