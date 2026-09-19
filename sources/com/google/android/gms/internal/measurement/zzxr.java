package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zzxr<E> extends zzuj<E> {
    private static final zzxr<Object> zzccq;
    private final List<E> zzcbd;

    public static <E> zzxr<E> zzyb() {
        return (zzxr<E>) zzccq;
    }

    zzxr() {
        this(new ArrayList(10));
    }

    private zzxr(List<E> list) {
        this.zzcbd = list;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        zzuh();
        this.zzcbd.add(i, e);
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        return this.zzcbd.get(i);
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        zzuh();
        E eRemove = this.zzcbd.remove(i);
        this.modCount++;
        return eRemove;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        zzuh();
        E e2 = this.zzcbd.set(i, e);
        this.modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzcbd.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzwd
    public final /* synthetic */ zzwd zzak(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.zzcbd);
        return new zzxr(arrayList);
    }

    static {
        zzxr<Object> zzxrVar = new zzxr<>();
        zzccq = zzxrVar;
        zzxrVar.zzsw();
    }
}
