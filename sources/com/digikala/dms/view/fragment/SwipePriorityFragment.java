package com.digikala.dms.view.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.Toast;
import com.afollestad.materialdialogs.DialogAction;
import com.afollestad.materialdialogs.MaterialDialog;
import com.digikala.dms.R;
import com.digikala.dms.adapter.ShipmentPriorityAdapter;
import com.digikala.dms.helper.touch.OnShipmentListChangeListener;
import com.digikala.dms.helper.touch.OnStartDragListener;
import com.digikala.dms.helper.touch.SwipeItemTouchHelperCallback;
import com.digikala.dms.model.domain.Batch;
import com.digikala.dms.model.domain.Courier;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.view.activity.NewShipmentPriorityActivity;
import io.realm.Realm;
import io.realm.RealmList;
import io.realm.RealmResults;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: SwipePriorityFragment.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 -2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001-B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u0017\u001a\u00020\u0018H\u0002J\b\u0010\u0019\u001a\u00020\u0018H\u0002J&\u0010\u001a\u001a\u0004\u0018\u00010\b2\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0010\u0010!\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u0011H\u0016J\u0016\u0010#\u001a\u00020\u00182\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0016J\u0018\u0010%\u001a\u00020\u00182\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0016J\u001a\u0010*\u001a\u00020\u00182\u0006\u0010+\u001a\u00020\b2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0006\u0010,\u001a\u00020\u0018R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\f\u001a\u0004\b\u0014\u0010\u0015¨\u0006."}, d2 = {"Lcom/digikala/dms/view/fragment/SwipePriorityFragment;", "Landroid/support/v4/app/Fragment;", "Lcom/digikala/dms/helper/touch/OnStartDragListener;", "Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;", "()V", "mAdapter", "Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;", "mErrorView", "Landroid/view/View;", "getMErrorView", "()Landroid/view/View;", "mErrorView$delegate", "Lkotlin/Lazy;", "mItemTouchHelper", "Landroid/support/v7/widget/helper/ItemTouchHelper;", "mOpenShipments", "Ljava/util/ArrayList;", "Lcom/digikala/dms/model/domain/Shipment;", "mPriority_Rv", "Landroid/support/v7/widget/RecyclerView;", "getMPriority_Rv", "()Landroid/support/v7/widget/RecyclerView;", "mPriority_Rv$delegate", "loadAllShipmentOffline", "", "loadData", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onShipmentItemSwiped", "mShipment", "onShipmentListChanged", "mShipments", "onStartDrag", "viewHolder", "Landroid/support/v7/widget/RecyclerView$ViewHolder;", "position", "", "onViewCreated", "view", "showPriorityAlert", "Companion", "app_release"}, k = 1, mv = {1, 1, 11})
public final class SwipePriorityFragment extends Fragment implements OnStartDragListener, OnShipmentListChangeListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SwipePriorityFragment.class), "mPriority_Rv", "getMPriority_Rv()Landroid/support/v7/widget/RecyclerView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(SwipePriorityFragment.class), "mErrorView", "getMErrorView()Landroid/view/View;"))};

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private static String packId;
    private HashMap _$_findViewCache;
    private ShipmentPriorityAdapter mAdapter;
    private ItemTouchHelper mItemTouchHelper;
    private ArrayList<Shipment> mOpenShipments;

    /* JADX INFO: renamed from: mPriority_Rv$delegate, reason: from kotlin metadata */
    private final Lazy mPriority_Rv = LazyKt.lazy(new Function0<RecyclerView>() { // from class: com.digikala.dms.view.fragment.SwipePriorityFragment$mPriority_Rv$2
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
    private final Lazy mErrorView = LazyKt.lazy(new Function0<View>() { // from class: com.digikala.dms.view.fragment.SwipePriorityFragment$mErrorView$2
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
        KProperty kProperty = $$delegatedProperties[1];
        return (View) lazy.getValue();
    }

    @Override // android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    /* JADX INFO: compiled from: SwipePriorityFragment.kt */
    @Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/digikala/dms/view/fragment/SwipePriorityFragment$Companion;", "", "()V", "packId", "", "getPackId", "()Ljava/lang/String;", "setPackId", "(Ljava/lang/String;)V", "newInstance", "Lcom/digikala/dms/view/fragment/SwipePriorityFragment;", "app_release"}, k = 1, mv = {1, 1, 11})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker $constructor_marker) {
            this();
        }

        @Nullable
        public final String getPackId() {
            return SwipePriorityFragment.packId;
        }

        public final void setPackId(@Nullable String str) {
            SwipePriorityFragment.packId = str;
        }

        @NotNull
        public final SwipePriorityFragment newInstance() {
            SwipePriorityFragment mFragment = new SwipePriorityFragment();
            return mFragment;
        }
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_swipe_priority, container, false);
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.mOpenShipments = new ArrayList<>();
        loadData();
    }

    @Override // com.digikala.dms.helper.touch.OnStartDragListener
    public void onStartDrag(@NotNull RecyclerView.ViewHolder viewHolder, int position) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        ItemTouchHelper itemTouchHelper = this.mItemTouchHelper;
        if (itemTouchHelper != null) {
            itemTouchHelper.startDrag(viewHolder);
        }
    }

    private final void loadAllShipmentOffline() {
        Batch batch;
        Batch batch2;
        Batch batch3;
        RealmList<Shipment> shipments;
        Realm realm = Realm.getDefaultInstance();
        RealmResults loggedInDeliveries = realm.where(Courier.class).equalTo(Courier.COLUMN_IS_LOGGED_IN, (Boolean) true).findAll();
        if (loggedInDeliveries.size() == 1) {
            Courier courier = (Courier) loggedInDeliveries.get(0);
            String id = null;
            if ((courier != null ? courier.getBatch() : null) != null) {
                Courier courier2 = (Courier) loggedInDeliveries.get(0);
                if (((courier2 == null || (batch3 = courier2.getBatch()) == null || (shipments = batch3.getShipments()) == null) ? 0 : shipments.size()) > 0) {
                    Courier courier3 = (Courier) loggedInDeliveries.get(0);
                    RealmList<Shipment> shipments2 = (courier3 == null || (batch2 = courier3.getBatch()) == null) ? null : batch2.getShipments();
                    Courier courier4 = (Courier) loggedInDeliveries.get(0);
                    if (courier4 != null && (batch = courier4.getBatch()) != null) {
                        id = batch.getId();
                    }
                    packId = id;
                    if (shipments2 != null) {
                        NewShipmentPriorityActivity.INSTANCE.setOfflineShipmentCount(shipments2.size());
                        ArrayList<Shipment> arrayList = this.mOpenShipments;
                        if (arrayList == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("mOpenShipments");
                        }
                        arrayList.addAll(shipments2);
                    }
                }
            }
        }
        realm.close();
    }

    private final void loadData() {
        loadAllShipmentOffline();
        ArrayList<Shipment> arrayList = this.mOpenShipments;
        if (arrayList == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mOpenShipments");
        }
        if (arrayList.size() > 0) {
            getMPriority_Rv().setVisibility(0);
            getMErrorView().setVisibility(8);
            String extra_swipe_mode = ShipmentPriorityAdapter.INSTANCE.getEXTRA_SWIPE_MODE();
            ArrayList<Shipment> arrayList2 = this.mOpenShipments;
            if (arrayList2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mOpenShipments");
            }
            this.mAdapter = new ShipmentPriorityAdapter(extra_swipe_mode, arrayList2, this, this);
            getMPriority_Rv().post(new Runnable() { // from class: com.digikala.dms.view.fragment.SwipePriorityFragment.loadData.1
                @Override // java.lang.Runnable
                public final void run() {
                    SwipePriorityFragment.this.getMPriority_Rv().setHasFixedSize(true);
                    SwipePriorityFragment.this.getMPriority_Rv().setAdapter(SwipePriorityFragment.this.mAdapter);
                    SwipePriorityFragment.this.getMPriority_Rv().setLayoutManager(new LinearLayoutManager(SwipePriorityFragment.this.getContext()));
                    SwipeItemTouchHelperCallback callback = new SwipeItemTouchHelperCallback(SwipePriorityFragment.this.mAdapter);
                    SwipePriorityFragment.this.mItemTouchHelper = new ItemTouchHelper(callback);
                    ItemTouchHelper itemTouchHelper = SwipePriorityFragment.this.mItemTouchHelper;
                    if (itemTouchHelper != null) {
                        itemTouchHelper.attachToRecyclerView(SwipePriorityFragment.this.getMPriority_Rv());
                    }
                }
            });
            return;
        }
        getMPriority_Rv().setVisibility(8);
        getMErrorView().setVisibility(0);
    }

    @Override // com.digikala.dms.helper.touch.OnShipmentListChangeListener
    public void onShipmentListChanged(@NotNull ArrayList<Shipment> mShipments) {
        Intrinsics.checkParameterIsNotNull(mShipments, "mShipments");
        ArrayList<Shipment> arrayList = this.mOpenShipments;
        if (arrayList == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mOpenShipments");
        }
        arrayList.clear();
        ArrayList<Shipment> arrayList2 = this.mOpenShipments;
        if (arrayList2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mOpenShipments");
        }
        arrayList2.addAll(mShipments);
    }

    public final void showPriorityAlert() {
        FragmentActivity it = getActivity();
        if (it != null) {
            new MaterialDialog.Builder(it).content(getString(R.string.send_priority_to_server_successfully)).positiveText(getString(R.string.partial_confirm)).autoDismiss(false).onPositive(new MaterialDialog.SingleButtonCallback() { // from class: com.digikala.dms.view.fragment.SwipePriorityFragment$showPriorityAlert$$inlined$let$lambda$1
                @Override // com.afollestad.materialdialogs.MaterialDialog.SingleButtonCallback
                public final void onClick(@NotNull MaterialDialog dialog, @NotNull DialogAction $noName_1) {
                    Intrinsics.checkParameterIsNotNull(dialog, "dialog");
                    Intrinsics.checkParameterIsNotNull($noName_1, "<anonymous parameter 1>");
                    dialog.dismiss();
                    Toast.makeText(this.this$0.getActivity(), "send priority to server", 1).show();
                }
            }).show();
        }
    }

    @Override // com.digikala.dms.helper.touch.OnShipmentListChangeListener
    public void onShipmentItemSwiped(@NotNull Shipment mShipment) {
        Intrinsics.checkParameterIsNotNull(mShipment, "mShipment");
        NewShipmentPriorityActivity.INSTANCE.getMSwipedShipment().add(mShipment);
        FragmentActivity activity = getActivity();
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.digikala.dms.view.activity.NewShipmentPriorityActivity");
        }
        ((NewShipmentPriorityActivity) activity).updateTabLayout(this.mAdapter != null ? r1.getItemCount() - 1 : 0);
    }
}
