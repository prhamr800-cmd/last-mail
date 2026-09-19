package io.realm;

import com.digikala.dms.model.domain.Shipment;

/* JADX INFO: loaded from: classes2.dex */
public interface com_digikala_dms_model_domain_BatchRealmProxyInterface {
    String realmGet$id();

    RealmList<Shipment> realmGet$shipments();

    int realmGet$status();

    void realmSet$id(String str);

    void realmSet$shipments(RealmList<Shipment> realmList);

    void realmSet$status(int i);
}
