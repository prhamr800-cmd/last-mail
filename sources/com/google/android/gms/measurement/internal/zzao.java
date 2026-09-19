package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class zzao extends zzcq {
    private static final AtomicReference<String[]> zzama = new AtomicReference<>();
    private static final AtomicReference<String[]> zzamb = new AtomicReference<>();
    private static final AtomicReference<String[]> zzamc = new AtomicReference<>();

    zzao(zzbu zzbuVar) {
        super(zzbuVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    protected final boolean zzgy() {
        return false;
    }

    private final boolean zzjf() {
        zzgw();
        return this.zzadp.zzkn() && this.zzadp.zzgt().isLoggable(3);
    }

    @Nullable
    protected final String zzbv(String str) {
        if (str == null) {
            return null;
        }
        if (!zzjf()) {
            return str;
        }
        return zza(str, zzcs.zzare, zzcs.zzard, zzama);
    }

    @Nullable
    protected final String zzbw(String str) {
        if (str == null) {
            return null;
        }
        if (!zzjf()) {
            return str;
        }
        return zza(str, zzct.zzarg, zzct.zzarf, zzamb);
    }

    @Nullable
    protected final String zzbx(String str) {
        if (str == null) {
            return null;
        }
        if (!zzjf()) {
            return str;
        }
        if (str.startsWith("_exp_")) {
            return "experiment_id(" + str + ")";
        }
        return zza(str, zzcu.zzari, zzcu.zzarh, zzamc);
    }

    @Nullable
    private static String zza(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        Preconditions.checkNotNull(strArr);
        Preconditions.checkNotNull(strArr2);
        Preconditions.checkNotNull(atomicReference);
        Preconditions.checkArgument(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            if (zzfu.zzv(str, strArr[i])) {
                synchronized (atomicReference) {
                    String[] strArr3 = atomicReference.get();
                    if (strArr3 == null) {
                        strArr3 = new String[strArr2.length];
                        atomicReference.set(strArr3);
                    }
                    if (strArr3[i] == null) {
                        strArr3[i] = strArr2[i] + "(" + strArr[i] + ")";
                    }
                    str2 = strArr3[i];
                }
                return str2;
            }
        }
        return str;
    }

    @Nullable
    protected final String zzb(zzae zzaeVar) {
        if (zzaeVar == null) {
            return null;
        }
        if (!zzjf()) {
            return zzaeVar.toString();
        }
        return "origin=" + zzaeVar.origin + ",name=" + zzbv(zzaeVar.name) + ",params=" + zzb(zzaeVar.zzaig);
    }

    @Nullable
    protected final String zza(zzz zzzVar) {
        if (zzzVar == null) {
            return null;
        }
        if (!zzjf()) {
            return zzzVar.toString();
        }
        return "Event{appId='" + zzzVar.zztt + "', name='" + zzbv(zzzVar.name) + "', params=" + zzb(zzzVar.zzaig) + "}";
    }

    @Nullable
    private final String zzb(zzab zzabVar) {
        if (zzabVar == null) {
            return null;
        }
        if (!zzjf()) {
            return zzabVar.toString();
        }
        return zzd(zzabVar.zziy());
    }

    @Nullable
    protected final String zzd(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!zzjf()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        for (String str : bundle.keySet()) {
            if (sb.length() != 0) {
                sb.append(", ");
            } else {
                sb.append("Bundle[{");
            }
            sb.append(zzbw(str));
            sb.append("=");
            sb.append(bundle.get(str));
        }
        sb.append("}]");
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
