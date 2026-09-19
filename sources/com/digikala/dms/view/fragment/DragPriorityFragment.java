package com.digikala.dms.view.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.Toast;
import com.afollestad.materialdialogs.DialogAction;
import com.afollestad.materialdialogs.MaterialDialog;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.digikala.dms.R;
import com.digikala.dms.adapter.ShipmentPriorityAdapter;
import com.digikala.dms.helper.fabric.answers.AnswersHelper;
import com.digikala.dms.helper.firebase.analytics.AnalyticHelper;
import com.digikala.dms.helper.touch.DragItemTouchHelperCallback;
import com.digikala.dms.helper.touch.OnShipmentListChangeListener;
import com.digikala.dms.helper.touch.OnStartDragListener;
import com.digikala.dms.helper.webservice.WebApi;
import com.digikala.dms.model.design.ShipmentPriority;
import com.digikala.dms.model.domain.Batch;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.util.Util;
import com.digikala.dms.view.activity.MainActivity;
import com.digikala.dms.view.activity.NewShipmentPriorityActivity;
import com.pnikosis.materialishprogress.ProgressWheel;
import io.realm.Realm;
import io.realm.RealmList;
import io.realm.RealmResults;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: DragPriorityFragment.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 52\u00020\u00012\u00020\u00022\u00020\u0003:\u00015B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u0019\u001a\u00020\u001aH\u0002J&\u0010\u001b\u001a\u0004\u0018\u00010\b2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0010\u0010\"\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020$H\u0016J\u0016\u0010%\u001a\u00020\u001a2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020$0'H\u0016J\u0018\u0010(\u001a\u00020\u001a2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0016J\u001a\u0010-\u001a\u00020\u001a2\u0006\u0010.\u001a\u00020\b2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\b\u0010/\u001a\u00020\u001aH\u0002J\b\u00100\u001a\u00020\u001aH\u0002J\u0006\u00101\u001a\u00020\u001aJ\u0012\u00102\u001a\u00020\u001a2\b\u00103\u001a\u0004\u0018\u000104H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\f\u001a\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\f\u001a\u0004\b\u0016\u0010\u0017¨\u00066"}, d2 = {"Lcom/digikala/dms/view/fragment/DragPriorityFragment;", "Landroid/support/v4/app/Fragment;", "Lcom/digikala/dms/helper/touch/OnStartDragListener;", "Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;", "()V", "mAdapter", "Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;", "mErrorView", "Landroid/view/View;", "getMErrorView", "()Landroid/view/View;", "mErrorView$delegate", "Lkotlin/Lazy;", "mItemTouchHelper", "Landroid/support/v7/widget/helper/ItemTouchHelper;", "mPriority_Rv", "Landroid/support/v7/widget/RecyclerView;", "getMPriority_Rv", "()Landroid/support/v7/widget/RecyclerView;", "mPriority_Rv$delegate", "mProgressWheel", "Lcom/pnikosis/materialishprogress/ProgressWheel;", "getMProgressWheel", "()Lcom/pnikosis/materialishprogress/ProgressWheel;", "mProgressWheel$delegate", "loadData", "", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onShipmentItemSwiped", "mShipment", "Lcom/digikala/dms/model/domain/Shipment;", "onShipmentListChanged", "mShipments", "Ljava/util/ArrayList;", "onStartDrag", "viewHolder", "Landroid/support/v7/widget/RecyclerView$ViewHolder;", "position", "", "onViewCreated", "view", "sendorderByPriorityToServer", "showPriorityAlert", "updatePriorityAdapterData", "updateShipmentPriority", "packId", "", "Companion", "app_release"}, k = 1, mv = {1, 1, 11})
public final class DragPriorityFragment extends Fragment implements OnStartDragListener, OnShipmentListChangeListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(DragPriorityFragment.class), "mProgressWheel", "getMProgressWheel()Lcom/pnikosis/materialishprogress/ProgressWheel;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(DragPriorityFragment.class), "mPriority_Rv", "getMPriority_Rv()Landroid/support/v7/widget/RecyclerView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(DragPriorityFragment.class), "mErrorView", "getMErrorView()Landroid/view/View;"))};

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private HashMap _$_findViewCache;
    private ShipmentPriorityAdapter mAdapter;
    private ItemTouchHelper mItemTouchHelper;

    /* JADX INFO: renamed from: mProgressWheel$delegate, reason: from kotlin metadata */
    private final Lazy mProgressWheel = LazyKt.lazy(new Function0<ProgressWheel>() { // from class: com.digikala.dms.view.fragment.DragPriorityFragment$mProgressWheel$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ProgressWheel invoke() {
            return (ProgressWheel) this.this$0._$_findCachedViewById(R.id.activity_priorityShipment_progressWheel_loading);
        }
    });

    /* JADX INFO: renamed from: mPriority_Rv$delegate, reason: from kotlin metadata */
    private final Lazy mPriority_Rv = LazyKt.lazy(new Function0<RecyclerView>() { // from class: com.digikala.dms.view.fragment.DragPriorityFragment$mPriority_Rv$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final RecyclerView invoke() {
            return (RecyclerView) this.this$0._$_findCachedViewById(R.id.activity_shipment_priority_rv);
        }
    });

    /* JADX INFO: renamed from: mErrorView$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy mErrorView = LazyKt.lazy(new Function0<View>() { // from class: com.digikala.dms.view.fragment.DragPriorityFragment$mErrorView$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final View invoke() {
            return ((ViewStub) this.this$0.getView().findViewById(R.id.activity_shipment_priority_error_stub)).inflate();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerView getMPriority_Rv() {
        Lazy lazy = this.mPriority_Rv;
        KProperty kProperty = $$delegatedProperties[1];
        return (RecyclerView) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ProgressWheel getMProgressWheel() {
        Lazy lazy = this.mProgressWheel;
        KProperty kProperty = $$delegatedProperties[0];
        return (ProgressWheel) lazy.getValue();
    }

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

    @NotNull
    public final View getMErrorView() {
        Lazy lazy = this.mErrorView;
        KProperty kProperty = $$delegatedProperties[2];
        return (View) lazy.getValue();
    }

    @Override // android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    /* JADX INFO: compiled from: DragPriorityFragment.kt */
    @Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/digikala/dms/view/fragment/DragPriorityFragment$Companion;", "", "()V", "newInstance", "Lcom/digikala/dms/view/fragment/DragPriorityFragment;", "app_release"}, k = 1, mv = {1, 1, 11})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker $constructor_marker) {
            this();
        }

        @NotNull
        public final DragPriorityFragment newInstance() {
            DragPriorityFragment mFragment = new DragPriorityFragment();
            return mFragment;
        }
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_drag_priority, container, false);
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, savedInstanceState);
        loadData();
        NewShipmentPriorityActivity.INSTANCE.getPriority_submit_button().setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.fragment.DragPriorityFragment.onViewCreated.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View it) {
                Log.e("bug_seton", "bug_seton");
                ShipmentPriorityAdapter shipmentPriorityAdapter = DragPriorityFragment.this.mAdapter;
                if (shipmentPriorityAdapter != null && shipmentPriorityAdapter.getItemCount() == NewShipmentPriorityActivity.INSTANCE.getOfflineShipmentCount()) {
                    DragPriorityFragment.this.showPriorityAlert();
                    Log.e("bug_if", "bug_if");
                } else {
                    Toast.makeText(DragPriorityFragment.this.getActivity(), "الویت همه آیتم ها مشخص نشده است", 1).show();
                    Log.e("bug_else", "bug_else");
                }
            }
        });
    }

    @Override // com.digikala.dms.helper.touch.OnStartDragListener
    public void onStartDrag(@NotNull RecyclerView.ViewHolder viewHolder, int position) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        ItemTouchHelper itemTouchHelper = this.mItemTouchHelper;
        if (itemTouchHelper != null) {
            itemTouchHelper.startDrag(viewHolder);
        }
    }

    private final void loadData() {
        this.mAdapter = new ShipmentPriorityAdapter(ShipmentPriorityAdapter.INSTANCE.getEXTRA_DRAG_MODE(), NewShipmentPriorityActivity.INSTANCE.getMSwipedShipment(), this, this);
        getMPriority_Rv().post(new Runnable() { // from class: com.digikala.dms.view.fragment.DragPriorityFragment.loadData.1
            @Override // java.lang.Runnable
            public final void run() {
                DragPriorityFragment.this.getMPriority_Rv().setAdapter(DragPriorityFragment.this.mAdapter);
                DragPriorityFragment.this.getMPriority_Rv().setLayoutManager(new LinearLayoutManager(DragPriorityFragment.this.getContext()));
                DragItemTouchHelperCallback callback = new DragItemTouchHelperCallback(DragPriorityFragment.this.mAdapter);
                DragPriorityFragment.this.mItemTouchHelper = new ItemTouchHelper(callback);
                ItemTouchHelper itemTouchHelper = DragPriorityFragment.this.mItemTouchHelper;
                if (itemTouchHelper != null) {
                    itemTouchHelper.attachToRecyclerView(DragPriorityFragment.this.getMPriority_Rv());
                }
            }
        });
        if (NewShipmentPriorityActivity.INSTANCE.getMSwipedShipment().size() > 0) {
            getMPriority_Rv().setVisibility(0);
            getMErrorView().setVisibility(8);
        } else {
            getMPriority_Rv().setVisibility(8);
            getMErrorView().setVisibility(0);
        }
    }

    public final void updatePriorityAdapterData() {
        if (NewShipmentPriorityActivity.INSTANCE.getMSwipedShipment().size() > 0) {
            getMPriority_Rv().setVisibility(0);
            getMErrorView().setVisibility(8);
            ShipmentPriorityAdapter shipmentPriorityAdapter = this.mAdapter;
            if (shipmentPriorityAdapter != null) {
                shipmentPriorityAdapter.addItem(NewShipmentPriorityActivity.INSTANCE.getMSwipedShipment());
                return;
            }
            return;
        }
        getMPriority_Rv().setVisibility(8);
        getMErrorView().setVisibility(0);
    }

    @Override // com.digikala.dms.helper.touch.OnShipmentListChangeListener
    public void onShipmentListChanged(@NotNull ArrayList<Shipment> mShipments) {
        Intrinsics.checkParameterIsNotNull(mShipments, "mShipments");
        NewShipmentPriorityActivity.INSTANCE.getMSwipedShipment().clear();
        NewShipmentPriorityActivity.INSTANCE.getMSwipedShipment().addAll(mShipments);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showPriorityAlert() {
        FragmentActivity it = getActivity();
        if (it != null) {
            new MaterialDialog.Builder(it).content(getString(R.string.send_priority_to_server_successfully)).positiveText(getString(R.string.partial_confirm)).autoDismiss(false).onPositive(new MaterialDialog.SingleButtonCallback() { // from class: com.digikala.dms.view.fragment.DragPriorityFragment$showPriorityAlert$$inlined$let$lambda$1
                @Override // com.afollestad.materialdialogs.MaterialDialog.SingleButtonCallback
                public final void onClick(@NotNull MaterialDialog dialog, @NotNull DialogAction $noName_1) {
                    Intrinsics.checkParameterIsNotNull(dialog, "dialog");
                    Intrinsics.checkParameterIsNotNull($noName_1, "<anonymous parameter 1>");
                    dialog.dismiss();
                    this.this$0.sendorderByPriorityToServer();
                }
            }).show();
        }
    }

    @Override // com.digikala.dms.helper.touch.OnShipmentListChangeListener
    public void onShipmentItemSwiped(@NotNull Shipment mShipment) {
        Intrinsics.checkParameterIsNotNull(mShipment, "mShipment");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendorderByPriorityToServer() {
        Log.i("TESSST", "CALL 146");
        if (SwipePriorityFragment.INSTANCE.getPackId() != null) {
            getMProgressWheel().setVisibility(0);
            Log.i("TESSST", "CALL 148");
            ShipmentPriority mShipmentPriority = new ShipmentPriority();
            ArrayList<String> arrayList = new ArrayList<>();
            Iterable $receiver$iv = NewShipmentPriorityActivity.INSTANCE.getMSwipedShipment();
            for (Object item$iv : $receiver$iv) {
                Shipment it = (Shipment) item$iv;
                String orderId = it.getOrderId();
                Intrinsics.checkExpressionValueIsNotNull(orderId, "it.orderId");
                arrayList.add(orderId);
            }
            mShipmentPriority.PackId = SwipePriorityFragment.INSTANCE.getPackId();
            mShipmentPriority.Priority = arrayList;
            WebApi.sendShipmentListByPriority(mShipmentPriority, new Response.Listener<JSONObject>() { // from class: com.digikala.dms.view.fragment.DragPriorityFragment.sendorderByPriorityToServer.2
                @Override // com.android.volley.Response.Listener
                public final void onResponse(JSONObject it2) {
                    Util.setShipmentNextStepIsPriority(DragPriorityFragment.this.getActivity(), false);
                    Log.i("TESSST", "CALL 165");
                    DragPriorityFragment.this.getMProgressWheel().setVisibility(8);
                    try {
                        boolean successfullySendToServer = it2.getBoolean("Data");
                        Log.i("TESSST", "CALL171 ");
                        if (successfullySendToServer) {
                            Log.i("TESSST", "CALL 174" + it2);
                            DragPriorityFragment.this.updateShipmentPriority(SwipePriorityFragment.INSTANCE.getPackId());
                            DragPriorityFragment.this.startActivity(new Intent(DragPriorityFragment.this.getActivity(), (Class<?>) MainActivity.class));
                            FragmentActivity activity = DragPriorityFragment.this.getActivity();
                            if (activity != null) {
                                activity.finish();
                            }
                        } else {
                            Toast.makeText(DragPriorityFragment.this.getActivity(), DragPriorityFragment.this.getString(R.string.send_priority_error), 1).show();
                        }
                    } catch (JSONException joe) {
                        Log.i("TESSST", "ERROR" + joe.getMessage());
                        String message = joe.getMessage();
                        if (message == null) {
                            message = "json parse in priority response error";
                        }
                        AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", message);
                        String message2 = joe.getMessage();
                        if (message2 == null) {
                            message2 = "json parse in priority response error";
                        }
                        AnalyticHelper.responseRequestEvent("Response", "Response Error", message2);
                    }
                }
            }, new Response.ErrorListener() { // from class: com.digikala.dms.view.fragment.DragPriorityFragment.sendorderByPriorityToServer.3
                @Override // com.android.volley.Response.ErrorListener
                public final void onErrorResponse(VolleyError it2) {
                    DragPriorityFragment.this.getMProgressWheel().setVisibility(8);
                    Toast.makeText(DragPriorityFragment.this.getActivity(), DragPriorityFragment.this.getString(R.string.send_priority_error), 1).show();
                    String message = it2.getMessage();
                    if (message == null) {
                        message = "priority response error";
                    }
                    AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", message);
                    String message2 = it2.getMessage();
                    if (message2 == null) {
                        message2 = "priority response error";
                    }
                    AnalyticHelper.responseRequestEvent("Response", "Response Error", message2);
                }
            });
            return;
        }
        Log.i("", "packId is null to send priority to server");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateShipmentPriority(String packId) {
        RealmList<Shipment> shipments;
        RealmList<Shipment> shipments2;
        RealmList<Shipment> shipments3;
        Realm realm = Realm.getDefaultInstance();
        RealmResults result = realm.where(Batch.class).equalTo("id", packId).findAll();
        if (result != null && result.size() > 0) {
            Batch batch = (Batch) result.get(0);
            if (((batch == null || (shipments3 = batch.getShipments()) == null) ? 0 : shipments3.size()) > 0) {
                realm.beginTransaction();
                Batch batch2 = (Batch) result.get(0);
                if (batch2 != null && (shipments2 = batch2.getShipments()) != null) {
                    shipments2.clear();
                }
                int size = NewShipmentPriorityActivity.INSTANCE.getMSwipedShipment().size() - 1;
                if (size >= 0) {
                    int i = 0;
                    while (true) {
                        try {
                            Shipment shipment = NewShipmentPriorityActivity.INSTANCE.getMSwipedShipment().get(i);
                            Intrinsics.checkExpressionValueIsNotNull(shipment, "NewShipmentPriorityActivity.mSwipedShipment[i]");
                            shipment.setPriority(Integer.toString(i + 1));
                            StringBuilder sb = new StringBuilder();
                            Shipment shipment2 = NewShipmentPriorityActivity.INSTANCE.getMSwipedShipment().get(i);
                            Intrinsics.checkExpressionValueIsNotNull(shipment2, "NewShipmentPriorityActivity.mSwipedShipment[i]");
                            sb.append(shipment2.getPriority());
                            sb.append("+     :");
                            sb.append(i);
                            Log.i("prirityLoog", sb.toString());
                        } catch (Exception e) {
                            Log.i("prirityLoog", "error has error");
                        }
                        if (i == size) {
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                Batch batch3 = (Batch) result.get(0);
                if (batch3 != null && (shipments = batch3.getShipments()) != null) {
                    shipments.addAll(NewShipmentPriorityActivity.INSTANCE.getMSwipedShipment());
                }
                realm.commitTransaction();
            }
        }
        realm.close();
    }
}
