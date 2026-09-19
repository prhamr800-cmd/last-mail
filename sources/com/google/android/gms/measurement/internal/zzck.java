package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzck implements Runnable {
    private final /* synthetic */ zzi zzaqv;
    private final /* synthetic */ zzbw zzaqw;
    private final /* synthetic */ zzfr zzara;

    zzck(zzbw zzbwVar, zzfr zzfrVar, zzi zziVar) {
        this.zzaqw = zzbwVar;
        this.zzara = zzfrVar;
        this.zzaqv = zziVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzaqw.zzang.zzme();
        this.zzaqw.zzang.zzc(this.zzara, this.zzaqv);
    }
}
