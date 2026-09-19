package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfy extends zzzl<zzfy> {
    private static volatile zzfy[] zzavw;
    public Integer zzavx = null;
    public String zzavy = null;
    public zzfz[] zzavz = zzfz.zzmt();
    private Boolean zzawa = null;
    public zzga zzawb = null;
    public Boolean zzavu = null;
    public Boolean zzavv = null;

    public static zzfy[] zzms() {
        if (zzavw == null) {
            synchronized (zzzp.zzcgg) {
                if (zzavw == null) {
                    zzavw = new zzfy[0];
                }
            }
        }
        return zzavw;
    }

    public zzfy() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfy)) {
            return false;
        }
        zzfy zzfyVar = (zzfy) obj;
        if (this.zzavx == null) {
            if (zzfyVar.zzavx != null) {
                return false;
            }
        } else if (!this.zzavx.equals(zzfyVar.zzavx)) {
            return false;
        }
        if (this.zzavy == null) {
            if (zzfyVar.zzavy != null) {
                return false;
            }
        } else if (!this.zzavy.equals(zzfyVar.zzavy)) {
            return false;
        }
        if (!zzzp.equals(this.zzavz, zzfyVar.zzavz)) {
            return false;
        }
        if (this.zzawa == null) {
            if (zzfyVar.zzawa != null) {
                return false;
            }
        } else if (!this.zzawa.equals(zzfyVar.zzawa)) {
            return false;
        }
        if (this.zzawb == null) {
            if (zzfyVar.zzawb != null) {
                return false;
            }
        } else if (!this.zzawb.equals(zzfyVar.zzawb)) {
            return false;
        }
        if (this.zzavu == null) {
            if (zzfyVar.zzavu != null) {
                return false;
            }
        } else if (!this.zzavu.equals(zzfyVar.zzavu)) {
            return false;
        }
        if (this.zzavv == null) {
            if (zzfyVar.zzavv != null) {
                return false;
            }
        } else if (!this.zzavv.equals(zzfyVar.zzavv)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzfyVar.zzcfx == null || zzfyVar.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzfyVar.zzcfx);
    }

    public final int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = ((((((((getClass().getName().hashCode() + 527) * 31) + (this.zzavx == null ? 0 : this.zzavx.hashCode())) * 31) + (this.zzavy == null ? 0 : this.zzavy.hashCode())) * 31) + zzzp.hashCode(this.zzavz)) * 31) + (this.zzawa == null ? 0 : this.zzawa.hashCode());
        zzga zzgaVar = this.zzawb;
        int iHashCode3 = ((((((iHashCode2 * 31) + (zzgaVar == null ? 0 : zzgaVar.hashCode())) * 31) + (this.zzavu == null ? 0 : this.zzavu.hashCode())) * 31) + (this.zzavv == null ? 0 : this.zzavv.hashCode())) * 31;
        if (this.zzcfx != null && !this.zzcfx.isEmpty()) {
            iHashCode = this.zzcfx.hashCode();
        }
        return iHashCode3 + iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzjVar) throws IOException {
        if (this.zzavx != null) {
            zzzjVar.zzd(1, this.zzavx.intValue());
        }
        if (this.zzavy != null) {
            zzzjVar.zzb(2, this.zzavy);
        }
        if (this.zzavz != null && this.zzavz.length > 0) {
            for (int i = 0; i < this.zzavz.length; i++) {
                zzfz zzfzVar = this.zzavz[i];
                if (zzfzVar != null) {
                    zzzjVar.zza(3, zzfzVar);
                }
            }
        }
        if (this.zzawa != null) {
            zzzjVar.zzb(4, this.zzawa.booleanValue());
        }
        if (this.zzawb != null) {
            zzzjVar.zza(5, this.zzawb);
        }
        if (this.zzavu != null) {
            zzzjVar.zzb(6, this.zzavu.booleanValue());
        }
        if (this.zzavv != null) {
            zzzjVar.zzb(7, this.zzavv.booleanValue());
        }
        super.zza(zzzjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    protected final int zzf() {
        int iZzf = super.zzf();
        if (this.zzavx != null) {
            iZzf += zzzj.zzh(1, this.zzavx.intValue());
        }
        if (this.zzavy != null) {
            iZzf += zzzj.zzc(2, this.zzavy);
        }
        if (this.zzavz != null && this.zzavz.length > 0) {
            for (int i = 0; i < this.zzavz.length; i++) {
                zzfz zzfzVar = this.zzavz[i];
                if (zzfzVar != null) {
                    iZzf += zzzj.zzb(3, zzfzVar);
                }
            }
        }
        if (this.zzawa != null) {
            this.zzawa.booleanValue();
            iZzf += zzzj.zzbc(4) + 1;
        }
        if (this.zzawb != null) {
            iZzf += zzzj.zzb(5, this.zzawb);
        }
        if (this.zzavu != null) {
            this.zzavu.booleanValue();
            iZzf += zzzj.zzbc(6) + 1;
        }
        if (this.zzavv != null) {
            this.zzavv.booleanValue();
            return iZzf + zzzj.zzbc(7) + 1;
        }
        return iZzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzzr
    public final /* synthetic */ zzzr zza(zzzi zzziVar) throws IOException {
        int length;
        while (true) {
            int iZzuq = zzziVar.zzuq();
            if (iZzuq == 0) {
                return this;
            }
            if (iZzuq == 8) {
                this.zzavx = Integer.valueOf(zzziVar.zzvi());
            } else if (iZzuq == 18) {
                this.zzavy = zzziVar.readString();
            } else if (iZzuq == 26) {
                int iZzb = zzzu.zzb(zzziVar, 26);
                if (this.zzavz != null) {
                    length = this.zzavz.length;
                } else {
                    length = 0;
                }
                zzfz[] zzfzVarArr = new zzfz[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzavz, 0, zzfzVarArr, 0, length);
                }
                while (length < zzfzVarArr.length - 1) {
                    zzfzVarArr[length] = new zzfz();
                    zzziVar.zza(zzfzVarArr[length]);
                    zzziVar.zzuq();
                    length++;
                }
                zzfzVarArr[length] = new zzfz();
                zzziVar.zza(zzfzVarArr[length]);
                this.zzavz = zzfzVarArr;
            } else if (iZzuq == 32) {
                this.zzawa = Boolean.valueOf(zzziVar.zzuw());
            } else if (iZzuq == 42) {
                if (this.zzawb == null) {
                    this.zzawb = new zzga();
                }
                zzziVar.zza(this.zzawb);
            } else if (iZzuq == 48) {
                this.zzavu = Boolean.valueOf(zzziVar.zzuw());
            } else if (iZzuq != 56) {
                if (!super.zza(zzziVar, iZzuq)) {
                    return this;
                }
            } else {
                this.zzavv = Boolean.valueOf(zzziVar.zzuw());
            }
        }
    }
}
