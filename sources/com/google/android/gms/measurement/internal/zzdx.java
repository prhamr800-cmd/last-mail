package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
final class zzdx implements Runnable {
    private final /* synthetic */ boolean zzasj;
    private final /* synthetic */ zzdv zzask;
    private final /* synthetic */ zzdv zzasl;
    private final /* synthetic */ zzdw zzasm;

    zzdx(zzdw zzdwVar, boolean z, zzdv zzdvVar, zzdv zzdvVar2) {
        this.zzasm = zzdwVar;
        this.zzasj = z;
        this.zzask = zzdvVar;
        this.zzasl = zzdvVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        if (this.zzasm.zzgv().zzbm(this.zzasm.zzgk().zzal())) {
            z = this.zzasj && this.zzasm.zzasd != null;
            if (z) {
                this.zzasm.zza(this.zzasm.zzasd, true);
            }
        } else {
            if (this.zzasj && this.zzasm.zzasd != null) {
                this.zzasm.zza(this.zzasm.zzasd, true);
            }
            z = false;
        }
        if ((this.zzask != null && this.zzask.zzasb == this.zzasl.zzasb && zzfu.zzv(this.zzask.zzasa, this.zzasl.zzasa) && zzfu.zzv(this.zzask.zzuw, this.zzasl.zzuw)) ? false : true) {
            Bundle bundle = new Bundle();
            zzdw.zza(this.zzasl, bundle, true);
            if (this.zzask != null) {
                if (this.zzask.zzuw != null) {
                    bundle.putString("_pn", this.zzask.zzuw);
                }
                bundle.putString("_pc", this.zzask.zzasa);
                bundle.putLong("_pi", this.zzask.zzasb);
            }
            if (this.zzasm.zzgv().zzbm(this.zzasm.zzgk().zzal()) && z) {
                long jZzlp = this.zzasm.zzgo().zzlp();
                if (jZzlp > 0) {
                    this.zzasm.zzgr().zza(bundle, jZzlp);
                }
            }
            this.zzasm.zzgj().zza("auto", "_vs", bundle);
        }
        this.zzasm.zzasd = this.zzasl;
        this.zzasm.zzgl().zza(this.zzasl);
    }
}
