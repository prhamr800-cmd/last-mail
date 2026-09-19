package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzec implements Runnable {
    private final /* synthetic */ zzi zzaqv;
    private final /* synthetic */ zzdz zzasv;
    private final /* synthetic */ AtomicReference zzasw;

    zzec(zzdz zzdzVar, AtomicReference atomicReference, zzi zziVar) {
        this.zzasv = zzdzVar;
        this.zzasw = atomicReference;
        this.zzaqv = zziVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzah zzahVar;
        synchronized (this.zzasw) {
            try {
                try {
                    zzahVar = this.zzasv.zzasp;
                } catch (RemoteException e) {
                    this.zzasv.zzgt().zzjg().zzg("Failed to get app instance id", e);
                }
                if (zzahVar == null) {
                    this.zzasv.zzgt().zzjg().zzca("Failed to get app instance id");
                    return;
                }
                this.zzasw.set(zzahVar.zzc(this.zzaqv));
                String str = (String) this.zzasw.get();
                if (str != null) {
                    this.zzasv.zzgj().zzcr(str);
                    this.zzasv.zzgu().zzans.zzcf(str);
                }
                this.zzasv.zzcy();
                this.zzasw.notify();
            } finally {
                this.zzasw.notify();
            }
        }
    }
}
