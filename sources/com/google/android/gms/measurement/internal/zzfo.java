package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
final class zzfo implements Callable<String> {
    private final /* synthetic */ zzi zzaqv;
    private final /* synthetic */ zzfk zzaur;

    zzfo(zzfk zzfkVar, zzi zziVar) {
        this.zzaur = zzfkVar;
        this.zzaqv = zziVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        zzg zzgVarZzg = this.zzaur.zzgv().zzbc(this.zzaqv.packageName) ? this.zzaur.zzg(this.zzaqv) : this.zzaur.zzjt().zzbo(this.zzaqv.packageName);
        if (zzgVarZzg != null) {
            return zzgVarZzg.getAppInstanceId();
        }
        this.zzaur.zzgt().zzjj().zzca("App info was null when attempting to get app instance id");
        return null;
    }
}
