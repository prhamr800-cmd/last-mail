package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
class zzfi extends zzcp implements zzcr {
    protected final zzfk zzang;

    zzfi(zzfk zzfkVar) {
        super(zzfkVar.zzmh());
        Preconditions.checkNotNull(zzfkVar);
        this.zzang = zzfkVar;
    }

    public zzr zzjt() {
        return this.zzang.zzjt();
    }

    public zzk zzjs() {
        return this.zzang.zzjs();
    }

    public zzfq zzjr() {
        return this.zzang.zzjr();
    }
}
