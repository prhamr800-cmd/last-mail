###### Class io.realm.OrderedRealmCollectionImpl (io.realm.OrderedRealmCollectionImpl)
.class abstract Lio/realm/OrderedRealmCollectionImpl;
.super Ljava/util/AbstractList;
.source "OrderedRealmCollectionImpl.java"

# interfaces
.implements Lio/realm/OrderedRealmCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;,
        Lio/realm/OrderedRealmCollectionImpl$RealmCollectionIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Lio/realm/OrderedRealmCollection<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final NOT_SUPPORTED_MESSAGE:Ljava/lang/String; = "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."


# instance fields
.field final className:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final classSpec:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final forValues:Z
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "SS_SHOULD_BE_STATIC"
        }
    .end annotation
.end field

.field final osResults:Lio/realm/internal/OsResults;

.field final realm:Lio/realm/BaseRealm;


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/Class;)V
    .registers 5
    .param p1, "realm"    # Lio/realm/BaseRealm;
    .param p2, "osResults"    # Lio/realm/internal/OsResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsResults;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/realm/OrderedRealmCollectionImpl;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/Class;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 6
    .param p1, "realm"    # Lio/realm/BaseRealm;
    .param p2, "osResults"    # Lio/realm/internal/OsResults;
    .param p3    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "className"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsResults;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/OrderedRealmCollectionImpl;->forValues:Z

    .line 47
    iput-object p1, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    .line 48
    iput-object p2, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    .line 49
    iput-object p3, p0, Lio/realm/OrderedRealmCollectionImpl;->classSpec:Ljava/lang/Class;

    .line 50
    iput-object p4, p0, Lio/realm/OrderedRealmCollectionImpl;->className:Ljava/lang/String;

    .line 51
    return-void
.end method

