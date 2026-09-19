package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzfh extends zzw {
    private final /* synthetic */ zzfk zzatk;
    private final /* synthetic */ zzfg zzats;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfh(zzfg zzfgVar, zzcr zzcrVar, zzfk zzfkVar) {
        super(zzcrVar);
        this.zzats = zzfgVar;
        this.zzatk = zzfkVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzw
    public final void run() {
        this.zzats.cancel();
        this.zzats.zzgt().zzjo().zzca("Starting upload from DelayedRunnable");
        this.zzatk.zzlz();
    }
}
