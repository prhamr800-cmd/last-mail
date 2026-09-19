package com.digikala.dms.core;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.LocationManager;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.support.v4.app.NotificationCompat;
import android.util.Log;
import com.digikala.dms.helper.LocationHelper;
import com.digikala.dms.helper.UserTracking;
import com.digikala.dms.helper.webservice.WebApi;
import com.digikala.dms.helper.webservice.WebApiRequest;
import com.digikala.dms.model.domain.LatLong;
import com.digikala.dms.util.Util;
import com.digikala.dms.view.activity.MainActivity;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes2.dex */
public class ForegroundService extends Service {
    public static final String CHANNEL_ID = "ForegroundServiceChannel";
    private static final float LOCATION_DISTANCE = 10.0f;
    private static final int LOCATION_INTERVAL = 1000;
    private LocationManager mLocationManager = null;
    private UserTracking userTracking;

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public int onStartCommand(final Intent intent, int flags, int startId) {
        String input = intent.getStringExtra("inputExtra");
        createNotificationChannel();
        Intent notificationIntent = new Intent(this, (Class<?>) MainActivity.class);
        PendingIntent pendingIntent = PendingIntent.getActivity(this, 0, notificationIntent, 0);
        Notification notification = new NotificationCompat.Builder(this, CHANNEL_ID).setContentTitle("Foreground Service").setContentText(input).setContentIntent(pendingIntent).build();
        startForeground(1, notification);
        final Handler handler = new Handler();
        handler.postDelayed(new Runnable() { // from class: com.digikala.dms.core.ForegroundService.1
            @Override // java.lang.Runnable
            public void run() {
                Log.e("ForegroundService", "onStartCommand!");
                if (intent != null && intent.getExtras() != null) {
                    String datetime = Util.getCurrentDateTime();
                    String packId = Util.getBatchId(ForegroundService.this.getApplicationContext());
                    LatLong latLong = LocationHelper.getLocation();
                    Log.i("Track_request", datetime + " " + latLong + " ");
                    StringBuilder sb = new StringBuilder();
                    sb.append(latLong);
                    sb.append(" ");
                    Log.i("latLongGpsService", sb.toString());
                    ForegroundService.this.userTracking = new UserTracking(packId, 1, 1);
                    ForegroundService.this.userTracking.start();
                    ForegroundService.this.mLocationManager = (LocationManager) App.getApplication().getSystemService(FirebaseAnalytics.Param.LOCATION);
                    boolean gps_enabled = ForegroundService.this.mLocationManager.isProviderEnabled("gps");
                    if (gps_enabled && NoGpsAccessActivity.getInstance() != null) {
                        NoGpsAccessActivity.getInstance().finish();
                    }
                    String battery = String.valueOf((int) ForegroundService.getBatteryLevel(App.getApplication()));
                    WebApi.postLocation(packId, latLong, datetime, battery, "", new WebApiRequest.WebApiListener<Boolean>() { // from class: com.digikala.dms.core.ForegroundService.1.1
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
        return 2;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
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

    private void createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel serviceChannel = new NotificationChannel(CHANNEL_ID, "Foreground Service Channel", 3);
            NotificationManager manager = (NotificationManager) getSystemService(NotificationManager.class);
            manager.createNotificationChannel(serviceChannel);
        }
    }
}
