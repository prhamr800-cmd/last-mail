package com.digikala.dms.adapter;

import android.annotation.SuppressLint;
import android.graphics.Color;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.digikala.dms.R;
import com.digikala.dms.helper.touch.ItemTouchHelperAdapter;
import com.digikala.dms.helper.touch.ItemTouchHelperViewHolder;
import com.digikala.dms.helper.touch.OnShipmentListChangeListener;
import com.digikala.dms.helper.touch.OnStartDragListener;
import com.digikala.dms.model.domain.Courier;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.util.Util;
import com.digikala.dms.view.custom.XeiTextView;
import java.util.ArrayList;
import java.util.Collections;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: ShipmentPriorityAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 ,2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002,-B/\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\u0014\u0010\u0018\u001a\u00020\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u001cH\u0017J\u0018\u0010 \u001a\u00020\u00022\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u001cH\u0016J\u0010\u0010$\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u001cH\u0016J,\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020\u001c2\b\u0010)\u001a\u0004\u0018\u00010*2\b\u0010+\u001a\u0004\u0018\u00010*H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006."}, d2 = {"Lcom/digikala/dms/adapter/ShipmentPriorityAdapter;", "Landroid/support/v7/widget/RecyclerView$Adapter;", "Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;", "Lcom/digikala/dms/helper/touch/ItemTouchHelperAdapter;", "touchType", "", Courier.COLUMN_SHIPMENTS, "Ljava/util/ArrayList;", "Lcom/digikala/dms/model/domain/Shipment;", "mDragStartListener", "Lcom/digikala/dms/helper/touch/OnStartDragListener;", "mShipmentListChangeListener", "Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;", "(Ljava/lang/String;Ljava/util/ArrayList;Lcom/digikala/dms/helper/touch/OnStartDragListener;Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;)V", "mShipments", "mSourceShipments", "getShipments", "()Ljava/util/ArrayList;", "setShipments", "(Ljava/util/ArrayList;)V", "getTouchType", "()Ljava/lang/String;", "setTouchType", "(Ljava/lang/String;)V", "addItem", "", "newShipment", "getItemCount", "", "onBindViewHolder", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onItemDismiss", "onItemMove", "", "fromPosition", "toPosition", "viewHolderSource", "Landroid/support/v7/widget/RecyclerView$ViewHolder;", "viewHolderTarget", "Companion", "ShipmentPriorityViewholder", "app_release"}, k = 1, mv = {1, 1, 11})
public final class ShipmentPriorityAdapter extends RecyclerView.Adapter<ShipmentPriorityViewholder> implements ItemTouchHelperAdapter {
    private OnStartDragListener mDragStartListener;
    private OnShipmentListChangeListener mShipmentListChangeListener;
    private ArrayList<Shipment> mShipments;
    private ArrayList<Shipment> mSourceShipments;

    @NotNull
    private ArrayList<Shipment> shipments;

    @Nullable
    private String touchType;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static String EXTRA_SWIPE_MODE = "extra_swipe_mode";

    @NotNull
    private static String EXTRA_DRAG_MODE = "extra_drag_mode";

    public ShipmentPriorityAdapter(@Nullable String touchType, @NotNull ArrayList<Shipment> shipments, @NotNull OnStartDragListener mDragStartListener, @NotNull OnShipmentListChangeListener mShipmentListChangeListener) {
        Intrinsics.checkParameterIsNotNull(shipments, "shipments");
        Intrinsics.checkParameterIsNotNull(mDragStartListener, "mDragStartListener");
        Intrinsics.checkParameterIsNotNull(mShipmentListChangeListener, "mShipmentListChangeListener");
        this.touchType = touchType;
        this.shipments = shipments;
        this.mDragStartListener = mDragStartListener;
        this.mShipmentListChangeListener = mShipmentListChangeListener;
        this.mShipments = new ArrayList<>();
        this.mSourceShipments = new ArrayList<>();
        this.mShipments.addAll(this.shipments);
        this.mSourceShipments.addAll(this.shipments);
    }

