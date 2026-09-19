package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzfd implements Runnable {
    private final /* synthetic */ long zzafv;
    private final /* synthetic */ zzez zzatq;

    zzfd(zzez zzezVar, long j) {
        this.zzatq = zzezVar;
        this.zzafv = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzatq.zzam(this.zzafv);
    }
}
