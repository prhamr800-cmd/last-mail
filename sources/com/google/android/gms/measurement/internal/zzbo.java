package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.support.annotation.WorkerThread;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzfx;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zzfz;
import com.google.android.gms.internal.measurement.zzgb;
import com.google.android.gms.internal.measurement.zzgd;
import com.google.android.gms.internal.measurement.zzge;
import com.google.android.gms.internal.measurement.zzgf;
import com.google.android.gms.internal.measurement.zzzi;
import com.google.android.gms.internal.measurement.zzzj;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbo extends zzfj implements zzq {

    @VisibleForTesting
    private static int zzaot = SupportMenu.USER_MASK;

    @VisibleForTesting
    private static int zzaou = 2;
    private final Map<String, Map<String, String>> zzaov;
    private final Map<String, Map<String, Boolean>> zzaow;
    private final Map<String, Map<String, Boolean>> zzaox;
    private final Map<String, zzge> zzaoy;
    private final Map<String, Map<String, Integer>> zzaoz;
    private final Map<String, String> zzapa;

    zzbo(zzfk zzfkVar) {
        super(zzfkVar);
        this.zzaov = new ArrayMap();
        this.zzaow = new ArrayMap();
        this.zzaox = new ArrayMap();
        this.zzaoy = new ArrayMap();
        this.zzapa = new ArrayMap();
        this.zzaoz = new ArrayMap();
    }

    @WorkerThread
    private final void zzch(String str) {
        zzcl();
        zzaf();
        Preconditions.checkNotEmpty(str);
        if (this.zzaoy.get(str) == null) {
            byte[] bArrZzbq = zzjt().zzbq(str);
            if (bArrZzbq == null) {
                this.zzaov.put(str, null);
                this.zzaow.put(str, null);
                this.zzaox.put(str, null);
                this.zzaoy.put(str, null);
                this.zzapa.put(str, null);
                this.zzaoz.put(str, null);
                return;
            }
            zzge zzgeVarZza = zza(str, bArrZzbq);
            this.zzaov.put(str, zza(zzgeVarZza));
            zza(str, zzgeVarZza);
            this.zzaoy.put(str, zzgeVarZza);
            this.zzapa.put(str, null);
        }
    }

    @WorkerThread
    protected final zzge zzci(String str) {
        zzcl();
        zzaf();
        Preconditions.checkNotEmpty(str);
        zzch(str);
        return this.zzaoy.get(str);
    }

    @WorkerThread
    protected final String zzcj(String str) {
        zzaf();
        return this.zzapa.get(str);
    }

    @WorkerThread
    protected final void zzck(String str) {
        zzaf();
        this.zzapa.put(str, null);
    }

    @WorkerThread
    final void zzcl(String str) {
        zzaf();
        this.zzaoy.remove(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzq
    @WorkerThread
    public final String zzf(String str, String str2) {
        zzaf();
        zzch(str);
        Map<String, String> map = this.zzaov.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    private static Map<String, String> zza(zzge zzgeVar) {
        ArrayMap arrayMap = new ArrayMap();
        if (zzgeVar != null && zzgeVar.zzawz != null) {
            for (zzgf zzgfVar : zzgeVar.zzawz) {
                if (zzgfVar != null) {
                    arrayMap.put(zzgfVar.zzoj, zzgfVar.value);
                }
            }
        }
        return arrayMap;
    }

    private final void zza(String str, zzge zzgeVar) {
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        ArrayMap arrayMap3 = new ArrayMap();
        if (zzgeVar != null && zzgeVar.zzaxa != null) {
            for (zzgd zzgdVar : zzgeVar.zzaxa) {
                if (TextUtils.isEmpty(zzgdVar.name)) {
                    zzgt().zzjj().zzca("EventConfig contained null event name");
                } else {
                    String strZzcq = zzcs.zzcq(zzgdVar.name);
                    if (!TextUtils.isEmpty(strZzcq)) {
                        zzgdVar.name = strZzcq;
                    }
                    arrayMap.put(zzgdVar.name, zzgdVar.zzawu);
                    arrayMap2.put(zzgdVar.name, zzgdVar.zzawv);
                    if (zzgdVar.zzaww != null) {
                        if (zzgdVar.zzaww.intValue() < zzaou || zzgdVar.zzaww.intValue() > zzaot) {
                            zzgt().zzjj().zze("Invalid sampling rate. Event name, sample rate", zzgdVar.name, zzgdVar.zzaww);
                        } else {
                            arrayMap3.put(zzgdVar.name, zzgdVar.zzaww);
                        }
                    }
                }
            }
        }
        this.zzaow.put(str, arrayMap);
        this.zzaox.put(str, arrayMap2);
        this.zzaoz.put(str, arrayMap3);
    }

    @WorkerThread
    protected final boolean zza(String str, byte[] bArr, String str2) {
        byte[] bArr2;
        zzcl();
        zzaf();
        Preconditions.checkNotEmpty(str);
        zzge zzgeVarZza = zza(str, bArr);
        if (zzgeVarZza == null) {
            return false;
        }
        zza(str, zzgeVarZza);
        this.zzaoy.put(str, zzgeVarZza);
        this.zzapa.put(str, str2);
        this.zzaov.put(str, zza(zzgeVarZza));
        zzk zzkVarZzjs = zzjs();
        zzfx[] zzfxVarArr = zzgeVarZza.zzaxb;
        Preconditions.checkNotNull(zzfxVarArr);
        for (zzfx zzfxVar : zzfxVarArr) {
            for (zzfy zzfyVar : zzfxVar.zzavt) {
                String strZzcq = zzcs.zzcq(zzfyVar.zzavy);
                if (strZzcq != null) {
                    zzfyVar.zzavy = strZzcq;
                }
                for (zzfz zzfzVar : zzfyVar.zzavz) {
                    String strZzcq2 = zzct.zzcq(zzfzVar.zzawg);
                    if (strZzcq2 != null) {
                        zzfzVar.zzawg = strZzcq2;
                    }
                }
            }
            for (zzgb zzgbVar : zzfxVar.zzavs) {
                String strZzcq3 = zzcu.zzcq(zzgbVar.zzawn);
                if (strZzcq3 != null) {
                    zzgbVar.zzawn = strZzcq3;
                }
            }
        }
        zzkVarZzjs.zzjt().zza(str, zzfxVarArr);
        try {
            zzgeVarZza.zzaxb = null;
            bArr2 = new byte[zzgeVarZza.zzwe()];
            zzgeVarZza.zza(zzzj.zzk(bArr2, 0, bArr2.length));
        } catch (IOException e) {
            zzgt().zzjj().zze("Unable to serialize reduced-size config. Storing full config instead. appId", zzaq.zzby(str), e);
            bArr2 = bArr;
        }
        zzr zzrVarZzjt = zzjt();
        Preconditions.checkNotEmpty(str);
        zzrVarZzjt.zzaf();
        zzrVarZzjt.zzcl();
        new ContentValues().put("remote_config", bArr2);
        try {
            if (zzrVarZzjt.getWritableDatabase().update("apps", r0, "app_id = ?", new String[]{str}) == 0) {
                zzrVarZzjt.zzgt().zzjg().zzg("Failed to update remote config (got 0). appId", zzaq.zzby(str));
            }
        } catch (SQLiteException e2) {
            zzrVarZzjt.zzgt().zzjg().zze("Error storing remote config. appId", zzaq.zzby(str), e2);
        }
        return true;
    }

    @WorkerThread
    final boolean zzo(String str, String str2) {
        Boolean bool;
        zzaf();
        zzch(str);
        if (zzcn(str) && zzfu.zzda(str2)) {
            return true;
        }
        if (zzco(str) && zzfu.zzcv(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.zzaow.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @WorkerThread
    final boolean zzp(String str, String str2) {
        Boolean bool;
        zzaf();
        zzch(str);
        if (FirebaseAnalytics.Event.ECOMMERCE_PURCHASE.equals(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.zzaox.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @WorkerThread
    final int zzq(String str, String str2) {
        Integer num;
        zzaf();
        zzch(str);
        Map<String, Integer> map = this.zzaoz.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    @WorkerThread
    final long zzcm(String str) {
        String strZzf = zzf(str, "measurement.account.time_zone_offset_minutes");
        if (!TextUtils.isEmpty(strZzf)) {
            try {
                return Long.parseLong(strZzf);
            } catch (NumberFormatException e) {
                zzgt().zzjj().zze("Unable to parse timezone offset. appId", zzaq.zzby(str), e);
                return 0L;
            }
        }
        return 0L;
    }

    @WorkerThread
    private final zzge zza(String str, byte[] bArr) {
        if (bArr == null) {
            return new zzge();
        }
        zzzi zzziVarZzj = zzzi.zzj(bArr, 0, bArr.length);
        zzge zzgeVar = new zzge();
        try {
            zzgeVar.zza(zzziVarZzj);
            zzgt().zzjo().zze("Parsed config. version, gmp_app_id", zzgeVar.zzawx, zzgeVar.zzafx);
            return zzgeVar;
        } catch (IOException e) {
            zzgt().zzjj().zze("Unable to merge remote config. appId", zzaq.zzby(str), e);
            return new zzge();
        }
    }

    final boolean zzcn(String str) {
        return "1".equals(zzf(str, "measurement.upload.blacklist_internal"));
    }

    final boolean zzco(String str) {
        return "1".equals(zzf(str, "measurement.upload.blacklist_public"));
    }

    @Override // com.google.android.gms.measurement.internal.zzfj
    protected final boolean zzgy() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzfi
    public final /* bridge */ /* synthetic */ zzfq zzjr() {
        return super.zzjr();
    }

    @Override // com.google.android.gms.measurement.internal.zzfi
    public final /* bridge */ /* synthetic */ zzk zzjs() {
        return super.zzjs();
    }

    @Override // com.google.android.gms.measurement.internal.zzfi
    public final /* bridge */ /* synthetic */ zzr zzjt() {
        return super.zzjt();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgf() {
        super.zzgf();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgg() {
        super.zzgg();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgh() {
        super.zzgh();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzaf() {
        super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzy zzgp() {
        return super.zzgp();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ Clock zzbx() {
        return super.zzbx();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzao zzgq() {
        return super.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzfu zzgr() {
        return super.zzgr();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ zzbp zzgs() {
        return super.zzgs();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ zzaq zzgt() {
        return super.zzgt();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzbb zzgu() {
        return super.zzgu();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ zzo zzgv() {
        return super.zzgv();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp, com.google.android.gms.measurement.internal.zzcr
    public final /* bridge */ /* synthetic */ zzl zzgw() {
        return super.zzgw();
    }
}
