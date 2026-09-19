package com.digikala.dms.model.domain;

import com.google.gson.annotations.SerializedName;
import io.realm.RealmObject;
import io.realm.com_digikala_dms_model_domain_BatchItemRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* JADX INFO: loaded from: classes2.dex */
public class BatchItem extends RealmObject implements com_digikala_dms_model_domain_BatchItemRealmProxyInterface {

    @SerializedName("ConsumerPrice")
    private String consumerPrice;

    @SerializedName("Count")
    private String count;

    @SerializedName("ExpireDate")
    private String expireDate;

    @SerializedName("ItemBatchId")
    private String itemBatchId;

    @Override // io.realm.com_digikala_dms_model_domain_BatchItemRealmProxyInterface
    public String realmGet$consumerPrice() {
        return this.consumerPrice;
    }

    @Override // io.realm.com_digikala_dms_model_domain_BatchItemRealmProxyInterface
    public String realmGet$count() {
        return this.count;
    }

    @Override // io.realm.com_digikala_dms_model_domain_BatchItemRealmProxyInterface
    public String realmGet$expireDate() {
        return this.expireDate;
    }

    @Override // io.realm.com_digikala_dms_model_domain_BatchItemRealmProxyInterface
    public String realmGet$itemBatchId() {
        return this.itemBatchId;
    }

    @Override // io.realm.com_digikala_dms_model_domain_BatchItemRealmProxyInterface
    public void realmSet$consumerPrice(String str) {
        this.consumerPrice = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_BatchItemRealmProxyInterface
    public void realmSet$count(String str) {
        this.count = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_BatchItemRealmProxyInterface
    public void realmSet$expireDate(String str) {
        this.expireDate = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_BatchItemRealmProxyInterface
    public void realmSet$itemBatchId(String str) {
        this.itemBatchId = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BatchItem() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public String getItemBatchId() {
        return realmGet$itemBatchId();
    }

    public void setItemBatchId(String itemBatchId) {
        realmSet$itemBatchId(itemBatchId);
    }

    public String getConsumerPrice() {
        return realmGet$consumerPrice();
    }

    public void setConsumerPrice(String consumerPrice) {
        realmSet$consumerPrice(consumerPrice);
    }

    public String getExpireDate() {
        return realmGet$expireDate();
    }

    public void setExpireDate(String expireDate) {
        realmSet$expireDate(expireDate);
    }

    public String getCount() {
        return realmGet$count();
    }

    public void setCount(String count) {
        realmSet$count(count);
    }
}