.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/String;)V
    .registers 5
    .param p1, "realm"    # Lio/realm/BaseRealm;
    .param p2, "osResults"    # Lio/realm/internal/OsResults;
    .param p3, "className"    # Ljava/lang/String;

    .line 43
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lio/realm/OrderedRealmCollectionImpl;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/Class;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private firstImpl(ZLjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "shouldThrow"    # Z
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 147
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->firstUncheckedRow()Lio/realm/internal/UncheckedRow;

    move-result-object v0

    .line 154
    .local v0, "row":Lio/realm/internal/UncheckedRow;
    if-eqz v0, :cond_13

    .line 156
    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/OrderedRealmCollectionImpl;->classSpec:Ljava/lang/Class;

    iget-object v3, p0, Lio/realm/OrderedRealmCollectionImpl;->className:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/RealmModel;

    move-result-object v1

    return-object v1

    .line 158
    :cond_13
    if-nez p1, :cond_16

    .line 161
    return-object p2

    .line 159
    :cond_16
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "No results were found."

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getColumnIndexForSort(Ljava/lang/String;)J
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 274
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 277
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 280
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 281
    .local v0, "columnIndex":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_21

    .line 284
    return-wide v0

    .line 282
    :cond_21
    new-instance v2, Ljava/lang/IllegalArgumentException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, "Field \'%s\' does not exist."

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    .end local v0    # "columnIndex":J
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aggregates on child object fields are not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-empty field name required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSchemaConnector()Lio/realm/SchemaConnector;
    .registers 3

    .line 614
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    new-instance v0, Lio/realm/SchemaConnector;

    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/realm/SchemaConnector;-><init>(Lio/realm/RealmSchema;)V

    return-object v0
.end method

.method private lastImpl(ZLjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "shouldThrow"    # Z
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 187
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->lastUncheckedRow()Lio/realm/internal/UncheckedRow;

    move-result-object v0

    .line 194
    .local v0, "row":Lio/realm/internal/UncheckedRow;
    if-eqz v0, :cond_13

    .line 196
    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/OrderedRealmCollectionImpl;->classSpec:Ljava/lang/Class;

    iget-object v3, p0, Lio/realm/OrderedRealmCollectionImpl;->className:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/RealmModel;

    move-result-object v1

    return-object v1

    .line 198
    :cond_13
    if-nez p1, :cond_16

    .line 201
    return-object p2

    .line 199
    :cond_16
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "No results were found."

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 529
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 518
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 541
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 552
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public average(Ljava/lang/String;)D
    .registers 7
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 411
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 412
    invoke-direct {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->getColumnIndexForSort(Ljava/lang/String;)J

    move-result-wide v0

    .line 414
    .local v0, "columnIndex":J
    iget-object v2, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    sget-object v3, Lio/realm/internal/OsResults$Aggregate;->AVERAGE:Lio/realm/internal/OsResults$Aggregate;

    invoke-virtual {v2, v3, v0, v1}, Lio/realm/internal/OsResults;->aggregateNumber(Lio/realm/internal/OsResults$Aggregate;J)Ljava/lang/Number;

    move-result-object v2

    .line 415
    .local v2, "avg":Ljava/lang/Number;
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    return-wide v3
.end method

.method public clear()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 507
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 89
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    invoke-virtual {p0}, Lio/realm/OrderedRealmCollectionImpl;->isLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 91
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1b

    .line 92
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 93
    .local v0, "proxy":Lio/realm/internal/RealmObjectProxy;
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    sget-object v3, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    if-ne v2, v3, :cond_1b

    .line 94
    return v1

    .line 98
    .end local v0    # "proxy":Lio/realm/internal/RealmObjectProxy;
    :cond_1b
    invoke-virtual {p0}, Lio/realm/OrderedRealmCollectionImpl;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 99
    .local v2, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 100
    const/4 v0, 0x1

    return v0

    .line 102
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_31
    goto :goto_1f

    .line 104
    :cond_32
    return v1
.end method

.method createLoadedResults(Lio/realm/internal/OsResults;)Lio/realm/RealmResults;
    .registers 5
    .param p1, "newOsResults"    # Lio/realm/internal/OsResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/OsResults;",
            ")",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 602
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->className:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 603
    new-instance v0, Lio/realm/RealmResults;

    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/OrderedRealmCollectionImpl;->className:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lio/realm/RealmResults;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/String;)V

    goto :goto_17

    .line 607
    :cond_e
    new-instance v0, Lio/realm/RealmResults;

    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/OrderedRealmCollectionImpl;->classSpec:Ljava/lang/Class;

    invoke-direct {v0, v1, p1, v2}, Lio/realm/RealmResults;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/Class;)V

    .line 609
    .local v0, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    :goto_17
    invoke-virtual {v0}, Lio/realm/RealmResults;->load()Z

    .line 610
    return-object v0
.end method

.method public createSnapshot()Lio/realm/OrderedRealmCollectionSnapshot;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/OrderedRealmCollectionSnapshot<",
            "TE;>;"
        }
    .end annotation

    .line 574
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->className:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 575
    new-instance v0, Lio/realm/OrderedRealmCollectionSnapshot;

    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    iget-object v3, p0, Lio/realm/OrderedRealmCollectionImpl;->className:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lio/realm/OrderedRealmCollectionSnapshot;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/String;)V

    return-object v0

    .line 579
    :cond_10
    new-instance v0, Lio/realm/OrderedRealmCollectionSnapshot;

    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    iget-object v3, p0, Lio/realm/OrderedRealmCollectionImpl;->classSpec:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lio/realm/OrderedRealmCollectionSnapshot;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/Class;)V

    return-object v0
.end method

.method public deleteAllFromRealm()Z
    .registers 2

    .line 221
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 222
    invoke-virtual {p0}, Lio/realm/OrderedRealmCollectionImpl;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 223
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->clear()V

    .line 224
    const/4 v0, 0x1

    return v0

    .line 226
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public deleteFirstFromRealm()Z
    .registers 2

    .line 495
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValidAndInTransaction()V

    .line 496
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->deleteFirst()Z

    move-result v0

    return v0
.end method

.method public deleteFromRealm(I)V
    .registers 5
    .param p1, "location"    # I

    .line 212
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValidAndInTransaction()V

    .line 213
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsResults;->delete(J)V

    .line 214
    return-void
.end method

.method public deleteLastFromRealm()Z
    .registers 2

    .line 483
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValidAndInTransaction()V

    .line 484
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->deleteLast()Z

    move-result v0

    return v0
.end method

