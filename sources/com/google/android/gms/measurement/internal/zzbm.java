package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
final class zzbm implements Runnable {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzbu zzaop;
    private final /* synthetic */ zzaq zzaoq;
    private final /* synthetic */ long zzaor;
    private final /* synthetic */ Bundle zzaos;
    private final /* synthetic */ BroadcastReceiver.PendingResult zzrf;

    zzbm(zzbk zzbkVar, zzbu zzbuVar, long j, Bundle bundle, Context context, zzaq zzaqVar, BroadcastReceiver.PendingResult pendingResult) {
        this.zzaop = zzbuVar;
        this.zzaor = j;
        this.zzaos = bundle;
        this.val$context = context;
        this.zzaoq = zzaqVar;
        this.zzrf = pendingResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j = this.zzaop.zzgu().zzanq.get();
        long j2 = this.zzaor;
        if (j > 0 && (j2 >= j || j2 <= 0)) {
            j2 = j - 1;
        }
        if (j2 > 0) {
            this.zzaos.putLong("click_timestamp", j2);
        }
        this.zzaos.putString("_cis", "referrer broadcast");
        zzbu.zza(this.val$context, (zzal) null).zzgj().logEvent("auto", "_cmp", this.zzaos);
        this.zzaoq.zzjo().zzca("Install campaign recorded");
        if (this.zzrf != null) {
            this.zzrf.finish();
        }
    }
}
