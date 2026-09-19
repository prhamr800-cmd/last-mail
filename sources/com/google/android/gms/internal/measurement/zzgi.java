package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgi extends zzzl<zzgi> {
    private static volatile zzgi[] zzaxl;
    public zzgj[] zzaxm = zzgj.zzna();
    public String name = null;
    public Long zzaxn = null;
    public Long zzaxo = null;
    public Integer count = null;

    public static zzgi[] zzmz() {
        if (zzaxl == null) {
            synchronized (zzzp.zzcgg) {
                if (zzaxl == null) {
                    zzaxl = new zzgi[0];
                }
            }
        }
        return zzaxl;
    }

    public zzgi() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgi)) {
            return false;
        }
        zzgi zzgiVar = (zzgi) obj;
        if (!zzzp.equals(this.zzaxm, zzgiVar.zzaxm)) {
            return false;
        }
        if (this.name == null) {
            if (zzgiVar.name != null) {
                return false;
            }
        } else if (!this.name.equals(zzgiVar.name)) {
            return false;
        }
        if (this.zzaxn == null) {
            if (zzgiVar.zzaxn != null) {
                return false;
            }
        } else if (!this.zzaxn.equals(zzgiVar.zzaxn)) {
            return false;
        }
        if (this.zzaxo == null) {
            if (zzgiVar.zzaxo != null) {
                return false;
            }
        } else if (!this.zzaxo.equals(zzgiVar.zzaxo)) {
            return false;
        }
        if (this.count == null) {
            if (zzgiVar.count != null) {
                return false;
            }
        } else if (!this.count.equals(zzgiVar.count)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzgiVar.zzcfx == null || zzgiVar.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzgiVar.zzcfx);
    }

    public final int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = (((((((((((getClass().getName().hashCode() + 527) * 31) + zzzp.hashCode(this.zzaxm)) * 31) + (this.name == null ? 0 : this.name.hashCode())) * 31) + (this.zzaxn == null ? 0 : this.zzaxn.hashCode())) * 31) + (this.zzaxo == null ? 0 : this.zzaxo.hashCode())) * 31) + (this.count == null ? 0 : this.count.hashCode())) * 31;
        if (this.zzcfx != null && !this.zzcfx.isEmpty()) {
            iHashCode = this.zzcfx.hashCode();
        }
        return iHashCode2 + iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzjVar) throws IOException {
        if (this.zzaxm != null && this.zzaxm.length > 0) {
            for (int i = 0; i < this.zzaxm.length; i++) {
                zzgj zzgjVar = this.zzaxm[i];
                if (zzgjVar != null) {
                    zzzjVar.zza(1, zzgjVar);
                }
            }
        }
        if (this.name != null) {
            zzzjVar.zzb(2, this.name);
        }
        if (this.zzaxn != null) {
            zzzjVar.zzi(3, this.zzaxn.longValue());
        }
        if (this.zzaxo != null) {
            zzzjVar.zzi(4, this.zzaxo.longValue());
        }
        if (this.count != null) {
            zzzjVar.zzd(5, this.count.intValue());
        }
        super.zza(zzzjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    protected final int zzf() {
        int iZzf = super.zzf();
        if (this.zzaxm != null && this.zzaxm.length > 0) {
            for (int i = 0; i < this.zzaxm.length; i++) {
                zzgj zzgjVar = this.zzaxm[i];
                if (zzgjVar != null) {
                    iZzf += zzzj.zzb(1, zzgjVar);
                }
            }
        }
        if (this.name != null) {
            iZzf += zzzj.zzc(2, this.name);
        }
        if (this.zzaxn != null) {
            iZzf += zzzj.zzd(3, this.zzaxn.longValue());
        }
        if (this.zzaxo != null) {
            iZzf += zzzj.zzd(4, this.zzaxo.longValue());
        }
        if (this.count != null) {
            return iZzf + zzzj.zzh(5, this.count.intValue());
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
            if (iZzuq == 10) {
                int iZzb = zzzu.zzb(zzziVar, 10);
                if (this.zzaxm != null) {
                    length = this.zzaxm.length;
                } else {
                    length = 0;
                }
                zzgj[] zzgjVarArr = new zzgj[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzaxm, 0, zzgjVarArr, 0, length);
                }
                while (length < zzgjVarArr.length - 1) {
                    zzgjVarArr[length] = new zzgj();
                    zzziVar.zza(zzgjVarArr[length]);
                    zzziVar.zzuq();
                    length++;
                }
                zzgjVarArr[length] = new zzgj();
                zzziVar.zza(zzgjVarArr[length]);
                this.zzaxm = zzgjVarArr;
            } else if (iZzuq == 18) {
                this.name = zzziVar.readString();
            } else if (iZzuq == 24) {
                this.zzaxn = Long.valueOf(zzziVar.zzvj());
            } else if (iZzuq == 32) {
                this.zzaxo = Long.valueOf(zzziVar.zzvj());
            } else if (iZzuq != 40) {
                if (!super.zza(zzziVar, iZzuq)) {
                    return this;
                }
            } else {
                this.count = Integer.valueOf(zzziVar.zzvi());
            }
        }
    }
}
