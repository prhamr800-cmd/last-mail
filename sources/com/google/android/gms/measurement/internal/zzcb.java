package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzcb implements Runnable {
    private final /* synthetic */ zzbw zzaqw;
    private final /* synthetic */ zzm zzaqx;

    zzcb(zzbw zzbwVar, zzm zzmVar) {
        this.zzaqw = zzbwVar;
        this.zzaqx = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzaqw.zzang.zzme();
        this.zzaqw.zzang.zze(this.zzaqx);
    }
}
