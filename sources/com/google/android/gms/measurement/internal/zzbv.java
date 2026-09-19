package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzbv implements Runnable {
    private final /* synthetic */ zzcx zzaqr;
    private final /* synthetic */ zzbu zzaqs;

    zzbv(zzbu zzbuVar, zzcx zzcxVar) {
        this.zzaqs = zzbuVar;
        this.zzaqr = zzcxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzaqs.zza(this.zzaqr);
        this.zzaqs.start();
    }
}
