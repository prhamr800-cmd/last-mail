package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class zzwy<K, V> extends LinkedHashMap<K, V> {
    private static final zzwy zzcbp;
    private boolean zzbup;

    private zzwy() {
        this.zzbup = true;
    }

    private zzwy(Map<K, V> map) {
        super(map);
        this.zzbup = true;
    }

    public static <K, V> zzwy<K, V> zzxn() {
        return zzcbp;
    }

    public final void zza(zzwy<K, V> zzwyVar) {
        zzxp();
        if (!zzwyVar.isEmpty()) {
            putAll(zzwyVar);
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        zzxp();
        super.clear();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        zzxp();
        zzvz.checkNotNull(k);
        zzvz.checkNotNull(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        zzxp();
        for (K k : map.keySet()) {
            zzvz.checkNotNull(k);
            zzvz.checkNotNull(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        zzxp();
        return (V) super.remove(obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x005f A[RETURN] */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof java.util.Map
            r1 = 0
            if (r0 == 0) goto L60
            java.util.Map r7 = (java.util.Map) r7
            r0 = 1
            if (r6 == r7) goto L5b
            int r2 = r6.size()
            int r3 = r7.size()
            if (r2 == r3) goto L17
        L15:
            r7 = 0
            goto L5d
        L17:
            java.util.Set r2 = r6.entrySet()
            java.util.Iterator r2 = r2.iterator()
        L1f:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L5b
            java.lang.Object r3 = r2.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r4 = r3.getKey()
            boolean r4 = r7.containsKey(r4)
            if (r4 != 0) goto L36
            goto L15
        L36:
            java.lang.Object r4 = r3.getValue()
            java.lang.Object r3 = r3.getKey()
            java.lang.Object r3 = r7.get(r3)
            boolean r5 = r4 instanceof byte[]
            if (r5 == 0) goto L53
            boolean r5 = r3 instanceof byte[]
            if (r5 == 0) goto L53
            byte[] r4 = (byte[]) r4
            byte[] r3 = (byte[]) r3
            boolean r3 = java.util.Arrays.equals(r4, r3)
            goto L57
        L53:
            boolean r3 = r4.equals(r3)
        L57:
            if (r3 != 0) goto L5a
            goto L15
        L5a:
            goto L1f
        L5b:
            r7 = 1
        L5d:
            if (r7 == 0) goto L60
            return r0
        L60:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzwy.equals(java.lang.Object):boolean");
    }

    private static int zzab(Object obj) {
        if (obj instanceof byte[]) {
            return zzvz.hashCode((byte[]) obj);
        }
        if (obj instanceof zzwa) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int iZzab = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            iZzab += zzab(entry.getValue()) ^ zzab(entry.getKey());
        }
        return iZzab;
    }

    public final zzwy<K, V> zzxo() {
        return isEmpty() ? new zzwy<>() : new zzwy<>(this);
    }

    public final void zzsw() {
        this.zzbup = false;
    }

    public final boolean isMutable() {
        return this.zzbup;
    }

    private final void zzxp() {
        if (!this.zzbup) {
            throw new UnsupportedOperationException();
        }
    }

    static {
        zzwy zzwyVar = new zzwy();
        zzcbp = zzwyVar;
        zzwyVar.zzbup = false;
    }
}
