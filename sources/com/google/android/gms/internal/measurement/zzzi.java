package com.google.android.gms.internal.measurement;

import java.io.IOException;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes2.dex */
public final class zzzi {
    private final byte[] buffer;
    private int zzbvc;
    private int zzbvi;
    private int zzbvk;
    private final int zzcfq;
    private final int zzcfr;
    private int zzcfs;
    private int zzcft;
    private zzuz zzcfu;
    private int zzbvl = Integer.MAX_VALUE;
    private int zzbvd = 64;
    private int zzbve = 67108864;

    public static zzzi zzn(byte[] bArr) {
        return zzj(bArr, 0, bArr.length);
    }

    public static zzzi zzj(byte[] bArr, int i, int i2) {
        return new zzzi(bArr, 0, i2);
    }

    public final int zzuq() throws IOException {
        if (this.zzcft == this.zzcfs) {
            this.zzbvk = 0;
            return 0;
        }
        this.zzbvk = zzvi();
        if (this.zzbvk == 0) {
            throw new zzzq("Protocol message contained an invalid tag (zero).");
        }
        return this.zzbvk;
    }

    public final void zzao(int i) throws zzzq {
        if (this.zzbvk != i) {
            throw new zzzq("Protocol message end-group tag did not match expected tag.");
        }
    }

    public final boolean zzap(int i) throws IOException {
        int iZzuq;
        switch (i & 7) {
            case 0:
                zzvi();
                return true;
            case 1:
                zzvl();
                return true;
            case 2:
                zzat(zzvi());
                return true;
            case 3:
                break;
            case 4:
                return false;
            case 5:
                zzvk();
                return true;
            default:
                throw new zzzq("Protocol message tag had invalid wire type.");
        }
        do {
            iZzuq = zzuq();
            if (iZzuq != 0) {
            }
            zzao(((i >>> 3) << 3) | 4);
            return true;
        } while (zzap(iZzuq));
        zzao(((i >>> 3) << 3) | 4);
        return true;
    }

    public final boolean zzuw() throws IOException {
        return zzvi() != 0;
    }

    public final String readString() throws IOException {
        int iZzvi = zzvi();
        if (iZzvi < 0) {
            throw zzzq.zzzl();
        }
        if (iZzvi > this.zzcfs - this.zzcft) {
            throw zzzq.zzzk();
        }
        String str = new String(this.buffer, this.zzcft, iZzvi, zzzp.UTF_8);
        this.zzcft += iZzvi;
        return str;
    }

    public final void zza(zzzr zzzrVar, int i) throws IOException {
        if (this.zzbvc >= this.zzbvd) {
            throw zzzq.zzzn();
        }
        this.zzbvc++;
        zzzrVar.zza(this);
        zzao((i << 3) | 4);
        this.zzbvc--;
    }

    public final void zza(zzzr zzzrVar) throws IOException {
        int iZzvi = zzvi();
        if (this.zzbvc >= this.zzbvd) {
            throw zzzq.zzzn();
        }
        int iZzar = zzar(iZzvi);
        this.zzbvc++;
        zzzrVar.zza(this);
        zzao(0);
        this.zzbvc--;
        zzas(iZzar);
    }

    public final int zzvi() throws IOException {
        byte bZzvn = zzvn();
        if (bZzvn >= 0) {
            return bZzvn;
        }
        int i = bZzvn & ByteCompanionObject.MAX_VALUE;
        byte bZzvn2 = zzvn();
        if (bZzvn2 >= 0) {
            return i | (bZzvn2 << 7);
        }
        int i2 = i | ((bZzvn2 & ByteCompanionObject.MAX_VALUE) << 7);
        byte bZzvn3 = zzvn();
        if (bZzvn3 >= 0) {
            return i2 | (bZzvn3 << 14);
        }
        int i3 = i2 | ((bZzvn3 & ByteCompanionObject.MAX_VALUE) << 14);
        byte bZzvn4 = zzvn();
        if (bZzvn4 >= 0) {
            return i3 | (bZzvn4 << 21);
        }
        int i4 = i3 | ((bZzvn4 & ByteCompanionObject.MAX_VALUE) << 21);
        byte bZzvn5 = zzvn();
        int i5 = i4 | (bZzvn5 << 28);
        if (bZzvn5 < 0) {
            for (int i6 = 0; i6 < 5; i6++) {
                if (zzvn() >= 0) {
                    return i5;
                }
            }
            throw zzzq.zzzm();
        }
        return i5;
    }

