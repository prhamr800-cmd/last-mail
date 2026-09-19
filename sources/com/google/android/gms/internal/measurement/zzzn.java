package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zzzn implements Cloneable {
    private static final zzzo zzcga = new zzzo();
    private int mSize;
    private boolean zzcgb;
    private int[] zzcgc;
    private zzzo[] zzcgd;

    zzzn() {
        this(10);
    }

    private zzzn(int i) {
        this.zzcgb = false;
        int iIdealIntArraySize = idealIntArraySize(i);
        this.zzcgc = new int[iIdealIntArraySize];
        this.zzcgd = new zzzo[iIdealIntArraySize];
        this.mSize = 0;
    }

    final zzzo zzcd(int i) {
        int iZzcf = zzcf(i);
        if (iZzcf < 0 || this.zzcgd[iZzcf] == zzcga) {
            return null;
        }
        return this.zzcgd[iZzcf];
    }

    final void zza(int i, zzzo zzzoVar) {
        int iZzcf = zzcf(i);
        if (iZzcf >= 0) {
            this.zzcgd[iZzcf] = zzzoVar;
            return;
        }
        int i2 = iZzcf ^ (-1);
        if (i2 < this.mSize && this.zzcgd[i2] == zzcga) {
            this.zzcgc[i2] = i;
            this.zzcgd[i2] = zzzoVar;
            return;
        }
        if (this.mSize >= this.zzcgc.length) {
            int iIdealIntArraySize = idealIntArraySize(this.mSize + 1);
            int[] iArr = new int[iIdealIntArraySize];
            zzzo[] zzzoVarArr = new zzzo[iIdealIntArraySize];
            System.arraycopy(this.zzcgc, 0, iArr, 0, this.zzcgc.length);
            System.arraycopy(this.zzcgd, 0, zzzoVarArr, 0, this.zzcgd.length);
            this.zzcgc = iArr;
            this.zzcgd = zzzoVarArr;
        }
        if (this.mSize - i2 != 0) {
            int i3 = i2 + 1;
            System.arraycopy(this.zzcgc, i2, this.zzcgc, i3, this.mSize - i2);
            System.arraycopy(this.zzcgd, i2, this.zzcgd, i3, this.mSize - i2);
        }
        this.zzcgc[i2] = i;
        this.zzcgd[i2] = zzzoVar;
        this.mSize++;
    }

    final int size() {
        return this.mSize;
    }

    public final boolean isEmpty() {
        return this.mSize == 0;
    }

    final zzzo zzce(int i) {
        return this.zzcgd[i];
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzzn)) {
            return false;
        }
        zzzn zzznVar = (zzzn) obj;
        if (this.mSize != zzznVar.mSize) {
            return false;
        }
        int[] iArr = this.zzcgc;
        int[] iArr2 = zzznVar.zzcgc;
        int i = this.mSize;
        int i2 = 0;
        while (true) {
            if (i2 < i) {
                if (iArr[i2] == iArr2[i2]) {
                    i2++;
                } else {
                    z = false;
                    break;
                }
            } else {
                z = true;
                break;
            }
        }
        if (z) {
            zzzo[] zzzoVarArr = this.zzcgd;
            zzzo[] zzzoVarArr2 = zzznVar.zzcgd;
            int i3 = this.mSize;
            int i4 = 0;
            while (true) {
                if (i4 < i3) {
                    if (zzzoVarArr[i4].equals(zzzoVarArr2[i4])) {
                        i4++;
                    } else {
                        z2 = false;
                        break;
                    }
                } else {
                    z2 = true;
                    break;
                }
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = 17;
        for (int i = 0; i < this.mSize; i++) {
            iHashCode = (((iHashCode * 31) + this.zzcgc[i]) * 31) + this.zzcgd[i].hashCode();
        }
        return iHashCode;
    }

    private static int idealIntArraySize(int i) {
        int i2 = i << 2;
        int i3 = 4;
        while (true) {
            if (i3 >= 32) {
                break;
            }
            int i4 = (1 << i3) - 12;
            if (i2 > i4) {
                i3++;
            } else {
                i2 = i4;
                break;
            }
        }
        return i2 / 4;
    }

    private final int zzcf(int i) {
        int i2 = this.mSize - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            int i5 = this.zzcgc[i4];
            if (i5 < i) {
                i3 = i4 + 1;
            } else if (i5 > i) {
                i2 = i4 - 1;
            } else {
                return i4;
            }
        }
        return i3 ^ (-1);
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        int i = this.mSize;
        zzzn zzznVar = new zzzn(i);
        System.arraycopy(this.zzcgc, 0, zzznVar.zzcgc, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            if (this.zzcgd[i2] != null) {
                zzznVar.zzcgd[i2] = (zzzo) this.zzcgd[i2].clone();
            }
        }
        zzznVar.mSize = i;
        return zzznVar;
    }
}
