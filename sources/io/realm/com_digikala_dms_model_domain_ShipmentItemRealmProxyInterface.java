package io.realm;

import com.digikala.dms.model.domain.BatchItem;

/* JADX INFO: loaded from: classes2.dex */
public interface com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface {
    String realmGet$BasketId();

    String realmGet$OrderItemId();

    RealmList<String> realmGet$SerialItemList();

    int realmGet$amountPerQuantity();

    RealmList<BatchItem> realmGet$batchItems();

    String realmGet$brandName();

    String realmGet$description();

    int realmGet$rejectReasonId();

    int realmGet$totalCount();

    void realmSet$BasketId(String str);

    void realmSet$OrderItemId(String str);

    void realmSet$SerialItemList(RealmList<String> realmList);

    void realmSet$amountPerQuantity(int i);

    void realmSet$batchItems(RealmList<BatchItem> realmList);

    void realmSet$brandName(String str);

    void realmSet$description(String str);

    void realmSet$rejectReasonId(int i);

    void realmSet$totalCount(int i);
}
