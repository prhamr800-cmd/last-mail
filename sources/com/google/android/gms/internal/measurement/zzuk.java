package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
final class zzuk {
    private static final Class<?> zzbuq = zzgb("libcore.io.Memory");
    private static final boolean zzbur;

    static boolean zzui() {
        return (zzbuq == null || zzbur) ? false : true;
    }

    static Class<?> zzuj() {
        return zzbuq;
    }

    private static <T> Class<T> zzgb(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    static {
        zzbur = zzgb("org.robolectric.Robolectric") != null;
    }
}
