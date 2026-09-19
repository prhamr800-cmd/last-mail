package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzyr implements Iterator<String> {
    private final /* synthetic */ zzyp zzcdo;
    private Iterator<String> zzcdp;

    zzyr(zzyp zzypVar) {
        this.zzcdo = zzypVar;
        this.zzcdp = this.zzcdo.zzcdl.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzcdp.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.zzcdp.next();
    }
}
