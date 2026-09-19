package com.google.android.gms.measurement.internal;

import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zzfz;
import com.google.android.gms.internal.measurement.zzga;
import com.google.android.gms.internal.measurement.zzgb;
import com.google.android.gms.internal.measurement.zzgc;
import com.google.android.gms.internal.measurement.zzgh;
import com.google.android.gms.internal.measurement.zzgj;
import com.google.android.gms.internal.measurement.zzgo;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes2.dex */
final class zzk extends zzfj {
    zzk(zzfk zzfkVar) {
        super(zzfkVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzfj
    protected final boolean zzgy() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x03ad  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0455  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0476  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x08ee A[PHI: r11 r13
      0x08ee: PHI (r11v8 java.util.BitSet) = (r11v7 java.util.BitSet), (r11v12 java.util.BitSet) binds: [B:247:0x08a1, B:249:0x08cd] A[DONT_GENERATE, DONT_INLINE]
      0x08ee: PHI (r13v15 java.util.BitSet) = (r13v14 java.util.BitSet), (r13v17 java.util.BitSet) binds: [B:247:0x08a1, B:249:0x08cd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02ce  */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final com.google.android.gms.internal.measurement.zzgg[] zza(java.lang.String r99, com.google.android.gms.internal.measurement.zzgi[] r100, com.google.android.gms.internal.measurement.zzgo[] r101) {
        /*
            Method dump skipped, instruction units count: 3317
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzk.zza(java.lang.String, com.google.android.gms.internal.measurement.zzgi[], com.google.android.gms.internal.measurement.zzgo[]):com.google.android.gms.internal.measurement.zzgg[]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Boolean zza(zzfy zzfyVar, String str, zzgj[] zzgjVarArr, long j) {
        Boolean boolZza;
        if (zzfyVar.zzawb != null) {
            Boolean boolZza2 = zza(j, zzfyVar.zzawb);
            if (boolZza2 == null) {
                return null;
            }
            if (!boolZza2.booleanValue()) {
                return false;
            }
        }
        HashSet hashSet = new HashSet();
        for (zzfz zzfzVar : zzfyVar.zzavz) {
            if (TextUtils.isEmpty(zzfzVar.zzawg)) {
                zzgt().zzjj().zzg("null or empty param name in filter. event", zzgq().zzbv(str));
                return null;
            }
            hashSet.add(zzfzVar.zzawg);
        }
        ArrayMap arrayMap = new ArrayMap();
        for (zzgj zzgjVar : zzgjVarArr) {
            if (hashSet.contains(zzgjVar.name)) {
                if (zzgjVar.zzaxq != null) {
                    arrayMap.put(zzgjVar.name, zzgjVar.zzaxq);
                } else if (zzgjVar.zzava != null) {
                    arrayMap.put(zzgjVar.name, zzgjVar.zzava);
                } else if (zzgjVar.zzamw != null) {
                    arrayMap.put(zzgjVar.name, zzgjVar.zzamw);
                } else {
                    zzgt().zzjj().zze("Unknown value for param. event, param", zzgq().zzbv(str), zzgq().zzbw(zzgjVar.name));
                    return null;
                }
            }
        }
        for (zzfz zzfzVar2 : zzfyVar.zzavz) {
            boolean zEquals = Boolean.TRUE.equals(zzfzVar2.zzawf);
            String str2 = zzfzVar2.zzawg;
            if (TextUtils.isEmpty(str2)) {
                zzgt().zzjj().zzg("Event has empty param name. event", zzgq().zzbv(str));
                return null;
            }
            V v = arrayMap.get(str2);
            if (v instanceof Long) {
                if (zzfzVar2.zzawe == null) {
                    zzgt().zzjj().zze("No number filter for long param. event, param", zzgq().zzbv(str), zzgq().zzbw(str2));
                    return null;
                }
                Boolean boolZza3 = zza(((Long) v).longValue(), zzfzVar2.zzawe);
                if (boolZza3 == null) {
                    return null;
                }
                if ((true ^ boolZza3.booleanValue()) ^ zEquals) {
                    return false;
                }
            } else if (v instanceof Double) {
                if (zzfzVar2.zzawe == null) {
                    zzgt().zzjj().zze("No number filter for double param. event, param", zzgq().zzbv(str), zzgq().zzbw(str2));
                    return null;
                }
                Boolean boolZza4 = zza(((Double) v).doubleValue(), zzfzVar2.zzawe);
                if (boolZza4 == null) {
                    return null;
                }
                if ((true ^ boolZza4.booleanValue()) ^ zEquals) {
                    return false;
                }
            } else if (v instanceof String) {
                if (zzfzVar2.zzawd != null) {
                    boolZza = zza((String) v, zzfzVar2.zzawd);
                } else if (zzfzVar2.zzawe != null) {
                    String str3 = (String) v;
                    if (zzfq.zzcu(str3)) {
                        boolZza = zza(str3, zzfzVar2.zzawe);
                    } else {
                        zzgt().zzjj().zze("Invalid param value for number filter. event, param", zzgq().zzbv(str), zzgq().zzbw(str2));
                        return null;
                    }
                } else {
                    zzgt().zzjj().zze("No filter for String param. event, param", zzgq().zzbv(str), zzgq().zzbw(str2));
                    return null;
                }
                if (boolZza == null) {
                    return null;
                }
                if ((true ^ boolZza.booleanValue()) ^ zEquals) {
                    return false;
                }
            } else {
                if (v == 0) {
                    zzgt().zzjo().zze("Missing param for filter. event, param", zzgq().zzbv(str), zzgq().zzbw(str2));
                    return false;
                }
                zzgt().zzjj().zze("Unknown param type. event, param", zzgq().zzbv(str), zzgq().zzbw(str2));
                return null;
            }
        }
        return true;
    }

    private final Boolean zza(zzgb zzgbVar, zzgo zzgoVar) {
        zzfz zzfzVar = zzgbVar.zzawo;
        if (zzfzVar == null) {
            zzgt().zzjj().zzg("Missing property filter. property", zzgq().zzbx(zzgoVar.name));
            return null;
        }
        boolean zEquals = Boolean.TRUE.equals(zzfzVar.zzawf);
        if (zzgoVar.zzaxq != null) {
            if (zzfzVar.zzawe == null) {
                zzgt().zzjj().zzg("No number filter for long property. property", zzgq().zzbx(zzgoVar.name));
                return null;
            }
            return zza(zza(zzgoVar.zzaxq.longValue(), zzfzVar.zzawe), zEquals);
        }
        if (zzgoVar.zzava != null) {
            if (zzfzVar.zzawe == null) {
                zzgt().zzjj().zzg("No number filter for double property. property", zzgq().zzbx(zzgoVar.name));
                return null;
            }
            return zza(zza(zzgoVar.zzava.doubleValue(), zzfzVar.zzawe), zEquals);
        }
        if (zzgoVar.zzamw != null) {
            if (zzfzVar.zzawd == null) {
                if (zzfzVar.zzawe == null) {
                    zzgt().zzjj().zzg("No string or number filter defined. property", zzgq().zzbx(zzgoVar.name));
                } else {
                    if (zzfq.zzcu(zzgoVar.zzamw)) {
                        return zza(zza(zzgoVar.zzamw, zzfzVar.zzawe), zEquals);
                    }
                    zzgt().zzjj().zze("Invalid user property value for Numeric number filter. property, value", zzgq().zzbx(zzgoVar.name), zzgoVar.zzamw);
                }
                return null;
            }
            return zza(zza(zzgoVar.zzamw, zzfzVar.zzawd), zEquals);
        }
        zzgt().zzjj().zzg("User property has no value, property", zzgq().zzbx(zzgoVar.name));
        return null;
    }

    @VisibleForTesting
    private static Boolean zza(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() ^ z);
    }

    @VisibleForTesting
    private final Boolean zza(String str, zzgc zzgcVar) {
        String upperCase;
        List<String> listAsList;
        String str2;
        Preconditions.checkNotNull(zzgcVar);
        if (str == null || zzgcVar.zzawp == null || zzgcVar.zzawp.intValue() == 0) {
            return null;
        }
        if (zzgcVar.zzawp.intValue() == 6) {
            if (zzgcVar.zzaws == null || zzgcVar.zzaws.length == 0) {
                return null;
            }
        } else if (zzgcVar.zzawq == null) {
            return null;
        }
        int iIntValue = zzgcVar.zzawp.intValue();
        boolean z = zzgcVar.zzawr != null && zzgcVar.zzawr.booleanValue();
        if (z || iIntValue == 1 || iIntValue == 6) {
            upperCase = zzgcVar.zzawq;
        } else {
            upperCase = zzgcVar.zzawq.toUpperCase(Locale.ENGLISH);
        }
        String str3 = upperCase;
        if (zzgcVar.zzaws != null) {
            String[] strArr = zzgcVar.zzaws;
            if (z) {
                listAsList = Arrays.asList(strArr);
            } else {
                ArrayList arrayList = new ArrayList();
                for (String str4 : strArr) {
                    arrayList.add(str4.toUpperCase(Locale.ENGLISH));
                }
                listAsList = arrayList;
            }
        } else {
            listAsList = null;
        }
        if (iIntValue != 1) {
            str2 = null;
        } else {
            str2 = str3;
        }
        return zza(str, iIntValue, z, str3, listAsList, str2);
    }

    private final Boolean zza(String str, int i, boolean z, String str2, List<String> list, String str3) {
        if (str == null) {
            return null;
        }
        if (i == 6) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!z && i != 1) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (i) {
            case 1:
                try {
                } catch (PatternSyntaxException e) {
                    zzgt().zzjj().zzg("Invalid regular expression in REGEXP audience filter. expression", str3);
                    return null;
                }
                break;
        }
        return null;
    }

    private final Boolean zza(long j, zzga zzgaVar) {
        try {
            return zza(new BigDecimal(j), zzgaVar, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    private final Boolean zza(double d, zzga zzgaVar) {
        try {
            return zza(new BigDecimal(d), zzgaVar, Math.ulp(d));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    private final Boolean zza(String str, zzga zzgaVar) {
        if (!zzfq.zzcu(str)) {
            return null;
        }
        try {
            return zza(new BigDecimal(str), zzgaVar, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    @VisibleForTesting
    private static Boolean zza(BigDecimal bigDecimal, zzga zzgaVar, double d) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        Preconditions.checkNotNull(zzgaVar);
        if (zzgaVar.zzawh == null || zzgaVar.zzawh.intValue() == 0) {
            return null;
        }
        if (zzgaVar.zzawh.intValue() == 4) {
            if (zzgaVar.zzawk == null || zzgaVar.zzawl == null) {
                return null;
            }
        } else if (zzgaVar.zzawj == null) {
            return null;
        }
        int iIntValue = zzgaVar.zzawh.intValue();
        if (zzgaVar.zzawh.intValue() == 4) {
            if (!zzfq.zzcu(zzgaVar.zzawk) || !zzfq.zzcu(zzgaVar.zzawl)) {
                return null;
            }
            try {
                BigDecimal bigDecimal5 = new BigDecimal(zzgaVar.zzawk);
                bigDecimal4 = new BigDecimal(zzgaVar.zzawl);
                bigDecimal3 = bigDecimal5;
                bigDecimal2 = null;
            } catch (NumberFormatException e) {
                return null;
            }
        } else {
            if (!zzfq.zzcu(zzgaVar.zzawj)) {
                return null;
            }
            try {
                bigDecimal2 = new BigDecimal(zzgaVar.zzawj);
                bigDecimal3 = null;
                bigDecimal4 = null;
            } catch (NumberFormatException e2) {
                return null;
            }
        }
        if (iIntValue == 4) {
            if (bigDecimal3 == null) {
                return null;
            }
        } else {
            if (bigDecimal2 != null) {
            }
            return null;
        }
        switch (iIntValue) {
            case 1:
                break;
            case 2:
                break;
            case 3:
                if (d != 0.0d) {
                    if (bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) == 1 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d).multiply(new BigDecimal(2)))) == -1) {
                        z = true;
                    }
                }
                break;
            case 4:
                if (bigDecimal.compareTo(bigDecimal3) != -1 && bigDecimal.compareTo(bigDecimal4) != 1) {
                    z = true;
                }
                break;
        }
        return null;
    }

    private static zzgh[] zzd(Map<Integer, Long> map) {
        if (map == null) {
            return null;
        }
        int i = 0;
        zzgh[] zzghVarArr = new zzgh[map.size()];
        for (Integer num : map.keySet()) {
            zzgh zzghVar = new zzgh();
            zzghVar.zzaxj = num;
            zzghVar.zzaxk = map.get(num);
            zzghVarArr[i] = zzghVar;
            i++;
        }
        return zzghVarArr;
    }

    private static void zza(Map<Integer, Long> map, int i, long j) {
        Long l = map.get(Integer.valueOf(i));
        long j2 = j / 1000;
        if (l == null || j2 > l.longValue()) {
            map.put(Integer.valueOf(i), Long.valueOf(j2));
        }
    }

    private static void zzb(Map<Integer, List<Long>> map, int i, long j) {
        List<Long> arrayList = map.get(Integer.valueOf(i));
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            map.put(Integer.valueOf(i), arrayList);
        }
        arrayList.add(Long.valueOf(j / 1000));
    }
}
