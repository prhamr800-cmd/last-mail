package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.MainThread;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(14)
@MainThread
final class zzds implements Application.ActivityLifecycleCallbacks {
    private final /* synthetic */ zzcy zzarr;

    private zzds(zzcy zzcyVar) {
        this.zzarr = zzcyVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Uri data;
        boolean z;
        String str;
        try {
            this.zzarr.zzgt().zzjo().zzca("onActivityCreated");
            Intent intent = activity.getIntent();
            if (intent != null && (data = intent.getData()) != null && data.isHierarchical()) {
                if (bundle == null) {
                    Bundle bundleZza = this.zzarr.zzgr().zza(data);
                    this.zzarr.zzgr();
                    if (zzfu.zzd(intent)) {
                        str = "gs";
                    } else {
                        str = "auto";
                    }
                    if (bundleZza != null) {
                        this.zzarr.logEvent(str, "_cmp", bundleZza);
                    }
                }
                String queryParameter = data.getQueryParameter("referrer");
                if (TextUtils.isEmpty(queryParameter)) {
                    return;
                }
                if (!queryParameter.contains("gclid") || (!queryParameter.contains("utm_campaign") && !queryParameter.contains("utm_source") && !queryParameter.contains("utm_medium") && !queryParameter.contains("utm_term") && !queryParameter.contains("utm_content"))) {
                    z = false;
                } else {
                    z = true;
                }
                if (!z) {
                    this.zzarr.zzgt().zzjn().zzca("Activity created with data 'referrer' param without gclid and at least one utm field");
                    return;
                } else {
                    this.zzarr.zzgt().zzjn().zzg("Activity created with referrer", queryParameter);
                    if (!TextUtils.isEmpty(queryParameter)) {
                        this.zzarr.zzb("auto", "_ldl", (Object) queryParameter, true);
                    }
                }
            }
        } catch (Exception e) {
            this.zzarr.zzgt().zzjg().zzg("Throwable caught in onActivityCreated", e);
        }
        this.zzarr.zzgm().onActivityCreated(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.zzarr.zzgm().onActivityDestroyed(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @MainThread
    public final void onActivityPaused(Activity activity) {
        this.zzarr.zzgm().onActivityPaused(activity);
        zzez zzezVarZzgo = this.zzarr.zzgo();
        zzezVarZzgo.zzgs().zzc(new zzfe(zzezVarZzgo, zzezVarZzgo.zzbx().elapsedRealtime()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @MainThread
    public final void onActivityResumed(Activity activity) {
        this.zzarr.zzgm().onActivityResumed(activity);
        zzez zzezVarZzgo = this.zzarr.zzgo();
        zzezVarZzgo.zzgs().zzc(new zzfd(zzezVarZzgo, zzezVarZzgo.zzbx().elapsedRealtime()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.zzarr.zzgm().onActivitySaveInstanceState(activity, bundle);
    }

    /* synthetic */ zzds(zzcy zzcyVar, zzcz zzczVar) {
        this(zzcyVar);
    }
}
