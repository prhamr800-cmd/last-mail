package com.google.firebase.analytics.connector.internal;

import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class zzf implements zza {
    private AppMeasurement zzbtb;
    private AnalyticsConnector.AnalyticsConnectorListener zzbto;
    private zzg zzbtr = new zzg(this);

    public zzf(AppMeasurement appMeasurement, AnalyticsConnector.AnalyticsConnectorListener analyticsConnectorListener) {
        this.zzbto = analyticsConnectorListener;
        this.zzbtb = appMeasurement;
        this.zzbtb.registerOnMeasurementEventListener(this.zzbtr);
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final AnalyticsConnector.AnalyticsConnectorListener zztv() {
        return this.zzbto;
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final void registerEventNames(Set<String> set) {
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final void unregisterEventNames() {
    }
}
