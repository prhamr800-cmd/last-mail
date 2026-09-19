package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.support.annotation.GuardedBy;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.measurement.AppMeasurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaq extends zzcq {
    private long zzadt;
    private char zzamd;

    @GuardedBy("this")
    private String zzame;
    private final zzas zzamf;
    private final zzas zzamg;
    private final zzas zzamh;
    private final zzas zzami;
    private final zzas zzamj;
    private final zzas zzamk;
    private final zzas zzaml;
    private final zzas zzamm;
    private final zzas zzamn;

    zzaq(zzbu zzbuVar) {
        super(zzbuVar);
        this.zzamd = (char) 0;
        this.zzadt = -1L;
        this.zzamf = new zzas(this, 6, false, false);
        this.zzamg = new zzas(this, 6, true, false);
        this.zzamh = new zzas(this, 6, false, true);
        this.zzami = new zzas(this, 5, false, false);
        this.zzamj = new zzas(this, 5, true, false);
        this.zzamk = new zzas(this, 5, false, true);
        this.zzaml = new zzas(this, 4, false, false);
        this.zzamm = new zzas(this, 3, false, false);
        this.zzamn = new zzas(this, 2, false, false);
    }

    public final zzas zzjg() {
        return this.zzamf;
    }

    public final zzas zzjh() {
        return this.zzamg;
    }

    public final zzas zzji() {
        return this.zzamh;
    }

    public final zzas zzjj() {
        return this.zzami;
    }

    public final zzas zzjk() {
        return this.zzamj;
    }

    public final zzas zzjl() {
        return this.zzamk;
    }

    public final zzas zzjm() {
        return this.zzaml;
    }

    public final zzas zzjn() {
        return this.zzamm;
    }

    public final zzas zzjo() {
        return this.zzamn;
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    protected final boolean zzgy() {
        return false;
    }

    protected static Object zzby(String str) {
        if (str == null) {
            return null;
        }
        return new zzat(str);
    }

    protected final void zza(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && isLoggable(i)) {
            zza(i, zza(false, str, obj, obj2, obj3));
        }
        if (!z2 && i >= 5) {
            Preconditions.checkNotNull(str);
            zzbp zzbpVarZzkl = this.zzadp.zzkl();
            if (zzbpVarZzkl == null) {
                zza(6, "Scheduler not set. Not logging error/warn");
            } else {
                if (!zzbpVarZzkl.isInitialized()) {
                    zza(6, "Scheduler not initialized. Not logging error/warn");
                    return;
                }
                if (i < 0) {
                    i = 0;
                }
                zzbpVarZzkl.zzc(new zzar(this, i >= 9 ? 8 : i, str, obj, obj2, obj3));
            }
        }
    }

    @VisibleForTesting
    protected final boolean isLoggable(int i) {
        return Log.isLoggable(zzjp(), i);
    }

    @VisibleForTesting
    protected final void zza(int i, String str) {
        Log.println(i, zzjp(), str);
    }

    @VisibleForTesting
    private final String zzjp() {
        String str;
        synchronized (this) {
            if (this.zzame == null) {
                if (this.zzadp.zzkq() != null) {
                    this.zzame = this.zzadp.zzkq();
                } else {
                    this.zzame = zzo.zzhy();
                }
            }
            str = this.zzame;
        }
        return str;
    }

    static String zza(boolean z, String str, Object obj, Object obj2, Object obj3) {
        if (str == null) {
            str = "";
        }
        String strZza = zza(z, obj);
        String strZza2 = zza(z, obj2);
        String strZza3 = zza(z, obj3);
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        if (!TextUtils.isEmpty(strZza)) {
            sb.append(str2);
            sb.append(strZza);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(strZza2)) {
            sb.append(str2);
            sb.append(strZza2);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(strZza3)) {
            sb.append(str2);
            sb.append(strZza3);
        }
        return sb.toString();
    }

    @VisibleForTesting
    private static String zza(boolean z, Object obj) {
        String className;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            if (!z) {
                return String.valueOf(obj);
            }
            Long l = (Long) obj;
            if (Math.abs(l.longValue()) < 100) {
                return String.valueOf(obj);
            }
            String str = String.valueOf(obj).charAt(0) == '-' ? "-" : "";
            String strValueOf = String.valueOf(Math.abs(l.longValue()));
            long jRound = Math.round(Math.pow(10.0d, strValueOf.length() - 1));
            long jRound2 = Math.round(Math.pow(10.0d, strValueOf.length()) - 1.0d);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 43 + String.valueOf(str).length());
            sb.append(str);
            sb.append(jRound);
            sb.append("...");
            sb.append(str);
            sb.append(jRound2);
            return sb.toString();
        }
        if (obj instanceof Boolean) {
            return String.valueOf(obj);
        }
        if (obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
            String strZzbz = zzbz(AppMeasurement.class.getCanonicalName());
            String strZzbz2 = zzbz(zzbu.class.getCanonicalName());
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null) {
                    String strZzbz3 = zzbz(className);
                    if (strZzbz3.equals(strZzbz) || strZzbz3.equals(strZzbz2)) {
                        sb2.append(": ");
                        sb2.append(stackTraceElement);
                        break;
                    }
                }
            }
            return sb2.toString();
        }
        if (obj instanceof zzat) {
            return ((zzat) obj).zzamw;
        }
        if (z) {
            return "-";
        }
        return String.valueOf(obj);
    }

    private static String zzbz(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf == -1) {
            return str;
        }
        return str.substring(0, iLastIndexOf);
    }

    public final String zzjq() {
        Pair<String, Long> pairZzfm = zzgu().zzank.zzfm();
        if (pairZzfm == null || pairZzfm == zzbb.zzanj) {
            return null;
        }
        String strValueOf = String.valueOf(pairZzfm.second);
        String str = (String) pairZzfm.first;
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 1 + String.valueOf(str).length());
        sb.append(strValueOf);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgf() {
        super.zzgf();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgg() {
        super.zzgg();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgh() {
        super.zzgh();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzaf() {
        super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzy zzgp() {
        return super.zzgp();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ Clock zzbx() {
        return super.zzbx();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzao zzgq() {
        return super.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzfu zzgr() {
        return super.zzgr();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ zzbp zzgs() {
        return super.zzgs();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ zzaq zzgt() {
        return super.zzgt();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzbb zzgu() {
        return super.zzgu();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzo zzgv() {
        return super.zzgv();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ zzl zzgw() {
        return super.zzgw();
    }
}
