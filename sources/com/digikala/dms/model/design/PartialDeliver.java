package com.digikala.dms.model.design;

import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class PartialDeliver {
    private String CardNumber;
    private String CardTypeId;

    @SerializedName("Description")
    private String Comment;
    private Long FinalPayableAmount;
    private String GpsStatus;
    private String Latitude;
    private String Longitude;
    private String OrderId;
    private String PackId;
    private String PaymentMethod;
    private ArrayList<SerialItems> SerialOrBatchItems;
    private String Signature;

    public String getOrderId() {
        return this.OrderId;
    }

    public void setOrderId(String orderId) {
        this.OrderId = orderId;
    }

    public String getSignature() {
        return this.Signature;
    }

    public void setSignature(String signature) {
        this.Signature = signature;
    }

    public String getLatitude() {
        return this.Latitude;
    }

    public void setLatitude(String latitude) {
        this.Latitude = latitude;
    }

    public String getLongitude() {
        return this.Longitude;
    }

    public void setLongitude(String longitude) {
        this.Longitude = longitude;
    }

    public String getPackId() {
        return this.PackId;
    }

    public void setPackId(String packId) {
        this.PackId = packId;
    }

    public String getCardTypeId() {
        return this.CardTypeId;
    }

    public void setCardTypeId(String cardTypeId) {
        this.CardTypeId = cardTypeId;
    }

    public String getCardNumber() {
        return this.CardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.CardNumber = cardNumber;
    }

    public String getComment() {
        return this.Comment;
    }

    public void setComment(String comment) {
        this.Comment = comment;
    }

    public ArrayList<SerialItems> getSerialOrBatchItems() {
        return this.SerialOrBatchItems;
    }

    public void setSerialOrBatchItems(ArrayList<SerialItems> serialOrBatchItems) {
        this.SerialOrBatchItems = serialOrBatchItems;
    }

    public String getPaymentMethod() {
        return this.PaymentMethod;
    }

    public void setPaymentMethod(String PaymentMethod) {
        this.PaymentMethod = PaymentMethod;
    }

    public Long getFinalPayableAmount() {
        return this.FinalPayableAmount;
    }

    public void setFinalPayableAmount(Long FinalPayableAmount) {
        this.FinalPayableAmount = FinalPayableAmount;
    }

    public String getGpsStatus() {
        return this.GpsStatus;
    }

    public void setGpsStatus(String gpsStatus) {
        this.GpsStatus = gpsStatus;
    }
}
