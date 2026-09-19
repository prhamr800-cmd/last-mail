package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzzj {
    private final ByteBuffer zzbvv;
    private zzve zzcfv;
    private int zzcfw;

    private zzzj(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    private zzzj(ByteBuffer byteBuffer) {
        this.zzbvv = byteBuffer;
        this.zzbvv.order(ByteOrder.LITTLE_ENDIAN);
    }

    public static zzzj zzo(byte[] bArr) {
        return zzk(bArr, 0, bArr.length);
    }

    public static zzzj zzk(byte[] bArr, int i, int i2) {
        return new zzzj(bArr, 0, i2);
    }

    private final zzve zzzg() throws IOException {
        if (this.zzcfv == null) {
            this.zzcfv = zzve.zza(this.zzbvv);
            this.zzcfw = this.zzbvv.position();
        } else if (this.zzcfw != this.zzbvv.position()) {
            this.zzcfv.write(this.zzbvv.array(), this.zzcfw, this.zzbvv.position() - this.zzcfw);
            this.zzcfw = this.zzbvv.position();
        }
        return this.zzcfv;
    }

    public final void zza(int i, double d) throws IOException {
        zzc(i, 1);
        long jDoubleToLongBits = Double.doubleToLongBits(d);
        if (this.zzbvv.remaining() < 8) {
            throw new zzzk(this.zzbvv.position(), this.zzbvv.limit());
        }
        this.zzbvv.putLong(jDoubleToLongBits);
    }

    public final void zza(int i, float f) throws IOException {
        zzc(i, 5);
        int iFloatToIntBits = Float.floatToIntBits(f);
        if (this.zzbvv.remaining() < 4) {
            throw new zzzk(this.zzbvv.position(), this.zzbvv.limit());
        }
        this.zzbvv.putInt(iFloatToIntBits);
    }

    public final void zza(int i, long j) throws IOException {
        zzc(i, 0);
        zzbk(j);
    }

    public final void zzi(int i, long j) throws IOException {
        zzc(i, 0);
        zzbk(j);
    }

    public final void zzd(int i, int i2) throws IOException {
        zzc(i, 0);
        if (i2 >= 0) {
            zzcc(i2);
        } else {
            zzbk(i2);
        }
    }

    public final void zzb(int i, boolean z) throws IOException {
        zzc(i, 0);
        byte b = z ? (byte) 1 : (byte) 0;
        if (!this.zzbvv.hasRemaining()) {
            throw new zzzk(this.zzbvv.position(), this.zzbvv.limit());
        }
        this.zzbvv.put(b);
    }

    public final void zzb(int i, String str) throws IOException {
        zzc(i, 2);
        try {
            int iZzbk = zzbk(str.length());
            if (iZzbk == zzbk(str.length() * 3)) {
                int iPosition = this.zzbvv.position();
                if (this.zzbvv.remaining() < iZzbk) {
                    throw new zzzk(iPosition + iZzbk, this.zzbvv.limit());
                }
                this.zzbvv.position(iPosition + iZzbk);
                zzd(str, this.zzbvv);
                int iPosition2 = this.zzbvv.position();
                this.zzbvv.position(iPosition);
                zzcc((iPosition2 - iPosition) - iZzbk);
                this.zzbvv.position(iPosition2);
                return;
            }
            zzcc(zza(str));
            zzd(str, this.zzbvv);
        } catch (BufferOverflowException e) {
            zzzk zzzkVar = new zzzk(this.zzbvv.position(), this.zzbvv.limit());
            zzzkVar.initCause(e);
            throw zzzkVar;
        }
    }

    public final void zza(int i, zzzr zzzrVar) throws IOException {
        zzc(i, 2);
        zzb(zzzrVar);
    }

    public final void zze(int i, zzxe zzxeVar) throws IOException {
        zzve zzveVarZzzg = zzzg();
        zzveVarZzzg.zza(i, zzxeVar);
        zzveVarZzzg.flush();
        this.zzcfw = this.zzbvv.position();
    }

    private static int zza(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt < 2048) {
                i3 += (127 - cCharAt) >>> 31;
                i2++;
            } else {
                int length2 = charSequence.length();
                while (i2 < length2) {
                    char cCharAt2 = charSequence.charAt(i2);
                    if (cCharAt2 < 2048) {
                        i += (127 - cCharAt2) >>> 31;
                    } else {
                        i += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i2) < 65536) {
                                StringBuilder sb = new StringBuilder(39);
                                sb.append("Unpaired surrogate at index ");
                                sb.append(i2);
                                throw new IllegalArgumentException(sb.toString());
                            }
                            i2++;
                        }
                    }
                    i2++;
                }
                i3 += i;
            }
        }
        if (i3 < length) {
            long j = ((long) i3) + 4294967296L;
            StringBuilder sb2 = new StringBuilder(54);
            sb2.append("UTF-8 length does not fit in int: ");
            sb2.append(j);
            throw new IllegalArgumentException(sb2.toString());
        }
        return i3;
    }

    private static void zzd(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        int i2;
        char cCharAt;
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        int i3 = 0;
        if (byteBuffer.hasArray()) {
            try {
                byte[] bArrArray = byteBuffer.array();
                int iArrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
                int iRemaining = byteBuffer.remaining();
                int length = charSequence.length();
                int i4 = iRemaining + iArrayOffset;
                while (i3 < length) {
                    int i5 = i3 + iArrayOffset;
                    if (i5 >= i4 || (cCharAt = charSequence.charAt(i3)) >= 128) {
                        break;
                    }
                    bArrArray[i5] = (byte) cCharAt;
                    i3++;
                }
                if (i3 == length) {
                    i = iArrayOffset + length;
                } else {
                    i = iArrayOffset + i3;
                    while (i3 < length) {
                        char cCharAt2 = charSequence.charAt(i3);
                        if (cCharAt2 < 128 && i < i4) {
                            i2 = i + 1;
                            bArrArray[i] = (byte) cCharAt2;
                        } else {
                            if (cCharAt2 < 2048 && i <= i4 - 2) {
                                int i6 = i + 1;
                                bArrArray[i] = (byte) ((cCharAt2 >>> 6) | 960);
                                i = i6 + 1;
                                bArrArray[i6] = (byte) ((cCharAt2 & '?') | 128);
                            } else if ((cCharAt2 < 55296 || 57343 < cCharAt2) && i <= i4 - 3) {
                                int i7 = i + 1;
                                bArrArray[i] = (byte) ((cCharAt2 >>> '\f') | 480);
                                int i8 = i7 + 1;
                                bArrArray[i7] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                                i2 = i8 + 1;
                                bArrArray[i8] = (byte) ((cCharAt2 & '?') | 128);
                            } else {
                                if (i <= i4 - 4) {
                                    int i9 = i3 + 1;
                                    if (i9 != charSequence.length()) {
                                        char cCharAt3 = charSequence.charAt(i9);
                                        if (!Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                            i3 = i9;
                                        } else {
                                            int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                            int i10 = i + 1;
                                            bArrArray[i] = (byte) ((codePoint >>> 18) | 240);
                                            int i11 = i10 + 1;
                                            bArrArray[i10] = (byte) (((codePoint >>> 12) & 63) | 128);
                                            int i12 = i11 + 1;
                                            bArrArray[i11] = (byte) (((codePoint >>> 6) & 63) | 128);
                                            i = i12 + 1;
                                            bArrArray[i12] = (byte) ((codePoint & 63) | 128);
                                            i3 = i9;
                                        }
                                    }
                                    StringBuilder sb = new StringBuilder(39);
                                    sb.append("Unpaired surrogate at index ");
                                    sb.append(i3 - 1);
                                    throw new IllegalArgumentException(sb.toString());
                                }
                                StringBuilder sb2 = new StringBuilder(37);
                                sb2.append("Failed writing ");
                                sb2.append(cCharAt2);
                                sb2.append(" at index ");
                                sb2.append(i);
                                throw new ArrayIndexOutOfBoundsException(sb2.toString());
                            }
                            i3++;
                        }
                        i = i2;
                        i3++;
                    }
                }
                byteBuffer.position(i - byteBuffer.arrayOffset());
                return;
            } catch (ArrayIndexOutOfBoundsException e) {
                BufferOverflowException bufferOverflowException = new BufferOverflowException();
                bufferOverflowException.initCause(e);
                throw bufferOverflowException;
            }
        }
        int length2 = charSequence.length();
        while (i3 < length2) {
            char cCharAt4 = charSequence.charAt(i3);
            if (cCharAt4 < 128) {
                byteBuffer.put((byte) cCharAt4);
            } else if (cCharAt4 < 2048) {
                byteBuffer.put((byte) ((cCharAt4 >>> 6) | 960));
                byteBuffer.put((byte) ((cCharAt4 & '?') | 128));
            } else if (cCharAt4 < 55296 || 57343 < cCharAt4) {
                byteBuffer.put((byte) ((cCharAt4 >>> '\f') | 480));
                byteBuffer.put((byte) (((cCharAt4 >>> 6) & 63) | 128));
                byteBuffer.put((byte) ((cCharAt4 & '?') | 128));
            } else {
                int i13 = i3 + 1;
                if (i13 != charSequence.length()) {
                    char cCharAt5 = charSequence.charAt(i13);
                    if (!Character.isSurrogatePair(cCharAt4, cCharAt5)) {
                        i3 = i13;
                    } else {
                        int codePoint2 = Character.toCodePoint(cCharAt4, cCharAt5);
                        byteBuffer.put((byte) ((codePoint2 >>> 18) | 240));
                        byteBuffer.put((byte) (((codePoint2 >>> 12) & 63) | 128));
                        byteBuffer.put((byte) (((codePoint2 >>> 6) & 63) | 128));
                        byteBuffer.put((byte) ((codePoint2 & 63) | 128));
                        i3 = i13;
                    }
                }
                StringBuilder sb3 = new StringBuilder(39);
                sb3.append("Unpaired surrogate at index ");
                sb3.append(i3 - 1);
                throw new IllegalArgumentException(sb3.toString());
            }
            i3++;
        }
    }

    public final void zzb(zzzr zzzrVar) throws IOException {
        zzcc(zzzrVar.zzzo());
        zzzrVar.zza(this);
    }

    public static int zzd(int i, long j) {
        return zzbc(i) + zzbl(j);
    }

    public static int zzh(int i, int i2) {
        return zzbc(i) + zzbd(i2);
    }

    public static int zzc(int i, String str) {
        return zzbc(i) + zzge(str);
    }

    public static int zzb(int i, zzzr zzzrVar) {
        int iZzbc = zzbc(i);
        int iZzwe = zzzrVar.zzwe();
        return iZzbc + zzbk(iZzwe) + iZzwe;
    }

    public static int zzbd(int i) {
        if (i >= 0) {
            return zzbk(i);
        }
        return 10;
    }

    public static int zzge(String str) {
        int iZza = zza(str);
        return zzbk(iZza) + iZza;
    }

    public final void zzzh() {
        if (this.zzbvv.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(this.zzbvv.remaining())));
        }
    }

    private final void zzcb(int i) throws IOException {
        byte b = (byte) i;
        if (!this.zzbvv.hasRemaining()) {
            throw new zzzk(this.zzbvv.position(), this.zzbvv.limit());
        }
        this.zzbvv.put(b);
    }

    public final void zzp(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this.zzbvv.remaining() >= length) {
            this.zzbvv.put(bArr, 0, length);
            return;
        }
        throw new zzzk(this.zzbvv.position(), this.zzbvv.limit());
    }

    public final void zzc(int i, int i2) throws IOException {
        zzcc((i << 3) | i2);
    }

    public static int zzbc(int i) {
        return zzbk(i << 3);
    }

    public final void zzcc(int i) throws IOException {
        while ((i & (-128)) != 0) {
            zzcb((i & 127) | 128);
            i >>>= 7;
        }
        zzcb(i);
    }

    public static int zzbk(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    private final void zzbk(long j) throws IOException {
        while (((-128) & j) != 0) {
            zzcb((((int) j) & 127) | 128);
            j >>>= 7;
        }
        zzcb((int) j);
    }

    public static int zzbl(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if (((-2097152) & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (j & Long.MIN_VALUE) == 0 ? 9 : 10;
    }
}
