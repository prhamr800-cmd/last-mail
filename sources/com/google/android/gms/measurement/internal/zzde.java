package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzde implements Runnable {
    private final /* synthetic */ zzcy zzarr;
    private final /* synthetic */ long zzarx;

    zzde(zzcy zzcyVar, long j) {
        this.zzarr = zzcyVar;
        this.zzarx = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcy zzcyVar = this.zzarr;
        long j = this.zzarx;
        zzcyVar.zzaf();
        zzcyVar.zzgg();
        zzcyVar.zzcl();
        zzcyVar.zzgt().zzjn().zzca("Resetting analytics data (FE)");
        zzcyVar.zzgo().zzln();
        if (zzcyVar.zzgv().zzbe(zzcyVar.zzgk().zzal())) {
            zzcyVar.zzgu().zzanq.set(j);
        }
        boolean zIsEnabled = zzcyVar.zzadp.isEnabled();
        if (!zzcyVar.zzgv().zzhz()) {
            zzcyVar.zzgu().zzi(!zIsEnabled);
        }
        zzcyVar.zzgl().resetAnalyticsData();
        zzcyVar.zzarp = !zIsEnabled;
        if (this.zzarr.zzgv().zza(zzag.zzaln)) {
            this.zzarr.zzgl().zza(new AtomicReference<>());
        }
    }
}
