package io.realm;

import com.digikala.dms.model.domain.ShipmentItem;

/* JADX INFO: loaded from: classes2.dex */
public interface com_digikala_dms_model_domain_BasketItemsRealmProxyInterface {
    String realmGet$basketId();

    RealmList<ShipmentItem> realmGet$orderItems();

    void realmSet$basketId(String str);

    void realmSet$orderItems(RealmList<ShipmentItem> realmList);
}
