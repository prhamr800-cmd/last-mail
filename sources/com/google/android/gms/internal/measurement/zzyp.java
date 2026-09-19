package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public final class zzyp extends AbstractList<String> implements zzwn, RandomAccess {
    private final zzwn zzcdl;

    public zzyp(zzwn zzwnVar) {
        this.zzcdl = zzwnVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzwn
    public final Object zzbo(int i) {
        return this.zzcdl.zzbo(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzcdl.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzwn
    public final void zzc(zzun zzunVar) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new zzyq(this, i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new zzyr(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzwn
    public final List<?> zzxi() {
        return this.zzcdl.zzxi();
    }

    @Override // com.google.android.gms.internal.measurement.zzwn
    public final zzwn zzxj() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.zzcdl.get(i);
    }
}
