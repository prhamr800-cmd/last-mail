package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.support.annotation.MainThread;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbi implements ServiceConnection {
    private final String packageName;
    final /* synthetic */ zzbh zzaok;

    zzbi(zzbh zzbhVar, String str) {
        this.zzaok = zzbhVar;
        this.packageName = str;
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.zzaok.zzadp.zzgt().zzjj().zzca("Install Referrer connection returned with null binder");
            return;
        }
        try {
            com.google.android.gms.internal.measurement.zzu zzuVarZza = com.google.android.gms.internal.measurement.zzv.zza(iBinder);
            if (zzuVarZza == null) {
                this.zzaok.zzadp.zzgt().zzjj().zzca("Install Referrer Service implementation was not found");
            } else {
                this.zzaok.zzadp.zzgt().zzjm().zzca("Install Referrer Service connected");
                this.zzaok.zzadp.zzgs().zzc(new zzbj(this, zzuVarZza, this));
            }
        } catch (Exception e) {
            this.zzaok.zzadp.zzgt().zzjj().zzg("Exception occurred while calling Install Referrer API", e);
        }
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        this.zzaok.zzadp.zzgt().zzjm().zzca("Install Referrer Service disconnected");
    }
}
