package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.digikala.dms.model.domain.LatLong;
import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
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
public class com_digikala_dms_model_domain_LatLongRealmProxy extends LatLong implements RealmObjectProxy, com_digikala_dms_model_domain_LatLongRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private LatLongColumnInfo columnInfo;
    private ProxyState<LatLong> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "LatLong";
    }

    static final class LatLongColumnInfo extends ColumnInfo {
        long latitudeIndex;
        long longitudeIndex;

        LatLongColumnInfo(OsSchemaInfo schemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.latitudeIndex = addColumnDetails(Parameters.LATITUDE, Parameters.LATITUDE, objectSchemaInfo);
            this.longitudeIndex = addColumnDetails(Parameters.LONGITUDE, Parameters.LONGITUDE, objectSchemaInfo);
        }

        LatLongColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new LatLongColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            LatLongColumnInfo src = (LatLongColumnInfo) rawSrc;
            LatLongColumnInfo dst = (LatLongColumnInfo) rawDst;
            dst.latitudeIndex = src.latitudeIndex;
            dst.longitudeIndex = src.longitudeIndex;
        }
    }

    com_digikala_dms_model_domain_LatLongRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (LatLongColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // com.digikala.dms.model.domain.LatLong, io.realm.com_digikala_dms_model_domain_LatLongRealmProxyInterface
    public double realmGet$latitude() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getDouble(this.columnInfo.latitudeIndex);
    }

    @Override // com.digikala.dms.model.domain.LatLong, io.realm.com_digikala_dms_model_domain_LatLongRealmProxyInterface
    public void realmSet$latitude(double value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setDouble(this.columnInfo.latitudeIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setDouble(this.columnInfo.latitudeIndex, value);
    }

    @Override // com.digikala.dms.model.domain.LatLong, io.realm.com_digikala_dms_model_domain_LatLongRealmProxyInterface
    public double realmGet$longitude() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getDouble(this.columnInfo.longitudeIndex);
    }

    @Override // com.digikala.dms.model.domain.LatLong, io.realm.com_digikala_dms_model_domain_LatLongRealmProxyInterface
    public void realmSet$longitude(double value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setDouble(this.columnInfo.longitudeIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setDouble(this.columnInfo.longitudeIndex, value);
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 2, 0);
        builder.addPersistedProperty(Parameters.LATITUDE, RealmFieldType.DOUBLE, false, false, true);
        builder.addPersistedProperty(Parameters.LONGITUDE, RealmFieldType.DOUBLE, false, false, true);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static LatLongColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new LatLongColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static LatLong createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws JSONException {
        List<String> excludeFields = Collections.emptyList();
        LatLong obj = (LatLong) realm.createObjectInternal(LatLong.class, true, excludeFields);
        LatLong objProxy = obj;
        if (json.has(Parameters.LATITUDE)) {
            if (json.isNull(Parameters.LATITUDE)) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'latitude' to null.");
            }
            objProxy.realmSet$latitude(json.getDouble(Parameters.LATITUDE));
        }
        if (json.has(Parameters.LONGITUDE)) {
            if (json.isNull(Parameters.LONGITUDE)) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'longitude' to null.");
            }
            objProxy.realmSet$longitude(json.getDouble(Parameters.LONGITUDE));
        }
        return obj;
    }

    @TargetApi(11)
    public static LatLong createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        LatLong obj = new LatLong();
        LatLong objProxy = obj;
        reader.beginObject();
        while (reader.hasNext()) {
            String name = reader.nextName();
            if (name.equals(Parameters.LATITUDE)) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$latitude(reader.nextDouble());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'latitude' to null.");
                }
            } else if (name.equals(Parameters.LONGITUDE)) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$longitude(reader.nextDouble());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'longitude' to null.");
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return (LatLong) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static LatLong copyOrUpdate(Realm realm, LatLong latLong, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        if ((latLong instanceof RealmObjectProxy) && ((RealmObjectProxy) latLong).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) latLong).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return latLong;
            }
        }
        BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(latLong);
        if (realmModel != null) {
            return (LatLong) realmModel;
        }
        return copy(realm, latLong, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static LatLong copy(Realm realm, LatLong newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (LatLong) realmModel;
        }
        LatLong latLong = (LatLong) realm.createObjectInternal(LatLong.class, false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) latLong);
        LatLong realmObjectSource = newObject;
        LatLong realmObjectCopy = latLong;
        realmObjectCopy.realmSet$latitude(realmObjectSource.realmGet$latitude());
        realmObjectCopy.realmSet$longitude(realmObjectSource.realmGet$longitude());
        return latLong;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, LatLong latLong, Map<RealmModel, Long> cache) {
        if ((latLong instanceof RealmObjectProxy) && ((RealmObjectProxy) latLong).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) latLong).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) latLong).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(LatLong.class);
        long tableNativePtr = table.getNativePtr();
        LatLongColumnInfo columnInfo = (LatLongColumnInfo) realm.getSchema().getColumnInfo(LatLong.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(latLong, Long.valueOf(rowIndex));
        Table.nativeSetDouble(tableNativePtr, columnInfo.latitudeIndex, rowIndex, latLong.realmGet$latitude(), false);
        Table.nativeSetDouble(tableNativePtr, columnInfo.longitudeIndex, rowIndex, latLong.realmGet$longitude(), false);
        return rowIndex;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(LatLong.class);
        long tableNativePtr = table.getNativePtr();
        LatLongColumnInfo columnInfo = (LatLongColumnInfo) realm.getSchema().getColumnInfo(LatLong.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (LatLong) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    Table.nativeSetDouble(tableNativePtr, columnInfo.latitudeIndex, rowIndex, ((com_digikala_dms_model_domain_LatLongRealmProxyInterface) realmModel).realmGet$latitude(), false);
                    Table.nativeSetDouble(tableNativePtr, columnInfo.longitudeIndex, rowIndex, ((com_digikala_dms_model_domain_LatLongRealmProxyInterface) realmModel).realmGet$longitude(), false);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, LatLong latLong, Map<RealmModel, Long> cache) {
        if ((latLong instanceof RealmObjectProxy) && ((RealmObjectProxy) latLong).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) latLong).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) latLong).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(LatLong.class);
        long tableNativePtr = table.getNativePtr();
        LatLongColumnInfo columnInfo = (LatLongColumnInfo) realm.getSchema().getColumnInfo(LatLong.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(latLong, Long.valueOf(rowIndex));
        Table.nativeSetDouble(tableNativePtr, columnInfo.latitudeIndex, rowIndex, latLong.realmGet$latitude(), false);
        Table.nativeSetDouble(tableNativePtr, columnInfo.longitudeIndex, rowIndex, latLong.realmGet$longitude(), false);
        return rowIndex;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(LatLong.class);
        long tableNativePtr = table.getNativePtr();
        LatLongColumnInfo columnInfo = (LatLongColumnInfo) realm.getSchema().getColumnInfo(LatLong.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (LatLong) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    Table.nativeSetDouble(tableNativePtr, columnInfo.latitudeIndex, rowIndex, ((com_digikala_dms_model_domain_LatLongRealmProxyInterface) realmModel).realmGet$latitude(), false);
                    Table.nativeSetDouble(tableNativePtr, columnInfo.longitudeIndex, rowIndex, ((com_digikala_dms_model_domain_LatLongRealmProxyInterface) realmModel).realmGet$longitude(), false);
                }
            }
        }
    }

    public static LatLong createDetachedCopy(LatLong realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        LatLong unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new LatLong();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (LatLong) cachedObject.object;
            }
            unmanagedObject = (LatLong) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        com_digikala_dms_model_domain_LatLongRealmProxyInterface unmanagedCopy = unmanagedObject;
        LatLong realmSource = realmObject;
        unmanagedCopy.realmSet$latitude(realmSource.realmGet$latitude());
        unmanagedCopy.realmSet$longitude(realmSource.realmGet$longitude());
        return unmanagedObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        return "LatLong = proxy[{latitude:" + realmGet$latitude() + "},{longitude:" + realmGet$longitude() + "}]";
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
        com_digikala_dms_model_domain_LatLongRealmProxy aLatLong = (com_digikala_dms_model_domain_LatLongRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aLatLong.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aLatLong.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aLatLong.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
