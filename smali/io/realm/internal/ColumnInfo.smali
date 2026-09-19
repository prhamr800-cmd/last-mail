###### Class io.realm.internal.ColumnInfo (io.realm.internal.ColumnInfo)
.class public abstract Lio/realm/internal/ColumnInfo;
.super Ljava/lang/Object;
.source "ColumnInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/ColumnInfo$ColumnDetails;
    }
.end annotation


# instance fields
.field private final indicesFromColumnNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/realm/internal/ColumnInfo$ColumnDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final indicesFromJavaFieldNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/realm/internal/ColumnInfo$ColumnDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final mutable:Z


# direct methods
.method protected constructor <init>(I)V
    .registers 3
    .param p1, "mapSize"    # I

    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/realm/internal/ColumnInfo;-><init>(IZ)V

    .line 104
    return-void
.end method

.method private constructor <init>(IZ)V
    .registers 4
    .param p1, "mapSize"    # I
    .param p2, "mutable"    # Z

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/realm/internal/ColumnInfo;->indicesFromJavaFieldNames:Ljava/util/Map;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/realm/internal/ColumnInfo;->indicesFromColumnNames:Ljava/util/Map;

    .line 123
    iput-boolean p2, p0, Lio/realm/internal/ColumnInfo;->mutable:Z

    .line 124
    return-void
.end method

.method protected constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 5
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "mutable"    # Z

    .line 113
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p1, Lio/realm/internal/ColumnInfo;->indicesFromJavaFieldNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_a
    invoke-direct {p0, v0, p2}, Lio/realm/internal/ColumnInfo;-><init>(IZ)V

    .line 115
    if-eqz p1, :cond_16

    .line 116
    iget-object v0, p0, Lio/realm/internal/ColumnInfo;->indicesFromJavaFieldNames:Ljava/util/Map;

    iget-object v1, p1, Lio/realm/internal/ColumnInfo;->indicesFromJavaFieldNames:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 118
    :cond_16
    return-void
.end method


