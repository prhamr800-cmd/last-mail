package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzer implements Runnable {
    private final /* synthetic */ zzeo zzate;
    private final /* synthetic */ zzah zzatf;

    zzer(zzeo zzeoVar, zzah zzahVar) {
        this.zzate = zzeoVar;
        this.zzatf = zzahVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzate) {
            zzeo.zza(this.zzate, false);
            if (!this.zzate.zzasv.isConnected()) {
                this.zzate.zzasv.zzgt().zzjn().zzca("Connected to remote service");
                this.zzate.zzasv.zza(this.zzatf);
            }
        }
    }
}
