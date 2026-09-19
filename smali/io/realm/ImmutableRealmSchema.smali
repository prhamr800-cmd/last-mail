###### Class io.realm.ImmutableRealmSchema (io.realm.ImmutableRealmSchema)
.class Lio/realm/ImmutableRealmSchema;
.super Lio/realm/RealmSchema;
.source "ImmutableRealmSchema.java"


# static fields
.field private static final SCHEMA_IMMUTABLE_EXCEPTION_MSG:Ljava/lang/String; = "This \'RealmSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/ColumnIndices;)V
    .registers 3
    .param p1, "realm"    # Lio/realm/BaseRealm;
    .param p2, "columnIndices"    # Lio/realm/internal/ColumnIndices;

    .line 33
    invoke-direct {p0, p1, p2}, Lio/realm/RealmSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/ColumnIndices;)V

    .line 34
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .registers 4
    .param p1, "className"    # Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This \'RealmSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs createWithPrimaryKeyField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;
    .registers 7
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

    .line 53
    .local p3, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This \'RealmSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .registers 7
    .param p1, "className"    # Ljava/lang/String;

    .line 38
    const-string v0, "Null or empty class names are not allowed"

    invoke-virtual {p0, p1, v0}, Lio/realm/ImmutableRealmSchema;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "internalClassName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/ImmutableRealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x0

    return-object v1

    .line 42
    :cond_17
    iget-object v1, p0, Lio/realm/ImmutableRealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    .line 43
    .local v1, "table":Lio/realm/internal/Table;
    new-instance v2, Lio/realm/ImmutableRealmObjectSchema;

    iget-object v3, p0, Lio/realm/ImmutableRealmSchema;->realm:Lio/realm/BaseRealm;

    invoke-virtual {p0, p1}, Lio/realm/ImmutableRealmSchema;->getColumnInfo(Ljava/lang/String;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    invoke-direct {v2, v3, p0, v1, v4}, Lio/realm/ImmutableRealmObjectSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/RealmSchema;Lio/realm/internal/Table;Lio/realm/internal/ColumnInfo;)V

    return-object v2
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4
    .param p1, "className"    # Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This \'RealmSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;
    .registers 5
    .param p1, "oldClassName"    # Ljava/lang/String;
    .param p2, "newClassName"    # Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This \'RealmSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
