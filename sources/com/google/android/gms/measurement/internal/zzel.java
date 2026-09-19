package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzel implements Runnable {
    private final /* synthetic */ String zzaeh;
    private final /* synthetic */ String zzaeo;
    private final /* synthetic */ boolean zzaev;
    private final /* synthetic */ zzi zzaqv;
    private final /* synthetic */ String zzaqy;
    private final /* synthetic */ zzdz zzasv;
    private final /* synthetic */ AtomicReference zzasw;

    zzel(zzdz zzdzVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z, zzi zziVar) {
        this.zzasv = zzdzVar;
        this.zzasw = atomicReference;
        this.zzaqy = str;
        this.zzaeh = str2;
        this.zzaeo = str3;
        this.zzaev = z;
        this.zzaqv = zziVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzah zzahVar;
        synchronized (this.zzasw) {
            try {
                zzahVar = this.zzasv.zzasp;
            } catch (RemoteException e) {
                this.zzasv.zzgt().zzjg().zzd("Failed to get user properties", zzaq.zzby(this.zzaqy), this.zzaeh, e);
                this.zzasw.set(Collections.emptyList());
            } finally {
                this.zzasw.notify();
            }
            if (zzahVar == null) {
                this.zzasv.zzgt().zzjg().zzd("Failed to get user properties", zzaq.zzby(this.zzaqy), this.zzaeh, this.zzaeo);
                this.zzasw.set(Collections.emptyList());
            } else {
                if (TextUtils.isEmpty(this.zzaqy)) {
                    this.zzasw.set(zzahVar.zza(this.zzaeh, this.zzaeo, this.zzaev, this.zzaqv));
                } else {
                    this.zzasw.set(zzahVar.zza(this.zzaqy, this.zzaeh, this.zzaeo, this.zzaev));
                }
                this.zzasv.zzcy();
            }
        }
    }
}
