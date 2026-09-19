package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgh extends zzzl<zzgh> {
    private static volatile zzgh[] zzaxi;
    public Integer zzaxj = null;
    public Long zzaxk = null;

    public static zzgh[] zzmy() {
        if (zzaxi == null) {
            synchronized (zzzp.zzcgg) {
                if (zzaxi == null) {
                    zzaxi = new zzgh[0];
                }
            }
        }
        return zzaxi;
    }

    public zzgh() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgh)) {
            return false;
        }
        zzgh zzghVar = (zzgh) obj;
        if (this.zzaxj == null) {
            if (zzghVar.zzaxj != null) {
                return false;
            }
        } else if (!this.zzaxj.equals(zzghVar.zzaxj)) {
            return false;
        }
        if (this.zzaxk == null) {
            if (zzghVar.zzaxk != null) {
                return false;
            }
        } else if (!this.zzaxk.equals(zzghVar.zzaxk)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzghVar.zzcfx == null || zzghVar.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzghVar.zzcfx);
    }

    public final int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = (((((getClass().getName().hashCode() + 527) * 31) + (this.zzaxj == null ? 0 : this.zzaxj.hashCode())) * 31) + (this.zzaxk == null ? 0 : this.zzaxk.hashCode())) * 31;
        if (this.zzcfx != null && !this.zzcfx.isEmpty()) {
            iHashCode = this.zzcfx.hashCode();
        }
        return iHashCode2 + iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzjVar) throws IOException {
        if (this.zzaxj != null) {
            zzzjVar.zzd(1, this.zzaxj.intValue());
        }
        if (this.zzaxk != null) {
            zzzjVar.zzi(2, this.zzaxk.longValue());
        }
        super.zza(zzzjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    protected final int zzf() {
        int iZzf = super.zzf();
        if (this.zzaxj != null) {
            iZzf += zzzj.zzh(1, this.zzaxj.intValue());
        }
        if (this.zzaxk != null) {
            return iZzf + zzzj.zzd(2, this.zzaxk.longValue());
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
                this.zzaxj = Integer.valueOf(zzziVar.zzvi());
            } else if (iZzuq != 16) {
                if (!super.zza(zzziVar, iZzuq)) {
                    return this;
                }
            } else {
                this.zzaxk = Long.valueOf(zzziVar.zzvj());
            }
        }
    }
}
