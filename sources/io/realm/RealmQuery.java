package io.realm;

import io.realm.internal.OsList;
import io.realm.internal.OsResults;
import io.realm.internal.PendingRow;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.SortDescriptor;
import io.realm.internal.SubscriptionAwareOsResults;
import io.realm.internal.Table;
import io.realm.internal.TableQuery;
import io.realm.internal.Util;
import io.realm.internal.fields.FieldDescriptor;
import io.realm.internal.sync.SubscriptionAction;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class RealmQuery<E> {
    private static final String ASYNC_QUERY_WRONG_THREAD_MESSAGE = "Async query cannot be created on current thread.";
    private static final String EMPTY_VALUES = "Non-empty 'values' must be provided.";
    private static final String TYPE_MISMATCH = "Field '%s': type mismatch - %s expected.";
    private String className;
    private Class<E> clazz;
    private SortDescriptor distinctDescriptor;
    private final boolean forValues;
    private final OsList osList;
    private final TableQuery query;
    private final BaseRealm realm;
    private final RealmObjectSchema schema;
    private SortDescriptor sortDescriptor;
    private final Table table;

    static <E extends RealmModel> RealmQuery<E> createQuery(Realm realm, Class<E> clazz) {
        return new RealmQuery<>(realm, clazz);
    }

    static <E extends RealmModel> RealmQuery<E> createDynamicQuery(DynamicRealm realm, String className) {
        return new RealmQuery<>(realm, className);
    }

    static <E> RealmQuery<E> createQueryFromResult(RealmResults<E> queryResults) {
        if (queryResults.classSpec == null) {
            return new RealmQuery<>((RealmResults<DynamicRealmObject>) queryResults, queryResults.className);
        }
        return new RealmQuery<>(queryResults, queryResults.classSpec);
    }

    static <E> RealmQuery<E> createQueryFromList(RealmList<E> list) {
        if (list.clazz == null) {
            return new RealmQuery<>(list.realm, list.getOsList(), list.className);
        }
        return new RealmQuery<>(list.realm, list.getOsList(), list.clazz);
    }

    private static boolean isClassForRealmModel(Class<?> clazz) {
        return RealmModel.class.isAssignableFrom(clazz);
    }

    private RealmQuery(Realm realm, Class<E> clazz) {
        this.realm = realm;
        this.clazz = clazz;
        this.forValues = !isClassForRealmModel(clazz);
        if (this.forValues) {
            this.schema = null;
            this.table = null;
            this.osList = null;
            this.query = null;
            return;
        }
        this.schema = realm.getSchema().getSchemaForClass((Class<? extends RealmModel>) clazz);
        this.table = this.schema.getTable();
        this.osList = null;
        this.query = this.table.where();
    }

    private RealmQuery(RealmResults<E> queryResults, Class<E> clazz) {
        this.realm = queryResults.realm;
        this.clazz = clazz;
        this.forValues = !isClassForRealmModel(clazz);
        if (this.forValues) {
            this.schema = null;
            this.table = null;
            this.osList = null;
            this.query = null;
            return;
        }
        this.schema = this.realm.getSchema().getSchemaForClass((Class<? extends RealmModel>) clazz);
        this.table = queryResults.getTable();
        this.osList = null;
        this.query = queryResults.getOsResults().where();
    }

    private RealmQuery(BaseRealm realm, OsList osList, Class<E> clazz) {
        this.realm = realm;
        this.clazz = clazz;
        this.forValues = !isClassForRealmModel(clazz);
        if (this.forValues) {
            this.schema = null;
            this.table = null;
            this.osList = null;
            this.query = null;
            return;
        }
        this.schema = realm.getSchema().getSchemaForClass((Class<? extends RealmModel>) clazz);
        this.table = this.schema.getTable();
        this.osList = osList;
        this.query = osList.getQuery();
    }

    private RealmQuery(BaseRealm realm, String className) {
        this.realm = realm;
        this.className = className;
        this.forValues = false;
        this.schema = realm.getSchema().getSchemaForClass(className);
        this.table = this.schema.getTable();
        this.query = this.table.where();
        this.osList = null;
    }

    private RealmQuery(RealmResults<DynamicRealmObject> queryResults, String className) {
        this.realm = queryResults.realm;
        this.className = className;
        this.forValues = false;
        this.schema = this.realm.getSchema().getSchemaForClass(className);
        this.table = this.schema.getTable();
        this.query = queryResults.getOsResults().where();
        this.osList = null;
    }

    private RealmQuery(BaseRealm realm, OsList osList, String className) {
        this.realm = realm;
        this.className = className;
        this.forValues = false;
        this.schema = realm.getSchema().getSchemaForClass(className);
        this.table = this.schema.getTable();
        this.query = osList.getQuery();
        this.osList = osList;
    }

    public boolean isValid() {
        if (this.realm == null || this.realm.isClosed()) {
            return false;
        }
        if (this.osList != null) {
            return this.osList.isValid();
        }
        return this.table != null && this.table.isValid();
    }

    public RealmQuery<E> isNull(String fieldName) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, new RealmFieldType[0]);
        this.query.isNull(fd.getColumnIndices(), fd.getNativeTablePointers());
        return this;
    }

    public RealmQuery<E> isNotNull(String fieldName) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, new RealmFieldType[0]);
        this.query.isNotNull(fd.getColumnIndices(), fd.getNativeTablePointers());
        return this;
    }

    public RealmQuery<E> equalTo(String fieldName, @Nullable String value) {
        return equalTo(fieldName, value, Case.SENSITIVE);
    }

    public RealmQuery<E> equalTo(String fieldName, @Nullable String value, Case casing) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(fieldName, value, casing);
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String fieldName, @Nullable String value, Case casing) {
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.STRING);
        this.query.equalTo(fd.getColumnIndices(), fd.getNativeTablePointers(), value, casing);
        return this;
    }

    public RealmQuery<E> equalTo(String fieldName, @Nullable Byte value) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(fieldName, value);
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String fieldName, @Nullable Byte value) {
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.INTEGER);
        if (value == null) {
            this.query.isNull(fd.getColumnIndices(), fd.getNativeTablePointers());
        } else {
            this.query.equalTo(fd.getColumnIndices(), fd.getNativeTablePointers(), value.byteValue());
        }
        return this;
    }

    public RealmQuery<E> equalTo(String fieldName, @Nullable byte[] value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.BINARY);
        if (value == null) {
            this.query.isNull(fd.getColumnIndices(), fd.getNativeTablePointers());
        } else {
            this.query.equalTo(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        }
        return this;
    }

    public RealmQuery<E> equalTo(String fieldName, @Nullable Short value) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(fieldName, value);
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String fieldName, @Nullable Short value) {
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.INTEGER);
        if (value == null) {
            this.query.isNull(fd.getColumnIndices(), fd.getNativeTablePointers());
        } else {
            this.query.equalTo(fd.getColumnIndices(), fd.getNativeTablePointers(), value.shortValue());
        }
        return this;
    }

    public RealmQuery<E> equalTo(String fieldName, @Nullable Integer value) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(fieldName, value);
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String fieldName, @Nullable Integer value) {
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.INTEGER);
        if (value == null) {
            this.query.isNull(fd.getColumnIndices(), fd.getNativeTablePointers());
        } else {
            this.query.equalTo(fd.getColumnIndices(), fd.getNativeTablePointers(), value.intValue());
        }
        return this;
    }

    public RealmQuery<E> equalTo(String fieldName, @Nullable Long value) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(fieldName, value);
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String fieldName, @Nullable Long value) {
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.INTEGER);
        if (value == null) {
            this.query.isNull(fd.getColumnIndices(), fd.getNativeTablePointers());
        } else {
            this.query.equalTo(fd.getColumnIndices(), fd.getNativeTablePointers(), value.longValue());
        }
        return this;
    }

    public RealmQuery<E> equalTo(String fieldName, @Nullable Double value) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(fieldName, value);
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String fieldName, @Nullable Double value) {
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.DOUBLE);
        if (value == null) {
            this.query.isNull(fd.getColumnIndices(), fd.getNativeTablePointers());
        } else {
            this.query.equalTo(fd.getColumnIndices(), fd.getNativeTablePointers(), value.doubleValue());
        }
        return this;
    }

    public RealmQuery<E> equalTo(String fieldName, @Nullable Float value) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(fieldName, value);
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String fieldName, @Nullable Float value) {
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.FLOAT);
        if (value == null) {
            this.query.isNull(fd.getColumnIndices(), fd.getNativeTablePointers());
        } else {
            this.query.equalTo(fd.getColumnIndices(), fd.getNativeTablePointers(), value.floatValue());
        }
        return this;
    }

    public RealmQuery<E> equalTo(String fieldName, @Nullable Boolean value) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(fieldName, value);
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String fieldName, @Nullable Boolean value) {
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.BOOLEAN);
        if (value == null) {
            this.query.isNull(fd.getColumnIndices(), fd.getNativeTablePointers());
        } else {
            this.query.equalTo(fd.getColumnIndices(), fd.getNativeTablePointers(), value.booleanValue());
        }
        return this;
    }

    public RealmQuery<E> equalTo(String fieldName, @Nullable Date value) {
        this.realm.checkIfValid();
        return equalToWithoutThreadValidation(fieldName, value);
    }

    private RealmQuery<E> equalToWithoutThreadValidation(String fieldName, @Nullable Date value) {
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.DATE);
        this.query.equalTo(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> in(String fieldName, @Nullable String[] values) {
        return in(fieldName, values, Case.SENSITIVE);
    }

    public RealmQuery<E> in(String fieldName, @Nullable String[] values, Case casing) {
        this.realm.checkIfValid();
        if (values == null || values.length == 0) {
            alwaysFalse();
            return this;
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(fieldName, values[0], casing);
        for (int i = 1; i < values.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(fieldName, values[i], casing);
        }
        return endGroupWithoutThreadValidation();
    }

    public RealmQuery<E> in(String fieldName, @Nullable Byte[] values) {
        this.realm.checkIfValid();
        if (values == null || values.length == 0) {
            alwaysFalse();
            return this;
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(fieldName, values[0]);
        for (int i = 1; i < values.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(fieldName, values[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    public RealmQuery<E> in(String fieldName, @Nullable Short[] values) {
        this.realm.checkIfValid();
        if (values == null || values.length == 0) {
            alwaysFalse();
            return this;
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(fieldName, values[0]);
        for (int i = 1; i < values.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(fieldName, values[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    public RealmQuery<E> in(String fieldName, @Nullable Integer[] values) {
        this.realm.checkIfValid();
        if (values == null || values.length == 0) {
            alwaysFalse();
            return this;
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(fieldName, values[0]);
        for (int i = 1; i < values.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(fieldName, values[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    public RealmQuery<E> in(String fieldName, @Nullable Long[] values) {
        this.realm.checkIfValid();
        if (values == null || values.length == 0) {
            alwaysFalse();
            return this;
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(fieldName, values[0]);
        for (int i = 1; i < values.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(fieldName, values[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    public RealmQuery<E> in(String fieldName, @Nullable Double[] values) {
        this.realm.checkIfValid();
        if (values == null || values.length == 0) {
            alwaysFalse();
            return this;
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(fieldName, values[0]);
        for (int i = 1; i < values.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(fieldName, values[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    public RealmQuery<E> in(String fieldName, @Nullable Float[] values) {
        this.realm.checkIfValid();
        if (values == null || values.length == 0) {
            alwaysFalse();
            return this;
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(fieldName, values[0]);
        for (int i = 1; i < values.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(fieldName, values[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    public RealmQuery<E> in(String fieldName, @Nullable Boolean[] values) {
        this.realm.checkIfValid();
        if (values == null || values.length == 0) {
            alwaysFalse();
            return this;
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(fieldName, values[0]);
        for (int i = 1; i < values.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(fieldName, values[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    public RealmQuery<E> in(String fieldName, @Nullable Date[] values) {
        this.realm.checkIfValid();
        if (values == null || values.length == 0) {
            alwaysFalse();
            return this;
        }
        beginGroupWithoutThreadValidation().equalToWithoutThreadValidation(fieldName, values[0]);
        for (int i = 1; i < values.length; i++) {
            orWithoutThreadValidation().equalToWithoutThreadValidation(fieldName, values[i]);
        }
        return endGroupWithoutThreadValidation();
    }

    public RealmQuery<E> notEqualTo(String fieldName, @Nullable String value) {
        return notEqualTo(fieldName, value, Case.SENSITIVE);
    }

    public RealmQuery<E> notEqualTo(String fieldName, @Nullable String value, Case casing) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.STRING);
        if (fd.length() > 1 && !casing.getValue()) {
            throw new IllegalArgumentException("Link queries cannot be case insensitive - coming soon.");
        }
        this.query.notEqualTo(fd.getColumnIndices(), fd.getNativeTablePointers(), value, casing);
        return this;
    }

    public RealmQuery<E> notEqualTo(String fieldName, @Nullable Byte value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.INTEGER);
        if (value == null) {
            this.query.isNotNull(fd.getColumnIndices(), fd.getNativeTablePointers());
        } else {
            this.query.notEqualTo(fd.getColumnIndices(), fd.getNativeTablePointers(), value.byteValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String fieldName, @Nullable byte[] value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.BINARY);
        if (value == null) {
            this.query.isNotNull(fd.getColumnIndices(), fd.getNativeTablePointers());
        } else {
            this.query.notEqualTo(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String fieldName, @Nullable Short value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.INTEGER);
        if (value == null) {
            this.query.isNotNull(fd.getColumnIndices(), fd.getNativeTablePointers());
        } else {
            this.query.notEqualTo(fd.getColumnIndices(), fd.getNativeTablePointers(), value.shortValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String fieldName, @Nullable Integer value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.INTEGER);
        if (value == null) {
            this.query.isNotNull(fd.getColumnIndices(), fd.getNativeTablePointers());
        } else {
            this.query.notEqualTo(fd.getColumnIndices(), fd.getNativeTablePointers(), value.intValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String fieldName, @Nullable Long value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.INTEGER);
        if (value == null) {
            this.query.isNotNull(fd.getColumnIndices(), fd.getNativeTablePointers());
        } else {
            this.query.notEqualTo(fd.getColumnIndices(), fd.getNativeTablePointers(), value.longValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String fieldName, @Nullable Double value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.DOUBLE);
        if (value == null) {
            this.query.isNotNull(fd.getColumnIndices(), fd.getNativeTablePointers());
        } else {
            this.query.notEqualTo(fd.getColumnIndices(), fd.getNativeTablePointers(), value.doubleValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String fieldName, @Nullable Float value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.FLOAT);
        if (value == null) {
            this.query.isNotNull(fd.getColumnIndices(), fd.getNativeTablePointers());
        } else {
            this.query.notEqualTo(fd.getColumnIndices(), fd.getNativeTablePointers(), value.floatValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String fieldName, @Nullable Boolean value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.BOOLEAN);
        if (value == null) {
            this.query.isNotNull(fd.getColumnIndices(), fd.getNativeTablePointers());
        } else {
            this.query.equalTo(fd.getColumnIndices(), fd.getNativeTablePointers(), true ^ value.booleanValue());
        }
        return this;
    }

    public RealmQuery<E> notEqualTo(String fieldName, @Nullable Date value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.DATE);
        if (value == null) {
            this.query.isNotNull(fd.getColumnIndices(), fd.getNativeTablePointers());
        } else {
            this.query.notEqualTo(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        }
        return this;
    }

    public RealmQuery<E> greaterThan(String fieldName, int value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.INTEGER);
        this.query.greaterThan(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> greaterThan(String fieldName, long value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.INTEGER);
        this.query.greaterThan(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> greaterThan(String fieldName, double value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.DOUBLE);
        this.query.greaterThan(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> greaterThan(String fieldName, float value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.FLOAT);
        this.query.greaterThan(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> greaterThan(String fieldName, Date value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.DATE);
        this.query.greaterThan(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> greaterThanOrEqualTo(String fieldName, int value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.INTEGER);
        this.query.greaterThanOrEqual(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> greaterThanOrEqualTo(String fieldName, long value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.INTEGER);
        this.query.greaterThanOrEqual(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> greaterThanOrEqualTo(String fieldName, double value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.DOUBLE);
        this.query.greaterThanOrEqual(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> greaterThanOrEqualTo(String fieldName, float value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.FLOAT);
        this.query.greaterThanOrEqual(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> greaterThanOrEqualTo(String fieldName, Date value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.DATE);
        this.query.greaterThanOrEqual(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> lessThan(String fieldName, int value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.INTEGER);
        this.query.lessThan(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> lessThan(String fieldName, long value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.INTEGER);
        this.query.lessThan(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> lessThan(String fieldName, double value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.DOUBLE);
        this.query.lessThan(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> lessThan(String fieldName, float value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.FLOAT);
        this.query.lessThan(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> lessThan(String fieldName, Date value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.DATE);
        this.query.lessThan(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> lessThanOrEqualTo(String fieldName, int value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.INTEGER);
        this.query.lessThanOrEqual(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> lessThanOrEqualTo(String fieldName, long value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.INTEGER);
        this.query.lessThanOrEqual(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> lessThanOrEqualTo(String fieldName, double value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.DOUBLE);
        this.query.lessThanOrEqual(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> lessThanOrEqualTo(String fieldName, float value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.FLOAT);
        this.query.lessThanOrEqual(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> lessThanOrEqualTo(String fieldName, Date value) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.DATE);
        this.query.lessThanOrEqual(fd.getColumnIndices(), fd.getNativeTablePointers(), value);
        return this;
    }

    public RealmQuery<E> between(String fieldName, int from, int to) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.INTEGER);
        this.query.between(fd.getColumnIndices(), from, to);
        return this;
    }

    public RealmQuery<E> between(String fieldName, long from, long to) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.INTEGER);
        this.query.between(fd.getColumnIndices(), from, to);
        return this;
    }

    public RealmQuery<E> between(String fieldName, double from, double to) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.DOUBLE);
        this.query.between(fd.getColumnIndices(), from, to);
        return this;
    }

    public RealmQuery<E> between(String fieldName, float from, float to) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.FLOAT);
        this.query.between(fd.getColumnIndices(), from, to);
        return this;
    }

    public RealmQuery<E> between(String fieldName, Date from, Date to) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.DATE);
        this.query.between(fd.getColumnIndices(), from, to);
        return this;
    }

    public RealmQuery<E> contains(String fieldName, String value) {
        return contains(fieldName, value, Case.SENSITIVE);
    }

    public RealmQuery<E> contains(String fieldName, String value, Case casing) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.STRING);
        this.query.contains(fd.getColumnIndices(), fd.getNativeTablePointers(), value, casing);
        return this;
    }

    public RealmQuery<E> beginsWith(String fieldName, String value) {
        return beginsWith(fieldName, value, Case.SENSITIVE);
    }

    public RealmQuery<E> beginsWith(String fieldName, String value, Case casing) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.STRING);
        this.query.beginsWith(fd.getColumnIndices(), fd.getNativeTablePointers(), value, casing);
        return this;
    }

    public RealmQuery<E> endsWith(String fieldName, String value) {
        return endsWith(fieldName, value, Case.SENSITIVE);
    }

    public RealmQuery<E> endsWith(String fieldName, String value, Case casing) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.STRING);
        this.query.endsWith(fd.getColumnIndices(), fd.getNativeTablePointers(), value, casing);
        return this;
    }

    public RealmQuery<E> like(String fieldName, String value) {
        return like(fieldName, value, Case.SENSITIVE);
    }

    public RealmQuery<E> like(String fieldName, String value, Case casing) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.STRING);
        this.query.like(fd.getColumnIndices(), fd.getNativeTablePointers(), value, casing);
        return this;
    }

    public RealmQuery<E> beginGroup() {
        this.realm.checkIfValid();
        return beginGroupWithoutThreadValidation();
    }

    private RealmQuery<E> beginGroupWithoutThreadValidation() {
        this.query.group();
        return this;
    }

    public RealmQuery<E> endGroup() {
        this.realm.checkIfValid();
        return endGroupWithoutThreadValidation();
    }

    private RealmQuery<E> endGroupWithoutThreadValidation() {
        this.query.endGroup();
        return this;
    }

    public RealmQuery<E> or() {
        this.realm.checkIfValid();
        return orWithoutThreadValidation();
    }

    private RealmQuery<E> orWithoutThreadValidation() {
        this.query.or();
        return this;
    }

    public RealmQuery<E> and() {
        this.realm.checkIfValid();
        return this;
    }

    public RealmQuery<E> not() {
        this.realm.checkIfValid();
        this.query.not();
        return this;
    }

    public RealmQuery<E> isEmpty(String fieldName) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.STRING, RealmFieldType.BINARY, RealmFieldType.LIST, RealmFieldType.LINKING_OBJECTS);
        this.query.isEmpty(fd.getColumnIndices(), fd.getNativeTablePointers());
        return this;
    }

    public RealmQuery<E> isNotEmpty(String fieldName) {
        this.realm.checkIfValid();
        FieldDescriptor fd = this.schema.getColumnIndices(fieldName, RealmFieldType.STRING, RealmFieldType.BINARY, RealmFieldType.LIST, RealmFieldType.LINKING_OBJECTS);
        this.query.isNotEmpty(fd.getColumnIndices(), fd.getNativeTablePointers());
        return this;
    }

    public Number sum(String fieldName) {
        this.realm.checkIfValid();
        long columnIndex = this.schema.getAndCheckFieldIndex(fieldName);
        switch (this.table.getColumnType(columnIndex)) {
            case INTEGER:
                return Long.valueOf(this.query.sumInt(columnIndex));
            case FLOAT:
                return Double.valueOf(this.query.sumFloat(columnIndex));
            case DOUBLE:
                return Double.valueOf(this.query.sumDouble(columnIndex));
            default:
                throw new IllegalArgumentException(String.format(Locale.US, TYPE_MISMATCH, fieldName, "int, float or double"));
        }
    }

    public double average(String fieldName) {
        this.realm.checkIfValid();
        long columnIndex = this.schema.getAndCheckFieldIndex(fieldName);
        switch (this.table.getColumnType(columnIndex)) {
            case INTEGER:
                return this.query.averageInt(columnIndex);
            case FLOAT:
                return this.query.averageFloat(columnIndex);
            case DOUBLE:
                return this.query.averageDouble(columnIndex);
            default:
                throw new IllegalArgumentException(String.format(Locale.US, TYPE_MISMATCH, fieldName, "int, float or double"));
        }
    }

    @Nullable
    public Number min(String fieldName) {
        this.realm.checkIfValid();
        long columnIndex = this.schema.getAndCheckFieldIndex(fieldName);
        switch (this.table.getColumnType(columnIndex)) {
            case INTEGER:
                return this.query.minimumInt(columnIndex);
            case FLOAT:
                return this.query.minimumFloat(columnIndex);
            case DOUBLE:
                return this.query.minimumDouble(columnIndex);
            default:
                throw new IllegalArgumentException(String.format(Locale.US, TYPE_MISMATCH, fieldName, "int, float or double"));
        }
    }

    @Nullable
    public Date minimumDate(String fieldName) {
        this.realm.checkIfValid();
        long columnIndex = this.schema.getAndCheckFieldIndex(fieldName);
        return this.query.minimumDate(columnIndex);
    }

    @Nullable
    public Number max(String fieldName) {
        this.realm.checkIfValid();
        long columnIndex = this.schema.getAndCheckFieldIndex(fieldName);
        switch (this.table.getColumnType(columnIndex)) {
            case INTEGER:
                return this.query.maximumInt(columnIndex);
            case FLOAT:
                return this.query.maximumFloat(columnIndex);
            case DOUBLE:
                return this.query.maximumDouble(columnIndex);
            default:
                throw new IllegalArgumentException(String.format(Locale.US, TYPE_MISMATCH, fieldName, "int, float or double"));
        }
    }

    @Nullable
    public Date maximumDate(String fieldName) {
        this.realm.checkIfValid();
        long columnIndex = this.schema.getAndCheckFieldIndex(fieldName);
        return this.query.maximumDate(columnIndex);
    }

    public long count() {
        this.realm.checkIfValid();
        return this.query.count();
    }

    public RealmResults<E> findAll() {
        this.realm.checkIfValid();
        return createRealmResults(this.query, this.sortDescriptor, this.distinctDescriptor, true, SubscriptionAction.NO_SUBSCRIPTION);
    }

    public RealmResults<E> findAllAsync() {
        SubscriptionAction subscriptionAction;
        this.realm.checkIfValid();
        this.realm.sharedRealm.capabilities.checkCanDeliverNotification(ASYNC_QUERY_WRONG_THREAD_MESSAGE);
        if (this.realm.sharedRealm.isPartial() && this.osList == null) {
            subscriptionAction = SubscriptionAction.ANONYMOUS_SUBSCRIPTION;
        } else {
            subscriptionAction = SubscriptionAction.NO_SUBSCRIPTION;
        }
        SubscriptionAction subscriptionAction2 = subscriptionAction;
        return createRealmResults(this.query, this.sortDescriptor, this.distinctDescriptor, false, subscriptionAction2);
    }

    public RealmResults<E> findAllAsync(String subscriptionName) {
        this.realm.checkIfValid();
        this.realm.checkIfPartialRealm();
        if (this.osList != null) {
            throw new IllegalStateException("Cannot create subscriptions for queries based on a 'RealmList'");
        }
        if (Util.isEmptyString(subscriptionName)) {
            throw new IllegalArgumentException("Non-empty 'subscriptionName' required.");
        }
        this.realm.sharedRealm.capabilities.checkCanDeliverNotification(ASYNC_QUERY_WRONG_THREAD_MESSAGE);
        return createRealmResults(this.query, this.sortDescriptor, this.distinctDescriptor, false, SubscriptionAction.create(subscriptionName));
    }

    public RealmQuery<E> sort(String fieldName) {
        this.realm.checkIfValid();
        return sort(fieldName, Sort.ASCENDING);
    }

    public RealmQuery<E> sort(String fieldName, Sort sortOrder) {
        this.realm.checkIfValid();
        return sort(new String[]{fieldName}, new Sort[]{sortOrder});
    }

    public RealmQuery<E> sort(String fieldName1, Sort sortOrder1, String fieldName2, Sort sortOrder2) {
        this.realm.checkIfValid();
        return sort(new String[]{fieldName1, fieldName2}, new Sort[]{sortOrder1, sortOrder2});
    }

    public RealmQuery<E> sort(String[] fieldNames, Sort[] sortOrders) {
        this.realm.checkIfValid();
        if (this.sortDescriptor != null) {
            throw new IllegalStateException("A sorting order was already defined.");
        }
        this.sortDescriptor = SortDescriptor.getInstanceForSort(getSchemaConnector(), this.query.getTable(), fieldNames, sortOrders);
        return this;
    }

    public RealmQuery<E> distinct(String fieldName) {
        return distinct(fieldName, new String[0]);
    }

    public RealmQuery<E> distinct(String firstFieldName, String... remainingFieldNames) {
        this.realm.checkIfValid();
        if (this.distinctDescriptor != null) {
            throw new IllegalStateException("Distinct fields have already been defined.");
        }
        if (remainingFieldNames.length == 0) {
            this.distinctDescriptor = SortDescriptor.getInstanceForDistinct(getSchemaConnector(), this.table, firstFieldName);
        } else {
            String[] fieldNames = new String[remainingFieldNames.length + 1];
            fieldNames[0] = firstFieldName;
            System.arraycopy(remainingFieldNames, 0, fieldNames, 1, remainingFieldNames.length);
            this.distinctDescriptor = SortDescriptor.getInstanceForDistinct(getSchemaConnector(), this.table, fieldNames);
        }
        return this;
    }

    public RealmQuery<E> alwaysTrue() {
        this.realm.checkIfValid();
        this.query.alwaysTrue();
        return this;
    }

    public RealmQuery<E> alwaysFalse() {
        this.realm.checkIfValid();
        this.query.alwaysFalse();
        return this;
    }

    private boolean isDynamicQuery() {
        return this.className != null;
    }

    @Nullable
    public E findFirst() {
        this.realm.checkIfValid();
        if (this.forValues) {
            return null;
        }
        long sourceRowIndexForFirstObject = getSourceRowIndexForFirstObject();
        if (sourceRowIndexForFirstObject < 0) {
            return null;
        }
        return (E) this.realm.get(this.clazz, this.className, sourceRowIndexForFirstObject);
    }

    public E findFirstAsync() {
        Row pendingRow;
        RealmObjectProxy realmObjectProxy;
        this.realm.checkIfValid();
        if (this.forValues) {
            throw new UnsupportedOperationException("findFirstAsync() available only when type parameter 'E' is implementing RealmModel.");
        }
        this.realm.sharedRealm.capabilities.checkCanDeliverNotification(ASYNC_QUERY_WRONG_THREAD_MESSAGE);
        if (this.realm.isInTransaction()) {
            pendingRow = OsResults.createFromQuery(this.realm.sharedRealm, this.query).firstUncheckedRow();
        } else {
            pendingRow = new PendingRow(this.realm.sharedRealm, this.query, this.sortDescriptor, isDynamicQuery());
        }
        if (isDynamicQuery()) {
            realmObjectProxy = (E) new DynamicRealmObject(this.realm, pendingRow);
        } else {
            Class<E> cls = this.clazz;
            realmObjectProxy = (E) this.realm.getConfiguration().getSchemaMediator().newInstance(cls, this.realm, pendingRow, this.realm.getSchema().getColumnInfo((Class<? extends RealmModel>) cls), false, Collections.emptyList());
        }
        if (pendingRow instanceof PendingRow) {
            ((PendingRow) pendingRow).setFrontEnd(realmObjectProxy.realmGet$proxyState());
        }
        return (E) realmObjectProxy;
    }

    private RealmResults<E> createRealmResults(TableQuery query, @Nullable SortDescriptor sortDescriptor, @Nullable SortDescriptor distinctDescriptor, boolean loadResults, SubscriptionAction subscriptionAction) {
        OsResults osResults;
        RealmResults<E> results;
        if (subscriptionAction.shouldCreateSubscriptions()) {
            osResults = SubscriptionAwareOsResults.createFromQuery(this.realm.sharedRealm, query, sortDescriptor, distinctDescriptor, subscriptionAction.getName());
        } else {
            osResults = OsResults.createFromQuery(this.realm.sharedRealm, query, sortDescriptor, distinctDescriptor);
        }
        if (isDynamicQuery()) {
            results = new RealmResults<>(this.realm, osResults, this.className);
        } else {
            results = new RealmResults<>(this.realm, osResults, this.clazz);
        }
        if (loadResults) {
            results.load();
        }
        return results;
    }

    private long getSourceRowIndexForFirstObject() {
        if (this.sortDescriptor != null || this.distinctDescriptor != null) {
            RealmObjectProxy obj = (RealmObjectProxy) findAll().first(null);
            if (obj != null) {
                return obj.realmGet$proxyState().getRow$realm().getIndex();
            }
            return -1L;
        }
        return this.query.find();
    }

    private SchemaConnector getSchemaConnector() {
        return new SchemaConnector(this.realm.getSchema());
    }
}
