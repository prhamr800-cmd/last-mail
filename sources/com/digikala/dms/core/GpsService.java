package com.digikala.dms.core;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.support.v4.app.ActivityCompat;
import android.util.Log;
import com.digikala.dms.helper.LocationHelper;
import com.digikala.dms.helper.UserTracking;
import com.digikala.dms.helper.webservice.WebApi;
import com.digikala.dms.helper.webservice.WebApiRequest;
import com.digikala.dms.model.domain.LatLong;
import com.digikala.dms.util.Util;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes.dex */
public class GpsService extends Service {
    private static final float LOCATION_DISTANCE = 10.0f;
    private static final int LOCATION_INTERVAL = 1000;
    private static final String TAG = "MyLocationService";
    private UserTracking userTracking;
    private LocationManager mLocationManager = null;
    LocationListener[] mLocationListeners = {new LocationListener("passive")};

    private class LocationListener implements android.location.LocationListener {
        Location mLastLocation;

        public LocationListener(String provider) {
            Log.e(GpsService.TAG, "LocationListener " + provider);
            this.mLastLocation = new Location(provider);
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            Log.e(GpsService.TAG, "onLocationChanged: " + location);
            this.mLastLocation.set(location);
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String provider) {
            Log.e(GpsService.TAG, "onProviderDisabled: " + provider);
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String provider) {
            Log.e(GpsService.TAG, "onProviderEnabled: " + provider);
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String provider, int status, Bundle extras) {
            Log.e(GpsService.TAG, "onStatusChanged: " + provider);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent arg0) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(final Intent intent, int flags, int startId) {
        super.onStartCommand(intent, flags, startId);
        final Handler handler = new Handler();
        handler.postDelayed(new Runnable() { // from class: com.digikala.dms.core.GpsService.1
            @Override // java.lang.Runnable
            public void run() {
                Log.e("GPSService", "onStartCommand!");
                if (intent != null && intent.getExtras() != null) {
                    String datetime = Util.getCurrentDateTime();
                    String packId = Util.getBatchId(GpsService.this.getApplicationContext());
                    LatLong latLong = LocationHelper.getLocation();
                    Log.i("Track_request", datetime + " " + latLong + " ");
                    StringBuilder sb = new StringBuilder();
                    sb.append(latLong);
                    sb.append(" ");
                    Log.i("latLongGpsService", sb.toString());
                    GpsService.this.userTracking = new UserTracking(packId, 1, 1);
                    GpsService.this.userTracking.start();
                    GpsService.this.mLocationManager = (LocationManager) App.getApplication().getSystemService(FirebaseAnalytics.Param.LOCATION);
                    boolean gps_enabled = GpsService.this.mLocationManager.isProviderEnabled("gps");
                    if (gps_enabled && NoGpsAccessActivity.getInstance() != null) {
                        NoGpsAccessActivity.getInstance().finish();
                    }
                    String battery = String.valueOf((int) GpsService.getBatteryLevel(App.getApplication()));
                    WebApi.postLocation(packId, latLong, datetime, battery, "", new WebApiRequest.WebApiListener<Boolean>() { // from class: com.digikala.dms.core.GpsService.1.1
                        @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
                        public void onResponse(Boolean response) {
                            Log.i("Track_response", response + "");
                        }

                        @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
                        public void onErrorResponse(String errorMessage) {
                            Log.e("Track_Errorresponse", errorMessage + "");
                        }
                    }, null).send();
                }
                handler.postDelayed(this, 30000L);
            }
        }, 30000L);
        return 1;
    }

    public static float getBatteryLevel(Context context) {
        Intent batteryStatus = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int batteryLevel = -1;
        int batteryScale = 1;
        if (batteryStatus != null) {
            batteryLevel = batteryStatus.getIntExtra(FirebaseAnalytics.Param.LEVEL, -1);
            batteryScale = batteryStatus.getIntExtra("scale", 1);
        }
        return (batteryLevel / batteryScale) * 100.0f;
    }

    @Override // android.app.Service
    public void onCreate() {
        initializeLocationManager();
        try {
            this.mLocationManager.requestLocationUpdates("passive", 1000L, LOCATION_DISTANCE, this.mLocationListeners[0]);
        } catch (IllegalArgumentException ex) {
            Log.d(TAG, "network provider does not exist, " + ex.getMessage());
        } catch (SecurityException ex2) {
            Log.i(TAG, "fail to request location update, ignore", ex2);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        Log.e("GPSService", "ondestroy!");
        if (this.mLocationManager != null) {
            for (int i = 0; i < this.mLocationListeners.length; i++) {
                try {
                } catch (Exception ex) {
                    Log.i(TAG, "fail to remove location listener, ignore", ex);
                }
                if (ActivityCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") != 0 && ActivityCompat.checkSelfPermission(this, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
                    return;
                }
                this.mLocationManager.removeUpdates(this.mLocationListeners[i]);
            }
        }
        Intent intent = new Intent("com.android.techtrainner");
        intent.putExtra("yourvalue", "torestore");
        sendBroadcast(intent);
    }

    private void initializeLocationManager() {
        Log.e(TAG, "initializeLocationManager - LOCATION_INTERVAL: 1000 LOCATION_DISTANCE: 10.0");
        if (this.mLocationManager == null) {
            this.mLocationManager = (LocationManager) getApplicationContext().getSystemService(FirebaseAnalytics.Param.LOCATION);
        }
    }
}
