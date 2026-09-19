package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.digikala.dms.model.domain.ServerMessages;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
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
public class com_digikala_dms_model_domain_ServerMessagesRealmProxy extends ServerMessages implements RealmObjectProxy, com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private ServerMessagesColumnInfo columnInfo;
    private ProxyState<ServerMessages> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "ServerMessages";
    }

    static final class ServerMessagesColumnInfo extends ColumnInfo {
        long dateIndex;
        long idIndex;
        long messageIndex;
        long seenIndex;
        long titleIndex;

        ServerMessagesColumnInfo(OsSchemaInfo schemaInfo) {
            super(5);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.titleIndex = addColumnDetails(SettingsJsonConstants.PROMPT_TITLE_KEY, SettingsJsonConstants.PROMPT_TITLE_KEY, objectSchemaInfo);
            this.messageIndex = addColumnDetails("message", "message", objectSchemaInfo);
            this.dateIndex = addColumnDetails("date", "date", objectSchemaInfo);
            this.seenIndex = addColumnDetails("seen", "seen", objectSchemaInfo);
        }

        ServerMessagesColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new ServerMessagesColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            ServerMessagesColumnInfo src = (ServerMessagesColumnInfo) rawSrc;
            ServerMessagesColumnInfo dst = (ServerMessagesColumnInfo) rawDst;
            dst.idIndex = src.idIndex;
            dst.titleIndex = src.titleIndex;
            dst.messageIndex = src.messageIndex;
            dst.dateIndex = src.dateIndex;
            dst.seenIndex = src.seenIndex;
        }
    }

    com_digikala_dms_model_domain_ServerMessagesRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (ServerMessagesColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // com.digikala.dms.model.domain.ServerMessages, io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface
    public String realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.idIndex);
    }

    @Override // com.digikala.dms.model.domain.ServerMessages, io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface
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

    @Override // com.digikala.dms.model.domain.ServerMessages, io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface
    public String realmGet$title() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.titleIndex);
    }

    @Override // com.digikala.dms.model.domain.ServerMessages, io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface
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

    @Override // com.digikala.dms.model.domain.ServerMessages, io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface
    public String realmGet$message() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.messageIndex);
    }

    @Override // com.digikala.dms.model.domain.ServerMessages, io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface
    public void realmSet$message(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.messageIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.messageIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.messageIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.messageIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.ServerMessages, io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface
    public long realmGet$date() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.dateIndex);
    }

    @Override // com.digikala.dms.model.domain.ServerMessages, io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface
    public void realmSet$date(long value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setLong(this.columnInfo.dateIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setLong(this.columnInfo.dateIndex, value);
    }

    @Override // com.digikala.dms.model.domain.ServerMessages, io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface
    public boolean realmGet$seen() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.seenIndex);
    }

    @Override // com.digikala.dms.model.domain.ServerMessages, io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface
    public void realmSet$seen(boolean value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setBoolean(this.columnInfo.seenIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setBoolean(this.columnInfo.seenIndex, value);
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 5, 0);
        builder.addPersistedProperty("id", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(SettingsJsonConstants.PROMPT_TITLE_KEY, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("message", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("date", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("seen", RealmFieldType.BOOLEAN, false, false, true);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static ServerMessagesColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new ServerMessagesColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static ServerMessages createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws JSONException {
        List<String> excludeFields = Collections.emptyList();
        ServerMessages obj = (ServerMessages) realm.createObjectInternal(ServerMessages.class, true, excludeFields);
        ServerMessages objProxy = obj;
        if (json.has("id")) {
            if (json.isNull("id")) {
                objProxy.realmSet$id(null);
            } else {
                objProxy.realmSet$id(json.getString("id"));
            }
        }
        if (json.has(SettingsJsonConstants.PROMPT_TITLE_KEY)) {
            if (json.isNull(SettingsJsonConstants.PROMPT_TITLE_KEY)) {
                objProxy.realmSet$title(null);
            } else {
                objProxy.realmSet$title(json.getString(SettingsJsonConstants.PROMPT_TITLE_KEY));
            }
        }
        if (json.has("message")) {
            if (json.isNull("message")) {
                objProxy.realmSet$message(null);
            } else {
                objProxy.realmSet$message(json.getString("message"));
            }
        }
        if (json.has("date")) {
            if (json.isNull("date")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'date' to null.");
            }
            objProxy.realmSet$date(json.getLong("date"));
        }
        if (json.has("seen")) {
            if (json.isNull("seen")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'seen' to null.");
            }
            objProxy.realmSet$seen(json.getBoolean("seen"));
        }
        return obj;
    }

    @TargetApi(11)
    public static ServerMessages createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        ServerMessages obj = new ServerMessages();
        ServerMessages objProxy = obj;
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
            } else if (name.equals(SettingsJsonConstants.PROMPT_TITLE_KEY)) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$title(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$title(null);
                }
            } else if (name.equals("message")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$message(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$message(null);
                }
            } else if (name.equals("date")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$date(reader.nextLong());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'date' to null.");
                }
            } else if (name.equals("seen")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$seen(reader.nextBoolean());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'seen' to null.");
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return (ServerMessages) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ServerMessages copyOrUpdate(Realm realm, ServerMessages serverMessages, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        if ((serverMessages instanceof RealmObjectProxy) && ((RealmObjectProxy) serverMessages).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) serverMessages).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return serverMessages;
            }
        }
        BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(serverMessages);
        if (realmModel != null) {
            return (ServerMessages) realmModel;
        }
        return copy(realm, serverMessages, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ServerMessages copy(Realm realm, ServerMessages newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (ServerMessages) realmModel;
        }
        ServerMessages serverMessages = (ServerMessages) realm.createObjectInternal(ServerMessages.class, false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) serverMessages);
        ServerMessages realmObjectSource = newObject;
        ServerMessages realmObjectCopy = serverMessages;
        realmObjectCopy.realmSet$id(realmObjectSource.realmGet$id());
        realmObjectCopy.realmSet$title(realmObjectSource.realmGet$title());
        realmObjectCopy.realmSet$message(realmObjectSource.realmGet$message());
        realmObjectCopy.realmSet$date(realmObjectSource.realmGet$date());
        realmObjectCopy.realmSet$seen(realmObjectSource.realmGet$seen());
        return serverMessages;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, ServerMessages serverMessages, Map<RealmModel, Long> cache) {
        if ((serverMessages instanceof RealmObjectProxy) && ((RealmObjectProxy) serverMessages).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) serverMessages).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) serverMessages).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(ServerMessages.class);
        long tableNativePtr = table.getNativePtr();
        ServerMessagesColumnInfo columnInfo = (ServerMessagesColumnInfo) realm.getSchema().getColumnInfo(ServerMessages.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(serverMessages, Long.valueOf(rowIndex));
        String realmGet$id = serverMessages.realmGet$id();
        if (realmGet$id != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.idIndex, rowIndex, realmGet$id, false);
        }
        String realmGet$title = serverMessages.realmGet$title();
        if (realmGet$title != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.titleIndex, rowIndex, realmGet$title, false);
        }
        String realmGet$message = serverMessages.realmGet$message();
        if (realmGet$message != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.messageIndex, rowIndex, realmGet$message, false);
        }
        Table.nativeSetLong(tableNativePtr, columnInfo.dateIndex, rowIndex, serverMessages.realmGet$date(), false);
        Table.nativeSetBoolean(tableNativePtr, columnInfo.seenIndex, rowIndex, serverMessages.realmGet$seen(), false);
        return rowIndex;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(ServerMessages.class);
        long tableNativePtr = table.getNativePtr();
        ServerMessagesColumnInfo columnInfo = (ServerMessagesColumnInfo) realm.getSchema().getColumnInfo(ServerMessages.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (ServerMessages) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    String realmGet$id = ((com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface) realmModel).realmGet$id();
                    if (realmGet$id != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.idIndex, rowIndex, realmGet$id, false);
                    }
                    String realmGet$title = ((com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface) realmModel).realmGet$title();
                    if (realmGet$title != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.titleIndex, rowIndex, realmGet$title, false);
                    }
                    String realmGet$message = ((com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface) realmModel).realmGet$message();
                    if (realmGet$message != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.messageIndex, rowIndex, realmGet$message, false);
                    }
                    Table.nativeSetLong(tableNativePtr, columnInfo.dateIndex, rowIndex, ((com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface) realmModel).realmGet$date(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.seenIndex, rowIndex, ((com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface) realmModel).realmGet$seen(), false);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, ServerMessages serverMessages, Map<RealmModel, Long> cache) {
        if ((serverMessages instanceof RealmObjectProxy) && ((RealmObjectProxy) serverMessages).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) serverMessages).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) serverMessages).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(ServerMessages.class);
        long tableNativePtr = table.getNativePtr();
        ServerMessagesColumnInfo columnInfo = (ServerMessagesColumnInfo) realm.getSchema().getColumnInfo(ServerMessages.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(serverMessages, Long.valueOf(rowIndex));
        String realmGet$id = serverMessages.realmGet$id();
        if (realmGet$id != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.idIndex, rowIndex, realmGet$id, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.idIndex, rowIndex, false);
        }
        String realmGet$title = serverMessages.realmGet$title();
        if (realmGet$title != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.titleIndex, rowIndex, realmGet$title, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.titleIndex, rowIndex, false);
        }
        String realmGet$message = serverMessages.realmGet$message();
        if (realmGet$message != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.messageIndex, rowIndex, realmGet$message, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.messageIndex, rowIndex, false);
        }
        Table.nativeSetLong(tableNativePtr, columnInfo.dateIndex, rowIndex, serverMessages.realmGet$date(), false);
        Table.nativeSetBoolean(tableNativePtr, columnInfo.seenIndex, rowIndex, serverMessages.realmGet$seen(), false);
        return rowIndex;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(ServerMessages.class);
        long tableNativePtr = table.getNativePtr();
        ServerMessagesColumnInfo columnInfo = (ServerMessagesColumnInfo) realm.getSchema().getColumnInfo(ServerMessages.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (ServerMessages) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    String realmGet$id = ((com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface) realmModel).realmGet$id();
                    if (realmGet$id != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.idIndex, rowIndex, realmGet$id, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.idIndex, rowIndex, false);
                    }
                    String realmGet$title = ((com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface) realmModel).realmGet$title();
                    if (realmGet$title != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.titleIndex, rowIndex, realmGet$title, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.titleIndex, rowIndex, false);
                    }
                    String realmGet$message = ((com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface) realmModel).realmGet$message();
                    if (realmGet$message != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.messageIndex, rowIndex, realmGet$message, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.messageIndex, rowIndex, false);
                    }
                    Table.nativeSetLong(tableNativePtr, columnInfo.dateIndex, rowIndex, ((com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface) realmModel).realmGet$date(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.seenIndex, rowIndex, ((com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface) realmModel).realmGet$seen(), false);
                }
            }
        }
    }

    public static ServerMessages createDetachedCopy(ServerMessages realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        ServerMessages unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new ServerMessages();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (ServerMessages) cachedObject.object;
            }
            unmanagedObject = (ServerMessages) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface unmanagedCopy = unmanagedObject;
        ServerMessages realmSource = realmObject;
        unmanagedCopy.realmSet$id(realmSource.realmGet$id());
        unmanagedCopy.realmSet$title(realmSource.realmGet$title());
        unmanagedCopy.realmSet$message(realmSource.realmGet$message());
        unmanagedCopy.realmSet$date(realmSource.realmGet$date());
        unmanagedCopy.realmSet$seen(realmSource.realmGet$seen());
        return unmanagedObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder stringBuilder = new StringBuilder("ServerMessages = proxy[");
        stringBuilder.append("{id:");
        stringBuilder.append(realmGet$id() != null ? realmGet$id() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{title:");
        stringBuilder.append(realmGet$title() != null ? realmGet$title() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{message:");
        stringBuilder.append(realmGet$message() != null ? realmGet$message() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{date:");
        stringBuilder.append(realmGet$date());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{seen:");
        stringBuilder.append(realmGet$seen());
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
        com_digikala_dms_model_domain_ServerMessagesRealmProxy aServerMessages = (com_digikala_dms_model_domain_ServerMessagesRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aServerMessages.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aServerMessages.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aServerMessages.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
