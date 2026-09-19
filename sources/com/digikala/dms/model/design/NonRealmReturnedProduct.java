package com.digikala.dms.model.design;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class NonRealmReturnedProduct implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.digikala.dms.model.design.NonRealmReturnedProduct.1
        @Override // android.os.Parcelable.Creator
        public NonRealmReturnedProduct createFromParcel(Parcel in) {
            return new NonRealmReturnedProduct(in);
        }

        @Override // android.os.Parcelable.Creator
        public NonRealmReturnedProduct[] newArray(int size) {
            return new NonRealmReturnedProduct[size];
        }
    };
    private String Count;
    private int ItemBatchId;
    private String OrderItemId;
    private String ReasonId;

    public NonRealmReturnedProduct() {
    }

    public NonRealmReturnedProduct(Parcel parcel) {
        this.OrderItemId = parcel.readString();
        this.ReasonId = parcel.readString();
        this.Count = parcel.readString();
        this.ItemBatchId = parcel.readInt();
    }

    public NonRealmReturnedProduct(String orderItemId, String reasonId, String count, int itemBatchId) {
        this.OrderItemId = orderItemId;
        this.ReasonId = reasonId;
        this.Count = count;
        this.ItemBatchId = itemBatchId;
    }

    public String getOrderItemId() {
        return this.OrderItemId;
    }

    public void setOrderItemId(String OrderItemId) {
        this.OrderItemId = OrderItemId;
    }

    public String getReasonId() {
        return this.ReasonId;
    }

    public void setReasonId(String reasonId) {
        this.ReasonId = reasonId;
    }

    public String getCount() {
        return this.Count;
    }

    public void setCount(String count) {
        this.Count = count;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NonRealmReturnedProduct)) {
            return false;
        }
        NonRealmReturnedProduct o = (NonRealmReturnedProduct) obj;
        return o.OrderItemId.equals(this.OrderItemId);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.OrderItemId);
        dest.writeString(this.ReasonId);
        dest.writeString(this.Count);
        dest.writeInt(this.ItemBatchId);
    }

    public int getItemBatchId() {
        return this.ItemBatchId;
    }

    public void setItemBatchId(int itemBatchId) {
        this.ItemBatchId = itemBatchId;
    }
}
