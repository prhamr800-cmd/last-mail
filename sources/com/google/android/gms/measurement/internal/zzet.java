package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzet implements Runnable {
    private final /* synthetic */ zzeo zzate;

    zzet(zzeo zzeoVar) {
        this.zzate = zzeoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdz.zza(this.zzate.zzasv, (zzah) null);
        this.zzate.zzasv.zzlj();
    }
}
