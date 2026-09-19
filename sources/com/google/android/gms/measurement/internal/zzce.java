package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
final class zzce implements Callable<List<zzm>> {
    private final /* synthetic */ String zzaeh;
    private final /* synthetic */ String zzaeo;
    private final /* synthetic */ zzi zzaqv;
    private final /* synthetic */ zzbw zzaqw;

    zzce(zzbw zzbwVar, zzi zziVar, String str, String str2) {
        this.zzaqw = zzbwVar;
        this.zzaqv = zziVar;
        this.zzaeh = str;
        this.zzaeo = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzm> call() throws Exception {
        this.zzaqw.zzang.zzme();
        return this.zzaqw.zzang.zzjt().zzc(this.zzaqv.packageName, this.zzaeh, this.zzaeo);
    }
}
