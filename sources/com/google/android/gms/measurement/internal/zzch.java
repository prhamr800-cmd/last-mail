package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzch implements Runnable {
    private final /* synthetic */ zzi zzaqv;
    private final /* synthetic */ zzbw zzaqw;
    private final /* synthetic */ zzae zzaqz;

    zzch(zzbw zzbwVar, zzae zzaeVar, zzi zziVar) {
        this.zzaqw = zzbwVar;
        this.zzaqz = zzaeVar;
        this.zzaqv = zziVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzae zzaeVarZzb = this.zzaqw.zzb(this.zzaqz, this.zzaqv);
        this.zzaqw.zzang.zzme();
        this.zzaqw.zzang.zzc(zzaeVarZzb, this.zzaqv);
    }
}
