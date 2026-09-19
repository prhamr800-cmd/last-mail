package com.google.android.gms.internal.measurement;

import android.support.v4.internal.view.SupportMenu;
import com.google.android.gms.internal.measurement.zzvx;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class zzvk {
    private static volatile zzvk zzbwg;
    private final Map<zza, zzvx.zzd<?, ?>> zzbwi;
    private static volatile boolean zzbwe = false;
    private static final Class<?> zzbwf = zzvx();
    static final zzvk zzbwh = new zzvk(true);

    private static Class<?> zzvx() {
        try {
            return Class.forName("com.google.protobuf.Extension");
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    static final class zza {
        private final int number;
        private final Object object;

        zza(Object obj, int i) {
            this.object = obj;
            this.number = i;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.object) * SupportMenu.USER_MASK) + this.number;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return this.object == zzaVar.object && this.number == zzaVar.number;
        }
    }

    public static zzvk zzvy() {
        return zzvj.zzvv();
    }

    public static zzvk zzvz() {
        zzvk zzvkVarZzvw = zzbwg;
        if (zzvkVarZzvw == null) {
            synchronized (zzvk.class) {
                zzvkVarZzvw = zzbwg;
                if (zzvkVarZzvw == null) {
                    zzvkVarZzvw = zzvj.zzvw();
                    zzbwg = zzvkVarZzvw;
                }
            }
        }
        return zzvkVarZzvw;
    }

    static zzvk zzvw() {
        return zzvv.zzd(zzvk.class);
    }

    public final <ContainingType extends zzxe> zzvx.zzd<ContainingType, ?> zza(ContainingType containingtype, int i) {
        return (zzvx.zzd) this.zzbwi.get(new zza(containingtype, i));
    }

    zzvk() {
        this.zzbwi = new HashMap();
    }

    private zzvk(boolean z) {
        this.zzbwi = Collections.emptyMap();
    }
}
