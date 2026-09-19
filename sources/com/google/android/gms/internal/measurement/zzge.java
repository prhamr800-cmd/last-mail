package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzge extends zzzl<zzge> {
    public Long zzawx = null;
    public String zzafx = null;
    private Integer zzawy = null;
    public zzgf[] zzawz = zzgf.zzmw();
    public zzgd[] zzaxa = zzgd.zzmv();
    public zzfx[] zzaxb = zzfx.zzmr();
    private String zzaxc = null;

    public zzge() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzge)) {
            return false;
        }
        zzge zzgeVar = (zzge) obj;
        if (this.zzawx == null) {
            if (zzgeVar.zzawx != null) {
                return false;
            }
        } else if (!this.zzawx.equals(zzgeVar.zzawx)) {
            return false;
        }
        if (this.zzafx == null) {
            if (zzgeVar.zzafx != null) {
                return false;
            }
        } else if (!this.zzafx.equals(zzgeVar.zzafx)) {
            return false;
        }
        if (this.zzawy == null) {
            if (zzgeVar.zzawy != null) {
                return false;
            }
        } else if (!this.zzawy.equals(zzgeVar.zzawy)) {
            return false;
        }
        if (!zzzp.equals(this.zzawz, zzgeVar.zzawz) || !zzzp.equals(this.zzaxa, zzgeVar.zzaxa) || !zzzp.equals(this.zzaxb, zzgeVar.zzaxb)) {
            return false;
        }
        if (this.zzaxc == null) {
            if (zzgeVar.zzaxc != null) {
                return false;
            }
        } else if (!this.zzaxc.equals(zzgeVar.zzaxc)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzgeVar.zzcfx == null || zzgeVar.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzgeVar.zzcfx);
    }

    public final int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = (((((((((((((((getClass().getName().hashCode() + 527) * 31) + (this.zzawx == null ? 0 : this.zzawx.hashCode())) * 31) + (this.zzafx == null ? 0 : this.zzafx.hashCode())) * 31) + (this.zzawy == null ? 0 : this.zzawy.hashCode())) * 31) + zzzp.hashCode(this.zzawz)) * 31) + zzzp.hashCode(this.zzaxa)) * 31) + zzzp.hashCode(this.zzaxb)) * 31) + (this.zzaxc == null ? 0 : this.zzaxc.hashCode())) * 31;
        if (this.zzcfx != null && !this.zzcfx.isEmpty()) {
            iHashCode = this.zzcfx.hashCode();
        }
        return iHashCode2 + iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzjVar) throws IOException {
        if (this.zzawx != null) {
            zzzjVar.zzi(1, this.zzawx.longValue());
        }
        if (this.zzafx != null) {
            zzzjVar.zzb(2, this.zzafx);
        }
        if (this.zzawy != null) {
            zzzjVar.zzd(3, this.zzawy.intValue());
        }
        if (this.zzawz != null && this.zzawz.length > 0) {
            for (int i = 0; i < this.zzawz.length; i++) {
                zzgf zzgfVar = this.zzawz[i];
                if (zzgfVar != null) {
                    zzzjVar.zza(4, zzgfVar);
                }
            }
        }
        if (this.zzaxa != null && this.zzaxa.length > 0) {
            for (int i2 = 0; i2 < this.zzaxa.length; i2++) {
                zzgd zzgdVar = this.zzaxa[i2];
                if (zzgdVar != null) {
                    zzzjVar.zza(5, zzgdVar);
                }
            }
        }
        if (this.zzaxb != null && this.zzaxb.length > 0) {
            for (int i3 = 0; i3 < this.zzaxb.length; i3++) {
                zzfx zzfxVar = this.zzaxb[i3];
                if (zzfxVar != null) {
                    zzzjVar.zza(6, zzfxVar);
                }
            }
        }
        if (this.zzaxc != null) {
            zzzjVar.zzb(7, this.zzaxc);
        }
        super.zza(zzzjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    protected final int zzf() {
        int iZzf = super.zzf();
        if (this.zzawx != null) {
            iZzf += zzzj.zzd(1, this.zzawx.longValue());
        }
        if (this.zzafx != null) {
            iZzf += zzzj.zzc(2, this.zzafx);
        }
        if (this.zzawy != null) {
            iZzf += zzzj.zzh(3, this.zzawy.intValue());
        }
        if (this.zzawz != null && this.zzawz.length > 0) {
            int iZzb = iZzf;
            for (int i = 0; i < this.zzawz.length; i++) {
                zzgf zzgfVar = this.zzawz[i];
                if (zzgfVar != null) {
                    iZzb += zzzj.zzb(4, zzgfVar);
                }
            }
            iZzf = iZzb;
        }
        if (this.zzaxa != null && this.zzaxa.length > 0) {
            int iZzb2 = iZzf;
            for (int i2 = 0; i2 < this.zzaxa.length; i2++) {
                zzgd zzgdVar = this.zzaxa[i2];
                if (zzgdVar != null) {
                    iZzb2 += zzzj.zzb(5, zzgdVar);
                }
            }
            iZzf = iZzb2;
        }
        if (this.zzaxb != null && this.zzaxb.length > 0) {
            for (int i3 = 0; i3 < this.zzaxb.length; i3++) {
                zzfx zzfxVar = this.zzaxb[i3];
                if (zzfxVar != null) {
                    iZzf += zzzj.zzb(6, zzfxVar);
                }
            }
        }
        if (this.zzaxc != null) {
            return iZzf + zzzj.zzc(7, this.zzaxc);
        }
        return iZzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzzr
    public final /* synthetic */ zzzr zza(zzzi zzziVar) throws IOException {
        int length;
        int length2;
        int length3;
        while (true) {
            int iZzuq = zzziVar.zzuq();
            if (iZzuq == 0) {
                return this;
            }
            if (iZzuq == 8) {
                this.zzawx = Long.valueOf(zzziVar.zzvj());
            } else if (iZzuq == 18) {
                this.zzafx = zzziVar.readString();
            } else if (iZzuq == 24) {
                this.zzawy = Integer.valueOf(zzziVar.zzvi());
            } else if (iZzuq == 34) {
                int iZzb = zzzu.zzb(zzziVar, 34);
                if (this.zzawz != null) {
                    length3 = this.zzawz.length;
                } else {
                    length3 = 0;
                }
                zzgf[] zzgfVarArr = new zzgf[iZzb + length3];
                if (length3 != 0) {
                    System.arraycopy(this.zzawz, 0, zzgfVarArr, 0, length3);
                }
                while (length3 < zzgfVarArr.length - 1) {
                    zzgfVarArr[length3] = new zzgf();
                    zzziVar.zza(zzgfVarArr[length3]);
                    zzziVar.zzuq();
                    length3++;
                }
                zzgfVarArr[length3] = new zzgf();
                zzziVar.zza(zzgfVarArr[length3]);
                this.zzawz = zzgfVarArr;
            } else if (iZzuq == 42) {
                int iZzb2 = zzzu.zzb(zzziVar, 42);
                if (this.zzaxa != null) {
                    length2 = this.zzaxa.length;
                } else {
                    length2 = 0;
                }
                zzgd[] zzgdVarArr = new zzgd[iZzb2 + length2];
                if (length2 != 0) {
                    System.arraycopy(this.zzaxa, 0, zzgdVarArr, 0, length2);
                }
                while (length2 < zzgdVarArr.length - 1) {
                    zzgdVarArr[length2] = new zzgd();
                    zzziVar.zza(zzgdVarArr[length2]);
                    zzziVar.zzuq();
                    length2++;
                }
                zzgdVarArr[length2] = new zzgd();
                zzziVar.zza(zzgdVarArr[length2]);
                this.zzaxa = zzgdVarArr;
            } else if (iZzuq == 50) {
                int iZzb3 = zzzu.zzb(zzziVar, 50);
                if (this.zzaxb != null) {
                    length = this.zzaxb.length;
                } else {
                    length = 0;
                }
                zzfx[] zzfxVarArr = new zzfx[iZzb3 + length];
                if (length != 0) {
                    System.arraycopy(this.zzaxb, 0, zzfxVarArr, 0, length);
                }
                while (length < zzfxVarArr.length - 1) {
                    zzfxVarArr[length] = new zzfx();
                    zzziVar.zza(zzfxVarArr[length]);
                    zzziVar.zzuq();
                    length++;
                }
                zzfxVarArr[length] = new zzfx();
                zzziVar.zza(zzfxVarArr[length]);
                this.zzaxb = zzfxVarArr;
            } else if (iZzuq != 58) {
                if (!super.zza(zzziVar, iZzuq)) {
                    return this;
                }
            } else {
                this.zzaxc = zzziVar.readString();
            }
        }
    }
}
