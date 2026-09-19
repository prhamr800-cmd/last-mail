package com.digikala.dms.view.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.TabLayout;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RatingBar;
import android.widget.Toast;
import com.afollestad.materialdialogs.DialogAction;
import com.afollestad.materialdialogs.MaterialDialog;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.digikala.dms.R;
import com.digikala.dms.adapter.MainPagesAdapter;
import com.digikala.dms.core.App;
import com.digikala.dms.core.ForegroundService;
import com.digikala.dms.core.GpsService;
import com.digikala.dms.core.LocationService;
import com.digikala.dms.core.NoGpsAccessActivity;
import com.digikala.dms.helper.RealmHelper;
import com.digikala.dms.helper.fabric.answers.AnswersHelper;
import com.digikala.dms.helper.firebase.analytics.AnalyticHelper;
import com.digikala.dms.helper.webservice.VolleyHelper;
import com.digikala.dms.helper.webservice.WebApi;
import com.digikala.dms.helper.webservice.WebApiRequest;
import com.digikala.dms.model.design.TrackingType;
import com.digikala.dms.model.domain.Courier;
import com.digikala.dms.model.domain.Rate;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.util.Util;
import com.digikala.dms.view.custom.XeiTextView;
import com.digikala.dms.view.fragment.LoginFragment;
import com.digikala.dms.view.fragment.RateFragment;
import com.github.jorgecastilloprz.FABProgressCircle;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import de.hdodenhof.circleimageview.CircleImageView;
import io.realm.Realm;
import io.realm.RealmList;
import io.realm.RealmResults;
import io.realm.com_digikala_dms_model_domain_RateRealmProxy;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class MainActivity extends AppCompatActivity implements View.OnClickListener {
    private static final int INDEX_INIT_TAB = 2;
    private static final String TAG_DEBUG = MainActivity.class.getSimpleName();
    private static final String TAG_REQUEST = MainActivity.class.getSimpleName();
    private BroadcastReceiver GpsLocationReceiver;
    private View darkLayout;
    private CircleImageView mAvatarCircleImageView;
    private XeiTextView mDeliveryIdTextView;
    private XeiTextView mDeliveryNameTextView;
    private FloatingActionButton mFinalizeTripFloatingActionButton;
    private FABProgressCircle mFinalizingTripProgressCircle;
    private RealmResults<Shipment> mFullyDeliveredShipments;
    private RealmResults<Shipment> mLeftShipments;
    private LocationManager mLocationManager;
    private XeiTextView mLogoutButton;
    private MainPagesAdapter mMainPagesAdapter;
    private TabLayout mMainPagesTabLayout;
    private ViewPager mMainPagesViewPager;
    private RealmResults<Shipment> mMissedCallShipments;
    private RealmResults<Shipment> mOpenShipments;
    private RealmResults<Shipment> mPartiallyDeliveredShipments;
    private RealmResults<Shipment> mReturnedShipments;
    private PopupWindow popupWindow;
    private RatingBar ratingBar;
    private boolean isPopupOpen = false;
    boolean gps_enabled = false;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Intent locationIntent = new Intent(this, (Class<?>) LocationService.class);
        startService(locationIntent);
        Intent serviceIntent = new Intent(this, (Class<?>) ForegroundService.class);
        serviceIntent.putExtra(Parameters.SESSION_USER_ID, Util.getDeliveryId(getApplicationContext()));
        if (Build.VERSION.SDK_INT >= 26) {
            getApplicationContext().startForegroundService(serviceIntent);
        } else {
            Intent intent = new Intent(this, (Class<?>) GpsService.class);
            intent.putExtra(Parameters.SESSION_USER_ID, Util.getDeliveryId(getApplicationContext()));
            startService(intent);
        }
        this.mLocationManager = (LocationManager) App.getApplication().getSystemService(FirebaseAnalytics.Param.LOCATION);
        this.gps_enabled = this.mLocationManager.isProviderEnabled("gps");
        if (!this.gps_enabled) {
            Intent pushIntent = new Intent(getApplicationContext(), (Class<?>) NoGpsAccessActivity.class);
            pushIntent.setFlags(268435456);
            getApplicationContext().startActivity(pushIntent);
        } else if (NoGpsAccessActivity.getInstance() != null) {
            NoGpsAccessActivity.getInstance().finish();
        }
        this.GpsLocationReceiver = new BroadcastReceiver() { // from class: com.digikala.dms.view.activity.MainActivity.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent2) {
                if (intent2 != null && context != null && intent2.getAction().matches("android.location.PROVIDERS_CHANGED")) {
                    MainActivity.this.mLocationManager = (LocationManager) App.getApplication().getSystemService(FirebaseAnalytics.Param.LOCATION);
                    MainActivity.this.gps_enabled = MainActivity.this.mLocationManager.isProviderEnabled("gps");
                    if (!MainActivity.this.gps_enabled) {
                        Intent pushIntent2 = new Intent(context, (Class<?>) NoGpsAccessActivity.class);
                        pushIntent2.setFlags(268435456);
                        context.startActivity(pushIntent2);
                    } else if (NoGpsAccessActivity.getInstance() != null) {
                        NoGpsAccessActivity.getInstance().finish();
                    }
                }
            }
        };
        registerReceiver(this.GpsLocationReceiver, new IntentFilter("android.location.PROVIDERS_CHANGED"));
        this.mLogoutButton = (XeiTextView) findViewById(R.id.appbarMain_xeiTextView_logoutBtn);
        this.ratingBar = (RatingBar) findViewById(R.id.ratingBar_usersRate);
        this.mAvatarCircleImageView = (CircleImageView) findViewById(R.id.appbarMain_circleImageView_avatar);
        this.mDeliveryNameTextView = (XeiTextView) findViewById(R.id.appbarMain_xeiTextView_deliveryName);
        this.mDeliveryIdTextView = (XeiTextView) findViewById(R.id.appbarMain_xeiTextView_deliveryId);
        this.ratingBar.setOnTouchListener(new View.OnTouchListener() { // from class: com.digikala.dms.view.activity.MainActivity.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                Log.e("rate", "click");
                RateFragment.newInstance(Util.getDeliveryId(MainActivity.this.getApplicationContext())).show(MainActivity.this.getSupportFragmentManager(), (String) null);
                return false;
            }
        });
        WebApi.getRateRequest("", new WebApiRequest.WebApiListener<Rate>() { // from class: com.digikala.dms.view.activity.MainActivity.3
            @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
            public void onResponse(Rate response) {
                if (response != null) {
                    MainActivity.this.ratingBar.setRating((float) response.getRate());
                }
            }

            @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
            public void onErrorResponse(String errorMessage) {
                Log.e(com_digikala_dms_model_domain_RateRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME, "errorMessage");
            }
        }, new WebApiRequest.LoadRequests() { // from class: com.digikala.dms.view.activity.MainActivity.4
            @Override // com.digikala.dms.helper.webservice.WebApiRequest.LoadRequests
            public void addRequestToLoadList(WebApiRequest<?> request, boolean loadDataOnResume) {
            }

            @Override // com.digikala.dms.helper.webservice.WebApiRequest.LoadRequests
            public void reloadRequests() {
            }
        }).send();
        this.mMainPagesTabLayout = (TabLayout) findViewById(R.id.appbarMain_tabLayout_mainPages);
        this.mMainPagesViewPager = (ViewPager) findViewById(R.id.activityMain_viewPager_mainPages);
        this.mFinalizeTripFloatingActionButton = (FloatingActionButton) findViewById(R.id.activityMain_fab_finalizeTrip);
        this.mFinalizingTripProgressCircle = (FABProgressCircle) findViewById(R.id.activityMain_fabProgressCircle_finalizingTripProgressCircle);
        this.mMainPagesAdapter = new MainPagesAdapter(getSupportFragmentManager());
        this.mMainPagesViewPager.setAdapter(this.mMainPagesAdapter);
        this.mMainPagesViewPager.setCurrentItem(2);
        initTabLayout();
        this.darkLayout = findViewById(R.id.dark_layer);
        this.mFinalizeTripFloatingActionButton.setOnClickListener(this);
        loadDeliveryProfile();
        createActionBarMenu();
        if (Util.isTimeValid(Util.getServerDateTimeResponse(this))) {
            showTimeAlert();
        }
        Util.setServerDateTimeResponse(this, "");
    }

    private void createActionBarMenu() {
        this.mLogoutButton.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.activity.MainActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (MainActivity.this.isPopupOpen) {
                    MainActivity.this.popupWindow.dismiss();
                    MainActivity.this.isPopupOpen = false;
                    MainActivity.this.darkLayout.setVisibility(8);
                    return;
                }
                MainActivity.this.showPopupWindows();
            }
        });
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.GpsLocationReceiver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPopupWindows() {
        this.isPopupOpen = true;
        LayoutInflater layoutInflater = (LayoutInflater) getBaseContext().getSystemService("layout_inflater");
        View popupView = layoutInflater.inflate(R.layout.popup_windows, (ViewGroup) null);
        LinearLayout settingLayout = (LinearLayout) popupView.findViewById(R.id.settingLayout);
        LinearLayout logoutLayout = (LinearLayout) popupView.findViewById(R.id.logoutLayout);
        LinearLayout mScanLayout = (LinearLayout) popupView.findViewById(R.id.scanLayout);
        mScanLayout.setVisibility(8);
        settingLayout.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.activity.MainActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.startActivity(new Intent(MainActivity.this, (Class<?>) SettingActivity.class));
            }
        });
        logoutLayout.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.activity.MainActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LoginFragment.logout();
            }
        });
        this.popupWindow = new PopupWindow(popupView, -2, -2);
        this.popupWindow.setTouchable(true);
        this.popupWindow.setOutsideTouchable(false);
        this.popupWindow.showAsDropDown(this.mLogoutButton, -this.mLogoutButton.getWidth(), -this.mLogoutButton.getHeight());
        this.darkLayout.setVisibility(0);
        this.darkLayout.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.activity.MainActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.isPopupOpen = false;
                MainActivity.this.popupWindow.dismiss();
                MainActivity.this.darkLayout.setVisibility(8);
            }
        });
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Intent intent = new Intent(this, (Class<?>) LocationService.class);
        startService(intent);
        loadShipmentsFromDatabase();
        if (this.mOpenShipments.isEmpty()) {
            this.mFinalizeTripFloatingActionButton.setVisibility(0);
        }
    }

    private void initTabLayout() {
        this.mMainPagesTabLayout.setupWithViewPager(this.mMainPagesViewPager);
        XeiTextView mapTabView = (XeiTextView) LayoutInflater.from(this).inflate(R.layout.row_tablayout, (ViewGroup) null);
        XeiTextView openShipmentsTabView = (XeiTextView) LayoutInflater.from(this).inflate(R.layout.row_tablayout, (ViewGroup) null);
        XeiTextView closeShipmentsTabView = (XeiTextView) LayoutInflater.from(this).inflate(R.layout.row_tablayout, (ViewGroup) null);
        mapTabView.setText(getString(R.string.title_page_map));
        openShipmentsTabView.setText(getString(R.string.title_page_openShipments));
        closeShipmentsTabView.setText(getString(R.string.title_page_closeShipments));
        mapTabView.setCompoundDrawablesWithIntrinsicBounds(0, R.drawable.compound_tab_map, 0, 0);
        openShipmentsTabView.setCompoundDrawablesWithIntrinsicBounds(0, R.drawable.compound_tab_open_shipments, 0, 0);
        closeShipmentsTabView.setCompoundDrawablesWithIntrinsicBounds(0, R.drawable.compound_tab_close_shipments, 0, 0);
        mapTabView.setSelected(true);
        this.mMainPagesTabLayout.getTabAt(1).setCustomView(openShipmentsTabView);
        this.mMainPagesTabLayout.getTabAt(0).setCustomView(closeShipmentsTabView);
        this.mMainPagesTabLayout.getTabAt(2).setCustomView(mapTabView);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.activityMain_fab_finalizeTrip) {
            if (isNetworkAvailable()) {
                finalizeTrip();
                return;
            } else {
                showNetworkAlertAlert();
                return;
            }
        }
        Log.i(TAG_DEBUG, "Clicked on the unregistered view!");
    }

    private void loadDeliveryProfile() {
        String avatarUrl;
        Realm realm = Realm.getDefaultInstance();
        RealmResults<Courier> loggedInDeliveries = realm.where(Courier.class).equalTo(Courier.COLUMN_IS_LOGGED_IN, (Boolean) true).findAll();
        if (loggedInDeliveries.size() == 1) {
            Courier loggedInCourier = (Courier) loggedInDeliveries.get(0);
            this.mDeliveryNameTextView.setText(loggedInCourier.getName().trim());
            String userName = "0";
            if (loggedInCourier.getUserName() != null) {
                userName = loggedInCourier.getUserName();
            } else if (loggedInCourier.getId() != null) {
                userName = loggedInCourier.getId();
            }
            this.mDeliveryIdTextView.setText(Util.convertNumberStringToPersian(userName.trim()));
            try {
                avatarUrl = loggedInCourier.getAvatarUrl().trim();
            } catch (NullPointerException e) {
                avatarUrl = "";
            }
            if (!avatarUrl.isEmpty()) {
                VolleyHelper.downloadAndMemoryCacheBitmap(loggedInCourier.getAvatarUrl(), new ImageLoader.ImageListener() { // from class: com.digikala.dms.view.activity.MainActivity.9
                    @Override // com.android.volley.toolbox.ImageLoader.ImageListener
                    public void onResponse(ImageLoader.ImageContainer response, boolean isImmediate) {
                        try {
                            Bitmap bitmap = response.getBitmap();
                            if (bitmap != null) {
                                MainActivity.this.mAvatarCircleImageView.setImageBitmap(bitmap);
                                MainActivity.this.mAvatarCircleImageView.startAnimation(AnimationUtils.loadAnimation(MainActivity.this, android.R.anim.fade_in));
                            }
                        } catch (Exception e2) {
                        }
                    }

                    @Override // com.android.volley.Response.ErrorListener
                    public void onErrorResponse(VolleyError error) {
                        Log.e(MainActivity.TAG_DEBUG, "Can not get avatar bitmap: " + error.getMessage());
                    }
                });
                return;
            }
            return;
        }
        Log.e(TAG_DEBUG, "There exist more than one logged in delivery!");
    }

    private void loadShipmentsFromDatabase() {
        Realm realm = Realm.getDefaultInstance();
        RealmResults<Courier> loggedInDeliveries = realm.where(Courier.class).equalTo(Courier.COLUMN_IS_LOGGED_IN, (Boolean) true).findAll();
        if (loggedInDeliveries.size() == 1) {
            String bachId = ((Courier) loggedInDeliveries.get(0)).getBatch().getId();
            String deliveryId = ((Courier) loggedInDeliveries.get(0)).getId();
            int dcId = ((Courier) loggedInDeliveries.get(0)).getDistributionCenter().getId();
            String currentTime = Util.getCurrentDateTime();
            Util.setBachId(getApplicationContext(), bachId);
            Log.i("setupTracker", "loadShipmentsFromDatabase and set tracker");
            startTrack(dcId + "", deliveryId, bachId, currentTime);
            RealmList<Shipment> allShipments = ((Courier) loggedInDeliveries.get(0)).getBatch().getShipments();
            this.mOpenShipments = allShipments.where().equalTo("status", (Integer) 1).findAll();
            this.mFullyDeliveredShipments = allShipments.where().equalTo("status", (Integer) 5).findAll();
            this.mPartiallyDeliveredShipments = allShipments.where().equalTo("status", (Integer) 7).findAll();
            this.mReturnedShipments = allShipments.where().equalTo("status", (Integer) 6).findAll();
            this.mMissedCallShipments = allShipments.where().equalTo("status", (Integer) 8).findAll();
            this.mLeftShipments = allShipments.where().equalTo("status", (Integer) 9).findAll();
        } else {
            Log.e(TAG_DEBUG, "The number of logged-in deliveries must be exactly one");
        }
        realm.close();
    }

    private void finalizeTrip() {
        final Realm realm = Realm.getDefaultInstance();
        final RealmResults<Courier> loggedInDeliveries = realm.where(Courier.class).equalTo(Courier.COLUMN_IS_LOGGED_IN, (Boolean) true).findAll();
        if (loggedInDeliveries.size() == 1) {
            final String deliveryId = ((Courier) loggedInDeliveries.get(0)).getId();
            String batchId = ((Courier) loggedInDeliveries.get(0)).getBatch().getId();
            RealmResults<Shipment> notSyncedShipments = realm.where(Shipment.class).equalTo(Shipment.COLUMN_TUPLE_IS_SYNCED_WITH_SERVER, (Boolean) false).findAll();
            if (notSyncedShipments.isEmpty()) {
                WebApi.makeFinalizeBatchRequest(batchId, TAG_REQUEST, new WebApiRequest.WebApiListener<Boolean>() { // from class: com.digikala.dms.view.activity.MainActivity.10
                    @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
                    public void onResponse(Boolean successfullyFinalized) {
                        AnswersHelper.logNumberRequestAndResponse("Response", "Response Success", "");
                        AnalyticHelper.responseRequestEvent("Response", "Response Success", "");
                        realm.beginTransaction();
                        ((Courier) loggedInDeliveries.get(0)).setBatchFinalized(successfullyFinalized.booleanValue());
                        realm.commitTransaction();
                        if (successfullyFinalized.booleanValue()) {
                            AnswersHelper.finalizeTripStatusEvent("Success", "");
                            AnalyticHelper.finalizeTripStatusEvent("Success", "");
                            WebApi.makeLogoutRequest(deliveryId, MainActivity.TAG_REQUEST, new WebApiRequest.WebApiListener<Boolean>() { // from class: com.digikala.dms.view.activity.MainActivity.10.1
                                @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
                                public void onResponse(Boolean successfullyLogout) {
                                    AnswersHelper.logNumberRequestAndResponse("Response", "Response Success", "");
                                    AnalyticHelper.responseRequestEvent("Response", "Response Success", "");
                                    if (!successfullyLogout.booleanValue()) {
                                        MainActivity.this.mFinalizingTripProgressCircle.hide();
                                        MainActivity.this.mFinalizeTripFloatingActionButton.setVisibility(8);
                                        Log.e(MainActivity.TAG_DEBUG, "Unsuccessful Logout Process!");
                                        return;
                                    }
                                    Intent serviceIntent = new Intent(App.getApplication(), (Class<?>) ForegroundService.class);
                                    App.getApplication().stopService(serviceIntent);
                                    Intent gpsService = new Intent(App.getApplication(), (Class<?>) GpsService.class);
                                    App.getApplication().stopService(gpsService);
                                    realm.beginTransaction();
                                    ((Courier) loggedInDeliveries.get(0)).setIsLoggedIn(false);
                                    realm.commitTransaction();
                                    if (Util.getCourierTrackingType(App.getApplication()).getHasTrack().booleanValue()) {
                                        Log.i("setupTracker", "cancelRepeat() in sync method");
                                    }
                                    Util.setDeliveryAuthToken(MainActivity.this, null);
                                    Util.setDeliveryId(MainActivity.this, null);
                                    Util.setBachId(App.getApplication().getApplicationContext(), null);
                                    Util.setDistributionPointId(App.getApplication(), null);
                                    Util.setCourierTrackingType(App.getApplication(), null);
                                    RealmHelper.deleteRealmTables();
                                    realm.executeTransaction(new Realm.Transaction() { // from class: com.digikala.dms.view.activity.MainActivity.10.1.1
                                        @Override // io.realm.Realm.Transaction
                                        public void execute(Realm realm2) {
                                            realm2.deleteAll();
                                        }
                                    });
                                    try {
                                        Util.saveLastLocationToSharedPreference(App.getApplication(), null);
                                        Util.saveDistanceTraveledToSharedPreference(App.getApplication(), 0.0d);
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                    MainActivity.this.mFinalizingTripProgressCircle.hide();
                                    MainActivity.this.mFinalizeTripFloatingActionButton.setVisibility(8);
                                    Intent intent = new Intent(MainActivity.this, (Class<?>) LauncherActivity.class);
                                    intent.setFlags(268468224);
                                    MainActivity.this.startActivity(intent);
                                }

                                @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
                                public void onErrorResponse(String errorMessage) {
                                    AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", errorMessage);
                                    AnalyticHelper.responseRequestEvent("Response", "Response Error", errorMessage);
                                    MainActivity.this.mFinalizingTripProgressCircle.hide();
                                    MainActivity.this.mFinalizeTripFloatingActionButton.setVisibility(8);
                                    Log.e(MainActivity.TAG_DEBUG, "Cannot Logout: " + errorMessage);
                                }
                            }, null).send();
                            int batchSize = ((Courier) loggedInDeliveries.get(0)).getBatch().getShipments().size();
                            AnswersHelper.logFinalizeTripEvent(deliveryId, batchSize, batchSize, 0);
                            AnalyticHelper.finalizeTripEvent(deliveryId, batchSize, batchSize, 0);
                            Util.saveLatestShipmentIDToSharedPreference(MainActivity.this, "");
                            Toast.makeText(MainActivity.this, MainActivity.this.getResources().getString(R.string.sync_success), 1).show();
                            return;
                        }
                        AnswersHelper.finalizeTripStatusEvent("Error", "Error1");
                        AnalyticHelper.finalizeTripStatusEvent("Error", "Error1");
                        MainActivity.this.mFinalizingTripProgressCircle.hide();
                        MainActivity.this.mFinalizeTripFloatingActionButton.setEnabled(true);
                        Log.e(MainActivity.TAG_DEBUG, "Unsuccessful Finalize Process!");
                        Toast.makeText(MainActivity.this, MainActivity.this.getResources().getString(R.string.sync_failed), 1).show();
                    }

                    @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
                    public void onErrorResponse(String errorMessage) {
                        AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", errorMessage);
                        AnalyticHelper.responseRequestEvent("Response", "Response Error", errorMessage);
                        AnswersHelper.finalizeTripStatusEvent("Error", errorMessage + "");
                        AnalyticHelper.finalizeTripStatusEvent("Error", errorMessage + "");
                        MainActivity.this.mFinalizingTripProgressCircle.hide();
                        MainActivity.this.mFinalizeTripFloatingActionButton.setEnabled(true);
                        Log.e(MainActivity.TAG_DEBUG, "Cannot finalize the batch: " + errorMessage);
                        Toast.makeText(MainActivity.this, errorMessage, 1).show();
                    }
                }, null).send();
                return;
            } else {
                WebApi.makeSyncShipmentsWithBackOfficeRequest(deliveryId, batchId, notSyncedShipments, new AnonymousClass11(notSyncedShipments, realm, batchId, loggedInDeliveries, deliveryId), new Response.ErrorListener() { // from class: com.digikala.dms.view.activity.MainActivity.12
                    @Override // com.android.volley.Response.ErrorListener
                    public void onErrorResponse(VolleyError error) {
                        if (error != null) {
                            AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", error + "");
                            AnalyticHelper.responseRequestEvent("Response", "Response Error", error + "");
                            AnswersHelper.finalizeTripStatusEvent("Error", error.getMessage() + "");
                            AnalyticHelper.finalizeTripStatusEvent("Error", error.getMessage() + "");
                        } else {
                            AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", "Volley Error");
                            AnalyticHelper.responseRequestEvent("Response", "Response Error", "Volley Error");
                            AnalyticHelper.finalizeTripBackgroundEvent("Error", "Volley Error");
                        }
                        MainActivity.this.mFinalizingTripProgressCircle.hide();
                        MainActivity.this.mFinalizeTripFloatingActionButton.setEnabled(true);
                        Log.e(MainActivity.TAG_DEBUG, "Cannot sync shipments with the server: " + error.getMessage());
                        Toast.makeText(MainActivity.this, MainActivity.this.getResources().getString(R.string.sync_failed), 1).show();
                    }
                });
                return;
            }
        }
        this.mFinalizingTripProgressCircle.hide();
        this.mFinalizeTripFloatingActionButton.setEnabled(true);
        Log.e(TAG_DEBUG, "There is no exactly one logged-in delivery!");
        Toast.makeText(this, "There is no exactly one logged-in delivery!", 1).show();
    }

    /* JADX INFO: renamed from: com.digikala.dms.view.activity.MainActivity$11, reason: invalid class name */
    class AnonymousClass11 implements Response.Listener<JSONObject> {
        final /* synthetic */ String val$batchId;
        final /* synthetic */ String val$deliveryId;
        final /* synthetic */ RealmResults val$loggedInDeliveries;
        final /* synthetic */ RealmResults val$notSyncedShipments;
        final /* synthetic */ Realm val$realm;

        AnonymousClass11(RealmResults realmResults, Realm realm, String str, RealmResults realmResults2, String str2) {
            this.val$notSyncedShipments = realmResults;
            this.val$realm = realm;
            this.val$batchId = str;
            this.val$loggedInDeliveries = realmResults2;
            this.val$deliveryId = str2;
        }

        @Override // com.android.volley.Response.Listener
        public void onResponse(JSONObject response) {
            AnswersHelper.logNumberRequestAndResponse("Response", "Response Success", "");
            AnalyticHelper.responseRequestEvent("Response", "Response Success", "");
            try {
                boolean successfullySynced = response.getBoolean("Data");
                if (successfullySynced) {
                    AnswersHelper.finalizeTripStatusEvent("Success", "");
                    AnalyticHelper.finalizeTripStatusEvent("Success", "");
                    if (this.val$notSyncedShipments != null && this.val$notSyncedShipments.size() != 0) {
                        this.val$realm.beginTransaction();
                        for (int i = 0; i < this.val$notSyncedShipments.size(); i++) {
                            ((Shipment) this.val$notSyncedShipments.get(i)).setTupleIsSyncedWithServer(true);
                        }
                        this.val$realm.commitTransaction();
                    }
                    WebApi.makeFinalizeBatchRequest(this.val$batchId, MainActivity.TAG_REQUEST, new WebApiRequest.WebApiListener<Boolean>() { // from class: com.digikala.dms.view.activity.MainActivity.11.1
                        @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
                        public void onResponse(Boolean successfullyFinalized) {
                            AnswersHelper.logNumberRequestAndResponse("Response", "Response Success", "");
                            AnalyticHelper.responseRequestEvent("Response", "Response Success", "");
                            AnonymousClass11.this.val$realm.beginTransaction();
                            ((Courier) AnonymousClass11.this.val$loggedInDeliveries.get(0)).setBatchFinalized(successfullyFinalized.booleanValue());
                            AnonymousClass11.this.val$realm.commitTransaction();
                            if (!successfullyFinalized.booleanValue()) {
                                MainActivity.this.mFinalizingTripProgressCircle.hide();
                                MainActivity.this.mFinalizeTripFloatingActionButton.setEnabled(true);
                                Log.e(MainActivity.TAG_DEBUG, "Unsuccessful Finalize Process!");
                                Toast.makeText(MainActivity.this, MainActivity.this.getResources().getString(R.string.sync_failed), 1).show();
                                return;
                            }
                            AnswersHelper.finalizeTripStatusEvent("Success", "");
                            AnalyticHelper.finalizeTripStatusEvent("Success", "");
                            WebApi.makeLogoutRequest(AnonymousClass11.this.val$deliveryId, MainActivity.TAG_REQUEST, new WebApiRequest.WebApiListener<Boolean>() { // from class: com.digikala.dms.view.activity.MainActivity.11.1.1
                                @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
                                public void onResponse(Boolean successfullyLogout) {
                                    AnswersHelper.logNumberRequestAndResponse("Response", "Response Success", "");
                                    AnalyticHelper.responseRequestEvent("Response", "Response Success", "");
                                    if (!successfullyLogout.booleanValue()) {
                                        MainActivity.this.mFinalizingTripProgressCircle.hide();
                                        MainActivity.this.mFinalizeTripFloatingActionButton.setVisibility(8);
                                        Log.e(MainActivity.TAG_DEBUG, "Unsuccessful Logout Process!");
                                        return;
                                    }
                                    Intent foregroundService = new Intent(App.getApplication(), (Class<?>) ForegroundService.class);
                                    App.getApplication().stopService(foregroundService);
                                    Intent gpsService = new Intent(App.getApplication(), (Class<?>) GpsService.class);
                                    App.getApplication().stopService(gpsService);
                                    AnonymousClass11.this.val$realm.beginTransaction();
                                    ((Courier) AnonymousClass11.this.val$loggedInDeliveries.get(0)).setIsLoggedIn(false);
                                    AnonymousClass11.this.val$realm.commitTransaction();
                                    if (Util.getCourierTrackingType(App.getApplication()).getHasTrack().booleanValue()) {
                                        Log.i("setupTracker", "cancelRepeat() in sync method");
                                    }
                                    Util.setDeliveryAuthToken(MainActivity.this, null);
                                    Util.setDeliveryId(MainActivity.this, null);
                                    Util.setBachId(App.getApplication().getApplicationContext(), null);
                                    Util.setDistributionPointId(App.getApplication(), null);
                                    Util.setCourierTrackingType(App.getApplication(), null);
                                    RealmHelper.deleteRealmTables();
                                    AnonymousClass11.this.val$realm.executeTransaction(new Realm.Transaction() { // from class: com.digikala.dms.view.activity.MainActivity.11.1.1.1
                                        @Override // io.realm.Realm.Transaction
                                        public void execute(Realm realm) {
                                            realm.deleteAll();
                                        }
                                    });
                                    try {
                                        Util.saveLastLocationToSharedPreference(App.getApplication(), null);
                                        Util.saveDistanceTraveledToSharedPreference(App.getApplication(), 0.0d);
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                    MainActivity.this.mFinalizingTripProgressCircle.hide();
                                    MainActivity.this.mFinalizeTripFloatingActionButton.setVisibility(8);
                                    Intent intent = new Intent(MainActivity.this, (Class<?>) LauncherActivity.class);
                                    intent.setFlags(268468224);
                                    MainActivity.this.startActivity(intent);
                                }

                                @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
                                public void onErrorResponse(String errorMessage) {
                                    AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", errorMessage);
                                    AnalyticHelper.responseRequestEvent("Response", "Response Error", errorMessage);
                                    AnswersHelper.finalizeTripStatusEvent("Error", errorMessage + "");
                                    AnalyticHelper.finalizeTripStatusEvent("Error", errorMessage + "");
                                    MainActivity.this.mFinalizingTripProgressCircle.hide();
                                    MainActivity.this.mFinalizeTripFloatingActionButton.setVisibility(8);
                                    Log.e(MainActivity.TAG_DEBUG, "Cannot Logout: " + errorMessage);
                                }
                            }, null).send();
                            int batchSize = ((Courier) AnonymousClass11.this.val$loggedInDeliveries.get(0)).getBatch().getShipments().size();
                            int notSyncedShipmentsSize = AnonymousClass11.this.val$notSyncedShipments.size();
                            int syncedShipmentsSize = batchSize - notSyncedShipmentsSize;
                            AnswersHelper.logFinalizeTripEvent(AnonymousClass11.this.val$deliveryId, batchSize, syncedShipmentsSize, notSyncedShipmentsSize);
                            AnalyticHelper.finalizeTripEvent(AnonymousClass11.this.val$deliveryId, batchSize, syncedShipmentsSize, notSyncedShipmentsSize);
                            Util.saveLatestShipmentIDToSharedPreference(MainActivity.this, "");
                            Toast.makeText(MainActivity.this, MainActivity.this.getResources().getString(R.string.sync_success), 1).show();
                        }

                        @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
                        public void onErrorResponse(String errorMessage) {
                            AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", errorMessage);
                            AnalyticHelper.responseRequestEvent("Response", "Response Error", errorMessage);
                            MainActivity.this.mFinalizingTripProgressCircle.hide();
                            MainActivity.this.mFinalizeTripFloatingActionButton.setEnabled(true);
                            Log.e(MainActivity.TAG_DEBUG, "Cannot finalize the batch: " + errorMessage);
                            Toast.makeText(MainActivity.this, errorMessage, 1).show();
                        }
                    }, null).send();
                    return;
                }
                AnswersHelper.finalizeTripStatusEvent("Error", "Error2");
                AnalyticHelper.finalizeTripStatusEvent("Error", "Error2");
                MainActivity.this.mFinalizingTripProgressCircle.hide();
                MainActivity.this.mFinalizeTripFloatingActionButton.setEnabled(true);
                Log.e(MainActivity.TAG_DEBUG, "Unsuccessful Sync Process!");
                Toast.makeText(MainActivity.this, response.getString("Message"), 1).show();
            } catch (JSONException joe) {
                if (joe != null) {
                    AnswersHelper.finalizeTripStatusEvent("Error", joe.getMessage() + "");
                    AnalyticHelper.finalizeTripStatusEvent("Error", joe.getMessage() + "");
                } else {
                    AnalyticHelper.finalizeTripBackgroundEvent("Error", "Json Error");
                }
                MainActivity.this.mFinalizingTripProgressCircle.hide();
                MainActivity.this.mFinalizeTripFloatingActionButton.setEnabled(true);
                Log.e(MainActivity.TAG_DEBUG, "JSONObject exception on the response of \"SyncShipmentsWithBackOffice\" request" + joe.getMessage());
                try {
                    String s = response.getString("Message");
                    Toast.makeText(MainActivity.this, s, 1).show();
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public RealmResults<Shipment> getOpenShipments() {
        return this.mOpenShipments;
    }

    public RealmResults<Shipment> getFullyDeliveredShipments() {
        return this.mFullyDeliveredShipments;
    }

    public RealmResults<Shipment> getPartiallyDeliveredShipments() {
        return this.mPartiallyDeliveredShipments;
    }

    public RealmResults<Shipment> getReturnedShipments() {
        return this.mReturnedShipments;
    }

    public RealmResults<Shipment> getMissedCallShipments() {
        return this.mMissedCallShipments;
    }

    public RealmResults<Shipment> getLeftShipments() {
        return this.mLeftShipments;
    }

    private void startTrack(String dcId, String deliveryId, String packId, String currentTimeSystem) {
        TrackingType trackingType = Util.getCourierTrackingType(getApplicationContext());
        if (isGoogleServicesUpdate()) {
            trackingType.getHasTrack().booleanValue();
        }
    }

    private boolean isGoogleServicesUpdate() {
        GoogleApiAvailability apiAvailability = GoogleApiAvailability.getInstance();
        int resultCode = apiAvailability.isGooglePlayServicesAvailable(getApplicationContext());
        return resultCode == 0;
    }

    void showTimeAlert() {
        new MaterialDialog.Builder(this).content(getString(R.string.time_setting_alert)).negativeText(getString(R.string.exit_program)).positiveText(getString(R.string.setting)).onNegative(new MaterialDialog.SingleButtonCallback() { // from class: com.digikala.dms.view.activity.MainActivity.14
            @Override // com.afollestad.materialdialogs.MaterialDialog.SingleButtonCallback
            public void onClick(@NonNull MaterialDialog dialog, @NonNull DialogAction which) {
                dialog.dismiss();
                LoginFragment.logout();
            }
        }).onPositive(new MaterialDialog.SingleButtonCallback() { // from class: com.digikala.dms.view.activity.MainActivity.13
            @Override // com.afollestad.materialdialogs.MaterialDialog.SingleButtonCallback
            public void onClick(@NonNull MaterialDialog dialog, @NonNull DialogAction which) {
                dialog.dismiss();
                MainActivity.this.startActivity(new Intent("android.settings.DATE_SETTINGS"));
            }
        }).show();
    }

    void showNetworkAlertAlert() {
        new MaterialDialog.Builder(this).content(getString(R.string.no_internet)).positiveText(getString(R.string.not_now)).negativeText(getString(R.string.setting)).onNegative(new MaterialDialog.SingleButtonCallback() { // from class: com.digikala.dms.view.activity.MainActivity.16
            @Override // com.afollestad.materialdialogs.MaterialDialog.SingleButtonCallback
            public void onClick(@NonNull MaterialDialog dialog, @NonNull DialogAction which) {
                dialog.dismiss();
                MainActivity.this.startActivity(new Intent("android.settings.WIFI_SETTINGS"));
            }
        }).onPositive(new MaterialDialog.SingleButtonCallback() { // from class: com.digikala.dms.view.activity.MainActivity.15
            @Override // com.afollestad.materialdialogs.MaterialDialog.SingleButtonCallback
            public void onClick(@NonNull MaterialDialog dialog, @NonNull DialogAction which) {
                dialog.dismiss();
            }
        }).show();
    }

    private boolean isNetworkAvailable() {
        NetworkInfo networkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService("connectivity");
            if (connectivityManager == null || (networkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
                return false;
            }
            if (networkInfo.isConnected()) {
                return true;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
