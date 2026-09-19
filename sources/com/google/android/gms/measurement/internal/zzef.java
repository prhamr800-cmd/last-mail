package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
final class zzef implements Runnable {
    private final /* synthetic */ zzdv zzasn;
    private final /* synthetic */ zzdz zzasv;

    zzef(zzdz zzdzVar, zzdv zzdvVar) {
        this.zzasv = zzdzVar;
        this.zzasn = zzdvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzah zzahVar = this.zzasv.zzasp;
        if (zzahVar == null) {
            this.zzasv.zzgt().zzjg().zzca("Failed to send current screen to service");
            return;
        }
        try {
            if (this.zzasn == null) {
                zzahVar.zza(0L, (String) null, (String) null, this.zzasv.getContext().getPackageName());
            } else {
                zzahVar.zza(this.zzasn.zzasb, this.zzasn.zzuw, this.zzasn.zzasa, this.zzasv.getContext().getPackageName());
            }
            this.zzasv.zzcy();
        } catch (RemoteException e) {
            this.zzasv.zzgt().zzjg().zzg("Failed to send current screen to the service", e);
        }
    }
}
