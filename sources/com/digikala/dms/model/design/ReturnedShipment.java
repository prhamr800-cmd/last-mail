package com.digikala.dms.model.design;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class ReturnedShipment implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.digikala.dms.model.design.ReturnedShipment.1
        @Override // android.os.Parcelable.Creator
        public ReturnedShipment createFromParcel(Parcel in) {
            return new ReturnedShipment(in);
        }

        @Override // android.os.Parcelable.Creator
        public ReturnedShipment[] newArray(int size) {
            return new ReturnedShipment[size];
        }
    };
    private String reasonId;
    private String shipmentId;

    public ReturnedShipment() {
    }

    public ReturnedShipment(Parcel in) {
        this.shipmentId = in.readString();
        this.reasonId = in.readString();
    }

    public String getShipmentId() {
        return this.shipmentId;
    }

    public void setShipmentId(String shipmentId) {
        this.shipmentId = shipmentId;
    }

    public String getReasonId() {
        return this.reasonId;
    }

    public void setReasonId(String reasonId) {
        this.reasonId = reasonId;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.shipmentId);
        dest.writeString(this.reasonId);
    }
}
