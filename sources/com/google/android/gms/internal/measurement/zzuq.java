package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzuq implements zzuu {
    zzuq() {
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Byte next() {
        return Byte.valueOf(nextByte());
    }
}
