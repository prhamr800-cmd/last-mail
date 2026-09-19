package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
class zzux extends zzuw {
    protected final byte[] zzbvb;

    zzux(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException();
        }
        this.zzbvb = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzun
    public byte zzal(int i) {
        return this.zzbvb[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzun
    byte zzam(int i) {
        return this.zzbvb[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzun
    public int size() {
        return this.zzbvb.length;
    }

    @Override // com.google.android.gms.internal.measurement.zzun
    public final zzun zzb(int i, int i2) {
        int iZzb = zzb(0, i2, size());
        if (iZzb == 0) {
            return zzun.zzbuu;
        }
        return new zzus(this.zzbvb, zzun(), iZzb);
    }

    @Override // com.google.android.gms.internal.measurement.zzun
    final void zza(zzum zzumVar) throws IOException {
        zzumVar.zza(this.zzbvb, zzun(), size());
    }

    @Override // com.google.android.gms.internal.measurement.zzun
    protected final String zza(Charset charset) {
        return new String(this.zzbvb, zzun(), size(), charset);
    }

    @Override // com.google.android.gms.internal.measurement.zzun
    public final boolean zzul() {
        int iZzun = zzun();
        return zzyu.zzf(this.zzbvb, iZzun, size() + iZzun);
    }

    @Override // com.google.android.gms.internal.measurement.zzun
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzun) || size() != ((zzun) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (obj instanceof zzux) {
            zzux zzuxVar = (zzux) obj;
            int iZzum = zzum();
            int iZzum2 = zzuxVar.zzum();
            if (iZzum == 0 || iZzum2 == 0 || iZzum == iZzum2) {
                return zza(zzuxVar, 0, size());
            }
            return false;
        }
        return obj.equals(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzuw
    final boolean zza(zzun zzunVar, int i, int i2) {
        if (i2 > zzunVar.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i2 > zzunVar.size()) {
            int size2 = zzunVar.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (zzunVar instanceof zzux) {
            zzux zzuxVar = (zzux) zzunVar;
            byte[] bArr = this.zzbvb;
            byte[] bArr2 = zzuxVar.zzbvb;
            int iZzun = zzun() + i2;
            int iZzun2 = zzun();
            int iZzun3 = zzuxVar.zzun();
            while (iZzun2 < iZzun) {
                if (bArr[iZzun2] != bArr2[iZzun3]) {
                    return false;
                }
                iZzun2++;
                iZzun3++;
            }
            return true;
        }
        return zzunVar.zzb(0, i2).equals(zzb(0, i2));
    }

    @Override // com.google.android.gms.internal.measurement.zzun
    protected final int zza(int i, int i2, int i3) {
        return zzvz.zza(i, this.zzbvb, zzun(), i3);
    }

    protected int zzun() {
        return 0;
    }
}
