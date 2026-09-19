package com.digikala.dms.view.fragment;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.location.LocationManager;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.Fragment;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.Toast;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.digikala.dms.R;
import com.digikala.dms.adapter.AssignedBatchAdapter;
import com.digikala.dms.core.App;
import com.digikala.dms.core.GpsService;
import com.digikala.dms.core.NoGpsAccessActivity;
import com.digikala.dms.helper.fabric.answers.AnswersHelper;
import com.digikala.dms.helper.firebase.analytics.AnalyticHelper;
import com.digikala.dms.helper.webservice.VolleyHelper;
import com.digikala.dms.helper.webservice.WebApi;
import com.digikala.dms.helper.webservice.WebApiRequest;
import com.digikala.dms.model.domain.Batch;
import com.digikala.dms.model.domain.Courier;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.util.Util;
import com.digikala.dms.view.activity.MainActivity;
import com.digikala.dms.view.activity.NewShipmentPriorityActivity;
import com.digikala.dms.view.activity.SettingActivity;
import com.digikala.dms.view.custom.XeiTextView;
import com.github.jorgecastilloprz.FABProgressCircle;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.zxing.integration.android.IntentIntegrator;
import com.google.zxing.integration.android.IntentResult;
import com.pnikosis.materialishprogress.ProgressWheel;
import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import de.hdodenhof.circleimageview.CircleImageView;
import io.realm.Realm;
import io.realm.RealmList;
import io.realm.RealmResults;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AssignedShipmentsFragment extends Fragment implements View.OnClickListener, SwipeRefreshLayout.OnRefreshListener {
    private static LinearLayout mSselectAllLayout;
    private static EditText scanEditText;
    private BroadcastReceiver GpsLocationReceiver;
    private View darkLayout;
    private CircleImageView mAvatarCircleImageView;
    private Batch mBatch;
    private FloatingActionButton mConfirmShipmentsFAB;
    private FABProgressCircle mConfirmingShipmentsProgressCircle;
    private XeiTextView mDeliveryIdTextView;
    private XeiTextView mDeliveryNameTextView;
    private XeiTextView mEmptyListMsgTextView;
    private ProgressWheel mLoadingProgressWheel;
    private LocationManager mLocationManager;
    private XeiTextView mLogoutButton;
    private SwipeRefreshLayout mReloadBatchSwipeRefreshLayout;
    private CheckBox mSelectAll_btn;
    private AssignedBatchAdapter mShipmentsListAdapter;
    private RecyclerView mShipmentsListRecyclerView;
    private PopupWindow popupWindow;
    private static final String TAG_DEBUG = AssignedShipmentsFragment.class.getSimpleName();
    private static final String TAG_REQUEST = AssignedShipmentsFragment.class.getSimpleName();
    private static String scanStr = "";
    private ArrayList<Shipment> mAssignedShipments = new ArrayList<>();
    private ArrayList<Boolean> mIsSelectedShipments = new ArrayList<>();
    private ArrayList<Boolean> mIsSettledBottomSheets = new ArrayList<>();
    private ArrayList<Boolean> mIsExpandedBottomSheets = new ArrayList<>();
    private boolean isPopupOpen = false;
    boolean gps_enabled = false;

    public static AssignedShipmentsFragment newInstance() {
        return new AssignedShipmentsFragment();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intent intent = new Intent(getContext(), (Class<?>) GpsService.class);
        intent.putExtra(Parameters.SESSION_USER_ID, Util.getDeliveryId(getContext()));
        getActivity().startService(intent);
        this.mLocationManager = (LocationManager) App.getApplication().getSystemService(FirebaseAnalytics.Param.LOCATION);
        this.gps_enabled = this.mLocationManager.isProviderEnabled("gps");
        if (!this.gps_enabled) {
            Intent pushIntent = new Intent(getContext(), (Class<?>) NoGpsAccessActivity.class);
            pushIntent.setFlags(268435456);
            getContext().startActivity(pushIntent);
        } else if (NoGpsAccessActivity.getInstance() != null) {
            NoGpsAccessActivity.getInstance().finish();
        }
        this.GpsLocationReceiver = new BroadcastReceiver() { // from class: com.digikala.dms.view.fragment.AssignedShipmentsFragment.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent2) {
                if (intent2 != null && context != null && intent2.getAction().matches("android.location.PROVIDERS_CHANGED")) {
                    AssignedShipmentsFragment.this.mLocationManager = (LocationManager) App.getApplication().getSystemService(FirebaseAnalytics.Param.LOCATION);
                    AssignedShipmentsFragment.this.gps_enabled = AssignedShipmentsFragment.this.mLocationManager.isProviderEnabled("gps");
                    if (!AssignedShipmentsFragment.this.gps_enabled) {
                        Intent pushIntent2 = new Intent(context, (Class<?>) NoGpsAccessActivity.class);
                        pushIntent2.setFlags(268435456);
                        context.startActivity(pushIntent2);
                    } else if (NoGpsAccessActivity.getInstance() != null) {
                        NoGpsAccessActivity.getInstance().finish();
                    }
                }
            }
        };
        getContext().registerReceiver(this.GpsLocationReceiver, new IntentFilter("android.location.PROVIDERS_CHANGED"));
        View view = inflater.inflate(R.layout.fragment_assigned_shipments, container, false);
        this.mLogoutButton = (XeiTextView) view.findViewById(R.id.assign_xeiTextView_menueBtn);
        this.mDeliveryNameTextView = (XeiTextView) view.findViewById(R.id.assign_xeiTextView_deliveryName);
        this.mAvatarCircleImageView = (CircleImageView) view.findViewById(R.id.assign_circleImageView_avatar);
        this.mDeliveryIdTextView = (XeiTextView) view.findViewById(R.id.assign_xeiTextView_deliveryId);
        this.mLoadingProgressWheel = (ProgressWheel) view.findViewById(R.id.fragmentAssignedShipments_progressWheel_loading);
        this.mReloadBatchSwipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(R.id.fragmentAssignedShipments_swipeRefreshLayout_reloadBatch);
        this.mEmptyListMsgTextView = (XeiTextView) view.findViewById(R.id.fragmentAssignedShipments_xeiTextView_emptyListMsg);
        this.mShipmentsListRecyclerView = (RecyclerView) view.findViewById(R.id.fragmentAssignedShipments_recyclerView_shipmentsList);
        this.mConfirmShipmentsFAB = (FloatingActionButton) view.findViewById(R.id.fragmentAssignedShipments_floatingActionButton_confirmShipmentsFAB);
        this.mConfirmingShipmentsProgressCircle = (FABProgressCircle) view.findViewById(R.id.activityMain_fabProgressCircle_finalizingTripProgressCircle);
        this.darkLayout = view.findViewById(R.id.dark_layer);
        this.mSelectAll_btn = (CheckBox) view.findViewById(R.id.fragment_assign_shipment_textBox);
        mSselectAllLayout = (LinearLayout) view.findViewById(R.id.select_all_layout);
        this.mReloadBatchSwipeRefreshLayout.setColorSchemeResources(R.color.colorAccent);
        initRecyclerView();
        this.mReloadBatchSwipeRefreshLayout.setOnRefreshListener(this);
        this.mLogoutButton.setOnClickListener(this);
        this.mConfirmShipmentsFAB.setOnClickListener(this);
        loadDeliveryProfile();
        Log.e("TAG", "onCreateView: getAssignedShipments");
        getAssignedShipments();
        createActionBarMenu();
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initRecyclerView() {
        this.mShipmentsListRecyclerView.setHasFixedSize(true);
        this.mShipmentsListRecyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        this.mShipmentsListAdapter = new AssignedBatchAdapter(getContext(), this.mAssignedShipments, this.mIsSettledBottomSheets, this.mIsExpandedBottomSheets, this.mIsSelectedShipments, this.mConfirmShipmentsFAB, getFragmentManager());
        this.mShipmentsListRecyclerView.setAdapter(this.mShipmentsListAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getAssignedShipments() {
        Log.e("TAG", "getAssignedShipments: CALLed");
        String deliveryId = Util.getDeliveryId(getContext());
        WebApi.makeGetBatchRequest(deliveryId, TAG_REQUEST, new WebApiRequest.WebApiListener<Batch>() { // from class: com.digikala.dms.view.fragment.AssignedShipmentsFragment.2
            @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
            public void onResponse(Batch response) {
                AnswersHelper.logNumberRequestAndResponse("Response", "Response Success", "");
                AnalyticHelper.responseRequestEvent("Response", "Response Success", "");
                Log.e(AssignedShipmentsFragment.TAG_DEBUG, "sjdnsjndjsndjsnd214 " + response.getShipments());
                AssignedShipmentsFragment.this.mLoadingProgressWheel.setVisibility(8);
                AssignedShipmentsFragment.this.mReloadBatchSwipeRefreshLayout.setRefreshing(false);
                Log.e("TAG", "getAssignedShipments: RESPONSE");
                if (response == null || response.getShipments() == null) {
                    AssignedShipmentsFragment.mSselectAllLayout.setVisibility(8);
                    AssignedShipmentsFragment.this.mShipmentsListRecyclerView.setVisibility(8);
                    AssignedShipmentsFragment.this.mEmptyListMsgTextView.setVisibility(0);
                    return;
                }
                Log.e("bug_status_confirm", "getAssignedShipments status_confirm " + response.getStatus());
                if (response.getShipments().size() > 0) {
                    AssignedShipmentsFragment.mSselectAllLayout.setVisibility(0);
                    AssignedShipmentsFragment.this.initRecyclerView();
                    AssignedShipmentsFragment.this.mBatch = response;
                    for (Shipment shipment : AssignedShipmentsFragment.this.mBatch.getShipments()) {
                        shipment.setTupleIsSyncedWithServer(true);
                    }
                    if (response.getStatus() != 3) {
                        AssignedShipmentsFragment.this.mAssignedShipments.clear();
                        AssignedShipmentsFragment.this.mIsSelectedShipments.clear();
                        AssignedShipmentsFragment.this.mIsSettledBottomSheets.clear();
                        AssignedShipmentsFragment.this.mIsExpandedBottomSheets.clear();
                        for (Shipment shipment2 : response.getShipments()) {
                            AssignedShipmentsFragment.this.mAssignedShipments.add(shipment2);
                            AssignedShipmentsFragment.this.mIsSelectedShipments.add(false);
                            AssignedShipmentsFragment.this.mIsSettledBottomSheets.add(false);
                            AssignedShipmentsFragment.this.mIsExpandedBottomSheets.add(false);
                        }
                        AssignedShipmentsFragment.this.mShipmentsListAdapter.notifyDataSetChanged();
                        AssignedShipmentsFragment.this.mShipmentsListRecyclerView.setVisibility(0);
                        AssignedShipmentsFragment.this.mEmptyListMsgTextView.setVisibility(8);
                        return;
                    }
                    Log.e("bug_status_confirm", "status_confirm");
                    AssignedShipmentsFragment.this.confirmBatchOffline();
                    AssignedShipmentsFragment.this.startActivity(new Intent(AssignedShipmentsFragment.this.getContext(), (Class<?>) MainActivity.class));
                    AssignedShipmentsFragment.this.getActivity().finish();
                }
            }

            @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
            public void onErrorResponse(String errorMessage) {
                AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", errorMessage);
                AnalyticHelper.responseRequestEvent("Response", "Response Error", errorMessage);
                AssignedShipmentsFragment.this.mReloadBatchSwipeRefreshLayout.setRefreshing(false);
                Log.e(AssignedShipmentsFragment.TAG_DEBUG, "Can not get assigned shipments: " + errorMessage);
            }
        }, null).send();
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.mSelectAll_btn.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.digikala.dms.view.fragment.AssignedShipmentsFragment.3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if (isChecked) {
                    AssignedShipmentsFragment.this.mShipmentsListAdapter.selectAllShipment();
                } else {
                    AssignedShipmentsFragment.this.mShipmentsListAdapter.deSelectAllShipment();
                }
            }
        });
    }

    @Override // android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        initRecyclerView();
        getAssignedShipments();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View clickedView) {
        if (clickedView.getId() == R.id.fragmentAssignedShipments_floatingActionButton_confirmShipmentsFAB) {
            this.mConfirmingShipmentsProgressCircle.show();
            confirmShipments();
        }
    }

    private void confirmShipments() {
        Log.d("TAG", "makeConfirmBatchRequestResponse CALLED: ");
        WebApi.makeConfirmBatchRequest(this.mBatch.getId(), TAG_REQUEST, new WebApiRequest.WebApiListener<Boolean>() { // from class: com.digikala.dms.view.fragment.AssignedShipmentsFragment.4
            @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
            public void onResponse(Boolean ack) {
                AnswersHelper.logNumberRequestAndResponse("Response", "Response Success", "");
                AnalyticHelper.responseRequestEvent("Response", "Response Success", "");
                Log.d("TAG", "makeConfirmBatchRequestResponse: " + ack);
                if (ack.booleanValue()) {
                    AssignedShipmentsFragment.this.confirmBatchOffline();
                    AnswersHelper.logConfirmBatchEvent("", AssignedShipmentsFragment.this.mBatch.getShipments().size(), AssignedShipmentsFragment.this.countTrues(AssignedShipmentsFragment.this.mIsSettledBottomSheets), AssignedShipmentsFragment.this.countTrues(AssignedShipmentsFragment.this.mIsExpandedBottomSheets));
                    AnalyticHelper.confirmBatchEvent("", AssignedShipmentsFragment.this.mBatch.getShipments().size());
                    Util.setShipmentNextStepIsPriority(AssignedShipmentsFragment.this.getActivity(), true);
                    AssignedShipmentsFragment.this.startActivity(new Intent(AssignedShipmentsFragment.this.getContext(), (Class<?>) NewShipmentPriorityActivity.class));
                    AssignedShipmentsFragment.this.getActivity().finish();
                } else {
                    Toast.makeText(AssignedShipmentsFragment.this.getContext(), "تغییراتی رخ داده است لطفا دوباره تایید کنید.", 0).show();
                    AssignedShipmentsFragment.this.getAssignedShipments();
                }
                AssignedShipmentsFragment.this.mConfirmingShipmentsProgressCircle.hide();
            }

            @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
            public void onErrorResponse(String errorMessage) {
                AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", errorMessage);
                AnalyticHelper.responseRequestEvent("Response", "Response Error", errorMessage);
                AssignedShipmentsFragment.this.mConfirmingShipmentsProgressCircle.hide();
                Toast.makeText(AssignedShipmentsFragment.this.getActivity(), errorMessage, 0).show();
            }
        }, null).send();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void confirmBatchOffline() {
        Realm realm = Realm.getDefaultInstance();
        RealmResults<Courier> loggedInDeliveries = realm.where(Courier.class).equalTo(Courier.COLUMN_IS_LOGGED_IN, (Boolean) true).findAll();
        if (loggedInDeliveries.size() == 1) {
            Courier loggedInCourier = (Courier) loggedInDeliveries.get(0);
            realm.beginTransaction();
            Batch newBatch = (Batch) realm.createObject(Batch.class);
            newBatch.setId(this.mBatch.getId());
            newBatch.setStatus(this.mBatch.getStatus());
            newBatch.getShipments().addAll(getModifiedShipments());
            loggedInCourier.setBatch(newBatch);
            realm.commitTransaction();
            return;
        }
        Log.e(TAG_DEBUG, "There is no one logged in delivery!");
    }

    private static Batch updateDeliveryTable(Batch batch) {
        Realm realm = Realm.getDefaultInstance();
        RealmResults<Batch> results = realm.where(Batch.class).equalTo("id", batch.getId()).findAll();
        if (results.size() == 0) {
            realm.beginTransaction();
            Batch newBatch = (Batch) realm.createObject(Batch.class);
            newBatch.setId(batch.getId());
            newBatch.setStatus(batch.getStatus());
            newBatch.setShipments(batch.getShipments());
            realm.commitTransaction();
            return newBatch;
        }
        if (results.size() == 1) {
            return (Batch) results.get(0);
        }
        Log.e(TAG_DEBUG, "There are more than one similar batch in the Batch table!");
        return null;
    }

    private List<Shipment> getModifiedShipments() {
        List<Shipment> shipmentList = new ArrayList<>();
        RealmList<Shipment> shipments = this.mBatch.getShipments();
        for (Shipment shipment : shipments) {
            int status = shipment.getStatus();
            if (status == 1 || status == 2 || status == 3 || status == 4) {
                shipment.setStatus(1);
            }
            shipmentList.add(shipment);
        }
        return shipmentList;
    }

    public static boolean deliveryHasOpenShipments(Courier courier) {
        for (Shipment shipment : courier.getBatch().getShipments()) {
            if (shipment.getStatus() == 1) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int countTrues(ArrayList<Boolean> booleanArray) {
        int trueCount = 0;
        for (int i = 0; i < booleanArray.size(); i++) {
            if (booleanArray.get(i).booleanValue()) {
                trueCount++;
            }
        }
        return trueCount;
    }

    public static void resetScanEditText() {
        scanEditText.setText("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scanDialog() {
        Dialog scanDialog = new Dialog(getActivity(), 0);
        scanDialog.requestWindowFeature(1);
        scanDialog.setContentView(R.layout.scan_dialog);
        double d = getResources().getDisplayMetrics().widthPixels;
        Double.isNaN(d);
        int width = (int) (d * 0.9d);
        double d2 = getResources().getDisplayMetrics().heightPixels;
        Double.isNaN(d2);
        int height = (int) (d2 * 0.2d);
        scanDialog.getWindow().setLayout(width, height);
        scanDialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        scanEditText = (EditText) scanDialog.findViewById(R.id.scanEditText);
        ImageButton mScan_btn = (ImageButton) scanDialog.findViewById(R.id.assigned_shipment_fragment_scanDialog_btn);
        mScan_btn.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.AssignedShipmentsFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AssignedShipmentsFragment.this.scanFromFragment();
            }
        });
        scanEditText.addTextChangedListener(new TextWatcher() { // from class: com.digikala.dms.view.fragment.AssignedShipmentsFragment.6
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                String unused = AssignedShipmentsFragment.scanStr = AssignedShipmentsFragment.scanEditText.getText().toString() + "";
                if (!AssignedShipmentsFragment.scanStr.equals("")) {
                    AssignedShipmentsFragment.this.mShipmentsListAdapter.scanItem(AssignedShipmentsFragment.scanStr);
                }
            }
        });
        scanDialog.show();
    }

    public void scanFromFragment() {
        IntentIntegrator.forSupportFragment(this).setPrompt(getString(R.string.msg_scan_help)).initiateScan();
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        IntentResult result = IntentIntegrator.parseActivityResult(requestCode, resultCode, data);
        if (result != null) {
            if (result.getContents() == null) {
                Toast.makeText(getActivity(), getString(R.string.error_barcode_scan_canceled), 0).show();
                return;
            }
            scanEditText.setText(result.getContents());
            AnswersHelper.searchWithBarcodeEvent("Found Item");
            AnalyticHelper.searchWithBarcodeEvent("Found Item");
            return;
        }
        AnswersHelper.searchWithBarcodeEvent("Not Found Item");
        AnalyticHelper.searchWithBarcodeEvent("Not Found Item");
        super.onActivityResult(requestCode, resultCode, data);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPopupWindows() {
        this.isPopupOpen = true;
        LayoutInflater layoutInflater = (LayoutInflater) getActivity().getSystemService("layout_inflater");
        View popupView = layoutInflater.inflate(R.layout.popup_windows, (ViewGroup) null);
        LinearLayout settingLayout = (LinearLayout) popupView.findViewById(R.id.settingLayout);
        LinearLayout logoutLayout = (LinearLayout) popupView.findViewById(R.id.logoutLayout);
        LinearLayout scanLayout = (LinearLayout) popupView.findViewById(R.id.scanLayout);
        settingLayout.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.AssignedShipmentsFragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AssignedShipmentsFragment.this.isPopupOpen = false;
                AssignedShipmentsFragment.this.popupWindow.dismiss();
                AssignedShipmentsFragment.this.startActivity(new Intent(AssignedShipmentsFragment.this.getActivity(), (Class<?>) SettingActivity.class));
            }
        });
        logoutLayout.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.AssignedShipmentsFragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AssignedShipmentsFragment.this.popupWindow.dismiss();
                AssignedShipmentsFragment.this.isPopupOpen = false;
                LoginFragment.logout();
            }
        });
        scanLayout.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.AssignedShipmentsFragment.9
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                AssignedShipmentsFragment.this.isPopupOpen = false;
                AssignedShipmentsFragment.this.popupWindow.dismiss();
                AssignedShipmentsFragment.this.scanDialog();
            }
        });
        this.popupWindow = new PopupWindow(popupView, -2, -2);
        this.popupWindow.setTouchable(true);
        this.popupWindow.setOutsideTouchable(false);
        this.popupWindow.showAsDropDown(this.mLogoutButton, -this.mLogoutButton.getWidth(), -this.mLogoutButton.getHeight());
        this.darkLayout.setVisibility(0);
        this.darkLayout.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.AssignedShipmentsFragment.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AssignedShipmentsFragment.this.isPopupOpen = false;
                AssignedShipmentsFragment.this.popupWindow.dismiss();
                AssignedShipmentsFragment.this.darkLayout.setVisibility(8);
            }
        });
    }

    private void createActionBarMenu() {
        this.mLogoutButton.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.AssignedShipmentsFragment.11
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (AssignedShipmentsFragment.this.isPopupOpen) {
                    AssignedShipmentsFragment.this.popupWindow.dismiss();
                    AssignedShipmentsFragment.this.isPopupOpen = false;
                    AssignedShipmentsFragment.this.darkLayout.setVisibility(8);
                    return;
                }
                AssignedShipmentsFragment.this.showPopupWindows();
            }
        });
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
            this.mDeliveryIdTextView.setText(getString(R.string.prefix_deliveryId) + " " + Util.convertNumberStringToPersian(userName.trim()));
            try {
                avatarUrl = loggedInCourier.getAvatarUrl().trim();
            } catch (NullPointerException e) {
                avatarUrl = "";
            }
            if (!avatarUrl.isEmpty()) {
                VolleyHelper.downloadAndMemoryCacheBitmap(loggedInCourier.getAvatarUrl(), new ImageLoader.ImageListener() { // from class: com.digikala.dms.view.fragment.AssignedShipmentsFragment.12
                    @Override // com.android.volley.toolbox.ImageLoader.ImageListener
                    public void onResponse(ImageLoader.ImageContainer response, boolean isImmediate) {
                        Bitmap bitmap = response.getBitmap();
                        if (bitmap != null) {
                            AssignedShipmentsFragment.this.mAvatarCircleImageView.setImageBitmap(bitmap);
                            AssignedShipmentsFragment.this.mAvatarCircleImageView.startAnimation(AnimationUtils.loadAnimation(AssignedShipmentsFragment.this.getActivity(), android.R.anim.fade_in));
                        }
                    }

                    @Override // com.android.volley.Response.ErrorListener
                    public void onErrorResponse(VolleyError error) {
                        Log.e(AssignedShipmentsFragment.TAG_DEBUG, "Can not get avatar bitmap: " + error.getMessage());
                    }
                });
                return;
            }
            return;
        }
        Log.e(TAG_DEBUG, "There exist more than one logged in delivery!");
    }
}
