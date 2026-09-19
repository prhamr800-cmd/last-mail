package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
final class zzeb implements Runnable {
    private final /* synthetic */ zzi zzaqv;
    private final /* synthetic */ zzdz zzasv;

    zzeb(zzdz zzdzVar, zzi zziVar) {
        this.zzasv = zzdzVar;
        this.zzaqv = zziVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzah zzahVar = this.zzasv.zzasp;
        if (zzahVar == null) {
            this.zzasv.zzgt().zzjg().zzca("Failed to reset data on the service; null service");
            return;
        }
        try {
            zzahVar.zzd(this.zzaqv);
        } catch (RemoteException e) {
            this.zzasv.zzgt().zzjg().zzg("Failed to reset data on the service", e);
        }
        this.zzasv.zzcy();
    }
}
