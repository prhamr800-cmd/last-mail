package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
final class zzvu extends zzuj<Float> implements zzwd<Float>, zzxp, RandomAccess {
    private static final zzvu zzbzd;
    private int size;
    private float[] zzbze;

    zzvu() {
        this(new float[10], 0);
    }

    private zzvu(float[] fArr, int i) {
        this.zzbze = fArr;
        this.size = i;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzuh();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        System.arraycopy(this.zzbze, i2, this.zzbze, i, this.size - i2);
        this.size -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzvu)) {
            return super.equals(obj);
        }
        zzvu zzvuVar = (zzvu) obj;
        if (this.size != zzvuVar.size) {
            return false;
        }
        float[] fArr = zzvuVar.zzbze;
        for (int i = 0; i < this.size; i++) {
            if (Float.floatToIntBits(this.zzbze[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iFloatToIntBits = 1;
        for (int i = 0; i < this.size; i++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.zzbze[i]);
        }
        return iFloatToIntBits;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    public final void zzc(float f) {
        zzc(this.size, f);
    }

    private final void zzc(int i, float f) {
        zzuh();
        if (i < 0 || i > this.size) {
            throw new IndexOutOfBoundsException(zzaj(i));
        }
        if (this.size < this.zzbze.length) {
            System.arraycopy(this.zzbze, i, this.zzbze, i + 1, this.size - i);
        } else {
            float[] fArr = new float[((this.size * 3) / 2) + 1];
            System.arraycopy(this.zzbze, 0, fArr, 0, i);
            System.arraycopy(this.zzbze, i, fArr, i + 1, this.size - i);
            this.zzbze = fArr;
        }
        this.zzbze[i] = f;
        this.size++;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        zzuh();
        zzvz.checkNotNull(collection);
        if (!(collection instanceof zzvu)) {
            return super.addAll(collection);
        }
        zzvu zzvuVar = (zzvu) collection;
        if (zzvuVar.size == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.size < zzvuVar.size) {
            throw new OutOfMemoryError();
        }
        int i = this.size + zzvuVar.size;
        if (i > this.zzbze.length) {
            this.zzbze = Arrays.copyOf(this.zzbze, i);
        }
        System.arraycopy(zzvuVar.zzbze, 0, this.zzbze, this.size, zzvuVar.size);
        this.size = i;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzuh();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Float.valueOf(this.zzbze[i]))) {
                System.arraycopy(this.zzbze, i + 1, this.zzbze, i, this.size - i);
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
        float fFloatValue = ((Float) obj).floatValue();
        zzuh();
        zzai(i);
        float f = this.zzbze[i];
        this.zzbze[i] = fFloatValue;
        return Float.valueOf(f);
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzuh();
        zzai(i);
        float f = this.zzbze[i];
        if (i < this.size - 1) {
            System.arraycopy(this.zzbze, i + 1, this.zzbze, i, this.size - i);
        }
        this.size--;
        this.modCount++;
        return Float.valueOf(f);
    }

    @Override // com.google.android.gms.internal.measurement.zzuj, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzc(i, ((Float) obj).floatValue());
    }

    @Override // com.google.android.gms.internal.measurement.zzwd
    public final /* synthetic */ zzwd<Float> zzak(int i) {
        if (i < this.size) {
            throw new IllegalArgumentException();
        }
        return new zzvu(Arrays.copyOf(this.zzbze, i), this.size);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzai(i);
        return Float.valueOf(this.zzbze[i]);
    }

    static {
        zzvu zzvuVar = new zzvu();
        zzbzd = zzvuVar;
        zzvuVar.zzsw();
    }
}
