package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzdf implements Runnable {
    private final /* synthetic */ zzcv zzaeu;
    private final /* synthetic */ zzcy zzarr;

    zzdf(zzcy zzcyVar, zzcv zzcvVar) {
        this.zzarr = zzcyVar;
        this.zzaeu = zzcvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzarr.zza(this.zzaeu);
    }
}
