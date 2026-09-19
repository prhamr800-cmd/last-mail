package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
final class zzxw {
    private static final Class<?> zzccr = zzyh();
    private static final zzym<?, ?> zzccs = zzv(false);
    private static final zzym<?, ?> zzcct = zzv(true);
    private static final zzym<?, ?> zzccu = new zzyo();

    public static void zzj(Class<?> cls) {
        if (!zzvx.class.isAssignableFrom(cls) && zzccr != null && !zzccr.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void zza(int i, List<Double> list, zzzh zzzhVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzhVar.zzg(i, list, z);
        }
    }

    public static void zzb(int i, List<Float> list, zzzh zzzhVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzhVar.zzf(i, list, z);
        }
    }

    public static void zzc(int i, List<Long> list, zzzh zzzhVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzhVar.zzc(i, list, z);
        }
    }

    public static void zzd(int i, List<Long> list, zzzh zzzhVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzhVar.zzd(i, list, z);
        }
    }

    public static void zze(int i, List<Long> list, zzzh zzzhVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzhVar.zzn(i, list, z);
        }
    }

    public static void zzf(int i, List<Long> list, zzzh zzzhVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzhVar.zze(i, list, z);
        }
    }

    public static void zzg(int i, List<Long> list, zzzh zzzhVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzhVar.zzl(i, list, z);
        }
    }

    public static void zzh(int i, List<Integer> list, zzzh zzzhVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzhVar.zza(i, list, z);
        }
    }

    public static void zzi(int i, List<Integer> list, zzzh zzzhVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzhVar.zzj(i, list, z);
        }
    }

    public static void zzj(int i, List<Integer> list, zzzh zzzhVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzhVar.zzm(i, list, z);
        }
    }

    public static void zzk(int i, List<Integer> list, zzzh zzzhVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzhVar.zzb(i, list, z);
        }
    }

    public static void zzl(int i, List<Integer> list, zzzh zzzhVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzhVar.zzk(i, list, z);
        }
    }

    public static void zzm(int i, List<Integer> list, zzzh zzzhVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzhVar.zzh(i, list, z);
        }
    }

    public static void zzn(int i, List<Boolean> list, zzzh zzzhVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzhVar.zzi(i, list, z);
        }
    }

    public static void zza(int i, List<String> list, zzzh zzzhVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzhVar.zza(i, list);
        }
    }

    public static void zzb(int i, List<zzun> list, zzzh zzzhVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzhVar.zzb(i, list);
        }
    }

    public static void zza(int i, List<?> list, zzzh zzzhVar, zzxu zzxuVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzhVar.zza(i, list, zzxuVar);
        }
    }

    public static void zzb(int i, List<?> list, zzzh zzzhVar, zzxu zzxuVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzzhVar.zzb(i, list, zzxuVar);
        }
    }

    static int zzx(List<Long> list) {
        int iZzbb;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzws) {
            zzws zzwsVar = (zzws) list;
            iZzbb = 0;
            while (i < size) {
                iZzbb += zzve.zzbb(zzwsVar.getLong(i));
                i++;
            }
        } else {
            iZzbb = 0;
            while (i < size) {
                iZzbb += zzve.zzbb(list.get(i).longValue());
                i++;
            }
        }
        return iZzbb;
    }

    static int zzo(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zzx(list) + (list.size() * zzve.zzbc(i));
    }

    static int zzy(List<Long> list) {
        int iZzbc;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzws) {
            zzws zzwsVar = (zzws) list;
            iZzbc = 0;
            while (i < size) {
                iZzbc += zzve.zzbc(zzwsVar.getLong(i));
                i++;
            }
        } else {
            iZzbc = 0;
            while (i < size) {
                iZzbc += zzve.zzbc(list.get(i).longValue());
                i++;
            }
        }
        return iZzbc;
    }

    static int zzp(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzy(list) + (size * zzve.zzbc(i));
    }

    static int zzz(List<Long> list) {
        int iZzbd;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzws) {
            zzws zzwsVar = (zzws) list;
            iZzbd = 0;
            while (i < size) {
                iZzbd += zzve.zzbd(zzwsVar.getLong(i));
                i++;
            }
        } else {
            iZzbd = 0;
            while (i < size) {
                iZzbd += zzve.zzbd(list.get(i).longValue());
                i++;
            }
        }
        return iZzbd;
    }

    static int zzq(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzz(list) + (size * zzve.zzbc(i));
    }

    static int zzaa(List<Integer> list) {
        int iZzbi;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzvy) {
            zzvy zzvyVar = (zzvy) list;
            iZzbi = 0;
            while (i < size) {
                iZzbi += zzve.zzbi(zzvyVar.getInt(i));
                i++;
            }
        } else {
            iZzbi = 0;
            while (i < size) {
                iZzbi += zzve.zzbi(list.get(i).intValue());
                i++;
            }
        }
        return iZzbi;
    }

    static int zzr(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzaa(list) + (size * zzve.zzbc(i));
    }

    static int zzab(List<Integer> list) {
        int iZzbd;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzvy) {
            zzvy zzvyVar = (zzvy) list;
            iZzbd = 0;
            while (i < size) {
                iZzbd += zzve.zzbd(zzvyVar.getInt(i));
                i++;
            }
        } else {
            iZzbd = 0;
            while (i < size) {
                iZzbd += zzve.zzbd(list.get(i).intValue());
                i++;
            }
        }
        return iZzbd;
    }

    static int zzs(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzab(list) + (size * zzve.zzbc(i));
    }

    static int zzac(List<Integer> list) {
        int iZzbe;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzvy) {
            zzvy zzvyVar = (zzvy) list;
            iZzbe = 0;
            while (i < size) {
                iZzbe += zzve.zzbe(zzvyVar.getInt(i));
                i++;
            }
        } else {
            iZzbe = 0;
            while (i < size) {
                iZzbe += zzve.zzbe(list.get(i).intValue());
                i++;
            }
        }
        return iZzbe;
    }

    static int zzt(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzac(list) + (size * zzve.zzbc(i));
    }

    static int zzad(List<Integer> list) {
        int iZzbf;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzvy) {
            zzvy zzvyVar = (zzvy) list;
            iZzbf = 0;
            while (i < size) {
                iZzbf += zzve.zzbf(zzvyVar.getInt(i));
                i++;
            }
        } else {
            iZzbf = 0;
            while (i < size) {
                iZzbf += zzve.zzbf(list.get(i).intValue());
                i++;
            }
        }
        return iZzbf;
    }

    static int zzu(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzad(list) + (size * zzve.zzbc(i));
    }

    static int zzae(List<?> list) {
        return list.size() << 2;
    }

    static int zzv(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzve.zzk(i, 0);
    }

    static int zzaf(List<?> list) {
        return list.size() << 3;
    }

    static int zzw(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzve.zzg(i, 0L);
    }

    static int zzag(List<?> list) {
        return list.size();
    }

    static int zzx(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzve.zzc(i, true);
    }

    static int zzc(int i, List<?> list) {
        int iZzge;
        int iZzge2;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int iZzbc = zzve.zzbc(i) * size;
        if (list instanceof zzwn) {
            zzwn zzwnVar = (zzwn) list;
            while (i2 < size) {
                Object objZzbo = zzwnVar.zzbo(i2);
                if (objZzbo instanceof zzun) {
                    iZzge2 = zzve.zzb((zzun) objZzbo);
                } else {
                    iZzge2 = zzve.zzge((String) objZzbo);
                }
                iZzbc += iZzge2;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                if (obj instanceof zzun) {
                    iZzge = zzve.zzb((zzun) obj);
                } else {
                    iZzge = zzve.zzge((String) obj);
                }
                iZzbc += iZzge;
                i2++;
            }
        }
        return iZzbc;
    }

    static int zzc(int i, Object obj, zzxu zzxuVar) {
        if (obj instanceof zzwl) {
            return zzve.zza(i, (zzwl) obj);
        }
        return zzve.zzb(i, (zzxe) obj, zzxuVar);
    }

    static int zzc(int i, List<?> list, zzxu zzxuVar) {
        int iZzb;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzbc = zzve.zzbc(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof zzwl) {
                iZzb = zzve.zza((zzwl) obj);
            } else {
                iZzb = zzve.zzb((zzxe) obj, zzxuVar);
            }
            iZzbc += iZzb;
        }
        return iZzbc;
    }

    static int zzd(int i, List<zzun> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzbc = size * zzve.zzbc(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            iZzbc += zzve.zzb(list.get(i2));
        }
        return iZzbc;
    }

    static int zzd(int i, List<zzxe> list, zzxu zzxuVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzc = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iZzc += zzve.zzc(i, list.get(i2), zzxuVar);
        }
        return iZzc;
    }

    public static zzym<?, ?> zzye() {
        return zzccs;
    }

    public static zzym<?, ?> zzyf() {
        return zzcct;
    }

    public static zzym<?, ?> zzyg() {
        return zzccu;
    }

    private static zzym<?, ?> zzv(boolean z) {
        try {
            Class<?> clsZzyi = zzyi();
            if (clsZzyi == null) {
                return null;
            }
            return (zzym) clsZzyi.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th) {
            return null;
        }
    }

    private static Class<?> zzyh() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            return null;
        }
    }

    private static Class<?> zzyi() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }

    static boolean zze(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    static <T> void zza(zzwz zzwzVar, T t, T t2, long j) {
        zzys.zza(t, j, zzwzVar.zzc(zzys.zzp(t, j), zzys.zzp(t2, j)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    static <T, FT extends zzvq<FT>> void zza(zzvl<FT> zzvlVar, T t, T t2) {
        zzvo<T> zzvoVarZzw = zzvlVar.zzw(t2);
        if (!zzvoVarZzw.isEmpty()) {
            zzvlVar.zzx(t).zza(zzvoVarZzw);
        }
    }

    static <T, UT, UB> void zza(zzym<UT, UB> zzymVar, T t, T t2) {
        zzymVar.zzf(t, zzymVar.zzh(zzymVar.zzal(t), zzymVar.zzal(t2)));
    }

    static <UT, UB> UB zza(int i, List<Integer> list, zzwc zzwcVar, UB ub, zzym<UT, UB> zzymVar) {
        UB ub2;
        if (zzwcVar == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            ub2 = ub;
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int iIntValue = list.get(i3).intValue();
                if (zzwcVar.zzb(iIntValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(iIntValue));
                    }
                    i2++;
                } else {
                    ub2 = (UB) zza(i, iIntValue, ub2, zzymVar);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            ub2 = ub;
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                if (!zzwcVar.zzb(iIntValue2)) {
                    Object objZza = zza(i, iIntValue2, ub2, zzymVar);
                    it.remove();
                    ub2 = (UB) objZza;
                }
            }
        }
        return ub2;
    }

    static <UT, UB> UB zza(int i, int i2, UB ub, zzym<UT, UB> zzymVar) {
        if (ub == null) {
            ub = zzymVar.zzyr();
        }
        zzymVar.zza(ub, i, i2);
        return ub;
    }
}
