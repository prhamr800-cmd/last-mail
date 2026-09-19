package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.digikala.dms.model.domain.Batch;
import com.digikala.dms.model.domain.Courier;
import com.digikala.dms.model.domain.DistributionCenter;
import io.realm.BaseRealm;
import io.realm.com_digikala_dms_model_domain_BatchRealmProxy;
import io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxy;
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
public class com_digikala_dms_model_domain_CourierRealmProxy extends Courier implements RealmObjectProxy, com_digikala_dms_model_domain_CourierRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private CourierColumnInfo columnInfo;
    private ProxyState<Courier> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "Courier";
    }

    static final class CourierColumnInfo extends ColumnInfo {
        long avatarUrlIndex;
        long batchIndex;
        long distributionCenterIndex;
        long idIndex;
        long isBatchFinalizedIndex;
        long isLoggedInIndex;
        long nameIndex;
        long notificationTokenIndex;
        long userNameIndex;

        CourierColumnInfo(OsSchemaInfo schemaInfo) {
            super(9);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
            this.userNameIndex = addColumnDetails("userName", "userName", objectSchemaInfo);
            this.avatarUrlIndex = addColumnDetails(Courier.COLUMN_AVATAR_URL, Courier.COLUMN_AVATAR_URL, objectSchemaInfo);
            this.distributionCenterIndex = addColumnDetails("distributionCenter", "distributionCenter", objectSchemaInfo);
            this.batchIndex = addColumnDetails("batch", "batch", objectSchemaInfo);
            this.isLoggedInIndex = addColumnDetails(Courier.COLUMN_IS_LOGGED_IN, Courier.COLUMN_IS_LOGGED_IN, objectSchemaInfo);
            this.isBatchFinalizedIndex = addColumnDetails("isBatchFinalized", "isBatchFinalized", objectSchemaInfo);
            this.notificationTokenIndex = addColumnDetails(Courier.COLUMN_NOTIFICATION_TOKEN, Courier.COLUMN_NOTIFICATION_TOKEN, objectSchemaInfo);
        }

        CourierColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new CourierColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            CourierColumnInfo src = (CourierColumnInfo) rawSrc;
            CourierColumnInfo dst = (CourierColumnInfo) rawDst;
            dst.idIndex = src.idIndex;
            dst.nameIndex = src.nameIndex;
            dst.userNameIndex = src.userNameIndex;
            dst.avatarUrlIndex = src.avatarUrlIndex;
            dst.distributionCenterIndex = src.distributionCenterIndex;
            dst.batchIndex = src.batchIndex;
            dst.isLoggedInIndex = src.isLoggedInIndex;
            dst.isBatchFinalizedIndex = src.isBatchFinalizedIndex;
            dst.notificationTokenIndex = src.notificationTokenIndex;
        }
    }

    com_digikala_dms_model_domain_CourierRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (CourierColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // com.digikala.dms.model.domain.Courier, io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public String realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.idIndex);
    }

    @Override // com.digikala.dms.model.domain.Courier, io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
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

    @Override // com.digikala.dms.model.domain.Courier, io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
    }

    @Override // com.digikala.dms.model.domain.Courier, io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public void realmSet$name(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.nameIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.nameIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.nameIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.nameIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.Courier, io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public String realmGet$userName() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.userNameIndex);
    }

    @Override // com.digikala.dms.model.domain.Courier, io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public void realmSet$userName(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.userNameIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.userNameIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.userNameIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.userNameIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.Courier, io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public String realmGet$avatarUrl() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.avatarUrlIndex);
    }

    @Override // com.digikala.dms.model.domain.Courier, io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public void realmSet$avatarUrl(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.avatarUrlIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.avatarUrlIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.avatarUrlIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.avatarUrlIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.Courier, io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public DistributionCenter realmGet$distributionCenter() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.distributionCenterIndex)) {
            return null;
        }
        return (DistributionCenter) this.proxyState.getRealm$realm().get(DistributionCenter.class, this.proxyState.getRow$realm().getLink(this.columnInfo.distributionCenterIndex), false, Collections.emptyList());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.digikala.dms.model.domain.Courier, io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public void realmSet$distributionCenter(DistributionCenter distributionCenter) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            RealmModel realmModel = distributionCenter;
            if (this.proxyState.getExcludeFields$realm().contains("distributionCenter")) {
                return;
            }
            if (distributionCenter != 0) {
                boolean zIsManaged = RealmObject.isManaged(distributionCenter);
                realmModel = distributionCenter;
                if (!zIsManaged) {
                    realmModel = (DistributionCenter) ((Realm) this.proxyState.getRealm$realm()).copyToRealm(distributionCenter);
                }
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (realmModel == null) {
                row$realm.nullifyLink(this.columnInfo.distributionCenterIndex);
                return;
            } else {
                this.proxyState.checkValidObject(realmModel);
                row$realm.getTable().setLink(this.columnInfo.distributionCenterIndex, row$realm.getIndex(), ((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex(), true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (distributionCenter == 0) {
            this.proxyState.getRow$realm().nullifyLink(this.columnInfo.distributionCenterIndex);
        } else {
            this.proxyState.checkValidObject(distributionCenter);
            this.proxyState.getRow$realm().setLink(this.columnInfo.distributionCenterIndex, ((RealmObjectProxy) distributionCenter).realmGet$proxyState().getRow$realm().getIndex());
        }
    }

    @Override // com.digikala.dms.model.domain.Courier, io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public Batch realmGet$batch() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.batchIndex)) {
            return null;
        }
        return (Batch) this.proxyState.getRealm$realm().get(Batch.class, this.proxyState.getRow$realm().getLink(this.columnInfo.batchIndex), false, Collections.emptyList());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.digikala.dms.model.domain.Courier, io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public void realmSet$batch(Batch batch) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Batch batch2 = batch;
            if (this.proxyState.getExcludeFields$realm().contains("batch")) {
                return;
            }
            if (batch != 0) {
                boolean zIsManaged = RealmObject.isManaged(batch);
                batch2 = batch;
                if (!zIsManaged) {
                    batch2 = (Batch) ((Realm) this.proxyState.getRealm$realm()).copyToRealm(batch);
                }
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (batch2 == null) {
                row$realm.nullifyLink(this.columnInfo.batchIndex);
                return;
            } else {
                this.proxyState.checkValidObject(batch2);
                row$realm.getTable().setLink(this.columnInfo.batchIndex, row$realm.getIndex(), ((RealmObjectProxy) batch2).realmGet$proxyState().getRow$realm().getIndex(), true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (batch == 0) {
            this.proxyState.getRow$realm().nullifyLink(this.columnInfo.batchIndex);
        } else {
            this.proxyState.checkValidObject(batch);
            this.proxyState.getRow$realm().setLink(this.columnInfo.batchIndex, ((RealmObjectProxy) batch).realmGet$proxyState().getRow$realm().getIndex());
        }
    }

    @Override // com.digikala.dms.model.domain.Courier, io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public boolean realmGet$isLoggedIn() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.isLoggedInIndex);
    }

    @Override // com.digikala.dms.model.domain.Courier, io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public void realmSet$isLoggedIn(boolean value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setBoolean(this.columnInfo.isLoggedInIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setBoolean(this.columnInfo.isLoggedInIndex, value);
    }

    @Override // com.digikala.dms.model.domain.Courier, io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public boolean realmGet$isBatchFinalized() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.isBatchFinalizedIndex);
    }

    @Override // com.digikala.dms.model.domain.Courier, io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public void realmSet$isBatchFinalized(boolean value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setBoolean(this.columnInfo.isBatchFinalizedIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setBoolean(this.columnInfo.isBatchFinalizedIndex, value);
    }

    @Override // com.digikala.dms.model.domain.Courier, io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public String realmGet$notificationToken() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.notificationTokenIndex);
    }

    @Override // com.digikala.dms.model.domain.Courier, io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public void realmSet$notificationToken(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.notificationTokenIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.notificationTokenIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.notificationTokenIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.notificationTokenIndex, value);
        }
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 9, 0);
        builder.addPersistedProperty("id", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("name", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("userName", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(Courier.COLUMN_AVATAR_URL, RealmFieldType.STRING, false, false, false);
        builder.addPersistedLinkProperty("distributionCenter", RealmFieldType.OBJECT, com_digikala_dms_model_domain_DistributionCenterRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        builder.addPersistedLinkProperty("batch", RealmFieldType.OBJECT, com_digikala_dms_model_domain_BatchRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        builder.addPersistedProperty(Courier.COLUMN_IS_LOGGED_IN, RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty("isBatchFinalized", RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty(Courier.COLUMN_NOTIFICATION_TOKEN, RealmFieldType.STRING, false, false, false);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static CourierColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new CourierColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static Courier createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws JSONException {
        List<String> excludeFields = new ArrayList<>(2);
        if (json.has("distributionCenter")) {
            excludeFields.add("distributionCenter");
        }
        if (json.has("batch")) {
            excludeFields.add("batch");
        }
        Courier obj = (Courier) realm.createObjectInternal(Courier.class, true, excludeFields);
        Courier objProxy = obj;
        if (json.has("id")) {
            if (json.isNull("id")) {
                objProxy.realmSet$id(null);
            } else {
                objProxy.realmSet$id(json.getString("id"));
            }
        }
        if (json.has("name")) {
            if (json.isNull("name")) {
                objProxy.realmSet$name(null);
            } else {
                objProxy.realmSet$name(json.getString("name"));
            }
        }
        if (json.has("userName")) {
            if (json.isNull("userName")) {
                objProxy.realmSet$userName(null);
            } else {
                objProxy.realmSet$userName(json.getString("userName"));
            }
        }
        if (json.has(Courier.COLUMN_AVATAR_URL)) {
            if (json.isNull(Courier.COLUMN_AVATAR_URL)) {
                objProxy.realmSet$avatarUrl(null);
            } else {
                objProxy.realmSet$avatarUrl(json.getString(Courier.COLUMN_AVATAR_URL));
            }
        }
        if (json.has("distributionCenter")) {
            if (json.isNull("distributionCenter")) {
                objProxy.realmSet$distributionCenter(null);
            } else {
                DistributionCenter distributionCenterObj = com_digikala_dms_model_domain_DistributionCenterRealmProxy.createOrUpdateUsingJsonObject(realm, json.getJSONObject("distributionCenter"), update);
                objProxy.realmSet$distributionCenter(distributionCenterObj);
            }
        }
        if (json.has("batch")) {
            if (json.isNull("batch")) {
                objProxy.realmSet$batch(null);
            } else {
                Batch batchObj = com_digikala_dms_model_domain_BatchRealmProxy.createOrUpdateUsingJsonObject(realm, json.getJSONObject("batch"), update);
                objProxy.realmSet$batch(batchObj);
            }
        }
        if (json.has(Courier.COLUMN_IS_LOGGED_IN)) {
            if (json.isNull(Courier.COLUMN_IS_LOGGED_IN)) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'isLoggedIn' to null.");
            }
            objProxy.realmSet$isLoggedIn(json.getBoolean(Courier.COLUMN_IS_LOGGED_IN));
        }
        if (json.has("isBatchFinalized")) {
            if (json.isNull("isBatchFinalized")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'isBatchFinalized' to null.");
            }
            objProxy.realmSet$isBatchFinalized(json.getBoolean("isBatchFinalized"));
        }
        if (json.has(Courier.COLUMN_NOTIFICATION_TOKEN)) {
            if (json.isNull(Courier.COLUMN_NOTIFICATION_TOKEN)) {
                objProxy.realmSet$notificationToken(null);
            } else {
                objProxy.realmSet$notificationToken(json.getString(Courier.COLUMN_NOTIFICATION_TOKEN));
            }
        }
        return obj;
    }

    @TargetApi(11)
    public static Courier createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        Courier obj = new Courier();
        Courier objProxy = obj;
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
            } else if (name.equals("name")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$name(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$name(null);
                }
            } else if (name.equals("userName")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$userName(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$userName(null);
                }
            } else if (name.equals(Courier.COLUMN_AVATAR_URL)) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$avatarUrl(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$avatarUrl(null);
                }
            } else if (name.equals("distributionCenter")) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$distributionCenter(null);
                } else {
                    DistributionCenter distributionCenterObj = com_digikala_dms_model_domain_DistributionCenterRealmProxy.createUsingJsonStream(realm, reader);
                    objProxy.realmSet$distributionCenter(distributionCenterObj);
                }
            } else if (name.equals("batch")) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$batch(null);
                } else {
                    Batch batchObj = com_digikala_dms_model_domain_BatchRealmProxy.createUsingJsonStream(realm, reader);
                    objProxy.realmSet$batch(batchObj);
                }
            } else if (name.equals(Courier.COLUMN_IS_LOGGED_IN)) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$isLoggedIn(reader.nextBoolean());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'isLoggedIn' to null.");
                }
            } else if (name.equals("isBatchFinalized")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$isBatchFinalized(reader.nextBoolean());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'isBatchFinalized' to null.");
                }
            } else if (name.equals(Courier.COLUMN_NOTIFICATION_TOKEN)) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$notificationToken(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$notificationToken(null);
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return (Courier) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Courier copyOrUpdate(Realm realm, Courier courier, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        if ((courier instanceof RealmObjectProxy) && ((RealmObjectProxy) courier).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) courier).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return courier;
            }
        }
        BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(courier);
        if (realmModel != null) {
            return (Courier) realmModel;
        }
        return copy(realm, courier, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Courier copy(Realm realm, Courier newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (Courier) realmModel;
        }
        Courier courier = (Courier) realm.createObjectInternal(Courier.class, false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) courier);
        Courier realmObjectSource = newObject;
        Courier realmObjectCopy = courier;
        realmObjectCopy.realmSet$id(realmObjectSource.realmGet$id());
        realmObjectCopy.realmSet$name(realmObjectSource.realmGet$name());
        realmObjectCopy.realmSet$userName(realmObjectSource.realmGet$userName());
        realmObjectCopy.realmSet$avatarUrl(realmObjectSource.realmGet$avatarUrl());
        DistributionCenter distributionCenterObj = realmObjectSource.realmGet$distributionCenter();
        if (distributionCenterObj == null) {
            realmObjectCopy.realmSet$distributionCenter(null);
        } else {
            DistributionCenter cachedistributionCenter = (DistributionCenter) cache.get(distributionCenterObj);
            if (cachedistributionCenter != null) {
                realmObjectCopy.realmSet$distributionCenter(cachedistributionCenter);
            } else {
                realmObjectCopy.realmSet$distributionCenter(com_digikala_dms_model_domain_DistributionCenterRealmProxy.copyOrUpdate(realm, distributionCenterObj, update, cache));
            }
        }
        Batch batchObj = realmObjectSource.realmGet$batch();
        if (batchObj == null) {
            realmObjectCopy.realmSet$batch(null);
        } else {
            Batch cachebatch = (Batch) cache.get(batchObj);
            if (cachebatch != null) {
                realmObjectCopy.realmSet$batch(cachebatch);
            } else {
                realmObjectCopy.realmSet$batch(com_digikala_dms_model_domain_BatchRealmProxy.copyOrUpdate(realm, batchObj, update, cache));
            }
        }
        realmObjectCopy.realmSet$isLoggedIn(realmObjectSource.realmGet$isLoggedIn());
        realmObjectCopy.realmSet$isBatchFinalized(realmObjectSource.realmGet$isBatchFinalized());
        realmObjectCopy.realmSet$notificationToken(realmObjectSource.realmGet$notificationToken());
        return courier;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, Courier courier, Map<RealmModel, Long> cache) {
        if (!(courier instanceof RealmObjectProxy) || ((RealmObjectProxy) courier).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) courier).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table = realm.getTable(Courier.class);
            long tableNativePtr = table.getNativePtr();
            CourierColumnInfo columnInfo = (CourierColumnInfo) realm.getSchema().getColumnInfo(Courier.class);
            long rowIndex = OsObject.createRow(table);
            cache.put(courier, Long.valueOf(rowIndex));
            String realmGet$id = courier.realmGet$id();
            if (realmGet$id != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.idIndex, rowIndex, realmGet$id, false);
            }
            String realmGet$name = courier.realmGet$name();
            if (realmGet$name != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.nameIndex, rowIndex, realmGet$name, false);
            }
            String realmGet$userName = courier.realmGet$userName();
            if (realmGet$userName != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.userNameIndex, rowIndex, realmGet$userName, false);
            }
            String realmGet$avatarUrl = courier.realmGet$avatarUrl();
            if (realmGet$avatarUrl != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.avatarUrlIndex, rowIndex, realmGet$avatarUrl, false);
            }
            DistributionCenter distributionCenterObj = courier.realmGet$distributionCenter();
            if (distributionCenterObj != null) {
                Long cachedistributionCenter = cache.get(distributionCenterObj);
                if (cachedistributionCenter == null) {
                    cachedistributionCenter = Long.valueOf(com_digikala_dms_model_domain_DistributionCenterRealmProxy.insert(realm, distributionCenterObj, cache));
                }
                Table.nativeSetLink(tableNativePtr, columnInfo.distributionCenterIndex, rowIndex, cachedistributionCenter.longValue(), false);
            }
            Batch batchObj = courier.realmGet$batch();
            if (batchObj != null) {
                Long cachebatch = cache.get(batchObj);
                if (cachebatch == null) {
                    cachebatch = Long.valueOf(com_digikala_dms_model_domain_BatchRealmProxy.insert(realm, batchObj, cache));
                }
                Table.nativeSetLink(tableNativePtr, columnInfo.batchIndex, rowIndex, cachebatch.longValue(), false);
            }
            Table.nativeSetBoolean(tableNativePtr, columnInfo.isLoggedInIndex, rowIndex, courier.realmGet$isLoggedIn(), false);
            Table.nativeSetBoolean(tableNativePtr, columnInfo.isBatchFinalizedIndex, rowIndex, courier.realmGet$isBatchFinalized(), false);
            String realmGet$notificationToken = courier.realmGet$notificationToken();
            if (realmGet$notificationToken != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.notificationTokenIndex, rowIndex, realmGet$notificationToken, false);
            }
            return rowIndex;
        }
        return ((RealmObjectProxy) courier).realmGet$proxyState().getRow$realm().getIndex();
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(Courier.class);
        long tableNativePtr = table.getNativePtr();
        CourierColumnInfo columnInfo = (CourierColumnInfo) realm.getSchema().getColumnInfo(Courier.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (Courier) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    String realmGet$id = ((com_digikala_dms_model_domain_CourierRealmProxyInterface) realmModel).realmGet$id();
                    if (realmGet$id != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.idIndex, rowIndex, realmGet$id, false);
                    }
                    String realmGet$name = ((com_digikala_dms_model_domain_CourierRealmProxyInterface) realmModel).realmGet$name();
                    if (realmGet$name != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.nameIndex, rowIndex, realmGet$name, false);
                    }
                    String realmGet$userName = ((com_digikala_dms_model_domain_CourierRealmProxyInterface) realmModel).realmGet$userName();
                    if (realmGet$userName != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.userNameIndex, rowIndex, realmGet$userName, false);
                    }
                    String realmGet$avatarUrl = ((com_digikala_dms_model_domain_CourierRealmProxyInterface) realmModel).realmGet$avatarUrl();
                    if (realmGet$avatarUrl != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.avatarUrlIndex, rowIndex, realmGet$avatarUrl, false);
                    }
                    DistributionCenter distributionCenterObj = ((com_digikala_dms_model_domain_CourierRealmProxyInterface) realmModel).realmGet$distributionCenter();
                    if (distributionCenterObj != null) {
                        Long cachedistributionCenter = cache.get(distributionCenterObj);
                        if (cachedistributionCenter == null) {
                            cachedistributionCenter = Long.valueOf(com_digikala_dms_model_domain_DistributionCenterRealmProxy.insert(realm, distributionCenterObj, cache));
                        }
                        table.setLink(columnInfo.distributionCenterIndex, rowIndex, cachedistributionCenter.longValue(), false);
                    }
                    Batch batchObj = ((com_digikala_dms_model_domain_CourierRealmProxyInterface) realmModel).realmGet$batch();
                    if (batchObj != null) {
                        Long cachebatch = cache.get(batchObj);
                        if (cachebatch == null) {
                            cachebatch = Long.valueOf(com_digikala_dms_model_domain_BatchRealmProxy.insert(realm, batchObj, cache));
                        }
                        table.setLink(columnInfo.batchIndex, rowIndex, cachebatch.longValue(), false);
                    }
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.isLoggedInIndex, rowIndex, ((com_digikala_dms_model_domain_CourierRealmProxyInterface) realmModel).realmGet$isLoggedIn(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.isBatchFinalizedIndex, rowIndex, ((com_digikala_dms_model_domain_CourierRealmProxyInterface) realmModel).realmGet$isBatchFinalized(), false);
                    String realmGet$notificationToken = ((com_digikala_dms_model_domain_CourierRealmProxyInterface) realmModel).realmGet$notificationToken();
                    if (realmGet$notificationToken != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.notificationTokenIndex, rowIndex, realmGet$notificationToken, false);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, Courier courier, Map<RealmModel, Long> cache) {
        if (!(courier instanceof RealmObjectProxy) || ((RealmObjectProxy) courier).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) courier).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table = realm.getTable(Courier.class);
            long tableNativePtr = table.getNativePtr();
            CourierColumnInfo columnInfo = (CourierColumnInfo) realm.getSchema().getColumnInfo(Courier.class);
            long rowIndex = OsObject.createRow(table);
            cache.put(courier, Long.valueOf(rowIndex));
            String realmGet$id = courier.realmGet$id();
            if (realmGet$id != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.idIndex, rowIndex, realmGet$id, false);
            } else {
                Table.nativeSetNull(tableNativePtr, columnInfo.idIndex, rowIndex, false);
            }
            String realmGet$name = courier.realmGet$name();
            if (realmGet$name != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.nameIndex, rowIndex, realmGet$name, false);
            } else {
                Table.nativeSetNull(tableNativePtr, columnInfo.nameIndex, rowIndex, false);
            }
            String realmGet$userName = courier.realmGet$userName();
            if (realmGet$userName != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.userNameIndex, rowIndex, realmGet$userName, false);
            } else {
                Table.nativeSetNull(tableNativePtr, columnInfo.userNameIndex, rowIndex, false);
            }
            String realmGet$avatarUrl = courier.realmGet$avatarUrl();
            if (realmGet$avatarUrl != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.avatarUrlIndex, rowIndex, realmGet$avatarUrl, false);
            } else {
                Table.nativeSetNull(tableNativePtr, columnInfo.avatarUrlIndex, rowIndex, false);
            }
            DistributionCenter distributionCenterObj = courier.realmGet$distributionCenter();
            if (distributionCenterObj != null) {
                Long cachedistributionCenter = cache.get(distributionCenterObj);
                if (cachedistributionCenter == null) {
                    cachedistributionCenter = Long.valueOf(com_digikala_dms_model_domain_DistributionCenterRealmProxy.insertOrUpdate(realm, distributionCenterObj, cache));
                }
                Table.nativeSetLink(tableNativePtr, columnInfo.distributionCenterIndex, rowIndex, cachedistributionCenter.longValue(), false);
            } else {
                Table.nativeNullifyLink(tableNativePtr, columnInfo.distributionCenterIndex, rowIndex);
            }
            Batch batchObj = courier.realmGet$batch();
            if (batchObj != null) {
                Long cachebatch = cache.get(batchObj);
                if (cachebatch == null) {
                    cachebatch = Long.valueOf(com_digikala_dms_model_domain_BatchRealmProxy.insertOrUpdate(realm, batchObj, cache));
                }
                Table.nativeSetLink(tableNativePtr, columnInfo.batchIndex, rowIndex, cachebatch.longValue(), false);
            } else {
                Table.nativeNullifyLink(tableNativePtr, columnInfo.batchIndex, rowIndex);
            }
            Table.nativeSetBoolean(tableNativePtr, columnInfo.isLoggedInIndex, rowIndex, courier.realmGet$isLoggedIn(), false);
            Table.nativeSetBoolean(tableNativePtr, columnInfo.isBatchFinalizedIndex, rowIndex, courier.realmGet$isBatchFinalized(), false);
            String realmGet$notificationToken = courier.realmGet$notificationToken();
            if (realmGet$notificationToken != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.notificationTokenIndex, rowIndex, realmGet$notificationToken, false);
            } else {
                Table.nativeSetNull(tableNativePtr, columnInfo.notificationTokenIndex, rowIndex, false);
            }
            return rowIndex;
        }
        return ((RealmObjectProxy) courier).realmGet$proxyState().getRow$realm().getIndex();
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(Courier.class);
        long tableNativePtr = table.getNativePtr();
        CourierColumnInfo columnInfo = (CourierColumnInfo) realm.getSchema().getColumnInfo(Courier.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (Courier) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    String realmGet$id = ((com_digikala_dms_model_domain_CourierRealmProxyInterface) realmModel).realmGet$id();
                    if (realmGet$id != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.idIndex, rowIndex, realmGet$id, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.idIndex, rowIndex, false);
                    }
                    String realmGet$name = ((com_digikala_dms_model_domain_CourierRealmProxyInterface) realmModel).realmGet$name();
                    if (realmGet$name != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.nameIndex, rowIndex, realmGet$name, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.nameIndex, rowIndex, false);
                    }
                    String realmGet$userName = ((com_digikala_dms_model_domain_CourierRealmProxyInterface) realmModel).realmGet$userName();
                    if (realmGet$userName != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.userNameIndex, rowIndex, realmGet$userName, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.userNameIndex, rowIndex, false);
                    }
                    String realmGet$avatarUrl = ((com_digikala_dms_model_domain_CourierRealmProxyInterface) realmModel).realmGet$avatarUrl();
                    if (realmGet$avatarUrl != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.avatarUrlIndex, rowIndex, realmGet$avatarUrl, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.avatarUrlIndex, rowIndex, false);
                    }
                    DistributionCenter distributionCenterObj = ((com_digikala_dms_model_domain_CourierRealmProxyInterface) realmModel).realmGet$distributionCenter();
                    if (distributionCenterObj != null) {
                        Long cachedistributionCenter = cache.get(distributionCenterObj);
                        if (cachedistributionCenter == null) {
                            cachedistributionCenter = Long.valueOf(com_digikala_dms_model_domain_DistributionCenterRealmProxy.insertOrUpdate(realm, distributionCenterObj, cache));
                        }
                        Table.nativeSetLink(tableNativePtr, columnInfo.distributionCenterIndex, rowIndex, cachedistributionCenter.longValue(), false);
                    } else {
                        Table.nativeNullifyLink(tableNativePtr, columnInfo.distributionCenterIndex, rowIndex);
                    }
                    Batch batchObj = ((com_digikala_dms_model_domain_CourierRealmProxyInterface) realmModel).realmGet$batch();
                    if (batchObj != null) {
                        Long cachebatch = cache.get(batchObj);
                        if (cachebatch == null) {
                            cachebatch = Long.valueOf(com_digikala_dms_model_domain_BatchRealmProxy.insertOrUpdate(realm, batchObj, cache));
                        }
                        Table.nativeSetLink(tableNativePtr, columnInfo.batchIndex, rowIndex, cachebatch.longValue(), false);
                    } else {
                        Table.nativeNullifyLink(tableNativePtr, columnInfo.batchIndex, rowIndex);
                    }
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.isLoggedInIndex, rowIndex, ((com_digikala_dms_model_domain_CourierRealmProxyInterface) realmModel).realmGet$isLoggedIn(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.isBatchFinalizedIndex, rowIndex, ((com_digikala_dms_model_domain_CourierRealmProxyInterface) realmModel).realmGet$isBatchFinalized(), false);
                    String realmGet$notificationToken = ((com_digikala_dms_model_domain_CourierRealmProxyInterface) realmModel).realmGet$notificationToken();
                    if (realmGet$notificationToken != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.notificationTokenIndex, rowIndex, realmGet$notificationToken, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.notificationTokenIndex, rowIndex, false);
                    }
                }
            }
        }
    }

    public static Courier createDetachedCopy(Courier realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        Courier unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new Courier();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (Courier) cachedObject.object;
            }
            unmanagedObject = (Courier) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        com_digikala_dms_model_domain_CourierRealmProxyInterface unmanagedCopy = unmanagedObject;
        Courier realmSource = realmObject;
        unmanagedCopy.realmSet$id(realmSource.realmGet$id());
        unmanagedCopy.realmSet$name(realmSource.realmGet$name());
        unmanagedCopy.realmSet$userName(realmSource.realmGet$userName());
        unmanagedCopy.realmSet$avatarUrl(realmSource.realmGet$avatarUrl());
        unmanagedCopy.realmSet$distributionCenter(com_digikala_dms_model_domain_DistributionCenterRealmProxy.createDetachedCopy(realmSource.realmGet$distributionCenter(), currentDepth + 1, maxDepth, cache));
        unmanagedCopy.realmSet$batch(com_digikala_dms_model_domain_BatchRealmProxy.createDetachedCopy(realmSource.realmGet$batch(), currentDepth + 1, maxDepth, cache));
        unmanagedCopy.realmSet$isLoggedIn(realmSource.realmGet$isLoggedIn());
        unmanagedCopy.realmSet$isBatchFinalized(realmSource.realmGet$isBatchFinalized());
        unmanagedCopy.realmSet$notificationToken(realmSource.realmGet$notificationToken());
        return unmanagedObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder stringBuilder = new StringBuilder("Courier = proxy[");
        stringBuilder.append("{id:");
        stringBuilder.append(realmGet$id() != null ? realmGet$id() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{name:");
        stringBuilder.append(realmGet$name() != null ? realmGet$name() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{userName:");
        stringBuilder.append(realmGet$userName() != null ? realmGet$userName() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{avatarUrl:");
        stringBuilder.append(realmGet$avatarUrl() != null ? realmGet$avatarUrl() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{distributionCenter:");
        stringBuilder.append(realmGet$distributionCenter() != null ? com_digikala_dms_model_domain_DistributionCenterRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{batch:");
        stringBuilder.append(realmGet$batch() != null ? com_digikala_dms_model_domain_BatchRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{isLoggedIn:");
        stringBuilder.append(realmGet$isLoggedIn());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{isBatchFinalized:");
        stringBuilder.append(realmGet$isBatchFinalized());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{notificationToken:");
        stringBuilder.append(realmGet$notificationToken() != null ? realmGet$notificationToken() : "null");
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
        com_digikala_dms_model_domain_CourierRealmProxy aCourier = (com_digikala_dms_model_domain_CourierRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aCourier.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aCourier.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aCourier.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
