package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgn extends zzzl<zzgn> {
    private static volatile zzgn[] zzazd;
    public Integer zzaxj = null;
    public long[] zzaze = zzzu.zzcgm;

    public static zzgn[] zznc() {
        if (zzazd == null) {
            synchronized (zzzp.zzcgg) {
                if (zzazd == null) {
                    zzazd = new zzgn[0];
                }
            }
        }
        return zzazd;
    }

    public zzgn() {
        this.zzcfx = null;
        this.zzcgh = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgn)) {
            return false;
        }
        zzgn zzgnVar = (zzgn) obj;
        if (this.zzaxj == null) {
            if (zzgnVar.zzaxj != null) {
                return false;
            }
        } else if (!this.zzaxj.equals(zzgnVar.zzaxj)) {
            return false;
        }
        if (!zzzp.equals(this.zzaze, zzgnVar.zzaze)) {
            return false;
        }
        if (this.zzcfx == null || this.zzcfx.isEmpty()) {
            return zzgnVar.zzcfx == null || zzgnVar.zzcfx.isEmpty();
        }
        return this.zzcfx.equals(zzgnVar.zzcfx);
    }

    public final int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = (((((getClass().getName().hashCode() + 527) * 31) + (this.zzaxj == null ? 0 : this.zzaxj.hashCode())) * 31) + zzzp.hashCode(this.zzaze)) * 31;
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
        if (this.zzaze != null && this.zzaze.length > 0) {
            for (int i = 0; i < this.zzaze.length; i++) {
                zzzjVar.zzi(2, this.zzaze[i]);
            }
        }
        super.zza(zzzjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzzl, com.google.android.gms.internal.measurement.zzzr
    protected final int zzf() {
        int iZzf = super.zzf();
        if (this.zzaxj != null) {
            iZzf += zzzj.zzh(1, this.zzaxj.intValue());
        }
        if (this.zzaze != null && this.zzaze.length > 0) {
            int iZzbl = 0;
            for (int i = 0; i < this.zzaze.length; i++) {
                iZzbl += zzzj.zzbl(this.zzaze[i]);
            }
            return iZzf + iZzbl + (this.zzaze.length * 1);
        }
        return iZzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzzr
    public final /* synthetic */ zzzr zza(zzzi zzziVar) throws IOException {
        int length;
        int length2;
        while (true) {
            int iZzuq = zzziVar.zzuq();
            if (iZzuq == 0) {
                return this;
            }
            if (iZzuq == 8) {
                this.zzaxj = Integer.valueOf(zzziVar.zzvi());
            } else if (iZzuq == 16) {
                int iZzb = zzzu.zzb(zzziVar, 16);
                if (this.zzaze != null) {
                    length2 = this.zzaze.length;
                } else {
                    length2 = 0;
                }
                long[] jArr = new long[iZzb + length2];
                if (length2 != 0) {
                    System.arraycopy(this.zzaze, 0, jArr, 0, length2);
                }
                while (length2 < jArr.length - 1) {
                    jArr[length2] = zzziVar.zzvj();
                    zzziVar.zzuq();
                    length2++;
                }
                jArr[length2] = zzziVar.zzvj();
                this.zzaze = jArr;
            } else if (iZzuq != 18) {
                if (!super.zza(zzziVar, iZzuq)) {
                    return this;
                }
            } else {
                int iZzar = zzziVar.zzar(zzziVar.zzvi());
                int position = zzziVar.getPosition();
                int i = 0;
                while (zzziVar.zzzf() > 0) {
                    zzziVar.zzvj();
                    i++;
                }
                zzziVar.zzca(position);
                if (this.zzaze != null) {
                    length = this.zzaze.length;
                } else {
                    length = 0;
                }
                long[] jArr2 = new long[i + length];
                if (length != 0) {
                    System.arraycopy(this.zzaze, 0, jArr2, 0, length);
                }
                while (length < jArr2.length) {
                    jArr2[length] = zzziVar.zzvj();
                    length++;
                }
                this.zzaze = jArr2;
                zzziVar.zzas(iZzar);
            }
        }
    }
}
