package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgc extends zzzl<zzgc> {
    public Integer zzawp = null;
    public String zzawq = null;
    public Boolean zzawr = null;
    public String[] zzaws = zzzu.zzcgq;

    public zzgc() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgc)) {
            return false;
        }
        zzgc zzgcVar = (zzgc) obj;
        if (this.zzawp == null) {
            if (zzgcVar.zzawp != null) {
                return false;
            }
        } else if (!this.zzawp.equals(zzgcVar.zzawp)) {
            return false;
        }
        if (this.zzawq == null) {
            if (zzgcVar.zzawq != null) {
                return false;
            }
        } else if (!this.zzawq.equals(zzgcVar.zzawq)) {
            return false;
        }
        if (this.zzawr == null) {
            if (zzgcVar.zzawr != null) {
                return false;
            }
        } else if (!this.zzawr.equals(zzgcVar.zzawr)) {
            return false;
        }
        if (!zzzp.equals(this.zzaws, zzgcVar.zzaws)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzgcVar.zzcfx == null || zzgcVar.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzgcVar.zzcfx);
    }

    public final int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = (((((((((getClass().getName().hashCode() + 527) * 31) + (this.zzawp == null ? 0 : this.zzawp.intValue())) * 31) + (this.zzawq == null ? 0 : this.zzawq.hashCode())) * 31) + (this.zzawr == null ? 0 : this.zzawr.hashCode())) * 31) + zzzp.hashCode(this.zzaws)) * 31;
        if (this.zzcfx != null && !this.zzcfx.isEmpty()) {
            iHashCode = this.zzcfx.hashCode();
        }
        return iHashCode2 + iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzjVar) throws IOException {
        if (this.zzawp != null) {
            zzzjVar.zzd(1, this.zzawp.intValue());
        }
        if (this.zzawq != null) {
            zzzjVar.zzb(2, this.zzawq);
        }
        if (this.zzawr != null) {
            zzzjVar.zzb(3, this.zzawr.booleanValue());
        }
        if (this.zzaws != null && this.zzaws.length > 0) {
            for (int i = 0; i < this.zzaws.length; i++) {
                String str = this.zzaws[i];
                if (str != null) {
                    zzzjVar.zzb(4, str);
                }
            }
        }
        super.zza(zzzjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    protected final int zzf() {
        int iZzf = super.zzf();
        if (this.zzawp != null) {
            iZzf += zzzj.zzh(1, this.zzawp.intValue());
        }
        if (this.zzawq != null) {
            iZzf += zzzj.zzc(2, this.zzawq);
        }
        if (this.zzawr != null) {
            this.zzawr.booleanValue();
            iZzf += zzzj.zzbc(3) + 1;
        }
        if (this.zzaws != null && this.zzaws.length > 0) {
            int iZzge = 0;
            int i = 0;
            for (int i2 = 0; i2 < this.zzaws.length; i2++) {
                String str = this.zzaws[i2];
                if (str != null) {
                    i++;
                    iZzge += zzzj.zzge(str);
                }
            }
            return iZzf + iZzge + (i * 1);
        }
        return iZzf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.zzzr
    /* JADX INFO: renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final zzgc zza(zzzi zzziVar) throws IOException {
        int length;
        while (true) {
            int iZzuq = zzziVar.zzuq();
            if (iZzuq == 0) {
                return this;
            }
            if (iZzuq == 8) {
                int position = zzziVar.getPosition();
                try {
                    int iZzvi = zzziVar.zzvi();
                    if (iZzvi < 0 || iZzvi > 6) {
                        StringBuilder sb = new StringBuilder(41);
                        sb.append(iZzvi);
                        sb.append(" is not a valid enum MatchType");
                        throw new IllegalArgumentException(sb.toString());
                    }
                    this.zzawp = Integer.valueOf(iZzvi);
                } catch (IllegalArgumentException e) {
                    zzziVar.zzca(position);
                    zza(zzziVar, iZzuq);
                }
            } else if (iZzuq == 18) {
                this.zzawq = zzziVar.readString();
            } else if (iZzuq == 24) {
                this.zzawr = Boolean.valueOf(zzziVar.zzuw());
            } else if (iZzuq != 34) {
                if (!super.zza(zzziVar, iZzuq)) {
                    return this;
                }
            } else {
                int iZzb = zzzu.zzb(zzziVar, 34);
                if (this.zzaws != null) {
                    length = this.zzaws.length;
                } else {
                    length = 0;
                }
                String[] strArr = new String[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzaws, 0, strArr, 0, length);
                }
                while (length < strArr.length - 1) {
                    strArr[length] = zzziVar.readString();
                    zzziVar.zzuq();
                    length++;
                }
                strArr[length] = zzziVar.readString();
                this.zzaws = strArr;
            }
        }
    }
}
