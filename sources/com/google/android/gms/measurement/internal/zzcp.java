package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;

/* JADX INFO: loaded from: classes2.dex */
class zzcp implements zzcr {
    protected final zzbu zzadp;

    zzcp(zzbu zzbuVar) {
        Preconditions.checkNotNull(zzbuVar);
        this.zzadp = zzbuVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzcr
    public zzl zzgw() {
        return this.zzadp.zzgw();
    }

    public zzo zzgv() {
        return this.zzadp.zzgv();
    }

    public zzbb zzgu() {
        return this.zzadp.zzgu();
    }

    @Override // com.google.android.gms.measurement.internal.zzcr
    public zzaq zzgt() {
        return this.zzadp.zzgt();
    }

    @Override // com.google.android.gms.measurement.internal.zzcr
    public zzbp zzgs() {
        return this.zzadp.zzgs();
    }

    public zzfu zzgr() {
        return this.zzadp.zzgr();
    }

    public zzao zzgq() {
        return this.zzadp.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzcr
    public Context getContext() {
        return this.zzadp.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzcr
    public Clock zzbx() {
        return this.zzadp.zzbx();
    }

    public zzy zzgp() {
        return this.zzadp.zzgp();
    }

    public void zzaf() {
        this.zzadp.zzgs().zzaf();
    }

    public void zzgh() {
        this.zzadp.zzgs().zzgh();
    }

    public void zzgg() {
        this.zzadp.zzgg();
    }

    public void zzgf() {
        this.zzadp.zzgf();
    }
}
