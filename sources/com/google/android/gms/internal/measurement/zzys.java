package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
final class zzys {
    private static final boolean zzbvq;
    private static final zzd zzcds;
    private static final boolean zzcdt;
    private static final long zzcdu;
    private static final long zzcdv;
    private static final long zzcdw;
    private static final long zzcdx;
    private static final long zzcdy;
    private static final long zzcdz;
    private static final long zzcea;
    private static final long zzceb;
    private static final long zzcec;
    private static final long zzced;
    private static final long zzcee;
    private static final long zzcef;
    private static final long zzceg;
    private static final long zzceh;
    private static final boolean zzcei;
    private static final Logger logger = Logger.getLogger(zzys.class.getName());
    private static final Unsafe zzcbt = zzyx();
    private static final Class<?> zzbuq = zzuk.zzuj();
    private static final boolean zzcdq = zzn(Long.TYPE);
    private static final boolean zzcdr = zzn(Integer.TYPE);

    private zzys() {
    }

    static final class zza extends zzd {
        zza(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final void zza(long j, byte b) {
            Memory.pokeByte((int) (j & (-1)), b);
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final byte zzy(Object obj, long j) {
            if (zzys.zzcei) {
                return zzys.zzq(obj, j);
            }
            return zzys.zzr(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final void zze(Object obj, long j, byte b) {
            if (zzys.zzcei) {
                zzys.zza(obj, j, b);
            } else {
                zzys.zzb(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final boolean zzm(Object obj, long j) {
            if (zzys.zzcei) {
                return zzys.zzs(obj, j);
            }
            return zzys.zzt(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final void zza(Object obj, long j, boolean z) {
            if (zzys.zzcei) {
                zzys.zzb(obj, j, z);
            } else {
                zzys.zzc(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final float zzn(Object obj, long j) {
            return Float.intBitsToFloat(zzk(obj, j));
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final void zza(Object obj, long j, float f) {
            zzb(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final double zzo(Object obj, long j) {
            return Double.longBitsToDouble(zzl(obj, j));
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final void zza(Object obj, long j, double d) {
            zza(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final void zza(byte[] bArr, long j, long j2, long j3) {
            Memory.pokeByteArray((int) (j2 & (-1)), bArr, (int) j, (int) j3);
        }
    }

    static final class zzb extends zzd {
        zzb(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final void zza(long j, byte b) {
            Memory.pokeByte(j, b);
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final byte zzy(Object obj, long j) {
            if (zzys.zzcei) {
                return zzys.zzq(obj, j);
            }
            return zzys.zzr(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final void zze(Object obj, long j, byte b) {
            if (zzys.zzcei) {
                zzys.zza(obj, j, b);
            } else {
                zzys.zzb(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final boolean zzm(Object obj, long j) {
            if (zzys.zzcei) {
                return zzys.zzs(obj, j);
            }
            return zzys.zzt(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final void zza(Object obj, long j, boolean z) {
            if (zzys.zzcei) {
                zzys.zzb(obj, j, z);
            } else {
                zzys.zzc(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final float zzn(Object obj, long j) {
            return Float.intBitsToFloat(zzk(obj, j));
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final void zza(Object obj, long j, float f) {
            zzb(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final double zzo(Object obj, long j) {
            return Double.longBitsToDouble(zzl(obj, j));
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final void zza(Object obj, long j, double d) {
            zza(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final void zza(byte[] bArr, long j, long j2, long j3) {
            Memory.pokeByteArray(j2, bArr, (int) j, (int) j3);
        }
    }

    static final class zzc extends zzd {
        zzc(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final void zza(long j, byte b) {
            this.zzcej.putByte(j, b);
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final byte zzy(Object obj, long j) {
            return this.zzcej.getByte(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final void zze(Object obj, long j, byte b) {
            this.zzcej.putByte(obj, j, b);
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final boolean zzm(Object obj, long j) {
            return this.zzcej.getBoolean(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final void zza(Object obj, long j, boolean z) {
            this.zzcej.putBoolean(obj, j, z);
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final float zzn(Object obj, long j) {
            return this.zzcej.getFloat(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final void zza(Object obj, long j, float f) {
            this.zzcej.putFloat(obj, j, f);
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final double zzo(Object obj, long j) {
            return this.zzcej.getDouble(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final void zza(Object obj, long j, double d) {
            this.zzcej.putDouble(obj, j, d);
        }

        @Override // com.google.android.gms.internal.measurement.zzys.zzd
        public final void zza(byte[] bArr, long j, long j2, long j3) {
            this.zzcej.copyMemory(bArr, zzys.zzcdu + j, (Object) null, j2, j3);
        }
    }

    static boolean zzyv() {
        return zzbvq;
    }

    static abstract class zzd {
        Unsafe zzcej;

        zzd(Unsafe unsafe) {
            this.zzcej = unsafe;
        }

        public abstract void zza(long j, byte b);

        public abstract void zza(Object obj, long j, double d);

        public abstract void zza(Object obj, long j, float f);

        public abstract void zza(Object obj, long j, boolean z);

        public abstract void zza(byte[] bArr, long j, long j2, long j3);

        public abstract void zze(Object obj, long j, byte b);

        public abstract boolean zzm(Object obj, long j);

        public abstract float zzn(Object obj, long j);

        public abstract double zzo(Object obj, long j);

        public abstract byte zzy(Object obj, long j);

        public final int zzk(Object obj, long j) {
            return this.zzcej.getInt(obj, j);
        }

        public final void zzb(Object obj, long j, int i) {
            this.zzcej.putInt(obj, j, i);
        }

        public final long zzl(Object obj, long j) {
            return this.zzcej.getLong(obj, j);
        }

        public final void zza(Object obj, long j, long j2) {
            this.zzcej.putLong(obj, j, j2);
        }
    }

    static boolean zzyw() {
        return zzcdt;
    }

    static <T> T zzk(Class<T> cls) {
        try {
            return (T) zzcbt.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    private static int zzl(Class<?> cls) {
        if (zzbvq) {
            return zzcds.zzcej.arrayBaseOffset(cls);
        }
        return -1;
    }

    private static int zzm(Class<?> cls) {
        if (zzbvq) {
            return zzcds.zzcej.arrayIndexScale(cls);
        }
        return -1;
    }

    static int zzk(Object obj, long j) {
        return zzcds.zzk(obj, j);
    }

    static void zzb(Object obj, long j, int i) {
        zzcds.zzb(obj, j, i);
    }

    static long zzl(Object obj, long j) {
        return zzcds.zzl(obj, j);
    }

    static void zza(Object obj, long j, long j2) {
        zzcds.zza(obj, j, j2);
    }

    static boolean zzm(Object obj, long j) {
        return zzcds.zzm(obj, j);
    }

    static void zza(Object obj, long j, boolean z) {
        zzcds.zza(obj, j, z);
    }

    static float zzn(Object obj, long j) {
        return zzcds.zzn(obj, j);
    }

    static void zza(Object obj, long j, float f) {
        zzcds.zza(obj, j, f);
    }

    static double zzo(Object obj, long j) {
        return zzcds.zzo(obj, j);
    }

    static void zza(Object obj, long j, double d) {
        zzcds.zza(obj, j, d);
    }

    static Object zzp(Object obj, long j) {
        return zzcds.zzcej.getObject(obj, j);
    }

    static void zza(Object obj, long j, Object obj2) {
        zzcds.zzcej.putObject(obj, j, obj2);
    }

    static byte zza(byte[] bArr, long j) {
        return zzcds.zzy(bArr, zzcdu + j);
    }

    static void zza(byte[] bArr, long j, byte b) {
        zzcds.zze(bArr, zzcdu + j, b);
    }

    static void zza(byte[] bArr, long j, long j2, long j3) {
        zzcds.zza(bArr, j, j2, j3);
    }

    static void zza(long j, byte b) {
        zzcds.zza(j, b);
    }

    static long zzb(ByteBuffer byteBuffer) {
        return zzcds.zzl(byteBuffer, zzceh);
    }

    static Unsafe zzyx() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzyt());
        } catch (Throwable th) {
            return null;
        }
    }

    private static boolean zzyy() {
        if (zzcbt == null) {
            return false;
        }
        try {
            Class<?> cls = zzcbt.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            cls.getMethod("getInt", Object.class, Long.TYPE);
            cls.getMethod("putInt", Object.class, Long.TYPE, Integer.TYPE);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            cls.getMethod("putLong", Object.class, Long.TYPE, Long.TYPE);
            cls.getMethod("getObject", Object.class, Long.TYPE);
            cls.getMethod("putObject", Object.class, Long.TYPE, Object.class);
            if (zzuk.zzui()) {
                return true;
            }
            cls.getMethod("getByte", Object.class, Long.TYPE);
            cls.getMethod("putByte", Object.class, Long.TYPE, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, Long.TYPE);
            cls.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, Long.TYPE);
            cls.getMethod("putFloat", Object.class, Long.TYPE, Float.TYPE);
            cls.getMethod("getDouble", Object.class, Long.TYPE);
            cls.getMethod("putDouble", Object.class, Long.TYPE, Double.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger2 = logger;
            Level level = Level.WARNING;
            String strValueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(strValueOf);
            logger2.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb.toString());
            return false;
        }
    }

    private static boolean zzyz() {
        if (zzcbt == null) {
            return false;
        }
        try {
            Class<?> cls = zzcbt.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (zzza() == null) {
                return false;
            }
            if (zzuk.zzui()) {
                return true;
            }
            cls.getMethod("getByte", Long.TYPE);
            cls.getMethod("putByte", Long.TYPE, Byte.TYPE);
            cls.getMethod("getInt", Long.TYPE);
            cls.getMethod("putInt", Long.TYPE, Integer.TYPE);
            cls.getMethod("getLong", Long.TYPE);
            cls.getMethod("putLong", Long.TYPE, Long.TYPE);
            cls.getMethod("copyMemory", Long.TYPE, Long.TYPE, Long.TYPE);
            cls.getMethod("copyMemory", Object.class, Long.TYPE, Object.class, Long.TYPE, Long.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger2 = logger;
            Level level = Level.WARNING;
            String strValueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(strValueOf);
            logger2.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
            return false;
        }
    }

    private static boolean zzn(Class<?> cls) {
        if (!zzuk.zzui()) {
            return false;
        }
        try {
            Class<?> cls2 = zzbuq;
            cls2.getMethod("peekLong", cls, Boolean.TYPE);
            cls2.getMethod("pokeLong", cls, Long.TYPE, Boolean.TYPE);
            cls2.getMethod("pokeInt", cls, Integer.TYPE, Boolean.TYPE);
            cls2.getMethod("peekInt", cls, Boolean.TYPE);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
            cls2.getMethod("peekByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    private static Field zzza() {
        Field fieldZzb;
        if (zzuk.zzui() && (fieldZzb = zzb(Buffer.class, "effectiveDirectAddress")) != null) {
            return fieldZzb;
        }
        Field fieldZzb2 = zzb(Buffer.class, "address");
        if (fieldZzb2 == null || fieldZzb2.getType() != Long.TYPE) {
            return null;
        }
        return fieldZzb2;
    }

    private static Field zzb(Class<?> cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte zzq(Object obj, long j) {
        return (byte) (zzk(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte zzr(Object obj, long j) {
        return (byte) (zzk(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        zzb(obj, j2, ((255 & b) << i) | (zzk(obj, j2) & ((255 << i) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzb(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        zzb(obj, j2, ((255 & b) << i) | (zzk(obj, j2) & ((255 << i) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzs(Object obj, long j) {
        return zzq(obj, j) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzt(Object obj, long j) {
        return zzr(obj, j) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzb(Object obj, long j, boolean z) {
        zza(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzc(Object obj, long j, boolean z) {
        zzb(obj, j, z ? (byte) 1 : (byte) 0);
    }

    static {
        long jObjectFieldOffset;
        zzd zzcVar = null;
        if (zzcbt != null) {
            if (zzuk.zzui()) {
                if (zzcdq) {
                    zzcVar = new zzb(zzcbt);
                } else if (zzcdr) {
                    zzcVar = new zza(zzcbt);
                }
            } else {
                zzcVar = new zzc(zzcbt);
            }
        }
        zzcds = zzcVar;
        zzcdt = zzyz();
        zzbvq = zzyy();
        zzcdu = zzl(byte[].class);
        zzcdv = zzl(boolean[].class);
        zzcdw = zzm(boolean[].class);
        zzcdx = zzl(int[].class);
        zzcdy = zzm(int[].class);
        zzcdz = zzl(long[].class);
        zzcea = zzm(long[].class);
        zzceb = zzl(float[].class);
        zzcec = zzm(float[].class);
        zzced = zzl(double[].class);
        zzcee = zzm(double[].class);
        zzcef = zzl(Object[].class);
        zzceg = zzm(Object[].class);
        Field fieldZzza = zzza();
        if (fieldZzza == null || zzcds == null) {
            jObjectFieldOffset = -1;
        } else {
            jObjectFieldOffset = zzcds.zzcej.objectFieldOffset(fieldZzza);
        }
        zzceh = jObjectFieldOffset;
        zzcei = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }
}
