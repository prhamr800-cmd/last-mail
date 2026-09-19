package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzwo {
    private static final zzwo zzcbe;
    private static final zzwo zzcbf;

    private zzwo() {
    }

    abstract <L> List<L> zza(Object obj, long j);

    abstract <L> void zza(Object obj, Object obj2, long j);

    abstract void zzb(Object obj, long j);

    static zzwo zzxk() {
        return zzcbe;
    }

    static zzwo zzxl() {
        return zzcbf;
    }

    static {
        zzwp zzwpVar = null;
        zzcbe = new zzwq();
        zzcbf = new zzwr();
    }
}
