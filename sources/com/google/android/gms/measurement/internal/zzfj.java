package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzfj extends zzfi {
    private boolean zzvz;

    zzfj(zzfk zzfkVar) {
        super(zzfkVar);
        this.zzang.zzb(this);
    }

    protected abstract boolean zzgy();

    final boolean isInitialized() {
        return this.zzvz;
    }

    protected final void zzcl() {
        if (!isInitialized()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzq() {
        if (this.zzvz) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzgy();
        this.zzang.zzmg();
        this.zzvz = true;
    }
}
