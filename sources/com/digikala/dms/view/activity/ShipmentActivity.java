package com.digikala.dms.view.activity;

import android.app.Dialog;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import com.digikala.dms.R;
import com.digikala.dms.core.LocationService;
import com.digikala.dms.helper.LocationHelper;
import com.digikala.dms.helper.fabric.answers.AnswersHelper;
import com.digikala.dms.helper.firebase.analytics.AnalyticHelper;
import com.digikala.dms.helper.webservice.WebApi;
import com.digikala.dms.helper.webservice.WebApiRequest;
import com.digikala.dms.model.design.SerialItems;
import com.digikala.dms.model.domain.BasketItems;
import com.digikala.dms.model.domain.LatLong;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.util.Util;
import com.digikala.dms.view.fragment.PartialDeliverFragment;
import com.digikala.dms.view.fragment.PaymentMethodFragment;
import com.digikala.dms.view.fragment.RejectReasonFragment;
import com.digikala.dms.view.fragment.SellerVerificationFragment;
import com.digikala.dms.view.fragment.ShipmentDetailsFragment;
import com.digikala.dms.view.fragment.UnprocessedReasonFragment;
import com.digikala.dms.view.fragment.UserInformationFragment;
import io.realm.Realm;
import io.realm.RealmList;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class ShipmentActivity extends AppCompatActivity implements ShipmentDetailsFragment.OnStateButtonClickListener, PartialDeliverFragment.OnPartialButtonClickListener, UserInformationFragment.OnApplyButtonUserInformationClickListener, PaymentMethodFragment.OnButtonPaymentMethodClickListener {
    public static final String BASKET_ITEMS = "basket_items";
    public static final String ORDER_ID = "order_id";
    private static final String TAG_REQUEST = ShipmentActivity.class.getSimpleName();
    private Long finalPayableAmount;
    private boolean isStateDialogOpen;
    private boolean isZero = false;
    private String mOrderId;
    private Realm mRealm;
    private Shipment mShipment;
    private View progressBar;
    private ArrayList<SerialItems> returnedProducts;
    private ShipmentDetailsFragment shipmentDetailsFragment;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_shipment);
        this.mOrderId = getIntent().getStringExtra(ORDER_ID);
        this.mRealm = Realm.getDefaultInstance();
        this.mShipment = (Shipment) this.mRealm.where(Shipment.class).equalTo(Shipment.COLUMN_ORDER_ID, this.mOrderId).findFirst();
        if (savedInstanceState != null) {
            return;
        }
        this.shipmentDetailsFragment = ShipmentDetailsFragment.newInstance(this.mOrderId);
        replaceFragment(this.shipmentDetailsFragment);
        Intent locationIntent = new Intent(this, (Class<?>) LocationService.class);
        startService(locationIntent);
    }

    public void setStateDialogOpen(boolean stateDialogOpen) {
        this.isStateDialogOpen = stateDialogOpen;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (getSupportFragmentManager().getBackStackEntryCount() == 1) {
            if (this.shipmentDetailsFragment != null && this.isStateDialogOpen) {
                this.shipmentDetailsFragment.collapseStateDialog();
                return;
            } else {
                finish();
                return;
            }
        }
        super.onBackPressed();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.progressBar = findViewById(R.id.loading);
    }

    private void replaceFragment(Fragment fragment) {
        String backStateName = fragment.getClass().getName();
        FragmentManager manager = getSupportFragmentManager();
        boolean fragmentPopped = manager.popBackStackImmediate(backStateName, 0);
        if (!fragmentPopped) {
            FragmentTransaction ft = manager.beginTransaction();
            ft.replace(R.id.fragment_container, fragment);
            ft.addToBackStack(backStateName);
            ft.commit();
        }
    }

    @Override // com.digikala.dms.view.fragment.ShipmentDetailsFragment.OnStateButtonClickListener
    public void onStateButtonClick(int id) {
        switch (id) {
            case R.id.fragment_shipment_details_deliver /* 2131296443 */:
                deliverShipment();
                break;
            case R.id.fragment_shipment_details_left /* 2131296446 */:
                cancelShipment();
                break;
            case R.id.fragment_shipment_details_miss_call /* 2131296449 */:
                missCallShipment();
                break;
            case R.id.fragment_shipment_details_partial_deliver /* 2131296452 */:
                if (this.mShipment.getAutoRefundable().booleanValue()) {
                    final Dialog dialog = new Dialog(this);
                    dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
                    dialog.setContentView(R.layout.auto_refundable_dialog);
                    ((Button) dialog.findViewById(R.id.autoRefundableDialog_negative)).setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.activity.ShipmentActivity.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            dialog.dismiss();
                        }
                    });
                    ((Button) dialog.findViewById(R.id.autoRefundableDialog_positive)).setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.activity.ShipmentActivity.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            dialog.dismiss();
                            ShipmentActivity.this.partialDeliverShipment();
                        }
                    });
                    dialog.show();
                } else {
                    partialDeliverShipment();
                }
                break;
            case R.id.fragment_shipment_details_returned /* 2131296455 */:
                Log.e("TAG", "AutoRefundable: " + this.mShipment.getAutoRefundable());
                if (this.mShipment.getAutoRefundable().booleanValue()) {
                    final Dialog dialog2 = new Dialog(this);
                    dialog2.getWindow().setBackgroundDrawable(new ColorDrawable(0));
                    dialog2.setContentView(R.layout.auto_refundable_dialog);
                    ((Button) dialog2.findViewById(R.id.autoRefundableDialog_negative)).setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.activity.ShipmentActivity.3
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            dialog2.dismiss();
                        }
                    });
                    ((Button) dialog2.findViewById(R.id.autoRefundableDialog_positive)).setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.activity.ShipmentActivity.4
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            dialog2.dismiss();
                            ShipmentActivity.this.rejectShipment();
                        }
                    });
                    dialog2.show();
                } else {
                    rejectShipment();
                }
                break;
        }
    }

    private void deliverShipment() {
        if (this.mShipment != null) {
            RealmList<BasketItems> mBasketItem = this.mShipment.getBasketItems();
            if (mBasketItem != null && !mBasketItem.isEmpty()) {
                if (this.mShipment.getPaymentStatus() == 1 && this.mShipment.getRemainingAmount() != 0) {
                    PaymentMethodFragment paymentMethodFragment = PaymentMethodFragment.newInstance("complete");
                    replaceFragment(paymentMethodFragment);
                    return;
                } else {
                    UserInformationFragment userInformationFragment = UserInformationFragment.newInstance("complete", "");
                    replaceFragment(userInformationFragment);
                    return;
                }
            }
            Toast.makeText(this, getString(R.string.deliver_shipment_item_is_empty), 0).show();
            return;
        }
        Toast.makeText(this, getString(R.string.deliver_shipment_is_empty), 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void partialDeliverShipment() {
        PartialDeliverFragment deliverFragment = PartialDeliverFragment.newInstance(this.mOrderId);
        replaceFragment(deliverFragment);
    }

    private void missCallShipment() {
        if (this.mShipment != null) {
            this.progressBar.setVisibility(0);
            String time = Util.getCurrentDateTime();
            LatLong latLong = LocationHelper.getLocation();
            Log.e("latLongmiss", latLong + "");
            this.mRealm.beginTransaction();
            LatLong location = (LatLong) this.mRealm.createObject(LatLong.class);
            if (latLong != null) {
                location.setLatitude(latLong.getLatitude());
                location.setLongitude(latLong.getLongitude());
            }
            this.mShipment.setStatus(8);
            this.mShipment.setConfirmTime(time);
            this.mShipment.setConfirmLocation(location);
            this.mShipment.setTupleIsSyncedWithServer(false);
            this.mShipment.setSignature("");
            this.mRealm.commitTransaction();
            Util.saveLatestShipmentIDToSharedPreference(this, this.mShipment.getOrderId());
            String timeScope = "";
            try {
                String[] dateTime = this.mShipment.getDeliveryTime().split("\\s+");
                timeScope = dateTime[1];
            } catch (Exception e) {
                e.printStackTrace();
            }
            AnswersHelper.logCloseShipment("Missed Call", timeScope, latLong, "paymentType", -1);
            AnalyticHelper.closeShipmentEvent("Missed Call", latLong);
            String gpsStatus = Util.getGpsStatus(getApplicationContext());
            String batchId = Util.getBatchId(getApplicationContext());
            if (batchId != null) {
                WebApi.makeMissedCallRequest(batchId, this.mOrderId, location, gpsStatus, TAG_REQUEST, new WebApiRequest.WebApiListener<Boolean>() { // from class: com.digikala.dms.view.activity.ShipmentActivity.5
                    @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
                    public void onResponse(Boolean response) {
                        AnswersHelper.logNumberRequestAndResponse("Response", "Response Success", "");
                        AnalyticHelper.responseRequestEvent("Response", "Response Success", "");
                        if (response.booleanValue()) {
                            ShipmentActivity.this.mRealm.beginTransaction();
                            ShipmentActivity.this.mShipment.setTupleIsSyncedWithServer(true);
                            ShipmentActivity.this.mRealm.commitTransaction();
                            ShipmentActivity.this.progressBar.setVisibility(8);
                            ShipmentActivity.this.finish();
                        }
                    }

                    @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
                    public void onErrorResponse(String errorMessage) {
                        AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", errorMessage);
                        AnalyticHelper.responseRequestEvent("Response", "Response Error", errorMessage);
                        Toast.makeText(ShipmentActivity.this.getApplicationContext(), errorMessage, 0).show();
                        ShipmentActivity.this.progressBar.setVisibility(8);
                        ShipmentActivity.this.finish();
                    }
                }, null).send();
                return;
            } else {
                Toast.makeText(this, "packId is Null!!", 0).show();
                return;
            }
        }
        Toast.makeText(this, getString(R.string.deliver_shipment_is_empty), 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rejectShipment() {
        RejectReasonFragment rejectReasonFragment = RejectReasonFragment.newInstance(this.mOrderId);
        rejectReasonFragment.show(getSupportFragmentManager(), "دلیل ها");
    }

    private void cancelShipment() {
        UnprocessedReasonFragment unprocessedReasonFragment = UnprocessedReasonFragment.newInstance(this.mOrderId);
        unprocessedReasonFragment.show(getSupportFragmentManager(), "دلیل ها");
    }

    @Override // com.digikala.dms.view.fragment.PartialDeliverFragment.OnPartialButtonClickListener
    public void onPartialButtonClick(ArrayList<SerialItems> returnedProducts, Long payableAmount) {
        if (returnedProducts != null) {
            this.returnedProducts = returnedProducts;
            this.finalPayableAmount = payableAmount;
            if (returnedProducts.isEmpty()) {
                Toast.makeText(this, getResources().getString(R.string.empty_partial_list), 1).show();
                return;
            }
            if (this.mShipment != null) {
                RealmList<BasketItems> mBasketItems = this.mShipment.getBasketItems();
                if (mBasketItems != null && !mBasketItems.isEmpty()) {
                    addFragment();
                    return;
                } else {
                    Toast.makeText(this, getString(R.string.deliver_shipment_item_is_empty), 0).show();
                    return;
                }
            }
            Toast.makeText(this, getString(R.string.deliver_shipment_is_empty), 0).show();
        }
    }

    private void addFragment() {
        if (this.mShipment.getPaymentStatus() == 1 && !this.isZero) {
            PaymentMethodFragment paymentMethodFragment = PaymentMethodFragment.newInstance("partial");
            String backStateName = paymentMethodFragment.getClass().getName();
            FragmentManager manager = getSupportFragmentManager();
            boolean fragmentPopped = manager.popBackStackImmediate(backStateName, 0);
            if (!fragmentPopped) {
                FragmentTransaction ft = manager.beginTransaction();
                ft.add(R.id.fragment_container, paymentMethodFragment);
                ft.addToBackStack(backStateName);
                ft.commit();
            }
        } else {
            UserInformationFragment userInformationFragment = UserInformationFragment.newInstance("partial", "");
            replaceFragment(userInformationFragment);
            String backStateName2 = userInformationFragment.getClass().getName();
            FragmentManager manager2 = getSupportFragmentManager();
            boolean fragmentPopped2 = manager2.popBackStackImmediate(backStateName2, 0);
            if (!fragmentPopped2) {
                FragmentTransaction ft2 = manager2.beginTransaction();
                ft2.remove(userInformationFragment);
                ft2.add(R.id.fragment_container, userInformationFragment);
                ft2.addToBackStack(backStateName2);
                ft2.commit();
            }
        }
        this.isZero = false;
    }

    public ArrayList<SerialItems> getReturnedProducts() {
        return this.returnedProducts;
    }

    public Long getpayableAmount() {
        return this.finalPayableAmount;
    }

    @Override // com.digikala.dms.view.fragment.UserInformationFragment.OnApplyButtonUserInformationClickListener
    public void onApplyButtonClick(String flag, String cardTypeId, String cardNumber, String comment, String PaymentMethod) {
        if (this.mShipment.getPaymentStatus() != 1) {
            SellerVerificationFragment sellerVerificationFragment = SellerVerificationFragment.newInstance(this.mOrderId, flag, cardTypeId, cardNumber, comment, PaymentMethod);
            replaceFragment(sellerVerificationFragment);
        } else if (this.finalPayableAmount != null) {
            SellerVerificationFragment sellerVerificationFragment2 = SellerVerificationFragment.newInstance(this.mOrderId, flag, cardTypeId, cardNumber, comment, PaymentMethod, this.finalPayableAmount);
            replaceFragment(sellerVerificationFragment2);
        } else {
            SellerVerificationFragment sellerVerificationFragment3 = SellerVerificationFragment.newInstance(this.mOrderId, flag, cardTypeId, cardNumber, comment, PaymentMethod);
            replaceFragment(sellerVerificationFragment3);
        }
    }

    @Override // com.digikala.dms.view.fragment.PaymentMethodFragment.OnButtonPaymentMethodClickListener
    public void onPaymentMethodButtonClick(String flag, String PaymentMethod) {
        UserInformationFragment userInformationFragment = UserInformationFragment.newInstance(flag, PaymentMethod);
        replaceFragment(userInformationFragment);
    }

    public void setToZero(boolean isZero) {
        this.isZero = isZero;
    }
}
