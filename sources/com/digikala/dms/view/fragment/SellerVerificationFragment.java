package com.digikala.dms.view.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.android.volley.AuthFailureError;
import com.android.volley.NetworkError;
import com.android.volley.NoConnectionError;
import com.android.volley.ParseError;
import com.android.volley.Response;
import com.android.volley.ServerError;
import com.android.volley.TimeoutError;
import com.android.volley.VolleyError;
import com.digikala.dms.R;
import com.digikala.dms.core.SnowplowHelper;
import com.digikala.dms.helper.LocationHelper;
import com.digikala.dms.helper.fabric.answers.AnswersHelper;
import com.digikala.dms.helper.firebase.analytics.AnalyticHelper;
import com.digikala.dms.helper.webservice.WebApi;
import com.digikala.dms.helper.webservice.WebApiRequest;
import com.digikala.dms.model.design.SerialItems;
import com.digikala.dms.model.domain.LatLong;
import com.digikala.dms.model.domain.RejectReason;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.util.Util;
import com.digikala.dms.view.activity.ShipmentActivity;
import io.realm.Realm;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class SellerVerificationFragment extends Fragment {
    private static final String ARG_CARD_TYPE_ID = "card_type_id";
    private static final String ARG_COMMENT = "comment";
    public static final String ARG_COMPLETE_FLAG = "complete";
    private static final String ARG_CRAD_NUMBER = "card_number";
    private static final String ARG_ORDER_ID = "order_id";
    public static final String ARG_PARTIAL_FLAG = "partial";
    private static final String ARG_PAYABLE_AMOUNT = "payable_amount";
    private static final String ARG_PAYMENT_METHOD = "payment_method";
    private static final String TAG_REQUEST = SellerVerificationFragment.class.getSimpleName();
    private String PaymentMethod;
    private String cardNumber;
    private String cardTypeId;
    private String comment;
    private Long finalPayableAmount;
    private String flag;
    private String mOrderId;
    private Shipment mShipment;
    private ProgressBar progressBr;
    private ArrayList<SerialItems> returnedProducts;
    private Button signBtn;
    private Button submitBtn;
    private EditText verificationCode;

    public static SellerVerificationFragment newInstance(String orderId, String flag, String cardTypeId, String cardNumber, String comment, String PaymentMethod, Long payableAmount) {
        SellerVerificationFragment fragment = new SellerVerificationFragment();
        Bundle args = new Bundle();
        args.putString("order_id", orderId);
        args.putString("complete", flag);
        args.putString(ARG_CARD_TYPE_ID, cardTypeId);
        args.putString(ARG_CRAD_NUMBER, cardNumber);
        args.putString(ARG_COMMENT, comment);
        args.putString(ARG_PAYMENT_METHOD, PaymentMethod);
        args.putLong(ARG_PAYABLE_AMOUNT, payableAmount.longValue());
        fragment.setArguments(args);
        return fragment;
    }

    public static SellerVerificationFragment newInstance(String orderId, String flag, String cardTypeId, String cardNumber, String comment, String PaymentMethod) {
        SellerVerificationFragment fragment = new SellerVerificationFragment();
        Bundle args = new Bundle();
        args.putString("order_id", orderId);
        args.putString("complete", flag);
        args.putString(ARG_CARD_TYPE_ID, cardTypeId);
        args.putString(ARG_CRAD_NUMBER, cardNumber);
        args.putString(ARG_COMMENT, comment);
        args.putString(ARG_PAYMENT_METHOD, PaymentMethod);
        fragment.setArguments(args);
        return fragment;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            this.mOrderId = getArguments().getString("order_id");
            this.flag = getArguments().getString("complete");
            this.cardTypeId = getArguments().getString(ARG_CARD_TYPE_ID);
            this.cardNumber = getArguments().getString(ARG_CRAD_NUMBER);
            this.comment = getArguments().getString(ARG_COMMENT);
            this.PaymentMethod = getArguments().getString(ARG_PAYMENT_METHOD);
            this.finalPayableAmount = Long.valueOf(getArguments().getLong(ARG_PAYABLE_AMOUNT, Long.MIN_VALUE));
        }
        Realm realm = Realm.getDefaultInstance();
        this.mShipment = (Shipment) realm.where(Shipment.class).equalTo(Shipment.COLUMN_ORDER_ID, this.mOrderId).findFirst();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_seller_verification, container, false);
        ImageView backButton = (ImageView) view.findViewById(R.id.back_button);
        this.verificationCode = (EditText) view.findViewById(R.id.verificationCode);
        this.signBtn = (Button) view.findViewById(R.id.signBtn);
        this.submitBtn = (Button) view.findViewById(R.id.submitBtn);
        this.progressBr = (ProgressBar) view.findViewById(R.id.progressBr);
        backButton.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.SellerVerificationFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                SellerVerificationFragment.this.getActivity().onBackPressed();
            }
        });
        this.signBtn.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.SellerVerificationFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (SellerVerificationFragment.this.mShipment.getPaymentStatus() != 1) {
                    SignatureFragment signatureFragment = SignatureFragment.newInstance(SellerVerificationFragment.this.mOrderId, SellerVerificationFragment.this.flag, SellerVerificationFragment.this.cardTypeId, SellerVerificationFragment.this.cardNumber, SellerVerificationFragment.this.comment, SellerVerificationFragment.this.PaymentMethod);
                    SellerVerificationFragment.this.pushFragment(signatureFragment);
                } else if (SellerVerificationFragment.this.finalPayableAmount != null) {
                    SignatureFragment signatureFragment2 = SignatureFragment.newInstance(SellerVerificationFragment.this.mOrderId, SellerVerificationFragment.this.flag, SellerVerificationFragment.this.cardTypeId, SellerVerificationFragment.this.cardNumber, SellerVerificationFragment.this.comment, SellerVerificationFragment.this.PaymentMethod, SellerVerificationFragment.this.finalPayableAmount);
                    SellerVerificationFragment.this.pushFragment(signatureFragment2);
                } else {
                    SignatureFragment signatureFragment3 = SignatureFragment.newInstance(SellerVerificationFragment.this.mOrderId, SellerVerificationFragment.this.flag, SellerVerificationFragment.this.cardTypeId, SellerVerificationFragment.this.cardNumber, SellerVerificationFragment.this.comment, SellerVerificationFragment.this.PaymentMethod);
                    SellerVerificationFragment.this.pushFragment(signatureFragment3);
                }
            }
        });
        this.submitBtn.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.SellerVerificationFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                String verificationCodeTxt = SellerVerificationFragment.this.verificationCode.getText().toString();
                if (!verificationCodeTxt.trim().isEmpty() && verificationCodeTxt.trim().length() == 5 && verificationCodeTxt.trim().equalsIgnoreCase(SellerVerificationFragment.this.mShipment.getPodCode())) {
                    SellerVerificationFragment.this.signBtn.setEnabled(false);
                    SellerVerificationFragment.this.submitBtn.setEnabled(false);
                    SellerVerificationFragment.this.progressBr.setVisibility(0);
                    if (SellerVerificationFragment.this.flag.equals("complete")) {
                        SellerVerificationFragment.this.fullDeliverShipment();
                        return;
                    } else {
                        SellerVerificationFragment.this.partialDeliverShipment();
                        return;
                    }
                }
                Toast.makeText(SellerVerificationFragment.this.getContext(), "لطفاً کد تایید را به درستی وارد کنید!", 0).show();
            }
        });
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void partialDeliverShipment() {
        Log.i("info", this.mOrderId + " --> " + this.flag + "," + this.cardTypeId + "," + this.cardNumber + "," + this.comment + ",");
        String time = Util.getCurrentDateTime();
        final Realm realm = Realm.getDefaultInstance();
        final Shipment shipment = (Shipment) realm.where(Shipment.class).equalTo(Shipment.COLUMN_ORDER_ID, this.mOrderId).findFirst();
        if (!isDetached()) {
            this.returnedProducts = ((ShipmentActivity) getActivity()).getReturnedProducts();
        }
        LatLong latLong = LocationHelper.getLocation();
        realm.beginTransaction();
        LatLong location = (LatLong) realm.createObject(LatLong.class);
        if (latLong != null) {
            location.setLatitude(latLong.getLatitude());
            location.setLongitude(latLong.getLongitude());
        }
        String mDcId = Util.getDistributionPointId(getActivity());
        String mDeliverId = Util.getDeliveryId(getActivity());
        String mPackId = Util.getBatchId(getActivity());
        String gpsStatus = Util.getGpsStatus(getActivity());
        SnowplowHelper.getSnowplowHelperInstance().meldDeliverLocation("7", mDeliverId, mDcId, mPackId, shipment.getOrderId(), time, gpsStatus);
        shipment.setStatus(7);
        shipment.setConfirmTime(time);
        shipment.getReturnedProducts().addAll(this.returnedProducts);
        shipment.setConfirmLocation(location);
        shipment.setSignature(null);
        shipment.setTupleIsSyncedWithServer(false);
        shipment.setCardTypeId(this.cardTypeId);
        shipment.setCardNumber(this.cardNumber);
        shipment.setComment(this.comment);
        if (this.PaymentMethod != null && !this.PaymentMethod.trim().isEmpty()) {
            shipment.setPaymentMethod(this.PaymentMethod);
        }
        if (this.finalPayableAmount.longValue() == Long.MIN_VALUE) {
            shipment.setFinalPayableAmount(null);
            this.finalPayableAmount = null;
        } else {
            shipment.setFinalPayableAmount(this.finalPayableAmount);
        }
        realm.commitTransaction();
        Util.saveLatestShipmentIDToSharedPreference(getActivity(), shipment.getOrderId());
        partialDeliverTracking(realm, shipment, latLong);
        String batchId = Util.getBatchId(getActivity());
        WebApi.makePartialDeliverRequest(batchId, this.mOrderId, this.cardTypeId, this.cardNumber, this.comment, this.PaymentMethod, this.finalPayableAmount, this.returnedProducts, null, location, gpsStatus, TAG_REQUEST, new Response.Listener<JSONObject>() { // from class: com.digikala.dms.view.fragment.SellerVerificationFragment.4
            @Override // com.android.volley.Response.Listener
            public void onResponse(JSONObject response) {
                Log.i("HAlfReturn_log", response.toString());
                AnswersHelper.logNumberRequestAndResponse("Response", "Response Success", "");
                AnalyticHelper.responseRequestEvent("Response", "Response Success", "");
                realm.beginTransaction();
                shipment.setTupleIsSyncedWithServer(true);
                realm.commitTransaction();
                SellerVerificationFragment.this.signBtn.setEnabled(true);
                SellerVerificationFragment.this.submitBtn.setEnabled(true);
                SellerVerificationFragment.this.progressBr.setVisibility(8);
                if (!SellerVerificationFragment.this.isDetached() && SellerVerificationFragment.this.getActivity() != null) {
                    SellerVerificationFragment.this.getActivity().finish();
                }
            }
        }, new Response.ErrorListener() { // from class: com.digikala.dms.view.fragment.SellerVerificationFragment.5
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError error) {
                AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", error.getMessage() + "");
                AnalyticHelper.responseRequestEvent("Response", "Response Error", error.getMessage() + "");
                String message = null;
                try {
                    if (error instanceof NetworkError) {
                        message = "لطفا به اینترنت وصل شوید!";
                    } else if (error instanceof ServerError) {
                        message = "The server could not be found. Please try again after some time!!";
                    } else if (error instanceof AuthFailureError) {
                        message = "Cannot connect to Internet...Please check your connection!";
                    } else if (error instanceof ParseError) {
                        message = "Parsing error! Please try again after some time!!";
                    } else if (error instanceof NoConnectionError) {
                        message = "لطفا به اینترنت وصل شوید!";
                    } else if (error instanceof TimeoutError) {
                        message = "Connection TimeOut! Please check your internet connection.";
                    }
                    Toast.makeText(SellerVerificationFragment.this.getContext(), message, 0).show();
                    SellerVerificationFragment.this.signBtn.setEnabled(true);
                    SellerVerificationFragment.this.submitBtn.setEnabled(true);
                    SellerVerificationFragment.this.progressBr.setVisibility(8);
                    SellerVerificationFragment.this.getActivity().finish();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fullDeliverShipment() {
        Log.i("fullDeliverShipmentLog", this.mOrderId + " --> " + this.flag + "," + this.cardTypeId + "," + this.cardNumber + "," + this.comment + ",");
        String time = Util.getCurrentDateTime();
        final Realm realm = Realm.getDefaultInstance();
        final Shipment shipment = (Shipment) realm.where(Shipment.class).equalTo(Shipment.COLUMN_ORDER_ID, this.mOrderId).findFirst();
        LatLong latLong = LocationHelper.getLocation();
        StringBuilder sb = new StringBuilder();
        sb.append(latLong);
        sb.append("");
        Log.e("latLongfull", sb.toString());
        realm.beginTransaction();
        LatLong location = (LatLong) realm.createObject(LatLong.class);
        if (latLong != null) {
            location.setLatitude(latLong.getLatitude());
            location.setLongitude(latLong.getLongitude());
        }
        String mDcId = Util.getDistributionPointId(getActivity());
        String mDeliverId = Util.getDeliveryId(getActivity());
        String mPackId = Util.getBatchId(getActivity());
        String gpsStatus = Util.getGpsStatus(getActivity());
        SnowplowHelper.getSnowplowHelperInstance().meldDeliverLocation("5", mDeliverId, mDcId, mPackId, shipment.getOrderId(), time, gpsStatus);
        shipment.setStatus(5);
        shipment.setConfirmTime(time);
        shipment.setConfirmLocation(location);
        shipment.setTupleIsSyncedWithServer(false);
        shipment.setSignature(null);
        shipment.setCardTypeId(this.cardTypeId);
        shipment.setCardNumber(this.cardNumber);
        shipment.setComment(this.comment);
        if (this.PaymentMethod != null && !this.PaymentMethod.trim().isEmpty()) {
            shipment.setPaymentMethod(this.PaymentMethod);
        }
        shipment.setFinalPayableAmount(null);
        realm.commitTransaction();
        Util.saveLatestShipmentIDToSharedPreference(getActivity(), shipment.getOrderId());
        fullDeliverTracking(shipment, latLong);
        String batchId = Util.getBatchId(getActivity());
        WebApi.makeFullDeliverRequest(batchId, this.mOrderId, this.cardTypeId, this.cardNumber, this.comment, this.PaymentMethod, "", location, gpsStatus, TAG_REQUEST, new WebApiRequest.WebApiListener<Boolean>() { // from class: com.digikala.dms.view.fragment.SellerVerificationFragment.6
            @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
            public void onResponse(Boolean response) {
                AnswersHelper.logNumberRequestAndResponse("Response", "Response Success", "");
                AnalyticHelper.responseRequestEvent("Response", "Response Success", "");
                if (response.booleanValue()) {
                    realm.beginTransaction();
                    shipment.setTupleIsSyncedWithServer(true);
                    realm.commitTransaction();
                    SellerVerificationFragment.this.signBtn.setEnabled(true);
                    SellerVerificationFragment.this.submitBtn.setEnabled(true);
                    SellerVerificationFragment.this.progressBr.setVisibility(8);
                    if (!SellerVerificationFragment.this.isDetached() && SellerVerificationFragment.this.getActivity() != null) {
                        SellerVerificationFragment.this.getActivity().finish();
                    }
                }
            }

            @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
            public void onErrorResponse(String errorMessage) {
                AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", errorMessage);
                AnalyticHelper.responseRequestEvent("Response", "Response Error", errorMessage);
                Toast.makeText(SellerVerificationFragment.this.getContext(), errorMessage, 0).show();
                SellerVerificationFragment.this.signBtn.setEnabled(true);
                SellerVerificationFragment.this.submitBtn.setEnabled(true);
                SellerVerificationFragment.this.progressBr.setVisibility(8);
                if (!SellerVerificationFragment.this.isDetached() && SellerVerificationFragment.this.getActivity() != null) {
                    SellerVerificationFragment.this.getActivity().finish();
                }
            }
        }, null).send();
    }

    private void fullDeliverTracking(Shipment shipment, LatLong latLong) {
        try {
            String[] dateTime = shipment.getDeliveryTime().split("\\s+");
            String str = dateTime[1];
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void partialDeliverTracking(Realm realm, Shipment shipment, LatLong latLong) {
        try {
            String[] dateTime = shipment.getDeliveryTime().split("\\s+");
            String str = dateTime[1];
        } catch (Exception e) {
            e.printStackTrace();
        }
        for (SerialItems item : this.returnedProducts) {
            RejectReason reason = (RejectReason) realm.where(RejectReason.class).equalTo("id", item.getReasonId()).findFirst();
            AnswersHelper.logReturnShipment(item.getSerialItem(), item.getReasonId(), reason.getTitle());
            AnalyticHelper.returnShipment(item.getSerialItem(), item.getReasonId(), reason.getTitle());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pushFragment(Fragment fragment) {
        String backStateName = fragment.getClass().getName();
        FragmentManager manager = getActivity().getSupportFragmentManager();
        boolean fragmentPopped = manager.popBackStackImmediate(backStateName, 0);
        if (!fragmentPopped) {
            FragmentTransaction ft = manager.beginTransaction();
            ft.replace(R.id.fragment_container, fragment);
            ft.addToBackStack(backStateName);
            ft.commit();
        }
    }
}
