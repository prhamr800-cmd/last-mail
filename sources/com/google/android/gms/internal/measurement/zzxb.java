package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
final class zzxb {
    private static final zzwz zzcbq = zzxs();
    private static final zzwz zzcbr = new zzxa();

    static zzwz zzxq() {
        return zzcbq;
    }

    static zzwz zzxr() {
        return zzcbr;
    }

    private static zzwz zzxs() {
        try {
            return (zzwz) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
