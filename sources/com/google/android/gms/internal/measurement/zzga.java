package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzga extends zzzl<zzga> {
    public Integer zzawh = null;
    public Boolean zzawi = null;
    public String zzawj = null;
    public String zzawk = null;
    public String zzawl = null;

    public zzga() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzga)) {
            return false;
        }
        zzga zzgaVar = (zzga) obj;
        if (this.zzawh == null) {
            if (zzgaVar.zzawh != null) {
                return false;
            }
        } else if (!this.zzawh.equals(zzgaVar.zzawh)) {
            return false;
        }
        if (this.zzawi == null) {
            if (zzgaVar.zzawi != null) {
                return false;
            }
        } else if (!this.zzawi.equals(zzgaVar.zzawi)) {
            return false;
        }
        if (this.zzawj == null) {
            if (zzgaVar.zzawj != null) {
                return false;
            }
        } else if (!this.zzawj.equals(zzgaVar.zzawj)) {
            return false;
        }
        if (this.zzawk == null) {
            if (zzgaVar.zzawk != null) {
                return false;
            }
        } else if (!this.zzawk.equals(zzgaVar.zzawk)) {
            return false;
        }
        if (this.zzawl == null) {
            if (zzgaVar.zzawl != null) {
                return false;
            }
        } else if (!this.zzawl.equals(zzgaVar.zzawl)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzgaVar.zzcfx == null || zzgaVar.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzgaVar.zzcfx);
    }

    public final int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = (((((((((((getClass().getName().hashCode() + 527) * 31) + (this.zzawh == null ? 0 : this.zzawh.intValue())) * 31) + (this.zzawi == null ? 0 : this.zzawi.hashCode())) * 31) + (this.zzawj == null ? 0 : this.zzawj.hashCode())) * 31) + (this.zzawk == null ? 0 : this.zzawk.hashCode())) * 31) + (this.zzawl == null ? 0 : this.zzawl.hashCode())) * 31;
        if (this.zzcfx != null && !this.zzcfx.isEmpty()) {
            iHashCode = this.zzcfx.hashCode();
        }
        return iHashCode2 + iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzjVar) throws IOException {
        if (this.zzawh != null) {
            zzzjVar.zzd(1, this.zzawh.intValue());
        }
        if (this.zzawi != null) {
            zzzjVar.zzb(2, this.zzawi.booleanValue());
        }
        if (this.zzawj != null) {
            zzzjVar.zzb(3, this.zzawj);
        }
        if (this.zzawk != null) {
            zzzjVar.zzb(4, this.zzawk);
        }
        if (this.zzawl != null) {
            zzzjVar.zzb(5, this.zzawl);
        }
        super.zza(zzzjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    protected final int zzf() {
        int iZzf = super.zzf();
        if (this.zzawh != null) {
            iZzf += zzzj.zzh(1, this.zzawh.intValue());
        }
        if (this.zzawi != null) {
            this.zzawi.booleanValue();
            iZzf += zzzj.zzbc(2) + 1;
        }
        if (this.zzawj != null) {
            iZzf += zzzj.zzc(3, this.zzawj);
        }
        if (this.zzawk != null) {
            iZzf += zzzj.zzc(4, this.zzawk);
        }
        if (this.zzawl != null) {
            return iZzf + zzzj.zzc(5, this.zzawl);
        }
        return iZzf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.zzzr
    /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final zzga zza(zzzi zzziVar) throws IOException {
        while (true) {
            int iZzuq = zzziVar.zzuq();
            if (iZzuq == 0) {
                return this;
            }
            if (iZzuq == 8) {
                int position = zzziVar.getPosition();
                try {
                    int iZzvi = zzziVar.zzvi();
                    if (iZzvi < 0 || iZzvi > 4) {
                        StringBuilder sb = new StringBuilder(46);
                        sb.append(iZzvi);
                        sb.append(" is not a valid enum ComparisonType");
                        throw new IllegalArgumentException(sb.toString());
                    }
                    this.zzawh = Integer.valueOf(iZzvi);
                } catch (IllegalArgumentException e) {
                    zzziVar.zzca(position);
                    zza(zzziVar, iZzuq);
                }
            } else if (iZzuq == 16) {
                this.zzawi = Boolean.valueOf(zzziVar.zzuw());
            } else if (iZzuq == 26) {
                this.zzawj = zzziVar.readString();
            } else if (iZzuq == 34) {
                this.zzawk = zzziVar.readString();
            } else if (iZzuq != 42) {
                if (!super.zza(zzziVar, iZzuq)) {
                    return this;
                }
            } else {
                this.zzawl = zzziVar.readString();
            }
        }
    }
}
