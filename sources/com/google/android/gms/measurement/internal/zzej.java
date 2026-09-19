package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
final class zzej implements Runnable {
    private final /* synthetic */ zzi zzaqv;
    private final /* synthetic */ zzdz zzasv;
    private final /* synthetic */ boolean zzasx;
    private final /* synthetic */ boolean zzasy;
    private final /* synthetic */ zzm zzasz;
    private final /* synthetic */ zzm zzata;

    zzej(zzdz zzdzVar, boolean z, boolean z2, zzm zzmVar, zzi zziVar, zzm zzmVar2) {
        this.zzasv = zzdzVar;
        this.zzasx = z;
        this.zzasy = z2;
        this.zzasz = zzmVar;
        this.zzaqv = zziVar;
        this.zzata = zzmVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzah zzahVar = this.zzasv.zzasp;
        if (zzahVar == null) {
            this.zzasv.zzgt().zzjg().zzca("Discarding data. Failed to send conditional user property to service");
            return;
        }
        if (this.zzasx) {
            this.zzasv.zza(zzahVar, this.zzasy ? null : this.zzasz, this.zzaqv);
        } else {
            try {
                if (TextUtils.isEmpty(this.zzata.packageName)) {
                    zzahVar.zza(this.zzasz, this.zzaqv);
                } else {
                    zzahVar.zzb(this.zzasz);
                }
            } catch (RemoteException e) {
                this.zzasv.zzgt().zzjg().zzg("Failed to send conditional user property to the service", e);
            }
        }
        this.zzasv.zzcy();
    }
}
