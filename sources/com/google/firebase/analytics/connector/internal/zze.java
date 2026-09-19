package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.AppMeasurement;
import com.snowplowanalytics.snowplow.tracker.storage.EventStoreHelper;

/* JADX INFO: loaded from: classes2.dex */
final class zze implements AppMeasurement.OnEventListener {
    private final /* synthetic */ zzd zzbtq;

    public zze(zzd zzdVar) {
        this.zzbtq = zzdVar;
    }

    @Override // com.google.android.gms.measurement.AppMeasurement.OnEventListener, com.google.android.gms.measurement.internal.zzcw
    public final void onEvent(String str, String str2, Bundle bundle, long j) {
        if (this.zzbtq.zzbtn.contains(str2)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString(EventStoreHelper.TABLE_EVENTS, zzc.zzfz(str2));
            this.zzbtq.zzbto.onMessageTriggered(2, bundle2);
        }
    }
}
