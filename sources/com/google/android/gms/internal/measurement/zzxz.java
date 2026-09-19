package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: classes2.dex */
final class zzxz<K, V> implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private Iterator<Map.Entry<K, V>> zzcdb;
    private final /* synthetic */ zzxx zzcdc;

    private zzxz(zzxx zzxxVar) {
        this.zzcdc = zzxxVar;
        this.pos = this.zzcdc.zzccw.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return (this.pos > 0 && this.pos <= this.zzcdc.zzccw.size()) || zzyo().hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    private final Iterator<Map.Entry<K, V>> zzyo() {
        if (this.zzcdb == null) {
            this.zzcdb = this.zzcdc.zzccz.entrySet().iterator();
        }
        return this.zzcdb;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        if (zzyo().hasNext()) {
            return zzyo().next();
        }
        List list = this.zzcdc.zzccw;
        int i = this.pos - 1;
        this.pos = i;
        return (Map.Entry) list.get(i);
    }

    /* synthetic */ zzxz(zzxx zzxxVar, zzxy zzxyVar) {
        this(zzxxVar);
    }
}
