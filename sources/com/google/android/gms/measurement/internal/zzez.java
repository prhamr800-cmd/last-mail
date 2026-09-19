package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes2.dex */
public final class zzez extends zzf {
    private Handler handler;

    @VisibleForTesting
    private long zzatl;

    @VisibleForTesting
    private long zzatm;
    private final zzw zzatn;
    private final zzw zzato;
    private final zzw zzatp;

    zzez(zzbu zzbuVar) {
        super(zzbuVar);
        this.zzatn = new zzfa(this, this.zzadp);
        this.zzato = new zzfb(this, this.zzadp);
        this.zzatp = new zzfc(this, this.zzadp);
        this.zzatl = zzbx().elapsedRealtime();
        this.zzatm = this.zzatl;
    }

    private final void zzlm() {
        synchronized (this) {
            if (this.handler == null) {
                this.handler = new com.google.android.gms.internal.measurement.zzea(Looper.getMainLooper());
            }
        }
    }

    @WorkerThread
    final void zzln() {
        zzaf();
        this.zzatn.cancel();
        this.zzato.cancel();
        this.zzatl = 0L;
        this.zzatm = this.zzatl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzam(long j) {
        zzaf();
        zzlm();
        zzgt().zzjo().zzg("Activity resumed, time", Long.valueOf(j));
        this.zzatl = j;
        this.zzatm = this.zzatl;
        if (zzgv().zzbk(zzgk().zzal())) {
            zzan(zzbx().currentTimeMillis());
            return;
        }
        this.zzatn.cancel();
        this.zzato.cancel();
        if (zzgv().zzbi(zzgk().zzal()) || zzgv().zzbj(zzgk().zzal())) {
            this.zzatp.cancel();
        }
        if (zzgu().zzaj(zzbx().currentTimeMillis())) {
            zzgu().zzany.set(true);
            zzgu().zzaoa.set(0L);
        }
        if (zzgu().zzany.get()) {
            this.zzatn.zzh(Math.max(0L, zzgu().zzanw.get() - zzgu().zzaoa.get()));
        } else {
            this.zzato.zzh(Math.max(0L, 3600000 - zzgu().zzaoa.get()));
        }
    }

    @WorkerThread
    final void zzan(long j) {
        zzaf();
        zzlm();
        zza(j, false);
    }

    @WorkerThread
    final void zza(long j, boolean z) {
        zzaf();
        zzlm();
        this.zzatn.cancel();
        this.zzato.cancel();
        if (zzgv().zzbi(zzgk().zzal()) || zzgv().zzbj(zzgk().zzal())) {
            this.zzatp.cancel();
        }
        if (zzgu().zzaj(j)) {
            zzgu().zzany.set(true);
            zzgu().zzaoa.set(0L);
        }
        if (zzgu().zzany.get()) {
            zzap(j);
            return;
        }
        this.zzato.zzh(Math.max(0L, 3600000 - zzgu().zzaoa.get()));
        if (z && zzgv().zzbl(zzgk().zzal())) {
            zzgu().zzanz.set(j);
            if (zzgv().zzbi(zzgk().zzal()) || zzgv().zzbj(zzgk().zzal())) {
                this.zzatp.cancel();
                this.zzatp.zzh(zzgu().zzanx.get());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzao(long j) {
        zzaf();
        zzlm();
        this.zzatn.cancel();
        this.zzato.cancel();
        if (zzgv().zzbi(zzgk().zzal()) || zzgv().zzbj(zzgk().zzal())) {
            this.zzatp.cancel();
            this.zzatp.zzh(zzgu().zzanx.get());
        }
        zzgt().zzjo().zzg("Activity paused, time", Long.valueOf(j));
        if (this.zzatl != 0) {
            zzgu().zzaoa.set(zzgu().zzaoa.get() + (j - this.zzatl));
        }
    }

    @WorkerThread
    private final void zzap(long j) {
        Long lValueOf;
        zzaf();
        zzgt().zzjo().zzg("Session started, time", Long.valueOf(zzbx().elapsedRealtime()));
        if (zzgv().zzbi(zzgk().zzal())) {
            lValueOf = Long.valueOf(j / 1000);
        } else {
            lValueOf = null;
        }
        Long l = zzgv().zzbj(zzgk().zzal()) ? -1L : null;
        zzgj().zza("auto", "_sid", lValueOf, j);
        zzgj().zza("auto", "_sno", l, j);
        zzgu().zzany.set(false);
        Bundle bundle = new Bundle();
        if (zzgv().zzbi(zzgk().zzal())) {
            bundle.putLong("_sid", lValueOf.longValue());
        }
        zzgj().zza("auto", "_s", j, bundle);
        zzgu().zzanz.set(j);
    }

    @WorkerThread
    @VisibleForTesting
    protected final void zzlo() {
        zzaf();
        zzap(zzbx().currentTimeMillis());
    }

    @WorkerThread
    @VisibleForTesting
    final long zzlp() {
        long jElapsedRealtime = zzbx().elapsedRealtime();
        long j = jElapsedRealtime - this.zzatm;
        this.zzatm = jElapsedRealtime;
        return j;
    }

    @WorkerThread
    public final boolean zza(boolean z, boolean z2) {
        zzaf();
        zzcl();
        long jElapsedRealtime = zzbx().elapsedRealtime();
        zzgu().zzanz.set(zzbx().currentTimeMillis());
        long j = jElapsedRealtime - this.zzatl;
        if (!z && j < 1000) {
            zzgt().zzjo().zzg("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j));
            return false;
        }
        zzgu().zzaoa.set(j);
        zzgt().zzjo().zzg("Recording user engagement, ms", Long.valueOf(j));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j);
        zzdw.zza(zzgm().zzle(), bundle, true);
        if (zzgv().zzbm(zzgk().zzal())) {
            if (zzgv().zze(zzgk().zzal(), zzag.zzalm)) {
                if (!z2) {
                    zzlp();
                }
            } else if (z2) {
                bundle.putLong("_fr", 1L);
            } else {
                zzlp();
            }
        }
        if (!zzgv().zze(zzgk().zzal(), zzag.zzalm) || !z2) {
            zzgj().logEvent("auto", "_e", bundle);
        }
        this.zzatl = jElapsedRealtime;
        this.zzato.cancel();
        this.zzato.zzh(Math.max(0L, 3600000 - zzgu().zzaoa.get()));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzlq() {
        zzaf();
        zza(false, false);
        zzgi().zzq(zzbx().elapsedRealtime());
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzgy() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgf() {
        super.zzgf();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgg() {
        super.zzgg();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgh() {
        super.zzgh();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzaf() {
        super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zza zzgi() {
        return super.zzgi();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzcy zzgj() {
        return super.zzgj();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzak zzgk() {
        return super.zzgk();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzdz zzgl() {
        return super.zzgl();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzdw zzgm() {
        return super.zzgm();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzam zzgn() {
        return super.zzgn();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzez zzgo() {
        return super.zzgo();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzy zzgp() {
        return super.zzgp();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ Clock zzbx() {
        return super.zzbx();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzao zzgq() {
        return super.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzfu zzgr() {
        return super.zzgr();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ zzbp zzgs() {
        return super.zzgs();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ zzaq zzgt() {
        return super.zzgt();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzbb zzgu() {
        return super.zzgu();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzo zzgv() {
        return super.zzgv();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ zzl zzgw() {
        return super.zzgw();
    }
}
