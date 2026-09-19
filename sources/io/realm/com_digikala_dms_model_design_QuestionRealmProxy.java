package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.digikala.dms.model.design.Question;
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
public class com_digikala_dms_model_design_QuestionRealmProxy extends Question implements RealmObjectProxy, com_digikala_dms_model_design_QuestionRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private QuestionColumnInfo columnInfo;
    private ProxyState<Question> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "Question";
    }

    static final class QuestionColumnInfo extends ColumnInfo {
        long IsRequiredIndex;
        long QuestionIndex;
        long TypeIndex;
        long idIndex;

        QuestionColumnInfo(OsSchemaInfo schemaInfo) {
            super(4);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.QuestionIndex = addColumnDetails(ClassNameHelper.INTERNAL_CLASS_NAME, ClassNameHelper.INTERNAL_CLASS_NAME, objectSchemaInfo);
            this.TypeIndex = addColumnDetails("Type", "Type", objectSchemaInfo);
            this.IsRequiredIndex = addColumnDetails("IsRequired", "IsRequired", objectSchemaInfo);
        }

        QuestionColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new QuestionColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            QuestionColumnInfo src = (QuestionColumnInfo) rawSrc;
            QuestionColumnInfo dst = (QuestionColumnInfo) rawDst;
            dst.idIndex = src.idIndex;
            dst.QuestionIndex = src.QuestionIndex;
            dst.TypeIndex = src.TypeIndex;
            dst.IsRequiredIndex = src.IsRequiredIndex;
        }
    }

    com_digikala_dms_model_design_QuestionRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (QuestionColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // com.digikala.dms.model.design.Question, io.realm.com_digikala_dms_model_design_QuestionRealmProxyInterface
    public int realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // com.digikala.dms.model.design.Question, io.realm.com_digikala_dms_model_design_QuestionRealmProxyInterface
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

    @Override // com.digikala.dms.model.design.Question, io.realm.com_digikala_dms_model_design_QuestionRealmProxyInterface
    public String realmGet$Question() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.QuestionIndex);
    }

    @Override // com.digikala.dms.model.design.Question, io.realm.com_digikala_dms_model_design_QuestionRealmProxyInterface
    public void realmSet$Question(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.QuestionIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.QuestionIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.QuestionIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.QuestionIndex, value);
        }
    }

    @Override // com.digikala.dms.model.design.Question, io.realm.com_digikala_dms_model_design_QuestionRealmProxyInterface
    public String realmGet$Type() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.TypeIndex);
    }

    @Override // com.digikala.dms.model.design.Question, io.realm.com_digikala_dms_model_design_QuestionRealmProxyInterface
    public void realmSet$Type(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.TypeIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.TypeIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.TypeIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.TypeIndex, value);
        }
    }

    @Override // com.digikala.dms.model.design.Question, io.realm.com_digikala_dms_model_design_QuestionRealmProxyInterface
    public Boolean realmGet$IsRequired() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.IsRequiredIndex)) {
            return null;
        }
        return Boolean.valueOf(this.proxyState.getRow$realm().getBoolean(this.columnInfo.IsRequiredIndex));
    }

    @Override // com.digikala.dms.model.design.Question, io.realm.com_digikala_dms_model_design_QuestionRealmProxyInterface
    public void realmSet$IsRequired(Boolean value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.IsRequiredIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setBoolean(this.columnInfo.IsRequiredIndex, row.getIndex(), value.booleanValue(), true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.IsRequiredIndex);
        } else {
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.IsRequiredIndex, value.booleanValue());
        }
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 4, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(ClassNameHelper.INTERNAL_CLASS_NAME, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("Type", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("IsRequired", RealmFieldType.BOOLEAN, false, false, false);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static QuestionColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new QuestionColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static Question createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws JSONException {
        List<String> excludeFields = Collections.emptyList();
        Question obj = (Question) realm.createObjectInternal(Question.class, true, excludeFields);
        Question objProxy = obj;
        if (json.has("id")) {
            if (json.isNull("id")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
            }
            objProxy.realmSet$id(json.getInt("id"));
        }
        if (json.has(ClassNameHelper.INTERNAL_CLASS_NAME)) {
            if (json.isNull(ClassNameHelper.INTERNAL_CLASS_NAME)) {
                objProxy.realmSet$Question(null);
            } else {
                objProxy.realmSet$Question(json.getString(ClassNameHelper.INTERNAL_CLASS_NAME));
            }
        }
        if (json.has("Type")) {
            if (json.isNull("Type")) {
                objProxy.realmSet$Type(null);
            } else {
                objProxy.realmSet$Type(json.getString("Type"));
            }
        }
        if (json.has("IsRequired")) {
            if (json.isNull("IsRequired")) {
                objProxy.realmSet$IsRequired(null);
            } else {
                objProxy.realmSet$IsRequired(Boolean.valueOf(json.getBoolean("IsRequired")));
            }
        }
        return obj;
    }

    @TargetApi(11)
    public static Question createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        Question obj = new Question();
        Question objProxy = obj;
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
                    objProxy.realmSet$Question(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$Question(null);
                }
            } else if (name.equals("Type")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$Type(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$Type(null);
                }
            } else if (name.equals("IsRequired")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$IsRequired(Boolean.valueOf(reader.nextBoolean()));
                } else {
                    reader.skipValue();
                    objProxy.realmSet$IsRequired(null);
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return (Question) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Question copyOrUpdate(Realm realm, Question question, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        if ((question instanceof RealmObjectProxy) && ((RealmObjectProxy) question).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) question).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return question;
            }
        }
        BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(question);
        if (realmModel != null) {
            return (Question) realmModel;
        }
        return copy(realm, question, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Question copy(Realm realm, Question newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (Question) realmModel;
        }
        Question question = (Question) realm.createObjectInternal(Question.class, false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) question);
        Question realmObjectSource = newObject;
        Question realmObjectCopy = question;
        realmObjectCopy.realmSet$id(realmObjectSource.realmGet$id());
        realmObjectCopy.realmSet$Question(realmObjectSource.realmGet$Question());
        realmObjectCopy.realmSet$Type(realmObjectSource.realmGet$Type());
        realmObjectCopy.realmSet$IsRequired(realmObjectSource.realmGet$IsRequired());
        return question;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, Question question, Map<RealmModel, Long> cache) {
        if ((question instanceof RealmObjectProxy) && ((RealmObjectProxy) question).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) question).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) question).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(Question.class);
        long tableNativePtr = table.getNativePtr();
        QuestionColumnInfo columnInfo = (QuestionColumnInfo) realm.getSchema().getColumnInfo(Question.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(question, Long.valueOf(rowIndex));
        Table.nativeSetLong(tableNativePtr, columnInfo.idIndex, rowIndex, question.realmGet$id(), false);
        String realmGet$Question = question.realmGet$Question();
        if (realmGet$Question != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.QuestionIndex, rowIndex, realmGet$Question, false);
        }
        String realmGet$Type = question.realmGet$Type();
        if (realmGet$Type != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.TypeIndex, rowIndex, realmGet$Type, false);
        }
        Boolean realmGet$IsRequired = question.realmGet$IsRequired();
        if (realmGet$IsRequired != null) {
            Table.nativeSetBoolean(tableNativePtr, columnInfo.IsRequiredIndex, rowIndex, realmGet$IsRequired.booleanValue(), false);
        }
        return rowIndex;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(Question.class);
        long tableNativePtr = table.getNativePtr();
        QuestionColumnInfo columnInfo = (QuestionColumnInfo) realm.getSchema().getColumnInfo(Question.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (Question) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    Table.nativeSetLong(tableNativePtr, columnInfo.idIndex, rowIndex, ((com_digikala_dms_model_design_QuestionRealmProxyInterface) realmModel).realmGet$id(), false);
                    String realmGet$Question = ((com_digikala_dms_model_design_QuestionRealmProxyInterface) realmModel).realmGet$Question();
                    if (realmGet$Question != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.QuestionIndex, rowIndex, realmGet$Question, false);
                    }
                    String realmGet$Type = ((com_digikala_dms_model_design_QuestionRealmProxyInterface) realmModel).realmGet$Type();
                    if (realmGet$Type != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.TypeIndex, rowIndex, realmGet$Type, false);
                    }
                    Boolean realmGet$IsRequired = ((com_digikala_dms_model_design_QuestionRealmProxyInterface) realmModel).realmGet$IsRequired();
                    if (realmGet$IsRequired != null) {
                        Table.nativeSetBoolean(tableNativePtr, columnInfo.IsRequiredIndex, rowIndex, realmGet$IsRequired.booleanValue(), false);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, Question question, Map<RealmModel, Long> cache) {
        if ((question instanceof RealmObjectProxy) && ((RealmObjectProxy) question).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) question).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) question).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(Question.class);
        long tableNativePtr = table.getNativePtr();
        QuestionColumnInfo columnInfo = (QuestionColumnInfo) realm.getSchema().getColumnInfo(Question.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(question, Long.valueOf(rowIndex));
        Table.nativeSetLong(tableNativePtr, columnInfo.idIndex, rowIndex, question.realmGet$id(), false);
        String realmGet$Question = question.realmGet$Question();
        if (realmGet$Question != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.QuestionIndex, rowIndex, realmGet$Question, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.QuestionIndex, rowIndex, false);
        }
        String realmGet$Type = question.realmGet$Type();
        if (realmGet$Type != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.TypeIndex, rowIndex, realmGet$Type, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.TypeIndex, rowIndex, false);
        }
        Boolean realmGet$IsRequired = question.realmGet$IsRequired();
        if (realmGet$IsRequired != null) {
            Table.nativeSetBoolean(tableNativePtr, columnInfo.IsRequiredIndex, rowIndex, realmGet$IsRequired.booleanValue(), false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.IsRequiredIndex, rowIndex, false);
        }
        return rowIndex;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(Question.class);
        long tableNativePtr = table.getNativePtr();
        QuestionColumnInfo columnInfo = (QuestionColumnInfo) realm.getSchema().getColumnInfo(Question.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (Question) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    Table.nativeSetLong(tableNativePtr, columnInfo.idIndex, rowIndex, ((com_digikala_dms_model_design_QuestionRealmProxyInterface) realmModel).realmGet$id(), false);
                    String realmGet$Question = ((com_digikala_dms_model_design_QuestionRealmProxyInterface) realmModel).realmGet$Question();
                    if (realmGet$Question != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.QuestionIndex, rowIndex, realmGet$Question, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.QuestionIndex, rowIndex, false);
                    }
                    String realmGet$Type = ((com_digikala_dms_model_design_QuestionRealmProxyInterface) realmModel).realmGet$Type();
                    if (realmGet$Type != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.TypeIndex, rowIndex, realmGet$Type, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.TypeIndex, rowIndex, false);
                    }
                    Boolean realmGet$IsRequired = ((com_digikala_dms_model_design_QuestionRealmProxyInterface) realmModel).realmGet$IsRequired();
                    if (realmGet$IsRequired != null) {
                        Table.nativeSetBoolean(tableNativePtr, columnInfo.IsRequiredIndex, rowIndex, realmGet$IsRequired.booleanValue(), false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.IsRequiredIndex, rowIndex, false);
                    }
                }
            }
        }
    }

    public static Question createDetachedCopy(Question realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        Question unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new Question();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (Question) cachedObject.object;
            }
            unmanagedObject = (Question) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        com_digikala_dms_model_design_QuestionRealmProxyInterface unmanagedCopy = unmanagedObject;
        Question realmSource = realmObject;
        unmanagedCopy.realmSet$id(realmSource.realmGet$id());
        unmanagedCopy.realmSet$Question(realmSource.realmGet$Question());
        unmanagedCopy.realmSet$Type(realmSource.realmGet$Type());
        unmanagedCopy.realmSet$IsRequired(realmSource.realmGet$IsRequired());
        return unmanagedObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder stringBuilder = new StringBuilder("Question = proxy[");
        stringBuilder.append("{id:");
        stringBuilder.append(realmGet$id());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{Question:");
        stringBuilder.append(realmGet$Question() != null ? realmGet$Question() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{Type:");
        stringBuilder.append(realmGet$Type() != null ? realmGet$Type() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{IsRequired:");
        stringBuilder.append(realmGet$IsRequired() != null ? realmGet$IsRequired() : "null");
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
        com_digikala_dms_model_design_QuestionRealmProxy aQuestion = (com_digikala_dms_model_design_QuestionRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aQuestion.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aQuestion.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aQuestion.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
