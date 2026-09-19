package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.digikala.dms.model.design.SerialItems;
import com.digikala.dms.model.domain.BasketItems;
import com.digikala.dms.model.domain.LatLong;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.model.domain.ShippingCostConfig;
import io.realm.BaseRealm;
import io.realm.com_digikala_dms_model_design_SerialItemsRealmProxy;
import io.realm.com_digikala_dms_model_domain_BasketItemsRealmProxy;
import io.realm.com_digikala_dms_model_domain_LatLongRealmProxy;
import io.realm.com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsList;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class com_digikala_dms_model_domain_ShipmentRealmProxy extends Shipment implements RealmObjectProxy, com_digikala_dms_model_domain_ShipmentRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private RealmList<BasketItems> basketItemsRealmList;
    private ShipmentColumnInfo columnInfo;
    private ProxyState<Shipment> proxyState;
    private RealmList<SerialItems> returnedProductsRealmList;
    private RealmList<ShippingCostConfig> shippingCostConfigRealmList;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "Shipment";
    }

    static final class ShipmentColumnInfo extends ColumnInfo {
        long FinalPayableAmountIndex;
        long PaymentMethodIndex;
        long autoRefundableIndex;
        long basketCountIndex;
        long basketItemsIndex;
        long cardNumberIndex;
        long cardTypeIdIndex;
        long commentIndex;
        long confirmLocationIndex;
        long confirmTimeIndex;
        long customerNameIndex;
        long customerPhoneNoIndex;
        long deliveryAddressIndex;
        long deliveryLatLongIndex;
        long deliveryTimeIndex;
        long invoiceIdIndex;
        long isFmcgIndex;
        long orderIdIndex;
        long payableAmountIndex;
        long paymentStatusIndex;
        long podCodeIndex;
        long priorityIndex;
        long recipientNameIndex;
        long recipientPhoneNoIndex;
        long rejectReasonIdIndex;
        long remainingAmountIndex;
        long returnedProductsIndex;
        long shippingCostConfigIndex;
        long signatureIndex;
        long statusIndex;
        long tupleIsSyncedWithServerIndex;

        ShipmentColumnInfo(OsSchemaInfo schemaInfo) {
            super(31);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.orderIdIndex = addColumnDetails(Shipment.COLUMN_ORDER_ID, Shipment.COLUMN_ORDER_ID, objectSchemaInfo);
            this.podCodeIndex = addColumnDetails("podCode", "podCode", objectSchemaInfo);
            this.cardTypeIdIndex = addColumnDetails("cardTypeId", "cardTypeId", objectSchemaInfo);
            this.cardNumberIndex = addColumnDetails("cardNumber", "cardNumber", objectSchemaInfo);
            this.commentIndex = addColumnDetails("comment", "comment", objectSchemaInfo);
            this.invoiceIdIndex = addColumnDetails("invoiceId", "invoiceId", objectSchemaInfo);
            this.isFmcgIndex = addColumnDetails("isFmcg", "isFmcg", objectSchemaInfo);
            this.autoRefundableIndex = addColumnDetails("autoRefundable", "autoRefundable", objectSchemaInfo);
            this.priorityIndex = addColumnDetails("priority", "priority", objectSchemaInfo);
            this.paymentStatusIndex = addColumnDetails("paymentStatus", "paymentStatus", objectSchemaInfo);
            this.payableAmountIndex = addColumnDetails("payableAmount", "payableAmount", objectSchemaInfo);
            this.remainingAmountIndex = addColumnDetails("remainingAmount", "remainingAmount", objectSchemaInfo);
            this.customerNameIndex = addColumnDetails("customerName", "customerName", objectSchemaInfo);
            this.customerPhoneNoIndex = addColumnDetails("customerPhoneNo", "customerPhoneNo", objectSchemaInfo);
            this.recipientNameIndex = addColumnDetails("recipientName", "recipientName", objectSchemaInfo);
            this.recipientPhoneNoIndex = addColumnDetails("recipientPhoneNo", "recipientPhoneNo", objectSchemaInfo);
            this.deliveryTimeIndex = addColumnDetails("deliveryTime", "deliveryTime", objectSchemaInfo);
            this.deliveryAddressIndex = addColumnDetails("deliveryAddress", "deliveryAddress", objectSchemaInfo);
            this.deliveryLatLongIndex = addColumnDetails("deliveryLatLong", "deliveryLatLong", objectSchemaInfo);
            this.PaymentMethodIndex = addColumnDetails("PaymentMethod", "PaymentMethod", objectSchemaInfo);
            this.FinalPayableAmountIndex = addColumnDetails("FinalPayableAmount", "FinalPayableAmount", objectSchemaInfo);
            this.statusIndex = addColumnDetails("status", "status", objectSchemaInfo);
            this.basketItemsIndex = addColumnDetails("basketItems", "basketItems", objectSchemaInfo);
            this.shippingCostConfigIndex = addColumnDetails("shippingCostConfig", "shippingCostConfig", objectSchemaInfo);
            this.basketCountIndex = addColumnDetails("basketCount", "basketCount", objectSchemaInfo);
            this.rejectReasonIdIndex = addColumnDetails("rejectReasonId", "rejectReasonId", objectSchemaInfo);
            this.tupleIsSyncedWithServerIndex = addColumnDetails(Shipment.COLUMN_TUPLE_IS_SYNCED_WITH_SERVER, Shipment.COLUMN_TUPLE_IS_SYNCED_WITH_SERVER, objectSchemaInfo);
            this.signatureIndex = addColumnDetails("signature", "signature", objectSchemaInfo);
            this.confirmTimeIndex = addColumnDetails("confirmTime", "confirmTime", objectSchemaInfo);
            this.confirmLocationIndex = addColumnDetails("confirmLocation", "confirmLocation", objectSchemaInfo);
            this.returnedProductsIndex = addColumnDetails("returnedProducts", "returnedProducts", objectSchemaInfo);
        }

        ShipmentColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new ShipmentColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            ShipmentColumnInfo src = (ShipmentColumnInfo) rawSrc;
            ShipmentColumnInfo dst = (ShipmentColumnInfo) rawDst;
            dst.orderIdIndex = src.orderIdIndex;
            dst.podCodeIndex = src.podCodeIndex;
            dst.cardTypeIdIndex = src.cardTypeIdIndex;
            dst.cardNumberIndex = src.cardNumberIndex;
            dst.commentIndex = src.commentIndex;
            dst.invoiceIdIndex = src.invoiceIdIndex;
            dst.isFmcgIndex = src.isFmcgIndex;
            dst.autoRefundableIndex = src.autoRefundableIndex;
            dst.priorityIndex = src.priorityIndex;
            dst.paymentStatusIndex = src.paymentStatusIndex;
            dst.payableAmountIndex = src.payableAmountIndex;
            dst.remainingAmountIndex = src.remainingAmountIndex;
            dst.customerNameIndex = src.customerNameIndex;
            dst.customerPhoneNoIndex = src.customerPhoneNoIndex;
            dst.recipientNameIndex = src.recipientNameIndex;
            dst.recipientPhoneNoIndex = src.recipientPhoneNoIndex;
            dst.deliveryTimeIndex = src.deliveryTimeIndex;
            dst.deliveryAddressIndex = src.deliveryAddressIndex;
            dst.deliveryLatLongIndex = src.deliveryLatLongIndex;
            dst.PaymentMethodIndex = src.PaymentMethodIndex;
            dst.FinalPayableAmountIndex = src.FinalPayableAmountIndex;
            dst.statusIndex = src.statusIndex;
            dst.basketItemsIndex = src.basketItemsIndex;
            dst.shippingCostConfigIndex = src.shippingCostConfigIndex;
            dst.basketCountIndex = src.basketCountIndex;
            dst.rejectReasonIdIndex = src.rejectReasonIdIndex;
            dst.tupleIsSyncedWithServerIndex = src.tupleIsSyncedWithServerIndex;
            dst.signatureIndex = src.signatureIndex;
            dst.confirmTimeIndex = src.confirmTimeIndex;
            dst.confirmLocationIndex = src.confirmLocationIndex;
            dst.returnedProductsIndex = src.returnedProductsIndex;
        }
    }

    com_digikala_dms_model_domain_ShipmentRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (ShipmentColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$orderId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.orderIdIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$orderId(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.orderIdIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.orderIdIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.orderIdIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.orderIdIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$podCode() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.podCodeIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$podCode(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.podCodeIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.podCodeIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.podCodeIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.podCodeIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$cardTypeId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.cardTypeIdIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$cardTypeId(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.cardTypeIdIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.cardTypeIdIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.cardTypeIdIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.cardTypeIdIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$cardNumber() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.cardNumberIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$cardNumber(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.cardNumberIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.cardNumberIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.cardNumberIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.cardNumberIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$comment() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.commentIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$comment(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.commentIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.commentIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.commentIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.commentIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$invoiceId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.invoiceIdIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$invoiceId(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.invoiceIdIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.invoiceIdIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.invoiceIdIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.invoiceIdIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public Boolean realmGet$isFmcg() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.isFmcgIndex)) {
            return null;
        }
        return Boolean.valueOf(this.proxyState.getRow$realm().getBoolean(this.columnInfo.isFmcgIndex));
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$isFmcg(Boolean value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.isFmcgIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setBoolean(this.columnInfo.isFmcgIndex, row.getIndex(), value.booleanValue(), true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.isFmcgIndex);
        } else {
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.isFmcgIndex, value.booleanValue());
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public Boolean realmGet$autoRefundable() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.autoRefundableIndex)) {
            return null;
        }
        return Boolean.valueOf(this.proxyState.getRow$realm().getBoolean(this.columnInfo.autoRefundableIndex));
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$autoRefundable(Boolean value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.autoRefundableIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setBoolean(this.columnInfo.autoRefundableIndex, row.getIndex(), value.booleanValue(), true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.autoRefundableIndex);
        } else {
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.autoRefundableIndex, value.booleanValue());
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$priority() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.priorityIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$priority(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.priorityIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.priorityIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.priorityIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.priorityIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public int realmGet$paymentStatus() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.paymentStatusIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$paymentStatus(int value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setLong(this.columnInfo.paymentStatusIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setLong(this.columnInfo.paymentStatusIndex, value);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public long realmGet$payableAmount() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.payableAmountIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$payableAmount(long value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setLong(this.columnInfo.payableAmountIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setLong(this.columnInfo.payableAmountIndex, value);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public long realmGet$remainingAmount() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.remainingAmountIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$remainingAmount(long value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setLong(this.columnInfo.remainingAmountIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setLong(this.columnInfo.remainingAmountIndex, value);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$customerName() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.customerNameIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$customerName(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.customerNameIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.customerNameIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.customerNameIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.customerNameIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$customerPhoneNo() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.customerPhoneNoIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$customerPhoneNo(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.customerPhoneNoIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.customerPhoneNoIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.customerPhoneNoIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.customerPhoneNoIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$recipientName() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.recipientNameIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$recipientName(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.recipientNameIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.recipientNameIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.recipientNameIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.recipientNameIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$recipientPhoneNo() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.recipientPhoneNoIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$recipientPhoneNo(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.recipientPhoneNoIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.recipientPhoneNoIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.recipientPhoneNoIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.recipientPhoneNoIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$deliveryTime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.deliveryTimeIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$deliveryTime(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.deliveryTimeIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.deliveryTimeIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.deliveryTimeIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.deliveryTimeIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$deliveryAddress() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.deliveryAddressIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$deliveryAddress(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.deliveryAddressIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.deliveryAddressIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.deliveryAddressIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.deliveryAddressIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public LatLong realmGet$deliveryLatLong() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.deliveryLatLongIndex)) {
            return null;
        }
        return (LatLong) this.proxyState.getRealm$realm().get(LatLong.class, this.proxyState.getRow$realm().getLink(this.columnInfo.deliveryLatLongIndex), false, Collections.emptyList());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$deliveryLatLong(LatLong latLong) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            RealmModel realmModel = latLong;
            if (this.proxyState.getExcludeFields$realm().contains("deliveryLatLong")) {
                return;
            }
            if (latLong != 0) {
                boolean zIsManaged = RealmObject.isManaged(latLong);
                realmModel = latLong;
                if (!zIsManaged) {
                    realmModel = (LatLong) ((Realm) this.proxyState.getRealm$realm()).copyToRealm(latLong);
                }
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (realmModel == null) {
                row$realm.nullifyLink(this.columnInfo.deliveryLatLongIndex);
                return;
            } else {
                this.proxyState.checkValidObject(realmModel);
                row$realm.getTable().setLink(this.columnInfo.deliveryLatLongIndex, row$realm.getIndex(), ((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex(), true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (latLong == 0) {
            this.proxyState.getRow$realm().nullifyLink(this.columnInfo.deliveryLatLongIndex);
        } else {
            this.proxyState.checkValidObject(latLong);
            this.proxyState.getRow$realm().setLink(this.columnInfo.deliveryLatLongIndex, ((RealmObjectProxy) latLong).realmGet$proxyState().getRow$realm().getIndex());
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$PaymentMethod() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.PaymentMethodIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$PaymentMethod(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.PaymentMethodIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.PaymentMethodIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.PaymentMethodIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.PaymentMethodIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public Long realmGet$FinalPayableAmount() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.FinalPayableAmountIndex)) {
            return null;
        }
        return Long.valueOf(this.proxyState.getRow$realm().getLong(this.columnInfo.FinalPayableAmountIndex));
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$FinalPayableAmount(Long value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.FinalPayableAmountIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setLong(this.columnInfo.FinalPayableAmountIndex, row.getIndex(), value.longValue(), true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.FinalPayableAmountIndex);
        } else {
            this.proxyState.getRow$realm().setLong(this.columnInfo.FinalPayableAmountIndex, value.longValue());
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public int realmGet$status() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.statusIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$status(int value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setLong(this.columnInfo.statusIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setLong(this.columnInfo.statusIndex, value);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public RealmList<BasketItems> realmGet$basketItems() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.basketItemsRealmList != null) {
            return this.basketItemsRealmList;
        }
        OsList osList = this.proxyState.getRow$realm().getModelList(this.columnInfo.basketItemsIndex);
        this.basketItemsRealmList = new RealmList<>(BasketItems.class, osList, this.proxyState.getRealm$realm());
        return this.basketItemsRealmList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [io.realm.RealmList, io.realm.RealmList<com.digikala.dms.model.domain.BasketItems>] */
    /* JADX WARN: Type inference failed for: r9v1, types: [io.realm.RealmList] */
    /* JADX WARN: Type inference failed for: r9v2, types: [io.realm.RealmList] */
    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$basketItems(RealmList<BasketItems> realmList) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm() || this.proxyState.getExcludeFields$realm().contains("basketItems")) {
                return;
            }
            if (realmList != 0 && !realmList.isManaged()) {
                Realm realm = (Realm) this.proxyState.getRealm$realm();
                realmList = new RealmList();
                for (BasketItems item : realmList) {
                    if (item == null || RealmObject.isManaged(item)) {
                        realmList.add(item);
                    } else {
                        realmList.add(realm.copyToRealm(item));
                    }
                }
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        OsList osList = this.proxyState.getRow$realm().getModelList(this.columnInfo.basketItemsIndex);
        int i = 0;
        if (realmList != 0 && realmList.size() == osList.size()) {
            int objects = realmList.size();
            while (i < objects) {
                RealmModel realmModel = (BasketItems) realmList.get(i);
                this.proxyState.checkValidObject(realmModel);
                osList.setRow(i, ((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex());
                i++;
            }
            return;
        }
        osList.removeAll();
        if (realmList == 0) {
            return;
        }
        int objects2 = realmList.size();
        while (i < objects2) {
            RealmModel realmModel2 = (BasketItems) realmList.get(i);
            this.proxyState.checkValidObject(realmModel2);
            osList.addRow(((RealmObjectProxy) realmModel2).realmGet$proxyState().getRow$realm().getIndex());
            i++;
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public RealmList<ShippingCostConfig> realmGet$shippingCostConfig() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.shippingCostConfigRealmList != null) {
            return this.shippingCostConfigRealmList;
        }
        OsList osList = this.proxyState.getRow$realm().getModelList(this.columnInfo.shippingCostConfigIndex);
        this.shippingCostConfigRealmList = new RealmList<>(ShippingCostConfig.class, osList, this.proxyState.getRealm$realm());
        return this.shippingCostConfigRealmList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [io.realm.RealmList, io.realm.RealmList<com.digikala.dms.model.domain.ShippingCostConfig>] */
    /* JADX WARN: Type inference failed for: r9v1, types: [io.realm.RealmList] */
    /* JADX WARN: Type inference failed for: r9v2, types: [io.realm.RealmList] */
    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$shippingCostConfig(RealmList<ShippingCostConfig> realmList) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm() || this.proxyState.getExcludeFields$realm().contains("shippingCostConfig")) {
                return;
            }
            if (realmList != 0 && !realmList.isManaged()) {
                Realm realm = (Realm) this.proxyState.getRealm$realm();
                realmList = new RealmList();
                for (ShippingCostConfig item : realmList) {
                    if (item == null || RealmObject.isManaged(item)) {
                        realmList.add(item);
                    } else {
                        realmList.add(realm.copyToRealm(item));
                    }
                }
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        OsList osList = this.proxyState.getRow$realm().getModelList(this.columnInfo.shippingCostConfigIndex);
        int i = 0;
        if (realmList != 0 && realmList.size() == osList.size()) {
            int objects = realmList.size();
            while (i < objects) {
                RealmModel realmModel = (ShippingCostConfig) realmList.get(i);
                this.proxyState.checkValidObject(realmModel);
                osList.setRow(i, ((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex());
                i++;
            }
            return;
        }
        osList.removeAll();
        if (realmList == 0) {
            return;
        }
        int objects2 = realmList.size();
        while (i < objects2) {
            RealmModel realmModel2 = (ShippingCostConfig) realmList.get(i);
            this.proxyState.checkValidObject(realmModel2);
            osList.addRow(((RealmObjectProxy) realmModel2).realmGet$proxyState().getRow$realm().getIndex());
            i++;
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public int realmGet$basketCount() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.basketCountIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$basketCount(int value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setLong(this.columnInfo.basketCountIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setLong(this.columnInfo.basketCountIndex, value);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public int realmGet$rejectReasonId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.rejectReasonIdIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$rejectReasonId(int value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setLong(this.columnInfo.rejectReasonIdIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setLong(this.columnInfo.rejectReasonIdIndex, value);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public boolean realmGet$tupleIsSyncedWithServer() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.tupleIsSyncedWithServerIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$tupleIsSyncedWithServer(boolean value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setBoolean(this.columnInfo.tupleIsSyncedWithServerIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setBoolean(this.columnInfo.tupleIsSyncedWithServerIndex, value);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$signature() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.signatureIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$signature(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.signatureIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.signatureIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.signatureIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.signatureIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public String realmGet$confirmTime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.confirmTimeIndex);
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$confirmTime(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.confirmTimeIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.confirmTimeIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.confirmTimeIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.confirmTimeIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public LatLong realmGet$confirmLocation() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.confirmLocationIndex)) {
            return null;
        }
        return (LatLong) this.proxyState.getRealm$realm().get(LatLong.class, this.proxyState.getRow$realm().getLink(this.columnInfo.confirmLocationIndex), false, Collections.emptyList());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$confirmLocation(LatLong latLong) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            RealmModel realmModel = latLong;
            if (this.proxyState.getExcludeFields$realm().contains("confirmLocation")) {
                return;
            }
            if (latLong != 0) {
                boolean zIsManaged = RealmObject.isManaged(latLong);
                realmModel = latLong;
                if (!zIsManaged) {
                    realmModel = (LatLong) ((Realm) this.proxyState.getRealm$realm()).copyToRealm(latLong);
                }
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (realmModel == null) {
                row$realm.nullifyLink(this.columnInfo.confirmLocationIndex);
                return;
            } else {
                this.proxyState.checkValidObject(realmModel);
                row$realm.getTable().setLink(this.columnInfo.confirmLocationIndex, row$realm.getIndex(), ((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex(), true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (latLong == 0) {
            this.proxyState.getRow$realm().nullifyLink(this.columnInfo.confirmLocationIndex);
        } else {
            this.proxyState.checkValidObject(latLong);
            this.proxyState.getRow$realm().setLink(this.columnInfo.confirmLocationIndex, ((RealmObjectProxy) latLong).realmGet$proxyState().getRow$realm().getIndex());
        }
    }

    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public RealmList<SerialItems> realmGet$returnedProducts() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.returnedProductsRealmList != null) {
            return this.returnedProductsRealmList;
        }
        OsList osList = this.proxyState.getRow$realm().getModelList(this.columnInfo.returnedProductsIndex);
        this.returnedProductsRealmList = new RealmList<>(SerialItems.class, osList, this.proxyState.getRealm$realm());
        return this.returnedProductsRealmList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [io.realm.RealmList, io.realm.RealmList<com.digikala.dms.model.design.SerialItems>] */
    /* JADX WARN: Type inference failed for: r9v1, types: [io.realm.RealmList] */
    /* JADX WARN: Type inference failed for: r9v2, types: [io.realm.RealmList] */
    @Override // com.digikala.dms.model.domain.Shipment, io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface
    public void realmSet$returnedProducts(RealmList<SerialItems> realmList) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm() || this.proxyState.getExcludeFields$realm().contains("returnedProducts")) {
                return;
            }
            if (realmList != 0 && !realmList.isManaged()) {
                Realm realm = (Realm) this.proxyState.getRealm$realm();
                realmList = new RealmList();
                for (SerialItems item : realmList) {
                    if (item == null || RealmObject.isManaged(item)) {
                        realmList.add(item);
                    } else {
                        realmList.add(realm.copyToRealm(item));
                    }
                }
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        OsList osList = this.proxyState.getRow$realm().getModelList(this.columnInfo.returnedProductsIndex);
        int i = 0;
        if (realmList != 0 && realmList.size() == osList.size()) {
            int objects = realmList.size();
            while (i < objects) {
                RealmModel realmModel = (SerialItems) realmList.get(i);
                this.proxyState.checkValidObject(realmModel);
                osList.setRow(i, ((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex());
                i++;
            }
            return;
        }
        osList.removeAll();
        if (realmList == 0) {
            return;
        }
        int objects2 = realmList.size();
        while (i < objects2) {
            RealmModel realmModel2 = (SerialItems) realmList.get(i);
            this.proxyState.checkValidObject(realmModel2);
            osList.addRow(((RealmObjectProxy) realmModel2).realmGet$proxyState().getRow$realm().getIndex());
            i++;
        }
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 31, 0);
        builder.addPersistedProperty(Shipment.COLUMN_ORDER_ID, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("podCode", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("cardTypeId", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("cardNumber", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("comment", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("invoiceId", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("isFmcg", RealmFieldType.BOOLEAN, false, false, false);
        builder.addPersistedProperty("autoRefundable", RealmFieldType.BOOLEAN, false, false, false);
        builder.addPersistedProperty("priority", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("paymentStatus", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("payableAmount", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("remainingAmount", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("customerName", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("customerPhoneNo", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("recipientName", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("recipientPhoneNo", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("deliveryTime", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("deliveryAddress", RealmFieldType.STRING, false, false, false);
        builder.addPersistedLinkProperty("deliveryLatLong", RealmFieldType.OBJECT, com_digikala_dms_model_domain_LatLongRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        builder.addPersistedProperty("PaymentMethod", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("FinalPayableAmount", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("status", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedLinkProperty("basketItems", RealmFieldType.LIST, com_digikala_dms_model_domain_BasketItemsRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        builder.addPersistedLinkProperty("shippingCostConfig", RealmFieldType.LIST, com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        builder.addPersistedProperty("basketCount", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("rejectReasonId", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(Shipment.COLUMN_TUPLE_IS_SYNCED_WITH_SERVER, RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty("signature", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("confirmTime", RealmFieldType.STRING, false, false, false);
        builder.addPersistedLinkProperty("confirmLocation", RealmFieldType.OBJECT, com_digikala_dms_model_domain_LatLongRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        builder.addPersistedLinkProperty("returnedProducts", RealmFieldType.LIST, com_digikala_dms_model_design_SerialItemsRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static ShipmentColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new ShipmentColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static Shipment createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws JSONException {
        List<String> excludeFields = new ArrayList<>(5);
        if (json.has("deliveryLatLong")) {
            excludeFields.add("deliveryLatLong");
        }
        if (json.has("basketItems")) {
            excludeFields.add("basketItems");
        }
        if (json.has("shippingCostConfig")) {
            excludeFields.add("shippingCostConfig");
        }
        if (json.has("confirmLocation")) {
            excludeFields.add("confirmLocation");
        }
        if (json.has("returnedProducts")) {
            excludeFields.add("returnedProducts");
        }
        Shipment obj = (Shipment) realm.createObjectInternal(Shipment.class, true, excludeFields);
        Shipment objProxy = obj;
        if (json.has(Shipment.COLUMN_ORDER_ID)) {
            if (json.isNull(Shipment.COLUMN_ORDER_ID)) {
                objProxy.realmSet$orderId(null);
            } else {
                objProxy.realmSet$orderId(json.getString(Shipment.COLUMN_ORDER_ID));
            }
        }
        if (json.has("podCode")) {
            if (json.isNull("podCode")) {
                objProxy.realmSet$podCode(null);
            } else {
                objProxy.realmSet$podCode(json.getString("podCode"));
            }
        }
        if (json.has("cardTypeId")) {
            if (json.isNull("cardTypeId")) {
                objProxy.realmSet$cardTypeId(null);
            } else {
                objProxy.realmSet$cardTypeId(json.getString("cardTypeId"));
            }
        }
        if (json.has("cardNumber")) {
            if (json.isNull("cardNumber")) {
                objProxy.realmSet$cardNumber(null);
            } else {
                objProxy.realmSet$cardNumber(json.getString("cardNumber"));
            }
        }
        if (json.has("comment")) {
            if (json.isNull("comment")) {
                objProxy.realmSet$comment(null);
            } else {
                objProxy.realmSet$comment(json.getString("comment"));
            }
        }
        if (json.has("invoiceId")) {
            if (json.isNull("invoiceId")) {
                objProxy.realmSet$invoiceId(null);
            } else {
                objProxy.realmSet$invoiceId(json.getString("invoiceId"));
            }
        }
        if (json.has("isFmcg")) {
            if (json.isNull("isFmcg")) {
                objProxy.realmSet$isFmcg(null);
            } else {
                objProxy.realmSet$isFmcg(Boolean.valueOf(json.getBoolean("isFmcg")));
            }
        }
        if (json.has("autoRefundable")) {
            if (json.isNull("autoRefundable")) {
                objProxy.realmSet$autoRefundable(null);
            } else {
                objProxy.realmSet$autoRefundable(Boolean.valueOf(json.getBoolean("autoRefundable")));
            }
        }
        if (json.has("priority")) {
            if (json.isNull("priority")) {
                objProxy.realmSet$priority(null);
            } else {
                objProxy.realmSet$priority(json.getString("priority"));
            }
        }
        if (json.has("paymentStatus")) {
            if (json.isNull("paymentStatus")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'paymentStatus' to null.");
            }
            objProxy.realmSet$paymentStatus(json.getInt("paymentStatus"));
        }
        if (json.has("payableAmount")) {
            if (json.isNull("payableAmount")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'payableAmount' to null.");
            }
            objProxy.realmSet$payableAmount(json.getLong("payableAmount"));
        }
        if (json.has("remainingAmount")) {
            if (json.isNull("remainingAmount")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'remainingAmount' to null.");
            }
            objProxy.realmSet$remainingAmount(json.getLong("remainingAmount"));
        }
        if (json.has("customerName")) {
            if (json.isNull("customerName")) {
                objProxy.realmSet$customerName(null);
            } else {
                objProxy.realmSet$customerName(json.getString("customerName"));
            }
        }
        if (json.has("customerPhoneNo")) {
            if (json.isNull("customerPhoneNo")) {
                objProxy.realmSet$customerPhoneNo(null);
            } else {
                objProxy.realmSet$customerPhoneNo(json.getString("customerPhoneNo"));
            }
        }
        if (json.has("recipientName")) {
            if (json.isNull("recipientName")) {
                objProxy.realmSet$recipientName(null);
            } else {
                objProxy.realmSet$recipientName(json.getString("recipientName"));
            }
        }
        if (json.has("recipientPhoneNo")) {
            if (json.isNull("recipientPhoneNo")) {
                objProxy.realmSet$recipientPhoneNo(null);
            } else {
                objProxy.realmSet$recipientPhoneNo(json.getString("recipientPhoneNo"));
            }
        }
        if (json.has("deliveryTime")) {
            if (json.isNull("deliveryTime")) {
                objProxy.realmSet$deliveryTime(null);
            } else {
                objProxy.realmSet$deliveryTime(json.getString("deliveryTime"));
            }
        }
        if (json.has("deliveryAddress")) {
            if (json.isNull("deliveryAddress")) {
                objProxy.realmSet$deliveryAddress(null);
            } else {
                objProxy.realmSet$deliveryAddress(json.getString("deliveryAddress"));
            }
        }
        if (json.has("deliveryLatLong")) {
            if (json.isNull("deliveryLatLong")) {
                objProxy.realmSet$deliveryLatLong(null);
            } else {
                LatLong deliveryLatLongObj = com_digikala_dms_model_domain_LatLongRealmProxy.createOrUpdateUsingJsonObject(realm, json.getJSONObject("deliveryLatLong"), update);
                objProxy.realmSet$deliveryLatLong(deliveryLatLongObj);
            }
        }
        if (json.has("PaymentMethod")) {
            if (json.isNull("PaymentMethod")) {
                objProxy.realmSet$PaymentMethod(null);
            } else {
                objProxy.realmSet$PaymentMethod(json.getString("PaymentMethod"));
            }
        }
        if (json.has("FinalPayableAmount")) {
            if (json.isNull("FinalPayableAmount")) {
                objProxy.realmSet$FinalPayableAmount(null);
            } else {
                objProxy.realmSet$FinalPayableAmount(Long.valueOf(json.getLong("FinalPayableAmount")));
            }
        }
        if (json.has("status")) {
            if (json.isNull("status")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'status' to null.");
            }
            objProxy.realmSet$status(json.getInt("status"));
        }
        int i = 0;
        if (json.has("basketItems")) {
            if (json.isNull("basketItems")) {
                objProxy.realmSet$basketItems(null);
            } else {
                objProxy.realmGet$basketItems().clear();
                JSONArray array = json.getJSONArray("basketItems");
                for (int i2 = 0; i2 < array.length(); i2++) {
                    BasketItems item = com_digikala_dms_model_domain_BasketItemsRealmProxy.createOrUpdateUsingJsonObject(realm, array.getJSONObject(i2), update);
                    objProxy.realmGet$basketItems().add(item);
                }
            }
        }
        if (json.has("shippingCostConfig")) {
            if (json.isNull("shippingCostConfig")) {
                objProxy.realmSet$shippingCostConfig(null);
            } else {
                objProxy.realmGet$shippingCostConfig().clear();
                JSONArray array2 = json.getJSONArray("shippingCostConfig");
                for (int i3 = 0; i3 < array2.length(); i3++) {
                    ShippingCostConfig item2 = com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.createOrUpdateUsingJsonObject(realm, array2.getJSONObject(i3), update);
                    objProxy.realmGet$shippingCostConfig().add(item2);
                }
            }
        }
        if (json.has("basketCount")) {
            if (json.isNull("basketCount")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'basketCount' to null.");
            }
            objProxy.realmSet$basketCount(json.getInt("basketCount"));
        }
        if (json.has("rejectReasonId")) {
            if (json.isNull("rejectReasonId")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'rejectReasonId' to null.");
            }
            objProxy.realmSet$rejectReasonId(json.getInt("rejectReasonId"));
        }
        if (json.has(Shipment.COLUMN_TUPLE_IS_SYNCED_WITH_SERVER)) {
            if (json.isNull(Shipment.COLUMN_TUPLE_IS_SYNCED_WITH_SERVER)) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'tupleIsSyncedWithServer' to null.");
            }
            objProxy.realmSet$tupleIsSyncedWithServer(json.getBoolean(Shipment.COLUMN_TUPLE_IS_SYNCED_WITH_SERVER));
        }
        if (json.has("signature")) {
            if (json.isNull("signature")) {
                objProxy.realmSet$signature(null);
            } else {
                objProxy.realmSet$signature(json.getString("signature"));
            }
        }
        if (json.has("confirmTime")) {
            if (json.isNull("confirmTime")) {
                objProxy.realmSet$confirmTime(null);
            } else {
                objProxy.realmSet$confirmTime(json.getString("confirmTime"));
            }
        }
        if (json.has("confirmLocation")) {
            if (json.isNull("confirmLocation")) {
                objProxy.realmSet$confirmLocation(null);
            } else {
                LatLong confirmLocationObj = com_digikala_dms_model_domain_LatLongRealmProxy.createOrUpdateUsingJsonObject(realm, json.getJSONObject("confirmLocation"), update);
                objProxy.realmSet$confirmLocation(confirmLocationObj);
            }
        }
        if (json.has("returnedProducts")) {
            if (json.isNull("returnedProducts")) {
                objProxy.realmSet$returnedProducts(null);
            } else {
                objProxy.realmGet$returnedProducts().clear();
                JSONArray array3 = json.getJSONArray("returnedProducts");
                while (true) {
                    int i4 = i;
                    int i5 = array3.length();
                    if (i4 >= i5) {
                        break;
                    }
                    SerialItems item3 = com_digikala_dms_model_design_SerialItemsRealmProxy.createOrUpdateUsingJsonObject(realm, array3.getJSONObject(i4), update);
                    objProxy.realmGet$returnedProducts().add(item3);
                    i = i4 + 1;
                }
            }
        }
        return obj;
    }

    @TargetApi(11)
    public static Shipment createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        Shipment obj = new Shipment();
        Shipment objProxy = obj;
        reader.beginObject();
        while (reader.hasNext()) {
            String name = reader.nextName();
            if (name.equals(Shipment.COLUMN_ORDER_ID)) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$orderId(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$orderId(null);
                }
            } else if (name.equals("podCode")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$podCode(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$podCode(null);
                }
            } else if (name.equals("cardTypeId")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$cardTypeId(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$cardTypeId(null);
                }
            } else if (name.equals("cardNumber")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$cardNumber(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$cardNumber(null);
                }
            } else if (name.equals("comment")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$comment(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$comment(null);
                }
            } else if (name.equals("invoiceId")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$invoiceId(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$invoiceId(null);
                }
            } else if (name.equals("isFmcg")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$isFmcg(Boolean.valueOf(reader.nextBoolean()));
                } else {
                    reader.skipValue();
                    objProxy.realmSet$isFmcg(null);
                }
            } else if (name.equals("autoRefundable")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$autoRefundable(Boolean.valueOf(reader.nextBoolean()));
                } else {
                    reader.skipValue();
                    objProxy.realmSet$autoRefundable(null);
                }
            } else if (name.equals("priority")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$priority(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$priority(null);
                }
            } else if (name.equals("paymentStatus")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$paymentStatus(reader.nextInt());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'paymentStatus' to null.");
                }
            } else if (name.equals("payableAmount")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$payableAmount(reader.nextLong());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'payableAmount' to null.");
                }
            } else if (name.equals("remainingAmount")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$remainingAmount(reader.nextLong());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'remainingAmount' to null.");
                }
            } else if (name.equals("customerName")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$customerName(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$customerName(null);
                }
            } else if (name.equals("customerPhoneNo")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$customerPhoneNo(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$customerPhoneNo(null);
                }
            } else if (name.equals("recipientName")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$recipientName(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$recipientName(null);
                }
            } else if (name.equals("recipientPhoneNo")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$recipientPhoneNo(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$recipientPhoneNo(null);
                }
            } else if (name.equals("deliveryTime")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$deliveryTime(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$deliveryTime(null);
                }
            } else if (name.equals("deliveryAddress")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$deliveryAddress(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$deliveryAddress(null);
                }
            } else if (name.equals("deliveryLatLong")) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$deliveryLatLong(null);
                } else {
                    LatLong deliveryLatLongObj = com_digikala_dms_model_domain_LatLongRealmProxy.createUsingJsonStream(realm, reader);
                    objProxy.realmSet$deliveryLatLong(deliveryLatLongObj);
                }
            } else if (name.equals("PaymentMethod")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$PaymentMethod(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$PaymentMethod(null);
                }
            } else if (name.equals("FinalPayableAmount")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$FinalPayableAmount(Long.valueOf(reader.nextLong()));
                } else {
                    reader.skipValue();
                    objProxy.realmSet$FinalPayableAmount(null);
                }
            } else if (name.equals("status")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$status(reader.nextInt());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'status' to null.");
                }
            } else if (name.equals("basketItems")) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$basketItems(null);
                } else {
                    objProxy.realmSet$basketItems(new RealmList<>());
                    reader.beginArray();
                    while (reader.hasNext()) {
                        BasketItems item = com_digikala_dms_model_domain_BasketItemsRealmProxy.createUsingJsonStream(realm, reader);
                        objProxy.realmGet$basketItems().add(item);
                    }
                    reader.endArray();
                }
            } else if (name.equals("shippingCostConfig")) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$shippingCostConfig(null);
                } else {
                    objProxy.realmSet$shippingCostConfig(new RealmList<>());
                    reader.beginArray();
                    while (reader.hasNext()) {
                        ShippingCostConfig item2 = com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.createUsingJsonStream(realm, reader);
                        objProxy.realmGet$shippingCostConfig().add(item2);
                    }
                    reader.endArray();
                }
            } else if (name.equals("basketCount")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$basketCount(reader.nextInt());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'basketCount' to null.");
                }
            } else if (name.equals("rejectReasonId")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$rejectReasonId(reader.nextInt());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'rejectReasonId' to null.");
                }
            } else if (name.equals(Shipment.COLUMN_TUPLE_IS_SYNCED_WITH_SERVER)) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$tupleIsSyncedWithServer(reader.nextBoolean());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'tupleIsSyncedWithServer' to null.");
                }
            } else if (name.equals("signature")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$signature(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$signature(null);
                }
            } else if (name.equals("confirmTime")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$confirmTime(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$confirmTime(null);
                }
            } else if (name.equals("confirmLocation")) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$confirmLocation(null);
                } else {
                    LatLong confirmLocationObj = com_digikala_dms_model_domain_LatLongRealmProxy.createUsingJsonStream(realm, reader);
                    objProxy.realmSet$confirmLocation(confirmLocationObj);
                }
            } else if (name.equals("returnedProducts")) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$returnedProducts(null);
                } else {
                    objProxy.realmSet$returnedProducts(new RealmList<>());
                    reader.beginArray();
                    while (reader.hasNext()) {
                        SerialItems item3 = com_digikala_dms_model_design_SerialItemsRealmProxy.createUsingJsonStream(realm, reader);
                        objProxy.realmGet$returnedProducts().add(item3);
                    }
                    reader.endArray();
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return (Shipment) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Shipment copyOrUpdate(Realm realm, Shipment shipment, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        if ((shipment instanceof RealmObjectProxy) && ((RealmObjectProxy) shipment).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) shipment).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return shipment;
            }
        }
        BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(shipment);
        if (realmModel != null) {
            return (Shipment) realmModel;
        }
        return copy(realm, shipment, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Shipment copy(Realm realm, Shipment newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel == null) {
            Shipment shipment = (Shipment) realm.createObjectInternal(Shipment.class, false, Collections.emptyList());
            cache.put(newObject, (RealmObjectProxy) shipment);
            Shipment realmObjectSource = newObject;
            Shipment realmObjectCopy = shipment;
            realmObjectCopy.realmSet$orderId(realmObjectSource.realmGet$orderId());
            realmObjectCopy.realmSet$podCode(realmObjectSource.realmGet$podCode());
            realmObjectCopy.realmSet$cardTypeId(realmObjectSource.realmGet$cardTypeId());
            realmObjectCopy.realmSet$cardNumber(realmObjectSource.realmGet$cardNumber());
            realmObjectCopy.realmSet$comment(realmObjectSource.realmGet$comment());
            realmObjectCopy.realmSet$invoiceId(realmObjectSource.realmGet$invoiceId());
            realmObjectCopy.realmSet$isFmcg(realmObjectSource.realmGet$isFmcg());
            realmObjectCopy.realmSet$autoRefundable(realmObjectSource.realmGet$autoRefundable());
            realmObjectCopy.realmSet$priority(realmObjectSource.realmGet$priority());
            realmObjectCopy.realmSet$paymentStatus(realmObjectSource.realmGet$paymentStatus());
            realmObjectCopy.realmSet$payableAmount(realmObjectSource.realmGet$payableAmount());
            realmObjectCopy.realmSet$remainingAmount(realmObjectSource.realmGet$remainingAmount());
            realmObjectCopy.realmSet$customerName(realmObjectSource.realmGet$customerName());
            realmObjectCopy.realmSet$customerPhoneNo(realmObjectSource.realmGet$customerPhoneNo());
            realmObjectCopy.realmSet$recipientName(realmObjectSource.realmGet$recipientName());
            realmObjectCopy.realmSet$recipientPhoneNo(realmObjectSource.realmGet$recipientPhoneNo());
            realmObjectCopy.realmSet$deliveryTime(realmObjectSource.realmGet$deliveryTime());
            realmObjectCopy.realmSet$deliveryAddress(realmObjectSource.realmGet$deliveryAddress());
            LatLong deliveryLatLongObj = realmObjectSource.realmGet$deliveryLatLong();
            if (deliveryLatLongObj == null) {
                realmObjectCopy.realmSet$deliveryLatLong(null);
            } else {
                LatLong cachedeliveryLatLong = (LatLong) cache.get(deliveryLatLongObj);
                if (cachedeliveryLatLong != null) {
                    realmObjectCopy.realmSet$deliveryLatLong(cachedeliveryLatLong);
                } else {
                    realmObjectCopy.realmSet$deliveryLatLong(com_digikala_dms_model_domain_LatLongRealmProxy.copyOrUpdate(realm, deliveryLatLongObj, update, cache));
                }
            }
            realmObjectCopy.realmSet$PaymentMethod(realmObjectSource.realmGet$PaymentMethod());
            realmObjectCopy.realmSet$FinalPayableAmount(realmObjectSource.realmGet$FinalPayableAmount());
            realmObjectCopy.realmSet$status(realmObjectSource.realmGet$status());
            RealmList<BasketItems> basketItemsList = realmObjectSource.realmGet$basketItems();
            if (basketItemsList != null) {
                RealmList<BasketItems> basketItemsRealmList = realmObjectCopy.realmGet$basketItems();
                basketItemsRealmList.clear();
                for (int i = 0; i < basketItemsList.size(); i++) {
                    BasketItems basketItemsItem = basketItemsList.get(i);
                    BasketItems cachebasketItems = (BasketItems) cache.get(basketItemsItem);
                    if (cachebasketItems != null) {
                        basketItemsRealmList.add(cachebasketItems);
                    } else {
                        basketItemsRealmList.add(com_digikala_dms_model_domain_BasketItemsRealmProxy.copyOrUpdate(realm, basketItemsItem, update, cache));
                    }
                }
            }
            RealmList<ShippingCostConfig> shippingCostConfigList = realmObjectSource.realmGet$shippingCostConfig();
            if (shippingCostConfigList != null) {
                RealmList<ShippingCostConfig> shippingCostConfigRealmList = realmObjectCopy.realmGet$shippingCostConfig();
                shippingCostConfigRealmList.clear();
                for (int i2 = 0; i2 < shippingCostConfigList.size(); i2++) {
                    ShippingCostConfig shippingCostConfigItem = shippingCostConfigList.get(i2);
                    ShippingCostConfig cacheshippingCostConfig = (ShippingCostConfig) cache.get(shippingCostConfigItem);
                    if (cacheshippingCostConfig != null) {
                        shippingCostConfigRealmList.add(cacheshippingCostConfig);
                    } else {
                        shippingCostConfigRealmList.add(com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.copyOrUpdate(realm, shippingCostConfigItem, update, cache));
                    }
                }
            }
            realmObjectCopy.realmSet$basketCount(realmObjectSource.realmGet$basketCount());
            realmObjectCopy.realmSet$rejectReasonId(realmObjectSource.realmGet$rejectReasonId());
            realmObjectCopy.realmSet$tupleIsSyncedWithServer(realmObjectSource.realmGet$tupleIsSyncedWithServer());
            realmObjectCopy.realmSet$signature(realmObjectSource.realmGet$signature());
            realmObjectCopy.realmSet$confirmTime(realmObjectSource.realmGet$confirmTime());
            LatLong confirmLocationObj = realmObjectSource.realmGet$confirmLocation();
            if (confirmLocationObj == null) {
                realmObjectCopy.realmSet$confirmLocation(null);
            } else {
                LatLong cacheconfirmLocation = (LatLong) cache.get(confirmLocationObj);
                if (cacheconfirmLocation != null) {
                    realmObjectCopy.realmSet$confirmLocation(cacheconfirmLocation);
                } else {
                    realmObjectCopy.realmSet$confirmLocation(com_digikala_dms_model_domain_LatLongRealmProxy.copyOrUpdate(realm, confirmLocationObj, update, cache));
                }
            }
            RealmList<SerialItems> returnedProductsList = realmObjectSource.realmGet$returnedProducts();
            if (returnedProductsList != null) {
                RealmList<SerialItems> returnedProductsRealmList = realmObjectCopy.realmGet$returnedProducts();
                returnedProductsRealmList.clear();
                int i3 = 0;
                while (true) {
                    int i4 = i3;
                    if (i4 >= returnedProductsList.size()) {
                        break;
                    }
                    SerialItems returnedProductsItem = returnedProductsList.get(i4);
                    SerialItems cachereturnedProducts = (SerialItems) cache.get(returnedProductsItem);
                    if (cachereturnedProducts == null) {
                        returnedProductsRealmList.add(com_digikala_dms_model_design_SerialItemsRealmProxy.copyOrUpdate(realm, returnedProductsItem, update, cache));
                    } else {
                        returnedProductsRealmList.add(cachereturnedProducts);
                    }
                    i3 = i4 + 1;
                }
            }
            return shipment;
        }
        return (Shipment) realmModel;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, Shipment shipment, Map<RealmModel, Long> cache) {
        long rowIndex;
        long rowIndex2;
        if (!(shipment instanceof RealmObjectProxy) || ((RealmObjectProxy) shipment).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) shipment).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table = realm.getTable(Shipment.class);
            long tableNativePtr = table.getNativePtr();
            ShipmentColumnInfo columnInfo = (ShipmentColumnInfo) realm.getSchema().getColumnInfo(Shipment.class);
            long rowIndex3 = OsObject.createRow(table);
            cache.put(shipment, Long.valueOf(rowIndex3));
            String realmGet$orderId = shipment.realmGet$orderId();
            if (realmGet$orderId != null) {
                rowIndex = rowIndex3;
                Table.nativeSetString(tableNativePtr, columnInfo.orderIdIndex, rowIndex3, realmGet$orderId, false);
            } else {
                rowIndex = rowIndex3;
            }
            String realmGet$podCode = shipment.realmGet$podCode();
            if (realmGet$podCode != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.podCodeIndex, rowIndex, realmGet$podCode, false);
            }
            String realmGet$cardTypeId = shipment.realmGet$cardTypeId();
            if (realmGet$cardTypeId != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.cardTypeIdIndex, rowIndex, realmGet$cardTypeId, false);
            }
            String realmGet$cardNumber = shipment.realmGet$cardNumber();
            if (realmGet$cardNumber != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.cardNumberIndex, rowIndex, realmGet$cardNumber, false);
            }
            String realmGet$comment = shipment.realmGet$comment();
            if (realmGet$comment != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.commentIndex, rowIndex, realmGet$comment, false);
            }
            String realmGet$invoiceId = shipment.realmGet$invoiceId();
            if (realmGet$invoiceId != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.invoiceIdIndex, rowIndex, realmGet$invoiceId, false);
            }
            Boolean realmGet$isFmcg = shipment.realmGet$isFmcg();
            if (realmGet$isFmcg != null) {
                Table.nativeSetBoolean(tableNativePtr, columnInfo.isFmcgIndex, rowIndex, realmGet$isFmcg.booleanValue(), false);
            }
            Boolean realmGet$autoRefundable = shipment.realmGet$autoRefundable();
            if (realmGet$autoRefundable != null) {
                Table.nativeSetBoolean(tableNativePtr, columnInfo.autoRefundableIndex, rowIndex, realmGet$autoRefundable.booleanValue(), false);
            }
            String realmGet$priority = shipment.realmGet$priority();
            if (realmGet$priority != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.priorityIndex, rowIndex, realmGet$priority, false);
            }
            long j = rowIndex;
            Table.nativeSetLong(tableNativePtr, columnInfo.paymentStatusIndex, j, shipment.realmGet$paymentStatus(), false);
            Table.nativeSetLong(tableNativePtr, columnInfo.payableAmountIndex, j, shipment.realmGet$payableAmount(), false);
            Table.nativeSetLong(tableNativePtr, columnInfo.remainingAmountIndex, j, shipment.realmGet$remainingAmount(), false);
            String realmGet$customerName = shipment.realmGet$customerName();
            if (realmGet$customerName != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.customerNameIndex, rowIndex, realmGet$customerName, false);
            }
            String realmGet$customerPhoneNo = shipment.realmGet$customerPhoneNo();
            if (realmGet$customerPhoneNo != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.customerPhoneNoIndex, rowIndex, realmGet$customerPhoneNo, false);
            }
            String realmGet$recipientName = shipment.realmGet$recipientName();
            if (realmGet$recipientName != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.recipientNameIndex, rowIndex, realmGet$recipientName, false);
            }
            String realmGet$recipientPhoneNo = shipment.realmGet$recipientPhoneNo();
            if (realmGet$recipientPhoneNo != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.recipientPhoneNoIndex, rowIndex, realmGet$recipientPhoneNo, false);
            }
            String realmGet$deliveryTime = shipment.realmGet$deliveryTime();
            if (realmGet$deliveryTime != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.deliveryTimeIndex, rowIndex, realmGet$deliveryTime, false);
            }
            String realmGet$deliveryAddress = shipment.realmGet$deliveryAddress();
            if (realmGet$deliveryAddress != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.deliveryAddressIndex, rowIndex, realmGet$deliveryAddress, false);
            }
            LatLong deliveryLatLongObj = shipment.realmGet$deliveryLatLong();
            if (deliveryLatLongObj != null) {
                Long cachedeliveryLatLong = cache.get(deliveryLatLongObj);
                if (cachedeliveryLatLong == null) {
                    cachedeliveryLatLong = Long.valueOf(com_digikala_dms_model_domain_LatLongRealmProxy.insert(realm, deliveryLatLongObj, cache));
                }
                Table.nativeSetLink(tableNativePtr, columnInfo.deliveryLatLongIndex, rowIndex, cachedeliveryLatLong.longValue(), false);
            }
            String realmGet$PaymentMethod = shipment.realmGet$PaymentMethod();
            if (realmGet$PaymentMethod != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.PaymentMethodIndex, rowIndex, realmGet$PaymentMethod, false);
            }
            Number realmGet$FinalPayableAmount = shipment.realmGet$FinalPayableAmount();
            if (realmGet$FinalPayableAmount != null) {
                Table.nativeSetLong(tableNativePtr, columnInfo.FinalPayableAmountIndex, rowIndex, realmGet$FinalPayableAmount.longValue(), false);
            }
            Table.nativeSetLong(tableNativePtr, columnInfo.statusIndex, rowIndex, shipment.realmGet$status(), false);
            RealmList<BasketItems> basketItemsList = shipment.realmGet$basketItems();
            if (basketItemsList != null) {
                rowIndex2 = rowIndex;
                OsList basketItemsOsList = new OsList(table.getUncheckedRow(rowIndex2), columnInfo.basketItemsIndex);
                for (BasketItems basketItemsItem : basketItemsList) {
                    Long cacheItemIndexbasketItems = cache.get(basketItemsItem);
                    if (cacheItemIndexbasketItems == null) {
                        cacheItemIndexbasketItems = Long.valueOf(com_digikala_dms_model_domain_BasketItemsRealmProxy.insert(realm, basketItemsItem, cache));
                    }
                    basketItemsOsList.addRow(cacheItemIndexbasketItems.longValue());
                }
            } else {
                rowIndex2 = rowIndex;
            }
            RealmList<ShippingCostConfig> shippingCostConfigList = shipment.realmGet$shippingCostConfig();
            if (shippingCostConfigList != null) {
                OsList shippingCostConfigOsList = new OsList(table.getUncheckedRow(rowIndex2), columnInfo.shippingCostConfigIndex);
                for (ShippingCostConfig shippingCostConfigItem : shippingCostConfigList) {
                    Long cacheItemIndexshippingCostConfig = cache.get(shippingCostConfigItem);
                    if (cacheItemIndexshippingCostConfig == null) {
                        cacheItemIndexshippingCostConfig = Long.valueOf(com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.insert(realm, shippingCostConfigItem, cache));
                    }
                    shippingCostConfigOsList.addRow(cacheItemIndexshippingCostConfig.longValue());
                }
            }
            long rowIndex4 = rowIndex2;
            Table.nativeSetLong(tableNativePtr, columnInfo.basketCountIndex, rowIndex2, shipment.realmGet$basketCount(), false);
            Table.nativeSetLong(tableNativePtr, columnInfo.rejectReasonIdIndex, rowIndex4, shipment.realmGet$rejectReasonId(), false);
            Table.nativeSetBoolean(tableNativePtr, columnInfo.tupleIsSyncedWithServerIndex, rowIndex4, shipment.realmGet$tupleIsSyncedWithServer(), false);
            String realmGet$signature = shipment.realmGet$signature();
            if (realmGet$signature != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.signatureIndex, rowIndex4, realmGet$signature, false);
            }
            String realmGet$confirmTime = shipment.realmGet$confirmTime();
            if (realmGet$confirmTime != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.confirmTimeIndex, rowIndex4, realmGet$confirmTime, false);
            }
            LatLong confirmLocationObj = shipment.realmGet$confirmLocation();
            if (confirmLocationObj != null) {
                Long cacheconfirmLocation = cache.get(confirmLocationObj);
                if (cacheconfirmLocation == null) {
                    cacheconfirmLocation = Long.valueOf(com_digikala_dms_model_domain_LatLongRealmProxy.insert(realm, confirmLocationObj, cache));
                }
                Table.nativeSetLink(tableNativePtr, columnInfo.confirmLocationIndex, rowIndex4, cacheconfirmLocation.longValue(), false);
            }
            RealmList<SerialItems> returnedProductsList = shipment.realmGet$returnedProducts();
            if (returnedProductsList != null) {
                OsList returnedProductsOsList = new OsList(table.getUncheckedRow(rowIndex4), columnInfo.returnedProductsIndex);
                for (SerialItems returnedProductsItem : returnedProductsList) {
                    Long cacheItemIndexreturnedProducts = cache.get(returnedProductsItem);
                    if (cacheItemIndexreturnedProducts == null) {
                        cacheItemIndexreturnedProducts = Long.valueOf(com_digikala_dms_model_design_SerialItemsRealmProxy.insert(realm, returnedProductsItem, cache));
                    }
                    returnedProductsOsList.addRow(cacheItemIndexreturnedProducts.longValue());
                }
                return rowIndex4;
            }
            return rowIndex4;
        }
        return ((RealmObjectProxy) shipment).realmGet$proxyState().getRow$realm().getIndex();
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        long rowIndex;
        long rowIndex2;
        Realm realm2 = realm;
        Map<RealmModel, Long> map = cache;
        Table table = realm2.getTable(Shipment.class);
        long tableNativePtr = table.getNativePtr();
        ShipmentColumnInfo columnInfo = (ShipmentColumnInfo) realm.getSchema().getColumnInfo(Shipment.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (Shipment) objects.next();
            if (!map.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    map.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex3 = OsObject.createRow(table);
                    map.put(realmModel, Long.valueOf(rowIndex3));
                    String realmGet$orderId = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$orderId();
                    if (realmGet$orderId != null) {
                        rowIndex = rowIndex3;
                        Table.nativeSetString(tableNativePtr, columnInfo.orderIdIndex, rowIndex3, realmGet$orderId, false);
                    } else {
                        rowIndex = rowIndex3;
                    }
                    String realmGet$podCode = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$podCode();
                    if (realmGet$podCode != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.podCodeIndex, rowIndex, realmGet$podCode, false);
                    }
                    String realmGet$cardTypeId = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$cardTypeId();
                    if (realmGet$cardTypeId != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.cardTypeIdIndex, rowIndex, realmGet$cardTypeId, false);
                    }
                    String realmGet$cardNumber = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$cardNumber();
                    if (realmGet$cardNumber != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.cardNumberIndex, rowIndex, realmGet$cardNumber, false);
                    }
                    String realmGet$comment = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$comment();
                    if (realmGet$comment != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.commentIndex, rowIndex, realmGet$comment, false);
                    }
                    String realmGet$invoiceId = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$invoiceId();
                    if (realmGet$invoiceId != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.invoiceIdIndex, rowIndex, realmGet$invoiceId, false);
                    }
                    Boolean realmGet$isFmcg = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$isFmcg();
                    if (realmGet$isFmcg != null) {
                        Table.nativeSetBoolean(tableNativePtr, columnInfo.isFmcgIndex, rowIndex, realmGet$isFmcg.booleanValue(), false);
                    }
                    Boolean realmGet$autoRefundable = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$autoRefundable();
                    if (realmGet$autoRefundable != null) {
                        Table.nativeSetBoolean(tableNativePtr, columnInfo.autoRefundableIndex, rowIndex, realmGet$autoRefundable.booleanValue(), false);
                    }
                    String realmGet$priority = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$priority();
                    if (realmGet$priority != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.priorityIndex, rowIndex, realmGet$priority, false);
                    }
                    long j = rowIndex;
                    Table.nativeSetLong(tableNativePtr, columnInfo.paymentStatusIndex, j, ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$paymentStatus(), false);
                    Table.nativeSetLong(tableNativePtr, columnInfo.payableAmountIndex, j, ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$payableAmount(), false);
                    Table.nativeSetLong(tableNativePtr, columnInfo.remainingAmountIndex, j, ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$remainingAmount(), false);
                    String realmGet$customerName = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$customerName();
                    if (realmGet$customerName != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.customerNameIndex, rowIndex, realmGet$customerName, false);
                    }
                    String realmGet$customerPhoneNo = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$customerPhoneNo();
                    if (realmGet$customerPhoneNo != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.customerPhoneNoIndex, rowIndex, realmGet$customerPhoneNo, false);
                    }
                    String realmGet$recipientName = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$recipientName();
                    if (realmGet$recipientName != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.recipientNameIndex, rowIndex, realmGet$recipientName, false);
                    }
                    String realmGet$recipientPhoneNo = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$recipientPhoneNo();
                    if (realmGet$recipientPhoneNo != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.recipientPhoneNoIndex, rowIndex, realmGet$recipientPhoneNo, false);
                    }
                    String realmGet$deliveryTime = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$deliveryTime();
                    if (realmGet$deliveryTime != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.deliveryTimeIndex, rowIndex, realmGet$deliveryTime, false);
                    }
                    String realmGet$deliveryAddress = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$deliveryAddress();
                    if (realmGet$deliveryAddress != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.deliveryAddressIndex, rowIndex, realmGet$deliveryAddress, false);
                    }
                    LatLong deliveryLatLongObj = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$deliveryLatLong();
                    if (deliveryLatLongObj != null) {
                        Long cachedeliveryLatLong = map.get(deliveryLatLongObj);
                        if (cachedeliveryLatLong == null) {
                            cachedeliveryLatLong = Long.valueOf(com_digikala_dms_model_domain_LatLongRealmProxy.insert(realm2, deliveryLatLongObj, map));
                        }
                        table.setLink(columnInfo.deliveryLatLongIndex, rowIndex, cachedeliveryLatLong.longValue(), false);
                    }
                    String realmGet$PaymentMethod = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$PaymentMethod();
                    if (realmGet$PaymentMethod != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.PaymentMethodIndex, rowIndex, realmGet$PaymentMethod, false);
                    }
                    Number realmGet$FinalPayableAmount = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$FinalPayableAmount();
                    if (realmGet$FinalPayableAmount != null) {
                        Table.nativeSetLong(tableNativePtr, columnInfo.FinalPayableAmountIndex, rowIndex, realmGet$FinalPayableAmount.longValue(), false);
                    }
                    Table.nativeSetLong(tableNativePtr, columnInfo.statusIndex, rowIndex, ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$status(), false);
                    RealmList<BasketItems> basketItemsList = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$basketItems();
                    if (basketItemsList != null) {
                        rowIndex2 = rowIndex;
                        OsList basketItemsOsList = new OsList(table.getUncheckedRow(rowIndex2), columnInfo.basketItemsIndex);
                        for (BasketItems basketItemsItem : basketItemsList) {
                            Long cacheItemIndexbasketItems = map.get(basketItemsItem);
                            if (cacheItemIndexbasketItems == null) {
                                cacheItemIndexbasketItems = Long.valueOf(com_digikala_dms_model_domain_BasketItemsRealmProxy.insert(realm2, basketItemsItem, map));
                            }
                            basketItemsOsList.addRow(cacheItemIndexbasketItems.longValue());
                        }
                    } else {
                        rowIndex2 = rowIndex;
                    }
                    RealmList<ShippingCostConfig> shippingCostConfigList = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$shippingCostConfig();
                    if (shippingCostConfigList != null) {
                        OsList shippingCostConfigOsList = new OsList(table.getUncheckedRow(rowIndex2), columnInfo.shippingCostConfigIndex);
                        for (ShippingCostConfig shippingCostConfigItem : shippingCostConfigList) {
                            Long cacheItemIndexshippingCostConfig = map.get(shippingCostConfigItem);
                            if (cacheItemIndexshippingCostConfig == null) {
                                cacheItemIndexshippingCostConfig = Long.valueOf(com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.insert(realm2, shippingCostConfigItem, map));
                            }
                            shippingCostConfigOsList.addRow(cacheItemIndexshippingCostConfig.longValue());
                        }
                    }
                    long rowIndex4 = rowIndex2;
                    Table.nativeSetLong(tableNativePtr, columnInfo.basketCountIndex, rowIndex2, ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$basketCount(), false);
                    Table.nativeSetLong(tableNativePtr, columnInfo.rejectReasonIdIndex, rowIndex4, ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$rejectReasonId(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.tupleIsSyncedWithServerIndex, rowIndex4, ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$tupleIsSyncedWithServer(), false);
                    String realmGet$signature = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$signature();
                    if (realmGet$signature != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.signatureIndex, rowIndex4, realmGet$signature, false);
                    }
                    String realmGet$confirmTime = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$confirmTime();
                    if (realmGet$confirmTime != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.confirmTimeIndex, rowIndex4, realmGet$confirmTime, false);
                    }
                    LatLong confirmLocationObj = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$confirmLocation();
                    if (confirmLocationObj != null) {
                        Long cacheconfirmLocation = map.get(confirmLocationObj);
                        if (cacheconfirmLocation == null) {
                            cacheconfirmLocation = Long.valueOf(com_digikala_dms_model_domain_LatLongRealmProxy.insert(realm2, confirmLocationObj, map));
                        }
                        table.setLink(columnInfo.confirmLocationIndex, rowIndex4, cacheconfirmLocation.longValue(), false);
                    }
                    RealmList<SerialItems> returnedProductsList = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$returnedProducts();
                    if (returnedProductsList != null) {
                        OsList returnedProductsOsList = new OsList(table.getUncheckedRow(rowIndex4), columnInfo.returnedProductsIndex);
                        for (SerialItems returnedProductsItem : returnedProductsList) {
                            Long cacheItemIndexreturnedProducts = map.get(returnedProductsItem);
                            if (cacheItemIndexreturnedProducts == null) {
                                cacheItemIndexreturnedProducts = Long.valueOf(com_digikala_dms_model_design_SerialItemsRealmProxy.insert(realm2, returnedProductsItem, map));
                            }
                            returnedProductsOsList.addRow(cacheItemIndexreturnedProducts.longValue());
                            realm2 = realm;
                            map = cache;
                        }
                    }
                }
            }
            realm2 = realm;
            map = cache;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, Shipment shipment, Map<RealmModel, Long> cache) {
        long rowIndex;
        Table table;
        long tableNativePtr;
        RealmList<BasketItems> basketItemsList;
        OsList basketItemsOsList;
        Table table2;
        if (!(shipment instanceof RealmObjectProxy) || ((RealmObjectProxy) shipment).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) shipment).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table3 = realm.getTable(Shipment.class);
            long tableNativePtr2 = table3.getNativePtr();
            ShipmentColumnInfo columnInfo = (ShipmentColumnInfo) realm.getSchema().getColumnInfo(Shipment.class);
            long rowIndex2 = OsObject.createRow(table3);
            cache.put(shipment, Long.valueOf(rowIndex2));
            String realmGet$orderId = shipment.realmGet$orderId();
            if (realmGet$orderId != null) {
                rowIndex = rowIndex2;
                Table.nativeSetString(tableNativePtr2, columnInfo.orderIdIndex, rowIndex2, realmGet$orderId, false);
            } else {
                rowIndex = rowIndex2;
                Table.nativeSetNull(tableNativePtr2, columnInfo.orderIdIndex, rowIndex, false);
            }
            String realmGet$podCode = shipment.realmGet$podCode();
            if (realmGet$podCode != null) {
                Table.nativeSetString(tableNativePtr2, columnInfo.podCodeIndex, rowIndex, realmGet$podCode, false);
            } else {
                Table.nativeSetNull(tableNativePtr2, columnInfo.podCodeIndex, rowIndex, false);
            }
            String realmGet$cardTypeId = shipment.realmGet$cardTypeId();
            if (realmGet$cardTypeId != null) {
                Table.nativeSetString(tableNativePtr2, columnInfo.cardTypeIdIndex, rowIndex, realmGet$cardTypeId, false);
            } else {
                Table.nativeSetNull(tableNativePtr2, columnInfo.cardTypeIdIndex, rowIndex, false);
            }
            String realmGet$cardNumber = shipment.realmGet$cardNumber();
            if (realmGet$cardNumber != null) {
                Table.nativeSetString(tableNativePtr2, columnInfo.cardNumberIndex, rowIndex, realmGet$cardNumber, false);
            } else {
                Table.nativeSetNull(tableNativePtr2, columnInfo.cardNumberIndex, rowIndex, false);
            }
            String realmGet$comment = shipment.realmGet$comment();
            if (realmGet$comment != null) {
                Table.nativeSetString(tableNativePtr2, columnInfo.commentIndex, rowIndex, realmGet$comment, false);
            } else {
                Table.nativeSetNull(tableNativePtr2, columnInfo.commentIndex, rowIndex, false);
            }
            String realmGet$invoiceId = shipment.realmGet$invoiceId();
            if (realmGet$invoiceId != null) {
                Table.nativeSetString(tableNativePtr2, columnInfo.invoiceIdIndex, rowIndex, realmGet$invoiceId, false);
            } else {
                Table.nativeSetNull(tableNativePtr2, columnInfo.invoiceIdIndex, rowIndex, false);
            }
            Boolean realmGet$isFmcg = shipment.realmGet$isFmcg();
            if (realmGet$isFmcg != null) {
                Table.nativeSetBoolean(tableNativePtr2, columnInfo.isFmcgIndex, rowIndex, realmGet$isFmcg.booleanValue(), false);
            } else {
                Table.nativeSetNull(tableNativePtr2, columnInfo.isFmcgIndex, rowIndex, false);
            }
            Boolean realmGet$autoRefundable = shipment.realmGet$autoRefundable();
            if (realmGet$autoRefundable != null) {
                Table.nativeSetBoolean(tableNativePtr2, columnInfo.autoRefundableIndex, rowIndex, realmGet$autoRefundable.booleanValue(), false);
            } else {
                Table.nativeSetNull(tableNativePtr2, columnInfo.autoRefundableIndex, rowIndex, false);
            }
            String realmGet$priority = shipment.realmGet$priority();
            if (realmGet$priority != null) {
                Table.nativeSetString(tableNativePtr2, columnInfo.priorityIndex, rowIndex, realmGet$priority, false);
            } else {
                Table.nativeSetNull(tableNativePtr2, columnInfo.priorityIndex, rowIndex, false);
            }
            long j = rowIndex;
            Table.nativeSetLong(tableNativePtr2, columnInfo.paymentStatusIndex, j, shipment.realmGet$paymentStatus(), false);
            Table.nativeSetLong(tableNativePtr2, columnInfo.payableAmountIndex, j, shipment.realmGet$payableAmount(), false);
            Table.nativeSetLong(tableNativePtr2, columnInfo.remainingAmountIndex, j, shipment.realmGet$remainingAmount(), false);
            String realmGet$customerName = shipment.realmGet$customerName();
            if (realmGet$customerName != null) {
                Table.nativeSetString(tableNativePtr2, columnInfo.customerNameIndex, rowIndex, realmGet$customerName, false);
            } else {
                Table.nativeSetNull(tableNativePtr2, columnInfo.customerNameIndex, rowIndex, false);
            }
            String realmGet$customerPhoneNo = shipment.realmGet$customerPhoneNo();
            if (realmGet$customerPhoneNo != null) {
                Table.nativeSetString(tableNativePtr2, columnInfo.customerPhoneNoIndex, rowIndex, realmGet$customerPhoneNo, false);
            } else {
                Table.nativeSetNull(tableNativePtr2, columnInfo.customerPhoneNoIndex, rowIndex, false);
            }
            String realmGet$recipientName = shipment.realmGet$recipientName();
            if (realmGet$recipientName != null) {
                Table.nativeSetString(tableNativePtr2, columnInfo.recipientNameIndex, rowIndex, realmGet$recipientName, false);
            } else {
                Table.nativeSetNull(tableNativePtr2, columnInfo.recipientNameIndex, rowIndex, false);
            }
            String realmGet$recipientPhoneNo = shipment.realmGet$recipientPhoneNo();
            if (realmGet$recipientPhoneNo != null) {
                Table.nativeSetString(tableNativePtr2, columnInfo.recipientPhoneNoIndex, rowIndex, realmGet$recipientPhoneNo, false);
            } else {
                Table.nativeSetNull(tableNativePtr2, columnInfo.recipientPhoneNoIndex, rowIndex, false);
            }
            String realmGet$deliveryTime = shipment.realmGet$deliveryTime();
            if (realmGet$deliveryTime != null) {
                Table.nativeSetString(tableNativePtr2, columnInfo.deliveryTimeIndex, rowIndex, realmGet$deliveryTime, false);
            } else {
                Table.nativeSetNull(tableNativePtr2, columnInfo.deliveryTimeIndex, rowIndex, false);
            }
            String realmGet$deliveryAddress = shipment.realmGet$deliveryAddress();
            if (realmGet$deliveryAddress != null) {
                Table.nativeSetString(tableNativePtr2, columnInfo.deliveryAddressIndex, rowIndex, realmGet$deliveryAddress, false);
            } else {
                Table.nativeSetNull(tableNativePtr2, columnInfo.deliveryAddressIndex, rowIndex, false);
            }
            LatLong deliveryLatLongObj = shipment.realmGet$deliveryLatLong();
            if (deliveryLatLongObj != null) {
                Long cachedeliveryLatLong = cache.get(deliveryLatLongObj);
                if (cachedeliveryLatLong == null) {
                    cachedeliveryLatLong = Long.valueOf(com_digikala_dms_model_domain_LatLongRealmProxy.insertOrUpdate(realm, deliveryLatLongObj, cache));
                }
                Table.nativeSetLink(tableNativePtr2, columnInfo.deliveryLatLongIndex, rowIndex, cachedeliveryLatLong.longValue(), false);
            } else {
                Table.nativeNullifyLink(tableNativePtr2, columnInfo.deliveryLatLongIndex, rowIndex);
            }
            String realmGet$PaymentMethod = shipment.realmGet$PaymentMethod();
            if (realmGet$PaymentMethod != null) {
                Table.nativeSetString(tableNativePtr2, columnInfo.PaymentMethodIndex, rowIndex, realmGet$PaymentMethod, false);
            } else {
                Table.nativeSetNull(tableNativePtr2, columnInfo.PaymentMethodIndex, rowIndex, false);
            }
            Number realmGet$FinalPayableAmount = shipment.realmGet$FinalPayableAmount();
            if (realmGet$FinalPayableAmount != null) {
                Table.nativeSetLong(tableNativePtr2, columnInfo.FinalPayableAmountIndex, rowIndex, realmGet$FinalPayableAmount.longValue(), false);
            } else {
                Table.nativeSetNull(tableNativePtr2, columnInfo.FinalPayableAmountIndex, rowIndex, false);
            }
            Table.nativeSetLong(tableNativePtr2, columnInfo.statusIndex, rowIndex, shipment.realmGet$status(), false);
            long rowIndex3 = rowIndex;
            OsList basketItemsOsList2 = new OsList(table3.getUncheckedRow(rowIndex3), columnInfo.basketItemsIndex);
            RealmList<BasketItems> basketItemsList2 = shipment.realmGet$basketItems();
            int i = 0;
            if (basketItemsList2 != null && basketItemsList2.size() == basketItemsOsList2.size()) {
                int i2 = 0;
                for (int objects = basketItemsList2.size(); i2 < objects; objects = objects) {
                    BasketItems basketItemsItem = basketItemsList2.get(i2);
                    Long cacheItemIndexbasketItems = cache.get(basketItemsItem);
                    if (cacheItemIndexbasketItems == null) {
                        cacheItemIndexbasketItems = Long.valueOf(com_digikala_dms_model_domain_BasketItemsRealmProxy.insertOrUpdate(realm, basketItemsItem, cache));
                    }
                    basketItemsOsList2.setRow(i2, cacheItemIndexbasketItems.longValue());
                    i2++;
                    tableNativePtr2 = tableNativePtr2;
                    table3 = table3;
                }
                table = table3;
                tableNativePtr = tableNativePtr2;
            } else {
                table = table3;
                tableNativePtr = tableNativePtr2;
                basketItemsOsList2.removeAll();
                if (basketItemsList2 != null) {
                    for (BasketItems basketItemsItem2 : basketItemsList2) {
                        Long cacheItemIndexbasketItems2 = cache.get(basketItemsItem2);
                        if (cacheItemIndexbasketItems2 == null) {
                            cacheItemIndexbasketItems2 = Long.valueOf(com_digikala_dms_model_domain_BasketItemsRealmProxy.insertOrUpdate(realm, basketItemsItem2, cache));
                        }
                        basketItemsOsList2.addRow(cacheItemIndexbasketItems2.longValue());
                    }
                }
            }
            Table table4 = table;
            OsList shippingCostConfigOsList = new OsList(table4.getUncheckedRow(rowIndex3), columnInfo.shippingCostConfigIndex);
            RealmList<ShippingCostConfig> shippingCostConfigList = shipment.realmGet$shippingCostConfig();
            if (shippingCostConfigList != null && shippingCostConfigList.size() == shippingCostConfigOsList.size()) {
                int objects2 = shippingCostConfigList.size();
                int i3 = 0;
                while (i3 < objects2) {
                    ShippingCostConfig shippingCostConfigItem = shippingCostConfigList.get(i3);
                    Long cacheItemIndexshippingCostConfig = cache.get(shippingCostConfigItem);
                    if (cacheItemIndexshippingCostConfig == null) {
                        cacheItemIndexshippingCostConfig = Long.valueOf(com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.insertOrUpdate(realm, shippingCostConfigItem, cache));
                    }
                    shippingCostConfigOsList.setRow(i3, cacheItemIndexshippingCostConfig.longValue());
                    i3++;
                    basketItemsList2 = basketItemsList2;
                    basketItemsOsList2 = basketItemsOsList2;
                    table4 = table4;
                }
                basketItemsList = basketItemsList2;
                basketItemsOsList = basketItemsOsList2;
                table2 = table4;
            } else {
                basketItemsList = basketItemsList2;
                basketItemsOsList = basketItemsOsList2;
                table2 = table4;
                shippingCostConfigOsList.removeAll();
                if (shippingCostConfigList != null) {
                    for (ShippingCostConfig shippingCostConfigItem2 : shippingCostConfigList) {
                        Long cacheItemIndexshippingCostConfig2 = cache.get(shippingCostConfigItem2);
                        if (cacheItemIndexshippingCostConfig2 == null) {
                            cacheItemIndexshippingCostConfig2 = Long.valueOf(com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.insertOrUpdate(realm, shippingCostConfigItem2, cache));
                        }
                        shippingCostConfigOsList.addRow(cacheItemIndexshippingCostConfig2.longValue());
                    }
                }
            }
            OsList basketItemsOsList3 = basketItemsOsList;
            Table.nativeSetLong(tableNativePtr, columnInfo.basketCountIndex, rowIndex3, shipment.realmGet$basketCount(), false);
            Table.nativeSetLong(tableNativePtr, columnInfo.rejectReasonIdIndex, rowIndex3, shipment.realmGet$rejectReasonId(), false);
            Table.nativeSetBoolean(tableNativePtr, columnInfo.tupleIsSyncedWithServerIndex, rowIndex3, shipment.realmGet$tupleIsSyncedWithServer(), false);
            String realmGet$signature = shipment.realmGet$signature();
            if (realmGet$signature != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.signatureIndex, rowIndex3, realmGet$signature, false);
            } else {
                Table.nativeSetNull(tableNativePtr, columnInfo.signatureIndex, rowIndex3, false);
            }
            String realmGet$confirmTime = shipment.realmGet$confirmTime();
            if (realmGet$confirmTime != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.confirmTimeIndex, rowIndex3, realmGet$confirmTime, false);
            } else {
                Table.nativeSetNull(tableNativePtr, columnInfo.confirmTimeIndex, rowIndex3, false);
            }
            LatLong confirmLocationObj = shipment.realmGet$confirmLocation();
            if (confirmLocationObj != null) {
                Long cacheconfirmLocation = cache.get(confirmLocationObj);
                if (cacheconfirmLocation == null) {
                    cacheconfirmLocation = Long.valueOf(com_digikala_dms_model_domain_LatLongRealmProxy.insertOrUpdate(realm, confirmLocationObj, cache));
                }
                Table.nativeSetLink(tableNativePtr, columnInfo.confirmLocationIndex, rowIndex3, cacheconfirmLocation.longValue(), false);
            } else {
                Table.nativeNullifyLink(tableNativePtr, columnInfo.confirmLocationIndex, rowIndex3);
            }
            Table table5 = table2;
            long rowIndex4 = rowIndex3;
            OsList returnedProductsOsList = new OsList(table5.getUncheckedRow(rowIndex4), columnInfo.returnedProductsIndex);
            RealmList<SerialItems> returnedProductsList = shipment.realmGet$returnedProducts();
            if (returnedProductsList != null && returnedProductsList.size() == returnedProductsOsList.size()) {
                int objects3 = returnedProductsList.size();
                while (true) {
                    int i4 = i;
                    if (i4 >= objects3) {
                        return rowIndex4;
                    }
                    SerialItems returnedProductsItem = returnedProductsList.get(i4);
                    Long cacheItemIndexreturnedProducts = cache.get(returnedProductsItem);
                    if (cacheItemIndexreturnedProducts == null) {
                        cacheItemIndexreturnedProducts = Long.valueOf(com_digikala_dms_model_design_SerialItemsRealmProxy.insertOrUpdate(realm, returnedProductsItem, cache));
                    }
                    returnedProductsOsList.setRow(i4, cacheItemIndexreturnedProducts.longValue());
                    i = i4 + 1;
                    shippingCostConfigList = shippingCostConfigList;
                    basketItemsOsList3 = basketItemsOsList3;
                    table5 = table5;
                    rowIndex4 = rowIndex4;
                }
            } else {
                returnedProductsOsList.removeAll();
                if (returnedProductsList == null) {
                    return rowIndex4;
                }
                for (SerialItems returnedProductsItem2 : returnedProductsList) {
                    Long cacheItemIndexreturnedProducts2 = cache.get(returnedProductsItem2);
                    if (cacheItemIndexreturnedProducts2 == null) {
                        cacheItemIndexreturnedProducts2 = Long.valueOf(com_digikala_dms_model_design_SerialItemsRealmProxy.insertOrUpdate(realm, returnedProductsItem2, cache));
                    }
                    returnedProductsOsList.addRow(cacheItemIndexreturnedProducts2.longValue());
                }
                return rowIndex4;
            }
        } else {
            return ((RealmObjectProxy) shipment).realmGet$proxyState().getRow$realm().getIndex();
        }
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        long rowIndex;
        long tableNativePtr;
        ShipmentColumnInfo columnInfo;
        RealmModel realmModel;
        Table table;
        RealmList<BasketItems> basketItemsList;
        Table table2;
        ShipmentColumnInfo columnInfo2;
        Table table3 = realm.getTable(Shipment.class);
        long tableNativePtr2 = table3.getNativePtr();
        ShipmentColumnInfo columnInfo3 = (ShipmentColumnInfo) realm.getSchema().getColumnInfo(Shipment.class);
        while (objects.hasNext()) {
            RealmModel realmModel2 = (Shipment) objects.next();
            if (cache.containsKey(realmModel2)) {
                table2 = table3;
                tableNativePtr = tableNativePtr2;
                columnInfo2 = columnInfo3;
                realmModel = realmModel2;
            } else if ((realmModel2 instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel2).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel2).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                cache.put(realmModel2, Long.valueOf(((RealmObjectProxy) realmModel2).realmGet$proxyState().getRow$realm().getIndex()));
                table2 = table3;
                tableNativePtr = tableNativePtr2;
                columnInfo2 = columnInfo3;
                realmModel = realmModel2;
            } else {
                long rowIndex2 = OsObject.createRow(table3);
                cache.put(realmModel2, Long.valueOf(rowIndex2));
                String realmGet$orderId = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$orderId();
                if (realmGet$orderId != null) {
                    rowIndex = rowIndex2;
                    Table.nativeSetString(tableNativePtr2, columnInfo3.orderIdIndex, rowIndex2, realmGet$orderId, false);
                } else {
                    rowIndex = rowIndex2;
                    Table.nativeSetNull(tableNativePtr2, columnInfo3.orderIdIndex, rowIndex, false);
                }
                String realmGet$podCode = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$podCode();
                if (realmGet$podCode != null) {
                    Table.nativeSetString(tableNativePtr2, columnInfo3.podCodeIndex, rowIndex, realmGet$podCode, false);
                } else {
                    Table.nativeSetNull(tableNativePtr2, columnInfo3.podCodeIndex, rowIndex, false);
                }
                String realmGet$cardTypeId = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$cardTypeId();
                if (realmGet$cardTypeId != null) {
                    Table.nativeSetString(tableNativePtr2, columnInfo3.cardTypeIdIndex, rowIndex, realmGet$cardTypeId, false);
                } else {
                    Table.nativeSetNull(tableNativePtr2, columnInfo3.cardTypeIdIndex, rowIndex, false);
                }
                String realmGet$cardNumber = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$cardNumber();
                if (realmGet$cardNumber != null) {
                    Table.nativeSetString(tableNativePtr2, columnInfo3.cardNumberIndex, rowIndex, realmGet$cardNumber, false);
                } else {
                    Table.nativeSetNull(tableNativePtr2, columnInfo3.cardNumberIndex, rowIndex, false);
                }
                String realmGet$comment = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$comment();
                if (realmGet$comment != null) {
                    Table.nativeSetString(tableNativePtr2, columnInfo3.commentIndex, rowIndex, realmGet$comment, false);
                } else {
                    Table.nativeSetNull(tableNativePtr2, columnInfo3.commentIndex, rowIndex, false);
                }
                String realmGet$invoiceId = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$invoiceId();
                if (realmGet$invoiceId != null) {
                    Table.nativeSetString(tableNativePtr2, columnInfo3.invoiceIdIndex, rowIndex, realmGet$invoiceId, false);
                } else {
                    Table.nativeSetNull(tableNativePtr2, columnInfo3.invoiceIdIndex, rowIndex, false);
                }
                Boolean realmGet$isFmcg = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$isFmcg();
                if (realmGet$isFmcg != null) {
                    Table.nativeSetBoolean(tableNativePtr2, columnInfo3.isFmcgIndex, rowIndex, realmGet$isFmcg.booleanValue(), false);
                } else {
                    Table.nativeSetNull(tableNativePtr2, columnInfo3.isFmcgIndex, rowIndex, false);
                }
                Boolean realmGet$autoRefundable = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$autoRefundable();
                if (realmGet$autoRefundable != null) {
                    Table.nativeSetBoolean(tableNativePtr2, columnInfo3.autoRefundableIndex, rowIndex, realmGet$autoRefundable.booleanValue(), false);
                } else {
                    Table.nativeSetNull(tableNativePtr2, columnInfo3.autoRefundableIndex, rowIndex, false);
                }
                String realmGet$priority = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$priority();
                if (realmGet$priority != null) {
                    Table.nativeSetString(tableNativePtr2, columnInfo3.priorityIndex, rowIndex, realmGet$priority, false);
                } else {
                    Table.nativeSetNull(tableNativePtr2, columnInfo3.priorityIndex, rowIndex, false);
                }
                long j = rowIndex;
                Table.nativeSetLong(tableNativePtr2, columnInfo3.paymentStatusIndex, j, ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$paymentStatus(), false);
                Table.nativeSetLong(tableNativePtr2, columnInfo3.payableAmountIndex, j, ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$payableAmount(), false);
                Table.nativeSetLong(tableNativePtr2, columnInfo3.remainingAmountIndex, j, ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$remainingAmount(), false);
                String realmGet$customerName = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$customerName();
                if (realmGet$customerName != null) {
                    Table.nativeSetString(tableNativePtr2, columnInfo3.customerNameIndex, rowIndex, realmGet$customerName, false);
                } else {
                    Table.nativeSetNull(tableNativePtr2, columnInfo3.customerNameIndex, rowIndex, false);
                }
                String realmGet$customerPhoneNo = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$customerPhoneNo();
                if (realmGet$customerPhoneNo != null) {
                    Table.nativeSetString(tableNativePtr2, columnInfo3.customerPhoneNoIndex, rowIndex, realmGet$customerPhoneNo, false);
                } else {
                    Table.nativeSetNull(tableNativePtr2, columnInfo3.customerPhoneNoIndex, rowIndex, false);
                }
                String realmGet$recipientName = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$recipientName();
                if (realmGet$recipientName != null) {
                    Table.nativeSetString(tableNativePtr2, columnInfo3.recipientNameIndex, rowIndex, realmGet$recipientName, false);
                } else {
                    Table.nativeSetNull(tableNativePtr2, columnInfo3.recipientNameIndex, rowIndex, false);
                }
                String realmGet$recipientPhoneNo = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$recipientPhoneNo();
                if (realmGet$recipientPhoneNo != null) {
                    Table.nativeSetString(tableNativePtr2, columnInfo3.recipientPhoneNoIndex, rowIndex, realmGet$recipientPhoneNo, false);
                } else {
                    Table.nativeSetNull(tableNativePtr2, columnInfo3.recipientPhoneNoIndex, rowIndex, false);
                }
                String realmGet$deliveryTime = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$deliveryTime();
                if (realmGet$deliveryTime != null) {
                    Table.nativeSetString(tableNativePtr2, columnInfo3.deliveryTimeIndex, rowIndex, realmGet$deliveryTime, false);
                } else {
                    Table.nativeSetNull(tableNativePtr2, columnInfo3.deliveryTimeIndex, rowIndex, false);
                }
                String realmGet$deliveryAddress = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$deliveryAddress();
                if (realmGet$deliveryAddress != null) {
                    Table.nativeSetString(tableNativePtr2, columnInfo3.deliveryAddressIndex, rowIndex, realmGet$deliveryAddress, false);
                } else {
                    Table.nativeSetNull(tableNativePtr2, columnInfo3.deliveryAddressIndex, rowIndex, false);
                }
                LatLong deliveryLatLongObj = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$deliveryLatLong();
                if (deliveryLatLongObj != null) {
                    Long cachedeliveryLatLong = cache.get(deliveryLatLongObj);
                    if (cachedeliveryLatLong == null) {
                        cachedeliveryLatLong = Long.valueOf(com_digikala_dms_model_domain_LatLongRealmProxy.insertOrUpdate(realm, deliveryLatLongObj, cache));
                    }
                    Table.nativeSetLink(tableNativePtr2, columnInfo3.deliveryLatLongIndex, rowIndex, cachedeliveryLatLong.longValue(), false);
                } else {
                    Table.nativeNullifyLink(tableNativePtr2, columnInfo3.deliveryLatLongIndex, rowIndex);
                }
                String realmGet$PaymentMethod = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$PaymentMethod();
                if (realmGet$PaymentMethod != null) {
                    Table.nativeSetString(tableNativePtr2, columnInfo3.PaymentMethodIndex, rowIndex, realmGet$PaymentMethod, false);
                } else {
                    Table.nativeSetNull(tableNativePtr2, columnInfo3.PaymentMethodIndex, rowIndex, false);
                }
                Number realmGet$FinalPayableAmount = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$FinalPayableAmount();
                if (realmGet$FinalPayableAmount != null) {
                    Table.nativeSetLong(tableNativePtr2, columnInfo3.FinalPayableAmountIndex, rowIndex, realmGet$FinalPayableAmount.longValue(), false);
                } else {
                    Table.nativeSetNull(tableNativePtr2, columnInfo3.FinalPayableAmountIndex, rowIndex, false);
                }
                Table.nativeSetLong(tableNativePtr2, columnInfo3.statusIndex, rowIndex, ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$status(), false);
                long rowIndex3 = rowIndex;
                OsList basketItemsOsList = new OsList(table3.getUncheckedRow(rowIndex3), columnInfo3.basketItemsIndex);
                RealmList<BasketItems> basketItemsList2 = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel2).realmGet$basketItems();
                int i = 0;
                if (basketItemsList2 != null && basketItemsList2.size() == basketItemsOsList.size()) {
                    int objectCount = basketItemsList2.size();
                    int i2 = 0;
                    while (i2 < objectCount) {
                        BasketItems basketItemsItem = basketItemsList2.get(i2);
                        Long cacheItemIndexbasketItems = cache.get(basketItemsItem);
                        if (cacheItemIndexbasketItems == null) {
                            cacheItemIndexbasketItems = Long.valueOf(com_digikala_dms_model_domain_BasketItemsRealmProxy.insertOrUpdate(realm, basketItemsItem, cache));
                        }
                        long tableNativePtr3 = tableNativePtr2;
                        long tableNativePtr4 = i2;
                        basketItemsOsList.setRow(tableNativePtr4, cacheItemIndexbasketItems.longValue());
                        i2++;
                        tableNativePtr2 = tableNativePtr3;
                        columnInfo3 = columnInfo3;
                        realmModel2 = realmModel2;
                    }
                    tableNativePtr = tableNativePtr2;
                    columnInfo = columnInfo3;
                    realmModel = realmModel2;
                } else {
                    tableNativePtr = tableNativePtr2;
                    columnInfo = columnInfo3;
                    realmModel = realmModel2;
                    basketItemsOsList.removeAll();
                    if (basketItemsList2 != null) {
                        for (BasketItems basketItemsItem2 : basketItemsList2) {
                            Long cacheItemIndexbasketItems2 = cache.get(basketItemsItem2);
                            if (cacheItemIndexbasketItems2 == null) {
                                cacheItemIndexbasketItems2 = Long.valueOf(com_digikala_dms_model_domain_BasketItemsRealmProxy.insertOrUpdate(realm, basketItemsItem2, cache));
                            }
                            basketItemsOsList.addRow(cacheItemIndexbasketItems2.longValue());
                        }
                    }
                }
                ShipmentColumnInfo columnInfo4 = columnInfo;
                OsList shippingCostConfigOsList = new OsList(table3.getUncheckedRow(rowIndex3), columnInfo4.shippingCostConfigIndex);
                RealmList<ShippingCostConfig> shippingCostConfigList = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$shippingCostConfig();
                if (shippingCostConfigList != null && shippingCostConfigList.size() == shippingCostConfigOsList.size()) {
                    int i3 = 0;
                    for (int objectCount2 = shippingCostConfigList.size(); i3 < objectCount2; objectCount2 = objectCount2) {
                        ShippingCostConfig shippingCostConfigItem = shippingCostConfigList.get(i3);
                        Long cacheItemIndexshippingCostConfig = cache.get(shippingCostConfigItem);
                        if (cacheItemIndexshippingCostConfig == null) {
                            cacheItemIndexshippingCostConfig = Long.valueOf(com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.insertOrUpdate(realm, shippingCostConfigItem, cache));
                        }
                        shippingCostConfigOsList.setRow(i3, cacheItemIndexshippingCostConfig.longValue());
                        i3++;
                        basketItemsList2 = basketItemsList2;
                        table3 = table3;
                    }
                    table = table3;
                    basketItemsList = basketItemsList2;
                } else {
                    table = table3;
                    basketItemsList = basketItemsList2;
                    shippingCostConfigOsList.removeAll();
                    if (shippingCostConfigList != null) {
                        for (ShippingCostConfig shippingCostConfigItem2 : shippingCostConfigList) {
                            Long cacheItemIndexshippingCostConfig2 = cache.get(shippingCostConfigItem2);
                            if (cacheItemIndexshippingCostConfig2 == null) {
                                cacheItemIndexshippingCostConfig2 = Long.valueOf(com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.insertOrUpdate(realm, shippingCostConfigItem2, cache));
                            }
                            shippingCostConfigOsList.addRow(cacheItemIndexshippingCostConfig2.longValue());
                        }
                    }
                }
                long j2 = tableNativePtr;
                Table.nativeSetLong(j2, columnInfo4.basketCountIndex, rowIndex3, ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$basketCount(), false);
                Table.nativeSetLong(j2, columnInfo4.rejectReasonIdIndex, rowIndex3, ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$rejectReasonId(), false);
                Table.nativeSetBoolean(j2, columnInfo4.tupleIsSyncedWithServerIndex, rowIndex3, ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$tupleIsSyncedWithServer(), false);
                String realmGet$signature = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$signature();
                if (realmGet$signature != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo4.signatureIndex, rowIndex3, realmGet$signature, false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo4.signatureIndex, rowIndex3, false);
                }
                String realmGet$confirmTime = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$confirmTime();
                if (realmGet$confirmTime != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo4.confirmTimeIndex, rowIndex3, realmGet$confirmTime, false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo4.confirmTimeIndex, rowIndex3, false);
                }
                LatLong confirmLocationObj = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$confirmLocation();
                if (confirmLocationObj != null) {
                    Long cacheconfirmLocation = cache.get(confirmLocationObj);
                    if (cacheconfirmLocation == null) {
                        cacheconfirmLocation = Long.valueOf(com_digikala_dms_model_domain_LatLongRealmProxy.insertOrUpdate(realm, confirmLocationObj, cache));
                    }
                    Table.nativeSetLink(tableNativePtr, columnInfo4.confirmLocationIndex, rowIndex3, cacheconfirmLocation.longValue(), false);
                } else {
                    Table.nativeNullifyLink(tableNativePtr, columnInfo4.confirmLocationIndex, rowIndex3);
                }
                Table table4 = table;
                long rowIndex4 = rowIndex3;
                OsList returnedProductsOsList = new OsList(table4.getUncheckedRow(rowIndex4), columnInfo4.returnedProductsIndex);
                RealmList<SerialItems> returnedProductsList = ((com_digikala_dms_model_domain_ShipmentRealmProxyInterface) realmModel).realmGet$returnedProducts();
                if (returnedProductsList != null && returnedProductsList.size() == returnedProductsOsList.size()) {
                    int objectCount3 = returnedProductsList.size();
                    while (true) {
                        int i4 = i;
                        if (i4 >= objectCount3) {
                            break;
                        }
                        SerialItems returnedProductsItem = returnedProductsList.get(i4);
                        Long cacheItemIndexreturnedProducts = cache.get(returnedProductsItem);
                        if (cacheItemIndexreturnedProducts == null) {
                            cacheItemIndexreturnedProducts = Long.valueOf(com_digikala_dms_model_design_SerialItemsRealmProxy.insertOrUpdate(realm, returnedProductsItem, cache));
                        }
                        returnedProductsOsList.setRow(i4, cacheItemIndexreturnedProducts.longValue());
                        i = i4 + 1;
                        table4 = table4;
                        rowIndex4 = rowIndex4;
                        columnInfo4 = columnInfo4;
                        shippingCostConfigOsList = shippingCostConfigOsList;
                    }
                    table2 = table4;
                    columnInfo2 = columnInfo4;
                } else {
                    table2 = table4;
                    columnInfo2 = columnInfo4;
                    returnedProductsOsList.removeAll();
                    if (returnedProductsList != null) {
                        for (SerialItems returnedProductsItem2 : returnedProductsList) {
                            Long cacheItemIndexreturnedProducts2 = cache.get(returnedProductsItem2);
                            if (cacheItemIndexreturnedProducts2 == null) {
                                cacheItemIndexreturnedProducts2 = Long.valueOf(com_digikala_dms_model_design_SerialItemsRealmProxy.insertOrUpdate(realm, returnedProductsItem2, cache));
                            }
                            returnedProductsOsList.addRow(cacheItemIndexreturnedProducts2.longValue());
                        }
                    }
                }
            }
            tableNativePtr2 = tableNativePtr;
            table3 = table2;
            columnInfo3 = columnInfo2;
        }
    }

    public static Shipment createDetachedCopy(Shipment realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        Shipment unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new Shipment();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (Shipment) cachedObject.object;
            }
            unmanagedObject = (Shipment) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        com_digikala_dms_model_domain_ShipmentRealmProxyInterface unmanagedCopy = unmanagedObject;
        Shipment realmSource = realmObject;
        unmanagedCopy.realmSet$orderId(realmSource.realmGet$orderId());
        unmanagedCopy.realmSet$podCode(realmSource.realmGet$podCode());
        unmanagedCopy.realmSet$cardTypeId(realmSource.realmGet$cardTypeId());
        unmanagedCopy.realmSet$cardNumber(realmSource.realmGet$cardNumber());
        unmanagedCopy.realmSet$comment(realmSource.realmGet$comment());
        unmanagedCopy.realmSet$invoiceId(realmSource.realmGet$invoiceId());
        unmanagedCopy.realmSet$isFmcg(realmSource.realmGet$isFmcg());
        unmanagedCopy.realmSet$autoRefundable(realmSource.realmGet$autoRefundable());
        unmanagedCopy.realmSet$priority(realmSource.realmGet$priority());
        unmanagedCopy.realmSet$paymentStatus(realmSource.realmGet$paymentStatus());
        unmanagedCopy.realmSet$payableAmount(realmSource.realmGet$payableAmount());
        unmanagedCopy.realmSet$remainingAmount(realmSource.realmGet$remainingAmount());
        unmanagedCopy.realmSet$customerName(realmSource.realmGet$customerName());
        unmanagedCopy.realmSet$customerPhoneNo(realmSource.realmGet$customerPhoneNo());
        unmanagedCopy.realmSet$recipientName(realmSource.realmGet$recipientName());
        unmanagedCopy.realmSet$recipientPhoneNo(realmSource.realmGet$recipientPhoneNo());
        unmanagedCopy.realmSet$deliveryTime(realmSource.realmGet$deliveryTime());
        unmanagedCopy.realmSet$deliveryAddress(realmSource.realmGet$deliveryAddress());
        unmanagedCopy.realmSet$deliveryLatLong(com_digikala_dms_model_domain_LatLongRealmProxy.createDetachedCopy(realmSource.realmGet$deliveryLatLong(), currentDepth + 1, maxDepth, cache));
        unmanagedCopy.realmSet$PaymentMethod(realmSource.realmGet$PaymentMethod());
        unmanagedCopy.realmSet$FinalPayableAmount(realmSource.realmGet$FinalPayableAmount());
        unmanagedCopy.realmSet$status(realmSource.realmGet$status());
        if (currentDepth == maxDepth) {
            unmanagedCopy.realmSet$basketItems(null);
        } else {
            RealmList<BasketItems> managedbasketItemsList = realmSource.realmGet$basketItems();
            RealmList<BasketItems> unmanagedbasketItemsList = new RealmList<>();
            unmanagedCopy.realmSet$basketItems(unmanagedbasketItemsList);
            int nextDepth = currentDepth + 1;
            int size = managedbasketItemsList.size();
            for (int i = 0; i < size; i++) {
                BasketItems item = com_digikala_dms_model_domain_BasketItemsRealmProxy.createDetachedCopy(managedbasketItemsList.get(i), nextDepth, maxDepth, cache);
                unmanagedbasketItemsList.add(item);
            }
        }
        if (currentDepth == maxDepth) {
            unmanagedCopy.realmSet$shippingCostConfig(null);
        } else {
            RealmList<ShippingCostConfig> managedshippingCostConfigList = realmSource.realmGet$shippingCostConfig();
            RealmList<ShippingCostConfig> unmanagedshippingCostConfigList = new RealmList<>();
            unmanagedCopy.realmSet$shippingCostConfig(unmanagedshippingCostConfigList);
            int nextDepth2 = currentDepth + 1;
            int size2 = managedshippingCostConfigList.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ShippingCostConfig item2 = com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.createDetachedCopy(managedshippingCostConfigList.get(i2), nextDepth2, maxDepth, cache);
                unmanagedshippingCostConfigList.add(item2);
            }
        }
        unmanagedCopy.realmSet$basketCount(realmSource.realmGet$basketCount());
        unmanagedCopy.realmSet$rejectReasonId(realmSource.realmGet$rejectReasonId());
        unmanagedCopy.realmSet$tupleIsSyncedWithServer(realmSource.realmGet$tupleIsSyncedWithServer());
        unmanagedCopy.realmSet$signature(realmSource.realmGet$signature());
        unmanagedCopy.realmSet$confirmTime(realmSource.realmGet$confirmTime());
        unmanagedCopy.realmSet$confirmLocation(com_digikala_dms_model_domain_LatLongRealmProxy.createDetachedCopy(realmSource.realmGet$confirmLocation(), currentDepth + 1, maxDepth, cache));
        if (currentDepth == maxDepth) {
            unmanagedCopy.realmSet$returnedProducts(null);
        } else {
            RealmList<SerialItems> managedreturnedProductsList = realmSource.realmGet$returnedProducts();
            RealmList<SerialItems> unmanagedreturnedProductsList = new RealmList<>();
            unmanagedCopy.realmSet$returnedProducts(unmanagedreturnedProductsList);
            int nextDepth3 = currentDepth + 1;
            int size3 = managedreturnedProductsList.size();
            for (int i3 = 0; i3 < size3; i3++) {
                SerialItems item3 = com_digikala_dms_model_design_SerialItemsRealmProxy.createDetachedCopy(managedreturnedProductsList.get(i3), nextDepth3, maxDepth, cache);
                unmanagedreturnedProductsList.add(item3);
            }
        }
        return unmanagedObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder stringBuilder = new StringBuilder("Shipment = proxy[");
        stringBuilder.append("{orderId:");
        stringBuilder.append(realmGet$orderId() != null ? realmGet$orderId() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{podCode:");
        stringBuilder.append(realmGet$podCode() != null ? realmGet$podCode() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{cardTypeId:");
        stringBuilder.append(realmGet$cardTypeId() != null ? realmGet$cardTypeId() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{cardNumber:");
        stringBuilder.append(realmGet$cardNumber() != null ? realmGet$cardNumber() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{comment:");
        stringBuilder.append(realmGet$comment() != null ? realmGet$comment() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{invoiceId:");
        stringBuilder.append(realmGet$invoiceId() != null ? realmGet$invoiceId() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{isFmcg:");
        stringBuilder.append(realmGet$isFmcg() != null ? realmGet$isFmcg() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{autoRefundable:");
        stringBuilder.append(realmGet$autoRefundable() != null ? realmGet$autoRefundable() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{priority:");
        stringBuilder.append(realmGet$priority() != null ? realmGet$priority() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{paymentStatus:");
        stringBuilder.append(realmGet$paymentStatus());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{payableAmount:");
        stringBuilder.append(realmGet$payableAmount());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{remainingAmount:");
        stringBuilder.append(realmGet$remainingAmount());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{customerName:");
        stringBuilder.append(realmGet$customerName() != null ? realmGet$customerName() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{customerPhoneNo:");
        stringBuilder.append(realmGet$customerPhoneNo() != null ? realmGet$customerPhoneNo() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{recipientName:");
        stringBuilder.append(realmGet$recipientName() != null ? realmGet$recipientName() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{recipientPhoneNo:");
        stringBuilder.append(realmGet$recipientPhoneNo() != null ? realmGet$recipientPhoneNo() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{deliveryTime:");
        stringBuilder.append(realmGet$deliveryTime() != null ? realmGet$deliveryTime() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{deliveryAddress:");
        stringBuilder.append(realmGet$deliveryAddress() != null ? realmGet$deliveryAddress() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{deliveryLatLong:");
        stringBuilder.append(realmGet$deliveryLatLong() != null ? com_digikala_dms_model_domain_LatLongRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{PaymentMethod:");
        stringBuilder.append(realmGet$PaymentMethod() != null ? realmGet$PaymentMethod() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{FinalPayableAmount:");
        stringBuilder.append(realmGet$FinalPayableAmount() != null ? realmGet$FinalPayableAmount() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{status:");
        stringBuilder.append(realmGet$status());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{basketItems:");
        stringBuilder.append("RealmList<BasketItems>[");
        stringBuilder.append(realmGet$basketItems().size());
        stringBuilder.append("]");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{shippingCostConfig:");
        stringBuilder.append("RealmList<ShippingCostConfig>[");
        stringBuilder.append(realmGet$shippingCostConfig().size());
        stringBuilder.append("]");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{basketCount:");
        stringBuilder.append(realmGet$basketCount());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{rejectReasonId:");
        stringBuilder.append(realmGet$rejectReasonId());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{tupleIsSyncedWithServer:");
        stringBuilder.append(realmGet$tupleIsSyncedWithServer());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{signature:");
        stringBuilder.append(realmGet$signature() != null ? realmGet$signature() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{confirmTime:");
        stringBuilder.append(realmGet$confirmTime() != null ? realmGet$confirmTime() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{confirmLocation:");
        stringBuilder.append(realmGet$confirmLocation() != null ? com_digikala_dms_model_domain_LatLongRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{returnedProducts:");
        stringBuilder.append("RealmList<SerialItems>[");
        stringBuilder.append(realmGet$returnedProducts().size());
        stringBuilder.append("]");
        stringBuilder.append("}");
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    public int hashCode() {
        String realmName = this.proxyState.getRealm$realm().getPath();
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        long rowIndex = this.proxyState.getRow$realm().getIndex();
        int result = (17 * 31) + (realmName != null ? realmName.hashCode() : 0);
        return (((result * 31) + (tableName != null ? tableName.hashCode() : 0)) * 31) + ((int) ((rowIndex >>> 32) ^ rowIndex));
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        com_digikala_dms_model_domain_ShipmentRealmProxy aShipment = (com_digikala_dms_model_domain_ShipmentRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aShipment.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aShipment.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aShipment.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
