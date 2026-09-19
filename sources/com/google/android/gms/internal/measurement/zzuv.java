package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
final class zzuv {
    private final byte[] buffer;
    private final zzve zzbva;

    private zzuv(int i) {
        this.buffer = new byte[i];
        this.zzbva = zzve.zzj(this.buffer);
    }

    public final zzun zzuo() {
        if (this.zzbva.zzvq() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
        return new zzux(this.buffer);
    }

    public final zzve zzup() {
        return this.zzbva;
    }

    /* synthetic */ zzuv(int i, zzuo zzuoVar) {
        this(i);
    }
}
