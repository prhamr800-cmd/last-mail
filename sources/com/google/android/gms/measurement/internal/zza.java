package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zza extends zze {
    private final Map<String, Long> zzafq;
    private final Map<String, Integer> zzafr;
    private long zzafs;

    public zza(zzbu zzbuVar) {
        super(zzbuVar);
        this.zzafr = new ArrayMap();
        this.zzafq = new ArrayMap();
    }

    public final void beginAdUnitExposure(String str, long j) {
        if (str == null || str.length() == 0) {
            zzgt().zzjg().zzca("Ad unit id must be a non-empty string");
        } else {
            zzgs().zzc(new zzb(this, str, j));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zza(String str, long j) {
        zzgg();
        zzaf();
        Preconditions.checkNotEmpty(str);
        if (this.zzafr.isEmpty()) {
            this.zzafs = j;
        }
        Integer num = this.zzafr.get(str);
        if (num != null) {
            this.zzafr.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (this.zzafr.size() < 100) {
            this.zzafr.put(str, 1);
            this.zzafq.put(str, Long.valueOf(j));
        } else {
            zzgt().zzjj().zzca("Too many ads visible");
        }
    }

    public final void endAdUnitExposure(String str, long j) {
        if (str == null || str.length() == 0) {
            zzgt().zzjg().zzca("Ad unit id must be a non-empty string");
        } else {
            zzgs().zzc(new zzc(this, str, j));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzb(String str, long j) {
        zzgg();
        zzaf();
        Preconditions.checkNotEmpty(str);
        Integer num = this.zzafr.get(str);
        if (num != null) {
            zzdv zzdvVarZzle = zzgm().zzle();
            int iIntValue = num.intValue() - 1;
            if (iIntValue == 0) {
                this.zzafr.remove(str);
                Long l = this.zzafq.get(str);
                if (l == null) {
                    zzgt().zzjg().zzca("First ad unit exposure time was never set");
                } else {
                    long jLongValue = j - l.longValue();
                    this.zzafq.remove(str);
                    zza(str, jLongValue, zzdvVarZzle);
                }
                if (this.zzafr.isEmpty()) {
                    if (this.zzafs == 0) {
                        zzgt().zzjg().zzca("First ad exposure time was never set");
                        return;
                    } else {
                        zza(j - this.zzafs, zzdvVarZzle);
                        this.zzafs = 0L;
                        return;
                    }
                }
                return;
            }
            this.zzafr.put(str, Integer.valueOf(iIntValue));
            return;
        }
        zzgt().zzjg().zzg("Call to endAdUnitExposure for unknown ad unit id", str);
    }

    @WorkerThread
    private final void zza(long j, zzdv zzdvVar) {
        if (zzdvVar == null) {
            zzgt().zzjo().zzca("Not logging ad exposure. No active activity");
            return;
        }
        if (j < 1000) {
            zzgt().zzjo().zzg("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("_xt", j);
        zzdw.zza(zzdvVar, bundle, true);
        zzgj().logEvent("am", "_xa", bundle);
    }

    @WorkerThread
    private final void zza(String str, long j, zzdv zzdvVar) {
        if (zzdvVar == null) {
            zzgt().zzjo().zzca("Not logging ad unit exposure. No active activity");
            return;
        }
        if (j < 1000) {
            zzgt().zzjo().zzg("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_ai", str);
        bundle.putLong("_xt", j);
        zzdw.zza(zzdvVar, bundle, true);
        zzgj().logEvent("am", "_xu", bundle);
    }

    @WorkerThread
    public final void zzq(long j) {
        zzdv zzdvVarZzle = zzgm().zzle();
        for (String str : this.zzafq.keySet()) {
            zza(str, j - this.zzafq.get(str).longValue(), zzdvVarZzle);
        }
        if (!this.zzafq.isEmpty()) {
            zza(j - this.zzafs, zzdvVarZzle);
        }
        zzr(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzr(long j) {
        Iterator<String> it = this.zzafq.keySet().iterator();
        while (it.hasNext()) {
            this.zzafq.put(it.next(), Long.valueOf(j));
        }
        if (!this.zzafq.isEmpty()) {
            this.zzafs = j;
        }
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
