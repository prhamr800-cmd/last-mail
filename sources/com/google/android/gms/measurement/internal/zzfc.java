package com.google.android.gms.measurement.internal;

import android.support.annotation.WorkerThread;

/* JADX INFO: loaded from: classes2.dex */
final class zzfc extends zzw {
    private final /* synthetic */ zzez zzatq;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzfc(zzez zzezVar, zzcr zzcrVar) {
        super(zzcrVar);
        this.zzatq = zzezVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzw
    @WorkerThread
    public final void run() {
        zzez zzezVar = this.zzatq;
        zzezVar.zzaf();
        zzezVar.zzgt().zzjo().zzca("Current session is expired, remove the session number and Id");
        if (zzezVar.zzgv().zzbi(zzezVar.zzgk().zzal())) {
            zzezVar.zzgj().zza("auto", "_sid", (Object) null, zzezVar.zzbx().currentTimeMillis());
        }
        if (zzezVar.zzgv().zzbj(zzezVar.zzgk().zzal())) {
            zzezVar.zzgj().zza("auto", "_sno", (Object) null, zzezVar.zzbx().currentTimeMillis());
        }
    }
}
