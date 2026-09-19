package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfx extends zzzl<zzfx> {
    private static volatile zzfx[] zzavq;
    public Integer zzavr = null;
    public zzgb[] zzavs = zzgb.zzmu();
    public zzfy[] zzavt = zzfy.zzms();
    private Boolean zzavu = null;
    private Boolean zzavv = null;

    public static zzfx[] zzmr() {
        if (zzavq == null) {
            synchronized (zzzp.zzcgg) {
                if (zzavq == null) {
                    zzavq = new zzfx[0];
                }
            }
        }
        return zzavq;
    }

    public zzfx() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfx)) {
            return false;
        }
        zzfx zzfxVar = (zzfx) obj;
        if (this.zzavr == null) {
            if (zzfxVar.zzavr != null) {
                return false;
            }
        } else if (!this.zzavr.equals(zzfxVar.zzavr)) {
            return false;
        }
        if (!zzzp.equals(this.zzavs, zzfxVar.zzavs) || !zzzp.equals(this.zzavt, zzfxVar.zzavt)) {
            return false;
        }
        if (this.zzavu == null) {
            if (zzfxVar.zzavu != null) {
                return false;
            }
        } else if (!this.zzavu.equals(zzfxVar.zzavu)) {
            return false;
        }
        if (this.zzavv == null) {
            if (zzfxVar.zzavv != null) {
                return false;
            }
        } else if (!this.zzavv.equals(zzfxVar.zzavv)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzfxVar.zzcfx == null || zzfxVar.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzfxVar.zzcfx);
    }

    public final int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = (((((((((((getClass().getName().hashCode() + 527) * 31) + (this.zzavr == null ? 0 : this.zzavr.hashCode())) * 31) + zzzp.hashCode(this.zzavs)) * 31) + zzzp.hashCode(this.zzavt)) * 31) + (this.zzavu == null ? 0 : this.zzavu.hashCode())) * 31) + (this.zzavv == null ? 0 : this.zzavv.hashCode())) * 31;
        if (this.zzcfx != null && !this.zzcfx.isEmpty()) {
            iHashCode = this.zzcfx.hashCode();
        }
        return iHashCode2 + iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzjVar) throws IOException {
        if (this.zzavr != null) {
            zzzjVar.zzd(1, this.zzavr.intValue());
        }
        if (this.zzavs != null && this.zzavs.length > 0) {
            for (int i = 0; i < this.zzavs.length; i++) {
                zzgb zzgbVar = this.zzavs[i];
                if (zzgbVar != null) {
                    zzzjVar.zza(2, zzgbVar);
                }
            }
        }
        if (this.zzavt != null && this.zzavt.length > 0) {
            for (int i2 = 0; i2 < this.zzavt.length; i2++) {
                zzfy zzfyVar = this.zzavt[i2];
                if (zzfyVar != null) {
                    zzzjVar.zza(3, zzfyVar);
                }
            }
        }
        if (this.zzavu != null) {
            zzzjVar.zzb(4, this.zzavu.booleanValue());
        }
        if (this.zzavv != null) {
            zzzjVar.zzb(5, this.zzavv.booleanValue());
        }
        super.zza(zzzjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    protected final int zzf() {
        int iZzf = super.zzf();
        if (this.zzavr != null) {
            iZzf += zzzj.zzh(1, this.zzavr.intValue());
        }
        if (this.zzavs != null && this.zzavs.length > 0) {
            int iZzb = iZzf;
            for (int i = 0; i < this.zzavs.length; i++) {
                zzgb zzgbVar = this.zzavs[i];
                if (zzgbVar != null) {
                    iZzb += zzzj.zzb(2, zzgbVar);
                }
            }
            iZzf = iZzb;
        }
        if (this.zzavt != null && this.zzavt.length > 0) {
            for (int i2 = 0; i2 < this.zzavt.length; i2++) {
                zzfy zzfyVar = this.zzavt[i2];
                if (zzfyVar != null) {
                    iZzf += zzzj.zzb(3, zzfyVar);
                }
            }
        }
        if (this.zzavu != null) {
            this.zzavu.booleanValue();
            iZzf += zzzj.zzbc(4) + 1;
        }
        if (this.zzavv != null) {
            this.zzavv.booleanValue();
            return iZzf + zzzj.zzbc(5) + 1;
        }
        return iZzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzzr
    public final /* synthetic */ zzzr zza(zzzi zzziVar) throws IOException {
        int length;
        int length2;
        while (true) {
            int iZzuq = zzziVar.zzuq();
            if (iZzuq == 0) {
                return this;
            }
            if (iZzuq == 8) {
                this.zzavr = Integer.valueOf(zzziVar.zzvi());
            } else if (iZzuq == 18) {
                int iZzb = zzzu.zzb(zzziVar, 18);
                if (this.zzavs != null) {
                    length2 = this.zzavs.length;
                } else {
                    length2 = 0;
                }
                zzgb[] zzgbVarArr = new zzgb[iZzb + length2];
                if (length2 != 0) {
                    System.arraycopy(this.zzavs, 0, zzgbVarArr, 0, length2);
                }
                while (length2 < zzgbVarArr.length - 1) {
                    zzgbVarArr[length2] = new zzgb();
                    zzziVar.zza(zzgbVarArr[length2]);
                    zzziVar.zzuq();
                    length2++;
                }
                zzgbVarArr[length2] = new zzgb();
                zzziVar.zza(zzgbVarArr[length2]);
                this.zzavs = zzgbVarArr;
            } else if (iZzuq == 26) {
                int iZzb2 = zzzu.zzb(zzziVar, 26);
                if (this.zzavt != null) {
                    length = this.zzavt.length;
                } else {
                    length = 0;
                }
                zzfy[] zzfyVarArr = new zzfy[iZzb2 + length];
                if (length != 0) {
                    System.arraycopy(this.zzavt, 0, zzfyVarArr, 0, length);
                }
                while (length < zzfyVarArr.length - 1) {
                    zzfyVarArr[length] = new zzfy();
                    zzziVar.zza(zzfyVarArr[length]);
                    zzziVar.zzuq();
                    length++;
                }
                zzfyVarArr[length] = new zzfy();
                zzziVar.zza(zzfyVarArr[length]);
                this.zzavt = zzfyVarArr;
            } else if (iZzuq == 32) {
                this.zzavu = Boolean.valueOf(zzziVar.zzuw());
            } else if (iZzuq != 40) {
                if (!super.zza(zzziVar, iZzuq)) {
                    return this;
                }
            } else {
                this.zzavv = Boolean.valueOf(zzziVar.zzuw());
            }
        }
    }
}
