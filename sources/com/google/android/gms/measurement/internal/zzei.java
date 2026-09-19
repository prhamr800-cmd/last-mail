package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
final class zzei implements Runnable {
    private final /* synthetic */ zzi zzaqv;
    private final /* synthetic */ String zzaqy;
    private final /* synthetic */ zzae zzaqz;
    private final /* synthetic */ zzdz zzasv;
    private final /* synthetic */ boolean zzasx;
    private final /* synthetic */ boolean zzasy;

    zzei(zzdz zzdzVar, boolean z, boolean z2, zzae zzaeVar, zzi zziVar, String str) {
        this.zzasv = zzdzVar;
        this.zzasx = z;
        this.zzasy = z2;
        this.zzaqz = zzaeVar;
        this.zzaqv = zziVar;
        this.zzaqy = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzah zzahVar = this.zzasv.zzasp;
        if (zzahVar == null) {
            this.zzasv.zzgt().zzjg().zzca("Discarding data. Failed to send event to service");
            return;
        }
        if (this.zzasx) {
            this.zzasv.zza(zzahVar, this.zzasy ? null : this.zzaqz, this.zzaqv);
        } else {
            try {
                if (TextUtils.isEmpty(this.zzaqy)) {
                    zzahVar.zza(this.zzaqz, this.zzaqv);
                } else {
                    zzahVar.zza(this.zzaqz, this.zzaqy, this.zzasv.zzgt().zzjq());
                }
            } catch (RemoteException e) {
                this.zzasv.zzgt().zzjg().zzg("Failed to send event to the service", e);
            }
        }
        this.zzasv.zzcy();
    }
}
