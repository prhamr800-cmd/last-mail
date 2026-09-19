package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzcn implements Runnable {
    private final /* synthetic */ zzi zzaqv;
    private final /* synthetic */ zzbw zzaqw;

    zzcn(zzbw zzbwVar, zzi zziVar) {
        this.zzaqw = zzbwVar;
        this.zzaqv = zziVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzaqw.zzang.zzme();
        this.zzaqw.zzang.zzf(this.zzaqv);
    }
}
