package com.google.android.gms.internal.measurement;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
final class zzsz extends zzsx<Integer> {
    zzsz(zztd zztdVar, String str, Integer num) {
        super(zztdVar, str, num, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.zzsx
    /* JADX INFO: renamed from: zzu, reason: merged with bridge method [inline-methods] */
    public final Integer zzs(Object obj) {
        if (obj instanceof Integer) {
            return (Integer) obj;
        }
        if (obj instanceof Long) {
            return Integer.valueOf(((Long) obj).intValue());
        }
        if (obj instanceof String) {
            try {
                return Integer.valueOf(Integer.parseInt((String) obj));
            } catch (NumberFormatException e) {
            }
        }
        String strZztr = super.zztr();
        String strValueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(strZztr).length() + 24 + String.valueOf(strValueOf).length());
        sb.append("Invalid int value for ");
        sb.append(strZztr);
        sb.append(": ");
        sb.append(strValueOf);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
