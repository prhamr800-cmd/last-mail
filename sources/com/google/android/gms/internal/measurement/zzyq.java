package com.google.android.gms.internal.measurement;

import java.util.ListIterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzyq implements ListIterator<String> {
    private ListIterator<String> zzcdm;
    private final /* synthetic */ int zzcdn;
    private final /* synthetic */ zzyp zzcdo;

    zzyq(zzyp zzypVar, int i) {
        this.zzcdo = zzypVar;
        this.zzcdn = i;
        this.zzcdm = this.zzcdo.zzcdl.listIterator(this.zzcdn);
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.zzcdm.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.zzcdm.hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.zzcdm.nextIndex();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.zzcdm.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.zzcdm.previous();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.zzcdm.next();
    }
}
