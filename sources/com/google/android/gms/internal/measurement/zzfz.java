package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfz extends zzzl<zzfz> {
    private static volatile zzfz[] zzawc;
    public zzgc zzawd = null;
    public zzga zzawe = null;
    public Boolean zzawf = null;
    public String zzawg = null;

    public static zzfz[] zzmt() {
        if (zzawc == null) {
            synchronized (zzzp.zzcgg) {
                if (zzawc == null) {
                    zzawc = new zzfz[0];
                }
            }
        }
        return zzawc;
    }

    public zzfz() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfz)) {
            return false;
        }
        zzfz zzfzVar = (zzfz) obj;
        if (this.zzawd == null) {
            if (zzfzVar.zzawd != null) {
                return false;
            }
        } else if (!this.zzawd.equals(zzfzVar.zzawd)) {
            return false;
        }
        if (this.zzawe == null) {
            if (zzfzVar.zzawe != null) {
                return false;
            }
        } else if (!this.zzawe.equals(zzfzVar.zzawe)) {
            return false;
        }
        if (this.zzawf == null) {
            if (zzfzVar.zzawf != null) {
                return false;
            }
        } else if (!this.zzawf.equals(zzfzVar.zzawf)) {
            return false;
        }
        if (this.zzawg == null) {
            if (zzfzVar.zzawg != null) {
                return false;
            }
        } else if (!this.zzawg.equals(zzfzVar.zzawg)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzfzVar.zzcfx == null || zzfzVar.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzfzVar.zzcfx);
    }

    public final int hashCode() {
        int iHashCode = getClass().getName().hashCode() + 527;
        zzgc zzgcVar = this.zzawd;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode * 31) + (zzgcVar == null ? 0 : zzgcVar.hashCode());
        zzga zzgaVar = this.zzawe;
        int iHashCode4 = ((((((iHashCode3 * 31) + (zzgaVar == null ? 0 : zzgaVar.hashCode())) * 31) + (this.zzawf == null ? 0 : this.zzawf.hashCode())) * 31) + (this.zzawg == null ? 0 : this.zzawg.hashCode())) * 31;
        if (this.zzcfx != null && !this.zzcfx.isEmpty()) {
            iHashCode2 = this.zzcfx.hashCode();
        }
        return iHashCode4 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzjVar) throws IOException {
        if (this.zzawd != null) {
            zzzjVar.zza(1, this.zzawd);
        }
        if (this.zzawe != null) {
            zzzjVar.zza(2, this.zzawe);
        }
        if (this.zzawf != null) {
            zzzjVar.zzb(3, this.zzawf.booleanValue());
        }
        if (this.zzawg != null) {
            zzzjVar.zzb(4, this.zzawg);
        }
        super.zza(zzzjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    protected final int zzf() {
        int iZzf = super.zzf();
        if (this.zzawd != null) {
            iZzf += zzzj.zzb(1, this.zzawd);
        }
        if (this.zzawe != null) {
            iZzf += zzzj.zzb(2, this.zzawe);
        }
        if (this.zzawf != null) {
            this.zzawf.booleanValue();
            iZzf += zzzj.zzbc(3) + 1;
        }
        if (this.zzawg != null) {
            return iZzf + zzzj.zzc(4, this.zzawg);
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
                if (this.zzawd == null) {
                    this.zzawd = new zzgc();
                }
                zzziVar.zza(this.zzawd);
            } else if (iZzuq == 18) {
                if (this.zzawe == null) {
                    this.zzawe = new zzga();
                }
                zzziVar.zza(this.zzawe);
            } else if (iZzuq == 24) {
                this.zzawf = Boolean.valueOf(zzziVar.zzuw());
            } else if (iZzuq != 34) {
                if (!super.zza(zzziVar, iZzuq)) {
                    return this;
                }
            } else {
                this.zzawg = zzziVar.readString();
            }
        }
    }
}
