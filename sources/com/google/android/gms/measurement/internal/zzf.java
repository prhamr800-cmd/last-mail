package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzf extends zze {
    private boolean zzvz;

    zzf(zzbu zzbuVar) {
        super(zzbuVar);
        this.zzadp.zzb(this);
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
        if (!zzgy()) {
            this.zzadp.zzku();
            this.zzvz = true;
        }
    }

    public final void zzgx() {
        if (this.zzvz) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzgz();
        this.zzadp.zzku();
        this.zzvz = true;
    }

    protected void zzgz() {
    }
}
