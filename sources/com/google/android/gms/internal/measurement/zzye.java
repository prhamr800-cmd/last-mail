package com.google.android.gms.internal.measurement;

import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: classes2.dex */
final class zzye<K, V> implements Comparable<zzye>, Map.Entry<K, V> {
    private V value;
    private final /* synthetic */ zzxx zzcdc;

    /* JADX INFO: Incorrect field signature: TK; */
    private final Comparable zzcdf;

    zzye(zzxx zzxxVar, Map.Entry<K, V> entry) {
        this(zzxxVar, (Comparable) entry.getKey(), entry.getValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    zzye(zzxx zzxxVar, K k, V v) {
        this.zzcdc = zzxxVar;
        this.zzcdf = k;
        this.value = v;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.value;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.zzcdc.zzym();
        V v2 = this.value;
        this.value = v;
        return v2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return equals(this.zzcdf, entry.getKey()) && equals(this.value, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return (this.zzcdf == null ? 0 : this.zzcdf.hashCode()) ^ (this.value != null ? this.value.hashCode() : 0);
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.zzcdf);
        String strValueOf2 = String.valueOf(this.value);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 1 + String.valueOf(strValueOf2).length());
        sb.append(strValueOf);
        sb.append("=");
        sb.append(strValueOf2);
        return sb.toString();
    }

    private static boolean equals(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.zzcdf;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzye zzyeVar) {
        return ((Comparable) getKey()).compareTo((Comparable) zzyeVar.getKey());
    }
}
