package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;

/* JADX INFO: loaded from: classes2.dex */
final class zzbr implements Thread.UncaughtExceptionHandler {
    private final String zzapl;
    private final /* synthetic */ zzbp zzapm;

    public zzbr(zzbp zzbpVar, String str) {
        this.zzapm = zzbpVar;
        Preconditions.checkNotNull(str);
        this.zzapl = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        this.zzapm.zzgt().zzjg().zzg(this.zzapl, th);
    }
}
