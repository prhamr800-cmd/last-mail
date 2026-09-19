package com.digikala.dms.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.location.LocationManager;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes2.dex */
public class GpsLocationReceiver extends BroadcastReceiver {
    boolean gps_enabled = false;
    private LocationManager mLocationManager;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && context != null && intent.getAction().matches("android.location.PROVIDERS_CHANGED")) {
            this.mLocationManager = (LocationManager) App.getApplication().getSystemService(FirebaseAnalytics.Param.LOCATION);
            this.gps_enabled = this.mLocationManager.isProviderEnabled("gps");
            if (!this.gps_enabled) {
                Intent pushIntent = new Intent(context, (Class<?>) NoGpsAccessActivity.class);
                pushIntent.setFlags(268435456);
                context.startActivity(pushIntent);
            } else if (NoGpsAccessActivity.getInstance() != null) {
                NoGpsAccessActivity.getInstance().finish();
            }
        }
    }
}
