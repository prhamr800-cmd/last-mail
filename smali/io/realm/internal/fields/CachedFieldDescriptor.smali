###### Class io.realm.internal.fields.CachedFieldDescriptor (io.realm.internal.fields.CachedFieldDescriptor)
.class Lio/realm/internal/fields/CachedFieldDescriptor;
.super Lio/realm/internal/fields/FieldDescriptor;
.source "CachedFieldDescriptor.java"


# instance fields
.field private final className:Ljava/lang/String;

.field private final schema:Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;


# direct methods
.method constructor <init>(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .registers 6
    .param p1, "schema"    # Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "fieldDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p4, "validInternalColumnTypes":Ljava/util/Set;, "Ljava/util/Set<Lio/realm/RealmFieldType;>;"
    .local p5, "validFinalColumnTypes":Ljava/util/Set;, "Ljava/util/Set<Lio/realm/RealmFieldType;>;"
    invoke-direct {p0, p3, p4, p5}, Lio/realm/internal/fields/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 51
    iput-object p2, p0, Lio/realm/internal/fields/CachedFieldDescriptor;->className:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lio/realm/internal/fields/CachedFieldDescriptor;->schema:Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;

    .line 53
    return-void
.end method


# virtual methods
.method protected compileFieldDescription(Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 58
    .local v0, "nFields":I
    new-array v7, v0, [J

    .line 59
    .local v7, "columnIndices":[J
    new-array v8, v0, [J

    .line 61
    .local v8, "tableNativePointers":[J
    iget-object v1, p0, Lio/realm/internal/fields/CachedFieldDescriptor;->className:Ljava/lang/String;

    .line 62
    .local v1, "currentClassName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 63
    .local v2, "currentColumnName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 64
    .local v3, "currentColumnType":Lio/realm/RealmFieldType;
    const/4 v4, 0x0

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    const/4 v1, 0x0

    .end local v2    # "currentColumnName":Ljava/lang/String;
    .end local v3    # "currentColumnType":Lio/realm/RealmFieldType;
    .local v1, "i":I
    .local v9, "currentColumnName":Ljava/lang/String;
    .local v10, "currentClassName":Ljava/lang/String;
    .local v11, "currentColumnType":Lio/realm/RealmFieldType;
    :goto_11
    if-ge v1, v0, :cond_83

    .line 65
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 66
    if-eqz v9, :cond_7b

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7b

    .line 71
    iget-object v2, p0, Lio/realm/internal/fields/CachedFieldDescriptor;->schema:Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;

    invoke-interface {v2, v10}, Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;->getColumnInfo(Ljava/lang/String;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    .line 72
    .local v2, "columnInfo":Lio/realm/internal/ColumnInfo;
    const/4 v3, 0x1

    if-eqz v2, :cond_69

    .line 77
    invoke-virtual {v2, v9}, Lio/realm/internal/ColumnInfo;->getColumnDetails(Ljava/lang/String;)Lio/realm/internal/ColumnInfo$ColumnDetails;

    move-result-object v5

    .line 78
    .local v5, "details":Lio/realm/internal/ColumnInfo$ColumnDetails;
    if-eqz v5, :cond_54

    .line 83
    iget-object v11, v5, Lio/realm/internal/ColumnInfo$ColumnDetails;->columnType:Lio/realm/RealmFieldType;

    .line 85
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_3c

    .line 86
    invoke-virtual {p0, v10, v9, v11}, Lio/realm/internal/fields/CachedFieldDescriptor;->verifyInternalColumnType(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;)V

    .line 87
    iget-object v10, v5, Lio/realm/internal/ColumnInfo$ColumnDetails;->linkedClassName:Ljava/lang/String;

    .line 89
    :cond_3c
    iget-wide v12, v5, Lio/realm/internal/ColumnInfo$ColumnDetails;->columnIndex:J

    aput-wide v12, v7, v1

    .line 90
    sget-object v3, Lio/realm/RealmFieldType;->LINKING_OBJECTS:Lio/realm/RealmFieldType;

    if-eq v11, v3, :cond_47

    .line 91
    const-wide/16 v12, 0x0

    goto :goto_4f

    .line 92
    :cond_47
    iget-object v3, p0, Lio/realm/internal/fields/CachedFieldDescriptor;->schema:Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;

    iget-object v6, v5, Lio/realm/internal/ColumnInfo$ColumnDetails;->linkedClassName:Ljava/lang/String;

    invoke-interface {v3, v6}, Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;->getNativeTablePtr(Ljava/lang/String;)J

    move-result-wide v12

    :goto_4f
    aput-wide v12, v8, v1

    .line 64
    .end local v2    # "columnInfo":Lio/realm/internal/ColumnInfo;
    .end local v5    # "details":Lio/realm/internal/ColumnInfo$ColumnDetails;
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 79
    .restart local v2    # "columnInfo":Lio/realm/internal/ColumnInfo;
    .restart local v5    # "details":Lio/realm/internal/ColumnInfo$ColumnDetails;
    :cond_54
    new-instance v6, Ljava/lang/IllegalArgumentException;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v9, v13, v4

    aput-object v10, v13, v3

    .line 80
    const-string v3, "Invalid query: field \'%s\' not found in class \'%s\'."

    invoke-static {v12, v3, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 73
    .end local v5    # "details":Lio/realm/internal/ColumnInfo$ColumnDetails;
    :cond_69
    new-instance v5, Ljava/lang/IllegalArgumentException;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v10, v3, v4

    .line 74
    const-string v4, "Invalid query: class \'%s\' not found in this schema."

    invoke-static {v6, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 67
    .end local v2    # "columnInfo":Lio/realm/internal/ColumnInfo;
    :cond_7b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid query: Field descriptor contains an empty field.  A field description may not begin with or contain adjacent periods (\'.\')."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    .end local v1    # "i":I
    :cond_83
    move-object v1, p0

    move-object v2, v10

    move-object v3, v9

    move-object v4, v11

    move-object v5, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/fields/CachedFieldDescriptor;->setCompilationResults(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;[J[J)V

    .line 96
    return-void
.end method
