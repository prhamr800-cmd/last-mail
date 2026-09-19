package com.google.android.gms.measurement.internal;

import android.support.annotation.WorkerThread;

/* JADX INFO: loaded from: classes2.dex */
final class zzfb extends zzw {
    private final /* synthetic */ zzez zzatq;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfb(zzez zzezVar, zzcr zzcrVar) {
        super(zzcrVar);
        this.zzatq = zzezVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzw
    @WorkerThread
    public final void run() {
        this.zzatq.zzlq();
    }
}
