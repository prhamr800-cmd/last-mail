package com.digikala.dms.model.design;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class NonRealmSerialItems implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.digikala.dms.model.design.NonRealmSerialItems.1
        @Override // android.os.Parcelable.Creator
        public NonRealmSerialItems createFromParcel(Parcel in) {
            return new NonRealmSerialItems(in);
        }

        @Override // android.os.Parcelable.Creator
        public NonRealmSerialItems[] newArray(int size) {
            return new NonRealmSerialItems[size];
        }
    };
    private String BasketId;
    private int Count;
    private String ItemBatchId;
    private String OrderItemId;
    private String ReasonId;
    private String SerialItem;

    public NonRealmSerialItems() {
        this.SerialItem = "";
        this.ItemBatchId = "";
        this.BasketId = "";
        this.Count = 0;
    }

    public NonRealmSerialItems(Parcel parcel) {
        this.SerialItem = "";
        this.ItemBatchId = "";
        this.BasketId = "";
        this.Count = 0;
        this.SerialItem = parcel.readString();
        this.ReasonId = parcel.readString();
        this.OrderItemId = parcel.readString();
        this.BasketId = parcel.readString();
        this.Count = parcel.readInt();
    }

    public NonRealmSerialItems(String serialItem, String reasonId, String itemBatchId, String orderItemId, int count, String basketId) {
        this.SerialItem = "";
        this.ItemBatchId = "";
        this.BasketId = "";
        this.Count = 0;
        this.SerialItem = serialItem;
        this.ReasonId = reasonId;
        this.ItemBatchId = itemBatchId;
        this.OrderItemId = orderItemId;
        this.Count = count;
        this.BasketId = basketId;
    }

    public String getSerialItem() {
        return this.SerialItem;
    }

    public void setSerialItem(String OrderItemId) {
        this.SerialItem = OrderItemId;
    }

    public String getReasonId() {
        return this.ReasonId;
    }

    public void setReasonId(String reasonId) {
        this.ReasonId = reasonId;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.SerialItem);
        dest.writeString(this.ReasonId);
        dest.writeString(this.OrderItemId);
        dest.writeString(this.BasketId);
        dest.writeInt(this.Count);
    }

    public String getItemBatchId() {
        return this.ItemBatchId;
    }

    public void setItemBatchId(String itemBatchId) {
        this.ItemBatchId = itemBatchId;
    }

    public String getOrderItemId() {
        return this.OrderItemId;
    }

    public void setOrderItemId(String orderItemId) {
        this.OrderItemId = orderItemId;
    }

    public int getCount() {
        return this.Count;
    }

    public void setCount(int count) {
        this.Count = count;
    }

    public String getBasketId() {
        return this.BasketId;
    }

    public void setBasketId(String basketId) {
        this.BasketId = basketId;
    }
}
