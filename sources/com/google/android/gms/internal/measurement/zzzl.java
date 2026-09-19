package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzzl;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzzl<M extends zzzl<M>> extends zzzr {
    protected zzzn zzcfx;

    @Override // com.google.android.gms.internal.measurement.zzzr
    protected int zzf() {
        if (this.zzcfx == null) {
            return 0;
        }
        int iZzf = 0;
        for (int i = 0; i < this.zzcfx.size(); i++) {
            iZzf += this.zzcfx.zzce(i).zzf();
        }
        return iZzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzzr
    public void zza(zzzj zzzjVar) throws IOException {
        if (this.zzcfx == null) {
            return;
        }
        for (int i = 0; i < this.zzcfx.size(); i++) {
            this.zzcfx.zzce(i).zza(zzzjVar);
        }
    }

    public final <T> T zza(zzzm<M, T> zzzmVar) {
        zzzo zzzoVarZzcd;
        if (this.zzcfx == null || (zzzoVarZzcd = this.zzcfx.zzcd(zzzmVar.tag >>> 3)) == null) {
            return null;
        }
        return (T) zzzoVarZzcd.zzb(zzzmVar);
    }

    protected final boolean zza(zzzi zzziVar, int i) throws IOException {
        int position = zzziVar.getPosition();
        if (!zzziVar.zzap(i)) {
            return false;
        }
        int i2 = i >>> 3;
        zzzt zzztVar = new zzzt(i, zzziVar.zzs(position, zzziVar.getPosition() - position));
        zzzo zzzoVarZzcd = null;
        if (this.zzcfx == null) {
            this.zzcfx = new zzzn();
        } else {
            zzzoVarZzcd = this.zzcfx.zzcd(i2);
        }
        if (zzzoVarZzcd == null) {
            zzzoVarZzcd = new zzzo();
            this.zzcfx.zza(i2, zzzoVarZzcd);
        }
        zzzoVarZzcd.zza(zzztVar);
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzzr
    /* JADX INFO: renamed from: zzzi */
    public final /* synthetic */ zzzr clone() throws CloneNotSupportedException {
        return (zzzl) clone();
    }

    @Override // com.google.android.gms.internal.measurement.zzzr
    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzzl zzzlVar = (zzzl) super.clone();
        zzzp.zza(this, zzzlVar);
        return zzzlVar;
    }
}
