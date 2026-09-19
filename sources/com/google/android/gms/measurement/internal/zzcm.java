package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
final class zzcm implements Callable<List<zzft>> {
    private final /* synthetic */ zzi zzaqv;
    private final /* synthetic */ zzbw zzaqw;

    zzcm(zzbw zzbwVar, zzi zziVar) {
        this.zzaqw = zzbwVar;
        this.zzaqv = zziVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzft> call() throws Exception {
        this.zzaqw.zzang.zzme();
        return this.zzaqw.zzang.zzjt().zzbn(this.zzaqv.packageName);
    }
}
