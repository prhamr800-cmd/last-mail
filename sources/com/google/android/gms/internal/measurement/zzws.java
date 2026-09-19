package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
final class zzws extends zzuj<Long> implements zzwd<Long>, zzxp, RandomAccess {
    private static final zzws zzcbh;
    private int size;
    private long[] zzcbi;

    zzws() {
        this(new long[10], 0);
    }

    private zzws(long[] jArr, int i) {
        this.zzcbi = jArr;
        this.size = i;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzuh();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        System.arraycopy(this.zzcbi, i2, this.zzcbi, i, this.size - i2);
        this.size -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzws)) {
            return super.equals(obj);
        }
        zzws zzwsVar = (zzws) obj;
        if (this.size != zzwsVar.size) {
            return false;
        }
        long[] jArr = zzwsVar.zzcbi;
        for (int i = 0; i < this.size; i++) {
            if (this.zzcbi[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iZzbi = 1;
        for (int i = 0; i < this.size; i++) {
            iZzbi = (iZzbi * 31) + zzvz.zzbi(this.zzcbi[i]);
        }
        return iZzbi;
    }

    public final long getLong(int i) {
        zzai(i);
        return this.zzcbi[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    public final void zzbj(long j) {
        zzk(this.size, j);
    }

    private final void zzk(int i, long j) {
        zzuh();
        if (i < 0 || i > this.size) {
            throw new IndexOutOfBoundsException(zzaj(i));
        }
        if (this.size < this.zzcbi.length) {
            System.arraycopy(this.zzcbi, i, this.zzcbi, i + 1, this.size - i);
        } else {
            long[] jArr = new long[((this.size * 3) / 2) + 1];
            System.arraycopy(this.zzcbi, 0, jArr, 0, i);
            System.arraycopy(this.zzcbi, i, jArr, i + 1, this.size - i);
            this.zzcbi = jArr;
        }
        this.zzcbi[i] = j;
        this.size++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        zzuh();
        zzvz.checkNotNull(collection);
        if (!(collection instanceof zzws)) {
            return super.addAll(collection);
        }
        zzws zzwsVar = (zzws) collection;
        if (zzwsVar.size == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.size < zzwsVar.size) {
            throw new OutOfMemoryError();
        }
        int i = this.size + zzwsVar.size;
        if (i > this.zzcbi.length) {
            this.zzcbi = Arrays.copyOf(this.zzcbi, i);
        }
        System.arraycopy(zzwsVar.zzcbi, 0, this.zzcbi, this.size, zzwsVar.size);
        this.size = i;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzuh();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Long.valueOf(this.zzcbi[i]))) {
                System.arraycopy(this.zzcbi, i + 1, this.zzcbi, i, this.size - i);
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
        long jLongValue = ((Long) obj).longValue();
        zzuh();
        zzai(i);
        long j = this.zzcbi[i];
        this.zzcbi[i] = jLongValue;
        return Long.valueOf(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzuh();
        zzai(i);
        long j = this.zzcbi[i];
        if (i < this.size - 1) {
            System.arraycopy(this.zzcbi, i + 1, this.zzcbi, i, this.size - i);
        }
        this.size--;
        this.modCount++;
        return Long.valueOf(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzk(i, ((Long) obj).longValue());
    }

    @Override // com.google.android.gms.internal.measurement.zzwd
    public final /* synthetic */ zzwd<Long> zzak(int i) {
        if (i < this.size) {
            throw new IllegalArgumentException();
        }
        return new zzws(Arrays.copyOf(this.zzcbi, i), this.size);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(getLong(i));
    }

    static {
        zzws zzwsVar = new zzws();
        zzcbh = zzwsVar;
        zzwsVar.zzsw();
    }
}
