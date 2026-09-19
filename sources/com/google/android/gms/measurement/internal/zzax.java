package com.google.android.gms.measurement.internal;

import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
@WorkerThread
final class zzax implements Runnable {
    private final String packageName;
    private final int status;
    private final zzaw zzamy;
    private final Throwable zzamz;
    private final byte[] zzana;
    private final Map<String, List<String>> zzanb;

    private zzax(String str, zzaw zzawVar, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        Preconditions.checkNotNull(zzawVar);
        this.zzamy = zzawVar;
        this.status = i;
        this.zzamz = th;
        this.zzana = bArr;
        this.packageName = str;
        this.zzanb = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzamy.zza(this.packageName, this.status, this.zzamz, this.zzana, this.zzanb);
    }
}
