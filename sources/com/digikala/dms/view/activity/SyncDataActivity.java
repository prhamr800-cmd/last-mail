package com.digikala.dms.view.activity;

import android.os.Bundle;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.view.ViewStub;
import android.widget.Toast;
import com.afollestad.materialdialogs.DialogAction;
import com.afollestad.materialdialogs.GravityEnum;
import com.afollestad.materialdialogs.MaterialDialog;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.digikala.dms.R;
import com.digikala.dms.adapter.SyncDataAdapter;
import com.digikala.dms.helper.RealmHelper;
import com.digikala.dms.helper.fabric.answers.AnswersHelper;
import com.digikala.dms.helper.firebase.analytics.AnalyticHelper;
import com.digikala.dms.helper.touch.OnStartSyncListener;
import com.digikala.dms.helper.webservice.WebApi;
import com.digikala.dms.helper.webservice.WebApiRequest;
import com.digikala.dms.model.domain.Batch;
import com.digikala.dms.model.domain.Courier;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.util.Util;
import com.digikala.dms.view.fragment.LoginFragment;
import com.wang.avi.AVLoadingIndicatorView;
import io.realm.Realm;
import io.realm.RealmList;
import io.realm.RealmResults;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;

/* JADX INFO: compiled from: SyncDataActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010!\u001a\u00020\"H\u0016J\u0006\u0010#\u001a\u00020\u001cJ\b\u0010$\u001a\u00020\"H\u0002J\b\u0010%\u001a\u00020\"H\u0002J\u0012\u0010&\u001a\u00020\"2\b\u0010'\u001a\u0004\u0018\u00010(H\u0014J\u0006\u0010)\u001a\u00020\"J\u0010\u0010*\u001a\u00020\"2\u0006\u0010+\u001a\u00020\nH\u0016J\u0006\u0010,\u001a\u00020\"J\b\u0010-\u001a\u00020\"H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\f\u001a\u00020\r8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0018\u001a\u00020\r8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u0011\u001a\u0004\b\u0019\u0010\u000fR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006."}, d2 = {"Lcom/digikala/dms/view/activity/SyncDataActivity;", "Landroid/support/v7/app/AppCompatActivity;", "Lcom/digikala/dms/helper/touch/OnStartSyncListener;", "()V", "TAG_DEBUG", "", "mAdapter", "Lcom/digikala/dms/adapter/SyncDataAdapter;", "mAllShipment", "Ljava/util/ArrayList;", "Lcom/digikala/dms/model/domain/Shipment;", "Lkotlin/collections/ArrayList;", "mErrorView", "Landroid/view/View;", "getMErrorView", "()Landroid/view/View;", "mErrorView$delegate", "Lkotlin/Lazy;", "mSync_Rv", "Landroid/support/v7/widget/RecyclerView;", "getMSync_Rv", "()Landroid/support/v7/widget/RecyclerView;", "mSync_Rv$delegate", "mUnsyncedShipmentList", "mWaitingView", "getMWaitingView", "mWaitingView$delegate", "shipmentIndex", "", "getShipmentIndex", "()I", "setShipmentIndex", "(I)V", "finalizeSync", "", "getUnSyncedShipmentSize", "loadAllShipmentOffline", "loadData", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "reSendAllOrder", "retrySync", "shipment", "showSyncErrorDialog", "syncDataToServer", "app_release"}, k = 1, mv = {1, 1, 11})
public final class SyncDataActivity extends AppCompatActivity implements OnStartSyncListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SyncDataActivity.class), "mSync_Rv", "getMSync_Rv()Landroid/support/v7/widget/RecyclerView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SyncDataActivity.class), "mErrorView", "getMErrorView()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SyncDataActivity.class), "mWaitingView", "getMWaitingView()Landroid/view/View;"))};
    private HashMap _$_findViewCache;
    private SyncDataAdapter mAdapter;
    private ArrayList<Shipment> mAllShipment;
    private ArrayList<Shipment> mUnsyncedShipmentList;
    private int shipmentIndex;

    /* JADX INFO: renamed from: mSync_Rv$delegate, reason: from kotlin metadata */
    private final Lazy mSync_Rv = LazyKt.lazy(new Function0<RecyclerView>() { // from class: com.digikala.dms.view.activity.SyncDataActivity$mSync_Rv$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final RecyclerView invoke() {
            return (RecyclerView) this.this$0._$_findCachedViewById(R.id.activity_shipment_sync_rv);
        }
    });
    private final String TAG_DEBUG = "SyncDataActivityLog";

    /* JADX INFO: renamed from: mErrorView$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy mErrorView = LazyKt.lazy(new Function0<View>() { // from class: com.digikala.dms.view.activity.SyncDataActivity$mErrorView$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final View invoke() {
            return ((ViewStub) this.this$0.findViewById(R.id.activity_shipment_sync_error_stub)).inflate();
        }
    });

    /* JADX INFO: renamed from: mWaitingView$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy mWaitingView = LazyKt.lazy(new Function0<View>() { // from class: com.digikala.dms.view.activity.SyncDataActivity$mWaitingView$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final View invoke() {
            View $receiver = ((ViewStub) this.this$0.findViewById(R.id.activity_shipment_sync_waiting_view_stub)).inflate();
            ((AVLoadingIndicatorView) $receiver.findViewById(R.id.waiting_view_anim)).smoothToShow();
            return $receiver;
        }
    });

    private final RecyclerView getMSync_Rv() {
        Lazy lazy = this.mSync_Rv;
        KProperty kProperty = $$delegatedProperties[0];
        return (RecyclerView) lazy.getValue();
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
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @NotNull
    public final View getMErrorView() {
        Lazy lazy = this.mErrorView;
        KProperty kProperty = $$delegatedProperties[1];
        return (View) lazy.getValue();
    }

    @NotNull
    public final View getMWaitingView() {
        Lazy lazy = this.mWaitingView;
        KProperty kProperty = $$delegatedProperties[2];
        return (View) lazy.getValue();
    }

    @NotNull
    public static final /* synthetic */ ArrayList access$getMAllShipment$p(SyncDataActivity $this) {
        ArrayList<Shipment> arrayList = $this.mAllShipment;
        if (arrayList == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAllShipment");
        }
        return arrayList;
    }

    public final int getShipmentIndex() {
        return this.shipmentIndex;
    }

    public final void setShipmentIndex(int i) {
        this.shipmentIndex = i;
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sync_orders);
        getMWaitingView().setVisibility(8);
        this.mAdapter = new SyncDataAdapter(this, this);
        Log.i(this.TAG_DEBUG, "onCreate()");
        this.mAllShipment = new ArrayList<>();
        this.mUnsyncedShipmentList = new ArrayList<>();
        loadData();
        syncDataToServer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadAllShipmentOffline() {
        RealmResults allShipments;
        Batch batch;
        RealmList<Shipment> shipments;
        Realm realm = Realm.getDefaultInstance();
        RealmResults loggedInDeliveries = realm.where(Courier.class).equalTo(Courier.COLUMN_IS_LOGGED_IN, (Boolean) true).findAll();
        if (loggedInDeliveries.size() == 1) {
            Courier courier = (Courier) loggedInDeliveries.get(0);
            if ((courier != null ? courier.getBatch() : null) != null) {
                Courier courier2 = (Courier) loggedInDeliveries.get(0);
                if (((courier2 == null || (batch = courier2.getBatch()) == null || (shipments = batch.getShipments()) == null) ? 0 : shipments.size()) > 0 && (allShipments = realm.where(Shipment.class).equalTo(Shipment.COLUMN_TUPLE_IS_SYNCED_WITH_SERVER, (Boolean) false).findAll()) != null) {
                    ArrayList<Shipment> arrayList = this.mAllShipment;
                    if (arrayList == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mAllShipment");
                    }
                    arrayList.addAll(allShipments);
                }
            }
        }
        realm.close();
    }

    private final void loadData() {
        loadAllShipmentOffline();
        ArrayList<Shipment> arrayList = this.mAllShipment;
        if (arrayList == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAllShipment");
        }
        if (arrayList.size() > 0) {
            getMSync_Rv().setVisibility(0);
            getMErrorView().setVisibility(8);
            getMSync_Rv();
            getMSync_Rv().setHasFixedSize(true);
            getMSync_Rv().setLayoutManager(new LinearLayoutManager(this));
            getMSync_Rv().setAdapter(this.mAdapter);
            SyncDataAdapter syncDataAdapter = this.mAdapter;
            if (syncDataAdapter != null) {
                ArrayList<Shipment> arrayList2 = this.mAllShipment;
                if (arrayList2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mAllShipment");
                }
                syncDataAdapter.addItem(arrayList2);
                return;
            }
            return;
        }
        getMSync_Rv().setVisibility(8);
        getMErrorView().setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void syncDataToServer() {
        int i = this.shipmentIndex;
        ArrayList<Shipment> arrayList = this.mAllShipment;
        if (arrayList == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAllShipment");
        }
        if (i > arrayList.size() - 1 && getUnSyncedShipmentSize() == 0) {
            Toast.makeText(getApplicationContext(), "در حال همگام سازی با سرور", 1).show();
            getMWaitingView().setVisibility(8);
            Toast.makeText(getApplicationContext(), "run makeFinalized() automatic sync", 1).show();
            finalizeSync();
            return;
        }
        int i2 = this.shipmentIndex;
        ArrayList<Shipment> arrayList2 = this.mAllShipment;
        if (arrayList2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAllShipment");
        }
        if (i2 > arrayList2.size() - 1) {
            getMWaitingView().setVisibility(8);
            showSyncErrorDialog();
            return;
        }
        String deliverId = Util.getDeliveryId(getApplicationContext());
        String batchId = Util.getBatchId(getApplicationContext());
        final Realm realm = Realm.getDefaultInstance();
        ArrayList<Shipment> arrayList3 = this.mAllShipment;
        if (arrayList3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAllShipment");
        }
        if (arrayList3.size() > 0) {
            ArrayList shipments = new ArrayList();
            ArrayList<Shipment> arrayList4 = this.mAllShipment;
            if (arrayList4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mAllShipment");
            }
            shipments.add(arrayList4.get(this.shipmentIndex));
            getMWaitingView().setVisibility(0);
            WebApi.makeSyncShipmentsWithBackOfficeRequest(deliverId, batchId, shipments, new Response.Listener<JSONObject>() { // from class: com.digikala.dms.view.activity.SyncDataActivity.syncDataToServer.1
                @Override // com.android.volley.Response.Listener
                public final void onResponse(JSONObject it) {
                    try {
                        boolean successfullySynced = it.getBoolean("Data");
                        Log.i(SyncDataActivity.this.TAG_DEBUG, "response is " + successfullySynced);
                        if (!successfullySynced) {
                            Log.i(SyncDataActivity.this.TAG_DEBUG, "response is false  in response section");
                            return;
                        }
                        realm.beginTransaction();
                        Object obj = SyncDataActivity.access$getMAllShipment$p(SyncDataActivity.this).get(SyncDataActivity.this.getShipmentIndex());
                        Intrinsics.checkExpressionValueIsNotNull(obj, "mAllShipment[shipmentIndex]");
                        ((Shipment) obj).setTupleIsSyncedWithServer(true);
                        SyncDataAdapter syncDataAdapter = SyncDataActivity.this.mAdapter;
                        if (syncDataAdapter != null) {
                            Object obj2 = SyncDataActivity.access$getMAllShipment$p(SyncDataActivity.this).get(SyncDataActivity.this.getShipmentIndex());
                            Intrinsics.checkExpressionValueIsNotNull(obj2, "mAllShipment[shipmentIndex]");
                            String orderId = ((Shipment) obj2).getOrderId();
                            Intrinsics.checkExpressionValueIsNotNull(orderId, "mAllShipment[shipmentIndex].orderId");
                            syncDataAdapter.removeById(orderId);
                        }
                        Log.i(SyncDataActivity.this.TAG_DEBUG, "response is true and tuple is synced with server");
                        realm.commitTransaction();
                        SyncDataActivity syncDataActivity = SyncDataActivity.this;
                        syncDataActivity.setShipmentIndex(syncDataActivity.getShipmentIndex() + 1);
                        SyncDataActivity.this.syncDataToServer();
                        Log.i(SyncDataActivity.this.TAG_DEBUG, "after update item");
                    } catch (Exception e) {
                    }
                }
            }, new Response.ErrorListener() { // from class: com.digikala.dms.view.activity.SyncDataActivity.syncDataToServer.2
                @Override // com.android.volley.Response.ErrorListener
                public final void onErrorResponse(VolleyError it) {
                    realm.beginTransaction();
                    SyncDataAdapter syncDataAdapter = SyncDataActivity.this.mAdapter;
                    if (syncDataAdapter != null) {
                        Object obj = SyncDataActivity.access$getMAllShipment$p(SyncDataActivity.this).get(SyncDataActivity.this.getShipmentIndex());
                        Intrinsics.checkExpressionValueIsNotNull(obj, "mAllShipment[shipmentIndex]");
                        String orderId = ((Shipment) obj).getOrderId();
                        Intrinsics.checkExpressionValueIsNotNull(orderId, "mAllShipment[shipmentIndex].orderId");
                        Object obj2 = SyncDataActivity.access$getMAllShipment$p(SyncDataActivity.this).get(SyncDataActivity.this.getShipmentIndex());
                        Intrinsics.checkExpressionValueIsNotNull(obj2, "mAllShipment[shipmentIndex]");
                        syncDataAdapter.updateById(orderId, (Shipment) obj2);
                    }
                    Log.i(SyncDataActivity.this.TAG_DEBUG, "error and tuple is Fail with server");
                    realm.commitTransaction();
                    SyncDataActivity syncDataActivity = SyncDataActivity.this;
                    syncDataActivity.setShipmentIndex(syncDataActivity.getShipmentIndex() + 1);
                    SyncDataActivity.this.syncDataToServer();
                    Log.i(SyncDataActivity.this.TAG_DEBUG, "response is false  in response section");
                }
            });
            return;
        }
        Toast.makeText(getApplicationContext(), "run makeFinalized() automatic sync", 1).show();
        finalizeSync();
    }

    @Override // com.digikala.dms.helper.touch.OnStartSyncListener
    public void retrySync(@NotNull final Shipment shipment) {
        Intrinsics.checkParameterIsNotNull(shipment, "shipment");
        String deliverId = Util.getDeliveryId(getApplicationContext());
        String batchId = Util.getBatchId(getApplicationContext());
        final Realm realm = Realm.getDefaultInstance();
        ArrayList shipments = new ArrayList();
        shipments.add(shipment);
        getMWaitingView().setVisibility(0);
        WebApi.makeSyncShipmentsWithBackOfficeRequest(deliverId, batchId, shipments, new Response.Listener<JSONObject>() { // from class: com.digikala.dms.view.activity.SyncDataActivity.retrySync.1
            @Override // com.android.volley.Response.Listener
            public final void onResponse(JSONObject it) {
                try {
                    boolean successfullySynced = it.getBoolean("Data");
                    if (successfullySynced) {
                        realm.beginTransaction();
                        shipment.setTupleIsSyncedWithServer(true);
                        SyncDataAdapter syncDataAdapter = SyncDataActivity.this.mAdapter;
                        if (syncDataAdapter != null) {
                            String orderId = shipment.getOrderId();
                            Intrinsics.checkExpressionValueIsNotNull(orderId, "shipment.orderId");
                            syncDataAdapter.removeById(orderId);
                        }
                        realm.commitTransaction();
                        SyncDataActivity.this.loadAllShipmentOffline();
                    }
                } catch (Exception e) {
                }
                SyncDataActivity.this.getMWaitingView().setVisibility(8);
            }
        }, new Response.ErrorListener() { // from class: com.digikala.dms.view.activity.SyncDataActivity.retrySync.2
            @Override // com.android.volley.Response.ErrorListener
            public final void onErrorResponse(VolleyError it) {
                Toast.makeText(SyncDataActivity.this.getApplicationContext(), SyncDataActivity.this.getString(R.string.sync_failed), 1).show();
                realm.beginTransaction();
                SyncDataAdapter syncDataAdapter = SyncDataActivity.this.mAdapter;
                if (syncDataAdapter != null) {
                    String orderId = shipment.getOrderId();
                    Intrinsics.checkExpressionValueIsNotNull(orderId, "shipment.orderId");
                    syncDataAdapter.updateById(orderId, shipment);
                }
                Log.i(SyncDataActivity.this.TAG_DEBUG, "error and tuple is Fail with server");
                realm.commitTransaction();
                SyncDataActivity.this.loadAllShipmentOffline();
                SyncDataActivity.this.getMWaitingView().setVisibility(8);
            }
        });
    }

    @Override // com.digikala.dms.helper.touch.OnStartSyncListener
    public void finalizeSync() {
        Realm realm = Realm.getDefaultInstance();
        realm.beginTransaction();
        String batchId = Util.getBatchId(getApplicationContext());
        WebApi.makeFinalizeBatchRequest(batchId, this.TAG_DEBUG, new AnonymousClass1(realm), null).send();
    }

    /* JADX INFO: renamed from: com.digikala.dms.view.activity.SyncDataActivity$finalizeSync$1, reason: invalid class name */
    /* JADX INFO: compiled from: SyncDataActivity.kt */
    @Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0017\u0010\u0007\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"com/digikala/dms/view/activity/SyncDataActivity$finalizeSync$1", "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;", "", "onErrorResponse", "", "errorMessage", "", "onResponse", "successfullyFinalized", "(Ljava/lang/Boolean;)V", "app_release"}, k = 1, mv = {1, 1, 11})
    public static final class AnonymousClass1 implements WebApiRequest.WebApiListener<Boolean> {
        final /* synthetic */ Realm $realm;

        AnonymousClass1(Realm $captured_local_variable$1) {
            this.$realm = $captured_local_variable$1;
        }

        @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
        public void onResponse(@Nullable Boolean successfullyFinalized) {
            Log.i(SyncDataActivity.this.TAG_DEBUG, String.valueOf(successfullyFinalized) + "");
            RealmHelper.deleteRealmTables();
            this.$realm.executeTransaction(new Realm.Transaction() { // from class: com.digikala.dms.view.activity.SyncDataActivity$finalizeSync$1$onResponse$1
                @Override // io.realm.Realm.Transaction
                public final void execute(Realm realm) {
                    realm.deleteAll();
                }
            });
            LoginFragment.logout();
        }

        @Override // com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener
        public void onErrorResponse(@NotNull String errorMessage) {
            Intrinsics.checkParameterIsNotNull(errorMessage, "errorMessage");
            AnswersHelper.logNumberRequestAndResponse("Response", "Response Error", errorMessage);
            AnalyticHelper.responseRequestEvent("Response", "Response Error", errorMessage);
            AnswersHelper.finalizeTripStatusEvent("Error", errorMessage + "");
            AnalyticHelper.finalizeTripStatusEvent("Error", errorMessage + "");
            Snackbar.make((CoordinatorLayout) SyncDataActivity.this._$_findCachedViewById(R.id.activity_shipment_sync_root), SyncDataActivity.this.getString(R.string.sync_fail_alert), -2).setAction(SyncDataActivity.this.getString(R.string.try_again), new View.OnClickListener() { // from class: com.digikala.dms.view.activity.SyncDataActivity$finalizeSync$1$onErrorResponse$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View it) {
                    Toast.makeText(SyncDataActivity.this.getApplicationContext(), "run makeFinalized() snackbar", 1).show();
                    SyncDataActivity.this.finalizeSync();
                }
            }).show();
        }
    }

    public final int getUnSyncedShipmentSize() {
        RealmResults allShipments;
        Batch batch;
        RealmList<Shipment> shipments;
        Realm realm = Realm.getDefaultInstance();
        RealmResults loggedInDeliveries = realm.where(Courier.class).equalTo(Courier.COLUMN_IS_LOGGED_IN, (Boolean) true).findAll();
        if (loggedInDeliveries.size() == 1) {
            Courier courier = (Courier) loggedInDeliveries.get(0);
            if ((courier != null ? courier.getBatch() : null) != null) {
                Courier courier2 = (Courier) loggedInDeliveries.get(0);
                if (((courier2 == null || (batch = courier2.getBatch()) == null || (shipments = batch.getShipments()) == null) ? 0 : shipments.size()) > 0 && (allShipments = realm.where(Shipment.class).equalTo(Shipment.COLUMN_TUPLE_IS_SYNCED_WITH_SERVER, (Boolean) false).findAll()) != null) {
                    ArrayList<Shipment> arrayList = this.mUnsyncedShipmentList;
                    if (arrayList == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mUnsyncedShipmentList");
                    }
                    arrayList.addAll(allShipments);
                }
            }
        }
        realm.close();
        ArrayList<Shipment> arrayList2 = this.mUnsyncedShipmentList;
        if (arrayList2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mUnsyncedShipmentList");
        }
        return arrayList2.size();
    }

    public final void showSyncErrorDialog() {
        new MaterialDialog.Builder(this).content(getString(R.string.sync_fail_alert)).itemsGravity(GravityEnum.START).negativeText(getString(R.string.sync_later)).autoDismiss(false).positiveText(getString(R.string.sync_manual)).neutralText(getString(R.string.sync_all_item)).onNegative(new MaterialDialog.SingleButtonCallback() { // from class: com.digikala.dms.view.activity.SyncDataActivity.showSyncErrorDialog.1
            @Override // com.afollestad.materialdialogs.MaterialDialog.SingleButtonCallback
            public final void onClick(@NotNull MaterialDialog dialog, @NotNull DialogAction $noName_1) {
                Intrinsics.checkParameterIsNotNull(dialog, "dialog");
                Intrinsics.checkParameterIsNotNull($noName_1, "<anonymous parameter 1>");
                dialog.dismiss();
                SyncDataActivity.this.finish();
            }
        }).onPositive(new MaterialDialog.SingleButtonCallback() { // from class: com.digikala.dms.view.activity.SyncDataActivity.showSyncErrorDialog.2
            @Override // com.afollestad.materialdialogs.MaterialDialog.SingleButtonCallback
            public final void onClick(@NotNull MaterialDialog dialog, @NotNull DialogAction $noName_1) {
                Intrinsics.checkParameterIsNotNull(dialog, "dialog");
                Intrinsics.checkParameterIsNotNull($noName_1, "<anonymous parameter 1>");
                dialog.dismiss();
            }
        }).onNeutral(new MaterialDialog.SingleButtonCallback() { // from class: com.digikala.dms.view.activity.SyncDataActivity.showSyncErrorDialog.3
            @Override // com.afollestad.materialdialogs.MaterialDialog.SingleButtonCallback
            public final void onClick(@NotNull MaterialDialog dialog, @NotNull DialogAction $noName_1) {
                Intrinsics.checkParameterIsNotNull(dialog, "dialog");
                Intrinsics.checkParameterIsNotNull($noName_1, "<anonymous parameter 1>");
                dialog.dismiss();
                SyncDataActivity.this.reSendAllOrder();
            }
        }).show();
    }

    public final void reSendAllOrder() {
        this.shipmentIndex = 0;
        loadAllShipmentOffline();
        syncDataToServer();
    }
}
