package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzwk<K> implements Iterator<Map.Entry<K, Object>> {
    private Iterator<Map.Entry<K, Object>> zzcax;

    public zzwk(Iterator<Map.Entry<K, Object>> it) {
        this.zzcax = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzcax.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.zzcax.remove();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zzcax.next();
        if (next.getValue() instanceof zzwh) {
            return new zzwj(next);
        }
        return next;
    }
}
