package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
final class zzvy extends zzuj<Integer> implements zzwd<Integer>, zzxp, RandomAccess {
    private static final zzvy zzcac;
    private int size;
    private int[] zzcad;

    zzvy() {
        this(new int[10], 0);
    }

    private zzvy(int[] iArr, int i) {
        this.zzcad = iArr;
        this.size = i;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzuh();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        System.arraycopy(this.zzcad, i2, this.zzcad, i, this.size - i2);
        this.size -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzvy)) {
            return super.equals(obj);
        }
        zzvy zzvyVar = (zzvy) obj;
        if (this.size != zzvyVar.size) {
            return false;
        }
        int[] iArr = zzvyVar.zzcad;
        for (int i = 0; i < this.size; i++) {
            if (this.zzcad[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + this.zzcad[i2];
        }
        return i;
    }

    public final int getInt(int i) {
        zzai(i);
        return this.zzcad[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    public final void zzbn(int i) {
        zzp(this.size, i);
    }

    private final void zzp(int i, int i2) {
        zzuh();
        if (i < 0 || i > this.size) {
            throw new IndexOutOfBoundsException(zzaj(i));
        }
        if (this.size < this.zzcad.length) {
            System.arraycopy(this.zzcad, i, this.zzcad, i + 1, this.size - i);
        } else {
            int[] iArr = new int[((this.size * 3) / 2) + 1];
            System.arraycopy(this.zzcad, 0, iArr, 0, i);
            System.arraycopy(this.zzcad, i, iArr, i + 1, this.size - i);
            this.zzcad = iArr;
        }
        this.zzcad[i] = i2;
        this.size++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        zzuh();
        zzvz.checkNotNull(collection);
        if (!(collection instanceof zzvy)) {
            return super.addAll(collection);
        }
        zzvy zzvyVar = (zzvy) collection;
        if (zzvyVar.size == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.size < zzvyVar.size) {
            throw new OutOfMemoryError();
        }
        int i = this.size + zzvyVar.size;
        if (i > this.zzcad.length) {
            this.zzcad = Arrays.copyOf(this.zzcad, i);
        }
        System.arraycopy(zzvyVar.zzcad, 0, this.zzcad, this.size, zzvyVar.size);
        this.size = i;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzuh();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Integer.valueOf(this.zzcad[i]))) {
                System.arraycopy(this.zzcad, i + 1, this.zzcad, i, this.size - i);
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
        int iIntValue = ((Integer) obj).intValue();
        zzuh();
        zzai(i);
        int i2 = this.zzcad[i];
        this.zzcad[i] = iIntValue;
        return Integer.valueOf(i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzuh();
        zzai(i);
        int i2 = this.zzcad[i];
        if (i < this.size - 1) {
            System.arraycopy(this.zzcad, i + 1, this.zzcad, i, this.size - i);
        }
        this.size--;
        this.modCount++;
        return Integer.valueOf(i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzp(i, ((Integer) obj).intValue());
    }

    @Override // com.google.android.gms.internal.measurement.zzwd
    public final /* synthetic */ zzwd<Integer> zzak(int i) {
        if (i < this.size) {
            throw new IllegalArgumentException();
        }
        return new zzvy(Arrays.copyOf(this.zzcad, i), this.size);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(getInt(i));
    }

    static {
        zzvy zzvyVar = new zzvy();
        zzcac = zzvyVar;
        zzvyVar.zzsw();
    }
}
