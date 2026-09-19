package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzfm implements zzaw {
    private final /* synthetic */ zzfk zzaur;
    private final /* synthetic */ String zzaus;

    zzfm(zzfk zzfkVar, String str) {
        this.zzaur = zzfkVar;
        this.zzaus = str;
    }

    @Override // com.google.android.gms.measurement.internal.zzaw
    public final void zza(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.zzaur.zza(i, th, bArr, this.zzaus);
    }
}
