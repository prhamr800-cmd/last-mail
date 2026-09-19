package com.google.firebase.analytics.connector.internal;

import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class zzd implements zza {
    private AppMeasurement zzbtb;
    Set<String> zzbtn;
    private AnalyticsConnector.AnalyticsConnectorListener zzbto;
    private zze zzbtp = new zze(this);

    public zzd(AppMeasurement appMeasurement, AnalyticsConnector.AnalyticsConnectorListener analyticsConnectorListener) {
        this.zzbto = analyticsConnectorListener;
        this.zzbtb = appMeasurement;
        this.zzbtb.registerOnMeasurementEventListener(this.zzbtp);
        this.zzbtn = new HashSet();
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final AnalyticsConnector.AnalyticsConnectorListener zztv() {
        return this.zzbto;
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final void registerEventNames(Set<String> set) {
        this.zzbtn.clear();
        Set<String> set2 = this.zzbtn;
        HashSet hashSet = new HashSet();
        for (String str : set) {
            if (hashSet.size() >= 50) {
                break;
            } else if (zzc.zzfy(str) && zzc.zzfx(str)) {
                hashSet.add(zzc.zzga(str));
            }
        }
        set2.addAll(hashSet);
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final void unregisterEventNames() {
        this.zzbtn.clear();
    }
}
