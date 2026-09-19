package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
final class zzed implements Runnable {
    private final /* synthetic */ com.google.android.gms.internal.measurement.zzef zzagv;
    private final /* synthetic */ zzi zzaqv;
    private final /* synthetic */ zzdz zzasv;

    zzed(zzdz zzdzVar, zzi zziVar, com.google.android.gms.internal.measurement.zzef zzefVar) {
        this.zzasv = zzdzVar;
        this.zzaqv = zziVar;
        this.zzagv = zzefVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        String strZzc;
        Throwable th;
        RemoteException e;
        try {
            zzah zzahVar = this.zzasv.zzasp;
            if (zzahVar == null) {
                this.zzasv.zzgt().zzjg().zzca("Failed to get app instance id");
                this.zzasv.zzgr().zzb(this.zzagv, null);
                return;
            }
            strZzc = zzahVar.zzc(this.zzaqv);
            if (strZzc != null) {
                try {
                    try {
                        this.zzasv.zzgj().zzcr(strZzc);
                        this.zzasv.zzgu().zzans.zzcf(strZzc);
                    } catch (RemoteException e2) {
                        e = e2;
                        this.zzasv.zzgt().zzjg().zzg("Failed to get app instance id", e);
                        this.zzasv.zzgr().zzb(this.zzagv, strZzc);
                        return;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    this.zzasv.zzgr().zzb(this.zzagv, strZzc);
                    throw th;
                }
            }
            this.zzasv.zzcy();
            this.zzasv.zzgr().zzb(this.zzagv, strZzc);
        } catch (RemoteException e3) {
            strZzc = null;
            e = e3;
        } catch (Throwable th3) {
            strZzc = null;
            th = th3;
            this.zzasv.zzgr().zzb(this.zzagv, strZzc);
            throw th;
        }
    }
}
