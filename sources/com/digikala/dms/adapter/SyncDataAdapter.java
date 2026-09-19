package com.digikala.dms.adapter;

import android.content.Context;
import android.graphics.Color;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.digikala.dms.R;
import com.digikala.dms.helper.touch.ItemTouchHelperViewHolder;
import com.digikala.dms.helper.touch.OnStartSyncListener;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.view.custom.XeiTextView;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: SyncDataAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0014\u0010\u000f\u001a\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\rJ\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0013H\u0016J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0013H\u0016J\u000e\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001dJ\u0016\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u000eR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/digikala/dms/adapter/SyncDataAdapter;", "Landroid/support/v7/widget/RecyclerView$Adapter;", "Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;", "context", "Landroid/content/Context;", "syncListener", "Lcom/digikala/dms/helper/touch/OnStartSyncListener;", "(Landroid/content/Context;Lcom/digikala/dms/helper/touch/OnStartSyncListener;)V", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "mShipments", "Ljava/util/ArrayList;", "Lcom/digikala/dms/model/domain/Shipment;", "addItem", "", "newShipment", "getItemCount", "", "onBindViewHolder", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "removeById", "shipmentId", "", "updateById", "shipment", "ShipmentPriorityViewHolder", "app_release"}, k = 1, mv = {1, 1, 11})
public final class SyncDataAdapter extends RecyclerView.Adapter<ShipmentPriorityViewHolder> {

    @NotNull
    private Context context;
    private ArrayList<Shipment> mShipments;
    private OnStartSyncListener syncListener;

