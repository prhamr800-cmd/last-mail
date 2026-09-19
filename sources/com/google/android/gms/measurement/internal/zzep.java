package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzep implements Runnable {
    private final /* synthetic */ zzah zzatd;
    private final /* synthetic */ zzeo zzate;

    zzep(zzeo zzeoVar, zzah zzahVar) {
        this.zzate = zzeoVar;
        this.zzatd = zzahVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzate) {
            zzeo.zza(this.zzate, false);
            if (!this.zzate.zzasv.isConnected()) {
                this.zzate.zzasv.zzgt().zzjo().zzca("Connected to service");
                this.zzate.zzasv.zza(this.zzatd);
            }
        }
    }
}
