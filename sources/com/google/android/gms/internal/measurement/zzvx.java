package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvx;
import com.google.android.gms.internal.measurement.zzvx.zza;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzvx<MessageType extends zzvx<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzug<MessageType, BuilderType> {
    private static Map<Object, zzvx<?, ?>> zzbzj = new ConcurrentHashMap();
    protected zzyn zzbzh = zzyn.zzys();
    private int zzbzi = -1;

    public static abstract class zzc<MessageType extends zzc<MessageType, BuilderType>, BuilderType> extends zzvx<MessageType, BuilderType> implements zzxg {
        protected zzvo<Object> zzbzn = zzvo.zzwd();
    }

    public static class zzd<ContainingType extends zzxe, Type> extends zzvi<ContainingType, Type> {
    }

    public enum zze {
        public static final int zzbzo = 1;
        public static final int zzbzp = 2;
        public static final int zzbzq = 3;
        public static final int zzbzr = 4;
        public static final int zzbzs = 5;
        public static final int zzbzt = 6;
        public static final int zzbzu = 7;
        private static final /* synthetic */ int[] zzbzv = {zzbzo, zzbzp, zzbzq, zzbzr, zzbzs, zzbzt, zzbzu};
        public static final int zzbzw = 1;
        public static final int zzbzx = 2;
        private static final /* synthetic */ int[] zzbzy = {zzbzw, zzbzx};
        public static final int zzbzz = 1;
        public static final int zzcaa = 2;
        private static final /* synthetic */ int[] zzcab = {zzbzz, zzcaa};

        public static int[] zzww() {
            return (int[]) zzbzv.clone();
        }
    }

    protected abstract Object zza(int i, Object obj, Object obj2);

    public static class zzb<T extends zzvx<T, ?>> extends zzui<T> {
        private final T zzbzk;

        public zzb(T t) {
            this.zzbzk = t;
        }

        @Override // com.google.android.gms.internal.measurement.zzxo
        public final /* synthetic */ Object zza(zzuz zzuzVar, zzvk zzvkVar) throws zzwe {
            return zzvx.zza(this.zzbzk, zzuzVar, zzvkVar);
        }
    }

    public String toString() {
        return zzxh.zza(this, super.toString());
    }

    public int hashCode() {
        if (this.zzbum != 0) {
            return this.zzbum;
        }
        this.zzbum = zzxq.zzya().zzak(this).hashCode(this);
        return this.zzbum;
    }

    public static abstract class zza<MessageType extends zzvx<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzuh<MessageType, BuilderType> {
        private final MessageType zzbzk;
        protected MessageType zzbzl;
        private boolean zzbzm = false;

        protected zza(MessageType messagetype) {
            this.zzbzk = messagetype;
            this.zzbzl = (MessageType) messagetype.zza(zze.zzbzr, null, null);
        }

        protected final void zzwr() {
            if (this.zzbzm) {
                MessageType messagetype = (MessageType) this.zzbzl.zza(zze.zzbzr, null, null);
                zza(messagetype, this.zzbzl);
                this.zzbzl = messagetype;
                this.zzbzm = false;
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzxg
        public final boolean isInitialized() {
            return zzvx.zza(this.zzbzl, false);
        }

        @Override // com.google.android.gms.internal.measurement.zzxf
        /* JADX INFO: renamed from: zzws, reason: merged with bridge method [inline-methods] */
        public MessageType zzwu() {
            if (this.zzbzm) {
                return this.zzbzl;
            }
            MessageType messagetype = this.zzbzl;
            zzxq.zzya().zzak(messagetype).zzy(messagetype);
            this.zzbzm = true;
            return this.zzbzl;
        }

        @Override // com.google.android.gms.internal.measurement.zzxf
        /* JADX INFO: renamed from: zzwt, reason: merged with bridge method [inline-methods] */
        public final MessageType zzwv() {
            MessageType messagetype = (MessageType) zzwu();
            boolean zBooleanValue = Boolean.TRUE.booleanValue();
            byte bByteValue = ((Byte) messagetype.zza(zze.zzbzo, null, null)).byteValue();
            boolean zZzaj = true;
            if (bByteValue != 1) {
                if (bByteValue == 0) {
                    zZzaj = false;
                } else {
                    zZzaj = zzxq.zzya().zzak(messagetype).zzaj(messagetype);
                    if (zBooleanValue) {
                        messagetype.zza(zze.zzbzp, zZzaj ? messagetype : null, null);
                    }
                }
            }
            if (!zZzaj) {
                throw new zzyl(messagetype);
            }
            return messagetype;
        }

        @Override // com.google.android.gms.internal.measurement.zzuh
        public final BuilderType zza(MessageType messagetype) {
            zzwr();
            zza(this.zzbzl, messagetype);
            return this;
        }

        private static void zza(MessageType messagetype, MessageType messagetype2) {
            zzxq.zzya().zzak(messagetype).zzd(messagetype, messagetype2);
        }

        @Override // com.google.android.gms.internal.measurement.zzuh
        /* JADX INFO: renamed from: zzuf */
        public final /* synthetic */ zzuh clone() {
            return (zza) clone();
        }

        @Override // com.google.android.gms.internal.measurement.zzxg
        public final /* synthetic */ zzxe zzwq() {
            return this.zzbzk;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.measurement.zzuh
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zza zzaVar = (zza) this.zzbzk.zza(zze.zzbzs, null, null);
            zzaVar.zza((zzvx) zzwu());
            return zzaVar;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!((zzvx) zza(zze.zzbzt, (Object) null, (Object) null)).getClass().isInstance(obj)) {
            return false;
        }
        return zzxq.zzya().zzak(this).equals(this, (zzvx) obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzxg
    public final boolean isInitialized() {
        boolean zBooleanValue = Boolean.TRUE.booleanValue();
        byte bByteValue = ((Byte) zza(zze.zzbzo, (Object) null, (Object) null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zZzaj = zzxq.zzya().zzak(this).zzaj(this);
        if (zBooleanValue) {
            zza(zze.zzbzp, zZzaj ? this : null, (Object) null);
        }
        return zZzaj;
    }

    public final BuilderType zzwm() {
        BuilderType buildertype = (BuilderType) zza(zze.zzbzs, (Object) null, (Object) null);
        buildertype.zza(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.measurement.zzug
    final int zzue() {
        return this.zzbzi;
    }

    @Override // com.google.android.gms.internal.measurement.zzug
    final void zzah(int i) {
        this.zzbzi = i;
    }

    @Override // com.google.android.gms.internal.measurement.zzxe
    public final void zzb(zzve zzveVar) throws IOException {
        zzxq.zzya().zzi(getClass()).zza(this, zzvg.zza(zzveVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzxe
    public final int zzwe() {
        if (this.zzbzi == -1) {
            this.zzbzi = zzxq.zzya().zzak(this).zzai(this);
        }
        return this.zzbzi;
    }

    static <T extends zzvx<?, ?>> T zzg(Class<T> cls) {
        zzvx<?, ?> zzvxVar = zzbzj.get(cls);
        if (zzvxVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzvxVar = zzbzj.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzvxVar == null) {
            zzvxVar = (T) ((zzvx) zzys.zzk(cls)).zza(zze.zzbzt, (Object) null, (Object) null);
            if (zzvxVar == null) {
                throw new IllegalStateException();
            }
            zzbzj.put(cls, zzvxVar);
        }
        return (T) zzvxVar;
    }

    protected static <T extends zzvx<?, ?>> void zza(Class<T> cls, T t) {
        zzbzj.put(cls, t);
    }

    protected static Object zza(zzxe zzxeVar, String str, Object[] objArr) {
        return new zzxs(zzxeVar, str, objArr);
    }

    static Object zza(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    protected static final <T extends zzvx<T, ?>> boolean zza(T t, boolean z) {
        byte bByteValue = ((Byte) t.zza(zze.zzbzo, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        return zzxq.zzya().zzak(t).zzaj(t);
    }

    protected static <E> zzwd<E> zzwn() {
        return zzxr.zzyb();
    }

    static <T extends zzvx<T, ?>> T zza(T t, zzuz zzuzVar, zzvk zzvkVar) throws zzwe {
        T t2 = (T) t.zza(zze.zzbzr, null, null);
        try {
            zzxq.zzya().zzak(t2).zza(t2, zzvc.zza(zzuzVar), zzvkVar);
            zzxq.zzya().zzak(t2).zzy(t2);
            return t2;
        } catch (IOException e) {
            if (e.getCause() instanceof zzwe) {
                throw ((zzwe) e.getCause());
            }
            throw new zzwe(e.getMessage()).zzg(t2);
        } catch (RuntimeException e2) {
            if (e2.getCause() instanceof zzwe) {
                throw ((zzwe) e2.getCause());
            }
            throw e2;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxe
    public final /* synthetic */ zzxf zzwo() {
        zza zzaVar = (zza) zza(zze.zzbzs, (Object) null, (Object) null);
        zzaVar.zza(this);
        return zzaVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzxe
    public final /* synthetic */ zzxf zzwp() {
        return (zza) zza(zze.zzbzs, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.measurement.zzxg
    public final /* synthetic */ zzxe zzwq() {
        return (zzvx) zza(zze.zzbzt, (Object) null, (Object) null);
    }
}
