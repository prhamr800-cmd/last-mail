package com.google.android.gms.measurement.internal;

import android.content.ComponentName;

/* JADX INFO: loaded from: classes2.dex */
final class zzeq implements Runnable {
    private final /* synthetic */ ComponentName val$name;
    private final /* synthetic */ zzeo zzate;

    zzeq(zzeo zzeoVar, ComponentName componentName) {
        this.zzate = zzeoVar;
        this.val$name = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzate.zzasv.onServiceDisconnected(this.val$name);
    }
}
