package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzww<K, V> {
    static <K, V> void zza(zzve zzveVar, zzwx<K, V> zzwxVar, K k, V v) throws IOException {
        zzvo.zza(zzveVar, zzwxVar.zzcbm, 1, k);
        zzvo.zza(zzveVar, zzwxVar.zzcbo, 2, v);
    }

    static <K, V> int zza(zzwx<K, V> zzwxVar, K k, V v) {
        return zzvo.zza(zzwxVar.zzcbm, 1, k) + zzvo.zza(zzwxVar.zzcbo, 2, v);
    }
}
