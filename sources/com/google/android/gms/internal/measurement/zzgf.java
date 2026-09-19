package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgf extends zzzl<zzgf> {
    private static volatile zzgf[] zzaxd;
    public String zzoj = null;
    public String value = null;

    public static zzgf[] zzmw() {
        if (zzaxd == null) {
            synchronized (zzzp.zzcgg) {
                if (zzaxd == null) {
                    zzaxd = new zzgf[0];
                }
            }
        }
        return zzaxd;
    }

    public zzgf() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgf)) {
            return false;
        }
        zzgf zzgfVar = (zzgf) obj;
        if (this.zzoj == null) {
            if (zzgfVar.zzoj != null) {
                return false;
            }
        } else if (!this.zzoj.equals(zzgfVar.zzoj)) {
            return false;
        }
        if (this.value == null) {
            if (zzgfVar.value != null) {
                return false;
            }
        } else if (!this.value.equals(zzgfVar.value)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzgfVar.zzcfx == null || zzgfVar.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzgfVar.zzcfx);
    }

    public final int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = (((((getClass().getName().hashCode() + 527) * 31) + (this.zzoj == null ? 0 : this.zzoj.hashCode())) * 31) + (this.value == null ? 0 : this.value.hashCode())) * 31;
        if (this.zzcfx != null && !this.zzcfx.isEmpty()) {
            iHashCode = this.zzcfx.hashCode();
        }
        return iHashCode2 + iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzjVar) throws IOException {
        if (this.zzoj != null) {
            zzzjVar.zzb(1, this.zzoj);
        }
        if (this.value != null) {
            zzzjVar.zzb(2, this.value);
        }
        super.zza(zzzjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    protected final int zzf() {
        int iZzf = super.zzf();
        if (this.zzoj != null) {
            iZzf += zzzj.zzc(1, this.zzoj);
        }
        if (this.value != null) {
            return iZzf + zzzj.zzc(2, this.value);
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
                this.zzoj = zzziVar.readString();
            } else if (iZzuq != 18) {
                if (!super.zza(zzziVar, iZzuq)) {
                    return this;
                }
            } else {
                this.value = zzziVar.readString();
            }
        }
    }
}
