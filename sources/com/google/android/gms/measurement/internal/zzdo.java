package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzdo implements Runnable {
    private final /* synthetic */ boolean zzaes;
    private final /* synthetic */ zzcy zzarr;

    zzdo(zzcy zzcyVar, boolean z) {
        this.zzarr = zzcyVar;
        this.zzaes = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzarr.zzj(this.zzaes);
    }
}
