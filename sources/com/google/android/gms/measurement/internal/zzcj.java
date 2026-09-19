package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
final class zzcj implements Callable<byte[]> {
    private final /* synthetic */ zzbw zzaqw;
    private final /* synthetic */ String zzaqy;
    private final /* synthetic */ zzae zzaqz;

    zzcj(zzbw zzbwVar, zzae zzaeVar, String str) {
        this.zzaqw = zzbwVar;
        this.zzaqz = zzaeVar;
        this.zzaqy = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ byte[] call() throws Exception {
        this.zzaqw.zzang.zzme();
        return this.zzaqw.zzang.zzlw().zzb(this.zzaqz, this.zzaqy);
    }
}
