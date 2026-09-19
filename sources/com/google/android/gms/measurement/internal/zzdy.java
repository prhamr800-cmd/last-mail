package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzdy implements Runnable {
    private final /* synthetic */ zzdw zzasm;
    private final /* synthetic */ zzdv zzasn;

    zzdy(zzdw zzdwVar, zzdv zzdvVar) {
        this.zzasm = zzdwVar;
        this.zzasn = zzdvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzasm.zza(this.zzasn, false);
        this.zzasm.zzasd = null;
        this.zzasm.zzgl().zza((zzdv) null);
    }
}
