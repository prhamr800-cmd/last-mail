package com.digikala.dms.model.domain;

import com.digikala.dms.model.design.SerialItems;
import com.google.gson.annotations.SerializedName;
import io.realm.RealmList;
import io.realm.RealmObject;
import io.realm.com_digikala_dms_model_domain_LatLongRealmProxy;
import io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface;
import io.realm.com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;
import io.realm.internal.RealmObjectProxy;

/* JADX INFO: loaded from: classes2.dex */
public class Shipment extends RealmObject implements com_digikala_dms_model_domain_ShipmentRealmProxyInterface {
    public static final String COLUMN_ORDER_ID = "orderId";
    public static final String COLUMN_STATUS = "status";
    public static final String COLUMN_TUPLE_IS_SYNCED_WITH_SERVER = "tupleIsSyncedWithServer";
    public static final int STATUS_DELIVERED_FULL = 5;
    public static final int STATUS_DELIVERED_PARTIAL = 7;
    public static final int STATUS_LEFT = 9;
    public static final int STATUS_MISSED_CALL = 8;
    public static final int STATUS_OPEN = 1;
    public static final int STATUS_PAYMENT_CASH_ON_DELIVERY = 12;
    public static final int STATUS_PAYMENT_CLEARED = 11;
    public static final int STATUS_RETURNED = 6;

    @SerializedName("FinalPayableAmount")
    private Long FinalPayableAmount;

    @SerializedName("PaymentMethod")
    private String PaymentMethod;

    @SerializedName("autoRefundable")
    private Boolean autoRefundable;

    @SerializedName("TotalCount")
    private int basketCount;

    @SerializedName("Items")
    private RealmList<BasketItems> basketItems;

    @SerializedName("cardNumber")
    private String cardNumber;

    @SerializedName("cardTypeId")
    private String cardTypeId;

    @SerializedName("comment")
    private String comment;
    private LatLong confirmLocation;
    private String confirmTime;

    @SerializedName("CustomerName")
    private String customerName;

    @SerializedName("CustomerPhoneNo")
    private String customerPhoneNo;

    @SerializedName("DeliveryAddress")
    private String deliveryAddress;

    @SerializedName(com_digikala_dms_model_domain_LatLongRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME)
    private LatLong deliveryLatLong;

    @SerializedName("DeliveryTime")
    private String deliveryTime;

    @SerializedName("InvoiceId")
    private String invoiceId;

    @SerializedName("IsFmcg")
    private Boolean isFmcg;

    @SerializedName("ShipmentId")
    private String orderId;

    @SerializedName("AmountPayable")
    private long payableAmount;

    @SerializedName("PaymentStatus")
    private int paymentStatus;

    @SerializedName("Pod")
    private String podCode;

    @SerializedName("Priority")
    private String priority;

    @SerializedName("RecipientName")
    private String recipientName;

    @SerializedName("RecipientPhoneNo")
    private String recipientPhoneNo;
    private int rejectReasonId;

    @SerializedName("RemainingAmount")
    private long remainingAmount;
    private RealmList<SerialItems> returnedProducts;

    @SerializedName(com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME)
    private RealmList<ShippingCostConfig> shippingCostConfig;
    private String signature;

