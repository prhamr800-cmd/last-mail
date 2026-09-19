package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgb extends zzzl<zzgb> {
    private static volatile zzgb[] zzawm;
    public Integer zzavx = null;
    public String zzawn = null;
    public zzfz zzawo = null;
    public Boolean zzavu = null;
    public Boolean zzavv = null;

    public static zzgb[] zzmu() {
        if (zzawm == null) {
            synchronized (zzzp.zzcgg) {
                if (zzawm == null) {
                    zzawm = new zzgb[0];
                }
            }
        }
        return zzawm;
    }

    public zzgb() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgb)) {
            return false;
        }
        zzgb zzgbVar = (zzgb) obj;
        if (this.zzavx == null) {
            if (zzgbVar.zzavx != null) {
                return false;
            }
        } else if (!this.zzavx.equals(zzgbVar.zzavx)) {
            return false;
        }
        if (this.zzawn == null) {
            if (zzgbVar.zzawn != null) {
                return false;
            }
        } else if (!this.zzawn.equals(zzgbVar.zzawn)) {
            return false;
        }
        if (this.zzawo == null) {
            if (zzgbVar.zzawo != null) {
                return false;
            }
        } else if (!this.zzawo.equals(zzgbVar.zzawo)) {
            return false;
        }
        if (this.zzavu == null) {
            if (zzgbVar.zzavu != null) {
                return false;
            }
        } else if (!this.zzavu.equals(zzgbVar.zzavu)) {
            return false;
        }
        if (this.zzavv == null) {
            if (zzgbVar.zzavv != null) {
                return false;
            }
        } else if (!this.zzavv.equals(zzgbVar.zzavv)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzgbVar.zzcfx == null || zzgbVar.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzgbVar.zzcfx);
    }

    public final int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = ((((getClass().getName().hashCode() + 527) * 31) + (this.zzavx == null ? 0 : this.zzavx.hashCode())) * 31) + (this.zzawn == null ? 0 : this.zzawn.hashCode());
        zzfz zzfzVar = this.zzawo;
        int iHashCode3 = ((((((iHashCode2 * 31) + (zzfzVar == null ? 0 : zzfzVar.hashCode())) * 31) + (this.zzavu == null ? 0 : this.zzavu.hashCode())) * 31) + (this.zzavv == null ? 0 : this.zzavv.hashCode())) * 31;
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
        if (this.zzawn != null) {
            zzzjVar.zzb(2, this.zzawn);
        }
        if (this.zzawo != null) {
            zzzjVar.zza(3, this.zzawo);
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
        if (this.zzavx != null) {
            iZzf += zzzj.zzh(1, this.zzavx.intValue());
        }
        if (this.zzawn != null) {
            iZzf += zzzj.zzc(2, this.zzawn);
        }
        if (this.zzawo != null) {
            iZzf += zzzj.zzb(3, this.zzawo);
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
        while (true) {
            int iZzuq = zzziVar.zzuq();
            if (iZzuq == 0) {
                return this;
            }
            if (iZzuq == 8) {
                this.zzavx = Integer.valueOf(zzziVar.zzvi());
            } else if (iZzuq == 18) {
                this.zzawn = zzziVar.readString();
            } else if (iZzuq == 26) {
                if (this.zzawo == null) {
                    this.zzawo = new zzfz();
                }
                zzziVar.zza(this.zzawo);
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
