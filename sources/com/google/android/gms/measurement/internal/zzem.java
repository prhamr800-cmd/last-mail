package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzem implements Runnable {
    private final /* synthetic */ zzi zzaqv;
    private final /* synthetic */ zzfr zzara;
    private final /* synthetic */ zzdz zzasv;
    private final /* synthetic */ boolean zzasy;

    zzem(zzdz zzdzVar, boolean z, zzfr zzfrVar, zzi zziVar) {
        this.zzasv = zzdzVar;
        this.zzasy = z;
        this.zzara = zzfrVar;
        this.zzaqv = zziVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzah zzahVar = this.zzasv.zzasp;
        if (zzahVar == null) {
            this.zzasv.zzgt().zzjg().zzca("Discarding data. Failed to set user attribute");
        } else {
            this.zzasv.zza(zzahVar, this.zzasy ? null : this.zzara, this.zzaqv);
            this.zzasv.zzcy();
        }
    }
}
