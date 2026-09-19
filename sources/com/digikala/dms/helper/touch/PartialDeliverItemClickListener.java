package com.digikala.dms.helper.touch;

import com.digikala.dms.model.domain.BatchItem;
import com.google.android.gms.measurement.AppMeasurement;
import io.realm.RealmList;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: PartialDeliverItemClickListener.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\bH&J6\u0010\t\u001a\u00020\u00032\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00052\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\u000f"}, d2 = {"Lcom/digikala/dms/helper/touch/PartialDeliverItemClickListener;", "", "onItemClick", "", "serialItemsList", "Lio/realm/RealmList;", "", "position", "", "onItemClickBasket", "batchItems", "Lcom/digikala/dms/model/domain/BatchItem;", AppMeasurement.Param.TYPE, "orderItemId", "basketId", "app_release"}, k = 1, mv = {1, 1, 11})
public interface PartialDeliverItemClickListener {
    void onItemClick(@NotNull RealmList<String> serialItemsList, int position);

    void onItemClickBasket(@NotNull RealmList<BatchItem> batchItems, @NotNull String type, @NotNull String orderItemId, @NotNull String basketId, int position);
}
