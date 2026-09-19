package com.digikala.dms.model.design;

import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class SyncCandidateShipment {
    private String CardNumber;
    private String CardTypeId;

    @SerializedName("Description")
    private String Comment;
    private String DeliveryDateTime;
    private Long FinalPayableAmount;
    private double Latitude;
    private double Longitude;
    private String OrderId;
    private String PackId;
    private String PaymentMethod;
    private int ReasonId;
    private ArrayList<NonRealmSerialItems> SerialOrBatchItems;
    private String Signature;
    private int Status;
    private String UserId;

    public String getPackId() {
        return this.PackId;
    }

    public void setPackId(String packId) {
        this.PackId = packId;
    }

    public String getOrderId() {
        return this.OrderId;
    }

    public void setOrderId(String orderId) {
        this.OrderId = orderId;
    }

    public int getStatus() {
        return this.Status;
    }

    public void setStatus(int status) {
        this.Status = status;
    }

    public String getUserId() {
        return this.UserId;
    }

    public void setUserId(String userId) {
        this.UserId = userId;
    }

    public String getDeliveryDateTime() {
        return this.DeliveryDateTime;
    }

    public void setDeliveryDateTime(String deliveryDateTime) {
        this.DeliveryDateTime = deliveryDateTime;
    }

    public String getSignature() {
        return this.Signature;
    }

    public void setSignature(String signature) {
        this.Signature = signature;
    }

    public int getReasonId() {
        return this.ReasonId;
    }

    public void setReasonId(int reasonId) {
        this.ReasonId = reasonId;
    }

    public ArrayList<NonRealmSerialItems> getSerialOrBatchItems() {
        return this.SerialOrBatchItems;
    }

    public void setSerialOrBatchItems(ArrayList<NonRealmSerialItems> serialOrBatchItems) {
        this.SerialOrBatchItems = serialOrBatchItems;
    }

    public double getLatitude() {
        return this.Latitude;
    }

    public void setLatitude(double latitude) {
        this.Latitude = latitude;
    }

    public double getLongitude() {
        return this.Longitude;
    }

    public void setLongitude(double longitude) {
        this.Longitude = longitude;
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

    public Long getFinalPayableAmount() {
        return this.FinalPayableAmount;
    }

    public void setFinalPayableAmount(Long FinalPayableAmount) {
        this.FinalPayableAmount = FinalPayableAmount;
    }

    public String getPayableMethod() {
        return this.PaymentMethod;
    }

    public void setPayableMethod(String PaymentMethod) {
        this.PaymentMethod = PaymentMethod;
    }
}
