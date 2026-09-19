package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
final class zzuo extends zzuq {
    private final int limit;
    private int position = 0;
    private final /* synthetic */ zzun zzbux;

    zzuo(zzun zzunVar) {
        this.zzbux = zzunVar;
        this.limit = this.zzbux.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.position < this.limit;
    }

    @Override // com.google.android.gms.internal.measurement.zzuu
    public final byte nextByte() {
        int i = this.position;
        if (i >= this.limit) {
            throw new NoSuchElementException();
        }
        this.position = i + 1;
        return this.zzbux.zzam(i);
    }
}
