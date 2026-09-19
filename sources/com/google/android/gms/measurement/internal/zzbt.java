package com.google.android.gms.measurement.internal;

import android.os.Process;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: classes2.dex */
final class zzbt extends Thread {
    private final /* synthetic */ zzbp zzapm;
    private final Object zzapp;
    private final BlockingQueue<zzbs<?>> zzapq;

    public zzbt(zzbp zzbpVar, String str, BlockingQueue<zzbs<?>> blockingQueue) {
        this.zzapm = zzbpVar;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(blockingQueue);
        this.zzapp = new Object();
        this.zzapq = blockingQueue;
        setName(str);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        int i;
        boolean z = false;
        while (!z) {
            try {
                this.zzapm.zzapi.acquire();
                z = true;
            } catch (InterruptedException e) {
                zza(e);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                zzbs<?> zzbsVarPoll = this.zzapq.poll();
                if (zzbsVarPoll != null) {
                    if (!zzbsVarPoll.zzapo) {
                        i = 10;
                    } else {
                        i = threadPriority;
                    }
                    Process.setThreadPriority(i);
                    zzbsVarPoll.run();
                } else {
                    synchronized (this.zzapp) {
                        if (this.zzapq.peek() == null && !this.zzapm.zzapj) {
                            try {
                                this.zzapp.wait(30000L);
                            } catch (InterruptedException e2) {
                                zza(e2);
                            }
                        }
                    }
                    synchronized (this.zzapm.zzaph) {
                        if (this.zzapq.peek() == null) {
                            break;
                        }
                    }
                }
            }
            synchronized (this.zzapm.zzaph) {
                this.zzapm.zzapi.release();
                this.zzapm.zzaph.notifyAll();
                if (this == this.zzapm.zzapb) {
                    zzbp.zza(this.zzapm, null);
                } else if (this == this.zzapm.zzapc) {
                    zzbp.zzb(this.zzapm, null);
                } else {
                    this.zzapm.zzgt().zzjg().zzca("Current scheduler thread is neither worker nor network");
                }
            }
        } catch (Throwable th) {
            synchronized (this.zzapm.zzaph) {
                this.zzapm.zzapi.release();
                this.zzapm.zzaph.notifyAll();
                if (this == this.zzapm.zzapb) {
                    zzbp.zza(this.zzapm, null);
                } else if (this == this.zzapm.zzapc) {
                    zzbp.zzb(this.zzapm, null);
                } else {
                    this.zzapm.zzgt().zzjg().zzca("Current scheduler thread is neither worker nor network");
                }
                throw th;
            }
        }
    }

    public final void zzki() {
        synchronized (this.zzapp) {
            this.zzapp.notifyAll();
        }
    }

    private final void zza(InterruptedException interruptedException) {
        this.zzapm.zzgt().zzjj().zzg(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }
}
