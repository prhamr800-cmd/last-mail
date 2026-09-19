package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
final class zzxn {
    private static final zzxl zzccl = zzxz();
    private static final zzxl zzccm = new zzxm();

    static zzxl zzxx() {
        return zzccl;
    }

    static zzxl zzxy() {
        return zzccm;
    }

    private static zzxl zzxz() {
        try {
            return (zzxl) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
