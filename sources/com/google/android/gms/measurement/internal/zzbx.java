package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzbx implements Runnable {
    private final /* synthetic */ zzi zzaqv;
    private final /* synthetic */ zzbw zzaqw;

    zzbx(zzbw zzbwVar, zzi zziVar) {
        this.zzaqw = zzbwVar;
        this.zzaqv = zziVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzaqw.zzang.zzme();
        this.zzaqw.zzang.zze(this.zzaqv);
    }
}
