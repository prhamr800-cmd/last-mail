package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Size;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzdw extends zzf {

    @VisibleForTesting
    protected zzdv zzasd;
    private volatile zzdv zzase;
    private zzdv zzasf;
    private final Map<Activity, zzdv> zzasg;
    private zzdv zzash;
    private String zzasi;

    public zzdw(zzbu zzbuVar) {
        super(zzbuVar);
        this.zzasg = new ArrayMap();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzgy() {
        return false;
    }

    @WorkerThread
    public final zzdv zzle() {
        zzcl();
        zzaf();
        return this.zzasd;
    }

    public final void setCurrentScreen(@NonNull Activity activity, @Size(max = 36, min = 1) @Nullable String str, @Size(max = 36, min = 1) @Nullable String str2) {
        if (this.zzase == null) {
            zzgt().zzjj().zzca("setCurrentScreen cannot be called while no activity active");
            return;
        }
        if (this.zzasg.get(activity) == null) {
            zzgt().zzjj().zzca("setCurrentScreen must be called with an activity in the activity lifecycle");
            return;
        }
        if (str2 == null) {
            str2 = zzcs(activity.getClass().getCanonicalName());
        }
        boolean zEquals = this.zzase.zzasa.equals(str2);
        boolean zZzv = zzfu.zzv(this.zzase.zzuw, str);
        if (zEquals && zZzv) {
            zzgt().zzjl().zzca("setCurrentScreen cannot be called with the same class and name");
            return;
        }
        if (str != null && (str.length() <= 0 || str.length() > 100)) {
            zzgt().zzjj().zzg("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            return;
        }
        if (str2 != null && (str2.length() <= 0 || str2.length() > 100)) {
            zzgt().zzjj().zzg("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str2.length()));
            return;
        }
        zzgt().zzjo().zze("Setting current screen to name, class", str == null ? "null" : str, str2);
        zzdv zzdvVar = new zzdv(str, str2, zzgr().zzmj());
        this.zzasg.put(activity, zzdvVar);
        zza(activity, zzdvVar, true);
    }

    public final zzdv zzlf() {
        zzgg();
        return this.zzase;
    }

    @MainThread
    private final void zza(Activity activity, zzdv zzdvVar, boolean z) {
        zzdv zzdvVar2 = this.zzase == null ? this.zzasf : this.zzase;
        if (zzdvVar.zzasa == null) {
            zzdvVar = new zzdv(zzdvVar.zzuw, zzcs(activity.getClass().getCanonicalName()), zzdvVar.zzasb);
        }
        this.zzasf = this.zzase;
        this.zzase = zzdvVar;
        zzgs().zzc(new zzdx(this, z, zzdvVar2, zzdvVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zza(@NonNull zzdv zzdvVar, boolean z) {
        zzgi().zzq(zzbx().elapsedRealtime());
        if (zzgo().zza(zzdvVar.zzasc, z)) {
            zzdvVar.zzasc = false;
        }
    }

    public static void zza(zzdv zzdvVar, Bundle bundle, boolean z) {
        if (bundle != null && zzdvVar != null && (!bundle.containsKey("_sc") || z)) {
            if (zzdvVar.zzuw != null) {
                bundle.putString("_sn", zzdvVar.zzuw);
            } else {
                bundle.remove("_sn");
            }
            bundle.putString("_sc", zzdvVar.zzasa);
            bundle.putLong("_si", zzdvVar.zzasb);
            return;
        }
        if (bundle != null && zzdvVar == null && z) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    @WorkerThread
    public final void zza(String str, zzdv zzdvVar) {
        zzaf();
        synchronized (this) {
            if (this.zzasi == null || this.zzasi.equals(str) || zzdvVar != null) {
                this.zzasi = str;
                this.zzash = zzdvVar;
            }
        }
    }

    @VisibleForTesting
    private static String zzcs(String str) {
        String str2;
        String[] strArrSplit = str.split("\\.");
        if (strArrSplit.length > 0) {
            str2 = strArrSplit[strArrSplit.length - 1];
        } else {
            str2 = "";
        }
        if (str2.length() > 100) {
            return str2.substring(0, 100);
        }
        return str2;
    }

    @MainThread
    private final zzdv zze(@NonNull Activity activity) {
        Preconditions.checkNotNull(activity);
        zzdv zzdvVar = this.zzasg.get(activity);
        if (zzdvVar != null) {
            return zzdvVar;
        }
        zzdv zzdvVar2 = new zzdv(null, zzcs(activity.getClass().getCanonicalName()), zzgr().zzmj());
        this.zzasg.put(activity, zzdvVar2);
        return zzdvVar2;
    }

    @MainThread
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.zzasg.put(activity, new zzdv(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    @MainThread
    public final void onActivityResumed(Activity activity) {
        zza(activity, zze(activity), false);
        zza zzaVarZzgi = zzgi();
        zzaVarZzgi.zzgs().zzc(new zzd(zzaVarZzgi, zzaVarZzgi.zzbx().elapsedRealtime()));
    }

    @MainThread
    public final void onActivityPaused(Activity activity) {
        zzdv zzdvVarZze = zze(activity);
        this.zzasf = this.zzase;
        this.zzase = null;
        zzgs().zzc(new zzdy(this, zzdvVarZze));
    }

    @MainThread
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zzdv zzdvVar;
        if (bundle == null || (zzdvVar = this.zzasg.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", zzdvVar.zzasb);
        bundle2.putString("name", zzdvVar.zzuw);
        bundle2.putString("referrer_name", zzdvVar.zzasa);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    @MainThread
    public final void onActivityDestroyed(Activity activity) {
        this.zzasg.remove(activity);
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
