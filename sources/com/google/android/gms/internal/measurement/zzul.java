package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
final class zzul extends zzuj<Boolean> implements zzwd<Boolean>, zzxp, RandomAccess {
    private static final zzul zzbus;
    private int size;
    private boolean[] zzbut;

    zzul() {
        this(new boolean[10], 0);
    }

    private zzul(boolean[] zArr, int i) {
        this.zzbut = zArr;
        this.size = i;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzuh();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        System.arraycopy(this.zzbut, i2, this.zzbut, i, this.size - i2);
        this.size -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzul)) {
            return super.equals(obj);
        }
        zzul zzulVar = (zzul) obj;
        if (this.size != zzulVar.size) {
            return false;
        }
        boolean[] zArr = zzulVar.zzbut;
        for (int i = 0; i < this.size; i++) {
            if (this.zzbut[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iZzu = 1;
        for (int i = 0; i < this.size; i++) {
            iZzu = (iZzu * 31) + zzvz.zzu(this.zzbut[i]);
        }
        return iZzu;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    public final void addBoolean(boolean z) {
        zza(this.size, z);
    }

    private final void zza(int i, boolean z) {
        zzuh();
        if (i < 0 || i > this.size) {
            throw new IndexOutOfBoundsException(zzaj(i));
        }
        if (this.size < this.zzbut.length) {
            System.arraycopy(this.zzbut, i, this.zzbut, i + 1, this.size - i);
        } else {
            boolean[] zArr = new boolean[((this.size * 3) / 2) + 1];
            System.arraycopy(this.zzbut, 0, zArr, 0, i);
            System.arraycopy(this.zzbut, i, zArr, i + 1, this.size - i);
            this.zzbut = zArr;
        }
        this.zzbut[i] = z;
        this.size++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        zzuh();
        zzvz.checkNotNull(collection);
        if (!(collection instanceof zzul)) {
            return super.addAll(collection);
        }
        zzul zzulVar = (zzul) collection;
        if (zzulVar.size == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.size < zzulVar.size) {
            throw new OutOfMemoryError();
        }
        int i = this.size + zzulVar.size;
        if (i > this.zzbut.length) {
            this.zzbut = Arrays.copyOf(this.zzbut, i);
        }
        System.arraycopy(zzulVar.zzbut, 0, this.zzbut, this.size, zzulVar.size);
        this.size = i;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzuh();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Boolean.valueOf(this.zzbut[i]))) {
                System.arraycopy(this.zzbut, i + 1, this.zzbut, i, this.size - i);
                this.size--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    private final void zzai(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException(zzaj(i));
        }
    }

    private final String zzaj(int i) {
        int i2 = this.size;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        zzuh();
        zzai(i);
        boolean z = this.zzbut[i];
        this.zzbut[i] = zBooleanValue;
        return Boolean.valueOf(z);
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzuh();
        zzai(i);
        boolean z = this.zzbut[i];
        if (i < this.size - 1) {
            System.arraycopy(this.zzbut, i + 1, this.zzbut, i, this.size - i);
        }
        this.size--;
        this.modCount++;
        return Boolean.valueOf(z);
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zza(i, ((Boolean) obj).booleanValue());
    }

    @Override // com.google.android.gms.internal.measurement.zzwd
    public final /* synthetic */ zzwd<Boolean> zzak(int i) {
        if (i < this.size) {
            throw new IllegalArgumentException();
        }
        return new zzul(Arrays.copyOf(this.zzbut, i), this.size);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzai(i);
        return Boolean.valueOf(this.zzbut[i]);
    }

    static {
        zzul zzulVar = new zzul();
        zzbus = zzulVar;
        zzulVar.zzsw();
    }
}
