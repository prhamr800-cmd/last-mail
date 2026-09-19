package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzdb implements Runnable {
    private final /* synthetic */ String val$name;
    private final /* synthetic */ String zzaeh;
    private final /* synthetic */ zzcy zzarr;
    private final /* synthetic */ long zzars;
    private final /* synthetic */ Object zzarw;

    zzdb(zzcy zzcyVar, String str, String str2, Object obj, long j) {
        this.zzarr = zzcyVar;
        this.zzaeh = str;
        this.val$name = str2;
        this.zzarw = obj;
        this.zzars = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzarr.zza(this.zzaeh, this.val$name, this.zzarw, this.zzars);
    }
}
