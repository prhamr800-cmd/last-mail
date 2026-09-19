package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgg extends zzzl<zzgg> {
    private static volatile zzgg[] zzaxe;
    public Integer zzavr = null;
    public zzgm zzaxf = null;
    public zzgm zzaxg = null;
    public Boolean zzaxh = null;

    public static zzgg[] zzmx() {
        if (zzaxe == null) {
            synchronized (zzzp.zzcgg) {
                if (zzaxe == null) {
                    zzaxe = new zzgg[0];
                }
            }
        }
        return zzaxe;
    }

    public zzgg() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgg)) {
            return false;
        }
        zzgg zzggVar = (zzgg) obj;
        if (this.zzavr == null) {
            if (zzggVar.zzavr != null) {
                return false;
            }
        } else if (!this.zzavr.equals(zzggVar.zzavr)) {
            return false;
        }
        if (this.zzaxf == null) {
            if (zzggVar.zzaxf != null) {
                return false;
            }
        } else if (!this.zzaxf.equals(zzggVar.zzaxf)) {
            return false;
        }
        if (this.zzaxg == null) {
            if (zzggVar.zzaxg != null) {
                return false;
            }
        } else if (!this.zzaxg.equals(zzggVar.zzaxg)) {
            return false;
        }
        if (this.zzaxh == null) {
            if (zzggVar.zzaxh != null) {
                return false;
            }
        } else if (!this.zzaxh.equals(zzggVar.zzaxh)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzggVar.zzcfx == null || zzggVar.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzggVar.zzcfx);
    }

    public final int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = ((getClass().getName().hashCode() + 527) * 31) + (this.zzavr == null ? 0 : this.zzavr.hashCode());
        zzgm zzgmVar = this.zzaxf;
        int iHashCode3 = (iHashCode2 * 31) + (zzgmVar == null ? 0 : zzgmVar.hashCode());
        zzgm zzgmVar2 = this.zzaxg;
        int iHashCode4 = ((((iHashCode3 * 31) + (zzgmVar2 == null ? 0 : zzgmVar2.hashCode())) * 31) + (this.zzaxh == null ? 0 : this.zzaxh.hashCode())) * 31;
        if (this.zzcfx != null && !this.zzcfx.isEmpty()) {
            iHashCode = this.zzcfx.hashCode();
        }
        return iHashCode4 + iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzjVar) throws IOException {
        if (this.zzavr != null) {
            zzzjVar.zzd(1, this.zzavr.intValue());
        }
        if (this.zzaxf != null) {
            zzzjVar.zza(2, this.zzaxf);
        }
        if (this.zzaxg != null) {
            zzzjVar.zza(3, this.zzaxg);
        }
        if (this.zzaxh != null) {
            zzzjVar.zzb(4, this.zzaxh.booleanValue());
        }
        super.zza(zzzjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    protected final int zzf() {
        int iZzf = super.zzf();
        if (this.zzavr != null) {
            iZzf += zzzj.zzh(1, this.zzavr.intValue());
        }
        if (this.zzaxf != null) {
            iZzf += zzzj.zzb(2, this.zzaxf);
        }
        if (this.zzaxg != null) {
            iZzf += zzzj.zzb(3, this.zzaxg);
        }
        if (this.zzaxh != null) {
            this.zzaxh.booleanValue();
            return iZzf + zzzj.zzbc(4) + 1;
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
                this.zzavr = Integer.valueOf(zzziVar.zzvi());
            } else if (iZzuq == 18) {
                if (this.zzaxf == null) {
                    this.zzaxf = new zzgm();
                }
                zzziVar.zza(this.zzaxf);
            } else if (iZzuq == 26) {
                if (this.zzaxg == null) {
                    this.zzaxg = new zzgm();
                }
                zzziVar.zza(this.zzaxg);
            } else if (iZzuq != 32) {
                if (!super.zza(zzziVar, iZzuq)) {
                    return this;
                }
            } else {
                this.zzaxh = Boolean.valueOf(zzziVar.zzuw());
            }
        }
    }
}
