package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
final class zzee implements Runnable {
    private final /* synthetic */ zzi zzaqv;
    private final /* synthetic */ zzdz zzasv;

    zzee(zzdz zzdzVar, zzi zziVar) {
        this.zzasv = zzdzVar;
        this.zzaqv = zziVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzah zzahVar = this.zzasv.zzasp;
        if (zzahVar == null) {
            this.zzasv.zzgt().zzjg().zzca("Discarding data. Failed to send app launch");
            return;
        }
        try {
            zzahVar.zza(this.zzaqv);
            this.zzasv.zza(zzahVar, null, this.zzaqv);
            this.zzasv.zzcy();
        } catch (RemoteException e) {
            this.zzasv.zzgt().zzjg().zzg("Failed to send app launch to the service", e);
        }
    }
}
