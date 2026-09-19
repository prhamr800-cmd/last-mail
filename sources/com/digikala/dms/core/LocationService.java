package com.digikala.dms.core;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.digikala.dms.helper.UserTracking;
import com.digikala.dms.view.fragment.LoginFragment;

/* JADX INFO: loaded from: classes2.dex */
public class LocationService extends Service {
    public static final String TAG = UserTracking.class.getName();
    private UserTracking userTracking;

    @Override // android.app.Service
    public IBinder onBind(Intent arg0) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.i(TAG, "onStartCommand()");
        if (intent != null && intent.getExtras() != null) {
            String driverId = intent.getExtras().getString(LoginFragment.EXTRA_DRIVER_ID);
            int timeInterval = intent.getExtras().getInt(LoginFragment.EXTRA_TIME_INTERVAL);
            int distributionCenterId = intent.getExtras().getInt(LoginFragment.EXTRA_DISTRIBUTION_CENTER_ID);
            this.userTracking = new UserTracking(driverId, timeInterval, distributionCenterId);
        } else {
            this.userTracking = new UserTracking();
        }
        this.userTracking.start();
        return 1;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.userTracking.stopTracking();
    }
}
