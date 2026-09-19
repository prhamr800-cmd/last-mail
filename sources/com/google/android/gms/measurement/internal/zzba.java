package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzba implements Runnable {
    private final /* synthetic */ boolean zzanh;
    private final /* synthetic */ zzaz zzani;

    zzba(zzaz zzazVar, boolean z) {
        this.zzani = zzazVar;
        this.zzanh = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzani.zzang.zzm(this.zzanh);
    }
}
