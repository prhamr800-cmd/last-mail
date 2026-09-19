package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.digikala.dms.model.design.Answer;
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
public class com_digikala_dms_model_design_AnswerRealmProxy extends Answer implements RealmObjectProxy, com_digikala_dms_model_design_AnswerRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private AnswerColumnInfo columnInfo;
    private ProxyState<Answer> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "Answer";
    }

    static final class AnswerColumnInfo extends ColumnInfo {
        long AnswerIndex;
        long idIndex;

        AnswerColumnInfo(OsSchemaInfo schemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.AnswerIndex = addColumnDetails(ClassNameHelper.INTERNAL_CLASS_NAME, ClassNameHelper.INTERNAL_CLASS_NAME, objectSchemaInfo);
        }

        AnswerColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new AnswerColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            AnswerColumnInfo src = (AnswerColumnInfo) rawSrc;
            AnswerColumnInfo dst = (AnswerColumnInfo) rawDst;
            dst.idIndex = src.idIndex;
            dst.AnswerIndex = src.AnswerIndex;
        }
    }

    com_digikala_dms_model_design_AnswerRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (AnswerColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // com.digikala.dms.model.design.Answer, io.realm.com_digikala_dms_model_design_AnswerRealmProxyInterface
    public int realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // com.digikala.dms.model.design.Answer, io.realm.com_digikala_dms_model_design_AnswerRealmProxyInterface
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

    @Override // com.digikala.dms.model.design.Answer, io.realm.com_digikala_dms_model_design_AnswerRealmProxyInterface
    public String realmGet$Answer() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.AnswerIndex);
    }

    @Override // com.digikala.dms.model.design.Answer, io.realm.com_digikala_dms_model_design_AnswerRealmProxyInterface
    public void realmSet$Answer(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.AnswerIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.AnswerIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.AnswerIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.AnswerIndex, value);
        }
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 2, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(ClassNameHelper.INTERNAL_CLASS_NAME, RealmFieldType.STRING, false, false, false);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static AnswerColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new AnswerColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static Answer createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws JSONException {
        List<String> excludeFields = Collections.emptyList();
        Answer obj = (Answer) realm.createObjectInternal(Answer.class, true, excludeFields);
        Answer objProxy = obj;
        if (json.has("id")) {
            if (json.isNull("id")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
            }
            objProxy.realmSet$id(json.getInt("id"));
        }
        if (json.has(ClassNameHelper.INTERNAL_CLASS_NAME)) {
            if (json.isNull(ClassNameHelper.INTERNAL_CLASS_NAME)) {
                objProxy.realmSet$Answer(null);
            } else {
                objProxy.realmSet$Answer(json.getString(ClassNameHelper.INTERNAL_CLASS_NAME));
            }
        }
        return obj;
    }

    @TargetApi(11)
    public static Answer createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        Answer obj = new Answer();
        Answer objProxy = obj;
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
            } else if (name.equals(ClassNameHelper.INTERNAL_CLASS_NAME)) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$Answer(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$Answer(null);
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return (Answer) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Answer copyOrUpdate(Realm realm, Answer answer, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        if ((answer instanceof RealmObjectProxy) && ((RealmObjectProxy) answer).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) answer).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return answer;
            }
        }
        BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(answer);
        if (realmModel != null) {
            return (Answer) realmModel;
        }
        return copy(realm, answer, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Answer copy(Realm realm, Answer newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (Answer) realmModel;
        }
        Answer answer = (Answer) realm.createObjectInternal(Answer.class, false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) answer);
        Answer realmObjectSource = newObject;
        Answer realmObjectCopy = answer;
        realmObjectCopy.realmSet$id(realmObjectSource.realmGet$id());
        realmObjectCopy.realmSet$Answer(realmObjectSource.realmGet$Answer());
        return answer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, Answer answer, Map<RealmModel, Long> cache) {
        if ((answer instanceof RealmObjectProxy) && ((RealmObjectProxy) answer).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) answer).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) answer).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(Answer.class);
        long tableNativePtr = table.getNativePtr();
        AnswerColumnInfo columnInfo = (AnswerColumnInfo) realm.getSchema().getColumnInfo(Answer.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(answer, Long.valueOf(rowIndex));
        Table.nativeSetLong(tableNativePtr, columnInfo.idIndex, rowIndex, answer.realmGet$id(), false);
        String realmGet$Answer = answer.realmGet$Answer();
        if (realmGet$Answer != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.AnswerIndex, rowIndex, realmGet$Answer, false);
        }
        return rowIndex;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(Answer.class);
        long tableNativePtr = table.getNativePtr();
        AnswerColumnInfo columnInfo = (AnswerColumnInfo) realm.getSchema().getColumnInfo(Answer.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (Answer) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    Table.nativeSetLong(tableNativePtr, columnInfo.idIndex, rowIndex, ((com_digikala_dms_model_design_AnswerRealmProxyInterface) realmModel).realmGet$id(), false);
                    String realmGet$Answer = ((com_digikala_dms_model_design_AnswerRealmProxyInterface) realmModel).realmGet$Answer();
                    if (realmGet$Answer != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.AnswerIndex, rowIndex, realmGet$Answer, false);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, Answer answer, Map<RealmModel, Long> cache) {
        if ((answer instanceof RealmObjectProxy) && ((RealmObjectProxy) answer).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) answer).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) answer).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(Answer.class);
        long tableNativePtr = table.getNativePtr();
        AnswerColumnInfo columnInfo = (AnswerColumnInfo) realm.getSchema().getColumnInfo(Answer.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(answer, Long.valueOf(rowIndex));
        Table.nativeSetLong(tableNativePtr, columnInfo.idIndex, rowIndex, answer.realmGet$id(), false);
        String realmGet$Answer = answer.realmGet$Answer();
        if (realmGet$Answer != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.AnswerIndex, rowIndex, realmGet$Answer, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.AnswerIndex, rowIndex, false);
        }
        return rowIndex;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(Answer.class);
        long tableNativePtr = table.getNativePtr();
        AnswerColumnInfo columnInfo = (AnswerColumnInfo) realm.getSchema().getColumnInfo(Answer.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (Answer) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    Table.nativeSetLong(tableNativePtr, columnInfo.idIndex, rowIndex, ((com_digikala_dms_model_design_AnswerRealmProxyInterface) realmModel).realmGet$id(), false);
                    String realmGet$Answer = ((com_digikala_dms_model_design_AnswerRealmProxyInterface) realmModel).realmGet$Answer();
                    if (realmGet$Answer != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.AnswerIndex, rowIndex, realmGet$Answer, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.AnswerIndex, rowIndex, false);
                    }
                }
            }
        }
    }

    public static Answer createDetachedCopy(Answer realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        Answer unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new Answer();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (Answer) cachedObject.object;
            }
            unmanagedObject = (Answer) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        com_digikala_dms_model_design_AnswerRealmProxyInterface unmanagedCopy = unmanagedObject;
        Answer realmSource = realmObject;
        unmanagedCopy.realmSet$id(realmSource.realmGet$id());
        unmanagedCopy.realmSet$Answer(realmSource.realmGet$Answer());
        return unmanagedObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder stringBuilder = new StringBuilder("Answer = proxy[");
        stringBuilder.append("{id:");
        stringBuilder.append(realmGet$id());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{Answer:");
        stringBuilder.append(realmGet$Answer() != null ? realmGet$Answer() : "null");
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
        com_digikala_dms_model_design_AnswerRealmProxy aAnswer = (com_digikala_dms_model_design_AnswerRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aAnswer.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aAnswer.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aAnswer.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
