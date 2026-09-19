package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgd extends zzzl<zzgd> {
    private static volatile zzgd[] zzawt;
    public String name = null;
    public Boolean zzawu = null;
    public Boolean zzawv = null;
    public Integer zzaww = null;

    public static zzgd[] zzmv() {
        if (zzawt == null) {
            synchronized (zzzp.zzcgg) {
                if (zzawt == null) {
                    zzawt = new zzgd[0];
                }
            }
        }
        return zzawt;
    }

    public zzgd() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgd)) {
            return false;
        }
        zzgd zzgdVar = (zzgd) obj;
        if (this.name == null) {
            if (zzgdVar.name != null) {
                return false;
            }
        } else if (!this.name.equals(zzgdVar.name)) {
            return false;
        }
        if (this.zzawu == null) {
            if (zzgdVar.zzawu != null) {
                return false;
            }
        } else if (!this.zzawu.equals(zzgdVar.zzawu)) {
            return false;
        }
        if (this.zzawv == null) {
            if (zzgdVar.zzawv != null) {
                return false;
            }
        } else if (!this.zzawv.equals(zzgdVar.zzawv)) {
            return false;
        }
        if (this.zzaww == null) {
            if (zzgdVar.zzaww != null) {
                return false;
            }
        } else if (!this.zzaww.equals(zzgdVar.zzaww)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzgdVar.zzcfx == null || zzgdVar.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzgdVar.zzcfx);
    }

    public final int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = (((((((((getClass().getName().hashCode() + 527) * 31) + (this.name == null ? 0 : this.name.hashCode())) * 31) + (this.zzawu == null ? 0 : this.zzawu.hashCode())) * 31) + (this.zzawv == null ? 0 : this.zzawv.hashCode())) * 31) + (this.zzaww == null ? 0 : this.zzaww.hashCode())) * 31;
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
        if (this.zzawu != null) {
            zzzjVar.zzb(2, this.zzawu.booleanValue());
        }
        if (this.zzawv != null) {
            zzzjVar.zzb(3, this.zzawv.booleanValue());
        }
        if (this.zzaww != null) {
            zzzjVar.zzd(4, this.zzaww.intValue());
        }
        super.zza(zzzjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    protected final int zzf() {
        int iZzf = super.zzf();
        if (this.name != null) {
            iZzf += zzzj.zzc(1, this.name);
        }
        if (this.zzawu != null) {
            this.zzawu.booleanValue();
            iZzf += zzzj.zzbc(2) + 1;
        }
        if (this.zzawv != null) {
            this.zzawv.booleanValue();
            iZzf += zzzj.zzbc(3) + 1;
        }
        if (this.zzaww != null) {
            return iZzf + zzzj.zzh(4, this.zzaww.intValue());
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
            } else if (iZzuq == 16) {
                this.zzawu = Boolean.valueOf(zzziVar.zzuw());
            } else if (iZzuq == 24) {
                this.zzawv = Boolean.valueOf(zzziVar.zzuw());
            } else if (iZzuq != 32) {
                if (!super.zza(zzziVar, iZzuq)) {
                    return this;
                }
            } else {
                this.zzaww = Integer.valueOf(zzziVar.zzvi());
            }
        }
    }
}
