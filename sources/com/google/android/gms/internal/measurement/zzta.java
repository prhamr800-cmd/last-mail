package com.google.android.gms.internal.measurement;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
final class zzta extends zzsx<Boolean> {
    zzta(zztd zztdVar, String str, Boolean bool) {
        super(zztdVar, str, bool, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzsx
    final /* synthetic */ Boolean zzs(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (zzsj.zzbqz.matcher(str).matches()) {
                return true;
            }
            if (zzsj.zzbra.matcher(str).matches()) {
                return false;
            }
        }
        String strZztr = super.zztr();
        String strValueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(strZztr).length() + 28 + String.valueOf(strValueOf).length());
        sb.append("Invalid boolean value for ");
        sb.append(strZztr);
        sb.append(": ");
        sb.append(strValueOf);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
