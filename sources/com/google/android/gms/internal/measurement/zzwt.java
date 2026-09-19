package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvx;

/* JADX INFO: loaded from: classes2.dex */
final class zzwt implements zzxv {
    private static final zzxd zzcbk = new zzwu();
    private final zzxd zzcbj;

    public zzwt() {
        this(new zzwv(zzvw.zzwl(), zzxm()));
    }

    private zzwt(zzxd zzxdVar) {
        this.zzcbj = (zzxd) zzvz.zza(zzxdVar, "messageInfoFactory");
    }

    @Override // com.google.android.gms.internal.measurement.zzxv
    public final <T> zzxu<T> zzh(Class<T> cls) {
        zzxw.zzj(cls);
        zzxc zzxcVarZzf = this.zzcbj.zzf(cls);
        if (zzxcVarZzf.zzxu()) {
            if (zzvx.class.isAssignableFrom(cls)) {
                return zzxj.zza(zzxw.zzyg(), zzvn.zzwb(), zzxcVarZzf.zzxv());
            }
            return zzxj.zza(zzxw.zzye(), zzvn.zzwc(), zzxcVarZzf.zzxv());
        }
        if (zzvx.class.isAssignableFrom(cls)) {
            if (zza(zzxcVarZzf)) {
                return zzxi.zza(cls, zzxcVarZzf, zzxn.zzxy(), zzwo.zzxl(), zzxw.zzyg(), zzvn.zzwb(), zzxb.zzxr());
            }
            return zzxi.zza(cls, zzxcVarZzf, zzxn.zzxy(), zzwo.zzxl(), zzxw.zzyg(), null, zzxb.zzxr());
        }
        if (zza(zzxcVarZzf)) {
            return zzxi.zza(cls, zzxcVarZzf, zzxn.zzxx(), zzwo.zzxk(), zzxw.zzye(), zzvn.zzwc(), zzxb.zzxq());
        }
        return zzxi.zza(cls, zzxcVarZzf, zzxn.zzxx(), zzwo.zzxk(), zzxw.zzyf(), null, zzxb.zzxq());
    }

    private static boolean zza(zzxc zzxcVar) {
        return zzxcVar.zzxt() == zzvx.zze.zzbzw;
    }

    private static zzxd zzxm() {
        try {
            return (zzxd) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return zzcbk;
        }
    }
}
