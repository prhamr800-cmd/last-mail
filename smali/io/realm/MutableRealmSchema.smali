###### Class io.realm.MutableRealmSchema (io.realm.MutableRealmSchema)
.class Lio/realm/MutableRealmSchema;
.super Lio/realm/RealmSchema;
.source "MutableRealmSchema.java"


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;)V
    .registers 3
    .param p1, "realm"    # Lio/realm/BaseRealm;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/realm/RealmSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/ColumnIndices;)V

    .line 33
    return-void
.end method

.method private checkAndGetTableNameFromClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "className"    # Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lio/realm/internal/Table;->CLASS_NAME_MAX_LENGTH:I

    if-gt v0, v1, :cond_d

    .line 140
    invoke-static {p1}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 134
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lio/realm/internal/Table;->CLASS_NAME_MAX_LENGTH:I

    .line 137
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 135
    const-string v3, "Class name is too long. Limit is %1$d characters: %2$s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .registers 8
    .param p1, "className"    # Ljava/lang/String;

    .line 48
    const-string v0, "Null or empty class names are not allowed"

    invoke-virtual {p0, p1, v0}, Lio/realm/MutableRealmSchema;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {p1}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "internalTableName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lio/realm/internal/Table;->CLASS_NAME_MAX_LENGTH:I

    if-gt v1, v2, :cond_23

    .line 58
    new-instance v1, Lio/realm/MutableRealmObjectSchema;

    iget-object v2, p0, Lio/realm/MutableRealmSchema;->realm:Lio/realm/BaseRealm;

    iget-object v3, p0, Lio/realm/MutableRealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/realm/internal/OsSharedRealm;->createTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v3

    invoke-direct {v1, v2, p0, v3}, Lio/realm/MutableRealmObjectSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/RealmSchema;Lio/realm/internal/Table;)V

    return-object v1

    .line 52
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lio/realm/internal/Table;->CLASS_NAME_MAX_LENGTH:I

    .line 55
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 53
    const-string v4, "Class name is too long. Limit is %1$d characters: %2$s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs createWithPrimaryKeyField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;
    .registers 12
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "primaryKeyFieldName"    # Ljava/lang/String;
    .param p4, "attributes"    # [Lio/realm/FieldAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Lio/realm/FieldAttribute;",
            ")",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation

    .line 64
    .local p3, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "Null or empty class names are not allowed"

    invoke-virtual {p0, p1, v0}, Lio/realm/MutableRealmSchema;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {p2}, Lio/realm/RealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1}, Lio/realm/MutableRealmSchema;->checkAndGetTableNameFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "internalTableName":Ljava/lang/String;
    invoke-static {}, Lio/realm/RealmObjectSchema;->getSupportedSimpleFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmObjectSchema$FieldMetaData;

    .line 69
    .local v1, "metadata":Lio/realm/RealmObjectSchema$FieldMetaData;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4b

    iget-object v4, v1, Lio/realm/RealmObjectSchema$FieldMetaData;->fieldType:Lio/realm/RealmFieldType;

    sget-object v5, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v4, v5, :cond_26

    iget-object v4, v1, Lio/realm/RealmObjectSchema$FieldMetaData;->fieldType:Lio/realm/RealmFieldType;

    sget-object v5, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-ne v4, v5, :cond_4b

    .line 74
    :cond_26
    iget-object v4, v1, Lio/realm/RealmObjectSchema$FieldMetaData;->fieldType:Lio/realm/RealmFieldType;

    sget-object v5, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-ne v4, v5, :cond_2e

    const/4 v2, 0x1

    nop

    .line 76
    .local v2, "isStringField":Z
    :cond_2e
    iget-boolean v3, v1, Lio/realm/RealmObjectSchema$FieldMetaData;->defaultNullable:Z

    .line 77
    .local v3, "nullable":Z
    sget-object v4, Lio/realm/FieldAttribute;->REQUIRED:Lio/realm/FieldAttribute;

    invoke-static {p4, v4}, Lio/realm/MutableRealmObjectSchema;->containsAttribute([Lio/realm/FieldAttribute;Lio/realm/FieldAttribute;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 78
    const/4 v3, 0x0

    .line 81
    :cond_39
    new-instance v4, Lio/realm/MutableRealmObjectSchema;

    iget-object v5, p0, Lio/realm/MutableRealmSchema;->realm:Lio/realm/BaseRealm;

    iget-object v6, p0, Lio/realm/MutableRealmSchema;->realm:Lio/realm/BaseRealm;

    .line 82
    invoke-virtual {v6}, Lio/realm/BaseRealm;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v6

    invoke-virtual {v6, v0, p2, v2, v3}, Lio/realm/internal/OsSharedRealm;->createTableWithPrimaryKey(Ljava/lang/String;Ljava/lang/String;ZZ)Lio/realm/internal/Table;

    move-result-object v6

    invoke-direct {v4, v5, p0, v6}, Lio/realm/MutableRealmObjectSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/RealmSchema;Lio/realm/internal/Table;)V

    .line 81
    return-object v4

    .line 71
    .end local v2    # "isStringField":Z
    .end local v3    # "nullable":Z
    :cond_4b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v2

    const-string v2, "Realm doesn\'t support primary key field type \'%s\'."

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .registers 6
    .param p1, "className"    # Ljava/lang/String;

    .line 37
    const-string v0, "Null or empty class names are not allowed"

    invoke-virtual {p0, p1, v0}, Lio/realm/MutableRealmSchema;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "internalClassName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/MutableRealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x0

    return-object v1

    .line 41
    :cond_17
    iget-object v1, p0, Lio/realm/MutableRealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    .line 42
    .local v1, "table":Lio/realm/internal/Table;
    new-instance v2, Lio/realm/MutableRealmObjectSchema;

    iget-object v3, p0, Lio/realm/MutableRealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-direct {v2, v3, p0, v1}, Lio/realm/MutableRealmObjectSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/RealmSchema;Lio/realm/internal/Table;)V

    return-object v2
