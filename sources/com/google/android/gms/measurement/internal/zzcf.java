package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
final class zzcf implements Callable<List<zzm>> {
    private final /* synthetic */ String zzaeh;
    private final /* synthetic */ String zzaeo;
    private final /* synthetic */ zzbw zzaqw;
    private final /* synthetic */ String zzaqy;

    zzcf(zzbw zzbwVar, String str, String str2, String str3) {
        this.zzaqw = zzbwVar;
        this.zzaqy = str;
        this.zzaeh = str2;
        this.zzaeo = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzm> call() throws Exception {
        this.zzaqw.zzang.zzme();
        return this.zzaqw.zzang.zzjt().zzc(this.zzaqy, this.zzaeh, this.zzaeo);
    }
}
