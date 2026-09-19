package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
final class zzxi<T> implements zzxu<T> {
    private static final int[] zzcbs = new int[0];
    private static final Unsafe zzcbt = zzys.zzyx();
    private final int[] zzcbu;
    private final Object[] zzcbv;
    private final int zzcbw;
    private final int zzcbx;
    private final zzxe zzcby;
    private final boolean zzcbz;
    private final boolean zzcca;
    private final boolean zzccb;
    private final boolean zzccc;
    private final int[] zzccd;
    private final int zzcce;
    private final int zzccf;
    private final zzxl zzccg;
    private final zzwo zzcch;
    private final zzym<?, ?> zzcci;
    private final zzvl<?> zzccj;
    private final zzwz zzcck;

    private zzxi(int[] iArr, Object[] objArr, int i, int i2, zzxe zzxeVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzxl zzxlVar, zzwo zzwoVar, zzym<?, ?> zzymVar, zzvl<?> zzvlVar, zzwz zzwzVar) {
        this.zzcbu = iArr;
        this.zzcbv = objArr;
        this.zzcbw = i;
        this.zzcbx = i2;
        this.zzcca = zzxeVar instanceof zzvx;
        this.zzccb = z;
        this.zzcbz = zzvlVar != null && zzvlVar.zze(zzxeVar);
        this.zzccc = false;
        this.zzccd = iArr2;
        this.zzcce = i3;
        this.zzccf = i4;
        this.zzccg = zzxlVar;
        this.zzcch = zzwoVar;
        this.zzcci = zzymVar;
        this.zzccj = zzvlVar;
        this.zzcby = zzxeVar;
        this.zzcck = zzwzVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:186:0x03d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static <T> com.google.android.gms.internal.measurement.zzxi<T> zza(java.lang.Class<T> r36, com.google.android.gms.internal.measurement.zzxc r37, com.google.android.gms.internal.measurement.zzxl r38, com.google.android.gms.internal.measurement.zzwo r39, com.google.android.gms.internal.measurement.zzym<?, ?> r40, com.google.android.gms.internal.measurement.zzvl<?> r41, com.google.android.gms.internal.measurement.zzwz r42) {
        /*
            Method dump skipped, instruction units count: 1108
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzxi.zza(java.lang.Class, com.google.android.gms.internal.measurement.zzxc, com.google.android.gms.internal.measurement.zzxl, com.google.android.gms.internal.measurement.zzwo, com.google.android.gms.internal.measurement.zzym, com.google.android.gms.internal.measurement.zzvl, com.google.android.gms.internal.measurement.zzwz):com.google.android.gms.internal.measurement.zzxi");
    }

    private static Field zza(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(string).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(string);
            throw new RuntimeException(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final T newInstance() {
        return (T) this.zzccg.newInstance(this.zzcby);
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x01cb  */
    @Override // com.google.android.gms.internal.measurement.zzxu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(T r10, T r11) {
        /*
            Method dump skipped, instruction units count: 652
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzxi.equals(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final int hashCode(T t) {
        int length = this.zzcbu.length;
        int iZzbi = 0;
        for (int i = 0; i < length; i += 3) {
            int iZzbs = zzbs(i);
            int i2 = this.zzcbu[i];
            long j = 1048575 & iZzbs;
            int iHashCode = 37;
            switch ((iZzbs & 267386880) >>> 20) {
                case 0:
                    iZzbi = (iZzbi * 53) + zzvz.zzbi(Double.doubleToLongBits(zzys.zzo(t, j)));
                    break;
                case 1:
                    iZzbi = (iZzbi * 53) + Float.floatToIntBits(zzys.zzn(t, j));
                    break;
                case 2:
                    iZzbi = (iZzbi * 53) + zzvz.zzbi(zzys.zzl(t, j));
                    break;
                case 3:
                    iZzbi = (iZzbi * 53) + zzvz.zzbi(zzys.zzl(t, j));
                    break;
                case 4:
                    iZzbi = (iZzbi * 53) + zzys.zzk(t, j);
                    break;
                case 5:
                    iZzbi = (iZzbi * 53) + zzvz.zzbi(zzys.zzl(t, j));
                    break;
                case 6:
                    iZzbi = (iZzbi * 53) + zzys.zzk(t, j);
                    break;
                case 7:
                    iZzbi = (iZzbi * 53) + zzvz.zzu(zzys.zzm(t, j));
                    break;
                case 8:
                    iZzbi = (iZzbi * 53) + ((String) zzys.zzp(t, j)).hashCode();
                    break;
                case 9:
                    Object objZzp = zzys.zzp(t, j);
                    if (objZzp != null) {
                        iHashCode = objZzp.hashCode();
                    }
                    iZzbi = (iZzbi * 53) + iHashCode;
                    break;
                case 10:
                    iZzbi = (iZzbi * 53) + zzys.zzp(t, j).hashCode();
                    break;
                case 11:
                    iZzbi = (iZzbi * 53) + zzys.zzk(t, j);
                    break;
                case 12:
                    iZzbi = (iZzbi * 53) + zzys.zzk(t, j);
                    break;
                case 13:
                    iZzbi = (iZzbi * 53) + zzys.zzk(t, j);
                    break;
                case 14:
                    iZzbi = (iZzbi * 53) + zzvz.zzbi(zzys.zzl(t, j));
                    break;
                case 15:
                    iZzbi = (iZzbi * 53) + zzys.zzk(t, j);
                    break;
                case 16:
                    iZzbi = (iZzbi * 53) + zzvz.zzbi(zzys.zzl(t, j));
                    break;
                case 17:
                    Object objZzp2 = zzys.zzp(t, j);
                    if (objZzp2 != null) {
                        iHashCode = objZzp2.hashCode();
                    }
                    iZzbi = (iZzbi * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    iZzbi = (iZzbi * 53) + zzys.zzp(t, j).hashCode();
                    break;
                case 50:
                    iZzbi = (iZzbi * 53) + zzys.zzp(t, j).hashCode();
                    break;
                case 51:
                    if (zza(t, i2, i)) {
                        iZzbi = (iZzbi * 53) + zzvz.zzbi(Double.doubleToLongBits(zzf(t, j)));
                    }
                    break;
                case 52:
                    if (zza(t, i2, i)) {
                        iZzbi = (iZzbi * 53) + Float.floatToIntBits(zzg(t, j));
                    }
                    break;
                case 53:
                    if (zza(t, i2, i)) {
                        iZzbi = (iZzbi * 53) + zzvz.zzbi(zzi(t, j));
                    }
                    break;
                case 54:
                    if (zza(t, i2, i)) {
                        iZzbi = (iZzbi * 53) + zzvz.zzbi(zzi(t, j));
                    }
                    break;
                case 55:
                    if (zza(t, i2, i)) {
                        iZzbi = (iZzbi * 53) + zzh(t, j);
                    }
                    break;
                case 56:
                    if (zza(t, i2, i)) {
                        iZzbi = (iZzbi * 53) + zzvz.zzbi(zzi(t, j));
                    }
                    break;
                case 57:
                    if (zza(t, i2, i)) {
                        iZzbi = (iZzbi * 53) + zzh(t, j);
                    }
                    break;
                case 58:
                    if (zza(t, i2, i)) {
                        iZzbi = (iZzbi * 53) + zzvz.zzu(zzj(t, j));
                    }
                    break;
                case 59:
                    if (zza(t, i2, i)) {
                        iZzbi = (iZzbi * 53) + ((String) zzys.zzp(t, j)).hashCode();
                    }
                    break;
                case 60:
                    if (zza(t, i2, i)) {
                        iZzbi = (iZzbi * 53) + zzys.zzp(t, j).hashCode();
                    }
                    break;
                case 61:
                    if (zza(t, i2, i)) {
                        iZzbi = (iZzbi * 53) + zzys.zzp(t, j).hashCode();
                    }
                    break;
                case 62:
                    if (zza(t, i2, i)) {
                        iZzbi = (iZzbi * 53) + zzh(t, j);
                    }
                    break;
                case 63:
                    if (zza(t, i2, i)) {
                        iZzbi = (iZzbi * 53) + zzh(t, j);
                    }
                    break;
                case 64:
                    if (zza(t, i2, i)) {
                        iZzbi = (iZzbi * 53) + zzh(t, j);
                    }
                    break;
                case 65:
                    if (zza(t, i2, i)) {
                        iZzbi = (iZzbi * 53) + zzvz.zzbi(zzi(t, j));
                    }
                    break;
                case 66:
                    if (zza(t, i2, i)) {
                        iZzbi = (iZzbi * 53) + zzh(t, j);
                    }
                    break;
                case 67:
                    if (zza(t, i2, i)) {
                        iZzbi = (iZzbi * 53) + zzvz.zzbi(zzi(t, j));
                    }
                    break;
                case 68:
                    if (zza(t, i2, i)) {
                        iZzbi = (iZzbi * 53) + zzys.zzp(t, j).hashCode();
                    }
                    break;
            }
        }
        int iHashCode2 = (iZzbi * 53) + this.zzcci.zzal(t).hashCode();
        if (this.zzcbz) {
            return (iHashCode2 * 53) + this.zzccj.zzw(t).hashCode();
        }
        return iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final void zzd(T t, T t2) {
        if (t2 == null) {
            throw new NullPointerException();
        }
        for (int i = 0; i < this.zzcbu.length; i += 3) {
            int iZzbs = zzbs(i);
            long j = 1048575 & iZzbs;
            int i2 = this.zzcbu[i];
            switch ((iZzbs & 267386880) >>> 20) {
                case 0:
                    if (zzb(t2, i)) {
                        zzys.zza(t, j, zzys.zzo(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 1:
                    if (zzb(t2, i)) {
                        zzys.zza((Object) t, j, zzys.zzn(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 2:
                    if (zzb(t2, i)) {
                        zzys.zza((Object) t, j, zzys.zzl(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 3:
                    if (zzb(t2, i)) {
                        zzys.zza((Object) t, j, zzys.zzl(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 4:
                    if (zzb(t2, i)) {
                        zzys.zzb(t, j, zzys.zzk(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 5:
                    if (zzb(t2, i)) {
                        zzys.zza((Object) t, j, zzys.zzl(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 6:
                    if (zzb(t2, i)) {
                        zzys.zzb(t, j, zzys.zzk(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 7:
                    if (zzb(t2, i)) {
                        zzys.zza(t, j, zzys.zzm(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 8:
                    if (zzb(t2, i)) {
                        zzys.zza(t, j, zzys.zzp(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 9:
                    zza(t, t2, i);
                    break;
                case 10:
                    if (zzb(t2, i)) {
                        zzys.zza(t, j, zzys.zzp(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 11:
                    if (zzb(t2, i)) {
                        zzys.zzb(t, j, zzys.zzk(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 12:
                    if (zzb(t2, i)) {
                        zzys.zzb(t, j, zzys.zzk(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 13:
                    if (zzb(t2, i)) {
                        zzys.zzb(t, j, zzys.zzk(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 14:
                    if (zzb(t2, i)) {
                        zzys.zza((Object) t, j, zzys.zzl(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 15:
                    if (zzb(t2, i)) {
                        zzys.zzb(t, j, zzys.zzk(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 16:
                    if (zzb(t2, i)) {
                        zzys.zza((Object) t, j, zzys.zzl(t2, j));
                        zzc(t, i);
                    }
                    break;
                case 17:
                    zza(t, t2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzcch.zza(t, t2, j);
                    break;
                case 50:
                    zzxw.zza(this.zzcck, t, t2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zza(t2, i2, i)) {
                        zzys.zza(t, j, zzys.zzp(t2, j));
                        zzb(t, i2, i);
                    }
                    break;
                case 60:
                    zzb(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zza(t2, i2, i)) {
                        zzys.zza(t, j, zzys.zzp(t2, j));
                        zzb(t, i2, i);
                    }
                    break;
                case 68:
                    zzb(t, t2, i);
                    break;
            }
        }
        if (!this.zzccb) {
            zzxw.zza(this.zzcci, t, t2);
            if (this.zzcbz) {
                zzxw.zza(this.zzccj, t, t2);
            }
        }
    }

    private final void zza(T t, T t2, int i) {
        long jZzbs = zzbs(i) & 1048575;
        if (!zzb(t2, i)) {
            return;
        }
        Object objZzp = zzys.zzp(t, jZzbs);
        Object objZzp2 = zzys.zzp(t2, jZzbs);
        if (objZzp != null && objZzp2 != null) {
            zzys.zza(t, jZzbs, zzvz.zzb(objZzp, objZzp2));
            zzc(t, i);
        } else if (objZzp2 != null) {
            zzys.zza(t, jZzbs, objZzp2);
            zzc(t, i);
        }
    }

    private final void zzb(T t, T t2, int i) {
        int iZzbs = zzbs(i);
        int i2 = this.zzcbu[i];
        long j = iZzbs & 1048575;
        if (!zza(t2, i2, i)) {
            return;
        }
        Object objZzp = zzys.zzp(t, j);
        Object objZzp2 = zzys.zzp(t2, j);
        if (objZzp != null && objZzp2 != null) {
            zzys.zza(t, j, zzvz.zzb(objZzp, objZzp2));
            zzb(t, i2, i);
        } else if (objZzp2 != null) {
            zzys.zza(t, j, objZzp2);
            zzb(t, i2, i);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:416:0x0a24 A[PHI: r5
      0x0a24: PHI (r5v4 int) = 
      (r5v1 int)
      (r5v1 int)
      (r5v1 int)
      (r5v16 int)
      (r5v1 int)
      (r5v17 int)
      (r5v18 int)
      (r5v1 int)
      (r5v19 int)
      (r5v1 int)
      (r5v20 int)
      (r5v1 int)
      (r5v21 int)
      (r5v1 int)
      (r5v22 int)
      (r5v1 int)
      (r5v23 int)
      (r5v1 int)
      (r5v24 int)
      (r5v1 int)
      (r5v25 int)
      (r5v1 int)
      (r5v26 int)
      (r5v1 int)
      (r5v27 int)
      (r5v28 int)
      (r5v29 int)
      (r5v30 int)
      (r5v31 int)
      (r5v32 int)
      (r5v33 int)
      (r5v34 int)
      (r5v35 int)
      (r5v36 int)
      (r5v37 int)
      (r5v38 int)
      (r5v39 int)
      (r5v40 int)
      (r5v41 int)
      (r5v42 int)
      (r5v43 int)
      (r5v44 int)
      (r5v1 int)
      (r5v45 int)
      (r5v1 int)
      (r5v46 int)
      (r5v1 int)
      (r5v47 int)
      (r5v1 int)
      (r5v48 int)
      (r5v1 int)
      (r5v49 int)
      (r5v1 int)
      (r5v50 int)
      (r5v1 int)
      (r5v51 int)
      (r5v1 int)
      (r5v52 int)
      (r5v1 int)
      (r5v53 int)
      (r5v1 int)
      (r5v54 int)
      (r5v1 int)
      (r5v55 int)
      (r5v1 int)
      (r5v56 int)
      (r5v1 int)
      (r5v57 int)
      (r5v1 int)
      (r5v58 int)
      (r5v59 int)
      (r5v60 int)
      (r5v1 int)
      (r5v61 int)
      (r5v1 int)
      (r5v62 int)
      (r5v1 int)
      (r5v63 int)
      (r5v1 int)
      (r5v64 int)
      (r5v1 int)
      (r5v65 int)
      (r5v1 int)
      (r5v66 int)
      (r5v1 int)
      (r5v67 int)
      (r5v1 int)
      (r5v68 int)
      (r5v1 int)
      (r5v69 int)
      (r5v70 int)
      (r5v1 int)
      (r5v71 int)
      (r5v1 int)
      (r5v72 int)
      (r5v1 int)
      (r5v73 int)
      (r5v1 int)
      (r5v74 int)
      (r5v1 int)
      (r5v75 int)
      (r5v1 int)
      (r5v76 int)
      (r5v1 int)
      (r5v77 int)
      (r5v1 int)
      (r5v78 int)
      (r5v1 int)
      (r5v79 int)
     binds: [B:254:0x05eb, B:455:0x0ade, B:452:0x0ad3, B:453:0x0ad5, B:446:0x0ab5, B:450:0x0ac8, B:449:0x0abf, B:443:0x0aa2, B:444:0x0aa4, B:440:0x0a92, B:441:0x0a94, B:437:0x0a84, B:438:0x0a86, B:434:0x0a76, B:435:0x0a78, B:431:0x0a6b, B:432:0x0a6d, B:428:0x0a5f, B:429:0x0a61, B:425:0x0a51, B:426:0x0a53, B:422:0x0a43, B:423:0x0a45, B:419:0x0a2e, B:420:0x0a31, B:415:0x0a17, B:414:0x0a0a, B:413:0x09fd, B:412:0x09f0, B:411:0x09e3, B:410:0x09d6, B:409:0x09c9, B:408:0x09bb, B:407:0x09ae, B:406:0x099c, B:405:0x098e, B:404:0x0980, B:403:0x0972, B:402:0x0964, B:401:0x0956, B:400:0x0948, B:399:0x0939, B:394:0x0921, B:398:0x092b, B:388:0x08fe, B:392:0x0908, B:382:0x08db, B:386:0x08e5, B:376:0x08b8, B:380:0x08c2, B:370:0x0895, B:374:0x089f, B:364:0x0872, B:368:0x087c, B:358:0x084f, B:362:0x0859, B:352:0x082c, B:356:0x0836, B:346:0x0809, B:350:0x0813, B:340:0x07e6, B:344:0x07f0, B:334:0x07c3, B:338:0x07cd, B:328:0x07a0, B:332:0x07aa, B:322:0x077d, B:326:0x0787, B:316:0x075a, B:320:0x0764, B:314:0x073d, B:313:0x072c, B:311:0x0721, B:312:0x0723, B:308:0x0713, B:309:0x0715, B:305:0x0702, B:306:0x0704, B:302:0x06f1, B:303:0x06f3, B:299:0x06e0, B:300:0x06e2, B:296:0x06d1, B:297:0x06d3, B:293:0x06c3, B:294:0x06c5, B:290:0x06b6, B:291:0x06b8, B:284:0x0696, B:288:0x06a9, B:287:0x06a0, B:281:0x0681, B:282:0x0683, B:278:0x066d, B:279:0x0670, B:275:0x065c, B:276:0x065e, B:272:0x064b, B:273:0x064d, B:269:0x063d, B:270:0x063f, B:266:0x062e, B:267:0x0630, B:263:0x061d, B:264:0x061f, B:260:0x060c, B:261:0x060e, B:257:0x05f4, B:258:0x05f7] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.measurement.zzxu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int zzai(T r21) {
        /*
            Method dump skipped, instruction units count: 3206
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzxi.zzai(java.lang.Object):int");
    }

    private static <UT, UB> int zza(zzym<UT, UB> zzymVar, T t) {
        return zzymVar.zzai(zzymVar.zzal(t));
    }

    private static <E> List<E> zze(Object obj, long j) {
        return (List) zzys.zzp(obj, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:178:0x05e3  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0033  */
    @Override // com.google.android.gms.internal.measurement.zzxu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(T r14, com.google.android.gms.internal.measurement.zzzh r15) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 3222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzxi.zza(java.lang.Object, com.google.android.gms.internal.measurement.zzzh):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zzb(T r20, com.google.android.gms.internal.measurement.zzzh r21) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1540
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzxi.zzb(java.lang.Object, com.google.android.gms.internal.measurement.zzzh):void");
    }

    private final <K, V> void zza(zzzh zzzhVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzzhVar.zza(i, this.zzcck.zzah(zzbq(i2)), this.zzcck.zzad(obj));
        }
    }

