package com.google.android.gms.measurement.internal;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzac implements Iterator<String> {
    private Iterator<String> zzaiq;
    private final /* synthetic */ zzab zzair;

    zzac(zzab zzabVar) {
        this.zzair = zzabVar;
        this.zzaiq = this.zzair.zzaip.keySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzaiq.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.zzaiq.next();
    }
}
