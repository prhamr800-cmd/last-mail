package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzen implements Runnable {
    private final /* synthetic */ boolean zzaev;
    private final /* synthetic */ zzi zzaqv;
    private final /* synthetic */ zzdz zzasv;
    private final /* synthetic */ AtomicReference zzasw;

    zzen(zzdz zzdzVar, AtomicReference atomicReference, zzi zziVar, boolean z) {
        this.zzasv = zzdzVar;
        this.zzasw = atomicReference;
        this.zzaqv = zziVar;
        this.zzaev = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzah zzahVar;
        synchronized (this.zzasw) {
            try {
                try {
                    zzahVar = this.zzasv.zzasp;
                } catch (RemoteException e) {
                    this.zzasv.zzgt().zzjg().zzg("Failed to get user properties", e);
                }
                if (zzahVar == null) {
                    this.zzasv.zzgt().zzjg().zzca("Failed to get user properties");
                    return;
                }
                this.zzasw.set(zzahVar.zza(this.zzaqv, this.zzaev));
                this.zzasv.zzcy();
                this.zzasw.notify();
            } finally {
                this.zzasw.notify();
            }
        }
    }
}
