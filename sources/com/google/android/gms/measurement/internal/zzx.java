package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzx implements Runnable {
    private final /* synthetic */ zzcr zzaia;
    private final /* synthetic */ zzw zzaib;

    zzx(zzw zzwVar, zzcr zzcrVar) {
        this.zzaib = zzwVar;
        this.zzaia = zzcrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzaia.zzgw();
        if (zzl.isMainThread()) {
            this.zzaia.zzgs().zzc(this);
            return;
        }
        boolean zZzej = this.zzaib.zzej();
        zzw.zza(this.zzaib, 0L);
        if (zZzej) {
            this.zzaib.run();
        }
    }
}
