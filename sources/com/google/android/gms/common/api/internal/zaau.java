package com.google.android.gms.common.api.internal;

import android.support.annotation.WorkerThread;

/* JADX INFO: loaded from: classes2.dex */
abstract class zaau implements Runnable {
    private final /* synthetic */ zaak zagi;

    private zaau(zaak zaakVar) {
        this.zagi = zaakVar;
    }

    @WorkerThread
    protected abstract void zaan();

    @Override // java.lang.Runnable
    @WorkerThread
    public void run() {
        this.zagi.zaen.lock();
        try {
            if (Thread.interrupted()) {
                return;
            }
            zaan();
            return;
        } catch (RuntimeException e) {
            this.zagi.zafs.zab(e);
            return;
        } finally {
            this.zagi.zaen.unlock();
        }
        this.zagi.zaen.unlock();
    }

    /* synthetic */ zaau(zaak zaakVar, zaal zaalVar) {
        this(zaakVar);
    }
}
