package io.realm;

import io.realm.RealmObjectSchema;
import io.realm.internal.OsObjectStore;
import io.realm.internal.Table;
import io.realm.internal.fields.FieldDescriptor;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
class MutableRealmObjectSchema extends RealmObjectSchema {
    MutableRealmObjectSchema(BaseRealm realm, RealmSchema schema, Table table) {
        super(realm, schema, table, new RealmObjectSchema.DynamicColumnIndices(table));
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema setClassName(String className) throws Exception {
        this.realm.checkNotInSync();
        checkEmpty(className);
        String internalTableName = Table.getTableNameForClass(className);
        if (className.length() > Table.CLASS_NAME_MAX_LENGTH) {
            throw new IllegalArgumentException(String.format(Locale.US, "Class name is too long. Limit is %1$d characters: '%2$s' (%3$d)", Integer.valueOf(Table.CLASS_NAME_MAX_LENGTH), className, Integer.valueOf(className.length())));
        }
        if (this.realm.sharedRealm.hasTable(internalTableName)) {
            throw new IllegalArgumentException("Class already exists: " + className);
        }
        String oldTableName = this.table.getName();
        String oldClassName = this.table.getClassName();
        String pkField = OsObjectStore.getPrimaryKeyForObject(this.realm.sharedRealm, oldClassName);
        if (pkField != null) {
            OsObjectStore.setPrimaryKeyForObject(this.realm.sharedRealm, oldClassName, null);
        }
        this.realm.sharedRealm.renameTable(oldTableName, internalTableName);
        if (pkField != null) {
            try {
                OsObjectStore.setPrimaryKeyForObject(this.realm.sharedRealm, className, pkField);
            } catch (Exception e) {
                this.realm.sharedRealm.renameTable(this.table.getName(), oldTableName);
                throw e;
            }
        }
        return this;
    }

    private void checkEmpty(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Null or empty class names are not allowed");
        }
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema addField(String fieldName, Class<?> fieldType, FieldAttribute... attributes) throws Exception {
        RealmObjectSchema.FieldMetaData metadata = SUPPORTED_SIMPLE_FIELDS.get(fieldType);
        if (metadata == null) {
            if (SUPPORTED_LINKED_FIELDS.containsKey(fieldType)) {
                throw new IllegalArgumentException("Use addRealmObjectField() instead to add fields that link to other RealmObjects: " + fieldName);
            }
            if (RealmModel.class.isAssignableFrom(fieldType)) {
                throw new IllegalArgumentException(String.format(Locale.US, "Use 'addRealmObjectField()' instead to add fields that link to other RealmObjects: %s(%s)", fieldName, fieldType));
            }
            throw new IllegalArgumentException(String.format(Locale.US, "Realm doesn't support this field type: %s(%s)", fieldName, fieldType));
        }
        if (containsAttribute(attributes, FieldAttribute.PRIMARY_KEY)) {
            checkAddPrimaryKeyForSync();
        }
        checkNewFieldName(fieldName);
        boolean nullable = metadata.defaultNullable;
        if (containsAttribute(attributes, FieldAttribute.REQUIRED)) {
            nullable = false;
        }
        long columnIndex = this.table.addColumn(metadata.fieldType, fieldName, nullable);
        try {
            addModifiers(fieldName, attributes);
            return this;
        } catch (Exception e) {
            this.table.removeColumn(columnIndex);
            throw e;
        }
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema addRealmObjectField(String fieldName, RealmObjectSchema objectSchema) {
        checkLegalName(fieldName);
        checkFieldNameIsAvailable(fieldName);
        this.table.addColumnLink(RealmFieldType.OBJECT, fieldName, this.realm.sharedRealm.getTable(Table.getTableNameForClass(objectSchema.getClassName())));
        return this;
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema addRealmListField(String fieldName, RealmObjectSchema objectSchema) {
        checkLegalName(fieldName);
        checkFieldNameIsAvailable(fieldName);
        this.table.addColumnLink(RealmFieldType.LIST, fieldName, this.realm.sharedRealm.getTable(Table.getTableNameForClass(objectSchema.getClassName())));
        return this;
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema addRealmListField(String fieldName, Class<?> primitiveType) {
        checkLegalName(fieldName);
        checkFieldNameIsAvailable(fieldName);
        RealmObjectSchema.FieldMetaData metadata = SUPPORTED_SIMPLE_FIELDS.get(primitiveType);
        if (metadata == null) {
            if (primitiveType.equals(RealmObjectSchema.class) || RealmModel.class.isAssignableFrom(primitiveType)) {
                throw new IllegalArgumentException("Use 'addRealmListField(String name, RealmObjectSchema schema)' instead to add lists that link to other RealmObjects: " + fieldName);
            }
            throw new IllegalArgumentException(String.format(Locale.US, "RealmList does not support lists with this type: %s(%s)", fieldName, primitiveType));
        }
        this.table.addColumn(metadata.listType, fieldName, metadata.defaultNullable);
        return this;
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema removeField(String fieldName) {
        this.realm.checkNotInSync();
        checkLegalName(fieldName);
        if (!hasField(fieldName)) {
            throw new IllegalStateException(fieldName + " does not exist.");
        }
        long columnIndex = getColumnIndex(fieldName);
        String className = getClassName();
        if (fieldName.equals(OsObjectStore.getPrimaryKeyForObject(this.realm.sharedRealm, className))) {
            OsObjectStore.setPrimaryKeyForObject(this.realm.sharedRealm, className, fieldName);
        }
        this.table.removeColumn(columnIndex);
        return this;
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema renameField(String currentFieldName, String newFieldName) {
        this.realm.checkNotInSync();
        checkLegalName(currentFieldName);
        checkFieldExists(currentFieldName);
        checkLegalName(newFieldName);
        checkFieldNameIsAvailable(newFieldName);
        long columnIndex = getColumnIndex(currentFieldName);
        this.table.renameColumn(columnIndex, newFieldName);
        return this;
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema addIndex(String fieldName) {
        checkLegalName(fieldName);
        checkFieldExists(fieldName);
        long columnIndex = getColumnIndex(fieldName);
        if (this.table.hasSearchIndex(columnIndex)) {
            throw new IllegalStateException(fieldName + " already has an index.");
        }
        this.table.addSearchIndex(columnIndex);
        return this;
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema removeIndex(String fieldName) {
        this.realm.checkNotInSync();
        checkLegalName(fieldName);
        checkFieldExists(fieldName);
        long columnIndex = getColumnIndex(fieldName);
        if (!this.table.hasSearchIndex(columnIndex)) {
            throw new IllegalStateException("Field is not indexed: " + fieldName);
        }
        this.table.removeSearchIndex(columnIndex);
        return this;
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema addPrimaryKey(String fieldName) {
        checkAddPrimaryKeyForSync();
        checkLegalName(fieldName);
        checkFieldExists(fieldName);
        String currentPKField = OsObjectStore.getPrimaryKeyForObject(this.realm.sharedRealm, getClassName());
        if (currentPKField != null) {
            throw new IllegalStateException(String.format(Locale.ENGLISH, "Field '%s' has been already defined as primary key.", currentPKField));
        }
        long columnIndex = getColumnIndex(fieldName);
        if (!this.table.hasSearchIndex(columnIndex)) {
            this.table.addSearchIndex(columnIndex);
        }
        OsObjectStore.setPrimaryKeyForObject(this.realm.sharedRealm, getClassName(), fieldName);
        return this;
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema removePrimaryKey() {
        this.realm.checkNotInSync();
        String pkField = OsObjectStore.getPrimaryKeyForObject(this.realm.sharedRealm, getClassName());
        if (pkField == null) {
            throw new IllegalStateException(getClassName() + " doesn't have a primary key.");
        }
        long columnIndex = this.table.getColumnIndex(pkField);
        if (this.table.hasSearchIndex(columnIndex)) {
            this.table.removeSearchIndex(columnIndex);
        }
        OsObjectStore.setPrimaryKeyForObject(this.realm.sharedRealm, getClassName(), null);
        return this;
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema setRequired(String fieldName, boolean required) {
        long columnIndex = this.table.getColumnIndex(fieldName);
        boolean currentColumnRequired = isRequired(fieldName);
        RealmFieldType type = this.table.getColumnType(columnIndex);
        if (type == RealmFieldType.OBJECT) {
            throw new IllegalArgumentException("Cannot modify the required state for RealmObject references: " + fieldName);
        }
        if (type == RealmFieldType.LIST) {
            throw new IllegalArgumentException("Cannot modify the required state for RealmList references: " + fieldName);
        }
        if (required && currentColumnRequired) {
            throw new IllegalStateException("Field is already required: " + fieldName);
        }
        if (!required && !currentColumnRequired) {
            throw new IllegalStateException("Field is already nullable: " + fieldName);
        }
        if (required) {
            this.table.convertColumnToNotNullable(columnIndex);
        } else {
            this.table.convertColumnToNullable(columnIndex);
        }
        return this;
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema setNullable(String fieldName, boolean nullable) {
        setRequired(fieldName, !nullable);
        return this;
    }

    @Override // io.realm.RealmObjectSchema
    public RealmObjectSchema transform(RealmObjectSchema.Function function) {
        if (function != null) {
            long size = this.table.size();
            for (long i = 0; i < size; i++) {
                function.apply(new DynamicRealmObject(this.realm, this.table.getCheckedRow(i)));
            }
        }
        return this;
    }

    @Override // io.realm.RealmObjectSchema
    FieldDescriptor getColumnIndices(String internalColumnNameDescription, RealmFieldType... validColumnTypes) {
        return FieldDescriptor.createStandardFieldDescriptor(getSchemaConnector(), getTable(), internalColumnNameDescription, validColumnTypes);
    }

    private void addModifiers(String fieldName, FieldAttribute[] attributes) {
        boolean indexAdded = false;
        if (attributes != null) {
            try {
                if (attributes.length > 0) {
                    if (containsAttribute(attributes, FieldAttribute.INDEXED)) {
                        addIndex(fieldName);
                        indexAdded = true;
                    }
                    if (containsAttribute(attributes, FieldAttribute.PRIMARY_KEY)) {
                        addPrimaryKey(fieldName);
                    }
                }
            } catch (Exception e) {
                long columnIndex = getColumnIndex(fieldName);
                if (indexAdded) {
                    this.table.removeSearchIndex(columnIndex);
                }
                throw ((RuntimeException) e);
            }
        }
    }

    static boolean containsAttribute(FieldAttribute[] attributeList, FieldAttribute attribute) {
        if (attributeList == null || attributeList.length == 0) {
            return false;
        }
        for (FieldAttribute anAttributeList : attributeList) {
            if (anAttributeList == attribute) {
                return true;
            }
        }
        return false;
    }

    private void checkNewFieldName(String fieldName) {
        checkLegalName(fieldName);
        checkFieldNameIsAvailable(fieldName);
    }

    private void checkFieldNameIsAvailable(String fieldName) {
        if (this.table.getColumnIndex(fieldName) != -1) {
            throw new IllegalArgumentException("Field already exists in '" + getClassName() + "': " + fieldName);
        }
    }

    private void checkAddPrimaryKeyForSync() {
        if (this.realm.configuration.isSyncConfiguration()) {
            throw new UnsupportedOperationException("'addPrimaryKey' is not supported by synced Realms.");
        }
    }
}
