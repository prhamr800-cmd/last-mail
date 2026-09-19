package com.digikala.dms.adapter;

import android.content.Context;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.FragmentManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.digikala.dms.R;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.util.Util;
import com.digikala.dms.view.custom.XeiTextView;
import com.digikala.dms.view.fragment.AssignedShipmentsFragment;
import com.digikala.dms.view.fragment.dialog.AssignedShipmentDetailsModalBottomSheet;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class AssignedBatchAdapter extends RecyclerView.Adapter<ShipmentViewHolder> {
    private FloatingActionButton mConfirmShipmentsFAB;
    private Context mContext;
    private FragmentManager mFragmentManager;
    private ArrayList<Boolean> mIsExpandedBottomSheets;
    private ArrayList<Boolean> mIsSelectedShipments;
    private ArrayList<Boolean> mIsSettledBottomSheets;
    private LayoutInflater mLayoutInflater;
    private int mSelectedShipmentsCount;
    private ArrayList<Shipment> mShipments;

    public AssignedBatchAdapter(Context context, ArrayList<Shipment> shipments, ArrayList<Boolean> isSelectedShipments, ArrayList<Boolean> settledBottomSheets, ArrayList<Boolean> expandedBotomSheets, FloatingActionButton confirmShipmentsFAB, FragmentManager fragmentManager) {
        this.mContext = context;
        this.mLayoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.mShipments = shipments;
        this.mIsSelectedShipments = isSelectedShipments;
        this.mIsSettledBottomSheets = settledBottomSheets;
        this.mIsExpandedBottomSheets = expandedBotomSheets;
        this.mConfirmShipmentsFAB = confirmShipmentsFAB;
        this.mConfirmShipmentsFAB.hide();
        this.mFragmentManager = fragmentManager;
    }

    public void selectAllShipment() {
        if (this.mShipments.size() > 0) {
            for (int i = 0; i < this.mShipments.size(); i++) {
                this.mIsSelectedShipments.set(i, true);
            }
            int i2 = getItemCount();
            this.mSelectedShipmentsCount = i2;
            this.mConfirmShipmentsFAB.show();
            notifyItemRangeChanged(0, this.mShipments.size());
        }
    }

    public void deSelectAllShipment() {
        if (this.mShipments.size() > 0) {
            for (int i = 0; i < this.mShipments.size(); i++) {
                this.mIsSelectedShipments.set(i, false);
            }
            this.mSelectedShipmentsCount = 0;
            this.mConfirmShipmentsFAB.hide();
            notifyItemRangeChanged(0, this.mShipments.size());
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ShipmentViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = this.mLayoutInflater.inflate(R.layout.row_recyclerview_assignedshipments, parent, false);
        return new ShipmentViewHolder(view);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(ShipmentViewHolder holder, final int position) {
        holder.orderIdTextView.setText(Util.convertNumberStringToPersian(this.mShipments.get(position).getOrderId().trim()));
        holder.postalAddressTextView.setText(this.mShipments.get(position).getDeliveryAddress().trim());
        if (this.mShipments.get(position).getBasketItems().size() > 0 && this.mShipments.get(position).getBasketItems().get(0).getBasketId() != null && !this.mShipments.get(position).getBasketItems().get(0).getBasketId().trim().isEmpty()) {
            if (this.mShipments.get(position).getFmcg().booleanValue()) {
                holder.basketCountTextView.setText(Integer.toString(this.mShipments.get(position).getBasketCount()) + " سبد");
            } else {
                holder.basketCountTextView.setText(Integer.toString(this.mShipments.get(position).getBasketCount()) + " فقره");
            }
            holder.basketCountTextView.setVisibility(0);
        } else {
            holder.basketCountTextView.setVisibility(8);
        }
        String deliveryTime = "";
        try {
            deliveryTime = this.mShipments.get(position).getDeliveryTime().split("\\s+")[1];
        } catch (Exception e) {
            e.printStackTrace();
        }
        holder.deliveryTimeTextView.setText(Util.persianizeDigitsInString(deliveryTime));
        if (this.mIsSelectedShipments.size() <= 0 || !this.mIsSelectedShipments.get(position).booleanValue()) {
            holder.checkBox.setImageResource(R.drawable.ic_unchecked);
        } else {
            holder.checkBox.setImageResource(R.drawable.ic_checked);
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) holder.itemView.getLayoutParams();
        int bottomMargin = 0;
        if (position == getItemCount() - 1) {
            bottomMargin = this.mContext.getResources().getDimensionPixelOffset(R.dimen.assignedShipments_lastRow_shipment_marginBottom);
        }
        layoutParams.setMargins(0, 0, 0, bottomMargin);
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.adapter.AssignedBatchAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                AssignedBatchAdapter.this.toggleRowSelection(position);
                if (AssignedBatchAdapter.this.mSelectedShipmentsCount == AssignedBatchAdapter.this.getItemCount()) {
                    AssignedBatchAdapter.this.mConfirmShipmentsFAB.show();
                } else {
                    AssignedBatchAdapter.this.mConfirmShipmentsFAB.hide();
                }
            }
        });
        holder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.digikala.dms.adapter.AssignedBatchAdapter.2
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View v) {
                AssignedShipmentDetailsModalBottomSheet bottomSheetDialogFragment = new AssignedShipmentDetailsModalBottomSheet();
                bottomSheetDialogFragment.setShipment((Shipment) AssignedBatchAdapter.this.mShipments.get(position));
                bottomSheetDialogFragment.setBottomSheetIsExpanded((Boolean) AssignedBatchAdapter.this.mIsExpandedBottomSheets.get(position));
                bottomSheetDialogFragment.show(AssignedBatchAdapter.this.mFragmentManager, bottomSheetDialogFragment.getTag());
                AssignedBatchAdapter.this.mIsSettledBottomSheets.set(position, true);
                return false;
            }
        });
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mShipments.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleRowSelection(int position) {
        if (this.mIsSelectedShipments.get(position).booleanValue()) {
            this.mSelectedShipmentsCount--;
        } else {
            this.mSelectedShipmentsCount++;
        }
        this.mIsSelectedShipments.set(position, Boolean.valueOf(!this.mIsSelectedShipments.get(position).booleanValue()));
        notifyDataSetChanged();
    }

    public void scanItem(String orderId) {
        int position = -1;
        int i = 0;
        while (true) {
            if (i >= this.mShipments.size()) {
                break;
            }
            if (!this.mShipments.get(i).getOrderId().equals(orderId)) {
                i++;
            } else {
                position = i;
                break;
            }
        }
        if (position != -1) {
            toggleRowSelection(position);
            if (this.mSelectedShipmentsCount == getItemCount()) {
                this.mConfirmShipmentsFAB.show();
            } else {
                this.mConfirmShipmentsFAB.hide();
            }
        }
        AssignedShipmentsFragment.resetScanEditText();
    }

    protected class ShipmentViewHolder extends RecyclerView.ViewHolder {
        private TextView basketCountTextView;
        private ImageView checkBox;
        private TextView deliveryTimeTextView;
        private View itemView;
        private TextView orderIdTextView;
        private TextView postalAddressTextView;

        public ShipmentViewHolder(View itemView) {
            super(itemView);
            this.itemView = itemView;
            this.checkBox = (ImageView) itemView.findViewById(R.id.rowRecyclerviewAssignedShipments_imageView_checkBox);
            this.orderIdTextView = (XeiTextView) itemView.findViewById(R.id.rowRecyclerviewAssignedShipments_xeiTextView_orderId);
            this.postalAddressTextView = (XeiTextView) itemView.findViewById(R.id.rowRecyclerviewAssignedShipments_xeiTextView_postalAddress);
            this.deliveryTimeTextView = (XeiTextView) itemView.findViewById(R.id.rowRecyclerviewAssignedShipments_xeiTextView_deliveryTime);
            this.basketCountTextView = (XeiTextView) itemView.findViewById(R.id.rowRecyclerviewAssignedShipments_xeiTextView_basketCount);
        }
    }
}
