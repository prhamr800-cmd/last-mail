package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgk extends zzzl<zzgk> {
    public zzgl[] zzaxr = zzgl.zznb();

    public zzgk() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgk)) {
            return false;
        }
        zzgk zzgkVar = (zzgk) obj;
        if (!zzzp.equals(this.zzaxr, zzgkVar.zzaxr)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzgkVar.zzcfx == null || zzgkVar.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzgkVar.zzcfx);
    }

    public final int hashCode() {
        int iHashCode;
        int iHashCode2 = (((getClass().getName().hashCode() + 527) * 31) + zzzp.hashCode(this.zzaxr)) * 31;
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            iHashCode = 0;
        } else {
            iHashCode = this.zzcfx.hashCode();
        }
        return iHashCode2 + iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    public final void zza(zzzj zzzjVar) throws IOException {
        if (this.zzaxr != null && this.zzaxr.length > 0) {
            for (int i = 0; i < this.zzaxr.length; i++) {
                zzgl zzglVar = this.zzaxr[i];
                if (zzglVar != null) {
                    zzzjVar.zza(1, zzglVar);
                }
            }
        }
        super.zza(zzzjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    protected final int zzf() {
        int iZzf = super.zzf();
        if (this.zzaxr != null && this.zzaxr.length > 0) {
            for (int i = 0; i < this.zzaxr.length; i++) {
                zzgl zzglVar = this.zzaxr[i];
                if (zzglVar != null) {
                    iZzf += zzzj.zzb(1, zzglVar);
                }
            }
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
            if (iZzuq != 10) {
                if (!super.zza(zzziVar, iZzuq)) {
                    return this;
                }
            } else {
                int iZzb = zzzu.zzb(zzziVar, 10);
                if (this.zzaxr != null) {
                    length = this.zzaxr.length;
                } else {
                    length = 0;
                }
                zzgl[] zzglVarArr = new zzgl[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzaxr, 0, zzglVarArr, 0, length);
                }
                while (length < zzglVarArr.length - 1) {
                    zzglVarArr[length] = new zzgl();
                    zzziVar.zza(zzglVarArr[length]);
                    zzziVar.zzuq();
                    length++;
                }
                zzglVarArr[length] = new zzgl();
                zzziVar.zza(zzglVarArr[length]);
                this.zzaxr = zzglVarArr;
            }
        }
    }
}
