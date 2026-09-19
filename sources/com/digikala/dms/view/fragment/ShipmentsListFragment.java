package com.digikala.dms.view.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.Toast;
import com.digikala.dms.R;
import com.digikala.dms.adapter.ShipmentsListAdapter;
import com.digikala.dms.helper.fabric.answers.AnswersHelper;
import com.digikala.dms.helper.firebase.analytics.AnalyticHelper;
import com.digikala.dms.helper.webservice.WebApi;
import com.digikala.dms.helper.webservice.WebApiRequest;
import com.digikala.dms.model.domain.Batch;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.util.Util;
import com.digikala.dms.view.activity.MainActivity;
import com.digikala.dms.view.activity.ShipmentActivity;
import com.digikala.dms.view.custom.XeiEditText;
import com.digikala.dms.view.custom.XeiTextView;
import com.google.zxing.integration.android.IntentIntegrator;
import com.google.zxing.integration.android.IntentResult;
import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import io.realm.Realm;
import io.realm.RealmQuery;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: ShipmentsListFragment.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 &2\u00020\u00012\u00020\u0002:\u0001&B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000f\u001a\u00020\u0010H\u0002J\b\u0010\u0011\u001a\u00020\u0010H\u0002J\"\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\f2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0012\u0010\u0017\u001a\u00020\u00102\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J&\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010 \u001a\u00020\u0010H\u0016J\b\u0010!\u001a\u00020\u0010H\u0016J\u001a\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u001b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010$\u001a\u00020\u0010H\u0002J\b\u0010%\u001a\u00020\u0010H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/digikala/dms/view/fragment/ShipmentsListFragment;", "Landroid/support/v4/app/Fragment;", "Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;", "()V", "findItem", "", "mShipments", "Ljava/util/ArrayList;", "Lcom/digikala/dms/model/domain/Shipment;", "mShipmentsListAdapter", "Lcom/digikala/dms/adapter/ShipmentsListAdapter;", "mWhichList", "", "scanString", "", "getAssignedShipments", "", "loadShipmentsFromActivity", "onActivityResult", "requestCode", "resultCode", Parameters.DATA, "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onRefresh", "onResume", "onViewCreated", "view", "scanFromFragment", "showEmptyListMsg", "Companion", "app_release"}, k = 1, mv = {1, 1, 11})
public final class ShipmentsListFragment extends Fragment implements SwipeRefreshLayout.OnRefreshListener {
    private HashMap _$_findViewCache;
    private boolean findItem;
    private ShipmentsListAdapter mShipmentsListAdapter;
    private int mWhichList;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG_DEBUG = ShipmentsListFragment.class.getSimpleName();
    private static final int WHICH_LIST_OPEN = 1;
    private static final int WHICH_LIST_CLOSE = 2;
    private static final String ARG_WHICHLIST = "ARG_WHICHLIST";
    private static final String TAG_REQUEST = ShipmentsListFragment.class.getSimpleName();
    private final ArrayList<Shipment> mShipments = new ArrayList<>();
    private String scanString = "";

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    /* JADX INFO: compiled from: ShipmentsListFragment.kt */
    @Metadata(bv = {1, 0, 2}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n \u0006*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\tX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\tX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000b¨\u0006\u0011"}, d2 = {"Lcom/digikala/dms/view/fragment/ShipmentsListFragment$Companion;", "", "()V", "ARG_WHICHLIST", "", "TAG_DEBUG", "kotlin.jvm.PlatformType", "TAG_REQUEST", "WHICH_LIST_CLOSE", "", "getWHICH_LIST_CLOSE", "()I", "WHICH_LIST_OPEN", "getWHICH_LIST_OPEN", "newInstance", "Lcom/digikala/dms/view/fragment/ShipmentsListFragment;", "whichList", "app_release"}, k = 1, mv = {1, 1, 11})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker $constructor_marker) {
            this();
        }

        public final int getWHICH_LIST_OPEN() {
            return ShipmentsListFragment.WHICH_LIST_OPEN;
        }

        public final int getWHICH_LIST_CLOSE() {
            return ShipmentsListFragment.WHICH_LIST_CLOSE;
        }

