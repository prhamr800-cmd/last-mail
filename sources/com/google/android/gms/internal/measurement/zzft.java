package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvx;

/* JADX INFO: loaded from: classes2.dex */
public final class zzft {

    public static final class zza extends zzvx<zza, C0019zza> implements zzxg {
        private static final zza zzavj = new zza();
        private static volatile zzxo<zza> zznw;
        private String zzavh = "";
        private long zzavi;
        private int zznr;

        private zza() {
        }

        /* JADX INFO: renamed from: com.google.android.gms.internal.measurement.zzft$zza$zza, reason: collision with other inner class name */
        public static final class C0019zza extends zzvx.zza<zza, C0019zza> implements zzxg {
            private C0019zza() {
                super(zza.zzavj);
            }

            public final C0019zza zzdc(String str) {
                zzwr();
                ((zza) this.zzbzl).setName(str);
                return this;
            }

            public final C0019zza zzar(long j) {
                zzwr();
                ((zza) this.zzbzl).zzaq(j);
                return this;
            }

            /* synthetic */ C0019zza(zzfu zzfuVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void setName(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zznr |= 1;
            this.zzavh = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzaq(long j) {
            this.zznr |= 2;
            this.zzavi = j;
        }

        public static C0019zza zzmn() {
            return (C0019zza) ((zzvx.zza) zzavj.zza(zzvx.zze.zzbzs, (Object) null, (Object) null));
        }

        @Override // com.google.android.gms.internal.measurement.zzvx
        protected final Object zza(int i, Object obj, Object obj2) {
            zzfu zzfuVar = null;
            switch (zzfu.zznq[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0019zza(zzfuVar);
                case 3:
                    return zza(zzavj, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\b\u0000\u0002\u0002\u0001", new Object[]{"zznr", "zzavh", "zzavi"});
                case 4:
                    return zzavj;
                case 5:
                    zzxo<zza> zzbVar = zznw;
                    if (zzbVar == null) {
                        synchronized (zza.class) {
                            zzbVar = zznw;
                            if (zzbVar == null) {
                                zzbVar = new zzvx.zzb<>(zzavj);
                                zznw = zzbVar;
                            }
                            break;
                        }
                    }
                    return zzbVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            zzvx.zza((Class<zza>) zza.class, zzavj);
        }
    }

    public static final class zzb extends zzvx<zzb, zza> implements zzxg {
        private static final zzb zzavm = new zzb();
        private static volatile zzxo<zzb> zznw;
        private int zzavk = 1;
        private zzwd<zza> zzavl = zzwn();
        private int zznr;

        /* JADX INFO: renamed from: com.google.android.gms.internal.measurement.zzft$zzb$zzb, reason: collision with other inner class name */
        public enum EnumC0020zzb implements zzwa {
            RADS(1),
            PROVISIONING(2);

            private static final zzwb<EnumC0020zzb> zzoa = new zzfv();
            private final int value;

            @Override // com.google.android.gms.internal.measurement.zzwa
            public final int zzc() {
                return this.value;
            }

            public static EnumC0020zzb zzs(int i) {
                switch (i) {
                    case 1:
                        return RADS;
                    case 2:
                        return PROVISIONING;
                    default:
                        return null;
                }
            }

            public static zzwc zzd() {
                return zzfw.zzoc;
            }

            EnumC0020zzb(int i) {
                this.value = i;
            }
        }

        private zzb() {
        }

        public static final class zza extends zzvx.zza<zzb, zza> implements zzxg {
            private zza() {
                super(zzb.zzavm);
            }

            public final zza zzb(zza zzaVar) {
                zzwr();
                ((zzb) this.zzbzl).zza(zzaVar);
                return this;
            }

            /* synthetic */ zza(zzfu zzfuVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zza zzaVar) {
            if (zzaVar == null) {
                throw new NullPointerException();
            }
            if (!this.zzavl.zzug()) {
                zzwd<zza> zzwdVar = this.zzavl;
                int size = zzwdVar.size();
                this.zzavl = zzwdVar.zzak(size == 0 ? 10 : size << 1);
            }
            this.zzavl.add(zzaVar);
        }

        public static zza zzmp() {
            return (zza) ((zzvx.zza) zzavm.zza(zzvx.zze.zzbzs, (Object) null, (Object) null));
        }

        @Override // com.google.android.gms.internal.measurement.zzvx
        protected final Object zza(int i, Object obj, Object obj2) {
            zzfu zzfuVar = null;
            switch (zzfu.zznq[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(zzfuVar);
                case 3:
                    return zza(zzavm, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\f\u0000\u0002\u001b", new Object[]{"zznr", "zzavk", EnumC0020zzb.zzd(), "zzavl", zza.class});
                case 4:
                    return zzavm;
                case 5:
                    zzxo<zzb> zzbVar = zznw;
                    if (zzbVar == null) {
                        synchronized (zzb.class) {
                            zzbVar = zznw;
                            if (zzbVar == null) {
                                zzbVar = new zzvx.zzb<>(zzavm);
                                zznw = zzbVar;
                            }
                            break;
                        }
                    }
                    return zzbVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public static zzxo<zzb> zza() {
            return (zzxo) zzavm.zza(zzvx.zze.zzbzu, (Object) null, (Object) null);
        }

        static {
            zzvx.zza((Class<zzb>) zzb.class, zzavm);
        }
    }
}
