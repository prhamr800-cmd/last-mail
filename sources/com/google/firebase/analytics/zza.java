package com.google.firebase.analytics;

import java.util.concurrent.Callable;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
final class zza implements Callable<String> {
    private final /* synthetic */ FirebaseAnalytics zzbsz;

    zza(FirebaseAnalytics firebaseAnalytics) {
        this.zzbsz = firebaseAnalytics;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        String strZzgc = this.zzbsz.zzgc();
        if (strZzgc != null) {
            return strZzgc;
        }
        String strZzak = this.zzbsz.zzadp.zzgj().zzak(120000L);
        if (strZzak == null) {
            throw new TimeoutException();
        }
        this.zzbsz.zzcr(strZzak);
        return strZzak;
    }
}
