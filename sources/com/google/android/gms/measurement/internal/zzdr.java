package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzdr implements Runnable {
    private final /* synthetic */ zzcy zzarr;
    private final /* synthetic */ long zzarz;

    zzdr(zzcy zzcyVar, long j) {
        this.zzarr = zzcyVar;
        this.zzarz = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzarr.zzgu().zzanx.set(this.zzarz);
        this.zzarr.zzgt().zzjn().zzg("Session timeout duration set", Long.valueOf(this.zzarz));
    }
}
