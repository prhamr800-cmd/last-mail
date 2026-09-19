package com.digikala.dms.view.fragment;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.Fragment;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
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
import com.digikala.dms.view.QuestionCustomViewHolder;
import com.digikala.dms.view.QuestionCustomViewItem;
import com.digikala.dms.view.activity.ShipmentActivity;
import com.digikala.dms.view.custom.PaintingView;
import com.digikala.dms.view.custom.XeiTextView;
import com.github.jorgecastilloprz.FABProgressCircle;
import io.realm.Realm;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class SignatureFragment extends Fragment {
    private static final String ARG_CARD_TYPE_ID = "card_type_id";
    private static final String ARG_COMMENT = "comment";
    public static final String ARG_COMPLETE_FLAG = "complete";
    private static final String ARG_CRAD_NUMBER = "card_number";
    private static final String ARG_ORDER_ID = "order_id";
    public static final String ARG_PARTIAL_FLAG = "partial";
    private static final String ARG_PAYABLE_AMOUNT = "payable_amount";
    private static final String ARG_PAYMENT_METHOD = "payment_method";
    private static final String TAG_REQUEST = SignatureFragment.class.getSimpleName();
    private String PaymentMethod;
    private String cardNumber;
    private String cardTypeId;
    private String comment;
    private AlertDialog confirmDialog;
    private FloatingActionButton fab;
    private FABProgressCircle fabProgressCircle;
    private Long finalPayableAmount;
    private String flag;
    private String mOrderId;
    private PaintingView mPaintingView;
    private double period;
    private Dialog questionDialog;
    private ArrayList<SerialItems> returnedProducts;
    private int seekBarWidth;
    private QuestionCustomViewHolder viewHolder;

    public static SignatureFragment newInstance(String orderId, String flag, String cardTypeId, String cardNumber, String comment, String PaymentMethod, Long payableAmount) {
        SignatureFragment fragment = new SignatureFragment();
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

    public static SignatureFragment newInstance(String orderId, String flag, String cardTypeId, String cardNumber, String comment, String PaymentMethod) {
        SignatureFragment fragment = new SignatureFragment();
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
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_signature, container, false);
        this.mPaintingView = (PaintingView) view.findViewById(R.id.paintingView);
        this.fab = (FloatingActionButton) view.findViewById(R.id.fragmentSignature_fab);
        this.fabProgressCircle = (FABProgressCircle) view.findViewById(R.id.fabProgressCircle_signature_confirm);
        ImageButton clearButton = (ImageButton) view.findViewById(R.id.clearBtn);
        ImageView backButton = (ImageView) view.findViewById(R.id.fragment_signature_back);
        clearButton.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.SignatureFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                SignatureFragment.this.mPaintingView.clearCanvas();
            }
        });
        backButton.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.SignatureFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                SignatureFragment.this.getActivity().onBackPressed();
            }
        });
        this.fab.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.SignatureFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (SignatureFragment.this.mPaintingView.getPainting() != null) {
                    AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(SignatureFragment.this.getActivity());
                    LayoutInflater inflater2 = SignatureFragment.this.getActivity().getLayoutInflater();
                    View dialogView = inflater2.inflate(R.layout.signature_dialog_confirm, (ViewGroup) null);
                    TextView textViewConfirm = (TextView) dialogView.findViewById(R.id.signature_confirm_yes);
                    textViewConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.SignatureFragment.3.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View v2) {
                            SignatureFragment.this.fab.setEnabled(false);
                            SignatureFragment.this.fabProgressCircle.show();
                            if (SignatureFragment.this.flag.equals("complete")) {
                                SignatureFragment.this.fullDeliverShipment();
                            } else {
                                SignatureFragment.this.partialDeliverShipment();
                            }
                            SignatureFragment.this.confirmDialog.dismiss();
                        }
                    });
                    alertDialogBuilder.setView(dialogView).setCancelable(true);
                    SignatureFragment.this.confirmDialog = alertDialogBuilder.create();
                    SignatureFragment.this.confirmDialog.show();
                    return;
                }
                Toast.makeText(SignatureFragment.this.getContext(), "امضای کاربر الزامیست", 0).show();
            }
        });
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void partialDeliverShipment() {
        Log.i("info", this.mOrderId + " --> " + this.flag + "," + this.cardTypeId + "," + this.cardNumber + "," + this.comment + ",");
        String sign = this.mPaintingView.getBase64Painting();
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
        shipment.setSignature(sign);
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
        WebApi.makePartialDeliverRequest(batchId, this.mOrderId, this.cardTypeId, this.cardNumber, this.comment, this.PaymentMethod, this.finalPayableAmount, this.returnedProducts, sign, location, gpsStatus, TAG_REQUEST, new Response.Listener<JSONObject>() { // from class: com.digikala.dms.view.fragment.SignatureFragment.4
            @Override // com.android.volley.Response.Listener
            public void onResponse(JSONObject response) {
                Log.i("HAlfReturn_log", response.toString());
                AnswersHelper.logNumberRequestAndResponse("Response", "Response Success", "");
                AnalyticHelper.responseRequestEvent("Response", "Response Success", "");
                realm.beginTransaction();
                shipment.setTupleIsSyncedWithServer(true);
                realm.commitTransaction();
                SignatureFragment.this.fabProgressCircle.hide();
                if (!SignatureFragment.this.isDetached() && SignatureFragment.this.getActivity() != null) {
                    SignatureFragment.this.getActivity().finish();
                }
            }
        }, new Response.ErrorListener() { // from class: com.digikala.dms.view.fragment.SignatureFragment.5
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError error) {
                AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", error.getMessage() + "");
                AnalyticHelper.responseRequestEvent("Response", "Response Error", error.getMessage() + "");
                try {
                    SignatureFragment.this.fabProgressCircle.hide();
                    String message = null;
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
                    Toast.makeText(SignatureFragment.this.getContext(), message, 0).show();
                    SignatureFragment.this.getActivity().finish();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fullDeliverShipment() {
        Log.i("fullDeliverShipmentLog", this.mOrderId + " --> " + this.flag + "," + this.cardTypeId + "," + this.cardNumber + "," + this.comment + ",");
        String sign = this.mPaintingView.getBase64Painting();
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
        shipment.setSignature(sign);
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
        WebApi.makeFullDeliverRequest(batchId, this.mOrderId, this.cardTypeId, this.cardNumber, this.comment, this.PaymentMethod, sign, location, gpsStatus, TAG_REQUEST, new WebApiRequest.WebApiListener<Boolean>() { // from class: com.digikala.dms.view.fragment.SignatureFragment.6
            @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
            public void onResponse(Boolean response) {
                AnswersHelper.logNumberRequestAndResponse("Response", "Response Success", "");
                AnalyticHelper.responseRequestEvent("Response", "Response Success", "");
                if (response.booleanValue()) {
                    realm.beginTransaction();
                    shipment.setTupleIsSyncedWithServer(true);
                    realm.commitTransaction();
                    SignatureFragment.this.fabProgressCircle.hide();
                    if (!SignatureFragment.this.isDetached() && SignatureFragment.this.getActivity() != null) {
                        SignatureFragment.this.getActivity().finish();
                    }
                }
            }

            @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
            public void onErrorResponse(String errorMessage) {
                AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", errorMessage);
                AnalyticHelper.responseRequestEvent("Response", "Response Error", errorMessage);
                Toast.makeText(SignatureFragment.this.getContext(), errorMessage, 0).show();
                SignatureFragment.this.fabProgressCircle.hide();
                if (!SignatureFragment.this.isDetached() && SignatureFragment.this.getActivity() != null) {
                    SignatureFragment.this.getActivity().finish();
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

    private void questionDialogBox() {
        this.questionDialog = new Dialog(getActivity(), 0);
        this.questionDialog.requestWindowFeature(1);
        this.questionDialog.setContentView(R.layout.question_dialog);
        this.questionDialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        WindowManager.LayoutParams lp = new WindowManager.LayoutParams();
        Window window = this.questionDialog.getWindow();
        lp.copyFrom(window.getAttributes());
        lp.width = -1;
        lp.height = -2;
        window.setAttributes(lp);
        final XeiTextView confirmTextView = (XeiTextView) this.questionDialog.findViewById(R.id.confirmTextView);
        ImageView cancelImageView = (ImageView) this.questionDialog.findViewById(R.id.cancelImageView);
        this.viewHolder = new QuestionCustomViewHolder(getActivity(), this.questionDialog);
        final List<QuestionCustomViewItem> viewItems = this.viewHolder.getItems();
        for (final QuestionCustomViewItem viewItem : viewItems) {
            viewItem.getLayout().setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.SignatureFragment.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    confirmTextView.setVisibility(0);
                    SignatureFragment.this.resetAllViewProperties(viewItems);
                    SignatureFragment.this.setViewProperties(viewItem);
                }
            });
        }
        cancelImageView.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.SignatureFragment.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SignatureFragment.this.fabProgressCircle.show();
                if (SignatureFragment.this.flag.equals("complete")) {
                    SignatureFragment.this.fullDeliverShipment();
                } else {
                    SignatureFragment.this.partialDeliverShipment();
                }
                SignatureFragment.this.questionDialog.dismiss();
            }
        });
        this.questionDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setViewProperties(QuestionCustomViewItem viewItem) {
        if (viewItem.getId() >= 0 && viewItem.getId() <= 6) {
            viewItem.getTextView().setBackgroundDrawable(getResources().getDrawable(R.drawable.question_text_background_bad));
            viewItem.getTextView().setTextColor(getResources().getColor(android.R.color.white));
            viewItem.getImageView().setVisibility(0);
            viewItem.getViewIcon().setVisibility(0);
            viewItem.getView().setBackgroundColor(getResources().getColor(R.color.question_layout_selected_bad));
            viewItem.getCircle().setBackgroundDrawable(getResources().getDrawable(R.drawable.circle_selected_bad));
        } else if (viewItem.getId() >= 7 && viewItem.getId() <= 8) {
            viewItem.getTextView().setBackgroundDrawable(getResources().getDrawable(R.drawable.question_text_background_average));
            viewItem.getTextView().setTextColor(getResources().getColor(android.R.color.white));
            viewItem.getImageView().setVisibility(0);
            viewItem.getViewIcon().setVisibility(0);
            viewItem.getView().setBackgroundColor(getResources().getColor(R.color.question_layout_selected_average));
            viewItem.getCircle().setBackgroundDrawable(getResources().getDrawable(R.drawable.circle_selected_avereage));
        } else if (viewItem.getId() >= 9 && viewItem.getId() <= 10) {
            viewItem.getTextView().setBackgroundDrawable(getResources().getDrawable(R.drawable.question_text_background_good));
            viewItem.getTextView().setTextColor(getResources().getColor(android.R.color.white));
            viewItem.getImageView().setVisibility(0);
            viewItem.getViewIcon().setVisibility(0);
            viewItem.getView().setBackgroundColor(getResources().getColor(R.color.question_layout_selected_good));
            viewItem.getCircle().setBackgroundDrawable(getResources().getDrawable(R.drawable.circle_selected_good));
        }
        this.viewHolder.setSelectedItem(viewItem);
        Log.e("selected", this.viewHolder.getSelectedItem().getId() + "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetAllViewProperties(List<QuestionCustomViewItem> viewItems) {
        for (QuestionCustomViewItem item : viewItems) {
            item.getTextView().setBackgroundDrawable(null);
            item.getTextView().setTextColor(getResources().getColor(R.color.question_layout_text));
            item.getImageView().setVisibility(8);
            item.getViewIcon().setVisibility(8);
            item.getView().setBackgroundColor(getResources().getColor(R.color.question_layout_line));
            item.getCircle().setBackgroundDrawable(getResources().getDrawable(R.drawable.circle));
        }
    }
}
