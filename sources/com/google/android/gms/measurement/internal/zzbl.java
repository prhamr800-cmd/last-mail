package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzbl implements Runnable {
    private final /* synthetic */ zzbu zzaop;
    private final /* synthetic */ zzaq zzaoq;

    zzbl(zzbk zzbkVar, zzbu zzbuVar, zzaq zzaqVar) {
        this.zzaop = zzbuVar;
        this.zzaoq = zzaqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzaop.zzkk() == null) {
            this.zzaoq.zzjg().zzca("Install Referrer Reporter is null");
            return;
        }
        zzbh zzbhVarZzkk = this.zzaop.zzkk();
        zzbhVarZzkk.zzadp.zzgg();
        zzbhVarZzkk.zzcg(zzbhVarZzkk.zzadp.getContext().getPackageName());
    }
}
