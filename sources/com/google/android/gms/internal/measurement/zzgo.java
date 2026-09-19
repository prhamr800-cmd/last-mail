package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgo extends zzzl<zzgo> {
    private static volatile zzgo[] zzazf;
    public Long zzazg = null;
    public String name = null;
    public String zzamw = null;
    public Long zzaxq = null;
    private Float zzauz = null;
    public Double zzava = null;

    public static zzgo[] zznd() {
        if (zzazf == null) {
            synchronized (zzzp.zzcgg) {
                if (zzazf == null) {
                    zzazf = new zzgo[0];
                }
            }
        }
        return zzazf;
    }

    public zzgo() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgo)) {
            return false;
        }
        zzgo zzgoVar = (zzgo) obj;
        if (this.zzazg == null) {
            if (zzgoVar.zzazg != null) {
                return false;
            }
        } else if (!this.zzazg.equals(zzgoVar.zzazg)) {
            return false;
        }
        if (this.name == null) {
            if (zzgoVar.name != null) {
                return false;
            }
        } else if (!this.name.equals(zzgoVar.name)) {
            return false;
        }
        if (this.zzamw == null) {
            if (zzgoVar.zzamw != null) {
                return false;
            }
        } else if (!this.zzamw.equals(zzgoVar.zzamw)) {
            return false;
        }
        if (this.zzaxq == null) {
            if (zzgoVar.zzaxq != null) {
                return false;
            }
        } else if (!this.zzaxq.equals(zzgoVar.zzaxq)) {
            return false;
        }
        if (this.zzauz == null) {
            if (zzgoVar.zzauz != null) {
                return false;
            }
        } else if (!this.zzauz.equals(zzgoVar.zzauz)) {
            return false;
        }
        if (this.zzava == null) {
            if (zzgoVar.zzava != null) {
                return false;
            }
        } else if (!this.zzava.equals(zzgoVar.zzava)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzgoVar.zzcfx == null || zzgoVar.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzgoVar.zzcfx);
    }

    public final int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = (((((((((((((getClass().getName().hashCode() + 527) * 31) + (this.zzazg == null ? 0 : this.zzazg.hashCode())) * 31) + (this.name == null ? 0 : this.name.hashCode())) * 31) + (this.zzamw == null ? 0 : this.zzamw.hashCode())) * 31) + (this.zzaxq == null ? 0 : this.zzaxq.hashCode())) * 31) + (this.zzauz == null ? 0 : this.zzauz.hashCode())) * 31) + (this.zzava == null ? 0 : this.zzava.hashCode())) * 31;
        if (this.zzcfx != null && !this.zzcfx.isEmpty()) {
            iHashCode = this.zzcfx.hashCode();
        }
        return iHashCode2 + iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzjVar) throws IOException {
        if (this.zzazg != null) {
            zzzjVar.zzi(1, this.zzazg.longValue());
        }
        if (this.name != null) {
            zzzjVar.zzb(2, this.name);
        }
        if (this.zzamw != null) {
            zzzjVar.zzb(3, this.zzamw);
        }
        if (this.zzaxq != null) {
            zzzjVar.zzi(4, this.zzaxq.longValue());
        }
        if (this.zzauz != null) {
            zzzjVar.zza(5, this.zzauz.floatValue());
        }
        if (this.zzava != null) {
            zzzjVar.zza(6, this.zzava.doubleValue());
        }
        super.zza(zzzjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    protected final int zzf() {
        int iZzf = super.zzf();
        if (this.zzazg != null) {
            iZzf += zzzj.zzd(1, this.zzazg.longValue());
        }
        if (this.name != null) {
            iZzf += zzzj.zzc(2, this.name);
        }
        if (this.zzamw != null) {
            iZzf += zzzj.zzc(3, this.zzamw);
        }
        if (this.zzaxq != null) {
            iZzf += zzzj.zzd(4, this.zzaxq.longValue());
        }
        if (this.zzauz != null) {
            this.zzauz.floatValue();
            iZzf += zzzj.zzbc(5) + 4;
        }
        if (this.zzava != null) {
            this.zzava.doubleValue();
            return iZzf + zzzj.zzbc(6) + 8;
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
                this.zzazg = Long.valueOf(zzziVar.zzvj());
            } else if (iZzuq == 18) {
                this.name = zzziVar.readString();
            } else if (iZzuq == 26) {
                this.zzamw = zzziVar.readString();
            } else if (iZzuq == 32) {
                this.zzaxq = Long.valueOf(zzziVar.zzvj());
            } else if (iZzuq == 45) {
                this.zzauz = Float.valueOf(Float.intBitsToFloat(zzziVar.zzvk()));
            } else if (iZzuq != 49) {
                if (!super.zza(zzziVar, iZzuq)) {
                    return this;
                }
            } else {
                this.zzava = Double.valueOf(Double.longBitsToDouble(zzziVar.zzvl()));
            }
        }
    }
}
