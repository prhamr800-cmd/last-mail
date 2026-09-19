package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzya extends zzyg {
    private final /* synthetic */ zzxx zzcdc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzya(zzxx zzxxVar) {
        super(zzxxVar, null);
        this.zzcdc = zzxxVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzyg, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new zzxz(this.zzcdc, null);
    }

    /* synthetic */ zzya(zzxx zzxxVar, zzxy zzxyVar) {
        this(zzxxVar);
    }
}
