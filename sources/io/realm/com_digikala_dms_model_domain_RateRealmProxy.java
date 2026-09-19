package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.digikala.dms.model.domain.Rate;
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
public class com_digikala_dms_model_domain_RateRealmProxy extends Rate implements RealmObjectProxy, com_digikala_dms_model_domain_RateRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private RateColumnInfo columnInfo;
    private ProxyState<Rate> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "Rate";
    }

    static final class RateColumnInfo extends ColumnInfo {
        long deltaIndex;
        long rateIndex;

        RateColumnInfo(OsSchemaInfo schemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.rateIndex = addColumnDetails("rate", "rate", objectSchemaInfo);
            this.deltaIndex = addColumnDetails("delta", "delta", objectSchemaInfo);
        }

        RateColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new RateColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            RateColumnInfo src = (RateColumnInfo) rawSrc;
            RateColumnInfo dst = (RateColumnInfo) rawDst;
            dst.rateIndex = src.rateIndex;
            dst.deltaIndex = src.deltaIndex;
        }
    }

    com_digikala_dms_model_domain_RateRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (RateColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // com.digikala.dms.model.domain.Rate, io.realm.com_digikala_dms_model_domain_RateRealmProxyInterface
    public double realmGet$rate() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getDouble(this.columnInfo.rateIndex);
    }

    @Override // com.digikala.dms.model.domain.Rate, io.realm.com_digikala_dms_model_domain_RateRealmProxyInterface
    public void realmSet$rate(double value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setDouble(this.columnInfo.rateIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setDouble(this.columnInfo.rateIndex, value);
    }

    @Override // com.digikala.dms.model.domain.Rate, io.realm.com_digikala_dms_model_domain_RateRealmProxyInterface
    public double realmGet$delta() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getDouble(this.columnInfo.deltaIndex);
    }

    @Override // com.digikala.dms.model.domain.Rate, io.realm.com_digikala_dms_model_domain_RateRealmProxyInterface
    public void realmSet$delta(double value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setDouble(this.columnInfo.deltaIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setDouble(this.columnInfo.deltaIndex, value);
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 2, 0);
        builder.addPersistedProperty("rate", RealmFieldType.DOUBLE, false, false, true);
        builder.addPersistedProperty("delta", RealmFieldType.DOUBLE, false, false, true);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static RateColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new RateColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static Rate createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws JSONException {
        List<String> excludeFields = Collections.emptyList();
        Rate obj = (Rate) realm.createObjectInternal(Rate.class, true, excludeFields);
        Rate objProxy = obj;
        if (json.has("rate")) {
            if (json.isNull("rate")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'rate' to null.");
            }
            objProxy.realmSet$rate(json.getDouble("rate"));
        }
        if (json.has("delta")) {
            if (json.isNull("delta")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'delta' to null.");
            }
            objProxy.realmSet$delta(json.getDouble("delta"));
        }
        return obj;
    }

    @TargetApi(11)
    public static Rate createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        Rate obj = new Rate();
        Rate objProxy = obj;
        reader.beginObject();
        while (reader.hasNext()) {
            String name = reader.nextName();
            if (name.equals("rate")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$rate(reader.nextDouble());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'rate' to null.");
                }
            } else if (name.equals("delta")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$delta(reader.nextDouble());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'delta' to null.");
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return (Rate) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Rate copyOrUpdate(Realm realm, Rate rate, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        if ((rate instanceof RealmObjectProxy) && ((RealmObjectProxy) rate).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) rate).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return rate;
            }
        }
        BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(rate);
        if (realmModel != null) {
            return (Rate) realmModel;
        }
        return copy(realm, rate, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Rate copy(Realm realm, Rate newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (Rate) realmModel;
        }
        Rate rate = (Rate) realm.createObjectInternal(Rate.class, false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) rate);
        Rate realmObjectSource = newObject;
        Rate realmObjectCopy = rate;
        realmObjectCopy.realmSet$rate(realmObjectSource.realmGet$rate());
        realmObjectCopy.realmSet$delta(realmObjectSource.realmGet$delta());
        return rate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, Rate rate, Map<RealmModel, Long> cache) {
        if ((rate instanceof RealmObjectProxy) && ((RealmObjectProxy) rate).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) rate).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) rate).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(Rate.class);
        long tableNativePtr = table.getNativePtr();
        RateColumnInfo columnInfo = (RateColumnInfo) realm.getSchema().getColumnInfo(Rate.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(rate, Long.valueOf(rowIndex));
        Table.nativeSetDouble(tableNativePtr, columnInfo.rateIndex, rowIndex, rate.realmGet$rate(), false);
        Table.nativeSetDouble(tableNativePtr, columnInfo.deltaIndex, rowIndex, rate.realmGet$delta(), false);
        return rowIndex;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(Rate.class);
        long tableNativePtr = table.getNativePtr();
        RateColumnInfo columnInfo = (RateColumnInfo) realm.getSchema().getColumnInfo(Rate.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (Rate) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    Table.nativeSetDouble(tableNativePtr, columnInfo.rateIndex, rowIndex, ((com_digikala_dms_model_domain_RateRealmProxyInterface) realmModel).realmGet$rate(), false);
                    Table.nativeSetDouble(tableNativePtr, columnInfo.deltaIndex, rowIndex, ((com_digikala_dms_model_domain_RateRealmProxyInterface) realmModel).realmGet$delta(), false);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, Rate rate, Map<RealmModel, Long> cache) {
        if ((rate instanceof RealmObjectProxy) && ((RealmObjectProxy) rate).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) rate).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) rate).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(Rate.class);
        long tableNativePtr = table.getNativePtr();
        RateColumnInfo columnInfo = (RateColumnInfo) realm.getSchema().getColumnInfo(Rate.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(rate, Long.valueOf(rowIndex));
        Table.nativeSetDouble(tableNativePtr, columnInfo.rateIndex, rowIndex, rate.realmGet$rate(), false);
        Table.nativeSetDouble(tableNativePtr, columnInfo.deltaIndex, rowIndex, rate.realmGet$delta(), false);
        return rowIndex;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(Rate.class);
        long tableNativePtr = table.getNativePtr();
        RateColumnInfo columnInfo = (RateColumnInfo) realm.getSchema().getColumnInfo(Rate.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (Rate) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    Table.nativeSetDouble(tableNativePtr, columnInfo.rateIndex, rowIndex, ((com_digikala_dms_model_domain_RateRealmProxyInterface) realmModel).realmGet$rate(), false);
                    Table.nativeSetDouble(tableNativePtr, columnInfo.deltaIndex, rowIndex, ((com_digikala_dms_model_domain_RateRealmProxyInterface) realmModel).realmGet$delta(), false);
                }
            }
        }
    }

    public static Rate createDetachedCopy(Rate realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        Rate unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new Rate();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (Rate) cachedObject.object;
            }
            unmanagedObject = (Rate) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        com_digikala_dms_model_domain_RateRealmProxyInterface unmanagedCopy = unmanagedObject;
        Rate realmSource = realmObject;
        unmanagedCopy.realmSet$rate(realmSource.realmGet$rate());
        unmanagedCopy.realmSet$delta(realmSource.realmGet$delta());
        return unmanagedObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        return "Rate = proxy[{rate:" + realmGet$rate() + "},{delta:" + realmGet$delta() + "}]";
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
        com_digikala_dms_model_domain_RateRealmProxy aRate = (com_digikala_dms_model_domain_RateRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aRate.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aRate.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aRate.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
