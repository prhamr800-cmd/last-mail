package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzci implements Runnable {
    private final /* synthetic */ zzbw zzaqw;
    private final /* synthetic */ String zzaqy;
    private final /* synthetic */ zzae zzaqz;

    zzci(zzbw zzbwVar, zzae zzaeVar, String str) {
        this.zzaqw = zzbwVar;
        this.zzaqz = zzaeVar;
        this.zzaqy = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzaqw.zzang.zzme();
        this.zzaqw.zzang.zzd(this.zzaqz, this.zzaqy);
    }
}
