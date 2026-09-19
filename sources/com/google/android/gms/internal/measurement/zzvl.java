package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvq;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzvl<T extends zzvq<T>> {
    zzvl() {
    }

    abstract Object zza(zzvk zzvkVar, zzxe zzxeVar, int i);

    abstract <UT, UB> UB zza(zzxt zzxtVar, Object obj, zzvk zzvkVar, zzvo<T> zzvoVar, UB ub, zzym<UT, UB> zzymVar) throws IOException;

    abstract void zza(zzun zzunVar, Object obj, zzvk zzvkVar, zzvo<T> zzvoVar) throws IOException;

    abstract void zza(zzxt zzxtVar, Object obj, zzvk zzvkVar, zzvo<T> zzvoVar) throws IOException;

    abstract void zza(zzzh zzzhVar, Map.Entry<?, ?> entry) throws IOException;

    abstract void zza(Object obj, zzvo<T> zzvoVar);

    abstract int zzb(Map.Entry<?, ?> entry);

    abstract boolean zze(zzxe zzxeVar);

    abstract zzvo<T> zzw(Object obj);

    abstract zzvo<T> zzx(Object obj);

    abstract void zzy(Object obj);
}
