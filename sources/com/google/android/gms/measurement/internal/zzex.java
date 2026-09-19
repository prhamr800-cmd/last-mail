package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzex implements Runnable {
    private final /* synthetic */ Runnable zzacf;
    private final /* synthetic */ zzfk zzatk;

    zzex(zzeu zzeuVar, zzfk zzfkVar, Runnable runnable) {
        this.zzatk = zzfkVar;
        this.zzacf = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzatk.zzme();
        this.zzatk.zzg(this.zzacf);
        this.zzatk.zzlz();
    }
}