    public final long zzvj() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte bZzvn = zzvn();
            j |= ((long) (bZzvn & ByteCompanionObject.MAX_VALUE)) << i;
            if ((bZzvn & ByteCompanionObject.MIN_VALUE) == 0) {
                return j;
            }
        }
        throw zzzq.zzzm();
    }

    public final int zzvk() throws IOException {
        return (zzvn() & 255) | ((zzvn() & 255) << 8) | ((zzvn() & 255) << 16) | ((zzvn() & 255) << 24);
    }

    public final long zzvl() throws IOException {
        byte bZzvn = zzvn();
        return ((((long) zzvn()) & 255) << 8) | (((long) bZzvn) & 255) | ((((long) zzvn()) & 255) << 16) | ((((long) zzvn()) & 255) << 24) | ((((long) zzvn()) & 255) << 32) | ((((long) zzvn()) & 255) << 40) | ((((long) zzvn()) & 255) << 48) | ((((long) zzvn()) & 255) << 56);
    }

    private zzzi(byte[] bArr, int i, int i2) {
        this.buffer = bArr;
        this.zzcfq = i;
        int i3 = i2 + i;
        this.zzcfs = i3;
        this.zzcfr = i3;
        this.zzcft = i;
    }

    private final zzuz zzze() throws IOException {
        if (this.zzcfu == null) {
            this.zzcfu = zzuz.zzd(this.buffer, this.zzcfq, this.zzcfr);
        }
        int iZzvh = this.zzcfu.zzvh();
        int i = this.zzcft - this.zzcfq;
        if (iZzvh > i) {
            throw new IOException(String.format("CodedInputStream read ahead of CodedInputByteBufferNano: %s > %s", Integer.valueOf(iZzvh), Integer.valueOf(i)));
        }
        this.zzcfu.zzat(i - iZzvh);
        this.zzcfu.zzaq(this.zzbvd - this.zzbvc);
        return this.zzcfu;
    }

    public final <T extends zzvx<T, ?>> T zza(zzxo<T> zzxoVar) throws IOException {
        try {
            T t = (T) zzze().zza(zzxoVar, zzvk.zzvz());
            zzap(this.zzbvk);
            return t;
        } catch (zzwe e) {
            throw new zzzq("", e);
        }
    }

    public final int zzar(int i) throws zzzq {
        if (i < 0) {
            throw zzzq.zzzl();
        }
        int i2 = i + this.zzcft;
        int i3 = this.zzbvl;
        if (i2 > i3) {
            throw zzzq.zzzk();
        }
        this.zzbvl = i2;
        zzvm();
        return i3;
    }

    private final void zzvm() {
        this.zzcfs += this.zzbvi;
        int i = this.zzcfs;
        if (i > this.zzbvl) {
            this.zzbvi = i - this.zzbvl;
            this.zzcfs -= this.zzbvi;
        } else {
            this.zzbvi = 0;
        }
    }

    public final void zzas(int i) {
        this.zzbvl = i;
        zzvm();
    }

    public final int zzzf() {
        if (this.zzbvl == Integer.MAX_VALUE) {
            return -1;
        }
        return this.zzbvl - this.zzcft;
    }

    public final int getPosition() {
        return this.zzcft - this.zzcfq;
    }

    public final byte[] zzs(int i, int i2) {
        if (i2 == 0) {
            return zzzu.zzcgs;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.buffer, this.zzcfq + i, bArr, 0, i2);
        return bArr;
    }

    public final void zzca(int i) {
        zzt(i, this.zzbvk);
    }

    final void zzt(int i, int i2) {
        if (i > this.zzcft - this.zzcfq) {
            int i3 = this.zzcft - this.zzcfq;
            StringBuilder sb = new StringBuilder(50);
            sb.append("Position ");
            sb.append(i);
            sb.append(" is beyond current ");
            sb.append(i3);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i < 0) {
            StringBuilder sb2 = new StringBuilder(24);
            sb2.append("Bad position ");
            sb2.append(i);
            throw new IllegalArgumentException(sb2.toString());
        }
        this.zzcft = this.zzcfq + i;
        this.zzbvk = i2;
    }

    private final byte zzvn() throws IOException {
        if (this.zzcft == this.zzcfs) {
            throw zzzq.zzzk();
        }
        byte[] bArr = this.buffer;
        int i = this.zzcft;
        this.zzcft = i + 1;
        return bArr[i];
    }

    private final void zzat(int i) throws IOException {
        if (i < 0) {
            throw zzzq.zzzl();
        }
        if (this.zzcft + i > this.zzbvl) {
            zzat(this.zzbvl - this.zzcft);
            throw zzzq.zzzk();
        }
        if (i <= this.zzcfs - this.zzcft) {
            this.zzcft += i;
            return;
        }
        throw zzzq.zzzk();
    }
}
