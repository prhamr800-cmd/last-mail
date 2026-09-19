package com.digikala.dms.view.fragment;

import android.content.IntentSender;
import android.location.Location;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.InflateException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import com.digikala.dms.R;
import com.digikala.dms.core.App;
import com.digikala.dms.helper.fabric.answers.AnswersHelper;
import com.digikala.dms.helper.firebase.analytics.AnalyticHelper;
import com.digikala.dms.helper.webservice.MCXIAOKEJsonObjectRequest;
import com.digikala.dms.helper.webservice.VolleyHelper;
import com.digikala.dms.model.domain.Courier;
import com.digikala.dms.model.domain.DistributionCenter;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.util.Util;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.maps.CameraUpdate;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import io.realm.Realm;
import io.realm.RealmList;
import io.realm.RealmResults;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class MapFragment extends Fragment implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, OnMapReadyCallback, LocationListener, ResultCallback<LocationSettingsResult> {
    private static final float LEVEL_BEARING = 0.0f;
    private static final float LEVEL_TILT = 0.0f;
    private static final float LEVEL_ZOOM = 16.0f;
    private static final int LOCATION_REQUEST_CODE = 101;
    private static final String MAPS_DIRECTIONS = "http://maps.googleapis.com/maps/api/directions/json";
    private static final String MAPS_MATRIX = "http://maps.googleapis.com/maps/api/distancematrix/json";
    private static final int REQUEST_LOCATION_ = 1;
    private Location currentLocation;
    private Marker currentLocationMarker;
    private FusedLocationProviderClient fusedLocationClient;
    android.location.LocationListener locationListener;
    protected LocationRequest locationRequest;
    private GoogleApiClient mGoogleApiClient;
    private GoogleMap mGoogleMap;
    private SupportMapFragment mapFragment;
    private View rootView;
    int sizeFirstRoute;
    private static final String TAG_DEBUG = ShipmentsListFragment.class.getSimpleName();
    private static String[] PERMISSIONS_Location = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"};
    private ArrayList<Shipment> mShipments = new ArrayList<>();
    private LatLng origins = new LatLng(35.764129d, 51.404401d);
    private LatLng DC = new LatLng(35.764129d, 51.404401d);
    private LatLng destination = new LatLng(35.764129d, 51.404401d);

    public static MapFragment newInstance() {
        MapFragment mapFragment = new MapFragment();
        return mapFragment;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        setRootView(inflater, container);
        return this.rootView;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setHasOptionsMenu(true);
        setGoogleApi();
        setMapFragment();
        this.locationRequest = LocationRequest.create();
        this.locationRequest.setPriority(100);
        this.locationRequest.setInterval(30000L);
        this.locationRequest.setFastestInterval(5000L);
        this.fusedLocationClient = LocationServices.getFusedLocationProviderClient(getContext());
        if (ActivityCompat.checkSelfPermission(getContext(), "android.permission.ACCESS_FINE_LOCATION") != 0 && ActivityCompat.checkSelfPermission(getActivity(), "android.permission.ACCESS_COARSE_LOCATION") != 0) {
            ActivityCompat.requestPermissions(getActivity(), new String[]{"android.permission.ACCESS_FINE_LOCATION"}, 101);
            return;
        }
        fetchLastLocation();
        LocationSettingsRequest.Builder builder = new LocationSettingsRequest.Builder().addLocationRequest(this.locationRequest);
        builder.build();
        builder.setAlwaysShow(true);
        PendingResult<LocationSettingsResult> result = LocationServices.SettingsApi.checkLocationSettings(this.mGoogleApiClient, builder.build());
        result.setResultCallback(new ResultCallback<LocationSettingsResult>() { // from class: com.digikala.dms.view.fragment.MapFragment.1
            @Override // com.google.android.gms.common.api.ResultCallback
            public void onResult(LocationSettingsResult result2) {
                Status status = result2.getStatus();
                result2.getLocationSettingsStates();
                int statusCode = status.getStatusCode();
                if (statusCode != 0 && statusCode == 6) {
                    try {
                        status.startResolutionForResult(MapFragment.this.getActivity(), 1000);
                    } catch (IntentSender.SendIntentException e) {
                    }
                }
            }
        });
    }

    private void fetchLastLocation() {
        if (ActivityCompat.checkSelfPermission(getActivity(), "android.permission.ACCESS_FINE_LOCATION") != 0 && ActivityCompat.checkSelfPermission(getActivity(), "android.permission.ACCESS_COARSE_LOCATION") != 0) {
            return;
        }
        Task<Location> task = this.fusedLocationClient.getLastLocation();
        task.addOnSuccessListener(new OnSuccessListener<Location>() { // from class: com.digikala.dms.view.fragment.MapFragment.2
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public void onSuccess(Location location) {
                if (location != null) {
                    MapFragment.this.currentLocation = location;
                    SupportMapFragment supportMapFragment = (SupportMapFragment) MapFragment.this.getChildFragmentManager().findFragmentById(R.id.map);
                    supportMapFragment.getMapAsync(new OnMapReadyCallback() { // from class: com.digikala.dms.view.fragment.MapFragment.2.1
                        @Override // com.google.android.gms.maps.OnMapReadyCallback
                        public void onMapReady(GoogleMap googleMap) {
                            LatLng latLng = new LatLng(MapFragment.this.currentLocation.getLatitude(), MapFragment.this.currentLocation.getLongitude());
                            MarkerOptions markerOptions = new MarkerOptions().position(latLng).title("You are Here");
                            googleMap.animateCamera(CameraUpdateFactory.newLatLng(latLng));
                            googleMap.moveCamera(CameraUpdateFactory.newLatLngZoom(latLng, 20.0f));
                            googleMap.addMarker(markerOptions);
                        }
                    });
                }
            }
        });
    }

    private void setRootView(LayoutInflater inflater, ViewGroup container) {
        ViewGroup parent;
        if (this.rootView != null && (parent = (ViewGroup) this.rootView.getParent()) != null) {
            parent.removeView(this.rootView);
        }
        try {
            this.rootView = inflater.inflate(R.layout.fragment_map, container, false);
        } catch (InflateException e) {
        }
    }

    private void setMapFragment() {
        try {
            this.mapFragment = (SupportMapFragment) getChildFragmentManager().findFragmentById(R.id.map);
            if (this.mapFragment != null) {
                this.mapFragment.getMapAsync(this);
            }
        } catch (Exception e) {
        }
    }

    private void setGoogleApi() {
        this.mGoogleApiClient = new GoogleApiClient.Builder(getActivity()).addConnectionCallbacks(this).addOnConnectionFailedListener(this).addApi(LocationServices.API).build();
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        this.mGoogleApiClient.connect();
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        loadShipments();
    }

    @Override // android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        if (this.mGoogleApiClient != null && this.mGoogleApiClient.isConnected()) {
            this.mGoogleApiClient.disconnect();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnected(@Nullable Bundle bundle) {
        if (getActivity() == null) {
            return;
        }
        if (ActivityCompat.checkSelfPermission(getActivity(), "android.permission.ACCESS_FINE_LOCATION") != 0 && ActivityCompat.checkSelfPermission(getActivity(), "android.permission.ACCESS_COARSE_LOCATION") != 0 && (!ActivityCompat.shouldShowRequestPermissionRationale(getActivity(), "android.permission.ACCESS_FINE_LOCATION") || !ActivityCompat.shouldShowRequestPermissionRationale(getActivity(), "android.permission.ACCESS_COARSE_LOCATION"))) {
            ActivityCompat.requestPermissions(getActivity(), PERMISSIONS_Location, 1);
        }
        if (this.currentLocation != null) {
            AnswersHelper.mapFragmentEvent("Found Location");
            AnalyticHelper.mapFragmentEvent("Found Location");
            fetchLastLocation();
        } else {
            AnswersHelper.mapFragmentEvent("Not Found Location");
            AnalyticHelper.mapFragmentEvent("Not Found Location");
        }
    }

    @Override // com.google.android.gms.location.LocationListener
    public void onLocationChanged(Location location) {
        String str = "Updated Location: " + Double.toString(location.getLatitude()) + "," + Double.toString(location.getLongitude());
        new LatLng(location.getLatitude(), location.getLongitude());
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
    }

    @Override // com.google.android.gms.maps.OnMapReadyCallback
    public void onMapReady(GoogleMap googleMap) {
        setGoogleMapUI(googleMap);
        setDistributionCenterLocation();
        routingBetweenShipment();
    }

    private void routingBetweenShipment() {
        List<LatLng> wayPoints = new ArrayList<>();
        int i = 1;
        for (Shipment shipment : this.mShipments) {
            if (shipment.getDeliveryLatLong() != null) {
                if (shipment.getStatus() == 1) {
                    MarkerOptions markerOptions = new MarkerOptions().position(new LatLng(shipment.getDeliveryLatLong().getLatitude(), shipment.getDeliveryLatLong().getLongitude()));
                    markerOptions.title(shipment.getCustomerName());
                    markerOptions.icon(BitmapDescriptorFactory.fromResource(R.drawable.marker_enable));
                    this.mGoogleMap.addMarker(markerOptions);
                    wayPoints.add(new LatLng(shipment.getDeliveryLatLong().getLatitude(), shipment.getDeliveryLatLong().getLongitude()));
                } else {
                    MarkerOptions markerOptions2 = new MarkerOptions().position(new LatLng(shipment.getDeliveryLatLong().getLatitude(), shipment.getDeliveryLatLong().getLongitude()));
                    markerOptions2.title(shipment.getCustomerName());
                    markerOptions2.icon(BitmapDescriptorFactory.fromResource(R.drawable.marker_disable));
                    this.mGoogleMap.addMarker(markerOptions2);
                }
                i++;
            }
        }
        String orderID = Util.getLatestShipmentIDFromSharedPreference(getActivity());
        Realm realm = Realm.getDefaultInstance();
        Shipment latestShipment = (Shipment) realm.where(Shipment.class).equalTo(Shipment.COLUMN_ORDER_ID, orderID).findFirst();
        if (latestShipment != null) {
            this.origins = new LatLng(latestShipment.getDeliveryLatLong().getLatitude(), latestShipment.getDeliveryLatLong().getLongitude());
        } else {
            this.origins = this.DC;
        }
        drawDirectionRequest(this.origins, this.destination, wayPoints);
    }

    private void setGoogleMapUI(GoogleMap googleMap) {
        this.mGoogleMap = googleMap;
        this.mGoogleMap.setMapType(1);
        this.mGoogleMap.setTrafficEnabled(true);
        if (ActivityCompat.checkSelfPermission(getActivity(), "android.permission.ACCESS_FINE_LOCATION") != 0 && ActivityCompat.checkSelfPermission(getActivity(), "android.permission.ACCESS_COARSE_LOCATION") != 0 && (!ActivityCompat.shouldShowRequestPermissionRationale(getActivity(), "android.permission.ACCESS_FINE_LOCATION") || !ActivityCompat.shouldShowRequestPermissionRationale(getActivity(), "android.permission.ACCESS_COARSE_LOCATION"))) {
            ActivityCompat.requestPermissions(getActivity(), PERMISSIONS_Location, 1);
        }
        if (this.mGoogleMap != null) {
            try {
                this.mGoogleMap.setMyLocationEnabled(true);
            } catch (Exception e) {
            }
            this.mGoogleMap.getUiSettings().setCompassEnabled(true);
        }
    }

    private void setDistributionCenterLocation() {
        Realm realm = Realm.getDefaultInstance();
        DistributionCenter distributionCenter = (DistributionCenter) realm.where(DistributionCenter.class).findFirst();
        this.DC = new LatLng(distributionCenter.getLatLong().getLatitude(), distributionCenter.getLatLong().getLongitude());
        this.destination = new LatLng(distributionCenter.getLatLong().getLatitude(), distributionCenter.getLatLong().getLongitude());
        if (this.mGoogleMap != null) {
            this.mGoogleMap.clear();
        }
        MarkerOptions markerOptions = new MarkerOptions().position(this.DC);
        markerOptions.title(distributionCenter.getTitle());
        markerOptions.icon(BitmapDescriptorFactory.fromResource(R.drawable.marker_dc));
        if (this.mGoogleMap != null) {
            this.mGoogleMap.addMarker(markerOptions);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onRequestPermissionsResult(int permsRequestCode, String[] permissions, int[] grantResults) {
        if (permsRequestCode == 1 && grantResults.length > 0 && grantResults[0] == 0) {
            if (grantResults[0] == 0) {
            }
            if (ActivityCompat.checkSelfPermission(getActivity(), "android.permission.ACCESS_FINE_LOCATION") != 0 && ActivityCompat.checkSelfPermission(getActivity(), "android.permission.ACCESS_COARSE_LOCATION") != 0) {
                Log.i("permission", "onRequestPermissionsResult : if 1");
                return;
            }
            Log.i("permission", "onRequestPermissionsResult : ok");
            this.mGoogleMap.setMyLocationEnabled(true);
            fetchLastLocation();
        }
    }

    private void goToLocation(double lat, double lon) {
        CameraPosition cameraPosition = CameraPosition.builder().target(new LatLng(lat, lon)).zoom(LEVEL_ZOOM).bearing(0.0f).tilt(0.0f).build();
        if (this.mGoogleMap != null) {
            this.mGoogleMap.animateCamera(CameraUpdateFactory.newCameraPosition(cameraPosition), null);
        }
    }

    private void loadShipments() {
        this.mShipments.clear();
        Realm realm = Realm.getDefaultInstance();
        RealmResults<Courier> loggedInDeliveries = realm.where(Courier.class).equalTo(Courier.COLUMN_IS_LOGGED_IN, (Boolean) true).findAll();
        if (loggedInDeliveries.size() == 1) {
            RealmList<Shipment> allShipments = ((Courier) loggedInDeliveries.get(0)).getBatch().getShipments();
            this.mShipments.addAll(allShipments);
        } else {
            Log.e(TAG_DEBUG, "The number of logged-in deliveries must be exactly one");
        }
    }

    private Marker addMarkerToMap(LatLng latLng, String title, float hue) {
        MarkerOptions markerOptions = new MarkerOptions().position(latLng);
        markerOptions.title(title);
        markerOptions.icon(BitmapDescriptorFactory.defaultMarker(hue));
        return this.mGoogleMap.addMarker(markerOptions);
    }

    private void addPolylineToMap(List<LatLng> decodedPath) {
        this.mGoogleMap.addPolyline(new PolylineOptions().addAll(decodedPath));
    }

    private void setCurrentLocation() {
        if (ActivityCompat.checkSelfPermission(getActivity(), "android.permission.ACCESS_FINE_LOCATION") != 0 && ActivityCompat.checkSelfPermission(getActivity(), "android.permission.ACCESS_COARSE_LOCATION") != 0 && (!ActivityCompat.shouldShowRequestPermissionRationale(getActivity(), "android.permission.ACCESS_FINE_LOCATION") || !ActivityCompat.shouldShowRequestPermissionRationale(getActivity(), "android.permission.ACCESS_COARSE_LOCATION"))) {
            ActivityCompat.requestPermissions(getActivity(), PERMISSIONS_Location, 1);
        }
        this.currentLocation = LocationServices.FusedLocationApi.getLastLocation(this.mGoogleApiClient);
        if (this.currentLocationMarker != null) {
            this.currentLocationMarker.remove();
            Log.e("remove", "remove");
        }
        LatLng latLng = new LatLng(this.currentLocation.getLatitude(), this.currentLocation.getLongitude());
        MarkerOptions markerOptions = new MarkerOptions().position(latLng);
        markerOptions.title("current location");
        markerOptions.icon(BitmapDescriptorFactory.defaultMarker(300.0f));
        this.currentLocationMarker = this.mGoogleMap.addMarker(markerOptions);
        drawCircle(latLng);
        CameraUpdate cameraUpdate = CameraUpdateFactory.newLatLngZoom(latLng, 17.0f);
        if (this.mGoogleMap != null) {
            this.mGoogleMap.animateCamera(cameraUpdate);
        }
    }

    private void drawCircle(LatLng location) {
        CircleOptions options = new CircleOptions();
        options.center(location);
        options.radius(this.currentLocation.getAccuracy());
        options.fillColor(getResources().getColor(R.color.blue));
        options.strokeColor(getResources().getColor(R.color.black));
        options.strokeWidth(10.0f);
        if (this.mGoogleMap != null) {
            this.mGoogleMap.addCircle(options);
        }
    }

    public static List<LatLng> decodePoly(String encoded) {
        int index;
        int index2;
        List<LatLng> poly = new ArrayList<>();
        int len = encoded.length();
        int lat = 0;
        int lat2 = 0;
        int lng = 0;
        while (lat2 < len) {
            int shift = 0;
            int b = lat2;
            int result = 0;
            while (true) {
                index = b + 1;
                int b2 = encoded.charAt(b) - 63;
                result |= (b2 & 31) << shift;
                shift += 5;
                if (b2 < 32) {
                    break;
                }
                b = index;
            }
            int dlat = (result & 1) != 0 ? (result >> 1) ^ (-1) : result >> 1;
            int lat3 = lat + dlat;
            int shift2 = 0;
            int result2 = 0;
            while (true) {
                index2 = index + 1;
                int b3 = encoded.charAt(index) - 63;
                result2 |= (b3 & 31) << shift2;
                shift2 += 5;
                if (b3 < 32) {
                    break;
                }
                index = index2;
            }
            int dlng = (result2 & 1) != 0 ? (result2 >> 1) ^ (-1) : result2 >> 1;
            lng += dlng;
            double d = lat3;
            Double.isNaN(d);
            double d2 = lng;
            Double.isNaN(d2);
            LatLng p = new LatLng(d / 100000.0d, d2 / 100000.0d);
            poly.add(p);
            lat2 = index2;
            lat = lat3;
        }
        return poly;
    }

    public static String makeURLForDirection(LatLng origin, LatLng destination, List<LatLng> wayPoints) {
        StringBuilder urlString = new StringBuilder();
        urlString.append(MAPS_DIRECTIONS);
        urlString.append("?origin=");
        urlString.append(Double.toString(origin.latitude));
        urlString.append(",");
        urlString.append(Double.toString(origin.longitude));
        urlString.append("&destination=");
        urlString.append(Double.toString(destination.latitude));
        urlString.append(",");
        urlString.append(Double.toString(destination.longitude));
        if (wayPoints.size() > 0) {
            try {
                urlString.append("&waypoints=optimize:true");
                urlString.append(URLEncoder.encode("|", "utf-8"));
                for (int i = 0; i < wayPoints.size(); i++) {
                    urlString.append(Double.toString(wayPoints.get(i).latitude));
                    urlString.append(URLEncoder.encode(",", "utf-8"));
                    urlString.append(Double.toString(wayPoints.get(i).longitude));
                    if (i != wayPoints.size() - 1) {
                        urlString.append(URLEncoder.encode("|", "utf-8"));
                    }
                }
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        urlString.append("&sensor=false&mode=driving&alternatives=true");
        return urlString.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<LatLng> parseJsonFromGoogle(String result) {
        List<LatLng> latLongs = null;
        try {
            latLongs = new ArrayList<>();
            this.sizeFirstRoute = 0;
            JSONObject json = new JSONObject(result);
            JSONArray routeArray = json.getJSONArray("routes");
            JSONObject routes = routeArray.getJSONObject(0);
            JSONArray legsArray = routes.getJSONArray("legs");
            JSONObject leg = legsArray.getJSONObject(0);
            JSONArray stepsArray = leg.getJSONArray("steps");
            for (int j = 0; j < stepsArray.length(); j++) {
                JSONObject step = stepsArray.getJSONObject(j);
                JSONObject polyLine = step.getJSONObject("polyline");
                latLongs.addAll(decodePoly(polyLine.getString("points")));
            }
        } catch (JSONException e) {
            Log.e(TAG_DEBUG, e.getMessage() + "");
        }
        return latLongs;
    }

    private void drawDirectionRequest(LatLng origin, LatLng destination, List<LatLng> wayPoints) {
        MCXIAOKEJsonObjectRequest request = new MCXIAOKEJsonObjectRequest(0, makeURLForDirection(origin, destination, wayPoints), new Response.Listener<JSONObject>() { // from class: com.digikala.dms.view.fragment.MapFragment.3
            @Override // com.android.volley.Response.Listener
            public void onResponse(JSONObject response) {
                new DrawDirectionTask().execute(response.toString());
            }
        }, new Response.ErrorListener() { // from class: com.digikala.dms.view.fragment.MapFragment.4
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError error) {
                VolleyLog.d("errror", "Error: " + error.getMessage());
            }
        }) { // from class: com.digikala.dms.view.fragment.MapFragment.5
        };
        VolleyHelper.addToRequestQueue(request, "getRequest");
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public void onResult(@NonNull LocationSettingsResult locationSettingsResult) {
        Status status = locationSettingsResult.getStatus();
        int statusCode = status.getStatusCode();
        if (statusCode == 0 || statusCode != 6) {
        }
    }

    private class DrawDirectionTask extends AsyncTask<String, Integer, List<LatLng>> {
        private DrawDirectionTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public List<LatLng> doInBackground(String... jsonData) {
            try {
                List<LatLng> routes = MapFragment.this.parseJsonFromGoogle(jsonData[0]);
                return routes;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(List<LatLng> result) {
            for (int z = 0; z < result.size() - 1; z++) {
                LatLng src = result.get(z);
                LatLng dest = result.get(z + 1);
                MapFragment.this.mGoogleMap.addPolyline(new PolylineOptions().add(new LatLng(src.latitude, src.longitude), new LatLng(dest.latitude, dest.longitude)).width(9.0f).color(-16776961).geodesic(true));
            }
            if (result.size() != 0) {
                Util.saveLatestLatLngToSharedPreference(App.getApplication().getApplicationContext(), result.get(result.size() - 1));
            } else {
                Util.saveLatestLatLngToSharedPreference(App.getApplication().getApplicationContext(), null);
            }
        }
    }
}
