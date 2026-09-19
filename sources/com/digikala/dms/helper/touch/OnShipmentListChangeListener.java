package com.digikala.dms.helper.touch;

import com.digikala.dms.model.domain.Shipment;
import java.util.ArrayList;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: OnShipmentListChangeListener.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0016\u0010\u0006\u001a\u00020\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\bH&¨\u0006\t"}, d2 = {"Lcom/digikala/dms/helper/touch/OnShipmentListChangeListener;", "", "onShipmentItemSwiped", "", "mShipment", "Lcom/digikala/dms/model/domain/Shipment;", "onShipmentListChanged", "mShipments", "Ljava/util/ArrayList;", "app_release"}, k = 1, mv = {1, 1, 11})
public interface OnShipmentListChangeListener {
    void onShipmentItemSwiped(@NotNull Shipment mShipment);

    void onShipmentListChanged(@NotNull ArrayList<Shipment> mShipments);
}
