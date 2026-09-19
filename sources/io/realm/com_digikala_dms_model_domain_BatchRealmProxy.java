package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.digikala.dms.model.domain.Batch;
import com.digikala.dms.model.domain.Courier;
import com.digikala.dms.model.domain.Shipment;
import io.realm.BaseRealm;
import io.realm.com_digikala_dms_model_domain_ShipmentRealmProxy;
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
public class com_digikala_dms_model_domain_BatchRealmProxy extends Batch implements RealmObjectProxy, com_digikala_dms_model_domain_BatchRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private BatchColumnInfo columnInfo;
    private ProxyState<Batch> proxyState;
    private RealmList<Shipment> shipmentsRealmList;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "Batch";
    }

    static final class BatchColumnInfo extends ColumnInfo {
        long idIndex;
        long shipmentsIndex;
        long statusIndex;

        BatchColumnInfo(OsSchemaInfo schemaInfo) {
            super(3);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.statusIndex = addColumnDetails("status", "status", objectSchemaInfo);
            this.shipmentsIndex = addColumnDetails(Courier.COLUMN_SHIPMENTS, Courier.COLUMN_SHIPMENTS, objectSchemaInfo);
        }

        BatchColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new BatchColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            BatchColumnInfo src = (BatchColumnInfo) rawSrc;
            BatchColumnInfo dst = (BatchColumnInfo) rawDst;
            dst.idIndex = src.idIndex;
            dst.statusIndex = src.statusIndex;
            dst.shipmentsIndex = src.shipmentsIndex;
        }
    }

    com_digikala_dms_model_domain_BatchRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (BatchColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // com.digikala.dms.model.domain.Batch, io.realm.com_digikala_dms_model_domain_BatchRealmProxyInterface
    public String realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.idIndex);
    }

    @Override // com.digikala.dms.model.domain.Batch, io.realm.com_digikala_dms_model_domain_BatchRealmProxyInterface
    public void realmSet$id(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.idIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.idIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.idIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.idIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.Batch, io.realm.com_digikala_dms_model_domain_BatchRealmProxyInterface
    public int realmGet$status() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.statusIndex);
    }

    @Override // com.digikala.dms.model.domain.Batch, io.realm.com_digikala_dms_model_domain_BatchRealmProxyInterface
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

    @Override // com.digikala.dms.model.domain.Batch, io.realm.com_digikala_dms_model_domain_BatchRealmProxyInterface
    public RealmList<Shipment> realmGet$shipments() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.shipmentsRealmList != null) {
            return this.shipmentsRealmList;
        }
        OsList osList = this.proxyState.getRow$realm().getModelList(this.columnInfo.shipmentsIndex);
        this.shipmentsRealmList = new RealmList<>(Shipment.class, osList, this.proxyState.getRealm$realm());
        return this.shipmentsRealmList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [io.realm.RealmList, io.realm.RealmList<com.digikala.dms.model.domain.Shipment>] */
    /* JADX WARN: Type inference failed for: r9v1, types: [io.realm.RealmList] */
    /* JADX WARN: Type inference failed for: r9v2, types: [io.realm.RealmList] */
    @Override // com.digikala.dms.model.domain.Batch, io.realm.com_digikala_dms_model_domain_BatchRealmProxyInterface
    public void realmSet$shipments(RealmList<Shipment> realmList) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm() || this.proxyState.getExcludeFields$realm().contains(Courier.COLUMN_SHIPMENTS)) {
                return;
            }
            if (realmList != 0 && !realmList.isManaged()) {
                Realm realm = (Realm) this.proxyState.getRealm$realm();
                realmList = new RealmList();
                for (Shipment item : realmList) {
                    if (item == null || RealmObject.isManaged(item)) {
                        realmList.add(item);
                    } else {
                        realmList.add(realm.copyToRealm(item));
                    }
                }
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        OsList osList = this.proxyState.getRow$realm().getModelList(this.columnInfo.shipmentsIndex);
        int i = 0;
        if (realmList != 0 && realmList.size() == osList.size()) {
            int objects = realmList.size();
            while (i < objects) {
                RealmModel realmModel = (Shipment) realmList.get(i);
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
            RealmModel realmModel2 = (Shipment) realmList.get(i);
            this.proxyState.checkValidObject(realmModel2);
            osList.addRow(((RealmObjectProxy) realmModel2).realmGet$proxyState().getRow$realm().getIndex());
            i++;
        }
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 3, 0);
        builder.addPersistedProperty("id", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("status", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedLinkProperty(Courier.COLUMN_SHIPMENTS, RealmFieldType.LIST, com_digikala_dms_model_domain_ShipmentRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static BatchColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new BatchColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static Batch createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws JSONException {
        List<String> excludeFields = new ArrayList<>(1);
        if (json.has(Courier.COLUMN_SHIPMENTS)) {
            excludeFields.add(Courier.COLUMN_SHIPMENTS);
        }
        Batch obj = (Batch) realm.createObjectInternal(Batch.class, true, excludeFields);
        Batch objProxy = obj;
        if (json.has("id")) {
            if (json.isNull("id")) {
                objProxy.realmSet$id(null);
            } else {
                objProxy.realmSet$id(json.getString("id"));
            }
        }
        if (json.has("status")) {
            if (json.isNull("status")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'status' to null.");
            }
            objProxy.realmSet$status(json.getInt("status"));
        }
        if (json.has(Courier.COLUMN_SHIPMENTS)) {
            if (json.isNull(Courier.COLUMN_SHIPMENTS)) {
                objProxy.realmSet$shipments(null);
            } else {
                objProxy.realmGet$shipments().clear();
                JSONArray array = json.getJSONArray(Courier.COLUMN_SHIPMENTS);
                for (int i = 0; i < array.length(); i++) {
                    Shipment item = com_digikala_dms_model_domain_ShipmentRealmProxy.createOrUpdateUsingJsonObject(realm, array.getJSONObject(i), update);
                    objProxy.realmGet$shipments().add(item);
                }
            }
        }
        return obj;
    }

    @TargetApi(11)
    public static Batch createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        Batch obj = new Batch();
        Batch objProxy = obj;
        reader.beginObject();
        while (reader.hasNext()) {
            String name = reader.nextName();
            if (name.equals("id")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$id(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$id(null);
                }
            } else if (name.equals("status")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$status(reader.nextInt());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'status' to null.");
                }
            } else if (name.equals(Courier.COLUMN_SHIPMENTS)) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$shipments(null);
                } else {
                    objProxy.realmSet$shipments(new RealmList<>());
                    reader.beginArray();
                    while (reader.hasNext()) {
                        Shipment item = com_digikala_dms_model_domain_ShipmentRealmProxy.createUsingJsonStream(realm, reader);
                        objProxy.realmGet$shipments().add(item);
                    }
                    reader.endArray();
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return (Batch) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Batch copyOrUpdate(Realm realm, Batch batch, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        if ((batch instanceof RealmObjectProxy) && ((RealmObjectProxy) batch).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) batch).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return batch;
            }
        }
        BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(batch);
        if (realmModel != null) {
            return (Batch) realmModel;
        }
        return copy(realm, batch, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Batch copy(Realm realm, Batch newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (Batch) realmModel;
        }
        Batch batch = (Batch) realm.createObjectInternal(Batch.class, false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) batch);
        Batch realmObjectSource = newObject;
        Batch realmObjectCopy = batch;
        realmObjectCopy.realmSet$id(realmObjectSource.realmGet$id());
        realmObjectCopy.realmSet$status(realmObjectSource.realmGet$status());
        RealmList<Shipment> shipmentsList = realmObjectSource.realmGet$shipments();
        if (shipmentsList != null) {
            RealmList<Shipment> shipmentsRealmList = realmObjectCopy.realmGet$shipments();
            shipmentsRealmList.clear();
            for (int i = 0; i < shipmentsList.size(); i++) {
                Shipment shipmentsItem = shipmentsList.get(i);
                Shipment cacheshipments = (Shipment) cache.get(shipmentsItem);
                if (cacheshipments != null) {
                    shipmentsRealmList.add(cacheshipments);
                } else {
                    shipmentsRealmList.add(com_digikala_dms_model_domain_ShipmentRealmProxy.copyOrUpdate(realm, shipmentsItem, update, cache));
                }
            }
        }
        return batch;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, Batch batch, Map<RealmModel, Long> cache) {
        long rowIndex;
        if (!(batch instanceof RealmObjectProxy) || ((RealmObjectProxy) batch).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) batch).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table = realm.getTable(Batch.class);
            long tableNativePtr = table.getNativePtr();
            BatchColumnInfo columnInfo = (BatchColumnInfo) realm.getSchema().getColumnInfo(Batch.class);
            long rowIndex2 = OsObject.createRow(table);
            cache.put(batch, Long.valueOf(rowIndex2));
            String realmGet$id = batch.realmGet$id();
            if (realmGet$id != null) {
                rowIndex = rowIndex2;
                Table.nativeSetString(tableNativePtr, columnInfo.idIndex, rowIndex2, realmGet$id, false);
            } else {
                rowIndex = rowIndex2;
            }
            Table.nativeSetLong(tableNativePtr, columnInfo.statusIndex, rowIndex, batch.realmGet$status(), false);
            RealmList<Shipment> shipmentsList = batch.realmGet$shipments();
            if (shipmentsList != null) {
                long rowIndex3 = rowIndex;
                OsList shipmentsOsList = new OsList(table.getUncheckedRow(rowIndex3), columnInfo.shipmentsIndex);
                for (Shipment shipmentsItem : shipmentsList) {
                    Long cacheItemIndexshipments = cache.get(shipmentsItem);
                    if (cacheItemIndexshipments == null) {
                        cacheItemIndexshipments = Long.valueOf(com_digikala_dms_model_domain_ShipmentRealmProxy.insert(realm, shipmentsItem, cache));
                    }
                    shipmentsOsList.addRow(cacheItemIndexshipments.longValue());
                }
                return rowIndex3;
            }
            return rowIndex;
        }
        return ((RealmObjectProxy) batch).realmGet$proxyState().getRow$realm().getIndex();
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        long rowIndex;
        Table table = realm.getTable(Batch.class);
        long tableNativePtr = table.getNativePtr();
        BatchColumnInfo columnInfo = (BatchColumnInfo) realm.getSchema().getColumnInfo(Batch.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (Batch) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex2 = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex2));
                    String realmGet$id = ((com_digikala_dms_model_domain_BatchRealmProxyInterface) realmModel).realmGet$id();
                    if (realmGet$id != null) {
                        rowIndex = rowIndex2;
                        Table.nativeSetString(tableNativePtr, columnInfo.idIndex, rowIndex2, realmGet$id, false);
                    } else {
                        rowIndex = rowIndex2;
                    }
                    Table.nativeSetLong(tableNativePtr, columnInfo.statusIndex, rowIndex, ((com_digikala_dms_model_domain_BatchRealmProxyInterface) realmModel).realmGet$status(), false);
                    RealmList<Shipment> shipmentsList = ((com_digikala_dms_model_domain_BatchRealmProxyInterface) realmModel).realmGet$shipments();
                    if (shipmentsList != null) {
                        OsList shipmentsOsList = new OsList(table.getUncheckedRow(rowIndex), columnInfo.shipmentsIndex);
                        for (Shipment shipmentsItem : shipmentsList) {
                            Long cacheItemIndexshipments = cache.get(shipmentsItem);
                            if (cacheItemIndexshipments == null) {
                                cacheItemIndexshipments = Long.valueOf(com_digikala_dms_model_domain_ShipmentRealmProxy.insert(realm, shipmentsItem, cache));
                            }
                            shipmentsOsList.addRow(cacheItemIndexshipments.longValue());
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, Batch batch, Map<RealmModel, Long> cache) {
        long rowIndex;
        if (!(batch instanceof RealmObjectProxy) || ((RealmObjectProxy) batch).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) batch).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table = realm.getTable(Batch.class);
            long tableNativePtr = table.getNativePtr();
            BatchColumnInfo columnInfo = (BatchColumnInfo) realm.getSchema().getColumnInfo(Batch.class);
            long rowIndex2 = OsObject.createRow(table);
            cache.put(batch, Long.valueOf(rowIndex2));
            String realmGet$id = batch.realmGet$id();
            if (realmGet$id != null) {
                rowIndex = rowIndex2;
                Table.nativeSetString(tableNativePtr, columnInfo.idIndex, rowIndex2, realmGet$id, false);
            } else {
                rowIndex = rowIndex2;
                Table.nativeSetNull(tableNativePtr, columnInfo.idIndex, rowIndex, false);
            }
            Table.nativeSetLong(tableNativePtr, columnInfo.statusIndex, rowIndex, batch.realmGet$status(), false);
            long rowIndex3 = rowIndex;
            OsList shipmentsOsList = new OsList(table.getUncheckedRow(rowIndex3), columnInfo.shipmentsIndex);
            RealmList<Shipment> shipmentsList = batch.realmGet$shipments();
            if (shipmentsList != null && shipmentsList.size() == shipmentsOsList.size()) {
                int objects = shipmentsList.size();
                int i = 0;
                while (i < objects) {
                    Shipment shipmentsItem = shipmentsList.get(i);
                    Long cacheItemIndexshipments = cache.get(shipmentsItem);
                    if (cacheItemIndexshipments == null) {
                        cacheItemIndexshipments = Long.valueOf(com_digikala_dms_model_domain_ShipmentRealmProxy.insertOrUpdate(realm, shipmentsItem, cache));
                    }
                    shipmentsOsList.setRow(i, cacheItemIndexshipments.longValue());
                    i++;
                    tableNativePtr = tableNativePtr;
                    columnInfo = columnInfo;
                }
            } else {
                shipmentsOsList.removeAll();
                if (shipmentsList != null) {
                    for (Shipment shipmentsItem2 : shipmentsList) {
                        Long cacheItemIndexshipments2 = cache.get(shipmentsItem2);
                        if (cacheItemIndexshipments2 == null) {
                            cacheItemIndexshipments2 = Long.valueOf(com_digikala_dms_model_domain_ShipmentRealmProxy.insertOrUpdate(realm, shipmentsItem2, cache));
                        }
                        shipmentsOsList.addRow(cacheItemIndexshipments2.longValue());
                    }
                }
            }
            return rowIndex3;
        }
        return ((RealmObjectProxy) batch).realmGet$proxyState().getRow$realm().getIndex();
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        long rowIndex;
        long tableNativePtr;
        Table table = realm.getTable(Batch.class);
        long tableNativePtr2 = table.getNativePtr();
        BatchColumnInfo columnInfo = (BatchColumnInfo) realm.getSchema().getColumnInfo(Batch.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (Batch) objects.next();
            if (cache.containsKey(realmModel)) {
                tableNativePtr = tableNativePtr2;
            } else if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                tableNativePtr = tableNativePtr2;
            } else {
                long rowIndex2 = OsObject.createRow(table);
                cache.put(realmModel, Long.valueOf(rowIndex2));
                String realmGet$id = ((com_digikala_dms_model_domain_BatchRealmProxyInterface) realmModel).realmGet$id();
                if (realmGet$id != null) {
                    rowIndex = rowIndex2;
                    Table.nativeSetString(tableNativePtr2, columnInfo.idIndex, rowIndex2, realmGet$id, false);
                } else {
                    rowIndex = rowIndex2;
                    Table.nativeSetNull(tableNativePtr2, columnInfo.idIndex, rowIndex, false);
                }
                Table.nativeSetLong(tableNativePtr2, columnInfo.statusIndex, rowIndex, ((com_digikala_dms_model_domain_BatchRealmProxyInterface) realmModel).realmGet$status(), false);
                long rowIndex3 = rowIndex;
                OsList shipmentsOsList = new OsList(table.getUncheckedRow(rowIndex3), columnInfo.shipmentsIndex);
                RealmList<Shipment> shipmentsList = ((com_digikala_dms_model_domain_BatchRealmProxyInterface) realmModel).realmGet$shipments();
                if (shipmentsList != null && shipmentsList.size() == shipmentsOsList.size()) {
                    int objectCount = shipmentsList.size();
                    int i = 0;
                    while (i < objectCount) {
                        Shipment shipmentsItem = shipmentsList.get(i);
                        Long cacheItemIndexshipments = cache.get(shipmentsItem);
                        if (cacheItemIndexshipments == null) {
                            cacheItemIndexshipments = Long.valueOf(com_digikala_dms_model_domain_ShipmentRealmProxy.insertOrUpdate(realm, shipmentsItem, cache));
                        }
                        shipmentsOsList.setRow(i, cacheItemIndexshipments.longValue());
                        i++;
                        rowIndex3 = rowIndex3;
                        tableNativePtr2 = tableNativePtr2;
                    }
                    tableNativePtr = tableNativePtr2;
                } else {
                    tableNativePtr = tableNativePtr2;
                    shipmentsOsList.removeAll();
                    if (shipmentsList != null) {
                        for (Shipment shipmentsItem2 : shipmentsList) {
                            Long cacheItemIndexshipments2 = cache.get(shipmentsItem2);
                            if (cacheItemIndexshipments2 == null) {
                                cacheItemIndexshipments2 = Long.valueOf(com_digikala_dms_model_domain_ShipmentRealmProxy.insertOrUpdate(realm, shipmentsItem2, cache));
                            }
                            shipmentsOsList.addRow(cacheItemIndexshipments2.longValue());
                        }
                    }
                }
            }
            tableNativePtr2 = tableNativePtr;
        }
    }

    public static Batch createDetachedCopy(Batch realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        Batch unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new Batch();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (Batch) cachedObject.object;
            }
            unmanagedObject = (Batch) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        com_digikala_dms_model_domain_BatchRealmProxyInterface unmanagedCopy = unmanagedObject;
        Batch realmSource = realmObject;
        unmanagedCopy.realmSet$id(realmSource.realmGet$id());
        unmanagedCopy.realmSet$status(realmSource.realmGet$status());
        if (currentDepth == maxDepth) {
            unmanagedCopy.realmSet$shipments(null);
        } else {
            RealmList<Shipment> managedshipmentsList = realmSource.realmGet$shipments();
            RealmList<Shipment> unmanagedshipmentsList = new RealmList<>();
            unmanagedCopy.realmSet$shipments(unmanagedshipmentsList);
            int nextDepth = currentDepth + 1;
            int size = managedshipmentsList.size();
            for (int i = 0; i < size; i++) {
                Shipment item = com_digikala_dms_model_domain_ShipmentRealmProxy.createDetachedCopy(managedshipmentsList.get(i), nextDepth, maxDepth, cache);
                unmanagedshipmentsList.add(item);
            }
        }
        return unmanagedObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder stringBuilder = new StringBuilder("Batch = proxy[");
        stringBuilder.append("{id:");
        stringBuilder.append(realmGet$id() != null ? realmGet$id() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{status:");
        stringBuilder.append(realmGet$status());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{shipments:");
        stringBuilder.append("RealmList<Shipment>[");
        stringBuilder.append(realmGet$shipments().size());
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
        com_digikala_dms_model_domain_BatchRealmProxy aBatch = (com_digikala_dms_model_domain_BatchRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aBatch.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aBatch.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aBatch.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
