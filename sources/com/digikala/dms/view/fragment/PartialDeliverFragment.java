package com.digikala.dms.view.fragment;

import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;
import com.afollestad.materialdialogs.DialogAction;
import com.afollestad.materialdialogs.GravityEnum;
import com.afollestad.materialdialogs.MaterialDialog;
import com.android.volley.AuthFailureError;
import com.android.volley.NetworkError;
import com.android.volley.NoConnectionError;
import com.android.volley.ParseError;
import com.android.volley.Response;
import com.android.volley.ServerError;
import com.android.volley.TimeoutError;
import com.android.volley.VolleyError;
import com.digikala.dms.R;
import com.digikala.dms.adapter.PartialDeliverAdapter;
import com.digikala.dms.helper.fabric.answers.AnswersHelper;
import com.digikala.dms.helper.firebase.analytics.AnalyticHelper;
import com.digikala.dms.helper.touch.PartialDeliverItemClickListener;
import com.digikala.dms.helper.touch.SwipeControllerActions;
import com.digikala.dms.helper.touch.SwipeMenuCallback;
import com.digikala.dms.helper.webservice.WebApi;
import com.digikala.dms.model.design.NonRealmSerialItems;
import com.digikala.dms.model.design.SerialItems;
import com.digikala.dms.model.domain.BasketItems;
import com.digikala.dms.model.domain.BatchItem;
import com.digikala.dms.model.domain.RejectReason;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.model.domain.ShipmentItem;
import com.digikala.dms.util.Constant;
import com.digikala.dms.util.Util;
import com.digikala.dms.view.activity.ShipmentActivity;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.zxing.integration.android.IntentIntegrator;
import com.google.zxing.integration.android.IntentResult;
import io.realm.Realm;
import io.realm.RealmList;
import io.realm.RealmResults;
import io.realm.internal.SyncObjectServerFacade;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class PartialDeliverFragment extends Fragment implements PartialDeliverItemClickListener {
    private static final String PARAM_ORDER_ID = "order_id";
    private PartialDeliverAdapter adapter;
    TextView amountPayable;
    TextView amountPayableTitle;
    ImageButton backButton;
    FloatingActionButton deliverItemsButton;
    private OnPartialButtonClickListener mListener;
    private String mOrderId;
    private List<ShipmentItem> mShipmentItems;
    private ArrayList<NonRealmSerialItems> nonRealmReturnedProducts;
    private long payableAmount;
    private long payableShippingCost;
    RecyclerView recyclerView;
    List<RejectReason> rejectReasons;
    TextView scanBTN;
    Shipment shipment;
    SwipeMenuCallback swipeMenuCallback;
    String EXTRA_SCAN_ACTION = "";
    int index_delete = -1;
    ArrayList<Integer> shippingCost = new ArrayList<>();
    boolean isCountedshippingCost = false;
    boolean isdecreasedShippingCost = false;

    public interface OnPartialButtonClickListener {
        void onPartialButtonClick(ArrayList<SerialItems> arrayList, Long l);
    }

    public static PartialDeliverFragment newInstance(String orderId) {
        PartialDeliverFragment fragment = new PartialDeliverFragment();
        Bundle args = new Bundle();
        args.putString("order_id", orderId);
        fragment.setArguments(args);
        return fragment;
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (savedInstanceState == null) {
            this.nonRealmReturnedProducts = new ArrayList<>();
        } else {
            this.nonRealmReturnedProducts = savedInstanceState.getParcelableArrayList("returned_product");
        }
        this.rejectReasons = getRejectReasonFromDatabase();
        Realm realm = Realm.getDefaultInstance();
        this.shipment = (Shipment) realm.where(Shipment.class).equalTo(Shipment.COLUMN_ORDER_ID, this.mOrderId).findFirst();
        if (this.shipment != null) {
            if (this.shipment.getShippingCostConfig() != null && this.shipment.getShippingCostConfig().size() > 0) {
                for (int i = 0; i < this.shipment.getShippingCostConfig().size(); i++) {
                    this.shippingCost.add(Integer.valueOf(this.shipment.getShippingCostConfig().get(i).getThreshold()));
                }
                Collections.sort(this.shippingCost, Collections.reverseOrder());
            }
            RealmList<BasketItems> basketItems = this.shipment.getBasketItems();
            if (basketItems != null && !basketItems.isEmpty()) {
                this.recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
                this.adapter = new PartialDeliverAdapter(getFragmentManager(), getActivity(), basketItems, this.nonRealmReturnedProducts, this.rejectReasons, this);
                if (savedInstanceState != null) {
                    this.adapter.mCheckedList = savedInstanceState.getParcelableArrayList("check_list");
                    this.adapter.mRejectReasonsTemp = savedInstanceState.getStringArrayList("reject_reason");
                    this.adapter.mReturnListCount = savedInstanceState.getIntArray("returned_product_count");
                }
                this.recyclerView.setAdapter(this.adapter);
                if (this.shipment.getPaymentStatus() != 1) {
                    this.amountPayable.setVisibility(8);
                    this.amountPayableTitle.setVisibility(8);
                } else if (this.shipment.getPaymentStatus() == 1 && this.shipment.getRemainingAmount() != 0) {
                    this.amountPayable.setVisibility(0);
                    this.amountPayableTitle.setVisibility(0);
                    this.payableAmount = this.shipment.getRemainingAmount();
                    this.amountPayable.setText(this.payableAmount + " ریال ");
                }
                this.mShipmentItems = new ArrayList();
                for (BasketItems basketItem : basketItems) {
                    this.mShipmentItems.addAll(basketItem.getOrderItems());
                }
                this.swipeMenuCallback = new SwipeMenuCallback(new SwipeControllerActions() { // from class: com.digikala.dms.view.fragment.PartialDeliverFragment.1
                    @Override // com.digikala.dms.helper.touch.SwipeControllerActions
                    public void onRightClicked(int position) {
                        PartialDeliverFragment.this.EXTRA_SCAN_ACTION = Constant.INSTANCE.getEXTRA_SCAN_FOR_DELETE();
                        if (((ShipmentItem) PartialDeliverFragment.this.mShipmentItems.get(position)).getBatchItems().isEmpty()) {
                            PartialDeliverFragment.this.openScanDialog();
                            PartialDeliverFragment.this.index_delete = position;
                        } else {
                            PartialDeliverFragment.this.onItemClickBasket(((ShipmentItem) PartialDeliverFragment.this.mShipmentItems.get(position)).getBatchItems(), Constant.INSTANCE.getEXTRA_SCAN_FOR_DELETE(), ((ShipmentItem) PartialDeliverFragment.this.mShipmentItems.get(position)).getOrderItemId(), ((ShipmentItem) PartialDeliverFragment.this.mShipmentItems.get(position)).getBasketId(), position);
                        }
                    }
                });
                ItemTouchHelper itemTouchhelper = new ItemTouchHelper(this.swipeMenuCallback);
                itemTouchhelper.attachToRecyclerView(this.recyclerView);
                this.recyclerView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.digikala.dms.view.fragment.PartialDeliverFragment.2
                    @Override // android.support.v7.widget.RecyclerView.ItemDecoration
                    public void onDraw(Canvas c, RecyclerView parent, RecyclerView.State state) {
                        PartialDeliverFragment.this.swipeMenuCallback.onDraw(c);
                    }
                });
            }
        }
        this.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.PartialDeliverFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PartialDeliverFragment.this.getActivity().onBackPressed();
            }
        });
        this.scanBTN.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.PartialDeliverFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PartialDeliverFragment.this.EXTRA_SCAN_ACTION = Constant.INSTANCE.getEXTRA_SCAN_FOR_INSERT();
                PartialDeliverFragment.this.openScanDialog();
            }
        });
        this.deliverItemsButton.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.PartialDeliverFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PartialDeliverFragment.this.onButtonPressed();
            }
        });
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            this.mOrderId = getArguments().getString("order_id");
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.fragment_partial_deliver, container, false);
        this.recyclerView = (RecyclerView) rootView.findViewById(R.id.partial_recycler_view);
        this.amountPayable = (TextView) rootView.findViewById(R.id.item_amount);
        this.amountPayableTitle = (TextView) rootView.findViewById(R.id.item_amount_title);
        this.backButton = (ImageButton) rootView.findViewById(R.id.back_button);
        this.scanBTN = (TextView) rootView.findViewById(R.id.scanBTN);
        this.deliverItemsButton = (FloatingActionButton) rootView.findViewById(R.id.deliver_fab);
        return rootView;
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putParcelableArrayList("check_list", this.adapter.mCheckedList);
        outState.putStringArrayList("reject_reason", this.adapter.mRejectReasonsTemp);
        outState.putParcelableArrayList("returned_product", this.nonRealmReturnedProducts);
        outState.putIntArray("returned_product_count", this.adapter.mReturnListCount);
    }

    public void onButtonPressed() {
        if (this.mListener != null) {
            ArrayList<SerialItems> returnedProducts = new ArrayList<>();
            for (NonRealmSerialItems product : this.nonRealmReturnedProducts) {
                returnedProducts.add(new SerialItems(product.getSerialItem(), product.getReasonId(), product.getItemBatchId(), product.getOrderItemId(), product.getCount(), product.getBasketId()));
            }
            this.mListener.onPartialButtonClick(returnedProducts, Long.valueOf(this.payableAmount));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof OnPartialButtonClickListener) {
            this.mListener = (OnPartialButtonClickListener) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnPartialButtonClickListener");
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.mListener = null;
    }

    @Override // com.digikala.dms.helper.touch.PartialDeliverItemClickListener
    public void onItemClick(RealmList<String> serialItemsList, final int position) {
        if (getActivity() != null && serialItemsList != null) {
            new MaterialDialog.Builder(getActivity()).title("انتخاب سریال بارکد").items(serialItemsList).itemsCallback(new MaterialDialog.ListCallback() { // from class: com.digikala.dms.view.fragment.PartialDeliverFragment.6
                @Override // com.afollestad.materialdialogs.MaterialDialog.ListCallback
                public void onSelection(MaterialDialog dialog, View view, int which, CharSequence text) {
                    Log.e("TAG", "onSelection: ");
                    PartialDeliverFragment.this.EXTRA_SCAN_ACTION = Constant.INSTANCE.getEXTRA_SCAN_FOR_INSERT();
                    boolean flag = PartialDeliverFragment.this.selectScan(text.toString().trim());
                    if (flag && ((ShipmentItem) PartialDeliverFragment.this.mShipmentItems.get(position)).getAmountPerQuantity() != 0) {
                        PartialDeliverFragment.this.payableAmount -= (long) ((ShipmentItem) PartialDeliverFragment.this.mShipmentItems.get(position)).getAmountPerQuantity();
                        if (PartialDeliverFragment.this.payableAmount <= 0) {
                            ((ShipmentActivity) PartialDeliverFragment.this.getActivity()).setToZero(true);
                        }
                        if (PartialDeliverFragment.this.shippingCost.size() > 0) {
                            PartialDeliverFragment.this.payableShippingCost = 0L;
                            int i = 0;
                            while (true) {
                                if (i >= PartialDeliverFragment.this.shippingCost.size()) {
                                    break;
                                }
                                if (PartialDeliverFragment.this.payableAmount > PartialDeliverFragment.this.shippingCost.get(i).intValue()) {
                                    PartialDeliverFragment.this.payableShippingCost = PartialDeliverFragment.this.shipment.getShippingCostConfig().get(i).getShippingCost();
                                    break;
                                }
                                i++;
                            }
                        }
                        Log.e("TAG", "onSelection: orderId:" + PartialDeliverFragment.this.shipment.getOrderId() + ", PackId:" + Util.getBatchId(SyncObjectServerFacade.getApplicationContext()) + "");
                        ArrayList<String> mserialItems = new ArrayList<>();
                        for (BasketItems basketItem : PartialDeliverFragment.this.shipment.getBasketItems()) {
                            for (ShipmentItem orderItem : basketItem.getOrderItems()) {
                                for (String serialItem : orderItem.getSerialItemList()) {
                                    if (!serialItem.equalsIgnoreCase(text.toString().trim())) {
                                        mserialItems.add(serialItem);
                                    }
                                }
                            }
                        }
                        ArrayList<SerialItems> serialItems = new ArrayList<>();
                        for (String p : mserialItems) {
                            SerialItems serialItem2 = new SerialItems();
                            serialItem2.setSerialItem(p);
                            serialItems.add(serialItem2);
                        }
                        PartialDeliverFragment.this.amountPayable.setText((PartialDeliverFragment.this.payableAmount + PartialDeliverFragment.this.payableShippingCost) + " ریال ");
                    }
                }
            }).show();
        }
    }

    @Override // com.digikala.dms.helper.touch.PartialDeliverItemClickListener
    public void onItemClickBasket(@NotNull final RealmList<BatchItem> batchItems, final String type, final String orderItemId, final String basketId, final int position) {
        if (getActivity() != null && batchItems != null) {
            ArrayList<String> batchItemArray = new ArrayList<>();
            for (BatchItem batchItem : batchItems) {
                batchItemArray.add("بسته  " + batchItem.getItemBatchId() + "\nقیمت مصرف کننده " + batchItem.getConsumerPrice() + "\nتاریخ انقضا " + batchItem.getExpireDate());
            }
            new MaterialDialog.Builder(getActivity()).title("انتخاب بسته").items(batchItemArray).itemsCallback(new MaterialDialog.ListCallback() { // from class: com.digikala.dms.view.fragment.PartialDeliverFragment.7
                @Override // com.afollestad.materialdialogs.MaterialDialog.ListCallback
                public void onSelection(MaterialDialog dialog, View view, int which, CharSequence text) {
                    PartialDeliverFragment.this.EXTRA_SCAN_ACTION = type;
                    ArrayList<SerialItems> serialItems = new ArrayList<>();
                    for (ShipmentItem shipmentItem : PartialDeliverFragment.this.mShipmentItems) {
                        for (BatchItem batchItem2 : shipmentItem.getBatchItems()) {
                            SerialItems serialItem = new SerialItems();
                            if (!batchItem2.getItemBatchId().equalsIgnoreCase(((BatchItem) batchItems.get(which)).getItemBatchId())) {
                                serialItem.setBasketId(shipmentItem.getBasketId());
                                serialItem.setCount(Integer.parseInt(batchItem2.getCount()));
                                serialItem.setItemBatchId(batchItem2.getItemBatchId());
                                serialItem.setOrderItemId(shipmentItem.getOrderItemId());
                                serialItems.add(serialItem);
                            }
                        }
                    }
                    int i = 0;
                    if (PartialDeliverFragment.this.EXTRA_SCAN_ACTION.equalsIgnoreCase("scan_for_insert")) {
                        boolean flag = PartialDeliverFragment.this.selectBatchItem(((BatchItem) batchItems.get(which)).getItemBatchId(), orderItemId, basketId);
                        if (flag && ((ShipmentItem) PartialDeliverFragment.this.mShipmentItems.get(position)).getAmountPerQuantity() != 0) {
                            PartialDeliverFragment.this.payableAmount -= (long) ((ShipmentItem) PartialDeliverFragment.this.mShipmentItems.get(position)).getAmountPerQuantity();
                            if (PartialDeliverFragment.this.payableAmount <= 0) {
                                ((ShipmentActivity) PartialDeliverFragment.this.getActivity()).setToZero(true);
                            }
                            if (PartialDeliverFragment.this.shippingCost.size() > 0) {
                                PartialDeliverFragment.this.payableShippingCost = 0L;
                                while (true) {
                                    if (i >= PartialDeliverFragment.this.shippingCost.size()) {
                                        break;
                                    }
                                    if (PartialDeliverFragment.this.payableAmount > PartialDeliverFragment.this.shippingCost.get(i).intValue()) {
                                        PartialDeliverFragment.this.payableShippingCost = PartialDeliverFragment.this.shipment.getShippingCostConfig().get(i).getShippingCost();
                                        break;
                                    }
                                    i++;
                                }
                            }
                            PartialDeliverFragment.this.amountPayable.setText((PartialDeliverFragment.this.payableAmount + PartialDeliverFragment.this.payableShippingCost) + " ریال ");
                            return;
                        }
                        return;
                    }
                    boolean flag2 = PartialDeliverFragment.this.selectBatchItem(((BatchItem) batchItems.get(which)).getItemBatchId(), orderItemId, basketId);
                    if (flag2 && ((ShipmentItem) PartialDeliverFragment.this.mShipmentItems.get(position)).getAmountPerQuantity() != 0) {
                        PartialDeliverFragment.this.payableAmount += (long) ((ShipmentItem) PartialDeliverFragment.this.mShipmentItems.get(position)).getAmountPerQuantity();
                        if (PartialDeliverFragment.this.shippingCost.size() > 0) {
                            PartialDeliverFragment.this.payableShippingCost = 0L;
                            while (true) {
                                if (i >= PartialDeliverFragment.this.shippingCost.size()) {
                                    break;
                                }
                                if (PartialDeliverFragment.this.payableAmount > PartialDeliverFragment.this.shippingCost.get(i).intValue()) {
                                    PartialDeliverFragment.this.payableShippingCost = PartialDeliverFragment.this.shipment.getShippingCostConfig().get(i).getShippingCost();
                                    break;
                                }
                                i++;
                            }
                        }
                        WebApi.makeDynamicShippingCost(Util.getBatchId(SyncObjectServerFacade.getApplicationContext()), PartialDeliverFragment.this.shipment.getOrderId(), serialItems, new Response.Listener<JSONObject>() { // from class: com.digikala.dms.view.fragment.PartialDeliverFragment.7.1
                            @Override // com.android.volley.Response.Listener
                            public void onResponse(JSONObject response) {
                                try {
                                    int shippingCost = Integer.parseInt(response.getJSONObject("Data").getJSONObject("dynamic_shipping_cost").getString("shipping_cost"));
                                    Log.i("newShippingCost", "shipping: " + shippingCost);
                                    Log.i("newShippingCost", "payableAmount: " + PartialDeliverFragment.this.payableAmount);
                                    PartialDeliverFragment.this.amountPayable.setText((PartialDeliverFragment.this.payableAmount + ((long) shippingCost)) + " ریال ");
                                } catch (JSONException e) {
                                    Log.e("TAG", "newShippingCost: " + e.getMessage());
                                    e.printStackTrace();
                                }
                            }
                        }, new Response.ErrorListener() { // from class: com.digikala.dms.view.fragment.PartialDeliverFragment.7.2
                            @Override // com.android.volley.Response.ErrorListener
                            public void onErrorResponse(VolleyError error) {
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
                                    Toast.makeText(PartialDeliverFragment.this.getContext(), message, 0).show();
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            }
                        });
                    }
                }
            }).show();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
    }

    public List<RejectReason> getRejectReasonFromDatabase() {
        Realm realm = Realm.getDefaultInstance();
        RealmResults<RejectReason> results = realm.where(RejectReason.class).equalTo(AppMeasurement.Param.TYPE, Constant.INSTANCE.getEXTRA_REASON_TYPE_RETURN()).findAll();
        List<RejectReason> rejectReasons = realm.copyFromRealm(results);
        realm.close();
        return rejectReasons;
    }

    public void scanFromFragment() {
        IntentIntegrator.forSupportFragment(this).setPrompt(getString(R.string.msg_scan_help)).initiateScan();
    }

    public void openInputDialog() {
        if (getActivity() != null) {
            new MaterialDialog.Builder(getActivity()).buttonsGravity(GravityEnum.CENTER).title(getString(R.string.scan_by_input_text)).inputType(1).input("سریال بارکد را وارد کنید", "", new MaterialDialog.InputCallback() { // from class: com.digikala.dms.view.fragment.PartialDeliverFragment.8
                @Override // com.afollestad.materialdialogs.MaterialDialog.InputCallback
                public void onInput(@NonNull MaterialDialog dialog, CharSequence input) {
                    try {
                        boolean flag = PartialDeliverFragment.this.selectScan(input.toString().trim());
                        if (flag) {
                            PartialDeliverFragment.this.payableAmount += (long) ((ShipmentItem) PartialDeliverFragment.this.mShipmentItems.get(PartialDeliverFragment.this.index_delete)).getAmountPerQuantity();
                            if (PartialDeliverFragment.this.shippingCost.size() > 0) {
                                PartialDeliverFragment.this.payableShippingCost = 0L;
                                int i = 0;
                                while (true) {
                                    if (i >= PartialDeliverFragment.this.shippingCost.size()) {
                                        break;
                                    }
                                    if (PartialDeliverFragment.this.payableAmount <= PartialDeliverFragment.this.shippingCost.get(i).intValue()) {
                                        i++;
                                    } else {
                                        PartialDeliverFragment.this.payableShippingCost = PartialDeliverFragment.this.shipment.getShippingCostConfig().get(i).getShippingCost();
                                        break;
                                    }
                                }
                            }
                            PartialDeliverFragment.this.amountPayable.setText((PartialDeliverFragment.this.payableAmount + PartialDeliverFragment.this.payableShippingCost) + " ریال");
                        }
                    } catch (Exception e) {
                    }
                }
            }).autoDismiss(true).show();
        }
    }

    public void openScanDialog() {
        if (getActivity() != null) {
            new MaterialDialog.Builder(getActivity()).buttonsGravity(GravityEnum.CENTER).title(getString(R.string.select_scan_input_type)).positiveText(getString(R.string.scan_with_scanner)).negativeText(getString(R.string.scan_by_input_text)).autoDismiss(true).onNegative(new MaterialDialog.SingleButtonCallback() { // from class: com.digikala.dms.view.fragment.PartialDeliverFragment.10
                @Override // com.afollestad.materialdialogs.MaterialDialog.SingleButtonCallback
                public void onClick(@NonNull MaterialDialog dialog, @NonNull DialogAction which) {
                    PartialDeliverFragment.this.openInputDialog();
                }
            }).onPositive(new MaterialDialog.SingleButtonCallback() { // from class: com.digikala.dms.view.fragment.PartialDeliverFragment.9
                @Override // com.afollestad.materialdialogs.MaterialDialog.SingleButtonCallback
                public void onClick(@NonNull MaterialDialog dialog, @NonNull DialogAction which) {
                    PartialDeliverFragment.this.scanFromFragment();
                }
            }).show();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean selectScan(java.lang.String r6) {
        /*
            r5 = this;
            java.lang.String r0 = r5.EXTRA_SCAN_ACTION
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            r1 = 0
            if (r0 != 0) goto L44
            java.lang.String r0 = r5.EXTRA_SCAN_ACTION
            r2 = -1
            int r3 = r0.hashCode()
            r4 = -667270941(0xffffffffd83a40e3, float:-8.191514E14)
            if (r3 == r4) goto L27
            r4 = -515605007(0xffffffffe1447df1, float:-2.265398E20)
            if (r3 == r4) goto L1d
            goto L31
        L1d:
            java.lang.String r3 = "scan_for_insert"
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L31
            r0 = 1
            goto L32
        L27:
            java.lang.String r3 = "scan_for_delete"
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L31
            r0 = 0
            goto L32
        L31:
            r0 = -1
        L32:
            switch(r0) {
                case 0: goto L3d;
                case 1: goto L36;
                default: goto L35;
            }
        L35:
            return r1
        L36:
            com.digikala.dms.adapter.PartialDeliverAdapter r0 = r5.adapter
            boolean r0 = r0.scanSerialId(r6)
            return r0
        L3d:
            com.digikala.dms.adapter.PartialDeliverAdapter r0 = r5.adapter
            boolean r0 = r0.removeItemFromReturnItem(r6)
            return r0
        L44:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.digikala.dms.view.fragment.PartialDeliverFragment.selectScan(java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean selectBatchItem(java.lang.String r6, java.lang.String r7, java.lang.String r8) {
        /*
            r5 = this;
            java.lang.String r0 = r5.EXTRA_SCAN_ACTION
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            r1 = 0
            if (r0 != 0) goto L44
            java.lang.String r0 = r5.EXTRA_SCAN_ACTION
            r2 = -1
            int r3 = r0.hashCode()
            r4 = -667270941(0xffffffffd83a40e3, float:-8.191514E14)
            if (r3 == r4) goto L27
            r4 = -515605007(0xffffffffe1447df1, float:-2.265398E20)
            if (r3 == r4) goto L1d
            goto L31
        L1d:
            java.lang.String r3 = "scan_for_insert"
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L31
            r0 = 1
            goto L32
        L27:
            java.lang.String r3 = "scan_for_delete"
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L31
            r0 = 0
            goto L32
        L31:
            r0 = -1
        L32:
            switch(r0) {
                case 0: goto L3d;
                case 1: goto L36;
                default: goto L35;
            }
        L35:
            return r1
        L36:
            com.digikala.dms.adapter.PartialDeliverAdapter r0 = r5.adapter
            boolean r0 = r0.scanBatchId(r6, r7, r8)
            return r0
        L3d:
            com.digikala.dms.adapter.PartialDeliverAdapter r0 = r5.adapter
            boolean r0 = r0.removeBatchItemFromReturnItem(r6, r7, r8)
            return r0
        L44:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.digikala.dms.view.fragment.PartialDeliverFragment.selectBatchItem(java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        IntentResult result = IntentIntegrator.parseActivityResult(requestCode, resultCode, data);
        if (result != null) {
            int i = 0;
            if (result.getContents() == null) {
                Toast.makeText(getActivity(), getString(R.string.error_barcode_scan_canceled), 0).show();
                return;
            }
            try {
                boolean flag = selectScan(result.getContents().trim());
                if (flag) {
                    this.payableAmount += (long) this.mShipmentItems.get(this.index_delete).getAmountPerQuantity();
                    if (this.shippingCost.size() > 0) {
                        this.payableShippingCost = 0L;
                        while (true) {
                            if (i >= this.shippingCost.size()) {
                                break;
                            }
                            if (this.payableAmount <= this.shippingCost.get(i).intValue()) {
                                i++;
                            } else {
                                this.payableShippingCost = this.shipment.getShippingCostConfig().get(i).getShippingCost();
                                break;
                            }
                        }
                    }
                    this.amountPayable.setText((this.payableAmount + this.payableShippingCost) + " ریال ");
                    return;
                }
                return;
            } catch (Exception e) {
                return;
            }
        }
        AnswersHelper.searchWithBarcodeEvent("Not Found Item");
        AnalyticHelper.searchWithBarcodeEvent("Not Found Item");
        super.onActivityResult(requestCode, resultCode, data);
    }
}
