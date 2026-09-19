package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
final class zzwv implements zzxd {
    private zzxd[] zzcbl;

    zzwv(zzxd... zzxdVarArr) {
        this.zzcbl = zzxdVarArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzxd
    public final boolean zze(Class<?> cls) {
        for (zzxd zzxdVar : this.zzcbl) {
            if (zzxdVar.zze(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzxd
    public final zzxc zzf(Class<?> cls) {
        for (zzxd zzxdVar : this.zzcbl) {
            if (zzxdVar.zze(cls)) {
                return zzxdVar.zzf(cls);
            }
        }
        String strValueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(strValueOf.length() != 0 ? "No factory is available for message type: ".concat(strValueOf) : new String("No factory is available for message type: "));
    }
}
