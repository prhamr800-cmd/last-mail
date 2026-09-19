package com.google.android.gms.internal.measurement;

import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
final class zzup implements Comparator<zzun> {
    zzup() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzun zzunVar, zzun zzunVar2) {
        zzun zzunVar3 = zzunVar;
        zzun zzunVar4 = zzunVar2;
        zzuu zzuuVar = (zzuu) zzunVar3.iterator();
        zzuu zzuuVar2 = (zzuu) zzunVar4.iterator();
        while (zzuuVar.hasNext() && zzuuVar2.hasNext()) {
            int iCompare = Integer.compare(zzun.zza(zzuuVar.nextByte()), zzun.zza(zzuuVar2.nextByte()));
            if (iCompare != 0) {
                return iCompare;
            }
        }
        return Integer.compare(zzunVar3.size(), zzunVar4.size());
    }
}
