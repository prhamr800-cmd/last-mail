package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzzl;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzzm<M extends zzzl<M>, T> {
    public final int tag;
    private final int type;
    private final zzvx<?, ?> zzbzk;
    protected final Class<T> zzcfy;
    protected final boolean zzcfz;

    public static <M extends zzzl<M>, T extends zzzr> zzzm<M, T> zza(int i, Class<T> cls, long j) {
        return new zzzm<>(11, cls, 810, false);
    }

    private zzzm(int i, Class<T> cls, int i2, boolean z) {
        this(11, cls, null, 810, false);
    }

    private zzzm(int i, Class<T> cls, zzvx<?, ?> zzvxVar, int i2, boolean z) {
        this.type = i;
        this.zzcfy = cls;
        this.tag = i2;
        this.zzcfz = false;
        this.zzbzk = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzzm)) {
            return false;
        }
        zzzm zzzmVar = (zzzm) obj;
        return this.type == zzzmVar.type && this.zzcfy == zzzmVar.zzcfy && this.tag == zzzmVar.tag && this.zzcfz == zzzmVar.zzcfz;
    }

    public final int hashCode() {
        return ((((((this.type + 1147) * 31) + this.zzcfy.hashCode()) * 31) + this.tag) * 31) + (this.zzcfz ? 1 : 0);
    }

    final T zzah(List<zzzt> list) {
        if (list == null) {
            return null;
        }
        if (this.zzcfz) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                zzzt zzztVar = list.get(i);
                if (zzztVar.zzbvb.length != 0) {
                    arrayList.add(zze(zzzi.zzn(zzztVar.zzbvb)));
                }
            }
            int size = arrayList.size();
            if (size == 0) {
                return null;
            }
            T tCast = this.zzcfy.cast(Array.newInstance(this.zzcfy.getComponentType(), size));
            for (int i2 = 0; i2 < size; i2++) {
                Array.set(tCast, i2, arrayList.get(i2));
            }
            return tCast;
        }
        if (list.isEmpty()) {
            return null;
        }
        return this.zzcfy.cast(zze(zzzi.zzn(list.get(list.size() - 1).zzbvb)));
    }

    private final Object zze(zzzi zzziVar) {
        Class componentType = this.zzcfz ? this.zzcfy.getComponentType() : this.zzcfy;
        try {
            switch (this.type) {
                case 10:
                    zzzr zzzrVar = (zzzr) componentType.newInstance();
                    zzziVar.zza(zzzrVar, this.tag >>> 3);
                    return zzzrVar;
                case 11:
                    zzzr zzzrVar2 = (zzzr) componentType.newInstance();
                    zzziVar.zza(zzzrVar2);
                    return zzzrVar2;
                default:
                    int i = this.type;
                    StringBuilder sb = new StringBuilder(24);
                    sb.append("Unknown type ");
                    sb.append(i);
                    throw new IllegalArgumentException(sb.toString());
            }
        } catch (IOException e) {
            throw new IllegalArgumentException("Error reading extension field", e);
        } catch (IllegalAccessException e2) {
            String strValueOf = String.valueOf(componentType);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf).length() + 33);
            sb2.append("Error creating instance of class ");
            sb2.append(strValueOf);
            throw new IllegalArgumentException(sb2.toString(), e2);
        } catch (InstantiationException e3) {
            String strValueOf2 = String.valueOf(componentType);
            StringBuilder sb3 = new StringBuilder(String.valueOf(strValueOf2).length() + 33);
            sb3.append("Error creating instance of class ");
            sb3.append(strValueOf2);
            throw new IllegalArgumentException(sb3.toString(), e3);
        }
    }

    protected final void zza(Object obj, zzzj zzzjVar) {
        try {
            zzzjVar.zzcc(this.tag);
            switch (this.type) {
                case 10:
                    int i = this.tag >>> 3;
                    ((zzzr) obj).zza(zzzjVar);
                    zzzjVar.zzc(i, 4);
                    return;
                case 11:
                    zzzjVar.zzb((zzzr) obj);
                    return;
                default:
                    int i2 = this.type;
                    StringBuilder sb = new StringBuilder(24);
                    sb.append("Unknown type ");
                    sb.append(i2);
                    throw new IllegalArgumentException(sb.toString());
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    protected final int zzao(Object obj) {
        int i = this.tag >>> 3;
        switch (this.type) {
            case 10:
                return (zzzj.zzbc(i) << 1) + ((zzzr) obj).zzwe();
            case 11:
                return zzzj.zzb(i, (zzzr) obj);
            default:
                int i2 = this.type;
                StringBuilder sb = new StringBuilder(24);
                sb.append("Unknown type ");
                sb.append(i2);
                throw new IllegalArgumentException(sb.toString());
        }
    }
}
