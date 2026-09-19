package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.lang.Thread;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbp extends zzcq {
    private static final AtomicLong zzapk = new AtomicLong(Long.MIN_VALUE);
    private ExecutorService zzaea;
    private zzbt zzapb;
    private zzbt zzapc;
    private final PriorityBlockingQueue<zzbs<?>> zzapd;
    private final BlockingQueue<zzbs<?>> zzape;
    private final Thread.UncaughtExceptionHandler zzapf;
    private final Thread.UncaughtExceptionHandler zzapg;
    private final Object zzaph;
    private final Semaphore zzapi;
    private volatile boolean zzapj;

    zzbp(zzbu zzbuVar) {
        super(zzbuVar);
        this.zzaph = new Object();
        this.zzapi = new Semaphore(2);
        this.zzapd = new PriorityBlockingQueue<>();
        this.zzape = new LinkedBlockingQueue();
        this.zzapf = new zzbr(this, "Thread death: Uncaught exception on worker thread");
        this.zzapg = new zzbr(this, "Thread death: Uncaught exception on network thread");
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    protected final boolean zzgy() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final void zzaf() {
        if (Thread.currentThread() != this.zzapb) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final void zzgh() {
        if (Thread.currentThread() != this.zzapc) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    public final boolean zzkf() {
        return Thread.currentThread() == this.zzapb;
    }

    public final <V> Future<V> zzb(Callable<V> callable) throws IllegalStateException {
        zzcl();
        Preconditions.checkNotNull(callable);
        zzbs<?> zzbsVar = new zzbs<>(this, (Callable<?>) callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.zzapb) {
            if (!this.zzapd.isEmpty()) {
                zzgt().zzjj().zzca("Callable skipped the worker queue.");
            }
            zzbsVar.run();
        } else {
            zza(zzbsVar);
        }
        return zzbsVar;
    }

    public final <V> Future<V> zzc(Callable<V> callable) throws IllegalStateException {
        zzcl();
        Preconditions.checkNotNull(callable);
        zzbs<?> zzbsVar = new zzbs<>(this, (Callable<?>) callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.zzapb) {
            zzbsVar.run();
        } else {
            zza(zzbsVar);
        }
        return zzbsVar;
    }

    public final void zzc(Runnable runnable) throws IllegalStateException {
        zzcl();
        Preconditions.checkNotNull(runnable);
        zza(new zzbs<>(this, runnable, false, "Task exception on worker thread"));
    }

    final <T> T zza(AtomicReference<T> atomicReference, long j, String str, Runnable runnable) {
        synchronized (atomicReference) {
            zzgs().zzc(runnable);
            try {
                atomicReference.wait(15000L);
            } catch (InterruptedException e) {
                zzas zzasVarZzjj = zzgt().zzjj();
                String strValueOf = String.valueOf(str);
                zzasVarZzjj.zzca(strValueOf.length() != 0 ? "Interrupted waiting for ".concat(strValueOf) : new String("Interrupted waiting for "));
                return null;
            }
        }
        T t = atomicReference.get();
        if (t == null) {
            zzas zzasVarZzjj2 = zzgt().zzjj();
            String strValueOf2 = String.valueOf(str);
            zzasVarZzjj2.zzca(strValueOf2.length() != 0 ? "Timed out waiting for ".concat(strValueOf2) : new String("Timed out waiting for "));
        }
        return t;
    }

    private final void zza(zzbs<?> zzbsVar) {
        synchronized (this.zzaph) {
            this.zzapd.add(zzbsVar);
            if (this.zzapb == null) {
                this.zzapb = new zzbt(this, "Measurement Worker", this.zzapd);
                this.zzapb.setUncaughtExceptionHandler(this.zzapf);
                this.zzapb.start();
            } else {
                this.zzapb.zzki();
            }
        }
    }

    public final void zzd(Runnable runnable) throws IllegalStateException {
        zzcl();
        Preconditions.checkNotNull(runnable);
        zzbs<?> zzbsVar = new zzbs<>(this, runnable, false, "Task exception on network thread");
        synchronized (this.zzaph) {
            this.zzape.add(zzbsVar);
            if (this.zzapc == null) {
                this.zzapc = new zzbt(this, "Measurement Network", this.zzape);
                this.zzapc.setUncaughtExceptionHandler(this.zzapg);
                this.zzapc.start();
            } else {
                this.zzapc.zzki();
            }
        }
    }

    public final ExecutorService zzkg() {
        ExecutorService executorService;
        synchronized (this.zzaph) {
            if (this.zzaea == null) {
                this.zzaea = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new ArrayBlockingQueue(100));
            }
            executorService = this.zzaea;
        }
        return executorService;
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgf() {
        super.zzgf();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgg() {
        super.zzgg();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzy zzgp() {
        return super.zzgp();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ Clock zzbx() {
        return super.zzbx();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzao zzgq() {
        return super.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzfu zzgr() {
        return super.zzgr();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ zzbp zzgs() {
        return super.zzgs();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ zzaq zzgt() {
        return super.zzgt();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzbb zzgu() {
        return super.zzgu();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzo zzgv() {
        return super.zzgv();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ zzl zzgw() {
        return super.zzgw();
    }

    static /* synthetic */ zzbt zza(zzbp zzbpVar, zzbt zzbtVar) {
        zzbpVar.zzapb = null;
        return null;
    }

    static /* synthetic */ zzbt zzb(zzbp zzbpVar, zzbt zzbtVar) {
        zzbpVar.zzapc = null;
        return null;
    }
}
