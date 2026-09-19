package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: classes2.dex */
final class zzyf<K, V> implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private Iterator<Map.Entry<K, V>> zzcdb;
    private final /* synthetic */ zzxx zzcdc;
    private boolean zzcdg;

    private zzyf(zzxx zzxxVar) {
        this.zzcdc = zzxxVar;
        this.pos = -1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.pos + 1 < this.zzcdc.zzccw.size() || (!this.zzcdc.zzccx.isEmpty() && zzyo().hasNext());
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.zzcdg) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzcdg = false;
        this.zzcdc.zzym();
        if (this.pos < this.zzcdc.zzccw.size()) {
            zzxx zzxxVar = this.zzcdc;
            int i = this.pos;
            this.pos = i - 1;
            zzxxVar.zzbx(i);
            return;
        }
        zzyo().remove();
    }

    private final Iterator<Map.Entry<K, V>> zzyo() {
        if (this.zzcdb == null) {
            this.zzcdb = this.zzcdc.zzccx.entrySet().iterator();
        }
        return this.zzcdb;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.zzcdg = true;
        int i = this.pos + 1;
        this.pos = i;
        if (i >= this.zzcdc.zzccw.size()) {
            return zzyo().next();
        }
        return (Map.Entry) this.zzcdc.zzccw.get(this.pos);
    }

    /* synthetic */ zzyf(zzxx zzxxVar, zzxy zzxyVar) {
        this(zzxxVar);
    }
}