    private static <UT, UB> void zza(zzym<UT, UB> zzymVar, T t, zzzh zzzhVar) throws IOException {
        zzymVar.zza(zzymVar.zzal(t), zzzhVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.android.gms.internal.measurement.zzxu
    public final void zza(T t, zzxt zzxtVar, zzvk zzvkVar) throws IOException {
        int i;
        Object objZza;
        Object objZza2;
        if (zzvkVar == null) {
            throw new NullPointerException();
        }
        zzym<?, ?> zzymVar = this.zzcci;
        zzvl<?> zzvlVar = this.zzccj;
        zzvo zzvoVarZzx = null;
        Object objZza3 = null;
        while (true) {
            try {
                int iZzvo = zzxtVar.zzvo();
                if (iZzvo >= this.zzcbw && iZzvo <= this.zzcbx) {
                    int i2 = 0;
                    int length = (this.zzcbu.length / 3) - 1;
                    while (i2 <= length) {
                        int i3 = (length + i2) >>> 1;
                        i = i3 * 3;
                        int i4 = this.zzcbu[i];
                        if (iZzvo != i4) {
                            if (iZzvo < i4) {
                                length = i3 - 1;
                            } else {
                                i2 = i3 + 1;
                            }
                        }
                    }
                    i = -1;
                } else {
                    i = -1;
                }
                if (i < 0) {
                    if (iZzvo == Integer.MAX_VALUE) {
                        for (int i5 = this.zzcce; i5 < this.zzccf; i5++) {
                            objZza3 = zza((Object) t, this.zzccd[i5], objZza3, (zzym<UT, Object>) zzymVar);
                        }
                        if (objZza3 != null) {
                            zzymVar.zzg(t, (Object) objZza3);
                            return;
                        }
                        return;
                    }
                    if (this.zzcbz) {
                        objZza = zzvlVar.zza(zzvkVar, this.zzcby, iZzvo);
                    } else {
                        objZza = null;
                    }
                    if (objZza != null) {
                        if (zzvoVarZzx == null) {
                            zzvoVarZzx = zzvlVar.zzx(t);
                        }
                        zzvo zzvoVar = zzvoVarZzx;
                        objZza3 = zzvlVar.zza(zzxtVar, objZza, zzvkVar, zzvoVar, objZza3, zzymVar);
                        zzvoVarZzx = zzvoVar;
                    } else {
                        zzymVar.zza(zzxtVar);
                        if (objZza3 == null) {
                            objZza3 = zzymVar.zzam(t);
                        }
                        if (!zzymVar.zza((Object) objZza3, zzxtVar)) {
                            for (int i6 = this.zzcce; i6 < this.zzccf; i6++) {
                                objZza3 = zza((Object) t, this.zzccd[i6], objZza3, (zzym<UT, Object>) zzymVar);
                            }
                            if (objZza3 != null) {
                                zzymVar.zzg(t, (Object) objZza3);
                                return;
                            }
                            return;
                        }
                    }
                } else {
                    int iZzbs = zzbs(i);
                    switch ((267386880 & iZzbs) >>> 20) {
                        case 0:
                            zzys.zza(t, iZzbs & 1048575, zzxtVar.readDouble());
                            zzc(t, i);
                            break;
                        case 1:
                            zzys.zza((Object) t, iZzbs & 1048575, zzxtVar.readFloat());
                            zzc(t, i);
                            break;
                        case 2:
                            zzys.zza((Object) t, iZzbs & 1048575, zzxtVar.zzus());
                            zzc(t, i);
                            break;
                        case 3:
                            zzys.zza((Object) t, iZzbs & 1048575, zzxtVar.zzur());
                            zzc(t, i);
                            break;
                        case 4:
                            zzys.zzb(t, iZzbs & 1048575, zzxtVar.zzut());
                            zzc(t, i);
                            break;
                        case 5:
                            zzys.zza((Object) t, iZzbs & 1048575, zzxtVar.zzuu());
                            zzc(t, i);
                            break;
                        case 6:
                            zzys.zzb(t, iZzbs & 1048575, zzxtVar.zzuv());
                            zzc(t, i);
                            break;
                        case 7:
                            zzys.zza(t, iZzbs & 1048575, zzxtVar.zzuw());
                            zzc(t, i);
                            break;
                        case 8:
                            zza(t, iZzbs, zzxtVar);
                            zzc(t, i);
                            break;
                        case 9:
                            if (zzb(t, i)) {
                                long j = iZzbs & 1048575;
                                zzys.zza(t, j, zzvz.zzb(zzys.zzp(t, j), zzxtVar.zza(zzbp(i), zzvkVar)));
                            } else {
                                zzys.zza(t, iZzbs & 1048575, zzxtVar.zza(zzbp(i), zzvkVar));
                                zzc(t, i);
                            }
                            break;
                        case 10:
                            zzys.zza(t, iZzbs & 1048575, zzxtVar.zzuy());
                            zzc(t, i);
                            break;
                        case 11:
                            zzys.zzb(t, iZzbs & 1048575, zzxtVar.zzuz());
                            zzc(t, i);
                            break;
                        case 12:
                            int iZzva = zzxtVar.zzva();
                            zzwc zzwcVarZzbr = zzbr(i);
                            if (zzwcVarZzbr != null && !zzwcVarZzbr.zzb(iZzva)) {
                                objZza2 = zzxw.zza(iZzvo, iZzva, objZza3, (zzym<UT, Object>) zzymVar);
                                objZza3 = objZza2;
                            }
                            zzys.zzb(t, iZzbs & 1048575, iZzva);
                            zzc(t, i);
                            break;
                        case 13:
                            zzys.zzb(t, iZzbs & 1048575, zzxtVar.zzvb());
                            zzc(t, i);
                            break;
                        case 14:
                            zzys.zza((Object) t, iZzbs & 1048575, zzxtVar.zzvc());
                            zzc(t, i);
                            break;
                        case 15:
                            zzys.zzb(t, iZzbs & 1048575, zzxtVar.zzvd());
                            zzc(t, i);
                            break;
                        case 16:
                            zzys.zza((Object) t, iZzbs & 1048575, zzxtVar.zzve());
                            zzc(t, i);
                            break;
                        case 17:
                            if (zzb(t, i)) {
                                long j2 = iZzbs & 1048575;
                                zzys.zza(t, j2, zzvz.zzb(zzys.zzp(t, j2), zzxtVar.zzb(zzbp(i), zzvkVar)));
                            } else {
                                zzys.zza(t, iZzbs & 1048575, zzxtVar.zzb(zzbp(i), zzvkVar));
                                zzc(t, i);
                            }
                            break;
                        case 18:
                            zzxtVar.zzh(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 19:
                            zzxtVar.zzi(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 20:
                            zzxtVar.zzk(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 21:
                            zzxtVar.zzj(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 22:
                            zzxtVar.zzl(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 23:
                            zzxtVar.zzm(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 24:
                            zzxtVar.zzn(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 25:
                            zzxtVar.zzo(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 26:
                            if (zzbu(iZzbs)) {
                                zzxtVar.zzp(this.zzcch.zza(t, iZzbs & 1048575));
                            } else {
                                zzxtVar.readStringList(this.zzcch.zza(t, iZzbs & 1048575));
                            }
                            break;
                        case 27:
                            zzxtVar.zza(this.zzcch.zza(t, iZzbs & 1048575), zzbp(i), zzvkVar);
                            break;
                        case 28:
                            zzxtVar.zzq(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 29:
                            zzxtVar.zzr(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 30:
                            List<Integer> listZza = this.zzcch.zza(t, iZzbs & 1048575);
                            zzxtVar.zzs(listZza);
                            objZza2 = zzxw.zza(iZzvo, listZza, zzbr(i), objZza3, zzymVar);
                            objZza3 = objZza2;
                            break;
                        case 31:
                            zzxtVar.zzt(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 32:
                            zzxtVar.zzu(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 33:
                            zzxtVar.zzv(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 34:
                            zzxtVar.zzw(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 35:
                            zzxtVar.zzh(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 36:
                            zzxtVar.zzi(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 37:
                            zzxtVar.zzk(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 38:
                            zzxtVar.zzj(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 39:
                            zzxtVar.zzl(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 40:
                            zzxtVar.zzm(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 41:
                            zzxtVar.zzn(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 42:
                            zzxtVar.zzo(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 43:
                            zzxtVar.zzr(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 44:
                            List<Integer> listZza2 = this.zzcch.zza(t, iZzbs & 1048575);
                            zzxtVar.zzs(listZza2);
                            objZza2 = zzxw.zza(iZzvo, listZza2, zzbr(i), objZza3, zzymVar);
                            objZza3 = objZza2;
                            break;
                        case 45:
                            zzxtVar.zzt(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 46:
                            zzxtVar.zzu(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 47:
                            zzxtVar.zzv(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 48:
                            zzxtVar.zzw(this.zzcch.zza(t, iZzbs & 1048575));
                            break;
                        case 49:
                            zzxtVar.zzb(this.zzcch.zza(t, iZzbs & 1048575), zzbp(i), zzvkVar);
                            break;
                        case 50:
                            Object objZzbq = zzbq(i);
                            long jZzbs = zzbs(i) & 1048575;
                            Object objZzp = zzys.zzp(t, jZzbs);
                            if (objZzp == null) {
                                objZzp = this.zzcck.zzag(objZzbq);
                                zzys.zza(t, jZzbs, objZzp);
                            } else if (this.zzcck.zzae(objZzp)) {
                                Object objZzag = this.zzcck.zzag(objZzbq);
                                this.zzcck.zzc(objZzag, objZzp);
                                zzys.zza(t, jZzbs, objZzag);
                                objZzp = objZzag;
                            }
                            zzxtVar.zza(this.zzcck.zzac(objZzp), this.zzcck.zzah(objZzbq), zzvkVar);
                            break;
                        case 51:
                            zzys.zza(t, iZzbs & 1048575, Double.valueOf(zzxtVar.readDouble()));
                            zzb(t, iZzvo, i);
                            break;
                        case 52:
                            zzys.zza(t, iZzbs & 1048575, Float.valueOf(zzxtVar.readFloat()));
                            zzb(t, iZzvo, i);
                            break;
                        case 53:
                            zzys.zza(t, iZzbs & 1048575, Long.valueOf(zzxtVar.zzus()));
                            zzb(t, iZzvo, i);
                            break;
                        case 54:
                            zzys.zza(t, iZzbs & 1048575, Long.valueOf(zzxtVar.zzur()));
                            zzb(t, iZzvo, i);
                            break;
                        case 55:
                            zzys.zza(t, iZzbs & 1048575, Integer.valueOf(zzxtVar.zzut()));
                            zzb(t, iZzvo, i);
                            break;
                        case 56:
                            zzys.zza(t, iZzbs & 1048575, Long.valueOf(zzxtVar.zzuu()));
                            zzb(t, iZzvo, i);
                            break;
                        case 57:
                            zzys.zza(t, iZzbs & 1048575, Integer.valueOf(zzxtVar.zzuv()));
                            zzb(t, iZzvo, i);
                            break;
                        case 58:
                            zzys.zza(t, iZzbs & 1048575, Boolean.valueOf(zzxtVar.zzuw()));
                            zzb(t, iZzvo, i);
                            break;
                        case 59:
                            zza(t, iZzbs, zzxtVar);
                            zzb(t, iZzvo, i);
                            break;
                        case 60:
                            if (zza(t, iZzvo, i)) {
                                long j3 = iZzbs & 1048575;
                                zzys.zza(t, j3, zzvz.zzb(zzys.zzp(t, j3), zzxtVar.zza(zzbp(i), zzvkVar)));
                            } else {
                                zzys.zza(t, iZzbs & 1048575, zzxtVar.zza(zzbp(i), zzvkVar));
                                zzc(t, i);
                            }
                            zzb(t, iZzvo, i);
                            break;
                        case 61:
                            zzys.zza(t, iZzbs & 1048575, zzxtVar.zzuy());
                            zzb(t, iZzvo, i);
                            break;
                        case 62:
                            zzys.zza(t, iZzbs & 1048575, Integer.valueOf(zzxtVar.zzuz()));
                            zzb(t, iZzvo, i);
                            break;
                        case 63:
                            int iZzva2 = zzxtVar.zzva();
                            zzwc zzwcVarZzbr2 = zzbr(i);
                            if (zzwcVarZzbr2 != null && !zzwcVarZzbr2.zzb(iZzva2)) {
                                objZza2 = zzxw.zza(iZzvo, iZzva2, objZza3, (zzym<UT, Object>) zzymVar);
                                objZza3 = objZza2;
                            }
                            zzys.zza(t, iZzbs & 1048575, Integer.valueOf(iZzva2));
                            zzb(t, iZzvo, i);
                            break;
                        case 64:
                            zzys.zza(t, iZzbs & 1048575, Integer.valueOf(zzxtVar.zzvb()));
                            zzb(t, iZzvo, i);
                            break;
                        case 65:
                            zzys.zza(t, iZzbs & 1048575, Long.valueOf(zzxtVar.zzvc()));
                            zzb(t, iZzvo, i);
                            break;
                        case 66:
                            zzys.zza(t, iZzbs & 1048575, Integer.valueOf(zzxtVar.zzvd()));
                            zzb(t, iZzvo, i);
                            break;
                        case 67:
                            zzys.zza(t, iZzbs & 1048575, Long.valueOf(zzxtVar.zzve()));
                            zzb(t, iZzvo, i);
                            break;
                        case 68:
                            zzys.zza(t, iZzbs & 1048575, zzxtVar.zzb(zzbp(i), zzvkVar));
                            zzb(t, iZzvo, i);
                            break;
                        default:
                            if (objZza3 == null) {
                                try {
                                    objZza3 = zzymVar.zzyr();
                                } catch (zzwf e) {
                                    zzymVar.zza(zzxtVar);
                                    if (objZza3 == null) {
                                        objZza3 = zzymVar.zzam(t);
                                    }
                                    if (!zzymVar.zza((Object) objZza3, zzxtVar)) {
                                        for (int i7 = this.zzcce; i7 < this.zzccf; i7++) {
                                            objZza3 = zza((Object) t, this.zzccd[i7], objZza3, (zzym<UT, Object>) zzymVar);
                                        }
                                        if (objZza3 != null) {
                                            zzymVar.zzg(t, (Object) objZza3);
                                            return;
                                        }
                                        return;
                                    }
                                }
                                break;
                            }
                            if (!zzymVar.zza((Object) objZza3, zzxtVar)) {
                                for (int i8 = this.zzcce; i8 < this.zzccf; i8++) {
                                    objZza3 = zza((Object) t, this.zzccd[i8], objZza3, (zzym<UT, Object>) zzymVar);
                                }
                                if (objZza3 != null) {
                                    zzymVar.zzg(t, (Object) objZza3);
                                    return;
                                }
                                return;
                            }
                            break;
                            break;
                    }
                }
            } finally {
            }
        }
    }

    private final zzxu zzbp(int i) {
        int i2 = (i / 3) << 1;
        zzxu zzxuVar = (zzxu) this.zzcbv[i2];
        if (zzxuVar != null) {
            return zzxuVar;
        }
        zzxu<T> zzxuVarZzi = zzxq.zzya().zzi((Class) this.zzcbv[i2 + 1]);
        this.zzcbv[i2] = zzxuVarZzi;
        return zzxuVarZzi;
    }

    private final Object zzbq(int i) {
        return this.zzcbv[(i / 3) << 1];
    }

    private final zzwc zzbr(int i) {
        return (zzwc) this.zzcbv[((i / 3) << 1) + 1];
    }

    @Override // com.google.android.gms.internal.measurement.zzxu
    public final void zzy(T t) {
        for (int i = this.zzcce; i < this.zzccf; i++) {
            long jZzbs = zzbs(this.zzccd[i]) & 1048575;
            Object objZzp = zzys.zzp(t, jZzbs);
            if (objZzp != null) {
                zzys.zza(t, jZzbs, this.zzcck.zzaf(objZzp));
            }
        }
        int length = this.zzccd.length;
        for (int i2 = this.zzccf; i2 < length; i2++) {
            this.zzcch.zzb(t, this.zzccd[i2]);
        }
        this.zzcci.zzy(t);
        if (this.zzcbz) {
            this.zzccj.zzy(t);
        }
    }

    private final <UT, UB> UB zza(Object obj, int i, UB ub, zzym<UT, UB> zzymVar) {
        zzwc zzwcVarZzbr;
        int i2 = this.zzcbu[i];
        Object objZzp = zzys.zzp(obj, zzbs(i) & 1048575);
        if (objZzp == null || (zzwcVarZzbr = zzbr(i)) == null) {
            return ub;
        }
        return (UB) zza(i, i2, this.zzcck.zzac(objZzp), zzwcVarZzbr, ub, zzymVar);
    }

    private final <K, V, UT, UB> UB zza(int i, int i2, Map<K, V> map, zzwc zzwcVar, UB ub, zzym<UT, UB> zzymVar) {
        zzwx<?, ?> zzwxVarZzah = this.zzcck.zzah(zzbq(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzwcVar.zzb(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = zzymVar.zzyr();
                }
                zzuv zzuvVarZzan = zzun.zzan(zzww.zza(zzwxVarZzah, next.getKey(), next.getValue()));
                try {
                    zzww.zza(zzuvVarZzan.zzup(), zzwxVarZzah, next.getKey(), next.getValue());
                    zzymVar.zza(ub, i2, zzuvVarZzan.zzuo());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* JADX WARN: Code restructure failed: missing block: B:89:0x0115, code lost:
    
        continue;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d4  */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14, types: [com.google.android.gms.internal.measurement.zzxu] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.google.android.gms.internal.measurement.zzxu] */
    @Override // com.google.android.gms.internal.measurement.zzxu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzaj(T r14) {
        /*
            Method dump skipped, instruction units count: 308
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzxi.zzaj(java.lang.Object):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzxu zzxuVar) {
        return zzxuVar.zzaj(zzys.zzp(obj, i & 1048575));
    }

    private static void zza(int i, Object obj, zzzh zzzhVar) throws IOException {
        if (obj instanceof String) {
            zzzhVar.zzb(i, (String) obj);
        } else {
            zzzhVar.zza(i, (zzun) obj);
        }
    }

    private final void zza(Object obj, int i, zzxt zzxtVar) throws IOException {
        if (zzbu(i)) {
            zzys.zza(obj, i & 1048575, zzxtVar.zzux());
        } else if (this.zzcca) {
            zzys.zza(obj, i & 1048575, zzxtVar.readString());
        } else {
            zzys.zza(obj, i & 1048575, zzxtVar.zzuy());
        }
    }

    private final int zzbs(int i) {
        return this.zzcbu[i + 1];
    }

    private final int zzbt(int i) {
        return this.zzcbu[i + 2];
    }

    private static boolean zzbu(int i) {
        return (i & 536870912) != 0;
    }

    private static <T> double zzf(T t, long j) {
        return ((Double) zzys.zzp(t, j)).doubleValue();
    }

    private static <T> float zzg(T t, long j) {
        return ((Float) zzys.zzp(t, j)).floatValue();
    }

    private static <T> int zzh(T t, long j) {
        return ((Integer) zzys.zzp(t, j)).intValue();
    }

    private static <T> long zzi(T t, long j) {
        return ((Long) zzys.zzp(t, j)).longValue();
    }

    private static <T> boolean zzj(T t, long j) {
        return ((Boolean) zzys.zzp(t, j)).booleanValue();
    }

    private final boolean zzc(T t, T t2, int i) {
        return zzb(t, i) == zzb(t2, i);
    }

    private final boolean zza(T t, int i, int i2, int i3) {
        if (this.zzccb) {
            return zzb(t, i);
        }
        return (i2 & i3) != 0;
    }

    private final boolean zzb(T t, int i) {
        if (this.zzccb) {
            int iZzbs = zzbs(i);
            long j = iZzbs & 1048575;
            switch ((iZzbs & 267386880) >>> 20) {
                case 0:
                    return zzys.zzo(t, j) != 0.0d;
                case 1:
                    return zzys.zzn(t, j) != 0.0f;
                case 2:
                    return zzys.zzl(t, j) != 0;
                case 3:
                    return zzys.zzl(t, j) != 0;
                case 4:
                    return zzys.zzk(t, j) != 0;
                case 5:
                    return zzys.zzl(t, j) != 0;
                case 6:
                    return zzys.zzk(t, j) != 0;
                case 7:
                    return zzys.zzm(t, j);
                case 8:
                    Object objZzp = zzys.zzp(t, j);
                    if (objZzp instanceof String) {
                        return !((String) objZzp).isEmpty();
                    }
                    if (objZzp instanceof zzun) {
                        return !zzun.zzbuu.equals(objZzp);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return zzys.zzp(t, j) != null;
                case 10:
                    return !zzun.zzbuu.equals(zzys.zzp(t, j));
                case 11:
                    return zzys.zzk(t, j) != 0;
                case 12:
                    return zzys.zzk(t, j) != 0;
                case 13:
                    return zzys.zzk(t, j) != 0;
                case 14:
                    return zzys.zzl(t, j) != 0;
                case 15:
                    return zzys.zzk(t, j) != 0;
                case 16:
                    return zzys.zzl(t, j) != 0;
                case 17:
                    return zzys.zzp(t, j) != null;
                default:
                    throw new IllegalArgumentException();
            }
        }
        int iZzbt = zzbt(i);
        return (zzys.zzk(t, (long) (iZzbt & 1048575)) & (1 << (iZzbt >>> 20))) != 0;
    }

    private final void zzc(T t, int i) {
        if (this.zzccb) {
            return;
        }
        int iZzbt = zzbt(i);
        long j = iZzbt & 1048575;
        zzys.zzb(t, j, zzys.zzk(t, j) | (1 << (iZzbt >>> 20)));
    }

    private final boolean zza(T t, int i, int i2) {
        return zzys.zzk(t, (long) (zzbt(i2) & 1048575)) == i;
    }

    private final void zzb(T t, int i, int i2) {
        zzys.zzb(t, zzbt(i2) & 1048575, i);
    }
}