    public /* synthetic */ ShipmentPriorityAdapter(String str, ArrayList arrayList, OnStartDragListener onStartDragListener, OnShipmentListChangeListener onShipmentListChangeListener, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? (String) null : str, arrayList, onStartDragListener, onShipmentListChangeListener);
    }

    @Nullable
    public final String getTouchType() {
        return this.touchType;
    }

    public final void setTouchType(@Nullable String str) {
        this.touchType = str;
    }

    @NotNull
    public final ArrayList<Shipment> getShipments() {
        return this.shipments;
    }

    public final void setShipments(@NotNull ArrayList<Shipment> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "<set-?>");
        this.shipments = arrayList;
    }

    /* JADX INFO: compiled from: ShipmentPriorityAdapter.kt */
    @Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\f"}, d2 = {"Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$Companion;", "", "()V", "EXTRA_DRAG_MODE", "", "getEXTRA_DRAG_MODE", "()Ljava/lang/String;", "setEXTRA_DRAG_MODE", "(Ljava/lang/String;)V", "EXTRA_SWIPE_MODE", "getEXTRA_SWIPE_MODE", "setEXTRA_SWIPE_MODE", "app_release"}, k = 1, mv = {1, 1, 11})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker $constructor_marker) {
            this();
        }

        @NotNull
        public final String getEXTRA_SWIPE_MODE() {
            return ShipmentPriorityAdapter.EXTRA_SWIPE_MODE;
        }

        public final void setEXTRA_SWIPE_MODE(@NotNull String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            ShipmentPriorityAdapter.EXTRA_SWIPE_MODE = str;
        }

        @NotNull
        public final String getEXTRA_DRAG_MODE() {
            return ShipmentPriorityAdapter.EXTRA_DRAG_MODE;
        }

        public final void setEXTRA_DRAG_MODE(@NotNull String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            ShipmentPriorityAdapter.EXTRA_DRAG_MODE = str;
        }
    }

    public final void addItem(@NotNull ArrayList<Shipment> newShipment) {
        Intrinsics.checkParameterIsNotNull(newShipment, "newShipment");
        int size = this.mShipments.size();
        this.mShipments.clear();
        notifyItemRangeRemoved(0, size);
        this.mShipments.addAll(newShipment);
        notifyItemRangeInserted(0, newShipment.size());
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mShipments.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    @SuppressLint({"ResourceAsColor"})
    public void onBindViewHolder(@NotNull final ShipmentPriorityViewholder holder, final int position) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        TextView mShipment_address = holder.getMShipment_address();
        Shipment shipment = this.mShipments.get(position);
        Intrinsics.checkExpressionValueIsNotNull(shipment, "mShipments[position]");
        mShipment_address.setText(shipment.getDeliveryAddress());
        TextView mShipment_time = holder.getMShipment_time();
        Shipment shipment2 = this.mShipments.get(position);
        Intrinsics.checkExpressionValueIsNotNull(shipment2, "mShipments[position]");
        mShipment_time.setText(shipment2.getDeliveryTime());
        String str = this.touchType;
        if (Intrinsics.areEqual(str, EXTRA_SWIPE_MODE)) {
            holder.getMShipment_itemNo().setTextColor(R.color.white);
            holder.getMTouchIcon().setImageResource(R.drawable.ic_swipe_black_24dp);
        } else if (Intrinsics.areEqual(str, EXTRA_DRAG_MODE)) {
            holder.getMShipment_itemNo().setText(Util.convertNumberStringToPersian(String.valueOf(position + 1)));
            holder.getMTouchIcon().setImageResource(R.drawable.ic_drag_black_24dp);
        }
        holder.getMTouchIcon().setOnTouchListener(new View.OnTouchListener() { // from class: com.digikala.dms.adapter.ShipmentPriorityAdapter.onBindViewHolder.1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View $noName_0, MotionEvent event) {
                Intrinsics.checkExpressionValueIsNotNull(event, "event");
                if (event.getAction() == 0) {
                    ShipmentPriorityAdapter.this.mDragStartListener.onStartDrag(holder, position);
                    return false;
                }
                return false;
            }
        });
    }

    @Override // com.digikala.dms.helper.touch.ItemTouchHelperAdapter
    public boolean onItemMove(int fromPosition, int toPosition, @Nullable RecyclerView.ViewHolder viewHolderSource, @Nullable RecyclerView.ViewHolder viewHolderTarget) {
        Collections.swap(this.mShipments, fromPosition, toPosition);
        notifyItemMoved(fromPosition, toPosition);
        if (viewHolderTarget instanceof ShipmentPriorityViewholder) {
            ShipmentPriorityViewholder $receiver = (ShipmentPriorityViewholder) viewHolderTarget;
            $receiver.getMShipment_itemNo().setText(Util.convertNumberStringToPersian(String.valueOf(fromPosition + 1)));
        }
        if (viewHolderSource instanceof ShipmentPriorityViewholder) {
            ShipmentPriorityViewholder $receiver2 = (ShipmentPriorityViewholder) viewHolderSource;
            $receiver2.getMShipment_itemNo().setText(String.valueOf(toPosition + 1));
        }
        this.mShipmentListChangeListener.onShipmentListChanged(this.mShipments);
        return true;
    }

    @Override // com.digikala.dms.helper.touch.ItemTouchHelperAdapter
    public void onItemDismiss(int position) {
        OnShipmentListChangeListener onShipmentListChangeListener = this.mShipmentListChangeListener;
        Shipment shipment = this.mShipments.get(position);
        Intrinsics.checkExpressionValueIsNotNull(shipment, "mShipments[position]");
        onShipmentListChangeListener.onShipmentItemSwiped(shipment);
        this.mShipments.remove(this.mShipments.get(position));
        notifyItemRemoved(position);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    @NotNull
    public ShipmentPriorityViewholder onCreateViewHolder(@NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.row_shipment_priority, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(view, "view");
        return new ShipmentPriorityViewholder(view);
    }

    /* JADX INFO: compiled from: ShipmentPriorityAdapter.kt */
    @Metadata(bv = {1, 0, 2}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0019H\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR\u001a\u0010\u000f\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000bR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, d2 = {"Lcom/digikala/dms/adapter/ShipmentPriorityAdapter$ShipmentPriorityViewholder;", "Landroid/support/v7/widget/RecyclerView$ViewHolder;", "Lcom/digikala/dms/helper/touch/ItemTouchHelperViewHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "mShipment_address", "Landroid/widget/TextView;", "getMShipment_address", "()Landroid/widget/TextView;", "setMShipment_address", "(Landroid/widget/TextView;)V", "mShipment_itemNo", "getMShipment_itemNo", "setMShipment_itemNo", "mShipment_time", "getMShipment_time", "setMShipment_time", "mTouchIcon", "Landroid/widget/ImageView;", "getMTouchIcon", "()Landroid/widget/ImageView;", "setMTouchIcon", "(Landroid/widget/ImageView;)V", "onItemClear", "", "onItemSelected", "app_release"}, k = 1, mv = {1, 1, 11})
    public static final class ShipmentPriorityViewholder extends RecyclerView.ViewHolder implements ItemTouchHelperViewHolder {

        @NotNull
        private TextView mShipment_address;

        @NotNull
        private TextView mShipment_itemNo;

        @NotNull
        private TextView mShipment_time;

        @NotNull
        private ImageView mTouchIcon;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ShipmentPriorityViewholder(@NotNull View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            ImageView imageView = (ImageView) itemView.findViewById(R.id.shipment_priority_row_touch_icon);
            Intrinsics.checkExpressionValueIsNotNull(imageView, "itemView.shipment_priority_row_touch_icon");
            this.mTouchIcon = imageView;
            XeiTextView xeiTextView = (XeiTextView) itemView.findViewById(R.id.shipment_priority_row_time);
            Intrinsics.checkExpressionValueIsNotNull(xeiTextView, "itemView.shipment_priority_row_time");
            this.mShipment_time = xeiTextView;
            XeiTextView xeiTextView2 = (XeiTextView) itemView.findViewById(R.id.shipment_priority_row_address);
            Intrinsics.checkExpressionValueIsNotNull(xeiTextView2, "itemView.shipment_priority_row_address");
            this.mShipment_address = xeiTextView2;
            XeiTextView xeiTextView3 = (XeiTextView) itemView.findViewById(R.id.rowRecyclerviewShipmentsPriority_xeiTextView_itemNo);
            Intrinsics.checkExpressionValueIsNotNull(xeiTextView3, "itemView.rowRecyclerview…iority_xeiTextView_itemNo");
            this.mShipment_itemNo = xeiTextView3;
        }

        @NotNull
        public final ImageView getMTouchIcon() {
            return this.mTouchIcon;
        }

        public final void setMTouchIcon(@NotNull ImageView imageView) {
            Intrinsics.checkParameterIsNotNull(imageView, "<set-?>");
            this.mTouchIcon = imageView;
        }

        @NotNull
        public final TextView getMShipment_time() {
            return this.mShipment_time;
        }

        public final void setMShipment_time(@NotNull TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.mShipment_time = textView;
        }

        @NotNull
        public final TextView getMShipment_address() {
            return this.mShipment_address;
        }

        public final void setMShipment_address(@NotNull TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.mShipment_address = textView;
        }

        @NotNull
        public final TextView getMShipment_itemNo() {
            return this.mShipment_itemNo;
        }

        public final void setMShipment_itemNo(@NotNull TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.mShipment_itemNo = textView;
        }

        @Override // com.digikala.dms.helper.touch.ItemTouchHelperViewHolder
        public void onItemSelected() {
            this.itemView.setBackgroundColor(Color.parseColor("#B2EBF2"));
        }

        @Override // com.digikala.dms.helper.touch.ItemTouchHelperViewHolder
        public void onItemClear() {
            this.itemView.setBackgroundColor(-1);
        }
    }
}