    @SerializedName("Status")
    private int status;
    private boolean tupleIsSyncedWithServer;

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public Long realmGet$FinalPayableAmount() {
        return this.FinalPayableAmount;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$PaymentMethod() {
        return this.PaymentMethod;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public Boolean realmGet$autoRefundable() {
        return this.autoRefundable;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public int realmGet$basketCount() {
        return this.basketCount;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public RealmList realmGet$basketItems() {
        return this.basketItems;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$cardNumber() {
        return this.cardNumber;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$cardTypeId() {
        return this.cardTypeId;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$comment() {
        return this.comment;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public LatLong realmGet$confirmLocation() {
        return this.confirmLocation;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$confirmTime() {
        return this.confirmTime;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$customerName() {
        return this.customerName;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$customerPhoneNo() {
        return this.customerPhoneNo;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$deliveryAddress() {
        return this.deliveryAddress;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public LatLong realmGet$deliveryLatLong() {
        return this.deliveryLatLong;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$deliveryTime() {
        return this.deliveryTime;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$invoiceId() {
        return this.invoiceId;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public Boolean realmGet$isFmcg() {
        return this.isFmcg;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$orderId() {
        return this.orderId;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public long realmGet$payableAmount() {
        return this.payableAmount;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public int realmGet$paymentStatus() {
        return this.paymentStatus;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$podCode() {
        return this.podCode;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$priority() {
        return this.priority;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$recipientName() {
        return this.recipientName;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$recipientPhoneNo() {
        return this.recipientPhoneNo;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public int realmGet$rejectReasonId() {
        return this.rejectReasonId;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public long realmGet$remainingAmount() {
        return this.remainingAmount;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public RealmList realmGet$returnedProducts() {
        return this.returnedProducts;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public RealmList realmGet$shippingCostConfig() {
        return this.shippingCostConfig;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$signature() {
        return this.signature;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public int realmGet$status() {
        return this.status;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public boolean realmGet$tupleIsSyncedWithServer() {
        return this.tupleIsSyncedWithServer;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$FinalPayableAmount(Long l) {
        this.FinalPayableAmount = l;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$PaymentMethod(String str) {
        this.PaymentMethod = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$autoRefundable(Boolean bool) {
        this.autoRefundable = bool;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$basketCount(int i) {
        this.basketCount = i;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$basketItems(RealmList realmList) {
        this.basketItems = realmList;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$cardNumber(String str) {
        this.cardNumber = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$cardTypeId(String str) {
        this.cardTypeId = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$comment(String str) {
        this.comment = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$confirmLocation(LatLong latLong) {
        this.confirmLocation = latLong;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$confirmTime(String str) {
        this.confirmTime = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$customerName(String str) {
        this.customerName = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$customerPhoneNo(String str) {
        this.customerPhoneNo = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$deliveryAddress(String str) {
        this.deliveryAddress = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$deliveryLatLong(LatLong latLong) {
        this.deliveryLatLong = latLong;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$deliveryTime(String str) {
        this.deliveryTime = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$invoiceId(String str) {
        this.invoiceId = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$isFmcg(Boolean bool) {
        this.isFmcg = bool;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$orderId(String str) {
        this.orderId = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$payableAmount(long j) {
        this.payableAmount = j;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$paymentStatus(int i) {
        this.paymentStatus = i;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$podCode(String str) {
        this.podCode = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$priority(String str) {
        this.priority = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$recipientName(String str) {
        this.recipientName = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$recipientPhoneNo(String str) {
        this.recipientPhoneNo = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$rejectReasonId(int i) {
        this.rejectReasonId = i;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$remainingAmount(long j) {
        this.remainingAmount = j;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$returnedProducts(RealmList realmList) {
        this.returnedProducts = realmList;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$shippingCostConfig(RealmList realmList) {
        this.shippingCostConfig = realmList;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$signature(String str) {
        this.signature = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$status(int i) {
        this.status = i;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$tupleIsSyncedWithServer(boolean z) {
        this.tupleIsSyncedWithServer = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Shipment() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$basketItems(new RealmList());
        realmSet$shippingCostConfig(new RealmList());
    }

    public Boolean getAutoRefundable() {
        return realmGet$autoRefundable();
    }

    public void setAutoRefundable(Boolean autoRefundable) {
        realmSet$autoRefundable(autoRefundable);
    }

    public static String getColumnOrderId() {
        return COLUMN_ORDER_ID;
    }

    public RealmList<BasketItems> getBasketItems() {
        return realmGet$basketItems();
    }

    public void setBasketItems(RealmList<BasketItems> basketItems) {
        realmSet$basketItems(basketItems);
    }

    public int getBasketCount() {
        return realmGet$basketCount();
    }

    public void setBasketCount(int basketCount) {
        realmSet$basketCount(basketCount);
    }

    public String getOrderId() {
        return realmGet$orderId();
    }

    public void setOrderId(String orderId) {
        realmSet$orderId(orderId);
    }

    public String getPodCode() {
        return realmGet$podCode();
    }

    public void setPodCode(String podCode) {
        realmSet$podCode(podCode);
    }

    public String getInvoiceId() {
        return realmGet$invoiceId();
    }

    public void setInvoiceId(String invoiceId) {
        realmSet$invoiceId(invoiceId);
    }

    public String getPriority() {
        return realmGet$priority();
    }

    public void setPriority(String priority) {
        realmSet$priority(priority);
    }

    public int getPaymentStatus() {
        return realmGet$paymentStatus();
    }

    public void setPaymentStatus(int paymentStatus) {
        realmSet$paymentStatus(paymentStatus);
    }

    public long getPayableAmount() {
        return realmGet$payableAmount();
    }

    public void setPayableAmount(long payableAmount) {
        realmSet$payableAmount(payableAmount);
    }

    public long getRemainingAmount() {
        return realmGet$remainingAmount();
    }

    public void setRemainingAmount(long remainingAmount) {
        realmSet$remainingAmount(remainingAmount);
    }

    public String getCustomerName() {
        return realmGet$customerName();
    }

    public void setCustomerName(String customerName) {
        realmSet$customerName(customerName);
    }

    public String getCustomerPhoneNo() {
        return realmGet$customerPhoneNo();
    }

    public void setCustomerPhoneNo(String customerPhoneNo) {
        realmSet$customerPhoneNo(customerPhoneNo);
    }

    public String getRecipientName() {
        return realmGet$recipientName();
    }

    public void setRecipientName(String recipientName) {
        realmSet$recipientName(recipientName);
    }

    public String getRecipientPhoneNo() {
        return realmGet$recipientPhoneNo();
    }

    public void setRecipientPhoneNo(String recipientPhoneNo) {
        realmSet$recipientPhoneNo(recipientPhoneNo);
    }

    public String getDeliveryTime() {
        return realmGet$deliveryTime();
    }

    public void setDeliveryTime(String deliveryTime) {
        realmSet$deliveryTime(deliveryTime);
    }

    public String getDeliveryAddress() {
        return realmGet$deliveryAddress();
    }

    public void setDeliveryAddress(String deliveryAddress) {
        realmSet$deliveryAddress(deliveryAddress);
    }

    public LatLong getDeliveryLatLong() {
        return realmGet$deliveryLatLong();
    }

    public void setDeliveryLatLong(LatLong deliveryLatLong) {
        realmSet$deliveryLatLong(deliveryLatLong);
    }

    public int getStatus() {
        return realmGet$status();
    }

    public void setStatus(int status) {
        realmSet$status(status);
    }

    public int getRejectReasonId() {
        return realmGet$rejectReasonId();
    }

    public void setRejectReasonId(int rejectReasonId) {
        realmSet$rejectReasonId(rejectReasonId);
    }

    public boolean isTupleIsSyncedWithServer() {
        return realmGet$tupleIsSyncedWithServer();
    }

    public void setTupleIsSyncedWithServer(boolean tupleIsSyncedWithServer) {
        realmSet$tupleIsSyncedWithServer(tupleIsSyncedWithServer);
    }

    public String getSignature() {
        return realmGet$signature();
    }

    public void setSignature(String signature) {
        realmSet$signature(signature);
    }

    public String getConfirmTime() {
        return realmGet$confirmTime();
    }

    public void setConfirmTime(String confirmTime) {
        realmSet$confirmTime(confirmTime);
    }

    public LatLong getConfirmLocation() {
        return realmGet$confirmLocation();
    }

    public void setConfirmLocation(LatLong confirmLocation) {
        realmSet$confirmLocation(confirmLocation);
    }

    public RealmList<SerialItems> getReturnedProducts() {
        return realmGet$returnedProducts();
    }

    public void setReturnedProducts(RealmList<SerialItems> returnedProducts) {
        realmSet$returnedProducts(returnedProducts);
    }

    public String getCardTypeId() {
        return realmGet$cardTypeId();
    }

    public void setCardTypeId(String cardTypeId) {
        realmSet$cardTypeId(cardTypeId);
    }

    public String getCardNumber() {
        return realmGet$cardNumber();
    }

    public void setCardNumber(String cardNumber) {
        realmSet$cardNumber(cardNumber);
    }

    public String getComment() {
        return realmGet$comment();
    }

    public void setComment(String comment) {
        realmSet$comment(comment);
    }

    public String getPaymentMethod() {
        return realmGet$PaymentMethod();
    }

    public void setPaymentMethod(String PaymentMethod) {
        realmSet$PaymentMethod(PaymentMethod);
    }

    public Long getFinalPayableAmount() {
        return realmGet$FinalPayableAmount();
    }

    public void setFinalPayableAmount(Long FinalPayableAmount) {
        realmSet$FinalPayableAmount(FinalPayableAmount);
    }

    public Boolean getFmcg() {
        return realmGet$isFmcg();
    }

    public void setFmcg(Boolean fmcg) {
        realmSet$isFmcg(fmcg);
    }

    public RealmList<ShippingCostConfig> getShippingCostConfig() {
        return realmGet$shippingCostConfig();
    }

    public void setShippingCostConfig(RealmList<ShippingCostConfig> shippingCostConfig) {
        realmSet$shippingCostConfig(shippingCostConfig);
    }
}
