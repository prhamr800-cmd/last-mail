###### Class io.realm.MutableRealmObjectSchema (io.realm.MutableRealmObjectSchema)
.class Lio/realm/MutableRealmObjectSchema;
.super Lio/realm/RealmObjectSchema;
.source "MutableRealmObjectSchema.java"


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/RealmSchema;Lio/realm/internal/Table;)V
    .registers 5
    .param p1, "realm"    # Lio/realm/BaseRealm;
    .param p2, "schema"    # Lio/realm/RealmSchema;
    .param p3, "table"    # Lio/realm/internal/Table;

    .line 39
    new-instance v0, Lio/realm/RealmObjectSchema$DynamicColumnIndices;

    invoke-direct {v0, p3}, Lio/realm/RealmObjectSchema$DynamicColumnIndices;-><init>(Lio/realm/internal/Table;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lio/realm/RealmObjectSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/RealmSchema;Lio/realm/internal/Table;Lio/realm/internal/ColumnInfo;)V

    .line 40
    return-void
.end method

.method private addModifiers(Ljava/lang/String;[Lio/realm/FieldAttribute;)V
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "attributes"    # [Lio/realm/FieldAttribute;

    .line 310
    const/4 v0, 0x0

    .line 313
    .local v0, "indexAdded":Z
    if-eqz p2, :cond_2f

    :try_start_3
    array-length v1, p2

    if-lez v1, :cond_2f

    .line 314
    sget-object v1, Lio/realm/FieldAttribute;->INDEXED:Lio/realm/FieldAttribute;

    invoke-static {p2, v1}, Lio/realm/MutableRealmObjectSchema;->containsAttribute([Lio/realm/FieldAttribute;Lio/realm/FieldAttribute;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 315
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->addIndex(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    .line 316
    const/4 v0, 0x1

    .line 319
    :cond_12
    sget-object v1, Lio/realm/FieldAttribute;->PRIMARY_KEY:Lio/realm/FieldAttribute;

    invoke-static {p2, v1}, Lio/realm/MutableRealmObjectSchema;->containsAttribute([Lio/realm/FieldAttribute;Lio/realm/FieldAttribute;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 321
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->addPrimaryKey(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_1f

    .line 322
    const/4 v0, 0x1

    goto :goto_2f

    .line 327
    :catch_1f
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v2

    .line 330
    .local v2, "columnIndex":J
    if-eqz v0, :cond_2b

    .line 331
    iget-object v4, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v4, v2, v3}, Lio/realm/internal/Table;->removeSearchIndex(J)V

    .line 333
    :cond_2b
    move-object v4, v1

    check-cast v4, Ljava/lang/RuntimeException;

    throw v4

    .line 334
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "columnIndex":J
    :cond_2f
    :goto_2f
    nop

    .line 335
    return-void
.end method

.method private checkAddPrimaryKeyForSync()V
    .registers 3

    .line 362
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->isSyncConfiguration()Z

    move-result v0

    if-nez v0, :cond_b

    .line 365
    return-void

    .line 363
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\'addPrimaryKey\' is not supported by synced Realms."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkEmpty(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 80
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 83
    return-void

    .line 81
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null or empty class names are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkFieldNameIsAvailable(Ljava/lang/String;)V
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0, p1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_d

    .line 359
    return-void

    .line 357
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field already exists in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/MutableRealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkNewFieldName(Ljava/lang/String;)V
    .registers 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 351
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 352
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldNameIsAvailable(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method static containsAttribute([Lio/realm/FieldAttribute;Lio/realm/FieldAttribute;)Z
    .registers 6
    .param p0, "attributeList"    # [Lio/realm/FieldAttribute;
    .param p1, "attribute"    # Lio/realm/FieldAttribute;

    .line 339
    const/4 v0, 0x0

    if-eqz p0, :cond_15

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_15

    .line 342
    :cond_7
    array-length v1, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_14

    aget-object v3, p0, v2

    .line 343
    .local v3, "anAttributeList":Lio/realm/FieldAttribute;
    if-ne v3, p1, :cond_11

    .line 344
    const/4 v0, 0x1

    return v0

    .line 342
    .end local v3    # "anAttributeList":Lio/realm/FieldAttribute;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 347
    :cond_14
    return v0

    .line 340
    :cond_15
    :goto_15
    return v0
.end method


# virtual methods
.method public varargs addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;
    .registers 10
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p3, "attributes"    # [Lio/realm/FieldAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Lio/realm/FieldAttribute;",
            ")",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation

    .line 87
    .local p2, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lio/realm/MutableRealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmObjectSchema$FieldMetaData;

    .line 88
    .local v0, "metadata":Lio/realm/RealmObjectSchema$FieldMetaData;
    if-nez v0, :cond_5c

    .line 89
    sget-object v1, Lio/realm/MutableRealmObjectSchema;->SUPPORTED_LINKED_FIELDS:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 91
    const-class v1, Lio/realm/RealmModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_31

    .line 92
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    const-string v2, "Use \'addRealmObjectField()\' instead to add fields that link to other RealmObjects: %s(%s)"

    invoke-static {v5, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    const-string v2, "Realm doesn\'t support this field type: %s(%s)"

    invoke-static {v5, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use addRealmObjectField() instead to add fields that link to other RealmObjects: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_5c
    sget-object v1, Lio/realm/FieldAttribute;->PRIMARY_KEY:Lio/realm/FieldAttribute;

    invoke-static {p3, v1}, Lio/realm/MutableRealmObjectSchema;->containsAttribute([Lio/realm/FieldAttribute;Lio/realm/FieldAttribute;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 103
    invoke-direct {p0}, Lio/realm/MutableRealmObjectSchema;->checkAddPrimaryKeyForSync()V

    .line 106
    :cond_67
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkNewFieldName(Ljava/lang/String;)V

    .line 107
    iget-boolean v1, v0, Lio/realm/RealmObjectSchema$FieldMetaData;->defaultNullable:Z

    .line 108
    .local v1, "nullable":Z
    sget-object v2, Lio/realm/FieldAttribute;->REQUIRED:Lio/realm/FieldAttribute;

    invoke-static {p3, v2}, Lio/realm/MutableRealmObjectSchema;->containsAttribute([Lio/realm/FieldAttribute;Lio/realm/FieldAttribute;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 109
    const/4 v1, 0x0

    .line 112
    :cond_75
    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    iget-object v3, v0, Lio/realm/RealmObjectSchema$FieldMetaData;->fieldType:Lio/realm/RealmFieldType;

    invoke-virtual {v2, v3, p1, v1}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    move-result-wide v2

    .line 114
    .local v2, "columnIndex":J
    :try_start_7d
    invoke-direct {p0, p1, p3}, Lio/realm/MutableRealmObjectSchema;->addModifiers(Ljava/lang/String;[Lio/realm/FieldAttribute;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_82

    .line 119
    nop

    .line 120
    return-object p0

    .line 115
    :catch_82
    move-exception v4

    .line 117
    .local v4, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v5, v2, v3}, Lio/realm/internal/Table;->removeColumn(J)V

    .line 118
    throw v4
.end method

.method public addIndex(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 191
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldExists(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 194
    .local v0, "columnIndex":J
    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result v2

    if-nez v2, :cond_18

    .line 197
    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->addSearchIndex(J)V

    .line 198
    return-object p0

    .line 195
    :cond_18
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " already has an index."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addPrimaryKey(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 216
    invoke-direct {p0}, Lio/realm/MutableRealmObjectSchema;->checkAddPrimaryKeyForSync()V

    .line 217
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldExists(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p0}, Lio/realm/MutableRealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/realm/internal/OsObjectStore;->getPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "currentPKField":Ljava/lang/String;
    if-nez v0, :cond_34

    .line 225
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v1

    .line 226
    .local v1, "columnIndex":J
    iget-object v3, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v1, v2}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result v3

    if-nez v3, :cond_28

    .line 228
    iget-object v3, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v1, v2}, Lio/realm/internal/Table;->addSearchIndex(J)V

    .line 230
    :cond_28
    iget-object v3, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v3, v3, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p0}, Lio/realm/MutableRealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lio/realm/internal/OsObjectStore;->setPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-object p0

    .line 221
    .end local v1    # "columnIndex":J
    :cond_34
    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 222
    const-string v4, "Field \'%s\' has been already defined as primary key."

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addRealmListField(Ljava/lang/String;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "objectSchema"    # Lio/realm/RealmObjectSchema;

    .line 133
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldNameIsAvailable(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p2}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lio/realm/internal/Table;->addColumnLink(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J

    .line 136
    return-object p0
.end method

.method public addRealmListField(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmObjectSchema;
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation

    .line 141
    .local p2, "primitiveType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldNameIsAvailable(Ljava/lang/String;)V

    .line 144
    sget-object v0, Lio/realm/MutableRealmObjectSchema;->SUPPORTED_SIMPLE_FIELDS:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmObjectSchema$FieldMetaData;

    .line 145
    .local v0, "metadata":Lio/realm/RealmObjectSchema$FieldMetaData;
    if-nez v0, :cond_4f

    .line 146
    const-class v1, Lio/realm/RealmObjectSchema;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    const-class v1, Lio/realm/RealmModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_38

    .line 149
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "RealmList does not support lists with this type: %s(%s)"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_38
    :goto_38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use \'addRealmListField(String name, RealmObjectSchema schema)\' instead to add lists that link to other RealmObjects: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_4f
    iget-object v1, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    iget-object v2, v0, Lio/realm/RealmObjectSchema$FieldMetaData;->listType:Lio/realm/RealmFieldType;

    iget-boolean v3, v0, Lio/realm/RealmObjectSchema$FieldMetaData;->defaultNullable:Z

    invoke-virtual {v1, v2, p1, v3}, Lio/realm/internal/Table;->addColumn(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 155
    return-object p0
.end method

.method public addRealmObjectField(Ljava/lang/String;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "objectSchema"    # Lio/realm/RealmObjectSchema;

    .line 125
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldNameIsAvailable(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p2}, Lio/realm/RealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lio/realm/internal/Table;->addColumnLink(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J

    .line 128
    return-object p0
.end method

.method varargs getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;
    .registers 5
    .param p1, "internalColumnNameDescription"    # Ljava/lang/String;
    .param p2, "validColumnTypes"    # [Lio/realm/RealmFieldType;

    .line 305
    invoke-virtual {p0}, Lio/realm/MutableRealmObjectSchema;->getSchemaConnector()Lio/realm/SchemaConnector;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/MutableRealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/fields/FieldDescriptor;->createStandardFieldDescriptor(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Lio/realm/internal/Table;Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkNotInSync()V

    .line 161
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->hasField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 165
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 166
    .local v0, "columnIndex":J
    invoke-virtual {p0}, Lio/realm/MutableRealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "className":Ljava/lang/String;
    iget-object v3, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v3, v3, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {v3, v2}, Lio/realm/internal/OsObjectStore;->getPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 168
    iget-object v3, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v3, v3, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {v3, v2, p1}, Lio/realm/internal/OsObjectStore;->setPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_2b
    iget-object v3, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/Table;->removeColumn(J)V

    .line 171
    return-object p0

    .line 163
    .end local v0    # "columnIndex":J
    .end local v2    # "className":Ljava/lang/String;
    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIndex(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkNotInSync()V

    .line 204
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldExists(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 207
    .local v0, "columnIndex":J
    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 210
    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->removeSearchIndex(J)V

    .line 211
    return-object p0

    .line 208
    :cond_1d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field is not indexed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removePrimaryKey()Lio/realm/RealmObjectSchema;
    .registers 7

    .line 236
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkNotInSync()V

    .line 237
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p0}, Lio/realm/MutableRealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/realm/internal/OsObjectStore;->getPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "pkField":Ljava/lang/String;
    if-eqz v0, :cond_33

    .line 241
    iget-object v1, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v1, v0}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v1

    .line 242
    .local v1, "columnIndex":J
    iget-object v3, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v1, v2}, Lio/realm/internal/Table;->hasSearchIndex(J)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 243
    iget-object v3, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v1, v2}, Lio/realm/internal/Table;->removeSearchIndex(J)V

    .line 245
    :cond_26
    iget-object v3, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v3, v3, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p0}, Lio/realm/MutableRealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lio/realm/internal/OsObjectStore;->setPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-object p0

    .line 239
    .end local v1    # "columnIndex":J
    :cond_33
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/realm/MutableRealmObjectSchema;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t have a primary key."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public renameField(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .registers 6
    .param p1, "currentFieldName"    # Ljava/lang/String;
    .param p2, "newFieldName"    # Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkNotInSync()V

    .line 177
    invoke-static {p1}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkFieldExists(Ljava/lang/String;)V

    .line 179
    invoke-static {p2}, Lio/realm/MutableRealmObjectSchema;->checkLegalName(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, p2}, Lio/realm/MutableRealmObjectSchema;->checkFieldNameIsAvailable(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 182
    .local v0, "columnIndex":J
    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1, p2}, Lio/realm/internal/Table;->renameColumn(JLjava/lang/String;)V

    .line 186
    return-object p0
.end method

.method public setClassName(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .registers 9
    .param p1, "className"    # Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkNotInSync()V

    .line 45
    invoke-direct {p0, p1}, Lio/realm/MutableRealmObjectSchema;->checkEmpty(Ljava/lang/String;)V

    .line 46
    invoke-static {p1}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "internalTableName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lio/realm/internal/Table;->CLASS_NAME_MAX_LENGTH:I

    if-gt v1, v2, :cond_74

    .line 53
    iget-object v1, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v1, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1, v0}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 58
    iget-object v1, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "oldTableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v2}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "oldClassName":Ljava/lang/String;
    iget-object v3, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v3, v3, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {v3, v2}, Lio/realm/internal/OsObjectStore;->getPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "pkField":Ljava/lang/String;
    if-eqz v3, :cond_3c

    .line 62
    iget-object v4, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v4, v4, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Lio/realm/internal/OsObjectStore;->setPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_3c
    iget-object v4, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v4, v4, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v4, v1, v0}, Lio/realm/internal/OsSharedRealm;->renameTable(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    if-eqz v3, :cond_5c

    .line 67
    :try_start_45
    iget-object v4, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v4, v4, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {v4, p1, v3}, Lio/realm/internal/OsObjectStore;->setPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_4d

    .line 73
    goto :goto_5c

    .line 68
    :catch_4d
    move-exception v4

    .line 71
    .local v4, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v5, v5, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v6, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lio/realm/internal/OsSharedRealm;->renameTable(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    throw v4

    .line 75
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5c
    :goto_5c
    return-object p0

    .line 54
    .end local v1    # "oldTableName":Ljava/lang/String;
    .end local v2    # "oldClassName":Ljava/lang/String;
    .end local v3    # "pkField":Ljava/lang/String;
    :cond_5d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lio/realm/internal/Table;->CLASS_NAME_MAX_LENGTH:I

    .line 50
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 48
    const-string v4, "Class name is too long. Limit is %1$d characters: \'%2$s\' (%3$d)"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setNullable(Ljava/lang/String;Z)Lio/realm/RealmObjectSchema;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "nullable"    # Z

    .line 278
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0}, Lio/realm/MutableRealmObjectSchema;->setRequired(Ljava/lang/String;Z)Lio/realm/RealmObjectSchema;

    .line 279
    return-object p0
.end method

.method public setRequired(Ljava/lang/String;Z)Lio/realm/RealmObjectSchema;
    .registers 10
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "required"    # Z

    .line 251
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0, p1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 252
    .local v0, "columnIndex":J
    invoke-virtual {p0, p1}, Lio/realm/MutableRealmObjectSchema;->isRequired(Ljava/lang/String;)Z

    move-result v2

    .line 253
    .local v2, "currentColumnRequired":Z
    iget-object v3, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/Table;->getColumnType(J)Lio/realm/RealmFieldType;

    move-result-object v3

    .line 255
    .local v3, "type":Lio/realm/RealmFieldType;
    sget-object v4, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-eq v3, v4, :cond_75

    .line 258
    sget-object v4, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-eq v3, v4, :cond_5e

    .line 261
    if-eqz p2, :cond_34

    if-nez v2, :cond_1d

    goto :goto_34

    .line 262
    :cond_1d
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field is already required: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 264
    :cond_34
    :goto_34
    if-nez p2, :cond_50

    if-eqz v2, :cond_39

    goto :goto_50

    .line 265
    :cond_39
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field is already nullable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 268
    :cond_50
    :goto_50
    if-eqz p2, :cond_58

    .line 269
    iget-object v4, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v4, v0, v1}, Lio/realm/internal/Table;->convertColumnToNotNullable(J)V

    goto :goto_5d

    .line 271
    :cond_58
    iget-object v4, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v4, v0, v1}, Lio/realm/internal/Table;->convertColumnToNullable(J)V

    .line 273
    :goto_5d
    return-object p0

    .line 259
    :cond_5e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot modify the required state for RealmList references: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 256
    :cond_75
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot modify the required state for RealmObject references: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public transform(Lio/realm/RealmObjectSchema$Function;)Lio/realm/RealmObjectSchema;
    .registers 9
    .param p1, "function"    # Lio/realm/RealmObjectSchema$Function;

    .line 285
    if-eqz p1, :cond_22

    .line 286
    iget-object v0, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v0}, Lio/realm/internal/Table;->size()J

    move-result-wide v0

    .line 287
    .local v0, "size":J
    const-wide/16 v2, 0x0

    .local v2, "i":J
    :goto_a
    cmp-long v4, v2, v0

    if-gez v4, :cond_22

    .line 288
    new-instance v4, Lio/realm/DynamicRealmObject;

    iget-object v5, p0, Lio/realm/MutableRealmObjectSchema;->realm:Lio/realm/BaseRealm;

    iget-object v6, p0, Lio/realm/MutableRealmObjectSchema;->table:Lio/realm/internal/Table;

    invoke-virtual {v6, v2, v3}, Lio/realm/internal/Table;->getCheckedRow(J)Lio/realm/internal/CheckedRow;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Row;)V

    invoke-interface {p1, v4}, Lio/realm/RealmObjectSchema$Function;->apply(Lio/realm/DynamicRealmObject;)V

    .line 287
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_a

    .line 292
    .end local v0    # "size":J
    .end local v2    # "i":J
    :cond_22
    return-object p0
.end method
