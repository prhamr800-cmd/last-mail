package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgj extends zzzl<zzgj> {
    private static volatile zzgj[] zzaxp;
    public String name = null;
    public String zzamw = null;
    public Long zzaxq = null;
    private Float zzauz = null;
    public Double zzava = null;

    public static zzgj[] zzna() {
        if (zzaxp == null) {
            synchronized (zzzp.zzcgg) {
                if (zzaxp == null) {
                    zzaxp = new zzgj[0];
                }
            }
        }
        return zzaxp;
    }

    public zzgj() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgj)) {
            return false;
        }
        zzgj zzgjVar = (zzgj) obj;
        if (this.name == null) {
            if (zzgjVar.name != null) {
                return false;
            }
        } else if (!this.name.equals(zzgjVar.name)) {
            return false;
        }
        if (this.zzamw == null) {
            if (zzgjVar.zzamw != null) {
                return false;
            }
        } else if (!this.zzamw.equals(zzgjVar.zzamw)) {
            return false;
        }
        if (this.zzaxq == null) {
            if (zzgjVar.zzaxq != null) {
                return false;
            }
        } else if (!this.zzaxq.equals(zzgjVar.zzaxq)) {
            return false;
        }
        if (this.zzauz == null) {
            if (zzgjVar.zzauz != null) {
                return false;
            }
        } else if (!this.zzauz.equals(zzgjVar.zzauz)) {
            return false;
        }
        if (this.zzava == null) {
            if (zzgjVar.zzava != null) {
                return false;
            }
        } else if (!this.zzava.equals(zzgjVar.zzava)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzgjVar.zzcfx == null || zzgjVar.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzgjVar.zzcfx);
    }

    public final int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = (((((((((((getClass().getName().hashCode() + 527) * 31) + (this.name == null ? 0 : this.name.hashCode())) * 31) + (this.zzamw == null ? 0 : this.zzamw.hashCode())) * 31) + (this.zzaxq == null ? 0 : this.zzaxq.hashCode())) * 31) + (this.zzauz == null ? 0 : this.zzauz.hashCode())) * 31) + (this.zzava == null ? 0 : this.zzava.hashCode())) * 31;
        if (this.zzcfx != null && !this.zzcfx.isEmpty()) {
            iHashCode = this.zzcfx.hashCode();
        }
        return iHashCode2 + iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzjVar) throws IOException {
        if (this.name != null) {
            zzzjVar.zzb(1, this.name);
        }
        if (this.zzamw != null) {
            zzzjVar.zzb(2, this.zzamw);
        }
        if (this.zzaxq != null) {
            zzzjVar.zzi(3, this.zzaxq.longValue());
        }
        if (this.zzauz != null) {
            zzzjVar.zza(4, this.zzauz.floatValue());
        }
        if (this.zzava != null) {
            zzzjVar.zza(5, this.zzava.doubleValue());
        }
        super.zza(zzzjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    protected final int zzf() {
        int iZzf = super.zzf();
        if (this.name != null) {
            iZzf += zzzj.zzc(1, this.name);
        }
        if (this.zzamw != null) {
            iZzf += zzzj.zzc(2, this.zzamw);
        }
        if (this.zzaxq != null) {
            iZzf += zzzj.zzd(3, this.zzaxq.longValue());
        }
        if (this.zzauz != null) {
            this.zzauz.floatValue();
            iZzf += zzzj.zzbc(4) + 4;
        }
        if (this.zzava != null) {
            this.zzava.doubleValue();
            return iZzf + zzzj.zzbc(5) + 8;
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
            if (iZzuq == 10) {
                this.name = zzziVar.readString();
            } else if (iZzuq == 18) {
                this.zzamw = zzziVar.readString();
            } else if (iZzuq == 24) {
                this.zzaxq = Long.valueOf(zzziVar.zzvj());
            } else if (iZzuq == 37) {
                this.zzauz = Float.valueOf(Float.intBitsToFloat(zzziVar.zzvk()));
            } else if (iZzuq != 41) {
                if (!super.zza(zzziVar, iZzuq)) {
                    return this;
                }
            } else {
                this.zzava = Double.valueOf(Double.longBitsToDouble(zzziVar.zzvl()));
            }
        }
    }
}
