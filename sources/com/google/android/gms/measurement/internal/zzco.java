package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzco implements Runnable {
    private final /* synthetic */ String zzaeq;
    private final /* synthetic */ zzbw zzaqw;
    private final /* synthetic */ String zzaqy;
    private final /* synthetic */ String zzarb;
    private final /* synthetic */ long zzarc;

    zzco(zzbw zzbwVar, String str, String str2, String str3, long j) {
        this.zzaqw = zzbwVar;
        this.zzarb = str;
        this.zzaqy = str2;
        this.zzaeq = str3;
        this.zzarc = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzarb == null) {
            this.zzaqw.zzang.zzmh().zzgm().zza(this.zzaqy, (zzdv) null);
        } else {
            this.zzaqw.zzang.zzmh().zzgm().zza(this.zzaqy, new zzdv(this.zzaeq, this.zzarb, this.zzarc));
        }
    }
}
