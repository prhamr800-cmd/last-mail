package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzw {
    private static volatile Handler handler;
    private final zzcr zzahz;
    private final Runnable zzyo;
    private volatile long zzyp;

    zzw(zzcr zzcrVar) {
        Preconditions.checkNotNull(zzcrVar);
        this.zzahz = zzcrVar;
        this.zzyo = new zzx(this, zzcrVar);
    }

    public abstract void run();

    public final void zzh(long j) {
        cancel();
        if (j >= 0) {
            this.zzyp = this.zzahz.zzbx().currentTimeMillis();
            if (!getHandler().postDelayed(this.zzyo, j)) {
                this.zzahz.zzgt().zzjg().zzg("Failed to schedule delayed post. time", Long.valueOf(j));
            }
        }
    }

    public final boolean zzej() {
        return this.zzyp != 0;
    }

    final void cancel() {
        this.zzyp = 0L;
        getHandler().removeCallbacks(this.zzyo);
    }

    private final Handler getHandler() {
        Handler handler2;
        if (handler != null) {
            return handler;
        }
        synchronized (zzw.class) {
            if (handler == null) {
                handler = new com.google.android.gms.internal.measurement.zzea(this.zzahz.getContext().getMainLooper());
            }
            handler2 = handler;
        }
        return handler2;
    }

    static /* synthetic */ long zza(zzw zzwVar, long j) {
        zzwVar.zzyp = 0L;
        return 0L;
    }
}
