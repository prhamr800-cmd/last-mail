package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvx;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzvm extends zzvl<Object> {
    zzvm() {
    }

    @Override // com.google.android.gms.internal.measurement.zzvl
    final boolean zze(zzxe zzxeVar) {
        return zzxeVar instanceof zzvx.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzvl
    final zzvo<Object> zzw(Object obj) {
        return ((zzvx.zzc) obj).zzbzn;
    }

    @Override // com.google.android.gms.internal.measurement.zzvl
    final void zza(Object obj, zzvo<Object> zzvoVar) {
        ((zzvx.zzc) obj).zzbzn = zzvoVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzvl
    final zzvo<Object> zzx(Object obj) {
        zzvo<Object> zzvoVarZzw = zzw(obj);
        if (zzvoVarZzw.isImmutable()) {
            zzvo<Object> zzvoVar = (zzvo) zzvoVarZzw.clone();
            zza(obj, zzvoVar);
            return zzvoVar;
        }
        return zzvoVarZzw;
    }

    @Override // com.google.android.gms.internal.measurement.zzvl
    final void zzy(Object obj) {
        zzw(obj).zzsw();
    }

    @Override // com.google.android.gms.internal.measurement.zzvl
    final <UT, UB> UB zza(zzxt zzxtVar, Object obj, zzvk zzvkVar, zzvo<Object> zzvoVar, UB ub, zzym<UT, UB> zzymVar) throws IOException {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.measurement.zzvl
    final int zzb(Map.Entry<?, ?> entry) {
        entry.getKey();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.measurement.zzvl
    final void zza(zzzh zzzhVar, Map.Entry<?, ?> entry) throws IOException {
        entry.getKey();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.measurement.zzvl
    final Object zza(zzvk zzvkVar, zzxe zzxeVar, int i) {
        return zzvkVar.zza(zzxeVar, i);
    }

    @Override // com.google.android.gms.internal.measurement.zzvl
    final void zza(zzxt zzxtVar, Object obj, zzvk zzvkVar, zzvo<Object> zzvoVar) throws IOException {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.measurement.zzvl
    final void zza(zzun zzunVar, Object obj, zzvk zzvkVar, zzvo<Object> zzvoVar) throws IOException {
        throw new NoSuchMethodError();
    }
}
