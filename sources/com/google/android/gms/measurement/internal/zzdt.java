package com.google.android.gms.measurement.internal;

import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Size;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzft;
import com.google.android.gms.internal.measurement.zzgi;
import com.google.android.gms.internal.measurement.zzgj;
import com.google.android.gms.internal.measurement.zzgk;
import com.google.android.gms.internal.measurement.zzgl;
import com.google.android.gms.internal.measurement.zzgo;
import com.google.android.gms.internal.measurement.zzvx;
import com.google.android.gms.internal.measurement.zzzj;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zzdt extends zzfj {
    public zzdt(zzfk zzfkVar) {
        super(zzfkVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzfj
    protected final boolean zzgy() {
        return false;
    }

    @WorkerThread
    public final byte[] zzb(@NonNull zzae zzaeVar, @Size(min = 1) String str) {
        Bundle bundle;
        zzgl zzglVar;
        zzgk zzgkVar;
        zzg zzgVar;
        long j;
        zzaa zzaaVarZzai;
        zzft next;
        zzaf();
        this.zzadp.zzgf();
        Preconditions.checkNotNull(zzaeVar);
        Preconditions.checkNotEmpty(str);
        if (!zzgv().zze(str, zzag.zzalr)) {
            zzgt().zzjn().zzg("Generating ScionPayload disabled. packageName", str);
            return new byte[0];
        }
        if (!"_iap".equals(zzaeVar.name) && !"_iapx".equals(zzaeVar.name)) {
            zzgt().zzjn().zze("Generating a payload for this event is not available. package_name, event_name", str, zzaeVar.name);
            return null;
        }
        zzgk zzgkVar2 = new zzgk();
        zzjt().beginTransaction();
        try {
            zzg zzgVarZzbo = zzjt().zzbo(str);
            if (zzgVarZzbo == null) {
                zzgt().zzjn().zzg("Log and bundle not available. package_name", str);
                return new byte[0];
            }
            if (!zzgVarZzbo.isMeasurementEnabled()) {
                zzgt().zzjn().zzg("Log and bundle disabled. package_name", str);
                return new byte[0];
            }
            zzgl zzglVar2 = new zzgl();
            zzgkVar2.zzaxr = new zzgl[]{zzglVar2};
            zzglVar2.zzaxt = 1;
            zzglVar2.zzayb = AbstractSpiCall.ANDROID_CLIENT_TYPE;
            zzglVar2.zztt = zzgVarZzbo.zzal();
            zzglVar2.zzage = zzgVarZzbo.zzhg();
            zzglVar2.zzts = zzgVarZzbo.zzak();
            long jZzhf = zzgVarZzbo.zzhf();
            zzglVar2.zzayn = jZzhf == -2147483648L ? null : Integer.valueOf((int) jZzhf);
            zzglVar2.zzayf = Long.valueOf(zzgVarZzbo.zzhh());
            zzglVar2.zzafx = zzgVarZzbo.getGmpAppId();
            if (TextUtils.isEmpty(zzglVar2.zzafx)) {
                zzglVar2.zzaxc = zzgVarZzbo.zzhb();
            }
            zzglVar2.zzayj = Long.valueOf(zzgVarZzbo.zzhi());
            if (this.zzadp.isEnabled() && zzo.zzie() && zzgv().zzau(zzglVar2.zztt)) {
                zzglVar2.zzayt = null;
            }
            Pair<String, Boolean> pairZzcb = zzgu().zzcb(zzgVarZzbo.zzal());
            if (zzgVarZzbo.zzhw() && pairZzcb != null && !TextUtils.isEmpty((CharSequence) pairZzcb.first)) {
                zzglVar2.zzayh = zzr((String) pairZzcb.first, Long.toString(zzaeVar.zzais));
                zzglVar2.zzayi = (Boolean) pairZzcb.second;
            }
            zzgp().zzcl();
            zzglVar2.zzayd = Build.MODEL;
            zzgp().zzcl();
            zzglVar2.zzayc = Build.VERSION.RELEASE;
            zzglVar2.zzaye = Integer.valueOf((int) zzgp().zziw());
            zzglVar2.zzaid = zzgp().zzix();
            zzglVar2.zzafw = zzr(zzgVarZzbo.getAppInstanceId(), Long.toString(zzaeVar.zzais));
            zzglVar2.zzafz = zzgVarZzbo.getFirebaseInstanceId();
            String str2 = zzglVar2.zztt;
            List<zzft> listZzbn = zzjt().zzbn(str2);
            if (zzgv().zzaw(str)) {
                Iterator<zzft> it = listZzbn.iterator();
                while (true) {
                    if (it.hasNext()) {
                        next = it.next();
                        if ("_lte".equals(next.name)) {
                            break;
                        }
                    } else {
                        next = null;
                        break;
                    }
                }
                if (next == null || next.value == null) {
                    zzft zzftVar = new zzft(str2, "auto", "_lte", zzbx().currentTimeMillis(), 0L);
                    listZzbn.add(zzftVar);
                    zzjt().zza(zzftVar);
                }
            }
            zzgo[] zzgoVarArr = new zzgo[listZzbn.size()];
            for (int i = 0; i < listZzbn.size(); i++) {
                zzgo zzgoVar = new zzgo();
                zzgoVarArr[i] = zzgoVar;
                zzgoVar.name = listZzbn.get(i).name;
                zzgoVar.zzazg = Long.valueOf(listZzbn.get(i).zzaux);
                zzjr().zza(zzgoVar, listZzbn.get(i).value);
            }
            zzglVar2.zzaxv = zzgoVarArr;
            Bundle bundleZziy = zzaeVar.zzaig.zziy();
            bundleZziy.putLong("_c", 1L);
            zzgt().zzjn().zzca("Marking in-app purchase as real-time");
            bundleZziy.putLong("_r", 1L);
            bundleZziy.putString("_o", zzaeVar.origin);
            if (zzgr().zzdb(zzglVar2.zztt)) {
                zzgr().zza(bundleZziy, "_dbg", (Object) 1L);
                zzgr().zza(bundleZziy, "_r", (Object) 1L);
            }
            zzaa zzaaVarZzg = zzjt().zzg(str, zzaeVar.name);
            if (zzaaVarZzg == null) {
                bundle = bundleZziy;
                zzglVar = zzglVar2;
                zzgkVar = zzgkVar2;
                zzgVar = zzgVarZzbo;
                zzaaVarZzai = new zzaa(str, zzaeVar.name, 0L, 0L, zzaeVar.zzais, 0L, null, null, null, null);
                j = 0;
            } else {
                bundle = bundleZziy;
                zzglVar = zzglVar2;
                zzgkVar = zzgkVar2;
                zzgVar = zzgVarZzbo;
                j = zzaaVarZzg.zzaij;
                zzaaVarZzai = zzaaVarZzg.zzai(zzaeVar.zzais);
            }
            zzjt().zza(zzaaVarZzai);
            zzz zzzVar = new zzz(this.zzadp, zzaeVar.origin, str, zzaeVar.name, zzaeVar.zzais, j, bundle);
            zzgi zzgiVar = new zzgi();
            zzgl zzglVar3 = zzglVar;
            zzglVar3.zzaxu = new zzgi[]{zzgiVar};
            zzgiVar.zzaxn = Long.valueOf(zzzVar.timestamp);
            zzgiVar.name = zzzVar.name;
            zzgiVar.zzaxo = Long.valueOf(zzzVar.zzaif);
            zzgiVar.zzaxm = new zzgj[zzzVar.zzaig.size()];
            int i2 = 0;
            for (String str3 : zzzVar.zzaig) {
                zzgj zzgjVar = new zzgj();
                zzgiVar.zzaxm[i2] = zzgjVar;
                zzgjVar.name = str3;
                zzjr().zza(zzgjVar, zzzVar.zzaig.get(str3));
                i2++;
            }
            zzglVar3.zzayw = (zzft.zzb) ((zzvx) zzft.zzb.zzmp().zzb((zzft.zza) ((zzvx) zzft.zza.zzmn().zzar(zzaaVarZzai.zzaih).zzdc(zzaeVar.name).zzwv())).zzwv());
            zzglVar3.zzaym = zzjs().zza(zzgVar.zzal(), (zzgi[]) null, zzglVar3.zzaxv);
            zzglVar3.zzaxx = zzgiVar.zzaxn;
            zzglVar3.zzaxy = zzgiVar.zzaxn;
            long jZzhe = zzgVar.zzhe();
            zzglVar3.zzaya = jZzhe != 0 ? Long.valueOf(jZzhe) : null;
            long jZzhd = zzgVar.zzhd();
            if (jZzhd != 0) {
                jZzhe = jZzhd;
            }
            zzglVar3.zzaxz = jZzhe != 0 ? Long.valueOf(jZzhe) : null;
            zzgVar.zzhm();
            zzglVar3.zzayk = Integer.valueOf((int) zzgVar.zzhj());
            zzglVar3.zzayg = Long.valueOf(zzgv().zzhh());
            zzglVar3.zzaxw = Long.valueOf(zzbx().currentTimeMillis());
            zzglVar3.zzayl = Boolean.TRUE;
            zzg zzgVar2 = zzgVar;
            zzgVar2.zzs(zzglVar3.zzaxx.longValue());
            zzgVar2.zzt(zzglVar3.zzaxy.longValue());
            zzjt().zza(zzgVar2);
            zzjt().setTransactionSuccessful();
            try {
                byte[] bArr = new byte[zzgkVar.zzwe()];
                zzzj zzzjVarZzk = zzzj.zzk(bArr, 0, bArr.length);
                zzgkVar.zza(zzzjVarZzk);
                zzzjVarZzk.zzzh();
                return zzjr().zzb(bArr);
            } catch (IOException e) {
                zzgt().zzjg().zze("Data loss. Failed to bundle and serialize. appId", zzaq.zzby(str), e);
                return null;
            }
        } catch (SecurityException e2) {
            zzgt().zzjn().zzg("Resettable device id encryption failed", e2.getMessage());
            return new byte[0];
        } catch (SecurityException e3) {
            zzgt().zzjn().zzg("app instance id encryption failed", e3.getMessage());
            return new byte[0];
        } finally {
            zzjt().endTransaction();
        }
    }

    private static String zzr(String str, String str2) {
        throw new SecurityException("This implementation should not be used.");
    }
}
