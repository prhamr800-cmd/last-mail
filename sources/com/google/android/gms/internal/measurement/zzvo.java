package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvq;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzvo<FieldDescriptorType extends zzvq<FieldDescriptorType>> {
    private static final zzvo zzbwn = new zzvo(true);
    private boolean zzbqj;
    private boolean zzbwm = false;
    private final zzxx<FieldDescriptorType, Object> zzbwl = zzxx.zzbv(16);

    private zzvo() {
    }

    private zzvo(boolean z) {
        zzsw();
    }

    public static <T extends zzvq<T>> zzvo<T> zzwd() {
        return zzbwn;
    }

    final boolean isEmpty() {
        return this.zzbwl.isEmpty();
    }

    public final void zzsw() {
        if (this.zzbqj) {
            return;
        }
        this.zzbwl.zzsw();
        this.zzbqj = true;
    }

    public final boolean isImmutable() {
        return this.zzbqj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzvo)) {
            return false;
        }
        return this.zzbwl.equals(((zzvo) obj).zzbwl);
    }

    public final int hashCode() {
        return this.zzbwl.hashCode();
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> iterator() {
        if (this.zzbwm) {
            return new zzwk(this.zzbwl.entrySet().iterator());
        }
        return this.zzbwl.entrySet().iterator();
    }

    final Iterator<Map.Entry<FieldDescriptorType, Object>> descendingIterator() {
        if (this.zzbwm) {
            return new zzwk(this.zzbwl.zzyl().iterator());
        }
        return this.zzbwl.zzyl().iterator();
    }

    private final Object zza(FieldDescriptorType fielddescriptortype) {
        Object obj = this.zzbwl.get(fielddescriptortype);
        if (obj instanceof zzwh) {
            return zzwh.zzxg();
        }
        return obj;
    }

    private final void zza(FieldDescriptorType fielddescriptortype, Object obj) {
        if (fielddescriptortype.zzwi()) {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList2.get(i);
                i++;
                zza(fielddescriptortype.zzwg(), obj2);
            }
            obj = arrayList;
        } else {
            zza(fielddescriptortype.zzwg(), obj);
        }
        if (obj instanceof zzwh) {
            this.zzbwm = true;
        }
        this.zzbwl.put(fielddescriptortype, obj);
    }

    private static void zza(zzzb zzzbVar, Object obj) {
        boolean z;
        zzvz.checkNotNull(obj);
        boolean z2 = false;
        switch (zzvp.zzbwo[zzzbVar.zzzc().ordinal()]) {
            case 1:
                z = obj instanceof Integer;
                z2 = z;
                break;
            case 2:
                z = obj instanceof Long;
                z2 = z;
                break;
            case 3:
                z = obj instanceof Float;
                z2 = z;
                break;
            case 4:
                z = obj instanceof Double;
                z2 = z;
                break;
            case 5:
                z = obj instanceof Boolean;
                z2 = z;
                break;
            case 6:
                z = obj instanceof String;
                z2 = z;
                break;
            case 7:
                if ((obj instanceof zzun) || (obj instanceof byte[])) {
                    z2 = true;
                }
                break;
            case 8:
                if ((obj instanceof Integer) || (obj instanceof zzwa)) {
                    z2 = true;
                }
                break;
            case 9:
                if ((obj instanceof zzxe) || (obj instanceof zzwh)) {
                    z2 = true;
                }
                break;
        }
        if (!z2) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    public final boolean isInitialized() {
        for (int i = 0; i < this.zzbwl.zzyj(); i++) {
            if (!zzc(this.zzbwl.zzbw(i))) {
                return false;
            }
        }
        Iterator it = this.zzbwl.zzyk().iterator();
        while (it.hasNext()) {
            if (!zzc((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    private static boolean zzc(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.zzwh() == zzzg.MESSAGE) {
            if (key.zzwi()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((zzxe) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof zzxe) {
                    if (!((zzxe) value).isInitialized()) {
                        return false;
                    }
                } else {
                    if (value instanceof zzwh) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
        }
        return true;
    }

    public final void zza(zzvo<FieldDescriptorType> zzvoVar) {
        for (int i = 0; i < zzvoVar.zzbwl.zzyj(); i++) {
            zzd(zzvoVar.zzbwl.zzbw(i));
        }
        Iterator it = zzvoVar.zzbwl.zzyk().iterator();
        while (it.hasNext()) {
            zzd((Map.Entry) it.next());
        }
    }

    private static Object zzz(Object obj) {
        if (obj instanceof zzxk) {
            return ((zzxk) obj).zzxw();
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
        return obj;
    }

    private final void zzd(Map.Entry<FieldDescriptorType, Object> entry) {
        zzxe zzxeVarZzwv;
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof zzwh) {
            value = zzwh.zzxg();
        }
        if (key.zzwi()) {
            Object objZza = zza(key);
            if (objZza == null) {
                objZza = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) objZza).add(zzz(it.next()));
            }
            this.zzbwl.put(key, objZza);
            return;
        }
        if (key.zzwh() == zzzg.MESSAGE) {
            Object objZza2 = zza(key);
            if (objZza2 == null) {
                this.zzbwl.put(key, zzz(value));
                return;
            }
            if (objZza2 instanceof zzxk) {
                zzxeVarZzwv = key.zza((zzxk) objZza2, (zzxk) value);
            } else {
                zzxeVarZzwv = key.zza(((zzxe) objZza2).zzwo(), (zzxe) value).zzwv();
            }
            this.zzbwl.put(key, zzxeVarZzwv);
            return;
        }
        this.zzbwl.put(key, zzz(value));
    }

    static void zza(zzve zzveVar, zzzb zzzbVar, int i, Object obj) throws IOException {
        if (zzzbVar == zzzb.zzceu) {
            zzxe zzxeVar = (zzxe) obj;
            zzvz.zzf(zzxeVar);
            zzveVar.zzc(i, 3);
            zzxeVar.zzb(zzveVar);
            zzveVar.zzc(i, 4);
        }
        zzveVar.zzc(i, zzzbVar.zzzd());
        switch (zzvp.zzbvp[zzzbVar.ordinal()]) {
            case 1:
                zzveVar.zzb(((Double) obj).doubleValue());
                break;
            case 2:
                zzveVar.zza(((Float) obj).floatValue());
                break;
            case 3:
                zzveVar.zzay(((Long) obj).longValue());
                break;
            case 4:
                zzveVar.zzay(((Long) obj).longValue());
                break;
            case 5:
                zzveVar.zzay(((Integer) obj).intValue());
                break;
            case 6:
                zzveVar.zzba(((Long) obj).longValue());
                break;
            case 7:
                zzveVar.zzbb(((Integer) obj).intValue());
                break;
            case 8:
                zzveVar.zzs(((Boolean) obj).booleanValue());
                break;
            case 9:
                ((zzxe) obj).zzb(zzveVar);
                break;
            case 10:
                zzveVar.zzb((zzxe) obj);
                break;
            case 11:
                if (obj instanceof zzun) {
                    zzveVar.zza((zzun) obj);
                } else {
                    zzveVar.zzgd((String) obj);
                }
                break;
            case 12:
                if (obj instanceof zzun) {
                    zzveVar.zza((zzun) obj);
                } else {
                    byte[] bArr = (byte[]) obj;
                    zzveVar.zze(bArr, 0, bArr.length);
                }
                break;
            case 13:
                zzveVar.zzaz(((Integer) obj).intValue());
                break;
            case 14:
                zzveVar.zzbb(((Integer) obj).intValue());
                break;
            case 15:
                zzveVar.zzba(((Long) obj).longValue());
                break;
            case 16:
                zzveVar.zzba(((Integer) obj).intValue());
                break;
            case 17:
                zzveVar.zzaz(((Long) obj).longValue());
                break;
            case 18:
                if (obj instanceof zzwa) {
                    zzveVar.zzay(((zzwa) obj).zzc());
                } else {
                    zzveVar.zzay(((Integer) obj).intValue());
                }
                break;
        }
    }

    public final int zzwe() {
        int iZzb = 0;
        for (int i = 0; i < this.zzbwl.zzyj(); i++) {
            Map.Entry<K, Object> entryZzbw = this.zzbwl.zzbw(i);
            iZzb += zzb((zzvq<?>) entryZzbw.getKey(), entryZzbw.getValue());
        }
        Iterator it = this.zzbwl.zzyk().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            iZzb += zzb((zzvq<?>) entry.getKey(), entry.getValue());
        }
        return iZzb;
    }

    public final int zzwf() {
        int iZze = 0;
        for (int i = 0; i < this.zzbwl.zzyj(); i++) {
            iZze += zze(this.zzbwl.zzbw(i));
        }
        Iterator it = this.zzbwl.zzyk().iterator();
        while (it.hasNext()) {
            iZze += zze((Map.Entry) it.next());
        }
        return iZze;
    }

    private static int zze(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (key.zzwh() == zzzg.MESSAGE && !key.zzwi() && !key.zzwj()) {
            if (value instanceof zzwh) {
                return zzve.zzb(entry.getKey().zzc(), (zzwh) value);
            }
            return zzve.zzd(entry.getKey().zzc(), (zzxe) value);
        }
        return zzb((zzvq<?>) key, value);
    }

    static int zza(zzzb zzzbVar, int i, Object obj) {
        int iZzbc = zzve.zzbc(i);
        if (zzzbVar == zzzb.zzceu) {
            zzvz.zzf((zzxe) obj);
            iZzbc <<= 1;
        }
        return iZzbc + zzb(zzzbVar, obj);
    }

    private static int zzb(zzzb zzzbVar, Object obj) {
        switch (zzvp.zzbvp[zzzbVar.ordinal()]) {
            case 1:
                return zzve.zzc(((Double) obj).doubleValue());
            case 2:
                return zzve.zzb(((Float) obj).floatValue());
            case 3:
                return zzve.zzbb(((Long) obj).longValue());
            case 4:
                return zzve.zzbc(((Long) obj).longValue());
            case 5:
                return zzve.zzbd(((Integer) obj).intValue());
            case 6:
                return zzve.zzbe(((Long) obj).longValue());
            case 7:
                return zzve.zzbg(((Integer) obj).intValue());
            case 8:
                return zzve.zzt(((Boolean) obj).booleanValue());
            case 9:
                return zzve.zzd((zzxe) obj);
            case 10:
                if (obj instanceof zzwh) {
                    return zzve.zza((zzwh) obj);
                }
                return zzve.zzc((zzxe) obj);
            case 11:
                if (obj instanceof zzun) {
                    return zzve.zzb((zzun) obj);
                }
                return zzve.zzge((String) obj);
            case 12:
                if (obj instanceof zzun) {
                    return zzve.zzb((zzun) obj);
                }
                return zzve.zzk((byte[]) obj);
            case 13:
                return zzve.zzbe(((Integer) obj).intValue());
            case 14:
                return zzve.zzbh(((Integer) obj).intValue());
            case 15:
                return zzve.zzbf(((Long) obj).longValue());
            case 16:
                return zzve.zzbf(((Integer) obj).intValue());
            case 17:
                return zzve.zzbd(((Long) obj).longValue());
            case 18:
                if (obj instanceof zzwa) {
                    return zzve.zzbi(((zzwa) obj).zzc());
                }
                return zzve.zzbi(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private static int zzb(zzvq<?> zzvqVar, Object obj) {
        zzzb zzzbVarZzwg = zzvqVar.zzwg();
        int iZzc = zzvqVar.zzc();
        if (zzvqVar.zzwi()) {
            int iZza = 0;
            if (zzvqVar.zzwj()) {
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    iZza += zzb(zzzbVarZzwg, it.next());
                }
                return zzve.zzbc(iZzc) + iZza + zzve.zzbk(iZza);
            }
            Iterator it2 = ((List) obj).iterator();
            while (it2.hasNext()) {
                iZza += zza(zzzbVarZzwg, iZzc, it2.next());
            }
            return iZza;
        }
        return zza(zzzbVarZzwg, iZzc, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzvo zzvoVar = new zzvo();
        for (int i = 0; i < this.zzbwl.zzyj(); i++) {
            Map.Entry<K, Object> entryZzbw = this.zzbwl.zzbw(i);
            zzvoVar.zza((zzvq) entryZzbw.getKey(), entryZzbw.getValue());
        }
        Iterator it = this.zzbwl.zzyk().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zzvoVar.zza((zzvq) entry.getKey(), entry.getValue());
        }
        zzvoVar.zzbwm = this.zzbwm;
        return zzvoVar;
    }
}
