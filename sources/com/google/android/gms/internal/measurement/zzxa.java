package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzxa implements zzwz {
    zzxa() {
    }

    @Override // com.google.android.gms.internal.measurement.zzwz
    public final Map<?, ?> zzac(Object obj) {
        return (zzwy) obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzwz
    public final zzwx<?, ?> zzah(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.measurement.zzwz
    public final Map<?, ?> zzad(Object obj) {
        return (zzwy) obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzwz
    public final boolean zzae(Object obj) {
        return !((zzwy) obj).isMutable();
    }

    @Override // com.google.android.gms.internal.measurement.zzwz
    public final Object zzaf(Object obj) {
        ((zzwy) obj).zzsw();
        return obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzwz
    public final Object zzag(Object obj) {
        return zzwy.zzxn().zzxo();
    }

    @Override // com.google.android.gms.internal.measurement.zzwz
    public final Object zzc(Object obj, Object obj2) {
        zzwy zzwyVarZzxo = (zzwy) obj;
        zzwy zzwyVar = (zzwy) obj2;
        if (!zzwyVar.isEmpty()) {
            if (!zzwyVarZzxo.isMutable()) {
                zzwyVarZzxo = zzwyVarZzxo.zzxo();
            }
            zzwyVarZzxo.zza(zzwyVar);
        }
        return zzwyVarZzxo;
    }

    @Override // com.google.android.gms.internal.measurement.zzwz
    public final int zzb(int i, Object obj, Object obj2) {
        zzwy zzwyVar = (zzwy) obj;
        if (zzwyVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzwyVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }
}
