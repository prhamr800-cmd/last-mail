package com.digikala.dms.helper;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityCompat;
import android.util.Log;
import com.digikala.dms.core.App;
import com.digikala.dms.helper.fabric.answers.AnswersHelper;
import com.digikala.dms.helper.firebase.analytics.AnalyticHelper;
import com.digikala.dms.model.domain.LatLong;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes.dex */
public class UserTracking implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    private static final int REQUEST_LOCATION_ = 1;
    private static Location locationForService;
    private static Location mLastLocation;
    private FusedLocationProviderClient fusedLocationClient;
    private Context mContext;
    private String mDeliveryId;
    private int mDistributionPointId;
    private GoogleApiClient mGoogleApiClient;
    private LocationManager mLocationManager;
    private LocationRequest mLocationRequest;
    private int mTimeInterval;
    private String networkOrGPS;
    public static final String TAG = UserTracking.class.getName();
    public static final String TAG_REQUEST = UserTracking.class.getSimpleName();
    private static String[] PERMISSIONS_Location = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"};
    boolean gps_enabled = false;
    boolean network_enabled = false;

    public UserTracking() {
    }

    public UserTracking(String deliveryId, int timeInterval, int distributionCenterId) {
        this.mDeliveryId = deliveryId;
        this.mTimeInterval = timeInterval == 0 ? 7000 : timeInterval;
        this.mDistributionPointId = distributionCenterId;
    }

    public void start() {
        setGoogleApi();
        this.mLocationManager = (LocationManager) App.getApplication().getSystemService(FirebaseAnalytics.Param.LOCATION);
        this.gps_enabled = this.mLocationManager.isProviderEnabled("gps");
        this.network_enabled = this.mLocationManager.isProviderEnabled("network");
    }

    private void startTracking() {
        if (this.mGoogleApiClient != null && this.mGoogleApiClient.isConnected()) {
            startLocationUpdates();
        }
    }

    public void stopTracking() {
        AnswersHelper.locationServiceStop("stopTracking");
        AnalyticHelper.locationServiceStop("stopTracking");
        stopLocationUpdates();
        if (this.mGoogleApiClient.isConnected()) {
            this.mGoogleApiClient.disconnect();
        }
    }

    private void connectToGoogleApiClient() {
        if (this.mGoogleApiClient != null && !this.mGoogleApiClient.isConnected()) {
            this.mGoogleApiClient.connect();
        }
    }

    private void disconnectGoogleApiClient() {
        if (this.mGoogleApiClient != null && this.mGoogleApiClient.isConnected()) {
            this.mGoogleApiClient.disconnect();
        }
    }

    private void setGoogleApi() {
        this.mGoogleApiClient = new GoogleApiClient.Builder(App.getApplication()).addConnectionCallbacks(this).addOnConnectionFailedListener(this).addApi(LocationServices.API).build();
        connectToGoogleApiClient();
    }

    private void createLocationRequest() {
        this.mLocationRequest = new LocationRequest();
        this.mLocationRequest.setInterval(this.mTimeInterval);
        this.mLocationRequest.setFastestInterval(this.mTimeInterval);
        this.mLocationRequest.setPriority(100);
    }

    private void startLocationUpdates() {
        createLocationRequest();
        if (ActivityCompat.checkSelfPermission(App.getApplication(), "android.permission.ACCESS_FINE_LOCATION") != 0 && ActivityCompat.checkSelfPermission(App.getApplication(), "android.permission.ACCESS_COARSE_LOCATION") != 0) {
            return;
        }
        if (this.gps_enabled || !this.network_enabled) {
        }
        try {
            if (this.network_enabled) {
                this.networkOrGPS = "network";
            } else {
                this.networkOrGPS = "gps";
            }
            this.mLocationManager.requestLocationUpdates(this.networkOrGPS, 0L, 0.0f, new LocationListener() { // from class: com.digikala.dms.helper.UserTracking.1
                @Override // android.location.LocationListener
                public void onLocationChanged(Location location) {
                    Location unused = UserTracking.locationForService = location;
                    Log.e("lattlong", location.getLatitude() + "");
                }

                @Override // android.location.LocationListener
                public void onStatusChanged(String provider, int status, Bundle extras) {
                }

                @Override // android.location.LocationListener
                public void onProviderEnabled(String provider) {
                }

                @Override // android.location.LocationListener
                public void onProviderDisabled(String provider) {
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void stopLocationUpdates() {
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnected(@Nullable Bundle bundle) {
        if (ActivityCompat.checkSelfPermission(App.getApplication(), "android.permission.ACCESS_FINE_LOCATION") != 0 && ActivityCompat.checkSelfPermission(App.getApplication(), "android.permission.ACCESS_COARSE_LOCATION") != 0) {
            return;
        }
        startTracking();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
    }

    static LatLong getLatLong() {
        if (locationForService != null) {
            LatLong latLong = new LatLong(locationForService.getLatitude(), locationForService.getLongitude());
            return latLong;
        }
        if (mLastLocation != null) {
            LatLong latLong2 = new LatLong(mLastLocation.getLatitude(), mLastLocation.getLongitude());
            return latLong2;
        }
        return null;
    }
}
