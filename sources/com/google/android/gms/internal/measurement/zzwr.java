package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zzwr extends zzwo {
    private zzwr() {
        super();
    }

    @Override // com.google.android.gms.internal.measurement.zzwo
    final <L> List<L> zza(Object obj, long j) {
        zzwd zzwdVarZzd = zzd(obj, j);
        if (zzwdVarZzd.zzug()) {
            return zzwdVarZzd;
        }
        int size = zzwdVarZzd.size();
        zzwd zzwdVarZzak = zzwdVarZzd.zzak(size == 0 ? 10 : size << 1);
        zzys.zza(obj, j, zzwdVarZzak);
        return zzwdVarZzak;
    }

    @Override // com.google.android.gms.internal.measurement.zzwo
    final void zzb(Object obj, long j) {
        zzd(obj, j).zzsw();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.measurement.zzwd] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r6v1, types: [com.google.android.gms.internal.measurement.zzwd, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // com.google.android.gms.internal.measurement.zzwo
    final <E> void zza(Object obj, Object obj2, long j) {
        zzwd zzwdVarZzd = zzd(obj, j);
        ?? Zzd = zzd(obj2, j);
        int size = zzwdVarZzd.size();
        int size2 = Zzd.size();
        ?? r0 = zzwdVarZzd;
        r0 = zzwdVarZzd;
        if (size > 0 && size2 > 0) {
            boolean zZzug = zzwdVarZzd.zzug();
            ?? Zzak = zzwdVarZzd;
            if (!zZzug) {
                Zzak = zzwdVarZzd.zzak(size2 + size);
            }
            Zzak.addAll(Zzd);
            r0 = Zzak;
        }
        if (size > 0) {
            Zzd = r0;
        }
        zzys.zza(obj, j, (Object) Zzd);
    }

    private static <E> zzwd<E> zzd(Object obj, long j) {
        return (zzwd) zzys.zzp(obj, j);
    }
}
