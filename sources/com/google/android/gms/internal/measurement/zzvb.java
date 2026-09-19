package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes2.dex */
final class zzvb extends zzuz {
    private final byte[] buffer;
    private int limit;
    private int pos;
    private final boolean zzbvh;
    private int zzbvi;
    private int zzbvj;
    private int zzbvk;
    private int zzbvl;

    private zzvb(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzbvl = Integer.MAX_VALUE;
        this.buffer = bArr;
        this.limit = i2 + i;
        this.pos = i;
        this.zzbvj = this.pos;
        this.zzbvh = z;
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final int zzuq() throws IOException {
        if (zzvg()) {
            this.zzbvk = 0;
            return 0;
        }
        this.zzbvk = zzvi();
        if ((this.zzbvk >>> 3) == 0) {
            throw new zzwe("Protocol message contained an invalid tag (zero).");
        }
        return this.zzbvk;
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final void zzao(int i) throws zzwe {
        if (this.zzbvk != i) {
            throw zzwe.zzxa();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final boolean zzap(int i) throws IOException {
        int iZzuq;
        int i2 = 0;
        switch (i & 7) {
            case 0:
                if (this.limit - this.pos >= 10) {
                    while (i2 < 10) {
                        byte[] bArr = this.buffer;
                        int i3 = this.pos;
                        this.pos = i3 + 1;
                        if (bArr[i3] < 0) {
                            i2++;
                        }
                    }
                    throw zzwe.zzwz();
                }
                while (i2 < 10) {
                    if (zzvn() < 0) {
                        i2++;
                    }
                }
                throw zzwe.zzwz();
                return true;
            case 1:
                zzat(8);
                return true;
            case 2:
                zzat(zzvi());
                return true;
            case 3:
                break;
            case 4:
                return false;
            case 5:
                zzat(4);
                return true;
            default:
                throw zzwe.zzxb();
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

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final double readDouble() throws IOException {
        return Double.longBitsToDouble(zzvl());
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final float readFloat() throws IOException {
        return Float.intBitsToFloat(zzvk());
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final long zzur() throws IOException {
        return zzvj();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final long zzus() throws IOException {
        return zzvj();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final int zzut() throws IOException {
        return zzvi();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final long zzuu() throws IOException {
        return zzvl();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final int zzuv() throws IOException {
        return zzvk();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final boolean zzuw() throws IOException {
        return zzvj() != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final String readString() throws IOException {
        int iZzvi = zzvi();
        if (iZzvi > 0 && iZzvi <= this.limit - this.pos) {
            String str = new String(this.buffer, this.pos, iZzvi, zzvz.UTF_8);
            this.pos += iZzvi;
            return str;
        }
        if (iZzvi == 0) {
            return "";
        }
        if (iZzvi < 0) {
            throw zzwe.zzwy();
        }
        throw zzwe.zzwx();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final String zzux() throws IOException {
        int iZzvi = zzvi();
        if (iZzvi > 0 && iZzvi <= this.limit - this.pos) {
            String strZzh = zzyu.zzh(this.buffer, this.pos, iZzvi);
            this.pos += iZzvi;
            return strZzh;
        }
        if (iZzvi == 0) {
            return "";
        }
        if (iZzvi <= 0) {
            throw zzwe.zzwy();
        }
        throw zzwe.zzwx();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final <T extends zzxe> T zza(zzxo<T> zzxoVar, zzvk zzvkVar) throws IOException {
        int iZzvi = zzvi();
        if (this.zzbvc >= this.zzbvd) {
            throw zzwe.zzxc();
        }
        int iZzar = zzar(iZzvi);
        this.zzbvc++;
        T tZza = zzxoVar.zza(this, zzvkVar);
        zzao(0);
        this.zzbvc--;
        zzas(iZzar);
        return tZza;
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final zzun zzuy() throws IOException {
        byte[] bArrCopyOfRange;
        int iZzvi = zzvi();
        if (iZzvi > 0 && iZzvi <= this.limit - this.pos) {
            zzun zzunVarZzb = zzun.zzb(this.buffer, this.pos, iZzvi);
            this.pos += iZzvi;
            return zzunVarZzb;
        }
        if (iZzvi == 0) {
            return zzun.zzbuu;
        }
        if (iZzvi > 0 && iZzvi <= this.limit - this.pos) {
            int i = this.pos;
            this.pos += iZzvi;
            bArrCopyOfRange = Arrays.copyOfRange(this.buffer, i, this.pos);
        } else if (iZzvi <= 0) {
            if (iZzvi == 0) {
                bArrCopyOfRange = zzvz.zzcae;
            } else {
                throw zzwe.zzwy();
            }
        } else {
            throw zzwe.zzwx();
        }
        return zzun.zzi(bArrCopyOfRange);
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final int zzuz() throws IOException {
        return zzvi();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final int zzva() throws IOException {
        return zzvi();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final int zzvb() throws IOException {
        return zzvk();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final long zzvc() throws IOException {
        return zzvl();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final int zzvd() throws IOException {
        int iZzvi = zzvi();
        return (-(iZzvi & 1)) ^ (iZzvi >>> 1);
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final long zzve() throws IOException {
        long jZzvj = zzvj();
        return (-(jZzvj & 1)) ^ (jZzvj >>> 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0068, code lost:
    
        if (r1[r2] >= 0) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int zzvi() throws java.io.IOException {
        /*
            r5 = this;
            int r0 = r5.pos
            int r1 = r5.limit
            if (r1 == r0) goto L6d
            byte[] r1 = r5.buffer
            int r2 = r0 + 1
            r0 = r1[r0]
            if (r0 < 0) goto L11
            r5.pos = r2
            return r0
        L11:
            int r3 = r5.limit
            int r3 = r3 - r2
            r4 = 9
            if (r3 < r4) goto L6d
            int r3 = r2 + 1
            r2 = r1[r2]
            int r2 = r2 << 7
            r0 = r0 ^ r2
            if (r0 >= 0) goto L24
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            goto L6a
        L24:
            int r2 = r3 + 1
            r3 = r1[r3]
            int r3 = r3 << 14
            r0 = r0 ^ r3
            if (r0 < 0) goto L31
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
        L2f:
            r3 = r2
            goto L6a
        L31:
            int r3 = r2 + 1
            r2 = r1[r2]
            int r2 = r2 << 21
            r0 = r0 ^ r2
            if (r0 >= 0) goto L3f
            r1 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r1
            goto L6a
        L3f:
            int r2 = r3 + 1
            r3 = r1[r3]
            int r4 = r3 << 28
            r0 = r0 ^ r4
            r4 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r4
            if (r3 >= 0) goto L2f
            int r3 = r2 + 1
            r2 = r1[r2]
            if (r2 >= 0) goto L6a
            int r2 = r3 + 1
            r3 = r1[r3]
            if (r3 >= 0) goto L2f
            int r3 = r2 + 1
            r2 = r1[r2]
            if (r2 >= 0) goto L6a
            int r2 = r3 + 1
            r3 = r1[r3]
            if (r3 >= 0) goto L2f
            int r3 = r2 + 1
            r1 = r1[r2]
            if (r1 < 0) goto L6d
        L6a:
            r5.pos = r3
            return r0
        L6d:
            long r0 = r5.zzvf()
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzvb.zzvi():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b5, code lost:
    
        if (r1[r0] >= 0) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final long zzvj() throws java.io.IOException {
        /*
            r11 = this;
            int r0 = r11.pos
            int r1 = r11.limit
            if (r1 == r0) goto Lbb
            byte[] r1 = r11.buffer
            int r2 = r0 + 1
            r0 = r1[r0]
            if (r0 < 0) goto L12
            r11.pos = r2
            long r0 = (long) r0
            return r0
        L12:
            int r3 = r11.limit
            int r3 = r3 - r2
            r4 = 9
            if (r3 < r4) goto Lbb
            int r3 = r2 + 1
            r2 = r1[r2]
            int r2 = r2 << 7
            r0 = r0 ^ r2
            if (r0 >= 0) goto L2a
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            long r0 = (long) r0
        L25:
            r9 = r0
            r0 = r3
        L27:
            r2 = r9
            goto Lb8
        L2a:
            int r2 = r3 + 1
            r3 = r1[r3]
            int r3 = r3 << 14
            r0 = r0 ^ r3
            if (r0 < 0) goto L39
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            long r0 = (long) r0
            r9 = r0
            r0 = r2
            goto L27
        L39:
            int r3 = r2 + 1
            r2 = r1[r2]
            int r2 = r2 << 21
            r0 = r0 ^ r2
            if (r0 >= 0) goto L48
            r1 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r1
            long r0 = (long) r0
            goto L25
        L48:
            long r4 = (long) r0
            int r0 = r3 + 1
            r2 = r1[r3]
            long r2 = (long) r2
            r6 = 28
            long r2 = r2 << r6
            long r2 = r2 ^ r4
            r4 = 0
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 < 0) goto L5d
            r4 = 266354560(0xfe03f80, double:1.315966377E-315)
            long r2 = r2 ^ r4
            goto Lb8
        L5d:
            int r6 = r0 + 1
            r0 = r1[r0]
            long r7 = (long) r0
            r0 = 35
            long r7 = r7 << r0
            long r2 = r2 ^ r7
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 >= 0) goto L73
            r0 = -34093383808(0xfffffff80fe03f80, double:NaN)
            long r0 = r0 ^ r2
        L70:
            r2 = r0
        L71:
            r0 = r6
            goto Lb8
        L73:
            int r0 = r6 + 1
            r6 = r1[r6]
            long r6 = (long) r6
            r8 = 42
            long r6 = r6 << r8
            long r2 = r2 ^ r6
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 < 0) goto L87
            r4 = 4363953127296(0x3f80fe03f80, double:2.1560793202584E-311)
            long r2 = r2 ^ r4
            goto Lb8
        L87:
            int r6 = r0 + 1
            r0 = r1[r0]
            long r7 = (long) r0
            r0 = 49
            long r7 = r7 << r0
            long r2 = r2 ^ r7
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 >= 0) goto L9b
            r0 = -558586000294016(0xfffe03f80fe03f80, double:NaN)
            long r0 = r0 ^ r2
            goto L70
        L9b:
            int r0 = r6 + 1
            r6 = r1[r6]
            long r6 = (long) r6
            r8 = 56
            long r6 = r6 << r8
            long r2 = r2 ^ r6
            r6 = 71499008037633920(0xfe03f80fe03f80, double:6.838959413692434E-304)
            long r2 = r2 ^ r6
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 >= 0) goto Lb8
            int r6 = r0 + 1
            r0 = r1[r0]
            long r0 = (long) r0
            int r7 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r7 < 0) goto Lbb
            goto L71
        Lb8:
            r11.pos = r0
            return r2
        Lbb:
            long r0 = r11.zzvf()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzvb.zzvj():long");
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    final long zzvf() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte bZzvn = zzvn();
            j |= ((long) (bZzvn & ByteCompanionObject.MAX_VALUE)) << i;
            if ((bZzvn & ByteCompanionObject.MIN_VALUE) == 0) {
                return j;
            }
        }
        throw zzwe.zzwz();
    }

    private final int zzvk() throws IOException {
        int i = this.pos;
        if (this.limit - i < 4) {
            throw zzwe.zzwx();
        }
        byte[] bArr = this.buffer;
        this.pos = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    private final long zzvl() throws IOException {
        int i = this.pos;
        if (this.limit - i < 8) {
            throw zzwe.zzwx();
        }
        byte[] bArr = this.buffer;
        this.pos = i + 8;
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final int zzar(int i) throws zzwe {
        if (i < 0) {
            throw zzwe.zzwy();
        }
        int iZzvh = i + zzvh();
        int i2 = this.zzbvl;
        if (iZzvh > i2) {
            throw zzwe.zzwx();
        }
        this.zzbvl = iZzvh;
        zzvm();
        return i2;
    }

    private final void zzvm() {
        this.limit += this.zzbvi;
        int i = this.limit - this.zzbvj;
        if (i > this.zzbvl) {
            this.zzbvi = i - this.zzbvl;
            this.limit -= this.zzbvi;
        } else {
            this.zzbvi = 0;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final void zzas(int i) {
        this.zzbvl = i;
        zzvm();
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final boolean zzvg() throws IOException {
        return this.pos == this.limit;
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final int zzvh() {
        return this.pos - this.zzbvj;
    }

    private final byte zzvn() throws IOException {
        if (this.pos == this.limit) {
            throw zzwe.zzwx();
        }
        byte[] bArr = this.buffer;
        int i = this.pos;
        this.pos = i + 1;
        return bArr[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzuz
    public final void zzat(int i) throws IOException {
        if (i >= 0 && i <= this.limit - this.pos) {
            this.pos += i;
        } else {
            if (i < 0) {
                throw zzwe.zzwy();
            }
            throw zzwe.zzwx();
        }
    }
}
