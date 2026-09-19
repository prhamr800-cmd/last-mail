package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zzvc implements zzxt {
    private int tag;
    private final zzuz zzbvm;
    private int zzbvn;
    private int zzbvo = 0;

    public static zzvc zza(zzuz zzuzVar) {
        return zzuzVar.zzbvf != null ? zzuzVar.zzbvf : new zzvc(zzuzVar);
    }

    private zzvc(zzuz zzuzVar) {
        this.zzbvm = (zzuz) zzvz.zza(zzuzVar, "input");
        this.zzbvm.zzbvf = this;
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final int zzvo() throws IOException {
        if (this.zzbvo != 0) {
            this.tag = this.zzbvo;
            this.zzbvo = 0;
        } else {
            this.tag = this.zzbvm.zzuq();
        }
        if (this.tag == 0 || this.tag == this.zzbvn) {
            return Integer.MAX_VALUE;
        }
        return this.tag >>> 3;
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final int getTag() {
        return this.tag;
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final boolean zzvp() throws IOException {
        if (this.zzbvm.zzvg() || this.tag == this.zzbvn) {
            return false;
        }
        return this.zzbvm.zzap(this.tag);
    }

    private final void zzau(int i) throws IOException {
        if ((this.tag & 7) != i) {
            throw zzwe.zzxb();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final double readDouble() throws IOException {
        zzau(1);
        return this.zzbvm.readDouble();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final float readFloat() throws IOException {
        zzau(5);
        return this.zzbvm.readFloat();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final long zzur() throws IOException {
        zzau(0);
        return this.zzbvm.zzur();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final long zzus() throws IOException {
        zzau(0);
        return this.zzbvm.zzus();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final int zzut() throws IOException {
        zzau(0);
        return this.zzbvm.zzut();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final long zzuu() throws IOException {
        zzau(1);
        return this.zzbvm.zzuu();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final int zzuv() throws IOException {
        zzau(5);
        return this.zzbvm.zzuv();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final boolean zzuw() throws IOException {
        zzau(0);
        return this.zzbvm.zzuw();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final String readString() throws IOException {
        zzau(2);
        return this.zzbvm.readString();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final String zzux() throws IOException {
        zzau(2);
        return this.zzbvm.zzux();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final <T> T zza(zzxu<T> zzxuVar, zzvk zzvkVar) throws IOException {
        zzau(2);
        return (T) zzc(zzxuVar, zzvkVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final <T> T zzb(zzxu<T> zzxuVar, zzvk zzvkVar) throws IOException {
        zzau(3);
        return (T) zzd(zzxuVar, zzvkVar);
    }

    private final <T> T zzc(zzxu<T> zzxuVar, zzvk zzvkVar) throws IOException {
        int iZzuz = this.zzbvm.zzuz();
        if (this.zzbvm.zzbvc >= this.zzbvm.zzbvd) {
            throw zzwe.zzxc();
        }
        int iZzar = this.zzbvm.zzar(iZzuz);
        T tNewInstance = zzxuVar.newInstance();
        this.zzbvm.zzbvc++;
        zzxuVar.zza(tNewInstance, this, zzvkVar);
        zzxuVar.zzy(tNewInstance);
        this.zzbvm.zzao(0);
        zzuz zzuzVar = this.zzbvm;
        zzuzVar.zzbvc--;
        this.zzbvm.zzas(iZzar);
        return tNewInstance;
    }

    private final <T> T zzd(zzxu<T> zzxuVar, zzvk zzvkVar) throws IOException {
        int i = this.zzbvn;
        this.zzbvn = ((this.tag >>> 3) << 3) | 4;
        try {
            T tNewInstance = zzxuVar.newInstance();
            zzxuVar.zza(tNewInstance, this, zzvkVar);
            zzxuVar.zzy(tNewInstance);
            if (this.tag != this.zzbvn) {
                throw zzwe.zzxd();
            }
            return tNewInstance;
        } finally {
            this.zzbvn = i;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final zzun zzuy() throws IOException {
        zzau(2);
        return this.zzbvm.zzuy();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final int zzuz() throws IOException {
        zzau(0);
        return this.zzbvm.zzuz();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final int zzva() throws IOException {
        zzau(0);
        return this.zzbvm.zzva();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final int zzvb() throws IOException {
        zzau(5);
        return this.zzbvm.zzvb();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final long zzvc() throws IOException {
        zzau(1);
        return this.zzbvm.zzvc();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final int zzvd() throws IOException {
        zzau(0);
        return this.zzbvm.zzvd();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final long zzve() throws IOException {
        zzau(0);
        return this.zzbvm.zzve();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzh(List<Double> list) throws IOException {
        int iZzuq;
        int iZzuq2;
        if (list instanceof zzvh) {
            zzvh zzvhVar = (zzvh) list;
            switch (this.tag & 7) {
                case 1:
                    break;
                case 2:
                    int iZzuz = this.zzbvm.zzuz();
                    zzav(iZzuz);
                    int iZzvh = this.zzbvm.zzvh() + iZzuz;
                    do {
                        zzvhVar.zzd(this.zzbvm.readDouble());
                    } while (this.zzbvm.zzvh() < iZzvh);
                    return;
                default:
                    throw zzwe.zzxb();
            }
            do {
                zzvhVar.zzd(this.zzbvm.readDouble());
                if (this.zzbvm.zzvg()) {
                    return;
                } else {
                    iZzuq2 = this.zzbvm.zzuq();
                }
            } while (iZzuq2 == this.tag);
            this.zzbvo = iZzuq2;
            return;
        }
        switch (this.tag & 7) {
            case 1:
                break;
            case 2:
                int iZzuz2 = this.zzbvm.zzuz();
                zzav(iZzuz2);
                int iZzvh2 = this.zzbvm.zzvh() + iZzuz2;
                do {
                    list.add(Double.valueOf(this.zzbvm.readDouble()));
                } while (this.zzbvm.zzvh() < iZzvh2);
                return;
            default:
                throw zzwe.zzxb();
        }
        do {
            list.add(Double.valueOf(this.zzbvm.readDouble()));
            if (this.zzbvm.zzvg()) {
                return;
            } else {
                iZzuq = this.zzbvm.zzuq();
            }
        } while (iZzuq == this.tag);
        this.zzbvo = iZzuq;
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzi(List<Float> list) throws IOException {
        int iZzuq;
        int iZzuq2;
        if (list instanceof zzvu) {
            zzvu zzvuVar = (zzvu) list;
            int i = this.tag & 7;
            if (i == 2) {
                int iZzuz = this.zzbvm.zzuz();
                zzaw(iZzuz);
                int iZzvh = this.zzbvm.zzvh() + iZzuz;
                do {
                    zzvuVar.zzc(this.zzbvm.readFloat());
                } while (this.zzbvm.zzvh() < iZzvh);
                return;
            }
            if (i == 5) {
                do {
                    zzvuVar.zzc(this.zzbvm.readFloat());
                    if (this.zzbvm.zzvg()) {
                        return;
                    } else {
                        iZzuq2 = this.zzbvm.zzuq();
                    }
                } while (iZzuq2 == this.tag);
                this.zzbvo = iZzuq2;
                return;
            }
            throw zzwe.zzxb();
        }
        int i2 = this.tag & 7;
        if (i2 == 2) {
            int iZzuz2 = this.zzbvm.zzuz();
            zzaw(iZzuz2);
            int iZzvh2 = this.zzbvm.zzvh() + iZzuz2;
            do {
                list.add(Float.valueOf(this.zzbvm.readFloat()));
            } while (this.zzbvm.zzvh() < iZzvh2);
            return;
        }
        if (i2 == 5) {
            do {
                list.add(Float.valueOf(this.zzbvm.readFloat()));
                if (this.zzbvm.zzvg()) {
                    return;
                } else {
                    iZzuq = this.zzbvm.zzuq();
                }
            } while (iZzuq == this.tag);
            this.zzbvo = iZzuq;
            return;
        }
        throw zzwe.zzxb();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzj(List<Long> list) throws IOException {
        int iZzuq;
        int iZzuq2;
        if (list instanceof zzws) {
            zzws zzwsVar = (zzws) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzwsVar.zzbj(this.zzbvm.zzur());
                    if (this.zzbvm.zzvg()) {
                        return;
                    } else {
                        iZzuq2 = this.zzbvm.zzuq();
                    }
                } while (iZzuq2 == this.tag);
                this.zzbvo = iZzuq2;
                return;
            }
            if (i == 2) {
                int iZzvh = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    zzwsVar.zzbj(this.zzbvm.zzur());
                } while (this.zzbvm.zzvh() < iZzvh);
                zzax(iZzvh);
                return;
            }
            throw zzwe.zzxb();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Long.valueOf(this.zzbvm.zzur()));
                if (this.zzbvm.zzvg()) {
                    return;
                } else {
                    iZzuq = this.zzbvm.zzuq();
                }
            } while (iZzuq == this.tag);
            this.zzbvo = iZzuq;
            return;
        }
        if (i2 == 2) {
            int iZzvh2 = this.zzbvm.zzvh() + this.zzbvm.zzuz();
            do {
                list.add(Long.valueOf(this.zzbvm.zzur()));
            } while (this.zzbvm.zzvh() < iZzvh2);
            zzax(iZzvh2);
            return;
        }
        throw zzwe.zzxb();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzk(List<Long> list) throws IOException {
        int iZzuq;
        int iZzuq2;
        if (list instanceof zzws) {
            zzws zzwsVar = (zzws) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzwsVar.zzbj(this.zzbvm.zzus());
                    if (this.zzbvm.zzvg()) {
                        return;
                    } else {
                        iZzuq2 = this.zzbvm.zzuq();
                    }
                } while (iZzuq2 == this.tag);
                this.zzbvo = iZzuq2;
                return;
            }
            if (i == 2) {
                int iZzvh = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    zzwsVar.zzbj(this.zzbvm.zzus());
                } while (this.zzbvm.zzvh() < iZzvh);
                zzax(iZzvh);
                return;
            }
            throw zzwe.zzxb();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Long.valueOf(this.zzbvm.zzus()));
                if (this.zzbvm.zzvg()) {
                    return;
                } else {
                    iZzuq = this.zzbvm.zzuq();
                }
            } while (iZzuq == this.tag);
            this.zzbvo = iZzuq;
            return;
        }
        if (i2 == 2) {
            int iZzvh2 = this.zzbvm.zzvh() + this.zzbvm.zzuz();
            do {
                list.add(Long.valueOf(this.zzbvm.zzus()));
            } while (this.zzbvm.zzvh() < iZzvh2);
            zzax(iZzvh2);
            return;
        }
        throw zzwe.zzxb();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzl(List<Integer> list) throws IOException {
        int iZzuq;
        int iZzuq2;
        if (list instanceof zzvy) {
            zzvy zzvyVar = (zzvy) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzvyVar.zzbn(this.zzbvm.zzut());
                    if (this.zzbvm.zzvg()) {
                        return;
                    } else {
                        iZzuq2 = this.zzbvm.zzuq();
                    }
                } while (iZzuq2 == this.tag);
                this.zzbvo = iZzuq2;
                return;
            }
            if (i == 2) {
                int iZzvh = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    zzvyVar.zzbn(this.zzbvm.zzut());
                } while (this.zzbvm.zzvh() < iZzvh);
                zzax(iZzvh);
                return;
            }
            throw zzwe.zzxb();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Integer.valueOf(this.zzbvm.zzut()));
                if (this.zzbvm.zzvg()) {
                    return;
                } else {
                    iZzuq = this.zzbvm.zzuq();
                }
            } while (iZzuq == this.tag);
            this.zzbvo = iZzuq;
            return;
        }
        if (i2 == 2) {
            int iZzvh2 = this.zzbvm.zzvh() + this.zzbvm.zzuz();
            do {
                list.add(Integer.valueOf(this.zzbvm.zzut()));
            } while (this.zzbvm.zzvh() < iZzvh2);
            zzax(iZzvh2);
            return;
        }
        throw zzwe.zzxb();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzm(List<Long> list) throws IOException {
        int iZzuq;
        int iZzuq2;
        if (list instanceof zzws) {
            zzws zzwsVar = (zzws) list;
            switch (this.tag & 7) {
                case 1:
                    break;
                case 2:
                    int iZzuz = this.zzbvm.zzuz();
                    zzav(iZzuz);
                    int iZzvh = this.zzbvm.zzvh() + iZzuz;
                    do {
                        zzwsVar.zzbj(this.zzbvm.zzuu());
                    } while (this.zzbvm.zzvh() < iZzvh);
                    return;
                default:
                    throw zzwe.zzxb();
            }
            do {
                zzwsVar.zzbj(this.zzbvm.zzuu());
                if (this.zzbvm.zzvg()) {
                    return;
                } else {
                    iZzuq2 = this.zzbvm.zzuq();
                }
            } while (iZzuq2 == this.tag);
            this.zzbvo = iZzuq2;
            return;
        }
        switch (this.tag & 7) {
            case 1:
                break;
            case 2:
                int iZzuz2 = this.zzbvm.zzuz();
                zzav(iZzuz2);
                int iZzvh2 = this.zzbvm.zzvh() + iZzuz2;
                do {
                    list.add(Long.valueOf(this.zzbvm.zzuu()));
                } while (this.zzbvm.zzvh() < iZzvh2);
                return;
            default:
                throw zzwe.zzxb();
        }
        do {
            list.add(Long.valueOf(this.zzbvm.zzuu()));
            if (this.zzbvm.zzvg()) {
                return;
            } else {
                iZzuq = this.zzbvm.zzuq();
            }
        } while (iZzuq == this.tag);
        this.zzbvo = iZzuq;
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzn(List<Integer> list) throws IOException {
        int iZzuq;
        int iZzuq2;
        if (list instanceof zzvy) {
            zzvy zzvyVar = (zzvy) list;
            int i = this.tag & 7;
            if (i == 2) {
                int iZzuz = this.zzbvm.zzuz();
                zzaw(iZzuz);
                int iZzvh = this.zzbvm.zzvh() + iZzuz;
                do {
                    zzvyVar.zzbn(this.zzbvm.zzuv());
                } while (this.zzbvm.zzvh() < iZzvh);
                return;
            }
            if (i == 5) {
                do {
                    zzvyVar.zzbn(this.zzbvm.zzuv());
                    if (this.zzbvm.zzvg()) {
                        return;
                    } else {
                        iZzuq2 = this.zzbvm.zzuq();
                    }
                } while (iZzuq2 == this.tag);
                this.zzbvo = iZzuq2;
                return;
            }
            throw zzwe.zzxb();
        }
        int i2 = this.tag & 7;
        if (i2 == 2) {
            int iZzuz2 = this.zzbvm.zzuz();
            zzaw(iZzuz2);
            int iZzvh2 = this.zzbvm.zzvh() + iZzuz2;
            do {
                list.add(Integer.valueOf(this.zzbvm.zzuv()));
            } while (this.zzbvm.zzvh() < iZzvh2);
            return;
        }
        if (i2 == 5) {
            do {
                list.add(Integer.valueOf(this.zzbvm.zzuv()));
                if (this.zzbvm.zzvg()) {
                    return;
                } else {
                    iZzuq = this.zzbvm.zzuq();
                }
            } while (iZzuq == this.tag);
            this.zzbvo = iZzuq;
            return;
        }
        throw zzwe.zzxb();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzo(List<Boolean> list) throws IOException {
        int iZzuq;
        int iZzuq2;
        if (list instanceof zzul) {
            zzul zzulVar = (zzul) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzulVar.addBoolean(this.zzbvm.zzuw());
                    if (this.zzbvm.zzvg()) {
                        return;
                    } else {
                        iZzuq2 = this.zzbvm.zzuq();
                    }
                } while (iZzuq2 == this.tag);
                this.zzbvo = iZzuq2;
                return;
            }
            if (i == 2) {
                int iZzvh = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    zzulVar.addBoolean(this.zzbvm.zzuw());
                } while (this.zzbvm.zzvh() < iZzvh);
                zzax(iZzvh);
                return;
            }
            throw zzwe.zzxb();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Boolean.valueOf(this.zzbvm.zzuw()));
                if (this.zzbvm.zzvg()) {
                    return;
                } else {
                    iZzuq = this.zzbvm.zzuq();
                }
            } while (iZzuq == this.tag);
            this.zzbvo = iZzuq;
            return;
        }
        if (i2 == 2) {
            int iZzvh2 = this.zzbvm.zzvh() + this.zzbvm.zzuz();
            do {
                list.add(Boolean.valueOf(this.zzbvm.zzuw()));
            } while (this.zzbvm.zzvh() < iZzvh2);
            zzax(iZzvh2);
            return;
        }
        throw zzwe.zzxb();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void readStringList(List<String> list) throws IOException {
        zza(list, false);
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzp(List<String> list) throws IOException {
        zza(list, true);
    }

    private final void zza(List<String> list, boolean z) throws IOException {
        int iZzuq;
        int iZzuq2;
        if ((this.tag & 7) != 2) {
            throw zzwe.zzxb();
        }
        if ((list instanceof zzwn) && !z) {
            zzwn zzwnVar = (zzwn) list;
            do {
                zzwnVar.zzc(zzuy());
                if (this.zzbvm.zzvg()) {
                    return;
                } else {
                    iZzuq2 = this.zzbvm.zzuq();
                }
            } while (iZzuq2 == this.tag);
            this.zzbvo = iZzuq2;
            return;
        }
        do {
            list.add(z ? zzux() : readString());
            if (this.zzbvm.zzvg()) {
                return;
            } else {
                iZzuq = this.zzbvm.zzuq();
            }
        } while (iZzuq == this.tag);
        this.zzbvo = iZzuq;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzxt
    public final <T> void zza(List<T> list, zzxu<T> zzxuVar, zzvk zzvkVar) throws IOException {
        int iZzuq;
        if ((this.tag & 7) != 2) {
            throw zzwe.zzxb();
        }
        int i = this.tag;
        do {
            list.add(zzc(zzxuVar, zzvkVar));
            if (this.zzbvm.zzvg() || this.zzbvo != 0) {
                return;
            } else {
                iZzuq = this.zzbvm.zzuq();
            }
        } while (iZzuq == i);
        this.zzbvo = iZzuq;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzxt
    public final <T> void zzb(List<T> list, zzxu<T> zzxuVar, zzvk zzvkVar) throws IOException {
        int iZzuq;
        if ((this.tag & 7) != 3) {
            throw zzwe.zzxb();
        }
        int i = this.tag;
        do {
            list.add(zzd(zzxuVar, zzvkVar));
            if (this.zzbvm.zzvg() || this.zzbvo != 0) {
                return;
            } else {
                iZzuq = this.zzbvm.zzuq();
            }
        } while (iZzuq == i);
        this.zzbvo = iZzuq;
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzq(List<zzun> list) throws IOException {
        int iZzuq;
        if ((this.tag & 7) != 2) {
            throw zzwe.zzxb();
        }
        do {
            list.add(zzuy());
            if (this.zzbvm.zzvg()) {
                return;
            } else {
                iZzuq = this.zzbvm.zzuq();
            }
        } while (iZzuq == this.tag);
        this.zzbvo = iZzuq;
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzr(List<Integer> list) throws IOException {
        int iZzuq;
        int iZzuq2;
        if (list instanceof zzvy) {
            zzvy zzvyVar = (zzvy) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzvyVar.zzbn(this.zzbvm.zzuz());
                    if (this.zzbvm.zzvg()) {
                        return;
                    } else {
                        iZzuq2 = this.zzbvm.zzuq();
                    }
                } while (iZzuq2 == this.tag);
                this.zzbvo = iZzuq2;
                return;
            }
            if (i == 2) {
                int iZzvh = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    zzvyVar.zzbn(this.zzbvm.zzuz());
                } while (this.zzbvm.zzvh() < iZzvh);
                zzax(iZzvh);
                return;
            }
            throw zzwe.zzxb();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Integer.valueOf(this.zzbvm.zzuz()));
                if (this.zzbvm.zzvg()) {
                    return;
                } else {
                    iZzuq = this.zzbvm.zzuq();
                }
            } while (iZzuq == this.tag);
            this.zzbvo = iZzuq;
            return;
        }
        if (i2 == 2) {
            int iZzvh2 = this.zzbvm.zzvh() + this.zzbvm.zzuz();
            do {
                list.add(Integer.valueOf(this.zzbvm.zzuz()));
            } while (this.zzbvm.zzvh() < iZzvh2);
            zzax(iZzvh2);
            return;
        }
        throw zzwe.zzxb();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzs(List<Integer> list) throws IOException {
        int iZzuq;
        int iZzuq2;
        if (list instanceof zzvy) {
            zzvy zzvyVar = (zzvy) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzvyVar.zzbn(this.zzbvm.zzva());
                    if (this.zzbvm.zzvg()) {
                        return;
                    } else {
                        iZzuq2 = this.zzbvm.zzuq();
                    }
                } while (iZzuq2 == this.tag);
                this.zzbvo = iZzuq2;
                return;
            }
            if (i == 2) {
                int iZzvh = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    zzvyVar.zzbn(this.zzbvm.zzva());
                } while (this.zzbvm.zzvh() < iZzvh);
                zzax(iZzvh);
                return;
            }
            throw zzwe.zzxb();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Integer.valueOf(this.zzbvm.zzva()));
                if (this.zzbvm.zzvg()) {
                    return;
                } else {
                    iZzuq = this.zzbvm.zzuq();
                }
            } while (iZzuq == this.tag);
            this.zzbvo = iZzuq;
            return;
        }
        if (i2 == 2) {
            int iZzvh2 = this.zzbvm.zzvh() + this.zzbvm.zzuz();
            do {
                list.add(Integer.valueOf(this.zzbvm.zzva()));
            } while (this.zzbvm.zzvh() < iZzvh2);
            zzax(iZzvh2);
            return;
        }
        throw zzwe.zzxb();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzt(List<Integer> list) throws IOException {
        int iZzuq;
        int iZzuq2;
        if (list instanceof zzvy) {
            zzvy zzvyVar = (zzvy) list;
            int i = this.tag & 7;
            if (i == 2) {
                int iZzuz = this.zzbvm.zzuz();
                zzaw(iZzuz);
                int iZzvh = this.zzbvm.zzvh() + iZzuz;
                do {
                    zzvyVar.zzbn(this.zzbvm.zzvb());
                } while (this.zzbvm.zzvh() < iZzvh);
                return;
            }
            if (i == 5) {
                do {
                    zzvyVar.zzbn(this.zzbvm.zzvb());
                    if (this.zzbvm.zzvg()) {
                        return;
                    } else {
                        iZzuq2 = this.zzbvm.zzuq();
                    }
                } while (iZzuq2 == this.tag);
                this.zzbvo = iZzuq2;
                return;
            }
            throw zzwe.zzxb();
        }
        int i2 = this.tag & 7;
        if (i2 == 2) {
            int iZzuz2 = this.zzbvm.zzuz();
            zzaw(iZzuz2);
            int iZzvh2 = this.zzbvm.zzvh() + iZzuz2;
            do {
                list.add(Integer.valueOf(this.zzbvm.zzvb()));
            } while (this.zzbvm.zzvh() < iZzvh2);
            return;
        }
        if (i2 == 5) {
            do {
                list.add(Integer.valueOf(this.zzbvm.zzvb()));
                if (this.zzbvm.zzvg()) {
                    return;
                } else {
                    iZzuq = this.zzbvm.zzuq();
                }
            } while (iZzuq == this.tag);
            this.zzbvo = iZzuq;
            return;
        }
        throw zzwe.zzxb();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzu(List<Long> list) throws IOException {
        int iZzuq;
        int iZzuq2;
        if (list instanceof zzws) {
            zzws zzwsVar = (zzws) list;
            switch (this.tag & 7) {
                case 1:
                    break;
                case 2:
                    int iZzuz = this.zzbvm.zzuz();
                    zzav(iZzuz);
                    int iZzvh = this.zzbvm.zzvh() + iZzuz;
                    do {
                        zzwsVar.zzbj(this.zzbvm.zzvc());
                    } while (this.zzbvm.zzvh() < iZzvh);
                    return;
                default:
                    throw zzwe.zzxb();
            }
            do {
                zzwsVar.zzbj(this.zzbvm.zzvc());
                if (this.zzbvm.zzvg()) {
                    return;
                } else {
                    iZzuq2 = this.zzbvm.zzuq();
                }
            } while (iZzuq2 == this.tag);
            this.zzbvo = iZzuq2;
            return;
        }
        switch (this.tag & 7) {
            case 1:
                break;
            case 2:
                int iZzuz2 = this.zzbvm.zzuz();
                zzav(iZzuz2);
                int iZzvh2 = this.zzbvm.zzvh() + iZzuz2;
                do {
                    list.add(Long.valueOf(this.zzbvm.zzvc()));
                } while (this.zzbvm.zzvh() < iZzvh2);
                return;
            default:
                throw zzwe.zzxb();
        }
        do {
            list.add(Long.valueOf(this.zzbvm.zzvc()));
            if (this.zzbvm.zzvg()) {
                return;
            } else {
                iZzuq = this.zzbvm.zzuq();
            }
        } while (iZzuq == this.tag);
        this.zzbvo = iZzuq;
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzv(List<Integer> list) throws IOException {
        int iZzuq;
        int iZzuq2;
        if (list instanceof zzvy) {
            zzvy zzvyVar = (zzvy) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzvyVar.zzbn(this.zzbvm.zzvd());
                    if (this.zzbvm.zzvg()) {
                        return;
                    } else {
                        iZzuq2 = this.zzbvm.zzuq();
                    }
                } while (iZzuq2 == this.tag);
                this.zzbvo = iZzuq2;
                return;
            }
            if (i == 2) {
                int iZzvh = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    zzvyVar.zzbn(this.zzbvm.zzvd());
                } while (this.zzbvm.zzvh() < iZzvh);
                zzax(iZzvh);
                return;
            }
            throw zzwe.zzxb();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Integer.valueOf(this.zzbvm.zzvd()));
                if (this.zzbvm.zzvg()) {
                    return;
                } else {
                    iZzuq = this.zzbvm.zzuq();
                }
            } while (iZzuq == this.tag);
            this.zzbvo = iZzuq;
            return;
        }
        if (i2 == 2) {
            int iZzvh2 = this.zzbvm.zzvh() + this.zzbvm.zzuz();
            do {
                list.add(Integer.valueOf(this.zzbvm.zzvd()));
            } while (this.zzbvm.zzvh() < iZzvh2);
            zzax(iZzvh2);
            return;
        }
        throw zzwe.zzxb();
    }

    @Override // com.google.android.gms.internal.measurement.zzxt
    public final void zzw(List<Long> list) throws IOException {
        int iZzuq;
        int iZzuq2;
        if (list instanceof zzws) {
            zzws zzwsVar = (zzws) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzwsVar.zzbj(this.zzbvm.zzve());
                    if (this.zzbvm.zzvg()) {
                        return;
                    } else {
                        iZzuq2 = this.zzbvm.zzuq();
                    }
                } while (iZzuq2 == this.tag);
                this.zzbvo = iZzuq2;
                return;
            }
            if (i == 2) {
                int iZzvh = this.zzbvm.zzvh() + this.zzbvm.zzuz();
                do {
                    zzwsVar.zzbj(this.zzbvm.zzve());
                } while (this.zzbvm.zzvh() < iZzvh);
                zzax(iZzvh);
                return;
            }
            throw zzwe.zzxb();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Long.valueOf(this.zzbvm.zzve()));
                if (this.zzbvm.zzvg()) {
                    return;
                } else {
                    iZzuq = this.zzbvm.zzuq();
                }
            } while (iZzuq == this.tag);
            this.zzbvo = iZzuq;
            return;
        }
        if (i2 == 2) {
            int iZzvh2 = this.zzbvm.zzvh() + this.zzbvm.zzuz();
            do {
                list.add(Long.valueOf(this.zzbvm.zzve()));
            } while (this.zzbvm.zzvh() < iZzvh2);
            zzax(iZzvh2);
            return;
        }
        throw zzwe.zzxb();
    }

    private static void zzav(int i) throws IOException {
        if ((i & 7) != 0) {
            throw zzwe.zzxd();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0061, code lost:
    
        r6.put(r1, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0069, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzxt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final <K, V> void zza(java.util.Map<K, V> r6, com.google.android.gms.internal.measurement.zzwx<K, V> r7, com.google.android.gms.internal.measurement.zzvk r8) throws java.io.IOException {
        /*
            r5 = this;
            r0 = 2
            r5.zzau(r0)
            com.google.android.gms.internal.measurement.zzuz r0 = r5.zzbvm
            int r0 = r0.zzuz()
            com.google.android.gms.internal.measurement.zzuz r1 = r5.zzbvm
            int r0 = r1.zzar(r0)
            K r1 = r7.zzcbn
            V r2 = r7.zzbsa
        L14:
            int r3 = r5.zzvo()     // Catch: java.lang.Throwable -> L6a
            r4 = 2147483647(0x7fffffff, float:NaN)
            if (r3 == r4) goto L61
            com.google.android.gms.internal.measurement.zzuz r4 = r5.zzbvm     // Catch: java.lang.Throwable -> L6a
            boolean r4 = r4.zzvg()     // Catch: java.lang.Throwable -> L6a
            if (r4 != 0) goto L61
            switch(r3) {
                case 1: goto L3c;
                case 2: goto L2d;
                default: goto L28;
            }
        L28:
            boolean r3 = r5.zzvp()     // Catch: com.google.android.gms.internal.measurement.zzwf -> L51 java.lang.Throwable -> L6a
            goto L46
        L2d:
            com.google.android.gms.internal.measurement.zzzb r3 = r7.zzcbo     // Catch: com.google.android.gms.internal.measurement.zzwf -> L51 java.lang.Throwable -> L6a
            V r4 = r7.zzbsa     // Catch: com.google.android.gms.internal.measurement.zzwf -> L51 java.lang.Throwable -> L6a
            java.lang.Class r4 = r4.getClass()     // Catch: com.google.android.gms.internal.measurement.zzwf -> L51 java.lang.Throwable -> L6a
            java.lang.Object r3 = r5.zza(r3, r4, r8)     // Catch: com.google.android.gms.internal.measurement.zzwf -> L51 java.lang.Throwable -> L6a
            r2 = r3
            goto L14
        L3c:
            com.google.android.gms.internal.measurement.zzzb r3 = r7.zzcbm     // Catch: com.google.android.gms.internal.measurement.zzwf -> L51 java.lang.Throwable -> L6a
            r4 = 0
            java.lang.Object r3 = r5.zza(r3, r4, r4)     // Catch: com.google.android.gms.internal.measurement.zzwf -> L51 java.lang.Throwable -> L6a
            r1 = r3
            goto L14
        L46:
            if (r3 == 0) goto L49
            goto L14
        L49:
            com.google.android.gms.internal.measurement.zzwe r3 = new com.google.android.gms.internal.measurement.zzwe     // Catch: com.google.android.gms.internal.measurement.zzwf -> L51 java.lang.Throwable -> L6a
            java.lang.String r4 = "Unable to parse map entry."
            r3.<init>(r4)     // Catch: com.google.android.gms.internal.measurement.zzwf -> L51 java.lang.Throwable -> L6a
            throw r3     // Catch: com.google.android.gms.internal.measurement.zzwf -> L51 java.lang.Throwable -> L6a
        L51:
            r3 = move-exception
            boolean r3 = r5.zzvp()     // Catch: java.lang.Throwable -> L6a
            if (r3 == 0) goto L59
            goto L14
        L59:
            com.google.android.gms.internal.measurement.zzwe r6 = new com.google.android.gms.internal.measurement.zzwe     // Catch: java.lang.Throwable -> L6a
            java.lang.String r7 = "Unable to parse map entry."
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L6a
            throw r6     // Catch: java.lang.Throwable -> L6a
        L61:
            r6.put(r1, r2)     // Catch: java.lang.Throwable -> L6a
            com.google.android.gms.internal.measurement.zzuz r6 = r5.zzbvm
            r6.zzas(r0)
            return
        L6a:
            r6 = move-exception
            com.google.android.gms.internal.measurement.zzuz r7 = r5.zzbvm
            r7.zzas(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzvc.zza(java.util.Map, com.google.android.gms.internal.measurement.zzwx, com.google.android.gms.internal.measurement.zzvk):void");
    }

    private final Object zza(zzzb zzzbVar, Class<?> cls, zzvk zzvkVar) throws IOException {
        switch (zzvd.zzbvp[zzzbVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(zzuw());
            case 2:
                return zzuy();
            case 3:
                return Double.valueOf(readDouble());
            case 4:
                return Integer.valueOf(zzva());
            case 5:
                return Integer.valueOf(zzuv());
            case 6:
                return Long.valueOf(zzuu());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Integer.valueOf(zzut());
            case 9:
                return Long.valueOf(zzus());
            case 10:
                zzau(2);
                return zzc(zzxq.zzya().zzi(cls), zzvkVar);
            case 11:
                return Integer.valueOf(zzvb());
            case 12:
                return Long.valueOf(zzvc());
            case 13:
                return Integer.valueOf(zzvd());
            case 14:
                return Long.valueOf(zzve());
            case 15:
                return zzux();
            case 16:
                return Integer.valueOf(zzuz());
            case 17:
                return Long.valueOf(zzur());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private static void zzaw(int i) throws IOException {
        if ((i & 3) != 0) {
            throw zzwe.zzxd();
        }
    }

    private final void zzax(int i) throws IOException {
        if (this.zzbvm.zzvh() != i) {
            throw zzwe.zzwx();
        }
    }
}
