package com.google.android.gms.internal.measurement;

import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes2.dex */
final class zzxq {
    private static final zzxq zzccn = new zzxq();
    private final zzxv zzcco;
    private final ConcurrentMap<Class<?>, zzxu<?>> zzccp = new ConcurrentHashMap();

    public static zzxq zzya() {
        return zzccn;
    }

    public final <T> zzxu<T> zzi(Class<T> cls) {
        zzvz.zza(cls, "messageType");
        zzxu<T> zzxuVar = (zzxu) this.zzccp.get(cls);
        if (zzxuVar != null) {
            return zzxuVar;
        }
        zzxu<T> zzxuVarZzh = this.zzcco.zzh(cls);
        zzvz.zza(cls, "messageType");
        zzvz.zza(zzxuVarZzh, Parameters.SCHEMA);
        zzxu<T> zzxuVar2 = (zzxu) this.zzccp.putIfAbsent(cls, zzxuVarZzh);
        return zzxuVar2 != null ? zzxuVar2 : zzxuVarZzh;
    }

    public final <T> zzxu<T> zzak(T t) {
        return zzi(t.getClass());
    }

    private zzxq() {
        String[] strArr = {"com.google.protobuf.AndroidProto3SchemaFactory"};
        zzxv zzxvVarZzgi = null;
        for (int i = 0; i <= 0; i++) {
            zzxvVarZzgi = zzgi(strArr[0]);
            if (zzxvVarZzgi != null) {
                break;
            }
        }
        this.zzcco = zzxvVarZzgi == null ? new zzwt() : zzxvVarZzgi;
    }

    private static zzxv zzgi(String str) {
        try {
            return (zzxv) Class.forName(str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable th) {
            return null;
        }
    }
}
