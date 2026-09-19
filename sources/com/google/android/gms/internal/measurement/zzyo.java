package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
final class zzyo extends zzym<zzyn, zzyn> {
    zzyo() {
    }

    @Override // com.google.android.gms.internal.measurement.zzym
    final boolean zza(zzxt zzxtVar) {
        return false;
    }

    private static void zza(Object obj, zzyn zzynVar) {
        ((zzvx) obj).zzbzh = zzynVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzym
    final void zzy(Object obj) {
        ((zzvx) obj).zzbzh.zzsw();
    }

    @Override // com.google.android.gms.internal.measurement.zzym
    final /* synthetic */ int zzai(zzyn zzynVar) {
        return zzynVar.zzwe();
    }

    @Override // com.google.android.gms.internal.measurement.zzym
    final /* synthetic */ int zzan(zzyn zzynVar) {
        return zzynVar.zzyu();
    }

    @Override // com.google.android.gms.internal.measurement.zzym
    final /* synthetic */ zzyn zzh(zzyn zzynVar, zzyn zzynVar2) {
        zzyn zzynVar3 = zzynVar;
        zzyn zzynVar4 = zzynVar2;
        if (zzynVar4.equals(zzyn.zzys())) {
            return zzynVar3;
        }
        return zzyn.zza(zzynVar3, zzynVar4);
    }

    @Override // com.google.android.gms.internal.measurement.zzym
    final /* synthetic */ void zzc(zzyn zzynVar, zzzh zzzhVar) throws IOException {
        zzynVar.zza(zzzhVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzym
    final /* synthetic */ void zza(zzyn zzynVar, zzzh zzzhVar) throws IOException {
        zzynVar.zzb(zzzhVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzym
    final /* synthetic */ void zzg(Object obj, zzyn zzynVar) {
        zza(obj, zzynVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzym
    final /* synthetic */ zzyn zzam(Object obj) {
        zzyn zzynVar = ((zzvx) obj).zzbzh;
        if (zzynVar == zzyn.zzys()) {
            zzyn zzynVarZzyt = zzyn.zzyt();
            zza(obj, zzynVarZzyt);
            return zzynVarZzyt;
        }
        return zzynVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzym
    final /* synthetic */ zzyn zzal(Object obj) {
        return ((zzvx) obj).zzbzh;
    }

    @Override // com.google.android.gms.internal.measurement.zzym
    final /* synthetic */ void zzf(Object obj, zzyn zzynVar) {
        zza(obj, zzynVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzym
    final /* synthetic */ zzyn zzaf(zzyn zzynVar) {
        zzyn zzynVar2 = zzynVar;
        zzynVar2.zzsw();
        return zzynVar2;
    }

    @Override // com.google.android.gms.internal.measurement.zzym
    final /* synthetic */ zzyn zzyr() {
        return zzyn.zzyt();
    }

    @Override // com.google.android.gms.internal.measurement.zzym
    final /* synthetic */ void zza(zzyn zzynVar, int i, zzyn zzynVar2) {
        zzynVar.zzb((i << 3) | 3, zzynVar2);
    }

    @Override // com.google.android.gms.internal.measurement.zzym
    final /* synthetic */ void zza(zzyn zzynVar, int i, zzun zzunVar) {
        zzynVar.zzb((i << 3) | 2, zzunVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzym
    final /* synthetic */ void zzb(zzyn zzynVar, int i, long j) {
        zzynVar.zzb((i << 3) | 1, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.measurement.zzym
    final /* synthetic */ void zzc(zzyn zzynVar, int i, int i2) {
        zzynVar.zzb((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // com.google.android.gms.internal.measurement.zzym
    final /* synthetic */ void zza(zzyn zzynVar, int i, long j) {
        zzynVar.zzb(i << 3, Long.valueOf(j));
    }
}
