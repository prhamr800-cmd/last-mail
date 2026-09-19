###### Class io.realm.RealmModelListOperator (io.realm.RealmModelListOperator)
.class final Lio/realm/RealmModelListOperator;
.super Lio/realm/ManagedListOperator;
.source "RealmList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/ManagedListOperator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .param p1, "realm"    # Lio/realm/BaseRealm;
    .param p2, "osList"    # Lio/realm/internal/OsList;
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
            "Lio/realm/internal/OsList;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1397
    .local p0, "this":Lio/realm/RealmModelListOperator;, "Lio/realm/RealmModelListOperator<TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lio/realm/ManagedListOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    .line 1398
    iput-object p4, p0, Lio/realm/RealmModelListOperator;->className:Ljava/lang/String;

    .line 1399
    return-void
.end method

.method private checkInsertIndex(I)V
    .registers 7
    .param p1, "index"    # I

    .line 1426
    .local p0, "this":Lio/realm/RealmModelListOperator;, "Lio/realm/RealmModelListOperator<TT;>;"
    invoke-virtual {p0}, Lio/realm/RealmModelListOperator;->size()I

    move-result v0

    .line 1427
    .local v0, "size":I
    if-ltz p1, :cond_9

    if-lt v0, p1, :cond_9

    .line 1430
    return-void

    .line 1428
    :cond_9
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/realm/RealmModelListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v3}, Lio/realm/internal/OsList;->size()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private copyToRealmIfNeeded(Lio/realm/RealmModel;)Lio/realm/RealmModel;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1465
    .local p0, "this":Lio/realm/RealmModelListOperator;, "Lio/realm/RealmModelListOperator<TT;>;"
    .local p1, "object":Lio/realm/RealmModel;, "TE;"
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_97

    .line 1466
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 1468
    .local v0, "proxy":Lio/realm/internal/RealmObjectProxy;
    instance-of v1, v0, Lio/realm/DynamicRealmObject;

    if-eqz v1, :cond_60

    .line 1471
    iget-object v1, p0, Lio/realm/RealmModelListOperator;->className:Ljava/lang/String;

    .line 1472
    .local v1, "listClassName":Ljava/lang/String;
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    iget-object v3, p0, Lio/realm/RealmModelListOperator;->realm:Lio/realm/BaseRealm;

    if-ne v2, v3, :cond_3e

    .line 1473
    move-object v2, p1

    check-cast v2, Lio/realm/DynamicRealmObject;

    invoke-virtual {v2}, Lio/realm/DynamicRealmObject;->getType()Ljava/lang/String;

    move-result-object v2

    .line 1474
    .local v2, "objectClassName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1476
    return-object p1

    .line 1479
    :cond_27
    new-instance v3, Ljava/lang/IllegalArgumentException;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const-string v6, "The object has a different type from list\'s. Type of the list is \'%s\', type of object is \'%s\'."

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1483
    .end local v2    # "objectClassName":Ljava/lang/String;
    :cond_3e
    iget-object v2, p0, Lio/realm/RealmModelListOperator;->realm:Lio/realm/BaseRealm;

    iget-wide v2, v2, Lio/realm/BaseRealm;->threadId:J

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    iget-wide v4, v4, Lio/realm/BaseRealm;->threadId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_58

    .line 1487
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot copy DynamicRealmObject between Realm instances."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1489
    :cond_58
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot copy an object to a Realm instance created in another thread."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1493
    .end local v1    # "listClassName":Ljava/lang/String;
    :cond_60
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    if-eqz v1, :cond_97

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmModelListOperator;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 1494
    iget-object v1, p0, Lio/realm/RealmModelListOperator;->realm:Lio/realm/BaseRealm;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-ne v1, v2, :cond_8f

    .line 1497
    return-object p1

    .line 1495
    :cond_8f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot copy an object from another Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1503
    .end local v0    # "proxy":Lio/realm/internal/RealmObjectProxy;
    :cond_97
    iget-object v0, p0, Lio/realm/RealmModelListOperator;->realm:Lio/realm/BaseRealm;

    check-cast v0, Lio/realm/Realm;

    .line 1504
    .local v0, "realm":Lio/realm/Realm;
    invoke-virtual {v0}, Lio/realm/Realm;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v1

    .line 1505
    invoke-virtual {v0}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/realm/internal/RealmProxyMediator;->getSimpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 1504
    invoke-static {v1, v2}, Lio/realm/internal/OsObjectStore;->getPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ba

    .line 1506
    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v1

    return-object v1

    .line 1508
    :cond_ba
    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public appendValue(Ljava/lang/Object;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 1434
    .local p0, "this":Lio/realm/RealmModelListOperator;, "Lio/realm/RealmModelListOperator<TT;>;"
    move-object v0, p1

    check-cast v0, Lio/realm/RealmModel;

    invoke-direct {p0, v0}, Lio/realm/RealmModelListOperator;->copyToRealmIfNeeded(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 1435
    .local v0, "proxy":Lio/realm/internal/RealmObjectProxy;
    iget-object v1, p0, Lio/realm/RealmModelListOperator;->osList:Lio/realm/internal/OsList;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/OsList;->addRow(J)V

    .line 1436
    return-void
.end method

.method protected checkValidValue(Ljava/lang/Object;)V
    .registers 7
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1414
    .local p0, "this":Lio/realm/RealmModelListOperator;, "Lio/realm/RealmModelListOperator<TT;>;"
    if-eqz p1, :cond_28

    .line 1417
    instance-of v0, p1, Lio/realm/RealmModel;

    if-eqz v0, :cond_7

    .line 1423
    return-void

    .line 1418
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "java.lang.String"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1421
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1419
    const-string v3, "Unacceptable value type. Acceptable: %1$s, actual: %2$s ."

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1415
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RealmList does not accept null values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forRealmModel()Z
    .registers 2

    .line 1403
    .local p0, "this":Lio/realm/RealmModelListOperator;, "Lio/realm/RealmModelListOperator<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1409
    .local p0, "this":Lio/realm/RealmModelListOperator;, "Lio/realm/RealmModelListOperator<TT;>;"
    iget-object v0, p0, Lio/realm/RealmModelListOperator;->realm:Lio/realm/BaseRealm;

    iget-object v1, p0, Lio/realm/RealmModelListOperator;->clazz:Ljava/lang/Class;

    iget-object v2, p0, Lio/realm/RealmModelListOperator;->className:Ljava/lang/String;

    iget-object v3, p0, Lio/realm/RealmModelListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Lio/realm/internal/OsList;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method protected insertNull(I)V
    .registers 4
    .param p1, "index"    # I

    .line 1440
    .local p0, "this":Lio/realm/RealmModelListOperator;, "Lio/realm/RealmModelListOperator<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not reach here."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insertValue(ILjava/lang/Object;)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 1446
    .local p0, "this":Lio/realm/RealmModelListOperator;, "Lio/realm/RealmModelListOperator<TT;>;"
    invoke-direct {p0, p1}, Lio/realm/RealmModelListOperator;->checkInsertIndex(I)V

    .line 1448
    move-object v0, p2

    check-cast v0, Lio/realm/RealmModel;

    invoke-direct {p0, v0}, Lio/realm/RealmModelListOperator;->copyToRealmIfNeeded(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 1449
    .local v0, "proxy":Lio/realm/internal/RealmObjectProxy;
    iget-object v1, p0, Lio/realm/RealmModelListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v2, p1

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/internal/OsList;->insertRow(JJ)V

    .line 1450
    return-void
.end method

.method protected setNull(I)V
    .registers 4
    .param p1, "index"    # I

    .line 1454
    .local p0, "this":Lio/realm/RealmModelListOperator;, "Lio/realm/RealmModelListOperator<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not reach here."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setValue(ILjava/lang/Object;)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 1459
    .local p0, "this":Lio/realm/RealmModelListOperator;, "Lio/realm/RealmModelListOperator<TT;>;"
    move-object v0, p2

    check-cast v0, Lio/realm/RealmModel;

    invoke-direct {p0, v0}, Lio/realm/RealmModelListOperator;->copyToRealmIfNeeded(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 1460
    .local v0, "proxy":Lio/realm/internal/RealmObjectProxy;
    iget-object v1, p0, Lio/realm/RealmModelListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v2, p1

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/internal/OsList;->setRow(JJ)V

    .line 1461
    return-void
.end method