    public SyncDataAdapter(@NotNull Context context, @NotNull OnStartSyncListener syncListener) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(syncListener, "syncListener");
        this.context = context;
        this.syncListener = syncListener;
        this.mShipments = new ArrayList<>();
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "<set-?>");
        this.context = context;
    }

    public final void addItem(@NotNull ArrayList<Shipment> newShipment) {
        Intrinsics.checkParameterIsNotNull(newShipment, "newShipment");
        int size = this.mShipments.size();
        this.mShipments.clear();
        notifyItemRangeRemoved(0, size);
        this.mShipments.addAll(newShipment);
        notifyItemRangeInserted(0, newShipment.size());
    }

    public final void removeById(@NotNull String shipmentId) {
        Intrinsics.checkParameterIsNotNull(shipmentId, "shipmentId");
        int indexOfArray = -1;
        int size = this.mShipments.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            Shipment shipment = this.mShipments.get(i);
            Intrinsics.checkExpressionValueIsNotNull(shipment, "mShipments[i]");
            if (!Intrinsics.areEqual(shipment.getOrderId(), shipmentId)) {
                i++;
            } else {
                indexOfArray = i;
                Log.i("SyncDataActivityLogg", "shipment size is " + this.mShipments.size() + " and index in delete is " + i + " in adapter");
                break;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("shipment deleted is ");
        Shipment shipment2 = this.mShipments.get(indexOfArray);
        Intrinsics.checkExpressionValueIsNotNull(shipment2, "mShipments[indexOfArray]");
        sb.append(shipment2.getOrderId());
        sb.append(' ');
        Log.i("SyncDataActivityLogg", sb.toString());
        if (indexOfArray != -1) {
            this.mShipments.remove(indexOfArray);
            notifyItemRemoved(indexOfArray);
            notifyItemRangeChanged(indexOfArray, this.mShipments.size());
        }
    }

    public final void updateById(@NotNull String shipmentId, @NotNull Shipment shipment) {
        Intrinsics.checkParameterIsNotNull(shipmentId, "shipmentId");
        Intrinsics.checkParameterIsNotNull(shipment, "shipment");
        int indexOfArray = -1;
        int size = this.mShipments.size();
        for (int i = 0; i < size; i++) {
            Shipment shipment2 = this.mShipments.get(i);
            Intrinsics.checkExpressionValueIsNotNull(shipment2, "mShipments[i]");
            if (Intrinsics.areEqual(shipment2.getOrderId(), shipmentId)) {
                indexOfArray = i;
            }
        }
        if (indexOfArray != -1) {
            this.mShipments.remove(indexOfArray);
            notifyItemRemoved(indexOfArray);
            this.mShipments.add(indexOfArray, shipment);
            notifyItemInserted(indexOfArray);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.mShipments.size() == 0) {
            Toast.makeText(this.context, "run makeFinalized() getItemCount", 1).show();
            this.syncListener.finalizeSync();
        }
        return this.mShipments.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull ShipmentPriorityViewHolder holder, final int position) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        TextView mShipment_address = holder.getMShipment_address();
        Shipment shipment = this.mShipments.get(position);
        Intrinsics.checkExpressionValueIsNotNull(shipment, "mShipments[position]");
        mShipment_address.setText(shipment.getDeliveryAddress());
        TextView mShipment_time = holder.getMShipment_time();
        Shipment shipment2 = this.mShipments.get(position);
        Intrinsics.checkExpressionValueIsNotNull(shipment2, "mShipments[position]");
        mShipment_time.setText(shipment2.getInvoiceId());
        holder.getShipment_sync_retry_btn().setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.adapter.SyncDataAdapter.onBindViewHolder.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View it) {
                OnStartSyncListener onStartSyncListener = SyncDataAdapter.this.syncListener;
                Object obj = SyncDataAdapter.this.mShipments.get(position);
                Intrinsics.checkExpressionValueIsNotNull(obj, "mShipments[position]");
                onStartSyncListener.retrySync((Shipment) obj);
            }
        });
        this.mShipments.size();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    @NotNull
    public ShipmentPriorityViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.sync_item_row, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(view, "view");
        return new ShipmentPriorityViewHolder(view);
    }

    /* JADX INFO: compiled from: SyncDataAdapter.kt */
    @Metadata(bv = {1, 0, 2}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\u001fH\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR\u001a\u0010\u000f\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000bR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006!"}, d2 = {"Lcom/digikala/dms/adapter/SyncDataAdapter$ShipmentPriorityViewHolder;", "Landroid/support/v7/widget/RecyclerView$ViewHolder;", "Lcom/digikala/dms/helper/touch/ItemTouchHelperViewHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "mShipment_address", "Landroid/widget/TextView;", "getMShipment_address", "()Landroid/widget/TextView;", "setMShipment_address", "(Landroid/widget/TextView;)V", "mShipment_itemNo", "getMShipment_itemNo", "setMShipment_itemNo", "mShipment_time", "getMShipment_time", "setMShipment_time", "mSyncAdapter_item_pb", "Landroid/widget/ProgressBar;", "getMSyncAdapter_item_pb", "()Landroid/widget/ProgressBar;", "setMSyncAdapter_item_pb", "(Landroid/widget/ProgressBar;)V", "shipment_sync_retry_btn", "Landroid/widget/ImageView;", "getShipment_sync_retry_btn", "()Landroid/widget/ImageView;", "setShipment_sync_retry_btn", "(Landroid/widget/ImageView;)V", "onItemClear", "", "onItemSelected", "app_release"}, k = 1, mv = {1, 1, 11})
    public static final class ShipmentPriorityViewHolder extends RecyclerView.ViewHolder implements ItemTouchHelperViewHolder {

        @NotNull
        private TextView mShipment_address;

        @NotNull
        private TextView mShipment_itemNo;

        @NotNull
        private TextView mShipment_time;

        @NotNull
        private ProgressBar mSyncAdapter_item_pb;

        @NotNull
        private ImageView shipment_sync_retry_btn;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ShipmentPriorityViewHolder(@NotNull View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            XeiTextView xeiTextView = (XeiTextView) itemView.findViewById(R.id.shipment_priority_row_time);
            Intrinsics.checkExpressionValueIsNotNull(xeiTextView, "itemView.shipment_priority_row_time");
            this.mShipment_time = xeiTextView;
            XeiTextView xeiTextView2 = (XeiTextView) itemView.findViewById(R.id.shipment_priority_row_address);
            Intrinsics.checkExpressionValueIsNotNull(xeiTextView2, "itemView.shipment_priority_row_address");
            this.mShipment_address = xeiTextView2;
            XeiTextView xeiTextView3 = (XeiTextView) itemView.findViewById(R.id.rowRecyclerviewShipmentsPriority_xeiTextView_itemNo);
            Intrinsics.checkExpressionValueIsNotNull(xeiTextView3, "itemView.rowRecyclerview…iority_xeiTextView_itemNo");
            this.mShipment_itemNo = xeiTextView3;
            ProgressBar progressBar = (ProgressBar) itemView.findViewById(R.id.syncAdapter_item_pb);
            Intrinsics.checkExpressionValueIsNotNull(progressBar, "itemView.syncAdapter_item_pb");
            this.mSyncAdapter_item_pb = progressBar;
            ImageView imageView = (ImageView) itemView.findViewById(R.id.shipment_sync_retry_btn);
            Intrinsics.checkExpressionValueIsNotNull(imageView, "itemView.shipment_sync_retry_btn");
            this.shipment_sync_retry_btn = imageView;
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

        @NotNull
        public final ProgressBar getMSyncAdapter_item_pb() {
            return this.mSyncAdapter_item_pb;
        }

        public final void setMSyncAdapter_item_pb(@NotNull ProgressBar progressBar) {
            Intrinsics.checkParameterIsNotNull(progressBar, "<set-?>");
            this.mSyncAdapter_item_pb = progressBar;
        }

        @NotNull
        public final ImageView getShipment_sync_retry_btn() {
            return this.shipment_sync_retry_btn;
        }

        public final void setShipment_sync_retry_btn(@NotNull ImageView imageView) {
            Intrinsics.checkParameterIsNotNull(imageView, "<set-?>");
            this.shipment_sync_retry_btn = imageView;
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
