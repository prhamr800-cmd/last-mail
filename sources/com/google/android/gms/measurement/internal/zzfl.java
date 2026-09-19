package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzfl implements Runnable {
    private final /* synthetic */ zzfp zzauq;
    private final /* synthetic */ zzfk zzaur;

    zzfl(zzfk zzfkVar, zzfp zzfpVar) {
        this.zzaur = zzfkVar;
        this.zzauq = zzfpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzaur.zza(this.zzauq);
        this.zzaur.start();
    }
}
