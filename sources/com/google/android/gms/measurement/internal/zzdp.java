package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzdp implements Runnable {
    private final /* synthetic */ boolean zzaes;
    private final /* synthetic */ zzcy zzarr;

    zzdp(zzcy zzcyVar, boolean z) {
        this.zzarr = zzcyVar;
        this.zzaes = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zIsEnabled = this.zzarr.zzadp.isEnabled();
        boolean zZzks = this.zzarr.zzadp.zzks();
        this.zzarr.zzadp.zzd(this.zzaes);
        if (zZzks == this.zzaes) {
            this.zzarr.zzadp.zzgt().zzjo().zzg("Default data collection state already set to", Boolean.valueOf(this.zzaes));
        }
        if (this.zzarr.zzadp.isEnabled() == zIsEnabled || this.zzarr.zzadp.isEnabled() != this.zzarr.zzadp.zzks()) {
            this.zzarr.zzadp.zzgt().zzjl().zze("Default data collection is different than actual status", Boolean.valueOf(this.zzaes), Boolean.valueOf(zIsEnabled));
        }
        this.zzarr.zzlc();
    }
}
