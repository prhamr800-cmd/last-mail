package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.digikala.dms.model.design.SerialItems;
import io.realm.BaseRealm;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class com_digikala_dms_model_design_SerialItemsRealmProxy extends SerialItems implements RealmObjectProxy, com_digikala_dms_model_design_SerialItemsRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private SerialItemsColumnInfo columnInfo;
    private ProxyState<SerialItems> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "SerialItems";
    }

    static final class SerialItemsColumnInfo extends ColumnInfo {
        long BasketIdIndex;
        long CountIndex;
        long ItemBatchIdIndex;
        long OrderItemIdIndex;
        long ReasonIdIndex;
        long SerialItemIndex;

        SerialItemsColumnInfo(OsSchemaInfo schemaInfo) {
            super(6);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.SerialItemIndex = addColumnDetails("SerialItem", "SerialItem", objectSchemaInfo);
            this.ReasonIdIndex = addColumnDetails("ReasonId", "ReasonId", objectSchemaInfo);
            this.ItemBatchIdIndex = addColumnDetails("ItemBatchId", "ItemBatchId", objectSchemaInfo);
            this.OrderItemIdIndex = addColumnDetails("OrderItemId", "OrderItemId", objectSchemaInfo);
            this.BasketIdIndex = addColumnDetails("BasketId", "BasketId", objectSchemaInfo);
            this.CountIndex = addColumnDetails("Count", "Count", objectSchemaInfo);
        }

        SerialItemsColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new SerialItemsColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            SerialItemsColumnInfo src = (SerialItemsColumnInfo) rawSrc;
            SerialItemsColumnInfo dst = (SerialItemsColumnInfo) rawDst;
            dst.SerialItemIndex = src.SerialItemIndex;
            dst.ReasonIdIndex = src.ReasonIdIndex;
            dst.ItemBatchIdIndex = src.ItemBatchIdIndex;
            dst.OrderItemIdIndex = src.OrderItemIdIndex;
            dst.BasketIdIndex = src.BasketIdIndex;
            dst.CountIndex = src.CountIndex;
        }
    }

    com_digikala_dms_model_design_SerialItemsRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (SerialItemsColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // com.digikala.dms.model.design.SerialItems, io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public String realmGet$SerialItem() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.SerialItemIndex);
    }

    @Override // com.digikala.dms.model.design.SerialItems, io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public void realmSet$SerialItem(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.SerialItemIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.SerialItemIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.SerialItemIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.SerialItemIndex, value);
        }
    }

    @Override // com.digikala.dms.model.design.SerialItems, io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public String realmGet$ReasonId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.ReasonIdIndex);
    }

    @Override // com.digikala.dms.model.design.SerialItems, io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public void realmSet$ReasonId(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.ReasonIdIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.ReasonIdIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.ReasonIdIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.ReasonIdIndex, value);
        }
    }

    @Override // com.digikala.dms.model.design.SerialItems, io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public String realmGet$ItemBatchId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.ItemBatchIdIndex);
    }

    @Override // com.digikala.dms.model.design.SerialItems, io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public void realmSet$ItemBatchId(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.ItemBatchIdIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.ItemBatchIdIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.ItemBatchIdIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.ItemBatchIdIndex, value);
        }
    }

    @Override // com.digikala.dms.model.design.SerialItems, io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public String realmGet$OrderItemId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.OrderItemIdIndex);
    }

    @Override // com.digikala.dms.model.design.SerialItems, io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public void realmSet$OrderItemId(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.OrderItemIdIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.OrderItemIdIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.OrderItemIdIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.OrderItemIdIndex, value);
        }
    }

    @Override // com.digikala.dms.model.design.SerialItems, io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public String realmGet$BasketId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.BasketIdIndex);
    }

    @Override // com.digikala.dms.model.design.SerialItems, io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public void realmSet$BasketId(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.BasketIdIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.BasketIdIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.BasketIdIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.BasketIdIndex, value);
        }
    }

    @Override // com.digikala.dms.model.design.SerialItems, io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public int realmGet$Count() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.CountIndex);
    }

    @Override // com.digikala.dms.model.design.SerialItems, io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public void realmSet$Count(int value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setLong(this.columnInfo.CountIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setLong(this.columnInfo.CountIndex, value);
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 6, 0);
        builder.addPersistedProperty("SerialItem", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("ReasonId", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("ItemBatchId", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("OrderItemId", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("BasketId", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("Count", RealmFieldType.INTEGER, false, false, true);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static SerialItemsColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new SerialItemsColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static SerialItems createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws JSONException {
        List<String> excludeFields = Collections.emptyList();
        SerialItems obj = (SerialItems) realm.createObjectInternal(SerialItems.class, true, excludeFields);
        SerialItems objProxy = obj;
        if (json.has("SerialItem")) {
            if (json.isNull("SerialItem")) {
                objProxy.realmSet$SerialItem(null);
            } else {
                objProxy.realmSet$SerialItem(json.getString("SerialItem"));
            }
        }
        if (json.has("ReasonId")) {
            if (json.isNull("ReasonId")) {
                objProxy.realmSet$ReasonId(null);
            } else {
                objProxy.realmSet$ReasonId(json.getString("ReasonId"));
            }
        }
        if (json.has("ItemBatchId")) {
            if (json.isNull("ItemBatchId")) {
                objProxy.realmSet$ItemBatchId(null);
            } else {
                objProxy.realmSet$ItemBatchId(json.getString("ItemBatchId"));
            }
        }
        if (json.has("OrderItemId")) {
            if (json.isNull("OrderItemId")) {
                objProxy.realmSet$OrderItemId(null);
            } else {
                objProxy.realmSet$OrderItemId(json.getString("OrderItemId"));
            }
        }
        if (json.has("BasketId")) {
            if (json.isNull("BasketId")) {
                objProxy.realmSet$BasketId(null);
            } else {
                objProxy.realmSet$BasketId(json.getString("BasketId"));
            }
        }
        if (json.has("Count")) {
            if (json.isNull("Count")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'Count' to null.");
            }
            objProxy.realmSet$Count(json.getInt("Count"));
        }
        return obj;
    }

    @TargetApi(11)
    public static SerialItems createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        SerialItems obj = new SerialItems();
        SerialItems objProxy = obj;
        reader.beginObject();
        while (reader.hasNext()) {
            String name = reader.nextName();
            if (name.equals("SerialItem")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$SerialItem(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$SerialItem(null);
                }
            } else if (name.equals("ReasonId")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$ReasonId(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$ReasonId(null);
                }
            } else if (name.equals("ItemBatchId")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$ItemBatchId(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$ItemBatchId(null);
                }
            } else if (name.equals("OrderItemId")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$OrderItemId(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$OrderItemId(null);
                }
            } else if (name.equals("BasketId")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$BasketId(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$BasketId(null);
                }
            } else if (name.equals("Count")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$Count(reader.nextInt());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'Count' to null.");
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return (SerialItems) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static SerialItems copyOrUpdate(Realm realm, SerialItems serialItems, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        if ((serialItems instanceof RealmObjectProxy) && ((RealmObjectProxy) serialItems).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) serialItems).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return serialItems;
            }
        }
        BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(serialItems);
        if (realmModel != null) {
            return (SerialItems) realmModel;
        }
        return copy(realm, serialItems, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static SerialItems copy(Realm realm, SerialItems newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (SerialItems) realmModel;
        }
        SerialItems serialItems = (SerialItems) realm.createObjectInternal(SerialItems.class, false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) serialItems);
        SerialItems realmObjectSource = newObject;
        SerialItems realmObjectCopy = serialItems;
        realmObjectCopy.realmSet$SerialItem(realmObjectSource.realmGet$SerialItem());
        realmObjectCopy.realmSet$ReasonId(realmObjectSource.realmGet$ReasonId());
        realmObjectCopy.realmSet$ItemBatchId(realmObjectSource.realmGet$ItemBatchId());
        realmObjectCopy.realmSet$OrderItemId(realmObjectSource.realmGet$OrderItemId());
        realmObjectCopy.realmSet$BasketId(realmObjectSource.realmGet$BasketId());
        realmObjectCopy.realmSet$Count(realmObjectSource.realmGet$Count());
        return serialItems;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, SerialItems serialItems, Map<RealmModel, Long> cache) {
        if ((serialItems instanceof RealmObjectProxy) && ((RealmObjectProxy) serialItems).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) serialItems).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) serialItems).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(SerialItems.class);
        long tableNativePtr = table.getNativePtr();
        SerialItemsColumnInfo columnInfo = (SerialItemsColumnInfo) realm.getSchema().getColumnInfo(SerialItems.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(serialItems, Long.valueOf(rowIndex));
        String realmGet$SerialItem = serialItems.realmGet$SerialItem();
        if (realmGet$SerialItem != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.SerialItemIndex, rowIndex, realmGet$SerialItem, false);
        }
        String realmGet$ReasonId = serialItems.realmGet$ReasonId();
        if (realmGet$ReasonId != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.ReasonIdIndex, rowIndex, realmGet$ReasonId, false);
        }
        String realmGet$ItemBatchId = serialItems.realmGet$ItemBatchId();
        if (realmGet$ItemBatchId != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.ItemBatchIdIndex, rowIndex, realmGet$ItemBatchId, false);
        }
        String realmGet$OrderItemId = serialItems.realmGet$OrderItemId();
        if (realmGet$OrderItemId != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.OrderItemIdIndex, rowIndex, realmGet$OrderItemId, false);
        }
        String realmGet$BasketId = serialItems.realmGet$BasketId();
        if (realmGet$BasketId != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.BasketIdIndex, rowIndex, realmGet$BasketId, false);
        }
        Table.nativeSetLong(tableNativePtr, columnInfo.CountIndex, rowIndex, serialItems.realmGet$Count(), false);
        return rowIndex;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(SerialItems.class);
        long tableNativePtr = table.getNativePtr();
        SerialItemsColumnInfo columnInfo = (SerialItemsColumnInfo) realm.getSchema().getColumnInfo(SerialItems.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (SerialItems) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    String realmGet$SerialItem = ((com_digikala_dms_model_design_SerialItemsRealmProxyInterface) realmModel).realmGet$SerialItem();
                    if (realmGet$SerialItem != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.SerialItemIndex, rowIndex, realmGet$SerialItem, false);
                    }
                    String realmGet$ReasonId = ((com_digikala_dms_model_design_SerialItemsRealmProxyInterface) realmModel).realmGet$ReasonId();
                    if (realmGet$ReasonId != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.ReasonIdIndex, rowIndex, realmGet$ReasonId, false);
                    }
                    String realmGet$ItemBatchId = ((com_digikala_dms_model_design_SerialItemsRealmProxyInterface) realmModel).realmGet$ItemBatchId();
                    if (realmGet$ItemBatchId != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.ItemBatchIdIndex, rowIndex, realmGet$ItemBatchId, false);
                    }
                    String realmGet$OrderItemId = ((com_digikala_dms_model_design_SerialItemsRealmProxyInterface) realmModel).realmGet$OrderItemId();
                    if (realmGet$OrderItemId != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.OrderItemIdIndex, rowIndex, realmGet$OrderItemId, false);
                    }
                    String realmGet$BasketId = ((com_digikala_dms_model_design_SerialItemsRealmProxyInterface) realmModel).realmGet$BasketId();
                    if (realmGet$BasketId != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.BasketIdIndex, rowIndex, realmGet$BasketId, false);
                    }
                    Table.nativeSetLong(tableNativePtr, columnInfo.CountIndex, rowIndex, ((com_digikala_dms_model_design_SerialItemsRealmProxyInterface) realmModel).realmGet$Count(), false);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, SerialItems serialItems, Map<RealmModel, Long> cache) {
        if ((serialItems instanceof RealmObjectProxy) && ((RealmObjectProxy) serialItems).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) serialItems).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) serialItems).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(SerialItems.class);
        long tableNativePtr = table.getNativePtr();
        SerialItemsColumnInfo columnInfo = (SerialItemsColumnInfo) realm.getSchema().getColumnInfo(SerialItems.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(serialItems, Long.valueOf(rowIndex));
        String realmGet$SerialItem = serialItems.realmGet$SerialItem();
        if (realmGet$SerialItem != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.SerialItemIndex, rowIndex, realmGet$SerialItem, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.SerialItemIndex, rowIndex, false);
        }
        String realmGet$ReasonId = serialItems.realmGet$ReasonId();
        if (realmGet$ReasonId != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.ReasonIdIndex, rowIndex, realmGet$ReasonId, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.ReasonIdIndex, rowIndex, false);
        }
        String realmGet$ItemBatchId = serialItems.realmGet$ItemBatchId();
        if (realmGet$ItemBatchId != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.ItemBatchIdIndex, rowIndex, realmGet$ItemBatchId, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.ItemBatchIdIndex, rowIndex, false);
        }
        String realmGet$OrderItemId = serialItems.realmGet$OrderItemId();
        if (realmGet$OrderItemId != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.OrderItemIdIndex, rowIndex, realmGet$OrderItemId, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.OrderItemIdIndex, rowIndex, false);
        }
        String realmGet$BasketId = serialItems.realmGet$BasketId();
        if (realmGet$BasketId != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.BasketIdIndex, rowIndex, realmGet$BasketId, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.BasketIdIndex, rowIndex, false);
        }
        Table.nativeSetLong(tableNativePtr, columnInfo.CountIndex, rowIndex, serialItems.realmGet$Count(), false);
        return rowIndex;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(SerialItems.class);
        long tableNativePtr = table.getNativePtr();
        SerialItemsColumnInfo columnInfo = (SerialItemsColumnInfo) realm.getSchema().getColumnInfo(SerialItems.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (SerialItems) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    String realmGet$SerialItem = ((com_digikala_dms_model_design_SerialItemsRealmProxyInterface) realmModel).realmGet$SerialItem();
                    if (realmGet$SerialItem != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.SerialItemIndex, rowIndex, realmGet$SerialItem, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.SerialItemIndex, rowIndex, false);
                    }
                    String realmGet$ReasonId = ((com_digikala_dms_model_design_SerialItemsRealmProxyInterface) realmModel).realmGet$ReasonId();
                    if (realmGet$ReasonId != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.ReasonIdIndex, rowIndex, realmGet$ReasonId, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.ReasonIdIndex, rowIndex, false);
                    }
                    String realmGet$ItemBatchId = ((com_digikala_dms_model_design_SerialItemsRealmProxyInterface) realmModel).realmGet$ItemBatchId();
                    if (realmGet$ItemBatchId != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.ItemBatchIdIndex, rowIndex, realmGet$ItemBatchId, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.ItemBatchIdIndex, rowIndex, false);
                    }
                    String realmGet$OrderItemId = ((com_digikala_dms_model_design_SerialItemsRealmProxyInterface) realmModel).realmGet$OrderItemId();
                    if (realmGet$OrderItemId != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.OrderItemIdIndex, rowIndex, realmGet$OrderItemId, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.OrderItemIdIndex, rowIndex, false);
                    }
                    String realmGet$BasketId = ((com_digikala_dms_model_design_SerialItemsRealmProxyInterface) realmModel).realmGet$BasketId();
                    if (realmGet$BasketId != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.BasketIdIndex, rowIndex, realmGet$BasketId, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.BasketIdIndex, rowIndex, false);
                    }
                    Table.nativeSetLong(tableNativePtr, columnInfo.CountIndex, rowIndex, ((com_digikala_dms_model_design_SerialItemsRealmProxyInterface) realmModel).realmGet$Count(), false);
                }
            }
        }
    }

    public static SerialItems createDetachedCopy(SerialItems realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        SerialItems unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new SerialItems();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (SerialItems) cachedObject.object;
            }
            unmanagedObject = (SerialItems) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        com_digikala_dms_model_design_SerialItemsRealmProxyInterface unmanagedCopy = unmanagedObject;
        SerialItems realmSource = realmObject;
        unmanagedCopy.realmSet$SerialItem(realmSource.realmGet$SerialItem());
        unmanagedCopy.realmSet$ReasonId(realmSource.realmGet$ReasonId());
        unmanagedCopy.realmSet$ItemBatchId(realmSource.realmGet$ItemBatchId());
        unmanagedCopy.realmSet$OrderItemId(realmSource.realmGet$OrderItemId());
        unmanagedCopy.realmSet$BasketId(realmSource.realmGet$BasketId());
        unmanagedCopy.realmSet$Count(realmSource.realmGet$Count());
        return unmanagedObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder stringBuilder = new StringBuilder("SerialItems = proxy[");
        stringBuilder.append("{SerialItem:");
        stringBuilder.append(realmGet$SerialItem() != null ? realmGet$SerialItem() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{ReasonId:");
        stringBuilder.append(realmGet$ReasonId() != null ? realmGet$ReasonId() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{ItemBatchId:");
        stringBuilder.append(realmGet$ItemBatchId() != null ? realmGet$ItemBatchId() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{OrderItemId:");
        stringBuilder.append(realmGet$OrderItemId() != null ? realmGet$OrderItemId() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{BasketId:");
        stringBuilder.append(realmGet$BasketId() != null ? realmGet$BasketId() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{Count:");
        stringBuilder.append(realmGet$Count());
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
        com_digikala_dms_model_design_SerialItemsRealmProxy aSerialItems = (com_digikala_dms_model_design_SerialItemsRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aSerialItems.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aSerialItems.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aSerialItems.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
