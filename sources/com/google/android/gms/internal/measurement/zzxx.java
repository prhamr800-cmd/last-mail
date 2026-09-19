package com.google.android.gms.internal.measurement;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
class zzxx<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private boolean zzbqj;
    private final int zzccv;
    private List<zzye> zzccw;
    private Map<K, V> zzccx;
    private volatile zzyg zzccy;
    private Map<K, V> zzccz;
    private volatile zzya zzcda;

    static <FieldDescriptorType extends zzvq<FieldDescriptorType>> zzxx<FieldDescriptorType, Object> zzbv(int i) {
        return new zzxy(i);
    }

    private zzxx(int i) {
        this.zzccv = i;
        this.zzccw = Collections.emptyList();
        this.zzccx = Collections.emptyMap();
        this.zzccz = Collections.emptyMap();
    }

    public void zzsw() {
        Map<K, V> mapUnmodifiableMap;
        Map<K, V> mapUnmodifiableMap2;
        if (!this.zzbqj) {
            if (this.zzccx.isEmpty()) {
                mapUnmodifiableMap = Collections.emptyMap();
            } else {
                mapUnmodifiableMap = Collections.unmodifiableMap(this.zzccx);
            }
            this.zzccx = mapUnmodifiableMap;
            if (this.zzccz.isEmpty()) {
                mapUnmodifiableMap2 = Collections.emptyMap();
            } else {
                mapUnmodifiableMap2 = Collections.unmodifiableMap(this.zzccz);
            }
            this.zzccz = mapUnmodifiableMap2;
            this.zzbqj = true;
        }
    }

    public final boolean isImmutable() {
        return this.zzbqj;
    }

    public final int zzyj() {
        return this.zzccw.size();
    }

    public final Map.Entry<K, V> zzbw(int i) {
        return this.zzccw.get(i);
    }

    public final Iterable<Map.Entry<K, V>> zzyk() {
        if (this.zzccx.isEmpty()) {
            return zzyb.zzyp();
        }
        return this.zzccx.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.zzccw.size() + this.zzccx.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return zza(comparable) >= 0 || this.zzccx.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iZza = zza(comparable);
        if (iZza >= 0) {
            return (V) this.zzccw.get(iZza).getValue();
        }
        return this.zzccx.get(comparable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final V put(K k, V v) {
        zzym();
        int iZza = zza(k);
        if (iZza >= 0) {
            return (V) this.zzccw.get(iZza).setValue(v);
        }
        zzym();
        if (this.zzccw.isEmpty() && !(this.zzccw instanceof ArrayList)) {
            this.zzccw = new ArrayList(this.zzccv);
        }
        int i = -(iZza + 1);
        if (i >= this.zzccv) {
            return zzyn().put(k, v);
        }
        if (this.zzccw.size() == this.zzccv) {
            zzye zzyeVarRemove = this.zzccw.remove(this.zzccv - 1);
            zzyn().put((Comparable) zzyeVarRemove.getKey(), zzyeVarRemove.getValue());
        }
        this.zzccw.add(i, new zzye(this, k, v));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        zzym();
        if (!this.zzccw.isEmpty()) {
            this.zzccw.clear();
        }
        if (!this.zzccx.isEmpty()) {
            this.zzccx.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zzym();
        Comparable comparable = (Comparable) obj;
        int iZza = zza(comparable);
        if (iZza >= 0) {
            return zzbx(iZza);
        }
        if (this.zzccx.isEmpty()) {
            return null;
        }
        return this.zzccx.remove(comparable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V zzbx(int i) {
        zzym();
        V v = (V) this.zzccw.remove(i).getValue();
        if (!this.zzccx.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = zzyn().entrySet().iterator();
            this.zzccw.add(new zzye(this, it.next()));
            it.remove();
        }
        return v;
    }

    private final int zza(K k) {
        int size = this.zzccw.size() - 1;
        if (size >= 0) {
            int iCompareTo = k.compareTo((Comparable) this.zzccw.get(size).getKey());
            if (iCompareTo > 0) {
                return -(size + 2);
            }
            if (iCompareTo == 0) {
                return size;
            }
        }
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) / 2;
            int iCompareTo2 = k.compareTo((Comparable) this.zzccw.get(i2).getKey());
            if (iCompareTo2 < 0) {
                size = i2 - 1;
            } else if (iCompareTo2 > 0) {
                i = i2 + 1;
            } else {
                return i2;
            }
        }
        return -(i + 1);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.zzccy == null) {
            this.zzccy = new zzyg(this, null);
        }
        return this.zzccy;
    }

    final Set<Map.Entry<K, V>> zzyl() {
        if (this.zzcda == null) {
            this.zzcda = new zzya(this, null);
        }
        return this.zzcda;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzym() {
        if (this.zzbqj) {
            throw new UnsupportedOperationException();
        }
    }

    private final SortedMap<K, V> zzyn() {
        zzym();
        if (this.zzccx.isEmpty() && !(this.zzccx instanceof TreeMap)) {
            this.zzccx = new TreeMap();
            this.zzccz = ((TreeMap) this.zzccx).descendingMap();
        }
        return (SortedMap) this.zzccx;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzxx)) {
            return super.equals(obj);
        }
        zzxx zzxxVar = (zzxx) obj;
        int size = size();
        if (size != zzxxVar.size()) {
            return false;
        }
        int iZzyj = zzyj();
        if (iZzyj != zzxxVar.zzyj()) {
            return entrySet().equals(zzxxVar.entrySet());
        }
        for (int i = 0; i < iZzyj; i++) {
            if (!zzbw(i).equals(zzxxVar.zzbw(i))) {
                return false;
            }
        }
        if (iZzyj == size) {
            return true;
        }
        return this.zzccx.equals(zzxxVar.zzccx);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int iZzyj = zzyj();
        int iHashCode = 0;
        for (int i = 0; i < iZzyj; i++) {
            iHashCode += this.zzccw.get(i).hashCode();
        }
        if (this.zzccx.size() > 0) {
            return iHashCode + this.zzccx.hashCode();
        }
        return iHashCode;
    }

    /* synthetic */ zzxx(int i, zzxy zzxyVar) {
        this(i);
    }
}