# virtual methods
.method protected final addBacklinkDetails(Lio/realm/internal/OsSchemaInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;
    .param p2, "javaFieldName"    # Ljava/lang/String;
    .param p3, "sourceTableName"    # Ljava/lang/String;
    .param p4, "sourceJavaFieldName"    # Ljava/lang/String;

    .line 255
    invoke-virtual {p1, p3}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    invoke-virtual {v0, p4}, Lio/realm/internal/OsObjectSchemaInfo;->getProperty(Ljava/lang/String;)Lio/realm/internal/Property;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Property;->getColumnIndex()J

    move-result-wide v7

    .line 256
    .local v7, "columnIndex":J
    iget-object v0, p0, Lio/realm/internal/ColumnInfo;->indicesFromJavaFieldNames:Ljava/util/Map;

    new-instance v9, Lio/realm/internal/ColumnInfo$ColumnDetails;

    sget-object v4, Lio/realm/RealmFieldType;->LINKING_OBJECTS:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    move-object v1, v9

    move-wide v2, v7

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/ColumnInfo$ColumnDetails;-><init>(JLio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/ColumnInfo$1;)V

    invoke-interface {v0, p2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    return-void
.end method

.method protected final addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J
    .registers 8
    .param p1, "javaFieldName"    # Ljava/lang/String;
    .param p2, "internalColumnName"    # Ljava/lang/String;
    .param p3, "objectSchemaInfo"    # Lio/realm/internal/OsObjectSchemaInfo;

    .line 237
    invoke-virtual {p3, p2}, Lio/realm/internal/OsObjectSchemaInfo;->getProperty(Ljava/lang/String;)Lio/realm/internal/Property;

    move-result-object v0

    .line 238
    .local v0, "property":Lio/realm/internal/Property;
    new-instance v1, Lio/realm/internal/ColumnInfo$ColumnDetails;

    invoke-direct {v1, v0}, Lio/realm/internal/ColumnInfo$ColumnDetails;-><init>(Lio/realm/internal/Property;)V

    .line 239
    .local v1, "cd":Lio/realm/internal/ColumnInfo$ColumnDetails;
    iget-object v2, p0, Lio/realm/internal/ColumnInfo;->indicesFromJavaFieldNames:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v2, p0, Lio/realm/internal/ColumnInfo;->indicesFromColumnNames:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {v0}, Lio/realm/internal/Property;->getColumnIndex()J

    move-result-wide v2

    return-wide v2
.end method

.method protected abstract copy(Z)Lio/realm/internal/ColumnInfo;
.end method

.method protected abstract copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
.end method

.method public copyFrom(Lio/realm/internal/ColumnInfo;)V
    .registers 4
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;

    .line 163
    iget-boolean v0, p0, Lio/realm/internal/ColumnInfo;->mutable:Z

    if-eqz v0, :cond_2a

    .line 166
    if-eqz p1, :cond_22

    .line 170
    iget-object v0, p0, Lio/realm/internal/ColumnInfo;->indicesFromJavaFieldNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 171
    iget-object v0, p0, Lio/realm/internal/ColumnInfo;->indicesFromJavaFieldNames:Ljava/util/Map;

    iget-object v1, p1, Lio/realm/internal/ColumnInfo;->indicesFromJavaFieldNames:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 172
    iget-object v0, p0, Lio/realm/internal/ColumnInfo;->indicesFromColumnNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 173
    iget-object v0, p0, Lio/realm/internal/ColumnInfo;->indicesFromColumnNames:Ljava/util/Map;

    iget-object v1, p1, Lio/realm/internal/ColumnInfo;->indicesFromColumnNames:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 174
    invoke-virtual {p0, p1, p0}, Lio/realm/internal/ColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    .line 175
    return-void

    .line 167
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempt to copy null ColumnInfo"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_2a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify an immutable ColumnInfo"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnDetails(Ljava/lang/String;)Lio/realm/internal/ColumnInfo$ColumnDetails;
    .registers 3
    .param p1, "javaFieldName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 152
    iget-object v0, p0, Lio/realm/internal/ColumnInfo;->indicesFromJavaFieldNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/ColumnInfo$ColumnDetails;

    return-object v0
.end method

.method public getColumnIndex(Ljava/lang/String;)J
    .registers 5
    .param p1, "javaFieldName"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lio/realm/internal/ColumnInfo;->indicesFromJavaFieldNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/ColumnInfo$ColumnDetails;

    .line 142
    .local v0, "details":Lio/realm/internal/ColumnInfo$ColumnDetails;
    if-nez v0, :cond_d

    const-wide/16 v1, -0x1

    goto :goto_f

    :cond_d
    iget-wide v1, v0, Lio/realm/internal/ColumnInfo$ColumnDetails;->columnIndex:J

    :goto_f
    return-wide v1
.end method

.method public getIndicesMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/realm/internal/ColumnInfo$ColumnDetails;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lio/realm/internal/ColumnInfo;->indicesFromJavaFieldNames:Ljava/util/Map;

    return-object v0
.end method

.method public final isMutable()Z
    .registers 2

    .line 132
    iget-boolean v0, p0, Lio/realm/internal/ColumnInfo;->mutable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColumnInfo["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "buf":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mutable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lio/realm/internal/ColumnInfo;->mutable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v1, p0, Lio/realm/internal/ColumnInfo;->indicesFromJavaFieldNames:Ljava/util/Map;

    if-eqz v1, :cond_65

    .line 182
    const-string v1, "JavaFieldNames=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const/4 v1, 0x0

    .line 184
    .local v1, "commaNeeded":Z
    iget-object v2, p0, Lio/realm/internal/ColumnInfo;->indicesFromJavaFieldNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 185
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lio/realm/internal/ColumnInfo$ColumnDetails;>;"
    if-eqz v1, :cond_49

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_49
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    const/4 v1, 0x1

    .line 188
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lio/realm/internal/ColumnInfo$ColumnDetails;>;"
    goto :goto_36

    .line 189
    :cond_60
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .end local v1    # "commaNeeded":Z
    :cond_65
    iget-object v1, p0, Lio/realm/internal/ColumnInfo;->indicesFromColumnNames:Ljava/util/Map;

    if-eqz v1, :cond_a8

    .line 192
    const-string v1, ", InternalFieldNames=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const/4 v1, 0x0

    .line 194
    .restart local v1    # "commaNeeded":Z
    iget-object v2, p0, Lio/realm/internal/ColumnInfo;->indicesFromColumnNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_79
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 195
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lio/realm/internal/ColumnInfo$ColumnDetails;>;"
    if-eqz v1, :cond_8c

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_8c
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    const/4 v1, 0x1

    .line 198
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lio/realm/internal/ColumnInfo$ColumnDetails;>;"
    goto :goto_79

    .line 199
    :cond_a3
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .end local v1    # "commaNeeded":Z
    :cond_a8
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.internal.ColumnInfo.AnonymousClass1 (io.realm.internal.ColumnInfo$1)
.class synthetic Lio/realm/internal/ColumnInfo$1;
.super Ljava/lang/Object;
.source "ColumnInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/ColumnInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.realm.internal.ColumnInfo.ColumnDetails (io.realm.internal.ColumnInfo$ColumnDetails)
.class public final Lio/realm/internal/ColumnInfo$ColumnDetails;
.super Ljava/lang/Object;
.source "ColumnInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/ColumnInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColumnDetails"
.end annotation


# instance fields
.field public final columnIndex:J

.field public final columnType:Lio/realm/RealmFieldType;

.field public final linkedClassName:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLio/realm/RealmFieldType;Ljava/lang/String;)V
    .registers 5
    .param p1, "columnIndex"    # J
    .param p3, "columnType"    # Lio/realm/RealmFieldType;
    .param p4, "linkedClassName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-wide p1, p0, Lio/realm/internal/ColumnInfo$ColumnDetails;->columnIndex:J

    .line 74
    iput-object p3, p0, Lio/realm/internal/ColumnInfo$ColumnDetails;->columnType:Lio/realm/RealmFieldType;

    .line 75
    iput-object p4, p0, Lio/realm/internal/ColumnInfo$ColumnDetails;->linkedClassName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method synthetic constructor <init>(JLio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/ColumnInfo$1;)V
    .registers 6
    .param p1, "x0"    # J
    .param p3, "x1"    # Lio/realm/RealmFieldType;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Lio/realm/internal/ColumnInfo$1;

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lio/realm/internal/ColumnInfo$ColumnDetails;-><init>(JLio/realm/RealmFieldType;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/Property;)V
    .registers 6
    .param p1, "property"    # Lio/realm/internal/Property;

    .line 79
    invoke-virtual {p1}, Lio/realm/internal/Property;->getColumnIndex()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/realm/internal/Property;->getType()Lio/realm/RealmFieldType;

    move-result-object v2

    invoke-virtual {p1}, Lio/realm/internal/Property;->getLinkedObjectName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lio/realm/internal/ColumnInfo$ColumnDetails;-><init>(JLio/realm/RealmFieldType;Ljava/lang/String;)V

    .line 80
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColumnDetails["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lio/realm/internal/ColumnInfo$ColumnDetails;->columnIndex:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/internal/ColumnInfo$ColumnDetails;->columnType:Lio/realm/RealmFieldType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/internal/ColumnInfo$ColumnDetails;->linkedClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