        @NotNull
        public final ShipmentsListFragment newInstance(int whichList) {
            ShipmentsListFragment fragment = new ShipmentsListFragment();
            Bundle args = new Bundle();
            args.putInt(ShipmentsListFragment.ARG_WHICHLIST, whichList);
            fragment.setArguments(args);
            return fragment;
        }
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_shipments_list, container, false);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            Bundle arguments = getArguments();
            if (arguments == null) {
                Intrinsics.throwNpe();
            }
            this.mWhichList = arguments.getInt(ARG_WHICHLIST);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.mShipmentsListAdapter = new ShipmentsListAdapter(getActivity(), this.mShipments);
        if (((SwipeRefreshLayout) _$_findCachedViewById(R.id.fragmentShipmentsList_swipeRefreshLayout_reloadShipmentsList)) != null) {
            ((SwipeRefreshLayout) _$_findCachedViewById(R.id.fragmentShipmentsList_swipeRefreshLayout_reloadShipmentsList)).setColorSchemeResources(R.color.colorAccent);
            ((SwipeRefreshLayout) _$_findCachedViewById(R.id.fragmentShipmentsList_swipeRefreshLayout_reloadShipmentsList)).setOnRefreshListener(this);
        }
        if (((RecyclerView) _$_findCachedViewById(R.id.fragmentShipmentsList_recyclerView_shipmentsList)) != null) {
            RecyclerView fragmentShipmentsList_recyclerView_shipmentsList = (RecyclerView) _$_findCachedViewById(R.id.fragmentShipmentsList_recyclerView_shipmentsList);
            Intrinsics.checkExpressionValueIsNotNull(fragmentShipmentsList_recyclerView_shipmentsList, "fragmentShipmentsList_recyclerView_shipmentsList");
            fragmentShipmentsList_recyclerView_shipmentsList.setLayoutManager(new LinearLayoutManager(getActivity()));
            RecyclerView fragmentShipmentsList_recyclerView_shipmentsList2 = (RecyclerView) _$_findCachedViewById(R.id.fragmentShipmentsList_recyclerView_shipmentsList);
            Intrinsics.checkExpressionValueIsNotNull(fragmentShipmentsList_recyclerView_shipmentsList2, "fragmentShipmentsList_recyclerView_shipmentsList");
            fragmentShipmentsList_recyclerView_shipmentsList2.setAdapter(this.mShipmentsListAdapter);
        }
        if (((XeiEditText) _$_findCachedViewById(R.id.scanEditText)) != null) {
            XeiEditText xeiEditText = (XeiEditText) _$_findCachedViewById(R.id.scanEditText);
            if (xeiEditText != null) {
                xeiEditText.requestFocus();
            }
            XeiEditText xeiEditText2 = (XeiEditText) _$_findCachedViewById(R.id.scanEditText);
            if (xeiEditText2 != null) {
                xeiEditText2.addTextChangedListener(new TextWatcher() { // from class: com.digikala.dms.view.fragment.ShipmentsListFragment$onViewCreated$$inlined$let$lambda$1
                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(@NotNull CharSequence charSequence, int i, int i1, int i2) {
                        Intrinsics.checkParameterIsNotNull(charSequence, "charSequence");
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(@NotNull CharSequence charSequence, int i, int i1, int i2) {
                        Intrinsics.checkParameterIsNotNull(charSequence, "charSequence");
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(@NotNull Editable editable) {
                        Intrinsics.checkParameterIsNotNull(editable, "editable");
                        ShipmentsListFragment shipmentsListFragment = this.this$0;
                        StringBuilder sb = new StringBuilder();
                        XeiEditText xeiEditText3 = (XeiEditText) this.this$0._$_findCachedViewById(R.id.scanEditText);
                        sb.append(String.valueOf(xeiEditText3 != null ? xeiEditText3.getText() : null));
                        sb.append("");
                        shipmentsListFragment.scanString = sb.toString();
                        Log.e("scan", "afterTextChanged: " + this.this$0.scanString);
                        this.this$0.findItem = false;
                        if (!Intrinsics.areEqual(this.this$0.scanString, "")) {
                            for (Shipment shipment : this.this$0.mShipments) {
                                if (StringsKt.contains$default((CharSequence) String.valueOf(this.this$0.scanString), (CharSequence) "DK", false, 2, (Object) null)) {
                                    String str = this.this$0.scanString;
                                    if (str == null) {
                                        Intrinsics.throwNpe();
                                    }
                                    List parts = StringsKt.split$default((CharSequence) str, new String[]{"DK", EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR}, false, 0, 6, (Object) null);
                                    Log.e("scan", "part_orderId " + ((String) parts.get(1)));
                                    this.this$0.scanString = (String) parts.get(1);
                                }
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("afterTextChanged: ");
                                Intrinsics.checkExpressionValueIsNotNull(shipment, "shipment");
                                sb2.append(shipment.getOrderId());
                                sb2.append(" == ");
                                sb2.append(this.this$0.scanString);
                                Log.e("scan", sb2.toString());
                                if (Intrinsics.areEqual(shipment.getOrderId(), this.this$0.scanString)) {
                                    AnswersHelper.searchWithBarcodeEvent("Found Item");
                                    AnalyticHelper.searchWithBarcodeEvent("Found Item");
                                    this.this$0.findItem = true;
                                    Intent intent = new Intent(this.this$0.getActivity(), (Class<?>) ShipmentActivity.class);
                                    intent.putExtra(ShipmentActivity.ORDER_ID, this.this$0.scanString);
                                    XeiEditText xeiEditText4 = (XeiEditText) this.this$0._$_findCachedViewById(R.id.scanEditText);
                                    if (xeiEditText4 != null) {
                                        xeiEditText4.setText("");
                                    }
                                    FragmentActivity activity = this.this$0.getActivity();
                                    if (activity != null) {
                                        activity.startActivity(intent);
                                    }
                                }
                            }
                            if (!this.this$0.findItem) {
                                Log.e("scan", "not found");
                                AnswersHelper.searchWithBarcodeEvent("Not Found Item");
                                AnalyticHelper.searchWithBarcodeEvent("Not Found Item");
                            }
                        }
                    }
                });
            }
        }
        ImageButton it = (ImageButton) _$_findCachedViewById(R.id.shipment_fragment_scan_btn);
        if (it != null) {
            it.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.ShipmentsListFragment$onViewCreated$$inlined$let$lambda$2
                @Override // android.view.View.OnClickListener
                public final void onClick(View it2) {
                    this.this$0.scanFromFragment();
                }
            });
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        loadShipmentsFromActivity();
        if (!this.mShipments.isEmpty()) {
            XeiTextView fragmentShipmentsList_xeiTextView_emptyListMsg = (XeiTextView) _$_findCachedViewById(R.id.fragmentShipmentsList_xeiTextView_emptyListMsg);
            Intrinsics.checkExpressionValueIsNotNull(fragmentShipmentsList_xeiTextView_emptyListMsg, "fragmentShipmentsList_xeiTextView_emptyListMsg");
            fragmentShipmentsList_xeiTextView_emptyListMsg.setVisibility(8);
            RecyclerView fragmentShipmentsList_recyclerView_shipmentsList = (RecyclerView) _$_findCachedViewById(R.id.fragmentShipmentsList_recyclerView_shipmentsList);
            Intrinsics.checkExpressionValueIsNotNull(fragmentShipmentsList_recyclerView_shipmentsList, "fragmentShipmentsList_recyclerView_shipmentsList");
            fragmentShipmentsList_recyclerView_shipmentsList.setVisibility(0);
            return;
        }
        RecyclerView fragmentShipmentsList_recyclerView_shipmentsList2 = (RecyclerView) _$_findCachedViewById(R.id.fragmentShipmentsList_recyclerView_shipmentsList);
        Intrinsics.checkExpressionValueIsNotNull(fragmentShipmentsList_recyclerView_shipmentsList2, "fragmentShipmentsList_recyclerView_shipmentsList");
        fragmentShipmentsList_recyclerView_shipmentsList2.setVisibility(8);
        showEmptyListMsg();
    }

    private final void loadShipmentsFromActivity() {
        int i = this.mWhichList;
        if (i == WHICH_LIST_OPEN) {
            this.mShipments.clear();
            ArrayList<Shipment> arrayList = this.mShipments;
            FragmentActivity activity = getActivity();
            if (activity == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.digikala.dms.view.activity.MainActivity");
            }
            arrayList.addAll(((MainActivity) activity).getOpenShipments());
        } else if (i == WHICH_LIST_CLOSE) {
            this.mShipments.clear();
            ArrayList<Shipment> arrayList2 = this.mShipments;
            FragmentActivity activity2 = getActivity();
            if (activity2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.digikala.dms.view.activity.MainActivity");
            }
            arrayList2.addAll(((MainActivity) activity2).getFullyDeliveredShipments());
            ArrayList<Shipment> arrayList3 = this.mShipments;
            FragmentActivity activity3 = getActivity();
            if (activity3 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.digikala.dms.view.activity.MainActivity");
            }
            arrayList3.addAll(((MainActivity) activity3).getPartiallyDeliveredShipments());
            ArrayList<Shipment> arrayList4 = this.mShipments;
            FragmentActivity activity4 = getActivity();
            if (activity4 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.digikala.dms.view.activity.MainActivity");
            }
            arrayList4.addAll(((MainActivity) activity4).getReturnedShipments());
            ArrayList<Shipment> arrayList5 = this.mShipments;
            FragmentActivity activity5 = getActivity();
            if (activity5 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.digikala.dms.view.activity.MainActivity");
            }
            arrayList5.addAll(((MainActivity) activity5).getMissedCallShipments());
            ArrayList<Shipment> arrayList6 = this.mShipments;
            FragmentActivity activity6 = getActivity();
            if (activity6 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.digikala.dms.view.activity.MainActivity");
            }
            arrayList6.addAll(((MainActivity) activity6).getLeftShipments());
            Util.setCloseListSize(getActivity(), this.mShipments.size() + 1);
        } else {
            Log.e(TAG_DEBUG, "Panic! (the \"impossible\" happened.)");
        }
        ShipmentsListAdapter shipmentsListAdapter = this.mShipmentsListAdapter;
        if (shipmentsListAdapter != null) {
            shipmentsListAdapter.notifyDataSetChanged();
        }
    }

    private final void showEmptyListMsg() {
        XeiTextView fragmentShipmentsList_xeiTextView_emptyListMsg = (XeiTextView) _$_findCachedViewById(R.id.fragmentShipmentsList_xeiTextView_emptyListMsg);
        Intrinsics.checkExpressionValueIsNotNull(fragmentShipmentsList_xeiTextView_emptyListMsg, "fragmentShipmentsList_xeiTextView_emptyListMsg");
        fragmentShipmentsList_xeiTextView_emptyListMsg.setVisibility(0);
        int i = this.mWhichList;
        if (i != WHICH_LIST_OPEN) {
            if (i != WHICH_LIST_CLOSE) {
                Log.e(TAG_DEBUG, "Panic! (the \"impossible\" happened.)");
                return;
            }
            XeiTextView fragmentShipmentsList_xeiTextView_emptyListMsg2 = (XeiTextView) _$_findCachedViewById(R.id.fragmentShipmentsList_xeiTextView_emptyListMsg);
            Intrinsics.checkExpressionValueIsNotNull(fragmentShipmentsList_xeiTextView_emptyListMsg2, "fragmentShipmentsList_xeiTextView_emptyListMsg");
            fragmentShipmentsList_xeiTextView_emptyListMsg2.setText(getString(R.string.main_closedList_emptyListMsg));
            return;
        }
        XeiTextView fragmentShipmentsList_xeiTextView_emptyListMsg3 = (XeiTextView) _$_findCachedViewById(R.id.fragmentShipmentsList_xeiTextView_emptyListMsg);
        Intrinsics.checkExpressionValueIsNotNull(fragmentShipmentsList_xeiTextView_emptyListMsg3, "fragmentShipmentsList_xeiTextView_emptyListMsg");
        fragmentShipmentsList_xeiTextView_emptyListMsg3.setText(getString(R.string.main_openList_emptyListMsg));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void scanFromFragment() {
        IntentIntegrator.forSupportFragment(this).setPrompt(getString(R.string.msg_scan_help)).initiateScan();
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        IntentResult result = IntentIntegrator.parseActivityResult(requestCode, resultCode, data);
        Intrinsics.checkExpressionValueIsNotNull(result, "result");
        String contents = result.getContents();
        if (contents == null || contents.length() == 0) {
            Toast.makeText(getActivity(), getString(R.string.error_barcode_scan_canceled), 0).show();
            AnswersHelper.searchWithBarcodeEvent("Not Found Item");
            AnalyticHelper.searchWithBarcodeEvent("Not Found Item");
            return;
        }
        Log.e("scan", "Barcode: " + result.getContents().toString());
        XeiEditText xeiEditText = (XeiEditText) _$_findCachedViewById(R.id.scanEditText);
        if (xeiEditText != null) {
            xeiEditText.setText(result.getContents().toString());
        }
        AnswersHelper.searchWithBarcodeEvent("Found Item");
        AnalyticHelper.searchWithBarcodeEvent("Found Item");
    }

    /* JADX INFO: renamed from: com.digikala.dms.view.fragment.ShipmentsListFragment$getAssignedShipments$1, reason: invalid class name */
    /* JADX INFO: compiled from: ShipmentsListFragment.kt */
    @Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\t"}, d2 = {"com/digikala/dms/view/fragment/ShipmentsListFragment$getAssignedShipments$1", "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;", "Lcom/digikala/dms/model/domain/Batch;", "onErrorResponse", "", "errorMessage", "", "onResponse", "response", "app_release"}, k = 1, mv = {1, 1, 11})
    public static final class AnonymousClass1 implements WebApiRequest.WebApiListener<Batch> {
        AnonymousClass1() {
        }

        @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
        public void onResponse(@Nullable final Batch response) {
            AnswersHelper.logNumberRequestAndResponse("Response", "Response Success", "");
            AnalyticHelper.responseRequestEvent("Response", "Response Success", "");
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ShipmentsListFragment.this._$_findCachedViewById(R.id.fragmentShipmentsList_swipeRefreshLayout_reloadShipmentsList);
            Intrinsics.checkExpressionValueIsNotNull(swipeRefreshLayout, "fragmentShipmentsList_sw…ayout_reloadShipmentsList");
            swipeRefreshLayout.setRefreshing(false);
            if (response != null && response.getShipments() != null && response.getShipments().size() > 0) {
                Realm realm = Realm.getDefaultInstance();
                realm.executeTransactionAsync(new Realm.Transaction() { // from class: com.digikala.dms.view.fragment.ShipmentsListFragment$getAssignedShipments$1$onResponse$1
                    @Override // io.realm.Realm.Transaction
                    public final void execute(Realm bgRealm) {
                        for (Shipment newShipment : response.getShipments()) {
                            RealmQuery realmQueryWhere = bgRealm.where(Shipment.class);
                            String columnOrderId = Shipment.getColumnOrderId();
                            Intrinsics.checkExpressionValueIsNotNull(newShipment, "newShipment");
                            Shipment item = (Shipment) realmQueryWhere.equalTo(columnOrderId, newShipment.getOrderId()).findFirst();
                            if (item != null) {
                                item.setPayableAmount(newShipment.getPayableAmount());
                            }
                        }
                    }
                }, new Realm.Transaction.OnSuccess() { // from class: com.digikala.dms.view.fragment.ShipmentsListFragment$getAssignedShipments$1$onResponse$2
                    @Override // io.realm.Realm.Transaction.OnSuccess
                    public final void onSuccess() {
                        ShipmentsListAdapter shipmentsListAdapter = ShipmentsListFragment.this.mShipmentsListAdapter;
                        if (shipmentsListAdapter == null) {
                            Intrinsics.throwNpe();
                        }
                        shipmentsListAdapter.notifyDataSetChanged();
                    }
                }, new Realm.Transaction.OnError() { // from class: com.digikala.dms.view.fragment.ShipmentsListFragment$getAssignedShipments$1$onResponse$3
                    @Override // io.realm.Realm.Transaction.OnError
                    public final void onError(Throwable error) {
                        Log.e(ShipmentsListFragment.TAG_DEBUG, "DB error: " + error);
                    }
                });
            } else {
                Toast.makeText(ShipmentsListFragment.this.getActivity(), ShipmentsListFragment.this.getString(R.string.item_not_found), 0).show();
            }
        }

        @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
        public void onErrorResponse(@Nullable String errorMessage) {
            AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", errorMessage);
            AnalyticHelper.responseRequestEvent("Response", "Response Error", errorMessage);
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ShipmentsListFragment.this._$_findCachedViewById(R.id.fragmentShipmentsList_swipeRefreshLayout_reloadShipmentsList);
            Intrinsics.checkExpressionValueIsNotNull(swipeRefreshLayout, "fragmentShipmentsList_sw…ayout_reloadShipmentsList");
            swipeRefreshLayout.setRefreshing(false);
            Log.e(ShipmentsListFragment.TAG_DEBUG, "Can not get assigned shipments: " + errorMessage);
            Toast.makeText(ShipmentsListFragment.this.getActivity(), errorMessage, 0).show();
        }
    }

    private final void getAssignedShipments() {
        String deliveryId = Util.getDeliveryId(getContext());
        WebApi.makeGetBatchRequest(deliveryId, TAG_REQUEST, new AnonymousClass1(), null).send();
    }

    @Override // android.support.v4.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        getAssignedShipments();
    }
}
