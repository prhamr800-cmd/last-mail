###### Class io.realm.ImmutableRealmObjectSchema (io.realm.ImmutableRealmObjectSchema)
.class Lio/realm/ImmutableRealmObjectSchema;
.super Lio/realm/RealmObjectSchema;
.source "ImmutableRealmObjectSchema.java"


# static fields
.field private static final SCHEMA_IMMUTABLE_EXCEPTION_MSG:Ljava/lang/String; = "This \'RealmObjectSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/RealmSchema;Lio/realm/internal/Table;)V
    .registers 5
    .param p1, "realm"    # Lio/realm/BaseRealm;
    .param p2, "schema"    # Lio/realm/RealmSchema;
    .param p3, "table"    # Lio/realm/internal/Table;

    .line 36
    new-instance v0, Lio/realm/RealmObjectSchema$DynamicColumnIndices;

    invoke-direct {v0, p3}, Lio/realm/RealmObjectSchema$DynamicColumnIndices;-><init>(Lio/realm/internal/Table;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lio/realm/RealmObjectSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/RealmSchema;Lio/realm/internal/Table;Lio/realm/internal/ColumnInfo;)V

    .line 37
    return-void
.end method

.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/RealmSchema;Lio/realm/internal/Table;Lio/realm/internal/ColumnInfo;)V
    .registers 5
    .param p1, "realm"    # Lio/realm/BaseRealm;
    .param p2, "schema"    # Lio/realm/RealmSchema;
    .param p3, "table"    # Lio/realm/internal/Table;
    .param p4, "columnInfo"    # Lio/realm/internal/ColumnInfo;

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lio/realm/RealmObjectSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/RealmSchema;Lio/realm/internal/Table;Lio/realm/internal/ColumnInfo;)V

    .line 33
    return-void
.end method


# virtual methods
.method public varargs addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;
    .registers 6
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

    .line 46
    .local p2, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This \'RealmObjectSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addIndex(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This \'RealmObjectSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPrimaryKey(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This \'RealmObjectSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRealmListField(Ljava/lang/String;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "objectSchema"    # Lio/realm/RealmObjectSchema;

    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This \'RealmObjectSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRealmListField(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmObjectSchema;
    .registers 5
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

    .line 61
    .local p2, "primitiveType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This \'RealmObjectSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRealmObjectField(Ljava/lang/String;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "objectSchema"    # Lio/realm/RealmObjectSchema;

    .line 51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This \'RealmObjectSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method varargs getColumnIndices(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;
    .registers 5
    .param p1, "publicJavaNameDescription"    # Ljava/lang/String;
    .param p2, "validColumnTypes"    # [Lio/realm/RealmFieldType;

    .line 119
    invoke-virtual {p0}, Lio/realm/ImmutableRealmObjectSchema;->getSchemaConnector()Lio/realm/SchemaConnector;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/ImmutableRealmObjectSchema;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/fields/FieldDescriptor;->createStandardFieldDescriptor(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Lio/realm/internal/Table;Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This \'RealmObjectSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIndex(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This \'RealmObjectSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePrimaryKey()Lio/realm/RealmObjectSchema;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This \'RealmObjectSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public renameField(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .registers 5
    .param p1, "currentFieldName"    # Ljava/lang/String;
    .param p2, "newFieldName"    # Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This \'RealmObjectSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClassName(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .registers 4
    .param p1, "className"    # Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This \'RealmObjectSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNullable(Ljava/lang/String;Z)Lio/realm/RealmObjectSchema;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "nullable"    # Z

    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This \'RealmObjectSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRequired(Ljava/lang/String;Z)Lio/realm/RealmObjectSchema;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "required"    # Z

    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This \'RealmObjectSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transform(Lio/realm/RealmObjectSchema$Function;)Lio/realm/RealmObjectSchema;
    .registers 4
    .param p1, "function"    # Lio/realm/RealmObjectSchema$Function;

    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This \'RealmObjectSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
