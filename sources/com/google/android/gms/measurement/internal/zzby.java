package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzby implements Runnable {
    private final /* synthetic */ zzi zzaqv;
    private final /* synthetic */ zzbw zzaqw;
    private final /* synthetic */ zzm zzaqx;

    zzby(zzbw zzbwVar, zzm zzmVar, zzi zziVar) {
        this.zzaqw = zzbwVar;
        this.zzaqx = zzmVar;
        this.zzaqv = zziVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzaqw.zzang.zzme();
        this.zzaqw.zzang.zzc(this.zzaqx, this.zzaqv);
    }
}
