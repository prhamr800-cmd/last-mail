package com.digikala.dms.helper;

import com.digikala.dms.model.domain.BasketItems;
import com.digikala.dms.model.domain.Batch;
import com.digikala.dms.model.domain.CardType;
import com.digikala.dms.model.domain.Courier;
import com.digikala.dms.model.domain.DistributionCenter;
import com.digikala.dms.model.domain.LatLong;
import com.digikala.dms.model.domain.RejectReason;
import com.digikala.dms.model.domain.ServerMessages;
import com.digikala.dms.model.domain.ServerNotification;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.model.domain.ShipmentItem;
import com.digikala.dms.model.domain.UnprocessedReason;
import io.realm.Realm;

/* JADX INFO: loaded from: classes2.dex */
public class RealmHelper {
    public static void deleteRealmTables() {
        Realm realm = Realm.getDefaultInstance();
        realm.executeTransaction(new Realm.Transaction() { // from class: com.digikala.dms.helper.RealmHelper.1
            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                realm2.delete(Batch.class);
                realm2.delete(Courier.class);
                realm2.delete(DistributionCenter.class);
                realm2.delete(LatLong.class);
                realm2.delete(RejectReason.class);
                realm2.delete(UnprocessedReason.class);
                realm2.delete(Shipment.class);
                realm2.delete(ShipmentItem.class);
                realm2.delete(BasketItems.class);
                realm2.delete(ServerMessages.class);
                realm2.delete(ServerNotification.class);
                realm2.delete(CardType.class);
            }
        });
    }
}