.method public first()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 133
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/realm/OrderedRealmCollectionImpl;->firstImpl(ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public first(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 142
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/realm/OrderedRealmCollectionImpl;->firstImpl(ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 6
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 117
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 124
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl;->classSpec:Ljava/lang/Class;

    iget-object v2, p0, Lio/realm/OrderedRealmCollectionImpl;->className:Ljava/lang/String;

    iget-object v3, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v3, p1}, Lio/realm/internal/OsResults;->getUncheckedRow(I)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method getOsResults()Lio/realm/internal/OsResults;
    .registers 2

    .line 58
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    return-object v0
.end method

.method getTable()Lio/realm/internal/Table;
    .registers 2

    .line 54
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    return-object v0
.end method

.method public isManaged()Z
    .registers 2

    .line 77
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 66
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->isValid()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 239
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    new-instance v0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionIterator;

    invoke-direct {v0, p0}, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionIterator;-><init>(Lio/realm/OrderedRealmCollectionImpl;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 172
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/realm/OrderedRealmCollectionImpl;->lastImpl(ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public last(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 181
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/realm/OrderedRealmCollectionImpl;->lastImpl(ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 251
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    new-instance v0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;-><init>(Lio/realm/OrderedRealmCollectionImpl;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 266
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    new-instance v0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;

    invoke-direct {v0, p0, p1}, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;-><init>(Lio/realm/OrderedRealmCollectionImpl;I)V

    return-object v0
.end method

.method public max(Ljava/lang/String;)Ljava/lang/Number;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 372
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 373
    invoke-direct {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->getColumnIndexForSort(Ljava/lang/String;)J

    move-result-wide v0

    .line 374
    .local v0, "columnIndex":J
    iget-object v2, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    sget-object v3, Lio/realm/internal/OsResults$Aggregate;->MAXIMUM:Lio/realm/internal/OsResults$Aggregate;

    invoke-virtual {v2, v3, v0, v1}, Lio/realm/internal/OsResults;->aggregateNumber(Lio/realm/internal/OsResults$Aggregate;J)Ljava/lang/Number;

    move-result-object v2

    return-object v2
.end method

.method public maxDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 390
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 391
    invoke-direct {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->getColumnIndexForSort(Ljava/lang/String;)J

    move-result-wide v0

    .line 392
    .local v0, "columnIndex":J
    iget-object v2, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    sget-object v3, Lio/realm/internal/OsResults$Aggregate;->MAXIMUM:Lio/realm/internal/OsResults$Aggregate;

    invoke-virtual {v2, v3, v0, v1}, Lio/realm/internal/OsResults;->aggregateDate(Lio/realm/internal/OsResults$Aggregate;J)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public min(Ljava/lang/String;)Ljava/lang/Number;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 352
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 353
    invoke-direct {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->getColumnIndexForSort(Ljava/lang/String;)J

    move-result-wide v0

    .line 354
    .local v0, "columnIndex":J
    iget-object v2, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    sget-object v3, Lio/realm/internal/OsResults$Aggregate;->MINIMUM:Lio/realm/internal/OsResults$Aggregate;

    invoke-virtual {v2, v3, v0, v1}, Lio/realm/internal/OsResults;->aggregateNumber(Lio/realm/internal/OsResults$Aggregate;J)Ljava/lang/Number;

    move-result-object v2

    return-object v2
.end method

.method public minDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 362
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 363
    invoke-direct {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->getColumnIndexForSort(Ljava/lang/String;)J

    move-result-wide v0

    .line 364
    .local v0, "columnIndex":J
    iget-object v2, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    sget-object v3, Lio/realm/internal/OsResults$Aggregate;->MINIMUM:Lio/realm/internal/OsResults$Aggregate;

    invoke-virtual {v2, v3, v0, v1}, Lio/realm/internal/OsResults;->aggregateDate(Lio/realm/internal/OsResults$Aggregate;J)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 428
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 439
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 450
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 472
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 461
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 6

    .line 340
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    invoke-virtual {p0}, Lio/realm/OrderedRealmCollectionImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 341
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->size()J

    move-result-wide v0

    .line 342
    .local v0, "size":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_17

    const v2, 0x7fffffff

    goto :goto_18

    :cond_17
    long-to-int v2, v0

    :goto_18
    return v2

    .line 344
    .end local v0    # "size":J
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public sort(Ljava/lang/String;)Lio/realm/RealmResults;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 292
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    nop

    .line 293
    invoke-direct {p0}, Lio/realm/OrderedRealmCollectionImpl;->getSchemaConnector()Lio/realm/SchemaConnector;

    move-result-object v0

    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v1}, Lio/realm/internal/OsResults;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    sget-object v2, Lio/realm/Sort;->ASCENDING:Lio/realm/Sort;

    invoke-static {v0, v1, p1, v2}, Lio/realm/internal/SortDescriptor;->getInstanceForSort(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/Sort;)Lio/realm/internal/SortDescriptor;

    move-result-object v0

    .line 295
    .local v0, "sortDescriptor":Lio/realm/internal/SortDescriptor;
    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v1, v0}, Lio/realm/internal/OsResults;->sort(Lio/realm/internal/SortDescriptor;)Lio/realm/internal/OsResults;

    move-result-object v1

    .line 296
    .local v1, "sortedOsResults":Lio/realm/internal/OsResults;
    invoke-virtual {p0, v1}, Lio/realm/OrderedRealmCollectionImpl;->createLoadedResults(Lio/realm/internal/OsResults;)Lio/realm/RealmResults;

    move-result-object v2

    return-object v2
.end method

.method public sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "sortOrder"    # Lio/realm/Sort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            ")",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 304
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    nop

    .line 305
    invoke-direct {p0}, Lio/realm/OrderedRealmCollectionImpl;->getSchemaConnector()Lio/realm/SchemaConnector;

    move-result-object v0

    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v1}, Lio/realm/internal/OsResults;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/SortDescriptor;->getInstanceForSort(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/Sort;)Lio/realm/internal/SortDescriptor;

    move-result-object v0

    .line 307
    .local v0, "sortDescriptor":Lio/realm/internal/SortDescriptor;
    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v1, v0}, Lio/realm/internal/OsResults;->sort(Lio/realm/internal/SortDescriptor;)Lio/realm/internal/OsResults;

    move-result-object v1

    .line 308
    .local v1, "sortedOsResults":Lio/realm/internal/OsResults;
    invoke-virtual {p0, v1}, Lio/realm/OrderedRealmCollectionImpl;->createLoadedResults(Lio/realm/internal/OsResults;)Lio/realm/RealmResults;

    move-result-object v2

    return-object v2
.end method

.method public sort(Ljava/lang/String;Lio/realm/Sort;Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;
    .registers 9
    .param p1, "fieldName1"    # Ljava/lang/String;
    .param p2, "sortOrder1"    # Lio/realm/Sort;
    .param p3, "fieldName2"    # Ljava/lang/String;
    .param p4, "sortOrder2"    # Lio/realm/Sort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            ")",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 328
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p3, v1, v3

    new-array v0, v0, [Lio/realm/Sort;

    aput-object p2, v0, v2

    aput-object p4, v0, v3

    invoke-virtual {p0, v1, v0}, Lio/realm/OrderedRealmCollectionImpl;->sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmResults;
    .registers 6
    .param p1, "fieldNames"    # [Ljava/lang/String;
    .param p2, "sortOrders"    # [Lio/realm/Sort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Lio/realm/Sort;",
            ")",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 316
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    nop

    .line 317
    invoke-direct {p0}, Lio/realm/OrderedRealmCollectionImpl;->getSchemaConnector()Lio/realm/SchemaConnector;

    move-result-object v0

    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v1}, Lio/realm/internal/OsResults;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/SortDescriptor;->getInstanceForSort(Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;Lio/realm/internal/Table;[Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/internal/SortDescriptor;

    move-result-object v0

    .line 319
    .local v0, "sortDescriptor":Lio/realm/internal/SortDescriptor;
    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v1, v0}, Lio/realm/internal/OsResults;->sort(Lio/realm/internal/SortDescriptor;)Lio/realm/internal/OsResults;

    move-result-object v1

    .line 320
    .local v1, "sortedOsResults":Lio/realm/internal/OsResults;
    invoke-virtual {p0, v1}, Lio/realm/OrderedRealmCollectionImpl;->createLoadedResults(Lio/realm/internal/OsResults;)Lio/realm/RealmResults;

    move-result-object v2

    return-object v2
.end method

.method public sum(Ljava/lang/String;)Ljava/lang/Number;
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 401
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl;, "Lio/realm/OrderedRealmCollectionImpl<TE;>;"
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 402
    invoke-direct {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->getColumnIndexForSort(Ljava/lang/String;)J

    move-result-wide v0

    .line 403
    .local v0, "columnIndex":J
    iget-object v2, p0, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    sget-object v3, Lio/realm/internal/OsResults$Aggregate;->SUM:Lio/realm/internal/OsResults$Aggregate;

    invoke-virtual {v2, v3, v0, v1}, Lio/realm/internal/OsResults;->aggregateNumber(Lio/realm/internal/OsResults$Aggregate;J)Ljava/lang/Number;

    move-result-object v2

    return-object v2
.end method

###### Class io.realm.OrderedRealmCollectionImpl.RealmCollectionIterator (io.realm.OrderedRealmCollectionImpl$RealmCollectionIterator)
.class Lio/realm/OrderedRealmCollectionImpl$RealmCollectionIterator;
.super Lio/realm/internal/OsResults$Iterator;
.source "OrderedRealmCollectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/OrderedRealmCollectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RealmCollectionIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/internal/OsResults$Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/OrderedRealmCollectionImpl;


# direct methods
.method constructor <init>(Lio/realm/OrderedRealmCollectionImpl;)V
    .registers 2

    .line 557
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl$RealmCollectionIterator;, "Lio/realm/OrderedRealmCollectionImpl<TE;>.RealmCollectionIterator;"
    iput-object p1, p0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionIterator;->this$0:Lio/realm/OrderedRealmCollectionImpl;

    .line 558
    iget-object p1, p1, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    invoke-direct {p0, p1}, Lio/realm/internal/OsResults$Iterator;-><init>(Lio/realm/internal/OsResults;)V

    .line 559
    return-void
.end method


# virtual methods
.method protected convertRowToObject(Lio/realm/internal/UncheckedRow;)Ljava/lang/Object;
    .registers 5
    .param p1, "row"    # Lio/realm/internal/UncheckedRow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/UncheckedRow;",
            ")TE;"
        }
    .end annotation

    .line 568
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl$RealmCollectionIterator;, "Lio/realm/OrderedRealmCollectionImpl<TE;>.RealmCollectionIterator;"
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionIterator;->this$0:Lio/realm/OrderedRealmCollectionImpl;

    iget-object v0, v0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionIterator;->this$0:Lio/realm/OrderedRealmCollectionImpl;

    iget-object v1, v1, Lio/realm/OrderedRealmCollectionImpl;->classSpec:Ljava/lang/Class;

    iget-object v2, p0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionIterator;->this$0:Lio/realm/OrderedRealmCollectionImpl;

    iget-object v2, v2, Lio/realm/OrderedRealmCollectionImpl;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

###### Class io.realm.OrderedRealmCollectionImpl.RealmCollectionListIterator (io.realm.OrderedRealmCollectionImpl$RealmCollectionListIterator)
.class Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;
.super Lio/realm/internal/OsResults$ListIterator;
.source "OrderedRealmCollectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/OrderedRealmCollectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RealmCollectionListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/internal/OsResults$ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/OrderedRealmCollectionImpl;


# direct methods
.method constructor <init>(Lio/realm/OrderedRealmCollectionImpl;I)V
    .registers 3
    .param p2, "start"    # I

    .line 585
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;, "Lio/realm/OrderedRealmCollectionImpl<TE;>.RealmCollectionListIterator;"
    iput-object p1, p0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;->this$0:Lio/realm/OrderedRealmCollectionImpl;

    .line 586
    iget-object p1, p1, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    invoke-direct {p0, p1, p2}, Lio/realm/internal/OsResults$ListIterator;-><init>(Lio/realm/internal/OsResults;I)V

    .line 587
    return-void
.end method


# virtual methods
.method protected convertRowToObject(Lio/realm/internal/UncheckedRow;)Ljava/lang/Object;
    .registers 5
    .param p1, "row"    # Lio/realm/internal/UncheckedRow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/UncheckedRow;",
            ")TE;"
        }
    .end annotation

    .line 596
    .local p0, "this":Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;, "Lio/realm/OrderedRealmCollectionImpl<TE;>.RealmCollectionListIterator;"
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;->this$0:Lio/realm/OrderedRealmCollectionImpl;

    iget-object v0, v0, Lio/realm/OrderedRealmCollectionImpl;->realm:Lio/realm/BaseRealm;

    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;->this$0:Lio/realm/OrderedRealmCollectionImpl;

    iget-object v1, v1, Lio/realm/OrderedRealmCollectionImpl;->classSpec:Ljava/lang/Class;

    iget-object v2, p0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionListIterator;->this$0:Lio/realm/OrderedRealmCollectionImpl;

    iget-object v2, v2, Lio/realm/OrderedRealmCollectionImpl;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method
