package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzvs {
    static final /* synthetic */ int[] zzbyv;
    static final /* synthetic */ int[] zzbyw = new int[zzwg.values().length];

    static {
        try {
            zzbyw[zzwg.BYTE_STRING.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            zzbyw[zzwg.MESSAGE.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            zzbyw[zzwg.STRING.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        zzbyv = new int[zzvt.values().length];
        try {
            zzbyv[zzvt.MAP.ordinal()] = 1;
        } catch (NoSuchFieldError e4) {
        }
        try {
            zzbyv[zzvt.VECTOR.ordinal()] = 2;
        } catch (NoSuchFieldError e5) {
        }
        try {
            zzbyv[zzvt.SCALAR.ordinal()] = 3;
        } catch (NoSuchFieldError e6) {
        }
    }
}
