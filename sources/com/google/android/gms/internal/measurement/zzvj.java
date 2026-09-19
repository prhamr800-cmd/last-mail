package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
final class zzvj {
    private static final Class<?> zzbwd = zzvu();

    private static Class<?> zzvu() {
        try {
            return Class.forName("com.google.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    public static zzvk zzvv() {
        if (zzbwd != null) {
            try {
                return zzgg("getEmptyRegistry");
            } catch (Exception e) {
            }
        }
        return zzvk.zzbwh;
    }

    static zzvk zzvw() {
        zzvk zzvkVarZzgg;
        if (zzbwd != null) {
            try {
                zzvkVarZzgg = zzgg("loadGeneratedRegistry");
            } catch (Exception e) {
                zzvkVarZzgg = null;
            }
        } else {
            zzvkVarZzgg = null;
        }
        if (zzvkVarZzgg == null) {
            zzvkVarZzgg = zzvk.zzvw();
        }
        return zzvkVarZzgg == null ? zzvv() : zzvkVarZzgg;
    }

    private static final zzvk zzgg(String str) throws Exception {
        return (zzvk) zzbwd.getDeclaredMethod(str, new Class[0]).invoke(null, new Object[0]);
    }
}
