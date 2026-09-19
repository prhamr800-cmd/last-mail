package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.digikala.dms.model.domain.DistributionCenter;
import com.digikala.dms.model.domain.LatLong;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.realm.BaseRealm;
import io.realm.com_digikala_dms_model_domain_LatLongRealmProxy;
import io.realm.internal.ColumnInfo;
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
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class com_digikala_dms_model_domain_DistributionCenterRealmProxy extends DistributionCenter implements RealmObjectProxy, com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private DistributionCenterColumnInfo columnInfo;
    private ProxyState<DistributionCenter> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "DistributionCenter";
    }

    static final class DistributionCenterColumnInfo extends ColumnInfo {
        long idIndex;
        long latLongIndex;
        long managerNameIndex;
        long titleIndex;

        DistributionCenterColumnInfo(OsSchemaInfo schemaInfo) {
            super(4);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.titleIndex = addColumnDetails(SettingsJsonConstants.PROMPT_TITLE_KEY, SettingsJsonConstants.PROMPT_TITLE_KEY, objectSchemaInfo);
            this.managerNameIndex = addColumnDetails("managerName", "managerName", objectSchemaInfo);
            this.latLongIndex = addColumnDetails("latLong", "latLong", objectSchemaInfo);
        }

        DistributionCenterColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new DistributionCenterColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            DistributionCenterColumnInfo src = (DistributionCenterColumnInfo) rawSrc;
            DistributionCenterColumnInfo dst = (DistributionCenterColumnInfo) rawDst;
            dst.idIndex = src.idIndex;
            dst.titleIndex = src.titleIndex;
            dst.managerNameIndex = src.managerNameIndex;
            dst.latLongIndex = src.latLongIndex;
        }
    }

    com_digikala_dms_model_domain_DistributionCenterRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (DistributionCenterColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // com.digikala.dms.model.domain.DistributionCenter, io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface
    public int realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // com.digikala.dms.model.domain.DistributionCenter, io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface
    public void realmSet$id(int value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setLong(this.columnInfo.idIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setLong(this.columnInfo.idIndex, value);
    }

    @Override // com.digikala.dms.model.domain.DistributionCenter, io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface
    public String realmGet$title() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.titleIndex);
    }

    @Override // com.digikala.dms.model.domain.DistributionCenter, io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface
    public void realmSet$title(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.titleIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.titleIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.titleIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.titleIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.DistributionCenter, io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface
    public String realmGet$managerName() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.managerNameIndex);
    }

    @Override // com.digikala.dms.model.domain.DistributionCenter, io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface
    public void realmSet$managerName(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.managerNameIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.managerNameIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.managerNameIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.managerNameIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.DistributionCenter, io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface
    public LatLong realmGet$latLong() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.latLongIndex)) {
            return null;
        }
        return (LatLong) this.proxyState.getRealm$realm().get(LatLong.class, this.proxyState.getRow$realm().getLink(this.columnInfo.latLongIndex), false, Collections.emptyList());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.digikala.dms.model.domain.DistributionCenter, io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface
    public void realmSet$latLong(LatLong latLong) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            RealmModel realmModel = latLong;
            if (this.proxyState.getExcludeFields$realm().contains("latLong")) {
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
                row$realm.nullifyLink(this.columnInfo.latLongIndex);
                return;
            } else {
                this.proxyState.checkValidObject(realmModel);
                row$realm.getTable().setLink(this.columnInfo.latLongIndex, row$realm.getIndex(), ((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex(), true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (latLong == 0) {
            this.proxyState.getRow$realm().nullifyLink(this.columnInfo.latLongIndex);
        } else {
            this.proxyState.checkValidObject(latLong);
            this.proxyState.getRow$realm().setLink(this.columnInfo.latLongIndex, ((RealmObjectProxy) latLong).realmGet$proxyState().getRow$realm().getIndex());
        }
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 4, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(SettingsJsonConstants.PROMPT_TITLE_KEY, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("managerName", RealmFieldType.STRING, false, false, false);
        builder.addPersistedLinkProperty("latLong", RealmFieldType.OBJECT, com_digikala_dms_model_domain_LatLongRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static DistributionCenterColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new DistributionCenterColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static DistributionCenter createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws JSONException {
        List<String> excludeFields = new ArrayList<>(1);
        if (json.has("latLong")) {
            excludeFields.add("latLong");
        }
        DistributionCenter obj = (DistributionCenter) realm.createObjectInternal(DistributionCenter.class, true, excludeFields);
        DistributionCenter objProxy = obj;
        if (json.has("id")) {
            if (json.isNull("id")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
            }
            objProxy.realmSet$id(json.getInt("id"));
        }
        if (json.has(SettingsJsonConstants.PROMPT_TITLE_KEY)) {
            if (json.isNull(SettingsJsonConstants.PROMPT_TITLE_KEY)) {
                objProxy.realmSet$title(null);
            } else {
                objProxy.realmSet$title(json.getString(SettingsJsonConstants.PROMPT_TITLE_KEY));
            }
        }
        if (json.has("managerName")) {
            if (json.isNull("managerName")) {
                objProxy.realmSet$managerName(null);
            } else {
                objProxy.realmSet$managerName(json.getString("managerName"));
            }
        }
        if (json.has("latLong")) {
            if (json.isNull("latLong")) {
                objProxy.realmSet$latLong(null);
            } else {
                LatLong latLongObj = com_digikala_dms_model_domain_LatLongRealmProxy.createOrUpdateUsingJsonObject(realm, json.getJSONObject("latLong"), update);
                objProxy.realmSet$latLong(latLongObj);
            }
        }
        return obj;
    }

    @TargetApi(11)
    public static DistributionCenter createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        DistributionCenter obj = new DistributionCenter();
        DistributionCenter objProxy = obj;
        reader.beginObject();
        while (reader.hasNext()) {
            String name = reader.nextName();
            if (name.equals("id")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$id(reader.nextInt());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
                }
            } else if (name.equals(SettingsJsonConstants.PROMPT_TITLE_KEY)) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$title(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$title(null);
                }
            } else if (name.equals("managerName")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$managerName(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$managerName(null);
                }
            } else if (name.equals("latLong")) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$latLong(null);
                } else {
                    LatLong latLongObj = com_digikala_dms_model_domain_LatLongRealmProxy.createUsingJsonStream(realm, reader);
                    objProxy.realmSet$latLong(latLongObj);
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return (DistributionCenter) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static DistributionCenter copyOrUpdate(Realm realm, DistributionCenter distributionCenter, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        if ((distributionCenter instanceof RealmObjectProxy) && ((RealmObjectProxy) distributionCenter).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) distributionCenter).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return distributionCenter;
            }
        }
        BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(distributionCenter);
        if (realmModel != null) {
            return (DistributionCenter) realmModel;
        }
        return copy(realm, distributionCenter, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static DistributionCenter copy(Realm realm, DistributionCenter newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (DistributionCenter) realmModel;
        }
        DistributionCenter distributionCenter = (DistributionCenter) realm.createObjectInternal(DistributionCenter.class, false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) distributionCenter);
        DistributionCenter realmObjectSource = newObject;
        DistributionCenter realmObjectCopy = distributionCenter;
        realmObjectCopy.realmSet$id(realmObjectSource.realmGet$id());
        realmObjectCopy.realmSet$title(realmObjectSource.realmGet$title());
        realmObjectCopy.realmSet$managerName(realmObjectSource.realmGet$managerName());
        LatLong latLongObj = realmObjectSource.realmGet$latLong();
        if (latLongObj == null) {
            realmObjectCopy.realmSet$latLong(null);
        } else {
            LatLong cachelatLong = (LatLong) cache.get(latLongObj);
            if (cachelatLong != null) {
                realmObjectCopy.realmSet$latLong(cachelatLong);
            } else {
                realmObjectCopy.realmSet$latLong(com_digikala_dms_model_domain_LatLongRealmProxy.copyOrUpdate(realm, latLongObj, update, cache));
            }
        }
        return distributionCenter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, DistributionCenter distributionCenter, Map<RealmModel, Long> cache) {
        if (!(distributionCenter instanceof RealmObjectProxy) || ((RealmObjectProxy) distributionCenter).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) distributionCenter).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table = realm.getTable(DistributionCenter.class);
            long tableNativePtr = table.getNativePtr();
            DistributionCenterColumnInfo columnInfo = (DistributionCenterColumnInfo) realm.getSchema().getColumnInfo(DistributionCenter.class);
            long rowIndex = OsObject.createRow(table);
            cache.put(distributionCenter, Long.valueOf(rowIndex));
            Table.nativeSetLong(tableNativePtr, columnInfo.idIndex, rowIndex, distributionCenter.realmGet$id(), false);
            String realmGet$title = distributionCenter.realmGet$title();
            if (realmGet$title != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.titleIndex, rowIndex, realmGet$title, false);
            }
            String realmGet$managerName = distributionCenter.realmGet$managerName();
            if (realmGet$managerName != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.managerNameIndex, rowIndex, realmGet$managerName, false);
            }
            LatLong latLongObj = distributionCenter.realmGet$latLong();
            if (latLongObj != null) {
                Long cachelatLong = cache.get(latLongObj);
                if (cachelatLong == null) {
                    cachelatLong = Long.valueOf(com_digikala_dms_model_domain_LatLongRealmProxy.insert(realm, latLongObj, cache));
                }
                Table.nativeSetLink(tableNativePtr, columnInfo.latLongIndex, rowIndex, cachelatLong.longValue(), false);
            }
            return rowIndex;
        }
        return ((RealmObjectProxy) distributionCenter).realmGet$proxyState().getRow$realm().getIndex();
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(DistributionCenter.class);
        long tableNativePtr = table.getNativePtr();
        DistributionCenterColumnInfo columnInfo = (DistributionCenterColumnInfo) realm.getSchema().getColumnInfo(DistributionCenter.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (DistributionCenter) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    Table.nativeSetLong(tableNativePtr, columnInfo.idIndex, rowIndex, ((com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface) realmModel).realmGet$id(), false);
                    String realmGet$title = ((com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface) realmModel).realmGet$title();
                    if (realmGet$title != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.titleIndex, rowIndex, realmGet$title, false);
                    }
                    String realmGet$managerName = ((com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface) realmModel).realmGet$managerName();
                    if (realmGet$managerName != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.managerNameIndex, rowIndex, realmGet$managerName, false);
                    }
                    LatLong latLongObj = ((com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface) realmModel).realmGet$latLong();
                    if (latLongObj != null) {
                        Long cachelatLong = cache.get(latLongObj);
                        if (cachelatLong == null) {
                            cachelatLong = Long.valueOf(com_digikala_dms_model_domain_LatLongRealmProxy.insert(realm, latLongObj, cache));
                        }
                        table.setLink(columnInfo.latLongIndex, rowIndex, cachelatLong.longValue(), false);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, DistributionCenter distributionCenter, Map<RealmModel, Long> cache) {
        if (!(distributionCenter instanceof RealmObjectProxy) || ((RealmObjectProxy) distributionCenter).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) distributionCenter).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table = realm.getTable(DistributionCenter.class);
            long tableNativePtr = table.getNativePtr();
            DistributionCenterColumnInfo columnInfo = (DistributionCenterColumnInfo) realm.getSchema().getColumnInfo(DistributionCenter.class);
            long rowIndex = OsObject.createRow(table);
            cache.put(distributionCenter, Long.valueOf(rowIndex));
            Table.nativeSetLong(tableNativePtr, columnInfo.idIndex, rowIndex, distributionCenter.realmGet$id(), false);
            String realmGet$title = distributionCenter.realmGet$title();
            if (realmGet$title != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.titleIndex, rowIndex, realmGet$title, false);
            } else {
                Table.nativeSetNull(tableNativePtr, columnInfo.titleIndex, rowIndex, false);
            }
            String realmGet$managerName = distributionCenter.realmGet$managerName();
            if (realmGet$managerName != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.managerNameIndex, rowIndex, realmGet$managerName, false);
            } else {
                Table.nativeSetNull(tableNativePtr, columnInfo.managerNameIndex, rowIndex, false);
            }
            LatLong latLongObj = distributionCenter.realmGet$latLong();
            if (latLongObj != null) {
                Long cachelatLong = cache.get(latLongObj);
                if (cachelatLong == null) {
                    cachelatLong = Long.valueOf(com_digikala_dms_model_domain_LatLongRealmProxy.insertOrUpdate(realm, latLongObj, cache));
                }
                Table.nativeSetLink(tableNativePtr, columnInfo.latLongIndex, rowIndex, cachelatLong.longValue(), false);
            } else {
                Table.nativeNullifyLink(tableNativePtr, columnInfo.latLongIndex, rowIndex);
            }
            return rowIndex;
        }
        return ((RealmObjectProxy) distributionCenter).realmGet$proxyState().getRow$realm().getIndex();
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(DistributionCenter.class);
        long tableNativePtr = table.getNativePtr();
        DistributionCenterColumnInfo columnInfo = (DistributionCenterColumnInfo) realm.getSchema().getColumnInfo(DistributionCenter.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (DistributionCenter) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    Table.nativeSetLong(tableNativePtr, columnInfo.idIndex, rowIndex, ((com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface) realmModel).realmGet$id(), false);
                    String realmGet$title = ((com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface) realmModel).realmGet$title();
                    if (realmGet$title != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.titleIndex, rowIndex, realmGet$title, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.titleIndex, rowIndex, false);
                    }
                    String realmGet$managerName = ((com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface) realmModel).realmGet$managerName();
                    if (realmGet$managerName != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.managerNameIndex, rowIndex, realmGet$managerName, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.managerNameIndex, rowIndex, false);
                    }
                    LatLong latLongObj = ((com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface) realmModel).realmGet$latLong();
                    if (latLongObj != null) {
                        Long cachelatLong = cache.get(latLongObj);
                        if (cachelatLong == null) {
                            cachelatLong = Long.valueOf(com_digikala_dms_model_domain_LatLongRealmProxy.insertOrUpdate(realm, latLongObj, cache));
                        }
                        Table.nativeSetLink(tableNativePtr, columnInfo.latLongIndex, rowIndex, cachelatLong.longValue(), false);
                    } else {
                        Table.nativeNullifyLink(tableNativePtr, columnInfo.latLongIndex, rowIndex);
                    }
                }
            }
        }
    }

    public static DistributionCenter createDetachedCopy(DistributionCenter realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        DistributionCenter unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new DistributionCenter();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (DistributionCenter) cachedObject.object;
            }
            unmanagedObject = (DistributionCenter) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface unmanagedCopy = unmanagedObject;
        DistributionCenter realmSource = realmObject;
        unmanagedCopy.realmSet$id(realmSource.realmGet$id());
        unmanagedCopy.realmSet$title(realmSource.realmGet$title());
        unmanagedCopy.realmSet$managerName(realmSource.realmGet$managerName());
        unmanagedCopy.realmSet$latLong(com_digikala_dms_model_domain_LatLongRealmProxy.createDetachedCopy(realmSource.realmGet$latLong(), currentDepth + 1, maxDepth, cache));
        return unmanagedObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder stringBuilder = new StringBuilder("DistributionCenter = proxy[");
        stringBuilder.append("{id:");
        stringBuilder.append(realmGet$id());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{title:");
        stringBuilder.append(realmGet$title() != null ? realmGet$title() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{managerName:");
        stringBuilder.append(realmGet$managerName() != null ? realmGet$managerName() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{latLong:");
        stringBuilder.append(realmGet$latLong() != null ? com_digikala_dms_model_domain_LatLongRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME : "null");
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
        com_digikala_dms_model_domain_DistributionCenterRealmProxy aDistributionCenter = (com_digikala_dms_model_domain_DistributionCenterRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aDistributionCenter.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aDistributionCenter.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aDistributionCenter.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
