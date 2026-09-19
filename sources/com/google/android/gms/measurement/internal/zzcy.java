package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.gms.common.api.internal.GoogleServices;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.measurement.AppMeasurement;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class zzcy extends zzf {

    @VisibleForTesting
    protected zzds zzark;
    private zzcv zzarl;
    private final Set<zzcw> zzarm;
    private boolean zzarn;
    private final AtomicReference<String> zzaro;

    @VisibleForTesting
    protected boolean zzarp;

    protected zzcy(zzbu zzbuVar) {
        super(zzbuVar);
        this.zzarm = new CopyOnWriteArraySet();
        this.zzarp = true;
        this.zzaro = new AtomicReference<>();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzgy() {
        return false;
    }

    public final void zzkw() {
        if (getContext().getApplicationContext() instanceof Application) {
            ((Application) getContext().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.zzark);
        }
    }

    public final Boolean zzkx() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) zzgs().zza(atomicReference, 15000L, "boolean test flag value", new zzcz(this, atomicReference));
    }

    public final String zzky() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) zzgs().zza(atomicReference, 15000L, "String test flag value", new zzdj(this, atomicReference));
    }

    public final Long zzkz() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) zzgs().zza(atomicReference, 15000L, "long test flag value", new zzdl(this, atomicReference));
    }

    public final Integer zzla() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) zzgs().zza(atomicReference, 15000L, "int test flag value", new zzdm(this, atomicReference));
    }

    public final Double zzlb() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) zzgs().zza(atomicReference, 15000L, "double test flag value", new zzdn(this, atomicReference));
    }

    public final void setMeasurementEnabled(boolean z) {
        zzcl();
        zzgg();
        zzgs().zzc(new zzdo(this, z));
    }

    public final void zzd(boolean z) {
        zzcl();
        zzgg();
        zzgs().zzc(new zzdp(this, z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzj(boolean z) {
        zzaf();
        zzgg();
        zzcl();
        zzgt().zzjn().zzg("Setting app measurement enabled (FE)", Boolean.valueOf(z));
        zzgu().setMeasurementEnabled(z);
        zzlc();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzlc() {
        if (zzgv().zzbc(zzgk().zzal()) && this.zzadp.isEnabled() && this.zzarp) {
            zzgt().zzjn().zzca("Recording app launch after enabling measurement for the first time (FE)");
            zzld();
        } else {
            zzgt().zzjn().zzca("Updating Scion state (FE)");
            zzgl().zzlg();
        }
    }

    public final void setMinimumSessionDuration(long j) {
        zzgg();
        zzgs().zzc(new zzdq(this, j));
    }

    public final void setSessionTimeoutDuration(long j) {
        zzgg();
        zzgs().zzc(new zzdr(this, j));
    }

    public final void zza(String str, String str2, Bundle bundle, boolean z) {
        logEvent(str, str2, bundle, false, true, zzbx().currentTimeMillis());
    }

    public final void logEvent(String str, String str2, Bundle bundle) {
        logEvent(str, str2, bundle, true, true, zzbx().currentTimeMillis());
    }

    @WorkerThread
    final void zza(String str, String str2, Bundle bundle) {
        zzgg();
        zzaf();
        zza(str, str2, zzbx().currentTimeMillis(), bundle);
    }

    @WorkerThread
    final void zza(String str, String str2, long j, Bundle bundle) {
        zzgg();
        zzaf();
        zza(str, str2, j, bundle, true, this.zzarl == null || zzfu.zzda(str2), false, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0095  */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(java.lang.String r29, java.lang.String r30, long r31, android.os.Bundle r33, boolean r34, boolean r35, boolean r36, java.lang.String r37) {
        /*
            Method dump skipped, instruction units count: 1056
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzcy.zza(java.lang.String, java.lang.String, long, android.os.Bundle, boolean, boolean, boolean, java.lang.String):void");
    }

    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        zzgg();
        zzb(str == null ? SettingsJsonConstants.APP_KEY : str, str2, j, bundle == null ? new Bundle() : bundle, z2, !z2 || this.zzarl == null || zzfu.zzda(str2), !z, null);
    }

    private final void zzb(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        zzgs().zzc(new zzda(this, str, str2, j, zzfu.zzf(bundle), z, z2, z3, str3));
    }

    public final void zzb(String str, String str2, Object obj, boolean z) {
        zza(str, str2, obj, z, zzbx().currentTimeMillis());
    }

    public final void zza(String str, String str2, Object obj, boolean z, long j) {
        if (str == null) {
            str = SettingsJsonConstants.APP_KEY;
        }
        String str3 = str;
        int iZzcx = 6;
        if (z) {
            iZzcx = zzgr().zzcx(str2);
        } else {
            zzfu zzfuVarZzgr = zzgr();
            if (zzfuVarZzgr.zzs("user property", str2)) {
                if (!zzfuVarZzgr.zza("user property", zzcu.zzarh, str2)) {
                    iZzcx = 15;
                } else if (zzfuVarZzgr.zza("user property", 24, str2)) {
                    iZzcx = 0;
                }
            }
        }
        if (iZzcx != 0) {
            zzgr();
            this.zzadp.zzgr().zza(iZzcx, "_ev", zzfu.zza(str2, 24, true), str2 != null ? str2.length() : 0);
            return;
        }
        if (obj != null) {
            int iZzi = zzgr().zzi(str2, obj);
            if (iZzi != 0) {
                zzgr();
                this.zzadp.zzgr().zza(iZzi, "_ev", zzfu.zza(str2, 24, true), ((obj instanceof String) || (obj instanceof CharSequence)) ? String.valueOf(obj).length() : 0);
                return;
            } else {
                Object objZzj = zzgr().zzj(str2, obj);
                if (objZzj != null) {
                    zza(str3, str2, j, objZzj);
                    return;
                }
                return;
            }
        }
        zza(str3, str2, j, (Object) null);
    }

    private final void zza(String str, String str2, long j, Object obj) {
        zzgs().zzc(new zzdb(this, str, str2, obj, j));
    }

    @WorkerThread
    final void zza(String str, String str2, Object obj, long j) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzaf();
        zzgg();
        zzcl();
        if (!this.zzadp.isEnabled()) {
            zzgt().zzjn().zzca("User property not set since app measurement is disabled");
        } else {
            if (!this.zzadp.zzkv()) {
                return;
            }
            zzgt().zzjn().zze("Setting user property (FE)", zzgq().zzbv(str2), obj);
            zzgl().zzb(new zzfr(str2, j, obj, str));
        }
    }

    public final List<zzfr> zzk(boolean z) {
        zzgg();
        zzcl();
        zzgt().zzjn().zzca("Fetching user attributes (FE)");
        if (zzgs().zzkf()) {
            zzgt().zzjg().zzca("Cannot get all user properties from analytics worker thread");
            return Collections.emptyList();
        }
        if (zzl.isMainThread()) {
            zzgt().zzjg().zzca("Cannot get all user properties from main thread");
            return Collections.emptyList();
        }
        AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            this.zzadp.zzgs().zzc(new zzdc(this, atomicReference, z));
            try {
                atomicReference.wait(5000L);
            } catch (InterruptedException e) {
                zzgt().zzjj().zzg("Interrupted waiting for get user properties", e);
            }
        }
        List<zzfr> list = (List) atomicReference.get();
        if (list == null) {
            zzgt().zzjj().zzca("Timed out waiting for get user properties");
            return Collections.emptyList();
        }
        return list;
    }

    @Nullable
    public final String zzgc() {
        zzgg();
        return this.zzaro.get();
    }

    @Nullable
    public final String zzak(long j) {
        if (zzgs().zzkf()) {
            zzgt().zzjg().zzca("Cannot retrieve app instance id from analytics worker thread");
            return null;
        }
        if (zzl.isMainThread()) {
            zzgt().zzjg().zzca("Cannot retrieve app instance id from main thread");
            return null;
        }
        long jElapsedRealtime = zzbx().elapsedRealtime();
        String strZzal = zzal(120000L);
        long jElapsedRealtime2 = zzbx().elapsedRealtime() - jElapsedRealtime;
        if (strZzal == null && jElapsedRealtime2 < 120000) {
            return zzal(120000 - jElapsedRealtime2);
        }
        return strZzal;
    }

    final void zzcr(@Nullable String str) {
        this.zzaro.set(str);
    }

    @Nullable
    private final String zzal(long j) {
        AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            zzgs().zzc(new zzdd(this, atomicReference));
            try {
                atomicReference.wait(j);
            } catch (InterruptedException e) {
                zzgt().zzjj().zzca("Interrupted waiting for app instance id");
                return null;
            }
        }
        return (String) atomicReference.get();
    }

    public final void resetAnalyticsData(long j) {
        if (zzgv().zza(zzag.zzaln)) {
            zzcr(null);
        }
        zzgs().zzc(new zzde(this, j));
    }

    @WorkerThread
    public final void zzld() {
        zzaf();
        zzgg();
        zzcl();
        if (!this.zzadp.zzkv()) {
            return;
        }
        zzgl().zzld();
        this.zzarp = false;
        String strZzka = zzgu().zzka();
        if (!TextUtils.isEmpty(strZzka)) {
            zzgp().zzcl();
            if (!strZzka.equals(Build.VERSION.RELEASE)) {
                Bundle bundle = new Bundle();
                bundle.putString("_po", strZzka);
                logEvent("auto", "_ou", bundle);
            }
        }
    }

    @WorkerThread
    public final void zza(zzcv zzcvVar) {
        zzaf();
        zzgg();
        zzcl();
        if (zzcvVar != null && zzcvVar != this.zzarl) {
            Preconditions.checkState(this.zzarl == null, "EventInterceptor already set.");
        }
        this.zzarl = zzcvVar;
    }

    public final void zza(zzcw zzcwVar) {
        zzgg();
        zzcl();
        Preconditions.checkNotNull(zzcwVar);
        if (!this.zzarm.add(zzcwVar)) {
            zzgt().zzjj().zzca("OnEventListener already registered");
        }
    }

    public final void zzb(zzcw zzcwVar) {
        zzgg();
        zzcl();
        Preconditions.checkNotNull(zzcwVar);
        if (!this.zzarm.remove(zzcwVar)) {
            zzgt().zzjj().zzca("OnEventListener had not been registered");
        }
    }

    public final void setConditionalUserProperty(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        Preconditions.checkNotNull(conditionalUserProperty);
        zzgg();
        AppMeasurement.ConditionalUserProperty conditionalUserProperty2 = new AppMeasurement.ConditionalUserProperty(conditionalUserProperty);
        if (!TextUtils.isEmpty(conditionalUserProperty2.mAppId)) {
            zzgt().zzjj().zzca("Package name should be null when calling setConditionalUserProperty");
        }
        conditionalUserProperty2.mAppId = null;
        zza(conditionalUserProperty2);
    }

    public final void setConditionalUserPropertyAs(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        Preconditions.checkNotNull(conditionalUserProperty);
        Preconditions.checkNotEmpty(conditionalUserProperty.mAppId);
        zzgf();
        zza(new AppMeasurement.ConditionalUserProperty(conditionalUserProperty));
    }

    private final void zza(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        long jCurrentTimeMillis = zzbx().currentTimeMillis();
        Preconditions.checkNotNull(conditionalUserProperty);
        Preconditions.checkNotEmpty(conditionalUserProperty.mName);
        Preconditions.checkNotEmpty(conditionalUserProperty.mOrigin);
        Preconditions.checkNotNull(conditionalUserProperty.mValue);
        conditionalUserProperty.mCreationTimestamp = jCurrentTimeMillis;
        String str = conditionalUserProperty.mName;
        Object obj = conditionalUserProperty.mValue;
        if (zzgr().zzcx(str) != 0) {
            zzgt().zzjg().zzg("Invalid conditional user property name", zzgq().zzbx(str));
            return;
        }
        if (zzgr().zzi(str, obj) != 0) {
            zzgt().zzjg().zze("Invalid conditional user property value", zzgq().zzbx(str), obj);
            return;
        }
        Object objZzj = zzgr().zzj(str, obj);
        if (objZzj == null) {
            zzgt().zzjg().zze("Unable to normalize conditional user property value", zzgq().zzbx(str), obj);
            return;
        }
        conditionalUserProperty.mValue = objZzj;
        long j = conditionalUserProperty.mTriggerTimeout;
        if (!TextUtils.isEmpty(conditionalUserProperty.mTriggerEventName) && (j > 15552000000L || j < 1)) {
            zzgt().zzjg().zze("Invalid conditional user property timeout", zzgq().zzbx(str), Long.valueOf(j));
            return;
        }
        long j2 = conditionalUserProperty.mTimeToLive;
        if (j2 > 15552000000L || j2 < 1) {
            zzgt().zzjg().zze("Invalid conditional user property time to live", zzgq().zzbx(str), Long.valueOf(j2));
        } else {
            zzgs().zzc(new zzdg(this, conditionalUserProperty));
        }
    }

    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        zzgg();
        zza((String) null, str, str2, bundle);
    }

    public final void clearConditionalUserPropertyAs(String str, String str2, String str3, Bundle bundle) {
        Preconditions.checkNotEmpty(str);
        zzgf();
        zza(str, str2, str3, bundle);
    }

    private final void zza(String str, String str2, String str3, Bundle bundle) {
        long jCurrentTimeMillis = zzbx().currentTimeMillis();
        Preconditions.checkNotEmpty(str2);
        AppMeasurement.ConditionalUserProperty conditionalUserProperty = new AppMeasurement.ConditionalUserProperty();
        conditionalUserProperty.mAppId = str;
        conditionalUserProperty.mName = str2;
        conditionalUserProperty.mCreationTimestamp = jCurrentTimeMillis;
        if (str3 != null) {
            conditionalUserProperty.mExpiredEventName = str3;
            conditionalUserProperty.mExpiredEventParams = bundle;
        }
        zzgs().zzc(new zzdh(this, conditionalUserProperty));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzb(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        zzaf();
        zzcl();
        Preconditions.checkNotNull(conditionalUserProperty);
        Preconditions.checkNotEmpty(conditionalUserProperty.mName);
        Preconditions.checkNotEmpty(conditionalUserProperty.mOrigin);
        Preconditions.checkNotNull(conditionalUserProperty.mValue);
        if (!this.zzadp.isEnabled()) {
            zzgt().zzjn().zzca("Conditional property not sent since collection is disabled");
            return;
        }
        zzfr zzfrVar = new zzfr(conditionalUserProperty.mName, conditionalUserProperty.mTriggeredTimestamp, conditionalUserProperty.mValue, conditionalUserProperty.mOrigin);
        try {
            zzae zzaeVarZza = zzgr().zza(conditionalUserProperty.mAppId, conditionalUserProperty.mTriggeredEventName, conditionalUserProperty.mTriggeredEventParams, conditionalUserProperty.mOrigin, 0L, true, false);
            zzgl().zzd(new zzm(conditionalUserProperty.mAppId, conditionalUserProperty.mOrigin, zzfrVar, conditionalUserProperty.mCreationTimestamp, false, conditionalUserProperty.mTriggerEventName, zzgr().zza(conditionalUserProperty.mAppId, conditionalUserProperty.mTimedOutEventName, conditionalUserProperty.mTimedOutEventParams, conditionalUserProperty.mOrigin, 0L, true, false), conditionalUserProperty.mTriggerTimeout, zzaeVarZza, conditionalUserProperty.mTimeToLive, zzgr().zza(conditionalUserProperty.mAppId, conditionalUserProperty.mExpiredEventName, conditionalUserProperty.mExpiredEventParams, conditionalUserProperty.mOrigin, 0L, true, false)));
        } catch (IllegalArgumentException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzc(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        zzaf();
        zzcl();
        Preconditions.checkNotNull(conditionalUserProperty);
        Preconditions.checkNotEmpty(conditionalUserProperty.mName);
        if (!this.zzadp.isEnabled()) {
            zzgt().zzjn().zzca("Conditional property not cleared since collection is disabled");
            return;
        }
        try {
            zzgl().zzd(new zzm(conditionalUserProperty.mAppId, conditionalUserProperty.mOrigin, new zzfr(conditionalUserProperty.mName, 0L, null, null), conditionalUserProperty.mCreationTimestamp, conditionalUserProperty.mActive, conditionalUserProperty.mTriggerEventName, null, conditionalUserProperty.mTriggerTimeout, null, conditionalUserProperty.mTimeToLive, zzgr().zza(conditionalUserProperty.mAppId, conditionalUserProperty.mExpiredEventName, conditionalUserProperty.mExpiredEventParams, conditionalUserProperty.mOrigin, conditionalUserProperty.mCreationTimestamp, true, false)));
        } catch (IllegalArgumentException e) {
        }
    }

    public final List<AppMeasurement.ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        zzgg();
        return zzf(null, str, str2);
    }

    public final List<AppMeasurement.ConditionalUserProperty> getConditionalUserPropertiesAs(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zzgf();
        return zzf(str, str2, str3);
    }

    @VisibleForTesting
    private final List<AppMeasurement.ConditionalUserProperty> zzf(String str, String str2, String str3) {
        if (zzgs().zzkf()) {
            zzgt().zzjg().zzca("Cannot get conditional user properties from analytics worker thread");
            return Collections.emptyList();
        }
        if (zzl.isMainThread()) {
            zzgt().zzjg().zzca("Cannot get conditional user properties from main thread");
            return Collections.emptyList();
        }
        AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            this.zzadp.zzgs().zzc(new zzdi(this, atomicReference, str, str2, str3));
            try {
                atomicReference.wait(5000L);
            } catch (InterruptedException e) {
                zzgt().zzjj().zze("Interrupted waiting for get conditional user properties", str, e);
            }
        }
        List<zzm> list = (List) atomicReference.get();
        if (list == null) {
            zzgt().zzjj().zzg("Timed out waiting for get conditional user properties", str);
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (zzm zzmVar : list) {
            AppMeasurement.ConditionalUserProperty conditionalUserProperty = new AppMeasurement.ConditionalUserProperty();
            conditionalUserProperty.mAppId = zzmVar.packageName;
            conditionalUserProperty.mOrigin = zzmVar.origin;
            conditionalUserProperty.mCreationTimestamp = zzmVar.creationTimestamp;
            conditionalUserProperty.mName = zzmVar.zzahe.name;
            conditionalUserProperty.mValue = zzmVar.zzahe.getValue();
            conditionalUserProperty.mActive = zzmVar.active;
            conditionalUserProperty.mTriggerEventName = zzmVar.triggerEventName;
            if (zzmVar.zzahf != null) {
                conditionalUserProperty.mTimedOutEventName = zzmVar.zzahf.name;
                if (zzmVar.zzahf.zzaig != null) {
                    conditionalUserProperty.mTimedOutEventParams = zzmVar.zzahf.zzaig.zziy();
                }
            }
            conditionalUserProperty.mTriggerTimeout = zzmVar.triggerTimeout;
            if (zzmVar.zzahg != null) {
                conditionalUserProperty.mTriggeredEventName = zzmVar.zzahg.name;
                if (zzmVar.zzahg.zzaig != null) {
                    conditionalUserProperty.mTriggeredEventParams = zzmVar.zzahg.zzaig.zziy();
                }
            }
            conditionalUserProperty.mTriggeredTimestamp = zzmVar.zzahe.zzaux;
            conditionalUserProperty.mTimeToLive = zzmVar.timeToLive;
            if (zzmVar.zzahh != null) {
                conditionalUserProperty.mExpiredEventName = zzmVar.zzahh.name;
                if (zzmVar.zzahh.zzaig != null) {
                    conditionalUserProperty.mExpiredEventParams = zzmVar.zzahh.zzaig.zziy();
                }
            }
            arrayList.add(conditionalUserProperty);
        }
        return arrayList;
    }

    public final Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        zzgg();
        return zzb((String) null, str, str2, z);
    }

    public final Map<String, Object> getUserPropertiesAs(String str, String str2, String str3, boolean z) {
        Preconditions.checkNotEmpty(str);
        zzgf();
        return zzb(str, str2, str3, z);
    }

    @VisibleForTesting
    private final Map<String, Object> zzb(String str, String str2, String str3, boolean z) {
        if (zzgs().zzkf()) {
            zzgt().zzjg().zzca("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        }
        if (zzl.isMainThread()) {
            zzgt().zzjg().zzca("Cannot get user properties from main thread");
            return Collections.emptyMap();
        }
        AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            this.zzadp.zzgs().zzc(new zzdk(this, atomicReference, str, str2, str3, z));
            try {
                atomicReference.wait(5000L);
            } catch (InterruptedException e) {
                zzgt().zzjj().zzg("Interrupted waiting for get user properties", e);
            }
        }
        List<zzfr> list = (List) atomicReference.get();
        if (list == null) {
            zzgt().zzjj().zzca("Timed out waiting for get user properties");
            return Collections.emptyMap();
        }
        ArrayMap arrayMap = new ArrayMap(list.size());
        for (zzfr zzfrVar : list) {
            arrayMap.put(zzfrVar.name, zzfrVar.getValue());
        }
        return arrayMap;
    }

    @Nullable
    public final String getCurrentScreenName() {
        zzdv zzdvVarZzlf = this.zzadp.zzgm().zzlf();
        if (zzdvVarZzlf != null) {
            return zzdvVarZzlf.zzuw;
        }
        return null;
    }

    @Nullable
    public final String getCurrentScreenClass() {
        zzdv zzdvVarZzlf = this.zzadp.zzgm().zzlf();
        if (zzdvVarZzlf != null) {
            return zzdvVarZzlf.zzasa;
        }
        return null;
    }

    @Nullable
    public final String getGmpAppId() {
        if (this.zzadp.zzko() != null) {
            return this.zzadp.zzko();
        }
        try {
            return GoogleServices.getGoogleAppId();
        } catch (IllegalStateException e) {
            this.zzadp.zzgt().zzjg().zzg("getGoogleAppId failed with exception", e);
            return null;
        }
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
