package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzfn implements zzaw {
    private final /* synthetic */ zzfk zzaur;

    zzfn(zzfk zzfkVar) {
        this.zzaur = zzfkVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzaw
    public final void zza(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.zzaur.zzb(str, i, th, bArr, map);
    }
}
