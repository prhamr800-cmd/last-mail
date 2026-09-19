package io.realm;

import io.realm.internal.ColumnIndices;
import io.realm.internal.Table;

/* JADX INFO: loaded from: classes2.dex */
class ImmutableRealmSchema extends RealmSchema {
    private static final String SCHEMA_IMMUTABLE_EXCEPTION_MSG = "This 'RealmSchema' is immutable. Please use 'DynamicRealm.getSchema() to get a mutable instance.";

    ImmutableRealmSchema(BaseRealm realm, ColumnIndices columnIndices) {
        super(realm, columnIndices);
    }

    @Override // io.realm.RealmSchema
    public RealmObjectSchema get(String className) {
        checkNotEmpty(className, "Null or empty class names are not allowed");
        String internalClassName = Table.getTableNameForClass(className);
        if (!this.realm.getSharedRealm().hasTable(internalClassName)) {
            return null;
        }
        Table table = this.realm.getSharedRealm().getTable(internalClassName);
        return new ImmutableRealmObjectSchema(this.realm, this, table, getColumnInfo(className));
    }

    @Override // io.realm.RealmSchema
    public RealmObjectSchema create(String className) {
        throw new UnsupportedOperationException(SCHEMA_IMMUTABLE_EXCEPTION_MSG);
    }

    @Override // io.realm.RealmSchema
    public RealmObjectSchema createWithPrimaryKeyField(String className, String primaryKeyFieldName, Class<?> fieldType, FieldAttribute... attributes) {
        throw new UnsupportedOperationException(SCHEMA_IMMUTABLE_EXCEPTION_MSG);
    }

    @Override // io.realm.RealmSchema
    public void remove(String className) {
        throw new UnsupportedOperationException(SCHEMA_IMMUTABLE_EXCEPTION_MSG);
    }

    @Override // io.realm.RealmSchema
    public RealmObjectSchema rename(String oldClassName, String newClassName) {
        throw new UnsupportedOperationException(SCHEMA_IMMUTABLE_EXCEPTION_MSG);
    }
}
