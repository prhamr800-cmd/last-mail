package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public final class zzwm extends zzuj<String> implements zzwn, RandomAccess {
    private static final zzwm zzcbb;
    private static final zzwn zzcbc;
    private final List<Object> zzcbd;

    public zzwm() {
        this(10);
    }

    public zzwm(int i) {
        this((ArrayList<Object>) new ArrayList(i));
    }

    private zzwm(ArrayList<Object> arrayList) {
        this.zzcbd = arrayList;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzcbd.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        zzuh();
        if (collection instanceof zzwn) {
            collection = ((zzwn) collection).zzxi();
        }
        boolean zAddAll = this.zzcbd.addAll(i, collection);
        this.modCount++;
        return zAddAll;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zzuh();
        this.zzcbd.clear();
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzwn
    public final void zzc(zzun zzunVar) {
        zzuh();
        this.zzcbd.add(zzunVar);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzwn
    public final Object zzbo(int i) {
        return this.zzcbd.get(i);
    }

    private static String zzaa(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzun) {
            return ((zzun) obj).zzuk();
        }
        return zzvz.zzm((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzwn
    public final List<?> zzxi() {
        return Collections.unmodifiableList(this.zzcbd);
    }

    @Override // com.google.android.gms.internal.measurement.zzwn
    public final zzwn zzxj() {
        if (zzug()) {
            return new zzyp(this);
        }
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        zzuh();
        return zzaa(this.zzcbd.set(i, (String) obj));
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzuh();
        Object objRemove = this.zzcbd.remove(i);
        this.modCount++;
        return zzaa(objRemove);
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, com.google.android.gms.internal.measurement.zzwd
    public final /* bridge */ /* synthetic */ boolean zzug() {
        return super.zzug();
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzuh();
        this.zzcbd.add(i, (String) obj);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzwd
    public final /* synthetic */ zzwd zzak(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.zzcbd);
        return new zzwm((ArrayList<Object>) arrayList);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.zzcbd.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzun) {
            zzun zzunVar = (zzun) obj;
            String strZzuk = zzunVar.zzuk();
            if (zzunVar.zzul()) {
                this.zzcbd.set(i, strZzuk);
            }
            return strZzuk;
        }
        byte[] bArr = (byte[]) obj;
        String strZzm = zzvz.zzm(bArr);
        if (zzvz.zzl(bArr)) {
            this.zzcbd.set(i, strZzm);
        }
        return strZzm;
    }

    static {
        zzwm zzwmVar = new zzwm();
        zzcbb = zzwmVar;
        zzwmVar.zzsw();
        zzcbc = zzcbb;
    }
}
