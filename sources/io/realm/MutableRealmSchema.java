package io.realm;

import io.realm.RealmObjectSchema;
import io.realm.internal.OsObjectStore;
import io.realm.internal.Table;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
class MutableRealmSchema extends RealmSchema {
    MutableRealmSchema(BaseRealm realm) {
        super(realm, null);
    }

    @Override // io.realm.RealmSchema
    public RealmObjectSchema get(String className) {
        checkNotEmpty(className, "Null or empty class names are not allowed");
        String internalClassName = Table.getTableNameForClass(className);
        if (!this.realm.getSharedRealm().hasTable(internalClassName)) {
            return null;
        }
        Table table = this.realm.getSharedRealm().getTable(internalClassName);
        return new MutableRealmObjectSchema(this.realm, this, table);
    }

    @Override // io.realm.RealmSchema
    public RealmObjectSchema create(String className) {
        checkNotEmpty(className, "Null or empty class names are not allowed");
        String internalTableName = Table.getTableNameForClass(className);
        if (className.length() > Table.CLASS_NAME_MAX_LENGTH) {
            throw new IllegalArgumentException(String.format(Locale.US, "Class name is too long. Limit is %1$d characters: %2$s", Integer.valueOf(Table.CLASS_NAME_MAX_LENGTH), Integer.valueOf(className.length())));
        }
        return new MutableRealmObjectSchema(this.realm, this, this.realm.getSharedRealm().createTable(internalTableName));
    }

    @Override // io.realm.RealmSchema
    public RealmObjectSchema createWithPrimaryKeyField(String className, String primaryKeyFieldName, Class<?> fieldType, FieldAttribute... attributes) {
        checkNotEmpty(className, "Null or empty class names are not allowed");
        RealmObjectSchema.checkLegalName(primaryKeyFieldName);
        String internalTableName = checkAndGetTableNameFromClassName(className);
        RealmObjectSchema.FieldMetaData metadata = RealmObjectSchema.getSupportedSimpleFields().get(fieldType);
        if (metadata == null || (metadata.fieldType != RealmFieldType.STRING && metadata.fieldType != RealmFieldType.INTEGER)) {
            throw new IllegalArgumentException(String.format("Realm doesn't support primary key field type '%s'.", fieldType));
        }
        boolean isStringField = metadata.fieldType == RealmFieldType.STRING;
        boolean nullable = metadata.defaultNullable;
        if (MutableRealmObjectSchema.containsAttribute(attributes, FieldAttribute.REQUIRED)) {
            nullable = false;
        }
        return new MutableRealmObjectSchema(this.realm, this, this.realm.getSharedRealm().createTableWithPrimaryKey(internalTableName, primaryKeyFieldName, isStringField, nullable));
    }

    @Override // io.realm.RealmSchema
    public void remove(String className) {
        this.realm.checkNotInSync();
        checkNotEmpty(className, "Null or empty class names are not allowed");
        String internalTableName = Table.getTableNameForClass(className);
        if (!OsObjectStore.deleteTableForObject(this.realm.getSharedRealm(), className)) {
            throw new IllegalArgumentException("Cannot remove class because it is not in this Realm: " + className);
        }
        removeFromClassNameToSchemaMap(internalTableName);
    }

    @Override // io.realm.RealmSchema
    public RealmObjectSchema rename(String oldClassName, String newClassName) {
        this.realm.checkNotInSync();
        checkNotEmpty(oldClassName, "Class names cannot be empty or null");
        checkNotEmpty(newClassName, "Class names cannot be empty or null");
        String oldInternalName = Table.getTableNameForClass(oldClassName);
        String newInternalName = Table.getTableNameForClass(newClassName);
        checkHasTable(oldClassName, "Cannot rename class because it doesn't exist in this Realm: " + oldClassName);
        if (this.realm.getSharedRealm().hasTable(newInternalName)) {
            throw new IllegalArgumentException(oldClassName + " cannot be renamed because the new class already exists: " + newClassName);
        }
        String pkField = OsObjectStore.getPrimaryKeyForObject(this.realm.sharedRealm, oldClassName);
        if (pkField != null) {
            OsObjectStore.setPrimaryKeyForObject(this.realm.sharedRealm, oldClassName, null);
        }
        this.realm.getSharedRealm().renameTable(oldInternalName, newInternalName);
        Table table = this.realm.getSharedRealm().getTable(newInternalName);
        if (pkField != null) {
            OsObjectStore.setPrimaryKeyForObject(this.realm.sharedRealm, newClassName, pkField);
        }
        RealmObjectSchema objectSchema = removeFromClassNameToSchemaMap(oldInternalName);
        if (objectSchema == null || !objectSchema.getTable().isValid() || !objectSchema.getClassName().equals(newClassName)) {
            objectSchema = new MutableRealmObjectSchema(this.realm, this, table);
        }
        putToClassNameToSchemaMap(newInternalName, objectSchema);
        return objectSchema;
    }

    private String checkAndGetTableNameFromClassName(String className) {
        if (className.length() > Table.CLASS_NAME_MAX_LENGTH) {
            throw new IllegalArgumentException(String.format(Locale.US, "Class name is too long. Limit is %1$d characters: %2$s", Integer.valueOf(Table.CLASS_NAME_MAX_LENGTH), Integer.valueOf(className.length())));
        }
        return Table.getTableNameForClass(className);
    }
}
