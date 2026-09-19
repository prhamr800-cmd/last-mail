package com.digikala.dms.view.fragment;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomSheetBehavior;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import android.support.v4.widget.SwipeRefreshLayout;
import android.util.Log;
import android.view.InflateException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.digikala.dms.R;
import com.digikala.dms.helper.TypeFaceHelper;
import com.digikala.dms.helper.fabric.answers.AnswersHelper;
import com.digikala.dms.helper.firebase.analytics.AnalyticHelper;
import com.digikala.dms.helper.webservice.WebApi;
import com.digikala.dms.helper.webservice.WebApiRequest;
import com.digikala.dms.model.domain.BasketItems;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.model.domain.ShipmentItem;
import com.digikala.dms.util.Util;
import com.digikala.dms.view.activity.ShipmentActivity;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import io.realm.Realm;
import io.realm.RealmList;
import io.realm.internal.SyncObjectServerFacade;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ShipmentDetailsFragment extends Fragment implements View.OnClickListener, SwipeRefreshLayout.OnRefreshListener, OnMapReadyCallback {
    private static final String ARG_ORDER_ID = "ARG_ORDER_ID";
    private static final float LEVEL_BEARING = 0.0f;
    private static final float LEVEL_TILT = 0.0f;
    private static final float LEVEL_ZOOM = 16.0f;
    private static final String TAG_REQUEST = ShipmentDetailsFragment.class.getSimpleName();
    private View bottomSheet;
    private View cancelButton;
    private ImageView cancelImage;
    private TextView cancelText;
    private TextView customerNameTextView;
    private TextView customerPhoneTextView;
    private View darkLayer;
    private View deliverButton;
    private ImageView deliverImage;
    private TextView deliverText;
    private TextView deliveryAddressTextView;
    private TextView deliveryDateTextView;
    private TextView deliveryTimeTextView;
    private boolean expandBottomSheet = false;
    private GoogleMap googleMap;
    private TextView invoiceIdTextView;
    private BottomSheetBehavior mBottomSheetBehavior;
    private OnStateButtonClickListener mListener;
    private String mOrderId;
    private SwipeRefreshLayout mReloadDetailsSwipeRefreshLayout;
    private Shipment mShipment;
    private View missCallButton;
    private ImageView missCallImage;
    private TextView missCallText;
    private TextView orderStateTextView;
    private View orderStateView;
    private View partialDeliverButton;
    private ImageView partialDeliverImage;
    private TextView partialDeliverText;
    private TextView paymentPriceTextView;
    private TextView paymentStateTextView;
    private TextView recipientNameTextView;
    private TextView recipientPhoneTextView;
    private View returnButton;
    private ImageView returnImage;
    private TextView returnText;
    private View rootView;
    private LinearLayout shipmentItemsRowContainer;
    private TextView trackingIdTextView;

    public interface OnStateButtonClickListener {
        void onStateButtonClick(int i);
    }

    public static ShipmentDetailsFragment newInstance(String orderId) {
        ShipmentDetailsFragment fragment = new ShipmentDetailsFragment();
        Bundle args = new Bundle();
        args.putString(ARG_ORDER_ID, orderId);
        fragment.setArguments(args);
        return fragment;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            this.mOrderId = getArguments().getString(ARG_ORDER_ID);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        ViewGroup parent;
        if (this.rootView != null && (parent = (ViewGroup) this.rootView.getParent()) != null) {
            parent.removeView(this.rootView);
        }
        try {
            this.rootView = inflater.inflate(R.layout.fragment_shipment_details, container, false);
        } catch (InflateException e) {
            e.printStackTrace();
            Log.e(TAG_REQUEST, e.getMessage());
        }
        Realm realm = Realm.getDefaultInstance();
        this.mShipment = (Shipment) realm.where(Shipment.class).equalTo(Shipment.COLUMN_ORDER_ID, this.mOrderId).findFirst();
        realm.close();
        if (this.mShipment != null) {
            init(this.rootView);
            renderUi();
        }
        ImageButton backButton = (ImageButton) this.rootView.findViewById(R.id.back_button);
        backButton.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.ShipmentDetailsFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ShipmentDetailsFragment.this.getActivity().onBackPressed();
            }
        });
        return this.rootView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renderUi() {
        View view;
        try {
            this.mBottomSheetBehavior = BottomSheetBehavior.from(this.bottomSheet);
            this.mBottomSheetBehavior.setBottomSheetCallback(new BottomSheetBehavior.BottomSheetCallback() { // from class: com.digikala.dms.view.fragment.ShipmentDetailsFragment.2
                @Override // android.support.design.widget.BottomSheetBehavior.BottomSheetCallback
                public void onStateChanged(@NonNull View bottomSheet, int newState) {
                    switch (newState) {
                        case 3:
                            if (!ShipmentDetailsFragment.this.expandBottomSheet) {
                                ShipmentDetailsFragment.this.expandBottomSheet = true;
                            }
                            ShipmentDetailsFragment.this.darkLayer.setVisibility(0);
                            ShipmentDetailsFragment.this.darkLayer.startAnimation(AnimationUtils.loadAnimation(ShipmentDetailsFragment.this.getContext(), android.R.anim.fade_in));
                            ((ShipmentActivity) ShipmentDetailsFragment.this.getActivity()).setStateDialogOpen(true);
                            break;
                        case 4:
                            if (ShipmentDetailsFragment.this.expandBottomSheet) {
                                ShipmentDetailsFragment.this.expandBottomSheet = false;
                            }
                            ShipmentDetailsFragment.this.darkLayer.setVisibility(8);
                            try {
                                ((ShipmentActivity) ShipmentDetailsFragment.this.getActivity()).setStateDialogOpen(false);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            break;
                    }
                }

                @Override // android.support.design.widget.BottomSheetBehavior.BottomSheetCallback
                public void onSlide(@NonNull View bottomSheet, float slideOffset) {
                }
            });
            switch (this.mShipment.getStatus()) {
                case 5:
                    this.orderStateTextView.setText(getString(R.string.status_deliver));
                    this.orderStateTextView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.delivered));
                    this.deliverImage.setImageResource(R.drawable.ic_checkmark_hover);
                    this.deliverText.setTypeface(TypeFaceHelper.getInstance().getTypeFace(5));
                    break;
                case 6:
                    this.orderStateTextView.setText(getString(R.string.status_return));
                    this.orderStateTextView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.returned));
                    this.returnImage.setImageResource(R.drawable.ic_returned_hover);
                    this.returnText.setTypeface(TypeFaceHelper.getInstance().getTypeFace(5));
                    break;
                case 7:
                    this.orderStateTextView.setText(getString(R.string.status_partial_deliver));
                    this.orderStateTextView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.partial_delivered));
                    this.partialDeliverImage.setImageResource(R.drawable.ic_to_do_hover);
                    this.partialDeliverText.setTypeface(TypeFaceHelper.getInstance().getTypeFace(5));
                    break;
                case 8:
                    this.orderStateTextView.setText(getString(R.string.status_miss_call));
                    this.orderStateTextView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.miss_call));
                    this.missCallImage.setImageResource(R.drawable.ic_absence_hover);
                    this.missCallText.setTypeface(TypeFaceHelper.getInstance().getTypeFace(5));
                    break;
                case 9:
                    this.orderStateTextView.setText(getString(R.string.status_left));
                    this.orderStateTextView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.canceled));
                    this.cancelImage.setImageResource(R.drawable.ic_unsend_hover);
                    this.cancelText.setTypeface(TypeFaceHelper.getInstance().getTypeFace(5));
                    break;
                default:
                    this.orderStateTextView.setText(getString(R.string.order_state));
                    this.orderStateTextView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.grey_100));
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            if (this.mShipment.getPaymentStatus() == 1) {
                this.paymentStateTextView.setText("پرداخت در محل");
            } else {
                this.paymentStateTextView.setText("پرداخت شده");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            this.paymentPriceTextView.setText(Util.formatPrice(String.valueOf(this.mShipment.getRemainingAmount())) + " ریال");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        try {
            this.customerNameTextView.setText(this.mShipment.getCustomerName());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        boolean z = false;
        try {
            this.customerPhoneTextView.setText(Util.persianizeDigitsInString(this.mShipment.getCustomerPhoneNo()));
            final String strTrim = this.mShipment.getCustomerPhoneNo().split("\\|")[0].trim();
            this.customerPhoneTextView.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.ShipmentDetailsFragment.3
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    try {
                        Util.call(ShipmentDetailsFragment.this.getContext(), strTrim);
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
            });
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        try {
            this.recipientNameTextView.setText(this.mShipment.getRecipientName());
        } catch (Exception e6) {
            e6.printStackTrace();
        }
        try {
            this.recipientPhoneTextView.setText(Util.persianizeDigitsInString(this.mShipment.getRecipientPhoneNo()));
            final String strTrim2 = this.mShipment.getRecipientPhoneNo().split("\\|")[0].trim();
            this.recipientPhoneTextView.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.ShipmentDetailsFragment.4
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    try {
                        Util.call(ShipmentDetailsFragment.this.getContext(), strTrim2);
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                }
            });
        } catch (Exception e7) {
            e7.printStackTrace();
        }
        try {
            String[] strArrSplit = this.mShipment.getDeliveryTime().split("\\s+");
            this.deliveryDateTextView.setText(Util.persianizeDigitsInString(strArrSplit[0]));
            this.deliveryTimeTextView.setText(Util.persianizeDigitsInString(strArrSplit[1]));
        } catch (Exception e8) {
            e8.printStackTrace();
        }
        try {
            this.deliveryAddressTextView.setText(this.mShipment.getDeliveryAddress());
        } catch (Exception e9) {
            e9.printStackTrace();
        }
        try {
            this.trackingIdTextView.setText(Util.persianizeDigitsInString(this.mShipment.getOrderId()));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            this.invoiceIdTextView.setText(Util.persianizeDigitsInString(this.mShipment.getInvoiceId()));
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        RealmList<BasketItems> basketItems = this.mShipment.getBasketItems();
        if (this.shipmentItemsRowContainer.getChildCount() > 1) {
            try {
                this.shipmentItemsRowContainer.removeViews(1, this.shipmentItemsRowContainer.getChildCount() - 1);
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
        this.deliveryAddressTextView.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.ShipmentDetailsFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (Double.valueOf(ShipmentDetailsFragment.this.mShipment.getDeliveryLatLong().getLatitude()) == null || Double.valueOf(ShipmentDetailsFragment.this.mShipment.getDeliveryLatLong().getLongitude()) == null || ShipmentDetailsFragment.this.mShipment.getDeliveryLatLong().getLatitude() == 0.0d || ShipmentDetailsFragment.this.mShipment.getDeliveryLatLong().getLongitude() == 0.0d) {
                    Toast.makeText(ShipmentDetailsFragment.this.getActivity(), "لوکیشن ثبت نشده است", 1).show();
                    return;
                }
                Uri location = Uri.parse("geo:0,0?q=" + ShipmentDetailsFragment.this.mShipment.getDeliveryLatLong().getLatitude() + "," + ShipmentDetailsFragment.this.mShipment.getDeliveryLatLong().getLongitude() + "&z=16");
                Intent mapIntent = new Intent("android.intent.action.VIEW", location);
                PackageManager packageManager = ShipmentDetailsFragment.this.getActivity().getPackageManager();
                List<ResolveInfo> activities = packageManager.queryIntentActivities(mapIntent, 0);
                boolean isIntentSafe = activities.size() > 0;
                if (isIntentSafe) {
                    ShipmentDetailsFragment.this.startActivity(mapIntent);
                }
            }
        });
        int i = 0;
        while (i < basketItems.size()) {
            RealmList<ShipmentItem> orderItems = this.mShipment.getBasketItems().get(i).getOrderItems();
            BasketItems basketItems2 = basketItems.get(i);
            LayoutInflater layoutInflater = getActivity().getLayoutInflater();
            ViewGroup viewGroup = null;
            View viewInflate = layoutInflater.inflate(R.layout.row_shipment_basket_header, (ViewGroup) null, z);
            int i2 = -1;
            viewInflate.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            TextView textView = (TextView) viewInflate.findViewById(R.id.row_basketHeader);
            if (this.mShipment.getFmcg().booleanValue()) {
                textView.setText("سبد " + basketItems2.getBasketId());
            } else {
                textView.setText("فقره " + basketItems2.getBasketId());
            }
            Log.e("basket0", basketItems.get(z ? 1 : 0).getBasketId() + "");
            this.shipmentItemsRowContainer.addView(viewInflate);
            int i3 = 0;
            while (i3 < orderItems.size()) {
                ShipmentItem shipmentItem = orderItems.get(i3);
                View viewInflate2 = getActivity().getLayoutInflater().inflate(R.layout.shipment_item_detail_layout, viewGroup, z);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, -2);
                layoutParams.topMargin = 36;
                viewInflate2.setLayoutParams(layoutParams);
                TextView textView2 = (TextView) viewInflate2.findViewById(R.id.rw_code);
                TextView textView3 = (TextView) viewInflate2.findViewById(R.id.rw_desc);
                RealmList<BasketItems> realmList = basketItems;
                TextView textView4 = (TextView) viewInflate2.findViewById(R.id.rw_count);
                RealmList<ShipmentItem> realmList2 = orderItems;
                TextView textView5 = (TextView) viewInflate2.findViewById(R.id.rw_price);
                BasketItems basketItems3 = basketItems2;
                if (this.mShipment != null) {
                    textView2.setText(shipmentItem.getOrderItemId());
                }
                String[] strArrSplit2 = shipmentItem.getDescription().split("\\s+");
                LayoutInflater layoutInflater2 = layoutInflater;
                if (strArrSplit2.length >= 3) {
                    int i4 = 0;
                    while (i4 < strArrSplit2.length) {
                        textView3.setText(strArrSplit2[0] + " " + strArrSplit2[1] + " " + strArrSplit2[2] + "-" + shipmentItem.getBrandName());
                        i4++;
                        viewInflate = viewInflate;
                        layoutParams = layoutParams;
                    }
                    view = viewInflate;
                } else {
                    view = viewInflate;
                    textView3.setText(shipmentItem.getDescription() + "-" + shipmentItem.getBrandName());
                }
                textView4.setText(String.valueOf(shipmentItem.getTotalCount()));
                textView5.setText(Util.formatPrice(String.valueOf(shipmentItem.getAmountPerQuantity())));
                this.shipmentItemsRowContainer.addView(viewInflate2);
                i3++;
                basketItems = realmList;
                orderItems = realmList2;
                basketItems2 = basketItems3;
                layoutInflater = layoutInflater2;
                viewInflate = view;
                z = false;
                viewGroup = null;
                i2 = -1;
            }
            i++;
            z = false;
        }
        if (this.mShipment.getBasketItems() != null && this.mShipment.getBasketItems().size() == 1 && this.mShipment.getBasketItems().get(0).getOrderItems() != null && this.mShipment.getBasketItems().get(0).getOrderItems().size() == 1 && this.mShipment.getBasketItems().get(0).getOrderItems().get(0).getTotalCount() == 1) {
            this.partialDeliverButton.setEnabled(false);
            this.partialDeliverText.setTextColor(getResources().getColor(R.color.returned));
            this.partialDeliverImage.setImageResource(R.drawable.ic_to_do_disable);
        }
        this.deliverButton.setOnClickListener(this);
        this.partialDeliverButton.setOnClickListener(this);
        this.missCallButton.setOnClickListener(this);
        this.returnButton.setOnClickListener(this);
        this.cancelButton.setOnClickListener(this);
        this.orderStateTextView.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.ShipmentDetailsFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (!ShipmentDetailsFragment.this.expandBottomSheet) {
                    ShipmentDetailsFragment.this.expandBottomSheet = true;
                    ShipmentDetailsFragment.this.mBottomSheetBehavior.setState(3);
                    ((ShipmentActivity) ShipmentDetailsFragment.this.getActivity()).setStateDialogOpen(true);
                } else {
                    ShipmentDetailsFragment.this.expandBottomSheet = false;
                    ShipmentDetailsFragment.this.mBottomSheetBehavior.setState(4);
                    ((ShipmentActivity) ShipmentDetailsFragment.this.getActivity()).setStateDialogOpen(false);
                }
            }
        });
        this.darkLayer.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.ShipmentDetailsFragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ShipmentDetailsFragment.this.expandBottomSheet = false;
                ShipmentDetailsFragment.this.mBottomSheetBehavior.setState(4);
                ((ShipmentActivity) ShipmentDetailsFragment.this.getActivity()).setStateDialogOpen(false);
            }
        });
    }

    public void onButtonPressed(int action) {
        if (this.mListener != null) {
            this.mListener.onStateButtonClick(action);
            collapseStateDialog();
        }
    }

    public void collapseStateDialog() {
        this.expandBottomSheet = false;
        this.mBottomSheetBehavior.setState(4);
    }

    private void expandStateDialog() {
        this.expandBottomSheet = true;
        this.mBottomSheetBehavior.setState(3);
        this.darkLayer.setVisibility(0);
        this.darkLayer.startAnimation(AnimationUtils.loadAnimation(getContext(), android.R.anim.fade_in));
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof OnStateButtonClickListener) {
            this.mListener = (OnStateButtonClickListener) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnStateButtonClickListener");
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.mListener = null;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        onButtonPressed(v.getId());
    }

    @Override // android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        String batchId = Util.getBatchId(SyncObjectServerFacade.getApplicationContext());
        if (batchId != null) {
            WebApi.makeGetShipment(batchId, this.mOrderId, TAG_REQUEST, new WebApiRequest.WebApiListener<ArrayList<Shipment>>() { // from class: com.digikala.dms.view.fragment.ShipmentDetailsFragment.8
                @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
                public void onResponse(ArrayList<Shipment> shipments) {
                    AnswersHelper.logNumberRequestAndResponse("Response", "Response Success", "");
                    AnalyticHelper.responseRequestEvent("Response", "Response Success", "");
                    Shipment shipment = shipments.get(0);
                    Realm realm = Realm.getDefaultInstance();
                    realm.beginTransaction();
                    ShipmentDetailsFragment.this.reloadShipment(shipment);
                    realm.commitTransaction();
                    realm.close();
                    ShipmentDetailsFragment.this.mReloadDetailsSwipeRefreshLayout.setRefreshing(false);
                    ShipmentDetailsFragment.this.renderUi();
                }

                @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
                public void onErrorResponse(String errorMessage) {
                    AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", errorMessage);
                    AnalyticHelper.responseRequestEvent("Response", "Response Error", errorMessage);
                    Toast.makeText(ShipmentDetailsFragment.this.getActivity(), errorMessage, 0).show();
                    ShipmentDetailsFragment.this.mReloadDetailsSwipeRefreshLayout.setRefreshing(false);
                }
            }, null).send();
        } else {
            Toast.makeText(getActivity(), "pack id is null !!!", 1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reloadShipment(Shipment shipment) {
        this.mShipment.setOrderId(shipment.getOrderId());
        this.mShipment.setPodCode(shipment.getPodCode());
        this.mShipment.setInvoiceId(shipment.getInvoiceId());
        this.mShipment.setPriority(shipment.getPriority());
        this.mShipment.setPaymentStatus(shipment.getPaymentStatus());
        this.mShipment.setPayableAmount(shipment.getPayableAmount());
        this.mShipment.setRemainingAmount(shipment.getRemainingAmount());
        this.mShipment.setCustomerName(shipment.getCustomerName());
        this.mShipment.setCustomerPhoneNo(shipment.getCustomerPhoneNo());
        this.mShipment.setRecipientName(shipment.getRecipientName());
        this.mShipment.setRecipientPhoneNo(shipment.getRecipientPhoneNo());
        this.mShipment.setDeliveryTime(shipment.getDeliveryTime());
        this.mShipment.setDeliveryAddress(shipment.getDeliveryAddress());
        this.mShipment.getDeliveryLatLong().setLatitude(shipment.getDeliveryLatLong().getLatitude());
        this.mShipment.getDeliveryLatLong().setLongitude(shipment.getDeliveryLatLong().getLongitude());
        this.mShipment.getBasketItems().removeAll(this.mShipment.getBasketItems());
        this.mShipment.getBasketItems().addAll(shipment.getBasketItems());
        int status = shipment.getStatus();
        if (status == 1 || status == 2 || status == 3 || status == 4) {
            this.mShipment.setStatus(1);
        } else {
            this.mShipment.setStatus(status);
        }
    }

    private void init(View rootView) {
        this.bottomSheet = rootView.findViewById(R.id.order_state_layout);
        this.orderStateTextView = (TextView) rootView.findViewById(R.id.order_state_text_view);
        this.orderStateView = rootView.findViewById(R.id.order_state_chooser_view);
        this.paymentStateTextView = (TextView) rootView.findViewById(R.id.payment_state_text_view);
        this.paymentPriceTextView = (TextView) rootView.findViewById(R.id.payment_price_text_view);
        this.customerNameTextView = (TextView) rootView.findViewById(R.id.customer_name_text_view);
        this.customerPhoneTextView = (TextView) rootView.findViewById(R.id.customer_phone_text_view);
        this.recipientNameTextView = (TextView) rootView.findViewById(R.id.recipient_name_text_view);
        this.recipientPhoneTextView = (TextView) rootView.findViewById(R.id.recipient_phone_text_view);
        this.deliveryDateTextView = (TextView) rootView.findViewById(R.id.delivery_date_text_view);
        this.deliveryTimeTextView = (TextView) rootView.findViewById(R.id.delivery_time_text_view);
        this.deliveryAddressTextView = (TextView) rootView.findViewById(R.id.delivery_address_text_view);
        this.trackingIdTextView = (TextView) rootView.findViewById(R.id.tracking_id_text_view);
        this.invoiceIdTextView = (TextView) rootView.findViewById(R.id.invoice_id_text_view);
        this.shipmentItemsRowContainer = (LinearLayout) rootView.findViewById(R.id.rw_container);
        this.deliverButton = rootView.findViewById(R.id.fragment_shipment_details_deliver);
        this.partialDeliverButton = rootView.findViewById(R.id.fragment_shipment_details_partial_deliver);
        this.missCallButton = rootView.findViewById(R.id.fragment_shipment_details_miss_call);
        this.returnButton = rootView.findViewById(R.id.fragment_shipment_details_returned);
        this.cancelButton = rootView.findViewById(R.id.fragment_shipment_details_left);
        this.deliverImage = (ImageView) rootView.findViewById(R.id.fragment_shipment_details_deliver_image);
        this.partialDeliverImage = (ImageView) rootView.findViewById(R.id.fragment_shipment_details_partial_deliver_image);
        this.missCallImage = (ImageView) rootView.findViewById(R.id.fragment_shipment_details_miss_call_image);
        this.returnImage = (ImageView) rootView.findViewById(R.id.fragment_shipment_details_returned_image);
        this.cancelImage = (ImageView) rootView.findViewById(R.id.fragment_shipment_details_left_image);
        this.deliverText = (TextView) rootView.findViewById(R.id.fragment_shipment_details_deliver_text);
        this.partialDeliverText = (TextView) rootView.findViewById(R.id.fragment_shipment_details_partial_deliver_text);
        this.missCallText = (TextView) rootView.findViewById(R.id.fragment_shipment_details_miss_call_text);
        this.returnText = (TextView) rootView.findViewById(R.id.fragment_shipment_details_returned_text);
        this.cancelText = (TextView) rootView.findViewById(R.id.fragment_shipment_details_left_text);
        this.darkLayer = rootView.findViewById(R.id.dark_layer);
        this.mReloadDetailsSwipeRefreshLayout = (SwipeRefreshLayout) rootView.findViewById(R.id.fragment_shipment_details_swipeRefreshLayout_reload_details);
        this.mReloadDetailsSwipeRefreshLayout.setColorSchemeResources(R.color.colorAccent);
        this.mReloadDetailsSwipeRefreshLayout.setOnRefreshListener(this);
    }

    @Override // com.google.android.gms.maps.OnMapReadyCallback
    public void onMapReady(GoogleMap googleMap) {
        this.googleMap = googleMap;
        try {
            LatLng shipmentLatLng = new LatLng(this.mShipment.getDeliveryLatLong().getLatitude(), this.mShipment.getDeliveryLatLong().getLongitude());
            addMarkerToMap(shipmentLatLng, this.mShipment.getCustomerName(), 210.0f);
            goToLocation(shipmentLatLng);
        } catch (Exception e) {
            e.printStackTrace();
            Log.e(TAG_REQUEST, e.getMessage() + "");
        }
    }

    private void goToLocation(LatLng latLng) {
        CameraPosition cameraPosition = CameraPosition.builder().target(latLng).zoom(LEVEL_ZOOM).bearing(0.0f).tilt(0.0f).build();
        this.googleMap.animateCamera(CameraUpdateFactory.newCameraPosition(cameraPosition), null);
    }

    private Marker addMarkerToMap(LatLng latLng, String title, float hue) {
        MarkerOptions markerOptions = new MarkerOptions().position(latLng);
        markerOptions.title(title);
        markerOptions.icon(BitmapDescriptorFactory.defaultMarker(hue));
        return this.googleMap.addMarker(markerOptions);
    }
}
