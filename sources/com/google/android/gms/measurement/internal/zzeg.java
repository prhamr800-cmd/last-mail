package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
final class zzeg extends zzw {
    private final /* synthetic */ zzdz zzasv;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzeg(zzdz zzdzVar, zzcr zzcrVar) {
        super(zzcrVar);
        this.zzasv = zzdzVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzw
    public final void run() {
        this.zzasv.zzgt().zzjj().zzca("Tasks have been queued for a long time");
    }
}
