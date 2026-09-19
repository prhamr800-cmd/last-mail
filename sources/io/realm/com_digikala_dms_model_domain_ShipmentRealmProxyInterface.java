package io.realm;

import com.digikala.dms.model.design.SerialItems;
import com.digikala.dms.model.domain.BasketItems;
import com.digikala.dms.model.domain.LatLong;
import com.digikala.dms.model.domain.ShippingCostConfig;

/* JADX INFO: loaded from: classes2.dex */
public interface com_digikala_dms_model_domain_ShipmentRealmProxyInterface {
    Long realmGet$FinalPayableAmount();

    String realmGet$PaymentMethod();

    Boolean realmGet$autoRefundable();

    int realmGet$basketCount();

    RealmList<BasketItems> realmGet$basketItems();

    String realmGet$cardNumber();

    String realmGet$cardTypeId();

    String realmGet$comment();

    LatLong realmGet$confirmLocation();

    String realmGet$confirmTime();

    String realmGet$customerName();

    String realmGet$customerPhoneNo();

    String realmGet$deliveryAddress();

    LatLong realmGet$deliveryLatLong();

    String realmGet$deliveryTime();

    String realmGet$invoiceId();

    Boolean realmGet$isFmcg();

    String realmGet$orderId();

    long realmGet$payableAmount();

    int realmGet$paymentStatus();

    String realmGet$podCode();

    String realmGet$priority();

    String realmGet$recipientName();

    String realmGet$recipientPhoneNo();

    int realmGet$rejectReasonId();

    long realmGet$remainingAmount();

    RealmList<SerialItems> realmGet$returnedProducts();

    RealmList<ShippingCostConfig> realmGet$shippingCostConfig();

    String realmGet$signature();

    int realmGet$status();

    boolean realmGet$tupleIsSyncedWithServer();

    void realmSet$FinalPayableAmount(Long l);

    void realmSet$PaymentMethod(String str);

    void realmSet$autoRefundable(Boolean bool);

    void realmSet$basketCount(int i);

    void realmSet$basketItems(RealmList<BasketItems> realmList);

    void realmSet$cardNumber(String str);

    void realmSet$cardTypeId(String str);

    void realmSet$comment(String str);

    void realmSet$confirmLocation(LatLong latLong);

    void realmSet$confirmTime(String str);

    void realmSet$customerName(String str);

    void realmSet$customerPhoneNo(String str);

    void realmSet$deliveryAddress(String str);

    void realmSet$deliveryLatLong(LatLong latLong);

    void realmSet$deliveryTime(String str);

    void realmSet$invoiceId(String str);

    void realmSet$isFmcg(Boolean bool);

    void realmSet$orderId(String str);

    void realmSet$payableAmount(long j);

    void realmSet$paymentStatus(int i);

    void realmSet$podCode(String str);

    void realmSet$priority(String str);

    void realmSet$recipientName(String str);

    void realmSet$recipientPhoneNo(String str);

    void realmSet$rejectReasonId(int i);

    void realmSet$remainingAmount(long j);

    void realmSet$returnedProducts(RealmList<SerialItems> realmList);

    void realmSet$shippingCostConfig(RealmList<ShippingCostConfig> realmList);

    void realmSet$signature(String str);

    void realmSet$status(int i);

    void realmSet$tupleIsSyncedWithServer(boolean z);
}
