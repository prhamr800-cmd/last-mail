package com.digikala.dms.adapter;

import android.app.Activity;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.digikala.dms.R;
import com.digikala.dms.helper.touch.PartialDeliverItemClickListener;
import com.digikala.dms.model.design.NonRealmSerialItems;
import com.digikala.dms.model.domain.BasketItems;
import com.digikala.dms.model.domain.BatchItem;
import com.digikala.dms.model.domain.RejectReason;
import com.digikala.dms.model.domain.ShipmentItem;
import com.digikala.dms.util.Constant;
import com.digikala.dms.util.Util;
import com.digikala.dms.view.fragment.PartialDialogFragment;
import io.realm.Realm;
import io.realm.RealmList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PartialDeliverAdapter extends RecyclerView.Adapter<ViewHolder> {
    private boolean flag;
    private FragmentManager fm;
    private Activity mActivity;
    private String mBasketItemId;
    private List<BasketItems> mBasketItems;
    private int mBatchItemCount;
    private String mOrderItemId;
    public ArrayList<String> mRejectReasonsTemp;
    public int[] mReturnListCount;
    private List<NonRealmSerialItems> mReturnedProducts;
    private String mSerialItemId;
    private PartialDeliverItemClickListener partialDeliverItemClick;
    private List<RejectReason> rejectReasonsList;
    private List<ShipmentItem> mShipmentItems = new ArrayList();
    private boolean mFoundItem = false;
    private int mShipmentItemIndex = -1;
    public ArrayList<Boolean> mCheckedList = new ArrayList<>();

    public PartialDeliverAdapter(FragmentManager fm, Activity activity, List<BasketItems> basketItems, List<NonRealmSerialItems> returnedProducts, List<RejectReason> rejectReasons, PartialDeliverItemClickListener deliverItemClick) {
        this.fm = fm;
        this.mActivity = activity;
        this.mBasketItems = basketItems;
        this.rejectReasonsList = rejectReasons;
        this.mReturnedProducts = returnedProducts;
        Realm realm = Realm.getDefaultInstance();
        for (int i = 0; i < this.mBasketItems.size(); i++) {
            RealmList<ShipmentItem> shipmentItems = this.mBasketItems.get(i).getOrderItems();
            this.mCheckedList.addAll(Collections.nCopies(shipmentItems.size(), true));
            for (int j = 0; j < basketItems.get(i).getOrderItems().size(); j++) {
                this.mShipmentItems.add(basketItems.get(i).getOrderItems().get(j));
                final String basketId = this.mBasketItems.get(i).getBasketId();
                realm.executeTransaction(new Realm.Transaction() { // from class: com.digikala.dms.adapter.PartialDeliverAdapter.1
                    @Override // io.realm.Realm.Transaction
                    public void execute(Realm realm2) {
                        ((ShipmentItem) PartialDeliverAdapter.this.mShipmentItems.get(PartialDeliverAdapter.this.mShipmentItems.size() - 1)).setBasketId(basketId);
                    }
                });
            }
        }
        realm.close();
        this.mRejectReasonsTemp = new ArrayList<>();
        this.partialDeliverItemClick = deliverItemClick;
        this.mReturnListCount = new int[this.mShipmentItems.size()];
        for (int i2 = 0; i2 < this.mShipmentItems.size(); i2++) {
            this.mRejectReasonsTemp.add("");
            this.mReturnListCount[i2] = 0;
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.row_partial_deliver, parent, false);
        return new ViewHolder(view);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, final int position) {
        ShipmentItem shipmentItem = this.mShipmentItems.get(position);
        if (shipmentItem.getSerialItemList().size() == 0) {
            holder.itemLayout.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.adapter.PartialDeliverAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    PartialDeliverAdapter.this.partialDeliverItemClick.onItemClickBasket(((ShipmentItem) PartialDeliverAdapter.this.mShipmentItems.get(position)).getBatchItems(), Constant.INSTANCE.getEXTRA_SCAN_FOR_INSERT(), ((ShipmentItem) PartialDeliverAdapter.this.mShipmentItems.get(position)).getOrderItemId(), ((ShipmentItem) PartialDeliverAdapter.this.mShipmentItems.get(position)).getBasketId(), position);
                }
            });
        } else {
            holder.itemLayout.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.adapter.PartialDeliverAdapter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    PartialDeliverAdapter.this.partialDeliverItemClick.onItemClick(((ShipmentItem) PartialDeliverAdapter.this.mShipmentItems.get(position)).getSerialItemList(), position);
                }
            });
        }
        holder.itemTitleTextView.setText(shipmentItem.getDescription());
        holder.itemBrandTextView.setText(shipmentItem.getBrandName());
        String payableText = Util.formatPrice(String.valueOf(shipmentItem.getAmountPerQuantity())) + " ریال";
        holder.itemAmountTextView.setText(payableText);
        try {
            holder.itemCountTextView.setText(Util.convertNumberStringToPersian(String.valueOf(shipmentItem.getTotalCount())));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) holder.itemView.getLayoutParams();
        int bottomMargin = 0;
        if (position == getItemCount() - 1) {
            bottomMargin = this.mActivity.getResources().getDimensionPixelOffset(R.dimen.partial_deliver_lastRow_shipment_marginBottom);
        }
        layoutParams.setMargins(0, 0, 0, bottomMargin);
        if (this.mCheckedList.get(position).booleanValue()) {
            holder.itemStateImageView.setImageResource(R.drawable.ic_checked);
            holder.itemLayout.setBackgroundColor(ContextCompat.getColor(this.mActivity, R.color.background_white));
            holder.itemCountLayout.setBackgroundColor(ContextCompat.getColor(this.mActivity, R.color.grey_100));
            holder.separator.setVisibility(8);
            holder.itemRejectReasonTextView.setVisibility(8);
            holder.itemReturnCountTextView.setText("0");
            holder.itemRejectReasonTextView.setText("");
            return;
        }
        holder.itemStateImageView.setImageResource(R.drawable.ic_close);
        holder.itemLayout.setBackgroundColor(ContextCompat.getColor(this.mActivity, R.color.partial_returned_item));
        holder.itemCountLayout.setBackgroundColor(ContextCompat.getColor(this.mActivity, R.color.partial_returned_item_count));
        holder.separator.setVisibility(0);
        holder.itemRejectReasonTextView.setVisibility(0);
        holder.itemRejectReasonTextView.setText(this.mRejectReasonsTemp.get(holder.getAdapterPosition()));
        holder.itemTitleTextView.setText(shipmentItem.getDescription());
        holder.itemBrandTextView.setText(shipmentItem.getBrandName());
        try {
            holder.itemReturnCountTextView.setText(Util.convertNumberStringToPersian(String.valueOf(this.mReturnListCount[holder.getAdapterPosition()])));
        } catch (NumberFormatException e2) {
            e2.printStackTrace();
        }
        Log.i("PartialDeliver  num2", this.mRejectReasonsTemp.get(holder.getAdapterPosition()));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mShipmentItems.size();
    }

    public boolean scanSerialId(String serialId) {
        this.flag = false;
        final NonRealmSerialItems returnedProduct = new NonRealmSerialItems();
        for (int i = 0; i < this.mShipmentItems.size() && !this.mFoundItem && this.mShipmentItems.get(i).getSerialItemList().size() == this.mShipmentItems.get(i).getTotalCount(); i++) {
            int j = 0;
            while (true) {
                if (j >= this.mShipmentItems.get(i).getTotalCount()) {
                    break;
                }
                if (!serialId.equals(this.mShipmentItems.get(i).getSerialItemList().get(j))) {
                    j++;
                } else {
                    this.mSerialItemId = this.mShipmentItems.get(i).getSerialItemList().get(j);
                    if (!existSerialItem(this.mSerialItemId)) {
                        int[] iArr = this.mReturnListCount;
                        iArr[i] = iArr[i] + 1;
                    }
                    this.mFoundItem = true;
                    this.flag = true;
                    this.mShipmentItemIndex = i;
                }
            }
        }
        if (this.mFoundItem && this.mShipmentItemIndex != -1) {
            this.mCheckedList.set(this.mShipmentItemIndex, false);
            final PartialDialogFragment fragment = PartialDialogFragment.newInstance(1);
            fragment.show(this.fm, (String) null);
            PartialDialogFragment.setOnItemChangeListener(new PartialDialogFragment.OnItemChangeListener() { // from class: com.digikala.dms.adapter.PartialDeliverAdapter.4
                @Override // com.digikala.dms.view.fragment.PartialDialogFragment.OnItemChangeListener
                public void onChange(int reasonPosition, int countPicked) {
                    returnedProduct.setReasonId(((RejectReason) PartialDeliverAdapter.this.rejectReasonsList.get(reasonPosition)).getId());
                    returnedProduct.setSerialItem(PartialDeliverAdapter.this.mSerialItemId);
                    if (!PartialDeliverAdapter.this.existReturnItem(returnedProduct)) {
                        Toast.makeText(PartialDeliverAdapter.this.mActivity, "کالا به لیست مرجوعی ها اضافه شد.", 1).show();
                        PartialDeliverAdapter.this.mReturnedProducts.add(returnedProduct);
                    } else {
                        Toast.makeText(PartialDeliverAdapter.this.mActivity, "این کالا قبلا اضافه شده است", 1).show();
                    }
                    fragment.dismiss();
                }
            });
            notifyItemChanged(this.mShipmentItemIndex);
        } else {
            Toast.makeText(this.mActivity, "بارکد کالای اسکن شده موجود نمی باشد.", 1).show();
            this.flag = false;
        }
        this.mFoundItem = false;
        this.mShipmentItemIndex = -1;
        returnedProduct.setReasonId("");
        returnedProduct.setSerialItem(this.mSerialItemId);
        if (existReturnItem(returnedProduct)) {
            return false;
        }
        return this.flag;
    }

    public boolean scanBatchId(String serialId, String orderItemId, String basketId) {
        this.flag = false;
        for (int i = 0; i < this.mShipmentItems.size(); i++) {
            if (orderItemId.equals(this.mShipmentItems.get(i).getOrderItemId())) {
                if (this.mFoundItem) {
                    break;
                }
                int totalCount = 0;
                for (BatchItem batchItem : this.mShipmentItems.get(i).getBatchItems()) {
                    totalCount += Integer.parseInt(batchItem.getCount());
                }
                if (totalCount != this.mShipmentItems.get(i).getTotalCount()) {
                    break;
                }
                int j = 0;
                while (true) {
                    if (j >= this.mShipmentItems.get(i).getBatchItems().size()) {
                        break;
                    }
                    if (!basketId.equals(this.mShipmentItems.get(i).getBasketId()) || !orderItemId.equals(this.mShipmentItems.get(i).getOrderItemId()) || !serialId.equals(this.mShipmentItems.get(i).getBatchItems().get(j).getItemBatchId())) {
                        j++;
                    } else {
                        this.mSerialItemId = this.mShipmentItems.get(i).getBatchItems().get(j).getItemBatchId();
                        this.mOrderItemId = this.mShipmentItems.get(i).getOrderItemId();
                        this.mBasketItemId = this.mShipmentItems.get(i).getBasketId();
                        this.mBatchItemCount = Integer.parseInt(this.mShipmentItems.get(i).getBatchItems().get(j).getCount());
                        if (!existBatchItem(this.mSerialItemId, this.mBatchItemCount, this.mOrderItemId, this.mBasketItemId)) {
                            int[] iArr = this.mReturnListCount;
                            iArr[i] = iArr[i] + 1;
                        }
                        this.mFoundItem = true;
                        this.flag = true;
                        this.mShipmentItemIndex = i;
                    }
                }
            }
        }
        if (this.mFoundItem && this.mShipmentItemIndex != -1) {
            this.mCheckedList.set(this.mShipmentItemIndex, false);
            final PartialDialogFragment fragment = PartialDialogFragment.newInstance(1);
            fragment.show(this.fm, (String) null);
            PartialDialogFragment.setOnItemChangeListener(new PartialDialogFragment.OnItemChangeListener() { // from class: com.digikala.dms.adapter.PartialDeliverAdapter.5
                @Override // com.digikala.dms.view.fragment.PartialDialogFragment.OnItemChangeListener
                public void onChange(int reasonPosition, int countPicked) {
                    if (!PartialDeliverAdapter.this.existBatchItem(PartialDeliverAdapter.this.mSerialItemId, PartialDeliverAdapter.this.mBatchItemCount, PartialDeliverAdapter.this.mOrderItemId, PartialDeliverAdapter.this.mBasketItemId)) {
                        PartialDeliverAdapter.this.addBatchItem(PartialDeliverAdapter.this.mSerialItemId, PartialDeliverAdapter.this.mOrderItemId, ((RejectReason) PartialDeliverAdapter.this.rejectReasonsList.get(reasonPosition)).getId(), PartialDeliverAdapter.this.mBasketItemId);
                        Toast.makeText(PartialDeliverAdapter.this.mActivity, "کالا به لیست مرجوعی ها اضافه شد.", 1).show();
                    } else {
                        Toast.makeText(PartialDeliverAdapter.this.mActivity, "این کالا قبلا اضافه شده است", 1).show();
                    }
                    fragment.dismiss();
                }
            });
            notifyItemChanged(this.mShipmentItemIndex);
        } else {
            Toast.makeText(this.mActivity, "این کالا موجود نمیباشد", 1).show();
            this.flag = false;
        }
        this.mFoundItem = false;
        this.mShipmentItemIndex = -1;
        if (existBatchItem(this.mSerialItemId, this.mBatchItemCount, this.mOrderItemId, this.mBasketItemId)) {
            return false;
        }
        return this.flag;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean existReturnItem(NonRealmSerialItems nonRealmSerialItem) {
        for (NonRealmSerialItems item : this.mReturnedProducts) {
            if (item.getSerialItem().equals(nonRealmSerialItem.getSerialItem())) {
                return true;
            }
        }
        return false;
    }

    private boolean existSerialItem(String mSerialItemId) {
        for (NonRealmSerialItems item : this.mReturnedProducts) {
            if (item.getSerialItem().equals(mSerialItemId)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addBatchItem(String mSerialItemId, String orderItemId, String reasonId, String basketId) {
        for (NonRealmSerialItems item : this.mReturnedProducts) {
            if (item.getBasketId().equals(basketId) && item.getOrderItemId().equals(orderItemId) && item.getItemBatchId().equals(mSerialItemId) && item.getReasonId().equals(reasonId)) {
                item.setCount(item.getCount() + 1);
                return;
            }
        }
        this.mReturnedProducts.add(new NonRealmSerialItems("", reasonId, mSerialItemId, orderItemId, 1, basketId));
    }

    private void removeBatchItem(String mSerialItemId, String orderItemId, String basketId) {
        Iterator<NonRealmSerialItems> it = this.mReturnedProducts.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            NonRealmSerialItems item = it.next();
            if (item.getBasketId().equals(basketId) && item.getOrderItemId().equals(orderItemId) && item.getItemBatchId().equals(mSerialItemId)) {
                if (item.getCount() == 1) {
                    this.mReturnedProducts.remove(item);
                } else {
                    item.setCount(item.getCount() - 1);
                }
            }
        }
        System.out.println(this.mReturnedProducts);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean existBatchItem(String mSerialItemId, int count, String orderItemId, String basketId) {
        int totalCount = 0;
        for (NonRealmSerialItems item : this.mReturnedProducts) {
            if (item.getBasketId().equals(basketId) && item.getOrderItemId().equals(orderItemId) && item.getItemBatchId().equals(mSerialItemId)) {
                totalCount += item.getCount();
            }
        }
        if (totalCount == count) {
            return true;
        }
        return false;
    }

    public boolean removeItemFromReturnItem(String mSerialItemId) {
        if (existSerialItem(mSerialItemId)) {
            for (NonRealmSerialItems item : this.mReturnedProducts) {
                if (item.getSerialItem().equals(mSerialItemId)) {
                    this.mReturnedProducts.remove(item);
                    int mReturnItemIndex = -1;
                    int mReturnItemIndex2 = 0;
                    for (int i = 0; i < this.mShipmentItems.size() && mReturnItemIndex2 == 0 && this.mShipmentItems.get(i).getSerialItemList().size() == this.mShipmentItems.get(i).getTotalCount(); i++) {
                        int j = 0;
                        while (true) {
                            if (j >= this.mShipmentItems.get(i).getTotalCount()) {
                                break;
                            }
                            if (!mSerialItemId.equals(this.mShipmentItems.get(i).getSerialItemList().get(j))) {
                                j++;
                            } else {
                                mReturnItemIndex2 = 1;
                                mReturnItemIndex = i;
                                int[] iArr = this.mReturnListCount;
                                iArr[i] = iArr[i] - 1;
                                if (this.mReturnListCount[i] <= 0) {
                                    this.mCheckedList.set(i, true);
                                }
                            }
                        }
                    }
                    notifyItemChanged(mReturnItemIndex);
                    return true;
                }
            }
        } else {
            Toast.makeText(this.mActivity, "چنین کالایی در لیست مرجوعی وجود ندارد", 1).show();
        }
        return false;
    }

    public boolean removeBatchItemFromReturnItem(String mSerialItemId, String orderItemId, String basketId) {
        for (NonRealmSerialItems item : this.mReturnedProducts) {
            if (item.getBasketId().equals(basketId) && item.getOrderItemId().equals(orderItemId) && item.getItemBatchId().equals(mSerialItemId)) {
                removeBatchItem(mSerialItemId, orderItemId, basketId);
                int mReturnItemIndex = -1;
                int mReturnItemIndex2 = 0;
                for (int i = 0; i < this.mShipmentItems.size() && mReturnItemIndex2 == 0; i++) {
                    int totalCount = 0;
                    for (BatchItem batchItem : this.mShipmentItems.get(i).getBatchItems()) {
                        totalCount += Integer.parseInt(batchItem.getCount());
                    }
                    if (totalCount != this.mShipmentItems.get(i).getTotalCount()) {
                        break;
                    }
                    int j = 0;
                    while (true) {
                        if (j >= this.mShipmentItems.get(i).getTotalCount()) {
                            break;
                        }
                        if (!basketId.equals(this.mShipmentItems.get(i).getBasketId()) || !orderItemId.equals(this.mShipmentItems.get(i).getOrderItemId()) || !mSerialItemId.equals(this.mShipmentItems.get(i).getBatchItems().get(j).getItemBatchId())) {
                            j++;
                        } else {
                            mReturnItemIndex2 = 1;
                            mReturnItemIndex = i;
                            int[] iArr = this.mReturnListCount;
                            iArr[i] = iArr[i] - 1;
                            if (this.mReturnListCount[i] <= 0) {
                                this.mCheckedList.set(i, true);
                            }
                        }
                    }
                }
                notifyItemChanged(mReturnItemIndex);
                return true;
            }
        }
        Toast.makeText(this.mActivity, "چنین کالایی در لیست مرجوعی وجود ندارد", 1).show();
        return false;
    }

    static class ViewHolder extends RecyclerView.ViewHolder {
        TextView itemAmountTextView;
        TextView itemBrandTextView;
        View itemCountLayout;
        TextView itemCountTextView;
        View itemLayout;
        TextView itemRejectReasonTextView;
        TextView itemReturnCountTextView;
        ImageView itemStateImageView;
        TextView itemTitleTextView;
        View itemView;
        View separator;

        public ViewHolder(View itemView) {
            super(itemView);
            this.itemView = itemView;
            this.itemLayout = itemView.findViewById(R.id.item_layout);
            this.itemCountLayout = itemView.findViewById(R.id.item_count_layout);
            this.itemTitleTextView = (TextView) itemView.findViewById(R.id.item_title);
            this.itemBrandTextView = (TextView) itemView.findViewById(R.id.item_brand);
            this.itemAmountTextView = (TextView) itemView.findViewById(R.id.item_amount);
            this.itemCountTextView = (TextView) itemView.findViewById(R.id.item_count_text_view);
            this.itemReturnCountTextView = (TextView) itemView.findViewById(R.id.item_return_count_text_view);
            this.itemStateImageView = (ImageView) itemView.findViewById(R.id.item_state_image);
            this.itemRejectReasonTextView = (TextView) itemView.findViewById(R.id.item_reject_reason);
            this.separator = itemView.findViewById(R.id.separator);
        }
    }
}
