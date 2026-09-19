package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzzr {
    protected volatile int zzcgh = -1;

    public abstract zzzr zza(zzzi zzziVar) throws IOException;

    public final int zzzo() {
        if (this.zzcgh < 0) {
            zzwe();
        }
        return this.zzcgh;
    }

    public final int zzwe() {
        int iZzf = zzf();
        this.zzcgh = iZzf;
        return iZzf;
    }

    protected int zzf() {
        return 0;
    }

    public void zza(zzzj zzzjVar) throws IOException {
    }

    public static final void zza(zzzr zzzrVar, byte[] bArr, int i, int i2) {
        try {
            zzzj zzzjVarZzk = zzzj.zzk(bArr, 0, i2);
            zzzrVar.zza(zzzjVarZzk);
            zzzjVarZzk.zzzh();
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    public static final <T extends zzzr> T zza(T t, byte[] bArr) throws zzzq {
        return (T) zzb(t, bArr, 0, bArr.length);
    }

    private static final <T extends zzzr> T zzb(T t, byte[] bArr, int i, int i2) throws zzzq {
        try {
            zzzi zzziVarZzj = zzzi.zzj(bArr, 0, i2);
            t.zza(zzziVarZzj);
            zzziVarZzj.zzao(0);
            return t;
        } catch (zzzq e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e2);
        }
    }

    public String toString() {
        return zzzs.zzc(this);
    }

    @Override // 
    /* JADX INFO: renamed from: zzzi, reason: merged with bridge method [inline-methods] */
    public zzzr clone() throws CloneNotSupportedException {
        return (zzzr) super.clone();
    }
}
