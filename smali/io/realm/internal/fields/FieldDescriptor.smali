###### Class io.realm.internal.fields.FieldDescriptor (io.realm.internal.fields.FieldDescriptor)
.class public abstract Lio/realm/internal/fields/FieldDescriptor;
.super Ljava/lang/Object;
.source "FieldDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;
    }
.end annotation


# static fields
.field public static final ALL_LINK_FIELD_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIST_LINK_FIELD_TYPE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_LINK_FIELD_TYPE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final OBJECT_LINK_FIELD_TYPE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIMPLE_LINK_FIELD_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private columnIndices:[J

.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private finalColumnName:Ljava/lang/String;

.field private finalColumnType:Lio/realm/RealmFieldType;

.field private nativeTablePointers:[J

.field private final validFinalColumnTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;"
        }
    .end annotation
.end field

.field private final validInternalColumnTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 52
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 53
    .local v0, "s":Ljava/util/Set;, "Ljava/util/Set<Lio/realm/RealmFieldType;>;"
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v1, Lio/realm/RealmFieldType;->LINKING_OBJECTS:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lio/realm/internal/fields/FieldDescriptor;->ALL_LINK_FIELD_TYPES:Ljava/util/Set;

    .line 62
    .end local v0    # "s":Ljava/util/Set;, "Ljava/util/Set<Lio/realm/RealmFieldType;>;"
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 63
    .restart local v0    # "s":Ljava/util/Set;, "Ljava/util/Set<Lio/realm/RealmFieldType;>;"
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lio/realm/internal/fields/FieldDescriptor;->SIMPLE_LINK_FIELD_TYPES:Ljava/util/Set;

    .line 71
    .end local v0    # "s":Ljava/util/Set;, "Ljava/util/Set<Lio/realm/RealmFieldType;>;"
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 72
    .restart local v0    # "s":Ljava/util/Set;, "Ljava/util/Set<Lio/realm/RealmFieldType;>;"
    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lio/realm/internal/fields/FieldDescriptor;->LIST_LINK_FIELD_TYPE:Ljava/util/Set;

    .line 79
    .end local v0    # "s":Ljava/util/Set;, "Ljava/util/Set<Lio/realm/RealmFieldType;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 80
    .restart local v0    # "s":Ljava/util/Set;, "Ljava/util/Set<Lio/realm/RealmFieldType;>;"
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lio/realm/internal/fields/FieldDescriptor;->OBJECT_LINK_FIELD_TYPE:Ljava/util/Set;

    .line 84
    .end local v0    # "s":Ljava/util/Set;, "Ljava/util/Set<Lio/realm/RealmFieldType;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/internal/fields/FieldDescriptor;->NO_LINK_FIELD_TYPE:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .registers 7
    .param p1, "fieldDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p2, "validInternalColumnTypes":Ljava/util/Set;, "Ljava/util/Set<Lio/realm/RealmFieldType;>;"
    .local p3, "validFinalColumnTypes":Ljava/util/Set;, "Ljava/util/Set<Lio/realm/RealmFieldType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-direct {p0, p1}, Lio/realm/internal/fields/FieldDescriptor;->parseFieldDescription(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->fields:Ljava/util/List;

    .line 156
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 157
    .local v0, "nFields":I
    if-lez v0, :cond_16

    .line 160
    iput-object p2, p0, Lio/realm/internal/fields/FieldDescriptor;->validInternalColumnTypes:Ljava/util/Set;

    .line 161
    iput-object p3, p0, Lio/realm/internal/fields/FieldDescriptor;->validFinalColumnTypes:Ljava/util/Set;

    .line 162
    return-void

    .line 158
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid query: Empty field descriptor"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private compileIfNecessary()V
    .registers 2

    .line 291
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->finalColumnType:Lio/realm/RealmFieldType;

    if-nez v0, :cond_9

    .line 292
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->fields:Ljava/util/List;

    invoke-virtual {p0, v0}, Lio/realm/internal/fields/FieldDescriptor;->compileFieldDescription(Ljava/util/List;)V

    .line 294
    :cond_9
    return-void
.end method

.method public static createFieldDescriptor(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Lio/realm/internal/Table;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Lio/realm/internal/fields/FieldDescriptor;
    .registers 12
    .param p0, "schema"    # Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;
    .param p1, "table"    # Lio/realm/internal/Table;
    .param p2, "fieldDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;",
            "Lio/realm/internal/Table;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;)",
            "Lio/realm/internal/fields/FieldDescriptor;"
        }
    .end annotation

    .line 131
    .local p3, "validInternalColumnTypes":Ljava/util/Set;, "Ljava/util/Set<Lio/realm/RealmFieldType;>;"
    .local p4, "validFinalColumnTypes":Ljava/util/Set;, "Ljava/util/Set<Lio/realm/RealmFieldType;>;"
    if-eqz p0, :cond_1e

    invoke-interface {p0}, Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;->hasCache()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1e

    .line 133
    :cond_9
    new-instance v0, Lio/realm/internal/fields/CachedFieldDescriptor;

    invoke-virtual {p1}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz p3, :cond_13

    move-object v5, p3

    goto :goto_16

    :cond_13
    sget-object v1, Lio/realm/internal/fields/FieldDescriptor;->ALL_LINK_FIELD_TYPES:Ljava/util/Set;

    move-object v5, v1

    :goto_16
    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/fields/CachedFieldDescriptor;-><init>(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_29

    .line 132
    :cond_1e
    :goto_1e
    new-instance v0, Lio/realm/internal/fields/DynamicFieldDescriptor;

    if-eqz p3, :cond_24

    move-object v1, p3

    goto :goto_26

    :cond_24
    sget-object v1, Lio/realm/internal/fields/FieldDescriptor;->SIMPLE_LINK_FIELD_TYPES:Ljava/util/Set;

    :goto_26
    invoke-direct {v0, p1, p2, v1, p4}, Lio/realm/internal/fields/DynamicFieldDescriptor;-><init>(Lio/realm/internal/Table;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 131
    :goto_29
    return-object v0
.end method

.method public static varargs createStandardFieldDescriptor(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Lio/realm/internal/Table;Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/fields/FieldDescriptor;
    .registers 6
    .param p0, "schema"    # Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;
    .param p1, "table"    # Lio/realm/internal/Table;
    .param p2, "fieldDescription"    # Ljava/lang/String;
    .param p3, "validFinalColumnTypes"    # [Lio/realm/RealmFieldType;

    .line 101
    new-instance v0, Ljava/util/HashSet;

    .line 106
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 101
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lio/realm/internal/fields/FieldDescriptor;->createFieldDescriptor(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Lio/realm/internal/Table;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Lio/realm/internal/fields/FieldDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private parseFieldDescription(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "fieldDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 273
    if-eqz p1, :cond_25

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 276
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 279
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 277
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid query: field name must not end with a period (\'.\')"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid query: field name is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyColumnType(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/util/Set;)V
    .registers 10
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "columnType"    # Lio/realm/RealmFieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/RealmFieldType;",
            "Ljava/util/Set<",
            "Lio/realm/RealmFieldType;",
            ">;)V"
        }
    .end annotation

    .line 283
    .local p4, "validTypes":Ljava/util/Set;, "Ljava/util/Set<Lio/realm/RealmFieldType;>;"
    invoke-interface {p4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 288
    return-void

    .line 284
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    .line 286
    invoke-virtual {p3}, Lio/realm/RealmFieldType;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 284
    const-string v3, "Invalid query: field \'%s\' in class \'%s\' is of invalid type \'%s\'."

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract compileFieldDescription(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public final getColumnIndices()[J
    .registers 3

    .line 185
    invoke-direct {p0}, Lio/realm/internal/fields/FieldDescriptor;->compileIfNecessary()V

    .line 186
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->columnIndices:[J

    iget-object v1, p0, Lio/realm/internal/fields/FieldDescriptor;->columnIndices:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public final getFinalColumnName()Ljava/lang/String;
    .registers 2

    .line 210
    invoke-direct {p0}, Lio/realm/internal/fields/FieldDescriptor;->compileIfNecessary()V

    .line 211
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->finalColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public final getFinalColumnType()Lio/realm/RealmFieldType;
    .registers 2

    .line 220
    invoke-direct {p0}, Lio/realm/internal/fields/FieldDescriptor;->compileIfNecessary()V

    .line 221
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->finalColumnType:Lio/realm/RealmFieldType;

    return-object v0
.end method

.method public final getNativeTablePointers()[J
    .registers 3

    .line 200
    invoke-direct {p0}, Lio/realm/internal/fields/FieldDescriptor;->compileIfNecessary()V

    .line 201
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->nativeTablePointers:[J

    iget-object v1, p0, Lio/realm/internal/fields/FieldDescriptor;->nativeTablePointers:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public final length()I
    .registers 2

    .line 172
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final setCompilationResults(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;[J[J)V
    .registers 7
    .param p1, "finalClassName"    # Ljava/lang/String;
    .param p2, "finalColumnName"    # Ljava/lang/String;
    .param p3, "finalColumnType"    # Lio/realm/RealmFieldType;
    .param p4, "columnIndices"    # [J
    .param p5, "nativeTablePointers"    # [J

    .line 256
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->validFinalColumnTypes:Ljava/util/Set;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->validFinalColumnTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 257
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->validFinalColumnTypes:Ljava/util/Set;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/realm/internal/fields/FieldDescriptor;->verifyColumnType(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/util/Set;)V

    .line 259
    :cond_11
    iput-object p2, p0, Lio/realm/internal/fields/FieldDescriptor;->finalColumnName:Ljava/lang/String;

    .line 260
    iput-object p3, p0, Lio/realm/internal/fields/FieldDescriptor;->finalColumnType:Lio/realm/RealmFieldType;

    .line 261
    iput-object p4, p0, Lio/realm/internal/fields/FieldDescriptor;->columnIndices:[J

    .line 262
    iput-object p5, p0, Lio/realm/internal/fields/FieldDescriptor;->nativeTablePointers:[J

    .line 263
    return-void
.end method

.method protected final verifyInternalColumnType(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;)V
    .registers 5
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "columnType"    # Lio/realm/RealmFieldType;

    .line 237
    iget-object v0, p0, Lio/realm/internal/fields/FieldDescriptor;->validInternalColumnTypes:Ljava/util/Set;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/realm/internal/fields/FieldDescriptor;->verifyColumnType(Ljava/lang/String;Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/util/Set;)V

    .line 238
    return-void
.end method

###### Class io.realm.internal.fields.FieldDescriptor.SchemaProxy (io.realm.internal.fields.FieldDescriptor$SchemaProxy)
.class public interface abstract Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;
.super Ljava/lang/Object;
.source "FieldDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/fields/FieldDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SchemaProxy"
.end annotation


# virtual methods
.method public abstract getColumnInfo(Ljava/lang/String;)Lio/realm/internal/ColumnInfo;
.end method

.method public abstract getNativeTablePtr(Ljava/lang/String;)J
.end method

.method public abstract hasCache()Z
.end method
