package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzym<T, B> {
    zzym() {
    }

    abstract void zza(B b, int i, long j);

    abstract void zza(B b, int i, zzun zzunVar);

    abstract void zza(B b, int i, T t);

    abstract void zza(T t, zzzh zzzhVar) throws IOException;

    abstract boolean zza(zzxt zzxtVar);

    abstract T zzaf(B b);

    abstract int zzai(T t);

    abstract T zzal(Object obj);

    abstract B zzam(Object obj);

    abstract int zzan(T t);

    abstract void zzb(B b, int i, long j);

    abstract void zzc(B b, int i, int i2);

    abstract void zzc(T t, zzzh zzzhVar) throws IOException;

    abstract void zzf(Object obj, T t);

    abstract void zzg(Object obj, B b);

    abstract T zzh(T t, T t2);

    abstract void zzy(Object obj);

    abstract B zzyr();

    final boolean zza(B b, zzxt zzxtVar) throws IOException {
        int tag = zzxtVar.getTag();
        int i = tag >>> 3;
        switch (tag & 7) {
            case 0:
                zza(b, i, zzxtVar.zzus());
                return true;
            case 1:
                zzb(b, i, zzxtVar.zzuu());
                return true;
            case 2:
                zza((Object) b, i, zzxtVar.zzuy());
                return true;
            case 3:
                B bZzyr = zzyr();
                int i2 = (i << 3) | 4;
                while (zzxtVar.zzvo() != Integer.MAX_VALUE && zza(bZzyr, zzxtVar)) {
                }
                if (i2 != zzxtVar.getTag()) {
                    throw zzwe.zzxa();
                }
                zza(b, i, zzaf(bZzyr));
                return true;
            case 4:
                return false;
            case 5:
                zzc(b, i, zzxtVar.zzuv());
                return true;
            default:
                throw zzwe.zzxb();
        }
    }
}
