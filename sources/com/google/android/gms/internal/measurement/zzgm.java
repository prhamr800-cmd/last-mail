package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgm extends zzzl<zzgm> {
    public long[] zzayz = zzzu.zzcgm;
    public long[] zzaza = zzzu.zzcgm;
    public zzgh[] zzazb = zzgh.zzmy();
    public zzgn[] zzazc = zzgn.zznc();

    public zzgm() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgm)) {
            return false;
        }
        zzgm zzgmVar = (zzgm) obj;
        if (!zzzp.equals(this.zzayz, zzgmVar.zzayz) || !zzzp.equals(this.zzaza, zzgmVar.zzaza) || !zzzp.equals(this.zzazb, zzgmVar.zzazb) || !zzzp.equals(this.zzazc, zzgmVar.zzazc)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzgmVar.zzcfx == null || zzgmVar.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzgmVar.zzcfx);
    }

    public final int hashCode() {
        int iHashCode;
        int iHashCode2 = (((((((((getClass().getName().hashCode() + 527) * 31) + zzzp.hashCode(this.zzayz)) * 31) + zzzp.hashCode(this.zzaza)) * 31) + zzzp.hashCode(this.zzazb)) * 31) + zzzp.hashCode(this.zzazc)) * 31;
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            iHashCode = 0;
        } else {
            iHashCode = this.zzcfx.hashCode();
        }
        return iHashCode2 + iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzjVar) throws IOException {
        if (this.zzayz != null && this.zzayz.length > 0) {
            for (int i = 0; i < this.zzayz.length; i++) {
                zzzjVar.zza(1, this.zzayz[i]);
            }
        }
        if (this.zzaza != null && this.zzaza.length > 0) {
            for (int i2 = 0; i2 < this.zzaza.length; i2++) {
                zzzjVar.zza(2, this.zzaza[i2]);
            }
        }
        if (this.zzazb != null && this.zzazb.length > 0) {
            for (int i3 = 0; i3 < this.zzazb.length; i3++) {
                zzgh zzghVar = this.zzazb[i3];
                if (zzghVar != null) {
                    zzzjVar.zza(3, zzghVar);
                }
            }
        }
        if (this.zzazc != null && this.zzazc.length > 0) {
            for (int i4 = 0; i4 < this.zzazc.length; i4++) {
                zzgn zzgnVar = this.zzazc[i4];
                if (zzgnVar != null) {
                    zzzjVar.zza(4, zzgnVar);
                }
            }
        }
        super.zza(zzzjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    protected final int zzf() {
        int iZzf = super.zzf();
        if (this.zzayz != null && this.zzayz.length > 0) {
            int iZzbl = 0;
            for (int i = 0; i < this.zzayz.length; i++) {
                iZzbl += zzzj.zzbl(this.zzayz[i]);
            }
            iZzf = iZzf + iZzbl + (this.zzayz.length * 1);
        }
        if (this.zzaza != null && this.zzaza.length > 0) {
            int iZzbl2 = 0;
            for (int i2 = 0; i2 < this.zzaza.length; i2++) {
                iZzbl2 += zzzj.zzbl(this.zzaza[i2]);
            }
            iZzf = iZzf + iZzbl2 + (this.zzaza.length * 1);
        }
        if (this.zzazb != null && this.zzazb.length > 0) {
            int iZzb = iZzf;
            for (int i3 = 0; i3 < this.zzazb.length; i3++) {
                zzgh zzghVar = this.zzazb[i3];
                if (zzghVar != null) {
                    iZzb += zzzj.zzb(3, zzghVar);
                }
            }
            iZzf = iZzb;
        }
        if (this.zzazc != null && this.zzazc.length > 0) {
            for (int i4 = 0; i4 < this.zzazc.length; i4++) {
                zzgn zzgnVar = this.zzazc[i4];
                if (zzgnVar != null) {
                    iZzf += zzzj.zzb(4, zzgnVar);
                }
            }
        }
        return iZzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzzr
    public final /* synthetic */ zzzr zza(zzzi zzziVar) throws IOException {
        int length;
        int length2;
        int length3;
        int length4;
        int length5;
        int length6;
        while (true) {
            int iZzuq = zzziVar.zzuq();
            if (iZzuq == 0) {
                return this;
            }
            if (iZzuq == 8) {
                int iZzb = zzzu.zzb(zzziVar, 8);
                if (this.zzayz != null) {
                    length6 = this.zzayz.length;
                } else {
                    length6 = 0;
                }
                long[] jArr = new long[iZzb + length6];
                if (length6 != 0) {
                    System.arraycopy(this.zzayz, 0, jArr, 0, length6);
                }
                while (length6 < jArr.length - 1) {
                    jArr[length6] = zzziVar.zzvj();
                    zzziVar.zzuq();
                    length6++;
                }
                jArr[length6] = zzziVar.zzvj();
                this.zzayz = jArr;
            } else if (iZzuq == 10) {
                int iZzar = zzziVar.zzar(zzziVar.zzvi());
                int position = zzziVar.getPosition();
                int i = 0;
                while (zzziVar.zzzf() > 0) {
                    zzziVar.zzvj();
                    i++;
                }
                zzziVar.zzca(position);
                if (this.zzayz != null) {
                    length5 = this.zzayz.length;
                } else {
                    length5 = 0;
                }
                long[] jArr2 = new long[i + length5];
                if (length5 != 0) {
                    System.arraycopy(this.zzayz, 0, jArr2, 0, length5);
                }
                while (length5 < jArr2.length) {
                    jArr2[length5] = zzziVar.zzvj();
                    length5++;
                }
                this.zzayz = jArr2;
                zzziVar.zzas(iZzar);
            } else if (iZzuq == 16) {
                int iZzb2 = zzzu.zzb(zzziVar, 16);
                if (this.zzaza != null) {
                    length4 = this.zzaza.length;
                } else {
                    length4 = 0;
                }
                long[] jArr3 = new long[iZzb2 + length4];
                if (length4 != 0) {
                    System.arraycopy(this.zzaza, 0, jArr3, 0, length4);
                }
                while (length4 < jArr3.length - 1) {
                    jArr3[length4] = zzziVar.zzvj();
                    zzziVar.zzuq();
                    length4++;
                }
                jArr3[length4] = zzziVar.zzvj();
                this.zzaza = jArr3;
            } else if (iZzuq == 18) {
                int iZzar2 = zzziVar.zzar(zzziVar.zzvi());
                int position2 = zzziVar.getPosition();
                int i2 = 0;
                while (zzziVar.zzzf() > 0) {
                    zzziVar.zzvj();
                    i2++;
                }
                zzziVar.zzca(position2);
                if (this.zzaza != null) {
                    length3 = this.zzaza.length;
                } else {
                    length3 = 0;
                }
                long[] jArr4 = new long[i2 + length3];
                if (length3 != 0) {
                    System.arraycopy(this.zzaza, 0, jArr4, 0, length3);
                }
                while (length3 < jArr4.length) {
                    jArr4[length3] = zzziVar.zzvj();
                    length3++;
                }
                this.zzaza = jArr4;
                zzziVar.zzas(iZzar2);
            } else if (iZzuq == 26) {
                int iZzb3 = zzzu.zzb(zzziVar, 26);
                if (this.zzazb != null) {
                    length2 = this.zzazb.length;
                } else {
                    length2 = 0;
                }
                zzgh[] zzghVarArr = new zzgh[iZzb3 + length2];
                if (length2 != 0) {
                    System.arraycopy(this.zzazb, 0, zzghVarArr, 0, length2);
                }
                while (length2 < zzghVarArr.length - 1) {
                    zzghVarArr[length2] = new zzgh();
                    zzziVar.zza(zzghVarArr[length2]);
                    zzziVar.zzuq();
                    length2++;
                }
                zzghVarArr[length2] = new zzgh();
                zzziVar.zza(zzghVarArr[length2]);
                this.zzazb = zzghVarArr;
            } else if (iZzuq != 34) {
                if (!super.zza(zzziVar, iZzuq)) {
                    return this;
                }
            } else {
                int iZzb4 = zzzu.zzb(zzziVar, 34);
                if (this.zzazc != null) {
                    length = this.zzazc.length;
                } else {
                    length = 0;
                }
                zzgn[] zzgnVarArr = new zzgn[iZzb4 + length];
                if (length != 0) {
                    System.arraycopy(this.zzazc, 0, zzgnVarArr, 0, length);
                }
                while (length < zzgnVarArr.length - 1) {
                    zzgnVarArr[length] = new zzgn();
                    zzziVar.zza(zzgnVarArr[length]);
                    zzziVar.zzuq();
                    length++;
                }
                zzgnVarArr[length] = new zzgn();
                zzziVar.zza(zzgnVarArr[length]);
                this.zzazc = zzgnVarArr;
            }
        }
    }
}
