package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzdi implements Runnable {
    private final /* synthetic */ String zzaeh;
    private final /* synthetic */ String zzaeo;
    private final /* synthetic */ String zzaqy;
    private final /* synthetic */ AtomicReference zzarq;
    private final /* synthetic */ zzcy zzarr;

    zzdi(zzcy zzcyVar, AtomicReference atomicReference, String str, String str2, String str3) {
        this.zzarr = zzcyVar;
        this.zzarq = atomicReference;
        this.zzaqy = str;
        this.zzaeh = str2;
        this.zzaeo = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzarr.zzadp.zzgl().zza(this.zzarq, this.zzaqy, this.zzaeh, this.zzaeo);
    }
}
