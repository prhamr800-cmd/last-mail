package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zzzo implements Cloneable {
    private Object value;
    private zzzm<?, ?> zzcge;
    private List<zzzt> zzcgf = new ArrayList();

    zzzo() {
    }

    final void zza(zzzt zzztVar) throws IOException {
        Object objZzah;
        Object obj;
        if (this.zzcgf != null) {
            this.zzcgf.add(zzztVar);
            return;
        }
        if (this.value instanceof zzzr) {
            byte[] bArr = zzztVar.zzbvb;
            zzzi zzziVarZzj = zzzi.zzj(bArr, 0, bArr.length);
            int iZzvi = zzziVarZzj.zzvi();
            if (iZzvi != bArr.length - zzzj.zzbd(iZzvi)) {
                throw zzzq.zzzk();
            }
            objZzah = ((zzzr) this.value).zza(zzziVarZzj);
        } else {
            if (this.value instanceof zzzr[]) {
                zzzr[] zzzrVarArr = (zzzr[]) this.zzcge.zzah(Collections.singletonList(zzztVar));
                zzzr[] zzzrVarArr2 = (zzzr[]) this.value;
                obj = (zzzr[]) Arrays.copyOf(zzzrVarArr2, zzzrVarArr2.length + zzzrVarArr.length);
                System.arraycopy(zzzrVarArr, 0, obj, zzzrVarArr2.length, zzzrVarArr.length);
            } else if (this.value instanceof zzxe) {
                objZzah = ((zzxe) this.value).zzwo().zza((zzxe) this.zzcge.zzah(Collections.singletonList(zzztVar))).zzwv();
            } else if (this.value instanceof zzxe[]) {
                zzxe[] zzxeVarArr = (zzxe[]) this.zzcge.zzah(Collections.singletonList(zzztVar));
                zzxe[] zzxeVarArr2 = (zzxe[]) this.value;
                obj = (zzxe[]) Arrays.copyOf(zzxeVarArr2, zzxeVarArr2.length + zzxeVarArr.length);
                System.arraycopy(zzxeVarArr, 0, obj, zzxeVarArr2.length, zzxeVarArr.length);
            } else {
                objZzah = this.zzcge.zzah(Collections.singletonList(zzztVar));
            }
            objZzah = obj;
        }
        this.zzcge = this.zzcge;
        this.value = objZzah;
        this.zzcgf = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    final <T> T zzb(zzzm<?, T> zzzmVar) {
        if (this.value != null) {
            if (!this.zzcge.equals(zzzmVar)) {
                throw new IllegalStateException("Tried to getExtension with a different Extension.");
            }
        } else {
            this.zzcge = zzzmVar;
            this.value = zzzmVar.zzah(this.zzcgf);
            this.zzcgf = null;
        }
        return (T) this.value;
    }

    final int zzf() {
        if (this.value != null) {
            zzzm<?, ?> zzzmVar = this.zzcge;
            Object obj = this.value;
            if (zzzmVar.zzcfz) {
                int length = Array.getLength(obj);
                int iZzao = 0;
                for (int i = 0; i < length; i++) {
                    Object obj2 = Array.get(obj, i);
                    if (obj2 != null) {
                        iZzao += zzzmVar.zzao(obj2);
                    }
                }
                return iZzao;
            }
            return zzzmVar.zzao(obj);
        }
        int iZzbk = 0;
        for (zzzt zzztVar : this.zzcgf) {
            iZzbk += zzzj.zzbk(zzztVar.tag) + 0 + zzztVar.zzbvb.length;
        }
        return iZzbk;
    }

    final void zza(zzzj zzzjVar) throws IOException {
        if (this.value != null) {
            zzzm<?, ?> zzzmVar = this.zzcge;
            Object obj = this.value;
            if (zzzmVar.zzcfz) {
                int length = Array.getLength(obj);
                for (int i = 0; i < length; i++) {
                    Object obj2 = Array.get(obj, i);
                    if (obj2 != null) {
                        zzzmVar.zza(obj2, zzzjVar);
                    }
                }
                return;
            }
            zzzmVar.zza(obj, zzzjVar);
            return;
        }
        for (zzzt zzztVar : this.zzcgf) {
            zzzjVar.zzcc(zzztVar.tag);
            zzzjVar.zzp(zzztVar.zzbvb);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzzo)) {
            return false;
        }
        zzzo zzzoVar = (zzzo) obj;
        if (this.value != null && zzzoVar.value != null) {
            if (this.zzcge != zzzoVar.zzcge) {
                return false;
            }
            if (!this.zzcge.zzcfy.isArray()) {
                return this.value.equals(zzzoVar.value);
            }
            if (this.value instanceof byte[]) {
                return Arrays.equals((byte[]) this.value, (byte[]) zzzoVar.value);
            }
            if (this.value instanceof int[]) {
                return Arrays.equals((int[]) this.value, (int[]) zzzoVar.value);
            }
            if (this.value instanceof long[]) {
                return Arrays.equals((long[]) this.value, (long[]) zzzoVar.value);
            }
            if (this.value instanceof float[]) {
                return Arrays.equals((float[]) this.value, (float[]) zzzoVar.value);
            }
            if (this.value instanceof double[]) {
                return Arrays.equals((double[]) this.value, (double[]) zzzoVar.value);
            }
            if (this.value instanceof boolean[]) {
                return Arrays.equals((boolean[]) this.value, (boolean[]) zzzoVar.value);
            }
            return Arrays.deepEquals((Object[]) this.value, (Object[]) zzzoVar.value);
        }
        if (this.zzcgf != null && zzzoVar.zzcgf != null) {
            return this.zzcgf.equals(zzzoVar.zzcgf);
        }
        try {
            return Arrays.equals(toByteArray(), zzzoVar.toByteArray());
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(toByteArray()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    private final byte[] toByteArray() throws IOException {
        byte[] bArr = new byte[zzf()];
        zza(zzzj.zzo(bArr));
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzzj, reason: merged with bridge method [inline-methods] */
    public final zzzo clone() {
        zzzo zzzoVar = new zzzo();
        try {
            zzzoVar.zzcge = this.zzcge;
            if (this.zzcgf == null) {
                zzzoVar.zzcgf = null;
            } else {
                zzzoVar.zzcgf.addAll(this.zzcgf);
            }
            if (this.value != null) {
                if (this.value instanceof zzzr) {
                    zzzoVar.value = (zzzr) ((zzzr) this.value).clone();
                } else if (this.value instanceof byte[]) {
                    zzzoVar.value = ((byte[]) this.value).clone();
                } else {
                    int i = 0;
                    if (this.value instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.value;
                        byte[][] bArr2 = new byte[bArr.length][];
                        zzzoVar.value = bArr2;
                        while (i < bArr.length) {
                            bArr2[i] = (byte[]) bArr[i].clone();
                            i++;
                        }
                    } else if (this.value instanceof boolean[]) {
                        zzzoVar.value = ((boolean[]) this.value).clone();
                    } else if (this.value instanceof int[]) {
                        zzzoVar.value = ((int[]) this.value).clone();
                    } else if (this.value instanceof long[]) {
                        zzzoVar.value = ((long[]) this.value).clone();
                    } else if (this.value instanceof float[]) {
                        zzzoVar.value = ((float[]) this.value).clone();
                    } else if (this.value instanceof double[]) {
                        zzzoVar.value = ((double[]) this.value).clone();
                    } else if (this.value instanceof zzzr[]) {
                        zzzr[] zzzrVarArr = (zzzr[]) this.value;
                        zzzr[] zzzrVarArr2 = new zzzr[zzzrVarArr.length];
                        zzzoVar.value = zzzrVarArr2;
                        while (i < zzzrVarArr.length) {
                            zzzrVarArr2[i] = (zzzr) zzzrVarArr[i].clone();
                            i++;
                        }
                    }
                }
            }
            return zzzoVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }
}