.end method

.method public remove(Ljava/lang/String;)V
    .registers 6
    .param p1, "className"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lio/realm/MutableRealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkNotInSync()V

    .line 89
    const-string v0, "Null or empty class names are not allowed"

    invoke-virtual {p0, p1, v0}, Lio/realm/MutableRealmSchema;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "internalTableName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/MutableRealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v1

    invoke-static {v1, p1}, Lio/realm/internal/OsObjectStore;->deleteTableForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 94
    invoke-virtual {p0, v0}, Lio/realm/MutableRealmSchema;->removeFromClassNameToSchemaMap(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    .line 95
    return-void

    .line 92
    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot remove class because it is not in this Realm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .registers 10
    .param p1, "oldClassName"    # Ljava/lang/String;
    .param p2, "newClassName"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lio/realm/MutableRealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkNotInSync()V

    .line 100
    const-string v0, "Class names cannot be empty or null"

    invoke-virtual {p0, p1, v0}, Lio/realm/MutableRealmSchema;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "Class names cannot be empty or null"

    invoke-virtual {p0, p2, v0}, Lio/realm/MutableRealmSchema;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p1}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "oldInternalName":Ljava/lang/String;
    invoke-static {p2}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "newInternalName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot rename class because it doesn\'t exist in this Realm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lio/realm/MutableRealmSchema;->checkHasTable(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lio/realm/MutableRealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8b

    .line 110
    iget-object v2, p0, Lio/realm/MutableRealmSchema;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {v2, p1}, Lio/realm/internal/OsObjectStore;->getPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "pkField":Ljava/lang/String;
    if-eqz v2, :cond_49

    .line 112
    iget-object v3, p0, Lio/realm/MutableRealmSchema;->realm:Lio/realm/BaseRealm;

    iget-object v3, v3, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Lio/realm/internal/OsObjectStore;->setPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_49
    iget-object v3, p0, Lio/realm/MutableRealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/OsSharedRealm;->renameTable(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lio/realm/MutableRealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v3

    invoke-virtual {v3, v1}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v3

    .line 119
    .local v3, "table":Lio/realm/internal/Table;
    if-eqz v2, :cond_65

    .line 120
    iget-object v4, p0, Lio/realm/MutableRealmSchema;->realm:Lio/realm/BaseRealm;

    iget-object v4, v4, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {v4, p2, v2}, Lio/realm/internal/OsObjectStore;->setPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_65
    invoke-virtual {p0, v0}, Lio/realm/MutableRealmSchema;->removeFromClassNameToSchemaMap(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v4

    .line 124
    .local v4, "objectSchema":Lio/realm/RealmObjectSchema;
    if-eqz v4, :cond_7f

    invoke-virtual {v4}, Lio/realm/RealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->isValid()Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-virtual {v4}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    .line 125
    :cond_7f
    new-instance v5, Lio/realm/MutableRealmObjectSchema;

    iget-object v6, p0, Lio/realm/MutableRealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-direct {v5, v6, p0, v3}, Lio/realm/MutableRealmObjectSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/RealmSchema;Lio/realm/internal/Table;)V

    move-object v4, v5

    .line 127
    :cond_87
    invoke-virtual {p0, v1, v4}, Lio/realm/MutableRealmSchema;->putToClassNameToSchemaMap(Ljava/lang/String;Lio/realm/RealmObjectSchema;)V

    .line 129
    return-object v4

    .line 106
    .end local v2    # "pkField":Ljava/lang/String;
    .end local v3    # "table":Lio/realm/internal/Table;
    .end local v4    # "objectSchema":Lio/realm/RealmObjectSchema;
    :cond_8b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cannot be renamed because the new class already exists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
