package com.digikala.dms.helper;

import android.location.Location;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import com.digikala.dms.core.App;
import com.digikala.dms.model.domain.LatLong;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationServices;

/* JADX INFO: loaded from: classes2.dex */
public class LocationHelper {
    private static GoogleApiClient sGoogleApiClient;
    private static OnLocationReceivedListener sOnLocationReceivedListener;
    private static final GoogleApiClient.ConnectionCallbacks sConnectionCallbacks = new GoogleApiClient.ConnectionCallbacks() { // from class: com.digikala.dms.helper.LocationHelper.1
        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnected(Bundle bundle) {
            Location mLastLocation;
            if ((ActivityCompat.checkSelfPermission(App.getApplication().getApplicationContext(), "android.permission.ACCESS_FINE_LOCATION") == 0 || ActivityCompat.checkSelfPermission(App.getApplication().getApplicationContext(), "android.permission.ACCESS_COARSE_LOCATION") == 0) && (mLastLocation = LocationServices.FusedLocationApi.getLastLocation(LocationHelper.sGoogleApiClient)) != null) {
                LocationHelper.sOnLocationReceivedListener.locationReceived(new LatLong(mLastLocation.getLatitude(), mLastLocation.getLongitude()));
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnectionSuspended(int i) {
        }
    };
    private static final GoogleApiClient.OnConnectionFailedListener sOnConnectionFailedListener = new GoogleApiClient.OnConnectionFailedListener() { // from class: com.digikala.dms.helper.LocationHelper.2
        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public void onConnectionFailed(ConnectionResult connectionResult) {
        }
    };

    public interface OnLocationReceivedListener {
        void locationReceived(LatLong latLong);
    }

    public static synchronized void setOnLocationReceivedListener(OnLocationReceivedListener onLocationReceivedListener) {
        sOnLocationReceivedListener = onLocationReceivedListener;
        createGoogleApiClient(sConnectionCallbacks, sOnConnectionFailedListener);
    }

    public static synchronized void connectToGoogleApi() {
        try {
            sGoogleApiClient.connect();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static synchronized void disconnectFromGoogleApi() {
        if (sGoogleApiClient != null && sGoogleApiClient.isConnected()) {
            sGoogleApiClient.disconnect();
        }
    }

    private static synchronized void createGoogleApiClient(GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        if (sGoogleApiClient == null) {
            sGoogleApiClient = new GoogleApiClient.Builder(App.getApplication().getApplicationContext()).addConnectionCallbacks(connectionCallbacks).addOnConnectionFailedListener(onConnectionFailedListener).addApi(LocationServices.API).build();
        }
    }

    public static LatLong getLocation() {
        return UserTracking.getLatLong();
    }
}
