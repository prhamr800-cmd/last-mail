package com.google.android.gms.internal.measurement;

import io.fabric.sdk.android.services.network.HttpRequest;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public final class zzvz {
    public static final byte[] zzcae;
    private static final ByteBuffer zzcaf;
    private static final zzuz zzcag;
    static final Charset UTF_8 = Charset.forName(HttpRequest.CHARSET_UTF8);
    private static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");

    static <T> T checkNotNull(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    static <T> T zza(T t, String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    public static boolean zzl(byte[] bArr) {
        return zzyu.zzl(bArr);
    }

    public static String zzm(byte[] bArr) {
        return new String(bArr, UTF_8);
    }

    public static int zzbi(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public static int zzu(boolean z) {
        return z ? 1231 : 1237;
    }

    public static int hashCode(byte[] bArr) {
        int length = bArr.length;
        int iZza = zza(length, bArr, 0, length);
        if (iZza == 0) {
            return 1;
        }
        return iZza;
    }

    static int zza(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
    }

    static boolean zzf(zzxe zzxeVar) {
        return false;
    }

    static Object zzb(Object obj, Object obj2) {
        return ((zzxe) obj).zzwo().zza((zzxe) obj2).zzwu();
    }

    static {
        byte[] bArr = new byte[0];
        zzcae = bArr;
        zzcaf = ByteBuffer.wrap(bArr);
        byte[] bArr2 = zzcae;
        zzcag = zzuz.zza(bArr2, 0, bArr2.length, false);
    }
}
