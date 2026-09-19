package com.google.android.gms.measurement.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: loaded from: classes2.dex */
final class zzbs<V> extends FutureTask<V> implements Comparable<zzbs> {
    private final String zzapl;
    private final /* synthetic */ zzbp zzapm;
    private final long zzapn;
    final boolean zzapo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzbs(zzbp zzbpVar, Callable<V> callable, boolean z, String str) {
        super(callable);
        this.zzapm = zzbpVar;
        Preconditions.checkNotNull(str);
        this.zzapn = zzbp.zzapk.getAndIncrement();
        this.zzapl = str;
        this.zzapo = z;
        if (this.zzapn == LongCompanionObject.MAX_VALUE) {
            zzbpVar.zzgt().zzjg().zzca("Tasks index overflow");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzbs(zzbp zzbpVar, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        this.zzapm = zzbpVar;
        Preconditions.checkNotNull(str);
        this.zzapn = zzbp.zzapk.getAndIncrement();
        this.zzapl = str;
        this.zzapo = false;
        if (this.zzapn == LongCompanionObject.MAX_VALUE) {
            zzbpVar.zzgt().zzjg().zzca("Tasks index overflow");
        }
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th) {
        this.zzapm.zzgt().zzjg().zzg(this.zzapl, th);
        if (th instanceof zzbq) {
            Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(@NonNull zzbs zzbsVar) {
        zzbs zzbsVar2 = zzbsVar;
        if (this.zzapo != zzbsVar2.zzapo) {
            return this.zzapo ? -1 : 1;
        }
        if (this.zzapn < zzbsVar2.zzapn) {
            return -1;
        }
        if (this.zzapn > zzbsVar2.zzapn) {
            return 1;
        }
        this.zzapm.zzgt().zzjh().zzg("Two tasks share the same index. index", Long.valueOf(this.zzapn));
        return 0;
    }
}
