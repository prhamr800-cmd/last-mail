package com.digikala.dms.adapter;

import android.content.Context;
import android.content.Intent;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.digikala.dms.R;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.util.Util;
import com.digikala.dms.view.activity.ShipmentActivity;
import com.digikala.dms.view.custom.XeiTextView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class ShipmentsListAdapter extends RecyclerView.Adapter<ShipmentViewHolder> {
    private Context mContext;
    private LayoutInflater mLayoutInflater;
    private ArrayList<Shipment> mShipments;

    public ShipmentsListAdapter(Context context, ArrayList<Shipment> shipments) {
        this.mContext = context;
        this.mLayoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.mShipments = shipments;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ShipmentViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = this.mLayoutInflater.inflate(R.layout.row_recyclerview_shipments_main, parent, false);
        return new ShipmentViewHolder(view);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(ShipmentViewHolder holder, final int position) {
        if (this.mShipments.get(position).getStatus() != 5) {
            if (this.mShipments.get(position).getStatus() != 7) {
                if (this.mShipments.get(position).getStatus() != 6) {
                    if (this.mShipments.get(position).getStatus() != 8) {
                        if (this.mShipments.get(position).getStatus() == 9) {
                            holder.itemView.setBackgroundColor(this.mContext.getResources().getColor(R.color.canceled));
                        }
                    } else {
                        holder.itemView.setBackgroundColor(this.mContext.getResources().getColor(R.color.miss_call));
                    }
                } else {
                    holder.itemView.setBackgroundColor(this.mContext.getResources().getColor(R.color.returned));
                }
            } else {
                holder.itemView.setBackgroundColor(this.mContext.getResources().getColor(R.color.partial_delivered));
            }
        } else {
            holder.itemView.setBackgroundColor(this.mContext.getResources().getColor(R.color.delivered));
        }
        holder.itemNoTextView.setText(Util.convertNumberStringToPersian(String.valueOf(position + 1)));
        holder.orderIdTextView.setText(Util.convertNumberStringToPersian(this.mShipments.get(position).getOrderId().trim()));
        holder.postalAddressTextView.setText(this.mShipments.get(position).getDeliveryAddress().trim());
        if (this.mShipments.get(position).isTupleIsSyncedWithServer()) {
            holder.shipment_sync_status_img.setVisibility(8);
        } else {
            holder.shipment_sync_status_img.setVisibility(0);
        }
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
            if (!this.mShipments.get(position).getDeliveryTime().isEmpty()) {
                deliveryTime = this.mShipments.get(position).getDeliveryTime().split("\\s+")[1];
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        holder.deliveryTimeTextView.setText(Util.persianizeDigitsInString(deliveryTime));
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.adapter.ShipmentsListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (Util.getCloseListSize(v.getContext()) != -1 && ((Shipment) ShipmentsListAdapter.this.mShipments.get(position)).getStatus() == 1 && Util.getCloseListSize(v.getContext()) != Integer.parseInt(((Shipment) ShipmentsListAdapter.this.mShipments.get(position)).getPriority())) {
                    ShipmentsListAdapter.this.showAlert(v.getContext(), Integer.parseInt(((Shipment) ShipmentsListAdapter.this.mShipments.get(position)).getPriority()));
                }
                Intent intent = new Intent(ShipmentsListAdapter.this.mContext, (Class<?>) ShipmentActivity.class);
                intent.putExtra(ShipmentActivity.ORDER_ID, ((Shipment) ShipmentsListAdapter.this.mShipments.get(position)).getOrderId());
                ShipmentsListAdapter.this.mContext.startActivity(intent);
            }
        });
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mShipments.size();
    }

    protected class ShipmentViewHolder extends RecyclerView.ViewHolder {
        private XeiTextView basketCountTextView;
        private XeiTextView deliveryTimeTextView;
        private XeiTextView itemNoTextView;
        private View itemView;
        private XeiTextView orderIdTextView;
        private XeiTextView postalAddressTextView;
        private ImageView shipment_sync_status_img;

        public ShipmentViewHolder(View itemView) {
            super(itemView);
            this.itemView = itemView;
            this.itemNoTextView = (XeiTextView) itemView.findViewById(R.id.rowRecyclerviewShipmentsMain_xeiTextView_itemNo);
            this.orderIdTextView = (XeiTextView) itemView.findViewById(R.id.rowRecyclerviewShipmentsMain_xeiTextView_orderId);
            this.basketCountTextView = (XeiTextView) itemView.findViewById(R.id.rowRecyclerviewShipmentsMain_xeiTextView_basketCount);
            this.postalAddressTextView = (XeiTextView) itemView.findViewById(R.id.rowRecyclerviewShipmentsMain_xeiTextView_postalAddress);
            this.deliveryTimeTextView = (XeiTextView) itemView.findViewById(R.id.rowRecyclerviewShipmentsMain_xeiTextView_deliveryTime);
            this.shipment_sync_status_img = (ImageView) itemView.findViewById(R.id.rowRecyclerviewShipmentsMain_shipment_sync_status_img);
        }
    }

    void showAlert(Context context, int priorityNumber) {
        LayoutInflater inflater = (LayoutInflater) context.getSystemService("layout_inflater");
        View toastRoot = inflater.inflate(R.layout.custome_toast_alert, (ViewGroup) null);
        TextView alert_txt = (TextView) toastRoot.findViewById(R.id.alert_text);
        alert_txt.setText(context.getResources().getString(R.string.priority_Alert, Integer.valueOf(priorityNumber)));
        Toast toast = new Toast(context);
        toast.setView(toastRoot);
        toast.setGravity(17, 0, 0);
        toast.setDuration(1);
        toast.show();
    }
}
