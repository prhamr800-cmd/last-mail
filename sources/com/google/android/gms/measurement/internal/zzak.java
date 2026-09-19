package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.support.annotation.WorkerThread;
import android.support.v4.os.EnvironmentCompat;
import android.text.TextUtils;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleServices;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.InstantApps;

/* JADX INFO: loaded from: classes2.dex */
public final class zzak extends zzf {
    private String zzafx;
    private String zzage;
    private long zzagh;
    private String zzagk;
    private int zzahb;
    private int zzalv;
    private long zzalw;
    private String zztr;
    private String zzts;
    private String zztt;

    zzak(zzbu zzbuVar) {
        super(zzbuVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzgy() {
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final void zzgz() {
        String installerPackageName = EnvironmentCompat.MEDIA_UNKNOWN;
        String str = "Unknown";
        String string = "Unknown";
        String packageName = getContext().getPackageName();
        PackageManager packageManager = getContext().getPackageManager();
        int i = Integer.MIN_VALUE;
        if (packageManager == null) {
            zzgt().zzjg().zzg("PackageManager is null, app identity information might be inaccurate. appId", zzaq.zzby(packageName));
        } else {
            try {
                installerPackageName = packageManager.getInstallerPackageName(packageName);
            } catch (IllegalArgumentException e) {
                zzgt().zzjg().zzg("Error retrieving app installer package name. appId", zzaq.zzby(packageName));
            }
            if (installerPackageName == null) {
                installerPackageName = "manual_install";
            } else if ("com.android.vending".equals(installerPackageName)) {
                installerPackageName = "";
            }
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(getContext().getPackageName(), 0);
                if (packageInfo != null) {
                    CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                    if (!TextUtils.isEmpty(applicationLabel)) {
                        string = applicationLabel.toString();
                    }
                    String str2 = packageInfo.versionName;
                    try {
                        i = packageInfo.versionCode;
                        str = str2;
                    } catch (PackageManager.NameNotFoundException e2) {
                        str = str2;
                        zzgt().zzjg().zze("Error retrieving package info. appId, appName", zzaq.zzby(packageName), string);
                    }
                }
            } catch (PackageManager.NameNotFoundException e3) {
            }
        }
        this.zztt = packageName;
        this.zzage = installerPackageName;
        this.zzts = str;
        this.zzalv = i;
        this.zztr = string;
        this.zzalw = 0L;
        zzgw();
        Status statusInitialize = GoogleServices.initialize(getContext());
        boolean z = true;
        boolean z2 = (statusInitialize != null && statusInitialize.isSuccess()) | (!TextUtils.isEmpty(this.zzadp.zzko()) && "am".equals(this.zzadp.zzkp()));
        if (!z2) {
            if (statusInitialize == null) {
                zzgt().zzjg().zzca("GoogleService failed to initialize (no status)");
            } else {
                zzgt().zzjg().zze("GoogleService failed to initialize, status", Integer.valueOf(statusInitialize.getStatusCode()), statusInitialize.getStatusMessage());
            }
        }
        if (z2) {
            Boolean boolZzia = zzgv().zzia();
            if (zzgv().zzhz()) {
                if (this.zzadp.zzkn()) {
                    zzgt().zzjm().zzca("Collection disabled with firebase_analytics_collection_deactivated=1");
                }
            } else if (boolZzia != null && !boolZzia.booleanValue()) {
                if (this.zzadp.zzkn()) {
                    zzgt().zzjm().zzca("Collection disabled with firebase_analytics_collection_enabled=0");
                }
            } else if (boolZzia == null && GoogleServices.isMeasurementExplicitlyDisabled()) {
                zzgt().zzjm().zzca("Collection disabled with google_app_measurement_enable=0");
            } else {
                zzgt().zzjo().zzca("Collection enabled");
            }
            z = false;
        } else {
            z = false;
        }
        this.zzafx = "";
        this.zzagk = "";
        this.zzagh = 0L;
        zzgw();
        if (!TextUtils.isEmpty(this.zzadp.zzko()) && "am".equals(this.zzadp.zzkp())) {
            this.zzagk = this.zzadp.zzko();
        }
        try {
            String googleAppId = GoogleServices.getGoogleAppId();
            this.zzafx = TextUtils.isEmpty(googleAppId) ? "" : googleAppId;
            if (!TextUtils.isEmpty(googleAppId)) {
                this.zzagk = new StringResourceValueReader(getContext()).getString("admob_app_id");
            }
            if (z) {
                zzgt().zzjo().zze("App package, google app id", this.zztt, this.zzafx);
            }
        } catch (IllegalStateException e4) {
            zzgt().zzjg().zze("getGoogleAppId or isMeasurementEnabled failed with exception. appId", zzaq.zzby(packageName), e4);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.zzahb = InstantApps.isInstantApp(getContext()) ? 1 : 0;
        } else {
            this.zzahb = 0;
        }
    }

    @WorkerThread
    final zzi zzbu(String str) {
        String strZzjc;
        zzaf();
        zzgg();
        String strZzal = zzal();
        String gmpAppId = getGmpAppId();
        zzcl();
        String str2 = this.zzts;
        long jZzjd = zzjd();
        zzcl();
        String str3 = this.zzage;
        long jZzhh = zzgv().zzhh();
        zzcl();
        zzaf();
        if (this.zzalw == 0) {
            this.zzalw = this.zzadp.zzgr().zzd(getContext(), getContext().getPackageName());
        }
        long j = this.zzalw;
        boolean zIsEnabled = this.zzadp.isEnabled();
        boolean z = !zzgu().zzaob;
        zzaf();
        zzgg();
        if (zzgv().zzbb(this.zztt) && !this.zzadp.isEnabled()) {
            strZzjc = null;
        } else {
            strZzjc = zzjc();
        }
        String str4 = strZzjc;
        zzcl();
        long j2 = this.zzagh;
        long jZzkt = this.zzadp.zzkt();
        int iZzje = zzje();
        zzo zzoVarZzgv = zzgv();
        zzoVarZzgv.zzgg();
        Boolean boolZzat = zzoVarZzgv.zzat("google_analytics_adid_collection_enabled");
        boolean zBooleanValue = Boolean.valueOf(boolZzat == null || boolZzat.booleanValue()).booleanValue();
        zzo zzoVarZzgv2 = zzgv();
        zzoVarZzgv2.zzgg();
        Boolean boolZzat2 = zzoVarZzgv2.zzat("google_analytics_ssaid_collection_enabled");
        return new zzi(strZzal, gmpAppId, str2, jZzjd, str3, jZzhh, j, str, zIsEnabled, z, str4, j2, jZzkt, iZzje, zBooleanValue, Boolean.valueOf(boolZzat2 == null || boolZzat2.booleanValue()).booleanValue(), zzgu().zzkb(), zzhb());
    }

    @WorkerThread
    @VisibleForTesting
    private final String zzjc() {
        try {
            Class<?> clsLoadClass = getContext().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            if (clsLoadClass == null) {
                return null;
            }
            try {
                Object objInvoke = clsLoadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, getContext());
                if (objInvoke == null) {
                    return null;
                }
                try {
                    return (String) clsLoadClass.getDeclaredMethod("getFirebaseInstanceId", new Class[0]).invoke(objInvoke, new Object[0]);
                } catch (Exception e) {
                    zzgt().zzjl().zzca("Failed to retrieve Firebase Instance Id");
                    return null;
                }
            } catch (Exception e2) {
                zzgt().zzjk().zzca("Failed to obtain Firebase Analytics instance");
                return null;
            }
        } catch (ClassNotFoundException e3) {
            return null;
        }
    }

    final String zzal() {
        zzcl();
        return this.zztt;
    }

    final String getGmpAppId() {
        zzcl();
        return this.zzafx;
    }

    final String zzhb() {
        zzcl();
        return this.zzagk;
    }

    final int zzjd() {
        zzcl();
        return this.zzalv;
    }

    final int zzje() {
        zzcl();
        return this.zzahb;
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgf() {
        super.zzgf();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgg() {
        super.zzgg();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzgh() {
        super.zzgh();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzcp
    public final /* bridge */ /* synthetic */ void zzaf() {
        super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zza zzgi() {
        return super.zzgi();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzcy zzgj() {
        return super.zzgj();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzak zzgk() {
        return super.zzgk();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzdz zzgl() {
        return super.zzgl();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzdw zzgm() {
        return super.zzgm();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzam zzgn() {
        return super.zzgn();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzez zzgo() {
        return super.zzgo();
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
