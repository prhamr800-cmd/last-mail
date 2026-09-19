package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Size;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.measurement.internal.zzag;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzo extends zzcp {
    private Boolean zzahi;

    @NonNull
    private zzq zzahj;
    private Boolean zzyk;

    zzo(zzbu zzbuVar) {
        super(zzbuVar);
        this.zzahj = zzp.zzahk;
        zzag.zza(zzbuVar);
    }

    final void zza(@NonNull zzq zzqVar) {
        this.zzahj = zzqVar;
    }

    static String zzhy() {
        return zzag.zzajg.get();
    }

    @WorkerThread
    public final int zzas(@Size(min = 1) String str) {
        return zzb(str, zzag.zzaju);
    }

    public final long zzhh() {
        zzgw();
        return 14700L;
    }

    public final boolean zzdw() {
        if (this.zzyk == null) {
            synchronized (this) {
                if (this.zzyk == null) {
                    ApplicationInfo applicationInfo = getContext().getApplicationInfo();
                    String myProcessName = ProcessUtils.getMyProcessName();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.zzyk = Boolean.valueOf(str != null && str.equals(myProcessName));
                    }
                    if (this.zzyk == null) {
                        this.zzyk = Boolean.TRUE;
                        zzgt().zzjg().zzca("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.zzyk.booleanValue();
    }

    @WorkerThread
    public final long zza(String str, @NonNull zzag.zza<Long> zzaVar) {
        if (str == null) {
            return zzaVar.get().longValue();
        }
        String strZzf = this.zzahj.zzf(str, zzaVar.getKey());
        if (TextUtils.isEmpty(strZzf)) {
            return zzaVar.get().longValue();
        }
        try {
            return zzaVar.get(Long.valueOf(Long.parseLong(strZzf))).longValue();
        } catch (NumberFormatException e) {
            return zzaVar.get().longValue();
        }
    }

    @WorkerThread
    public final int zzb(String str, @NonNull zzag.zza<Integer> zzaVar) {
        if (str == null) {
            return zzaVar.get().intValue();
        }
        String strZzf = this.zzahj.zzf(str, zzaVar.getKey());
        if (TextUtils.isEmpty(strZzf)) {
            return zzaVar.get().intValue();
        }
        try {
            return zzaVar.get(Integer.valueOf(Integer.parseInt(strZzf))).intValue();
        } catch (NumberFormatException e) {
            return zzaVar.get().intValue();
        }
    }

    @WorkerThread
    public final double zzc(String str, @NonNull zzag.zza<Double> zzaVar) {
        if (str == null) {
            return zzaVar.get().doubleValue();
        }
        String strZzf = this.zzahj.zzf(str, zzaVar.getKey());
        if (TextUtils.isEmpty(strZzf)) {
            return zzaVar.get().doubleValue();
        }
        try {
            return zzaVar.get(Double.valueOf(Double.parseDouble(strZzf))).doubleValue();
        } catch (NumberFormatException e) {
            return zzaVar.get().doubleValue();
        }
    }

    @WorkerThread
    public final boolean zzd(String str, @NonNull zzag.zza<Boolean> zzaVar) {
        if (str == null) {
            return zzaVar.get().booleanValue();
        }
        String strZzf = this.zzahj.zzf(str, zzaVar.getKey());
        if (TextUtils.isEmpty(strZzf)) {
            return zzaVar.get().booleanValue();
        }
        return zzaVar.get(Boolean.valueOf(Boolean.parseBoolean(strZzf))).booleanValue();
    }

    public final boolean zze(String str, zzag.zza<Boolean> zzaVar) {
        return zzd(str, zzaVar);
    }

    public final boolean zza(zzag.zza<Boolean> zzaVar) {
        return zzd(null, zzaVar);
    }

    @VisibleForTesting
    @Nullable
    final Boolean zzat(@Size(min = 1) String str) {
        Preconditions.checkNotEmpty(str);
        try {
            if (getContext().getPackageManager() == null) {
                zzgt().zzjg().zzca("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfo = Wrappers.packageManager(getContext()).getApplicationInfo(getContext().getPackageName(), 128);
            if (applicationInfo == null) {
                zzgt().zzjg().zzca("Failed to load metadata: ApplicationInfo is null");
                return null;
            }
            if (applicationInfo.metaData == null) {
                zzgt().zzjg().zzca("Failed to load metadata: Metadata bundle is null");
                return null;
            }
            if (!applicationInfo.metaData.containsKey(str)) {
                return null;
            }
            return Boolean.valueOf(applicationInfo.metaData.getBoolean(str));
        } catch (PackageManager.NameNotFoundException e) {
            zzgt().zzjg().zzg("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    public final boolean zzhz() {
        zzgw();
        Boolean boolZzat = zzat("firebase_analytics_collection_deactivated");
        return boolZzat != null && boolZzat.booleanValue();
    }

    public final Boolean zzia() {
        zzgw();
        return zzat("firebase_analytics_collection_enabled");
    }

    public static long zzib() {
        return zzag.zzakj.get().longValue();
    }

    public static long zzic() {
        return zzag.zzajj.get().longValue();
    }

    public final String zzid() {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, "debug.firebase.analytics.app", "");
        } catch (ClassNotFoundException e) {
            zzgt().zzjg().zzg("Could not find SystemProperties class", e);
            return "";
        } catch (IllegalAccessException e2) {
            zzgt().zzjg().zzg("Could not access SystemProperties.get()", e2);
            return "";
        } catch (NoSuchMethodException e3) {
            zzgt().zzjg().zzg("Could not find SystemProperties.get() method", e3);
            return "";
        } catch (InvocationTargetException e4) {
            zzgt().zzjg().zzg("SystemProperties.get() threw an exception", e4);
            return "";
        }
    }

    public static boolean zzie() {
        return zzag.zzajf.get().booleanValue();
    }

    public final boolean zzau(String str) {
        return "1".equals(this.zzahj.zzf(str, "gaia_collection_enabled"));
    }

    public final boolean zzav(String str) {
        return "1".equals(this.zzahj.zzf(str, "measurement.event_sampling_enabled"));
    }

    @WorkerThread
    final boolean zzaw(String str) {
        return zzd(str, zzag.zzakt);
    }

    @WorkerThread
    final boolean zzax(String str) {
        return zzd(str, zzag.zzakv);
    }

    @WorkerThread
    final boolean zzay(String str) {
        return zzd(str, zzag.zzakw);
    }

    @WorkerThread
    final boolean zzaz(String str) {
        return zzd(str, zzag.zzakn);
    }

    @WorkerThread
    final String zzba(String str) {
        zzag.zza<String> zzaVar = zzag.zzako;
        if (str == null) {
            return zzaVar.get();
        }
        return zzaVar.get(this.zzahj.zzf(str, zzaVar.getKey()));
    }

    final boolean zzbb(String str) {
        return zzd(str, zzag.zzakx);
    }

    @WorkerThread
    final boolean zzbc(String str) {
        return zzd(str, zzag.zzaky);
    }

    final boolean zzbd(String str) {
        return zzd(str, zzag.zzala);
    }

    @WorkerThread
    final boolean zzbe(String str) {
        return zzd(str, zzag.zzalb);
    }

    @WorkerThread
    final boolean zzbf(String str) {
        return zzd(str, zzag.zzalc);
    }

    @WorkerThread
    final boolean zzbg(String str) {
        return zzd(str, zzag.zzale);
    }

    @WorkerThread
    final boolean zzif() {
        if (this.zzahi == null) {
            this.zzahi = zzat("app_measurement_lite");
            if (this.zzahi == null) {
                this.zzahi = false;
            }
        }
        return this.zzahi.booleanValue() || !this.zzadp.zzkr();
    }

    @WorkerThread
    final boolean zzbh(String str) {
        return zzd(str, zzag.zzald);
    }

    @WorkerThread
    static boolean zzig() {
        return zzag.zzalf.get().booleanValue();
    }

    @WorkerThread
    final boolean zzbi(String str) {
        return zzd(str, zzag.zzalg);
    }

    @WorkerThread
    final boolean zzbj(String str) {
        return zzd(str, zzag.zzalh);
    }

    @WorkerThread
    final boolean zzbk(String str) {
        return zzd(str, zzag.zzali);
    }

    @WorkerThread
    final boolean zzbl(String str) {
        return zzd(str, zzag.zzalj);
    }

    @WorkerThread
    final boolean zzbm(String str) {
        return zzd(str, zzag.zzall);
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
