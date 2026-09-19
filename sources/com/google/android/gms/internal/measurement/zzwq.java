package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zzwq extends zzwo {
    private static final Class<?> zzcbg = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzwq() {
        super();
    }

    @Override // com.google.android.gms.internal.measurement.zzwo
    final <L> List<L> zza(Object obj, long j) {
        return zza(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.measurement.zzwo
    final void zzb(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) zzys.zzp(obj, j);
        if (list instanceof zzwn) {
            objUnmodifiableList = ((zzwn) list).zzxj();
        } else {
            if (zzcbg.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzxp) && (list instanceof zzwd)) {
                zzwd zzwdVar = (zzwd) list;
                if (zzwdVar.zzug()) {
                    zzwdVar.zzsw();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzys.zza(obj, j, objUnmodifiableList);
    }

    private static <L> List<L> zza(Object obj, long j, int i) {
        Object obj2;
        List<L> arrayList;
        List<L> listZzc = zzc(obj, j);
        if (listZzc.isEmpty()) {
            if (listZzc instanceof zzwn) {
                arrayList = new zzwm(i);
            } else if ((listZzc instanceof zzxp) && (listZzc instanceof zzwd)) {
                arrayList = ((zzwd) listZzc).zzak(i);
            } else {
                arrayList = new ArrayList<>(i);
            }
            zzys.zza(obj, j, arrayList);
            return arrayList;
        }
        if (zzcbg.isAssignableFrom(listZzc.getClass())) {
            ArrayList arrayList2 = new ArrayList(listZzc.size() + i);
            arrayList2.addAll(listZzc);
            zzys.zza(obj, j, arrayList2);
            obj2 = arrayList2;
        } else {
            if (!(listZzc instanceof zzyp)) {
                if ((listZzc instanceof zzxp) && (listZzc instanceof zzwd)) {
                    zzwd zzwdVar = (zzwd) listZzc;
                    if (!zzwdVar.zzug()) {
                        zzwd zzwdVarZzak = zzwdVar.zzak(listZzc.size() + i);
                        zzys.zza(obj, j, zzwdVarZzak);
                        return zzwdVarZzak;
                    }
                    return listZzc;
                }
                return listZzc;
            }
            zzwm zzwmVar = new zzwm(listZzc.size() + i);
            zzwmVar.addAll((zzyp) listZzc);
            zzys.zza(obj, j, zzwmVar);
            obj2 = zzwmVar;
        }
        return (List<L>) obj2;
    }

    @Override // com.google.android.gms.internal.measurement.zzwo
    final <E> void zza(Object obj, Object obj2, long j) {
        List listZzc = zzc(obj2, j);
        List listZza = zza(obj, j, listZzc.size());
        int size = listZza.size();
        int size2 = listZzc.size();
        if (size > 0 && size2 > 0) {
            listZza.addAll(listZzc);
        }
        if (size > 0) {
            listZzc = listZza;
        }
        zzys.zza(obj, j, listZzc);
    }

    private static <E> List<E> zzc(Object obj, long j) {
        return (List) zzys.zzp(obj, j);
    }
}
