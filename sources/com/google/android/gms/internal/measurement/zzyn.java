package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvx;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzyn {
    private static final zzyn zzcdj = new zzyn(0, new int[0], new Object[0], false);
    private int count;
    private boolean zzbup;
    private int zzbzi;
    private Object[] zzcbv;
    private int[] zzcdk;

    public static zzyn zzys() {
        return zzcdj;
    }

    static zzyn zzyt() {
        return new zzyn();
    }

    static zzyn zza(zzyn zzynVar, zzyn zzynVar2) {
        int i = zzynVar.count + zzynVar2.count;
        int[] iArrCopyOf = Arrays.copyOf(zzynVar.zzcdk, i);
        System.arraycopy(zzynVar2.zzcdk, 0, iArrCopyOf, zzynVar.count, zzynVar2.count);
        Object[] objArrCopyOf = Arrays.copyOf(zzynVar.zzcbv, i);
        System.arraycopy(zzynVar2.zzcbv, 0, objArrCopyOf, zzynVar.count, zzynVar2.count);
        return new zzyn(i, iArrCopyOf, objArrCopyOf, true);
    }

    private zzyn() {
        this(0, new int[8], new Object[8], true);
    }

    private zzyn(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zzbzi = -1;
        this.count = i;
        this.zzcdk = iArr;
        this.zzcbv = objArr;
        this.zzbup = z;
    }

    public final void zzsw() {
        this.zzbup = false;
    }

    final void zza(zzzh zzzhVar) throws IOException {
        if (zzzhVar.zzvt() == zzvx.zze.zzcaa) {
            for (int i = this.count - 1; i >= 0; i--) {
                zzzhVar.zza(this.zzcdk[i] >>> 3, this.zzcbv[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.count; i2++) {
            zzzhVar.zza(this.zzcdk[i2] >>> 3, this.zzcbv[i2]);
        }
    }

    public final void zzb(zzzh zzzhVar) throws IOException {
        if (this.count == 0) {
            return;
        }
        if (zzzhVar.zzvt() == zzvx.zze.zzbzz) {
            for (int i = 0; i < this.count; i++) {
                zzb(this.zzcdk[i], this.zzcbv[i], zzzhVar);
            }
            return;
        }
        for (int i2 = this.count - 1; i2 >= 0; i2--) {
            zzb(this.zzcdk[i2], this.zzcbv[i2], zzzhVar);
        }
    }

    private static void zzb(int i, Object obj, zzzh zzzhVar) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 != 5) {
            switch (i3) {
                case 0:
                    zzzhVar.zzi(i2, ((Long) obj).longValue());
                    return;
                case 1:
                    zzzhVar.zzc(i2, ((Long) obj).longValue());
                    return;
                case 2:
                    zzzhVar.zza(i2, (zzun) obj);
                    return;
                case 3:
                    if (zzzhVar.zzvt() == zzvx.zze.zzbzz) {
                        zzzhVar.zzbl(i2);
                        ((zzyn) obj).zzb(zzzhVar);
                        zzzhVar.zzbm(i2);
                        return;
                    } else {
                        zzzhVar.zzbm(i2);
                        ((zzyn) obj).zzb(zzzhVar);
                        zzzhVar.zzbl(i2);
                        return;
                    }
                default:
                    throw new RuntimeException(zzwe.zzxb());
            }
        }
        zzzhVar.zzg(i2, ((Integer) obj).intValue());
    }

    public final int zzyu() {
        int i = this.zzbzi;
        if (i != -1) {
            return i;
        }
        int iZzd = 0;
        for (int i2 = 0; i2 < this.count; i2++) {
            iZzd += zzve.zzd(this.zzcdk[i2] >>> 3, (zzun) this.zzcbv[i2]);
        }
        this.zzbzi = iZzd;
        return iZzd;
    }

    public final int zzwe() {
        int iZzk;
        int i = this.zzbzi;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.count; i3++) {
            int i4 = this.zzcdk[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 != 5) {
                switch (i6) {
                    case 0:
                        iZzk = zzve.zze(i5, ((Long) this.zzcbv[i3]).longValue());
                        break;
                    case 1:
                        iZzk = zzve.zzg(i5, ((Long) this.zzcbv[i3]).longValue());
                        break;
                    case 2:
                        iZzk = zzve.zzc(i5, (zzun) this.zzcbv[i3]);
                        break;
                    case 3:
                        iZzk = (zzve.zzbc(i5) << 1) + ((zzyn) this.zzcbv[i3]).zzwe();
                        break;
                    default:
                        throw new IllegalStateException(zzwe.zzxb());
                }
            } else {
                iZzk = zzve.zzk(i5, ((Integer) this.zzcbv[i3]).intValue());
            }
            i2 += iZzk;
        }
        this.zzbzi = i2;
        return i2;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzyn)) {
            return false;
        }
        zzyn zzynVar = (zzyn) obj;
        if (this.count == zzynVar.count) {
            int[] iArr = this.zzcdk;
            int[] iArr2 = zzynVar.zzcdk;
            int i = this.count;
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
                Object[] objArr = this.zzcbv;
                Object[] objArr2 = zzynVar.zzcbv;
                int i3 = this.count;
                int i4 = 0;
                while (true) {
                    if (i4 < i3) {
                        if (objArr[i4].equals(objArr2[i4])) {
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
        }
        return false;
    }

    public final int hashCode() {
        int i = (this.count + 527) * 31;
        int[] iArr = this.zzcdk;
        int i2 = this.count;
        int iHashCode = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        int i5 = (i + i3) * 31;
        Object[] objArr = this.zzcbv;
        int i6 = this.count;
        for (int i7 = 0; i7 < i6; i7++) {
            iHashCode = (iHashCode * 31) + objArr[i7].hashCode();
        }
        return i5 + iHashCode;
    }

    final void zzb(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.count; i2++) {
            zzxh.zzb(sb, i, String.valueOf(this.zzcdk[i2] >>> 3), this.zzcbv[i2]);
        }
    }

    final void zzb(int i, Object obj) {
        if (!this.zzbup) {
            throw new UnsupportedOperationException();
        }
        if (this.count == this.zzcdk.length) {
            int i2 = this.count + (this.count < 4 ? 8 : this.count >> 1);
            this.zzcdk = Arrays.copyOf(this.zzcdk, i2);
            this.zzcbv = Arrays.copyOf(this.zzcbv, i2);
        }
        this.zzcdk[this.count] = i;
        this.zzcbv[this.count] = obj;
        this.count++;
    }
}
