package com.huxq17.download.core.task;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Task implements Runnable {
    protected Thread currentThread;
    private volatile boolean isFinished = false;

    public abstract void cancel();

    protected abstract void execute();

    public void waitUntilFinished() {
        while (!this.isFinished) {
            try {
                synchronized (this) {
                    wait();
                }
            } catch (InterruptedException e) {
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.currentThread = Thread.currentThread();
        if (!isCanceled()) {
            execute();
        }
        this.currentThread = null;
        this.isFinished = true;
        synchronized (this) {
            notify();
        }
    }

    protected boolean isCanceled() {
        return this.currentThread != null && this.currentThread.isInterrupted();
    }
}
