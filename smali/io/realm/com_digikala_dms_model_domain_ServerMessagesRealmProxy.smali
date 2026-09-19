###### Class io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxy (io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxy)
.class public Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;
.super Lcom/digikala/dms/model/domain/ServerMessages;
.source "com_digikala_dms_model_domain_ServerMessagesRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ClassNameHelper;,
        Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/digikala/dms/model/domain/ServerMessages;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Lcom/digikala/dms/model/domain/ServerMessages;-><init>()V

    .line 82
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 83
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ServerMessages;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/ServerMessages;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lcom/digikala/dms/model/domain/ServerMessages;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/ServerMessages;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/domain/ServerMessages;"
        }
    .end annotation

    .line 377
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 378
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 379
    move-object v1, v0

    check-cast v1, Lcom/digikala/dms/model/domain/ServerMessages;

    return-object v1

    .line 383
    :cond_c
    const-class v1, Lcom/digikala/dms/model/domain/ServerMessages;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/ServerMessages;

    .line 384
    .local v1, "realmObject":Lcom/digikala/dms/model/domain/ServerMessages;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    .line 387
    .local v2, "realmObjectSource":Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;
    move-object v3, v1

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    .line 389
    .local v3, "realmObjectCopy":Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 390
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    .line 391
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$message()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$message(Ljava/lang/String;)V

    .line 392
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$date()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$date(J)V

    .line 393
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$seen()Z

    move-result v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$seen(Z)V

    .line 394
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ServerMessages;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/ServerMessages;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/ServerMessages;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/ServerMessages;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/domain/ServerMessages;"
        }
    .end annotation

    .line 358
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_3b

    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 359
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 360
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_33

    .line 363
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 364
    return-object p1

    .line 361
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_3b
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    .line 368
    .local v0, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    .line 369
    .local v1, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v1, :cond_4d

    .line 370
    move-object v2, v1

    check-cast v2, Lcom/digikala/dms/model/domain/ServerMessages;

    return-object v2

    .line 373
    :cond_4d
    invoke-static {p0, p1, p2, p3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->copy(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ServerMessages;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/ServerMessages;

    move-result-object v2

    return-object v2
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 248
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/digikala/dms/model/domain/ServerMessages;IILjava/util/Map;)Lcom/digikala/dms/model/domain/ServerMessages;
    .registers 10
    .param p0, "realmObject"    # Lcom/digikala/dms/model/domain/ServerMessages;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/model/domain/ServerMessages;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/digikala/dms/model/domain/ServerMessages;"
        }
    .end annotation

    .line 528
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    if-gt p1, p2, :cond_54

    if-nez p0, :cond_5

    goto :goto_54

    .line 531
    :cond_5
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 533
    .local v0, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v0, :cond_1b

    .line 534
    new-instance v1, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-direct {v1}, Lcom/digikala/dms/model/domain/ServerMessages;-><init>()V

    .line 535
    .local v1, "unmanagedObject":Lcom/digikala/dms/model/domain/ServerMessages;
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 538
    .end local v1    # "unmanagedObject":Lcom/digikala/dms/model/domain/ServerMessages;
    :cond_1b
    iget v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v1, :cond_24

    .line 539
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/digikala/dms/model/domain/ServerMessages;

    return-object v1

    .line 541
    :cond_24
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/digikala/dms/model/domain/ServerMessages;

    .line 542
    .restart local v1    # "unmanagedObject":Lcom/digikala/dms/model/domain/ServerMessages;
    iput p1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 544
    :goto_2a
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    .line 545
    .local v2, "unmanagedCopy":Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;
    move-object v3, p0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    .line 546
    .local v3, "realmSource":Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 547
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    .line 548
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$message()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$message(Ljava/lang/String;)V

    .line 549
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$date()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$date(J)V

    .line 550
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$seen()Z

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$seen(Z)V

    .line 552
    return-object v1

    .line 529
    .end local v0    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v1    # "unmanagedObject":Lcom/digikala/dms/model/domain/ServerMessages;
    .end local v2    # "unmanagedCopy":Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;
    .end local v3    # "realmSource":Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;
    :cond_54
    :goto_54
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 13

    .line 234
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "ServerMessages"

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 235
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string v1, "id"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 236
    const-string/jumbo v7, "title"

    sget-object v8, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 237
    const-string v2, "message"

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 238
    const-string v8, "date"

    sget-object v9, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v12, 0x1

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 239
    const-string v2, "seen"

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 240
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/ServerMessages;
    .registers 8
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 263
    .local v0, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Lcom/digikala/dms/model/domain/ServerMessages;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/ServerMessages;

    .line 265
    .local v1, "obj":Lcom/digikala/dms/model/domain/ServerMessages;
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    .line 266
    .local v2, "objProxy":Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2e

    .line 267
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 268
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto :goto_2e

    .line 270
    :cond_25
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 273
    :cond_2e
    :goto_2e
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 274
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 275
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto :goto_4e

    .line 277
    :cond_44
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    .line 280
    :cond_4e
    :goto_4e
    const-string v3, "message"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 281
    const-string v3, "message"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 282
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$message(Ljava/lang/String;)V

    goto :goto_6b

    .line 284
    :cond_62
    const-string v3, "message"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$message(Ljava/lang/String;)V

    .line 287
    :cond_6b
    :goto_6b
    const-string v3, "date"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 288
    const-string v3, "date"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_85

    .line 291
    const-string v3, "date"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$date(J)V

    goto :goto_8d

    .line 289
    :cond_85
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'date\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 294
    :cond_8d
    :goto_8d
    const-string v3, "seen"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 295
    const-string v3, "seen"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a7

    .line 298
    const-string v3, "seen"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$seen(Z)V

    goto :goto_af

    .line 296
    :cond_a7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'seen\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 301
    :cond_af
    :goto_af
    return-object v1
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/ServerMessages;
    .registers 8
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    new-instance v0, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-direct {v0}, Lcom/digikala/dms/model/domain/ServerMessages;-><init>()V

    .line 309
    .local v0, "obj":Lcom/digikala/dms/model/domain/ServerMessages;
    move-object v1, v0

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    .line 310
    .local v1, "objProxy":Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 311
    :goto_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 312
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "name":Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_37

    .line 315
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_2f

    .line 316
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto/16 :goto_c0

    .line 318
    :cond_2f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 319
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto/16 :goto_c0

    .line 321
    :cond_37
    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 322
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_51

    .line 323
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto/16 :goto_c0

    .line 325
    :cond_51
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 326
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto :goto_c0

    .line 328
    :cond_58
    const-string v3, "message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 329
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_70

    .line 330
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$message(Ljava/lang/String;)V

    goto :goto_c0

    .line 332
    :cond_70
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 333
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$message(Ljava/lang/String;)V

    goto :goto_c0

    .line 335
    :cond_77
    const-string v3, "date"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 336
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_8f

    .line 337
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$date(J)V

    goto :goto_c0

    .line 339
    :cond_8f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 340
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'date\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 342
    :cond_9a
    const-string v3, "seen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 343
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_b2

    .line 344
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmSet$seen(Z)V

    goto :goto_c0

    .line 346
    :cond_b2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 347
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'seen\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 350
    :cond_bd
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 352
    .end local v2    # "name":Ljava/lang/String;
    :goto_c0
    goto/16 :goto_b

    .line 353
    :cond_c2
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 354
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/ServerMessages;

    return-object v2
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 244
    sget-object v0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 252
    const-string v0, "ServerMessages"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ServerMessages;Ljava/util/Map;)J
    .registers 24
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/ServerMessages;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/ServerMessages;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 398
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    instance-of v1, v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_3c

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_3c

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 399
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 401
    :cond_3c
    const-class v1, Lcom/digikala/dms/model/domain/ServerMessages;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 402
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 403
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    .line 404
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 405
    .local v15, "rowIndex":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v17

    .line 407
    .local v17, "realmGet$id":Ljava/lang/String;
    if-eqz v17, :cond_75

    .line 408
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->idIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 410
    :cond_75
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v18

    .line 411
    .local v18, "realmGet$title":Ljava/lang/String;
    if-eqz v18, :cond_88

    .line 412
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->titleIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 414
    :cond_88
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$message()Ljava/lang/String;

    move-result-object v19

    .line 415
    .local v19, "realmGet$message":Ljava/lang/String;
    if-eqz v19, :cond_9b

    .line 416
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->messageIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 418
    :cond_9b
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->dateIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$date()J

    move-result-wide v9

    const/16 v20, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move/from16 v11, v20

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 419
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->seenIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$seen()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 420
    return-wide v15
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 24
    .param p0, "realm"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 424
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lcom/digikala/dms/model/domain/ServerMessages;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 425
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 426
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    .line 427
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;
    const/4 v3, 0x0

    .line 428
    .local v3, "object":Lcom/digikala/dms/model/domain/ServerMessages;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_db

    .line 429
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/digikala/dms/model/domain/ServerMessages;

    .line 430
    .end local v3    # "object":Lcom/digikala/dms/model/domain/ServerMessages;
    .local v15, "object":Lcom/digikala/dms/model/domain/ServerMessages;
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 431
    goto/16 :goto_d8

    .line 433
    :cond_31
    instance-of v3, v15, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_72

    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_72

    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 434
    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    goto :goto_d8

    .line 437
    :cond_72
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 438
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v18

    .line 440
    .local v18, "realmGet$id":Ljava/lang/String;
    if-eqz v18, :cond_91

    .line 441
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->idIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 443
    :cond_91
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v19

    .line 444
    .local v19, "realmGet$title":Ljava/lang/String;
    if-eqz v19, :cond_a5

    .line 445
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->titleIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 447
    :cond_a5
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$message()Ljava/lang/String;

    move-result-object v20

    .line 448
    .local v20, "realmGet$message":Ljava/lang/String;
    if-eqz v20, :cond_b9

    .line 449
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->messageIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v20

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 451
    :cond_b9
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->dateIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$date()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 452
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->seenIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$seen()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 453
    .end local v16    # "rowIndex":J
    .end local v18    # "realmGet$id":Ljava/lang/String;
    .end local v19    # "realmGet$title":Ljava/lang/String;
    .end local v20    # "realmGet$message":Ljava/lang/String;
    nop

    .line 427
    :goto_d8
    move-object v3, v15

    goto/16 :goto_1c

    .line 454
    .end local v15    # "object":Lcom/digikala/dms/model/domain/ServerMessages;
    .restart local v3    # "object":Lcom/digikala/dms/model/domain/ServerMessages;
    :cond_db
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ServerMessages;Ljava/util/Map;)J
    .registers 24
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/ServerMessages;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/ServerMessages;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 457
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    instance-of v1, v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_3c

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_3c

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 458
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 460
    :cond_3c
    const-class v1, Lcom/digikala/dms/model/domain/ServerMessages;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 461
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 462
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    .line 463
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 464
    .local v15, "rowIndex":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v17

    .line 466
    .local v17, "realmGet$id":Ljava/lang/String;
    if-eqz v17, :cond_76

    .line 467
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->idIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7e

    .line 469
    :cond_76
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->idIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 471
    :goto_7e
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v18

    .line 472
    .local v18, "realmGet$title":Ljava/lang/String;
    if-eqz v18, :cond_92

    .line 473
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->titleIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9a

    .line 475
    :cond_92
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->titleIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 477
    :goto_9a
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$message()Ljava/lang/String;

    move-result-object v19

    .line 478
    .local v19, "realmGet$message":Ljava/lang/String;
    if-eqz v19, :cond_ae

    .line 479
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->messageIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b6

    .line 481
    :cond_ae
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->messageIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 483
    :goto_b6
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->dateIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$date()J

    move-result-wide v9

    const/16 v20, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move/from16 v11, v20

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 484
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->seenIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$seen()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 485
    return-wide v15
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 24
    .param p0, "realm"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 489
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lcom/digikala/dms/model/domain/ServerMessages;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 490
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 491
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    .line 492
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;
    const/4 v3, 0x0

    .line 493
    .local v3, "object":Lcom/digikala/dms/model/domain/ServerMessages;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fa

    .line 494
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/digikala/dms/model/domain/ServerMessages;

    .line 495
    .end local v3    # "object":Lcom/digikala/dms/model/domain/ServerMessages;
    .local v15, "object":Lcom/digikala/dms/model/domain/ServerMessages;
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 496
    goto/16 :goto_f7

    .line 498
    :cond_31
    instance-of v3, v15, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_73

    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_73

    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 499
    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    goto/16 :goto_f7

    .line 502
    :cond_73
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 503
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v18

    .line 505
    .local v18, "realmGet$id":Ljava/lang/String;
    if-eqz v18, :cond_93

    .line 506
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->idIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9c

    .line 508
    :cond_93
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->idIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 510
    :goto_9c
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v19

    .line 511
    .local v19, "realmGet$title":Ljava/lang/String;
    if-eqz v19, :cond_b1

    .line 512
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->titleIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_ba

    .line 514
    :cond_b1
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->titleIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 516
    :goto_ba
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$message()Ljava/lang/String;

    move-result-object v20

    .line 517
    .local v20, "realmGet$message":Ljava/lang/String;
    if-eqz v20, :cond_cf

    .line 518
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->messageIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v20

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d8

    .line 520
    :cond_cf
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->messageIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 522
    :goto_d8
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->dateIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$date()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 523
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->seenIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;->realmGet$seen()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 524
    .end local v16    # "rowIndex":J
    .end local v18    # "realmGet$id":Ljava/lang/String;
    .end local v19    # "realmGet$title":Ljava/lang/String;
    .end local v20    # "realmGet$message":Ljava/lang/String;
    nop

    .line 492
    :goto_f7
    move-object v3, v15

    goto/16 :goto_1c

    .line 525
    .end local v15    # "object":Lcom/digikala/dms/model/domain/ServerMessages;
    .restart local v3    # "object":Lcom/digikala/dms/model/domain/ServerMessages;
    :cond_fa
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 605
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 606
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 607
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;

    .line 609
    .local v2, "aServerMessages":Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;
    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 610
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 611
    .local v4, "otherPath":Ljava/lang/String;
    if-eqz v3, :cond_32

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    goto :goto_34

    :cond_32
    if-eqz v4, :cond_35

    :goto_34
    return v1

    .line 613
    :cond_35
    iget-object v5, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 614
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 615
    .local v6, "otherTableName":Ljava/lang/String;
    if-eqz v5, :cond_5a

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5d

    goto :goto_5c

    :cond_5a
    if-eqz v6, :cond_5d

    :goto_5c
    return v1

    .line 617
    :cond_5d
    iget-object v7, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 619
    :cond_76
    return v0

    .line 606
    .end local v2    # "aServerMessages":Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "otherPath":Ljava/lang/String;
    .end local v5    # "tableName":Ljava/lang/String;
    .end local v6    # "otherTableName":Ljava/lang/String;
    :cond_77
    :goto_77
    return v1
.end method

.method public hashCode()I
    .registers 9

    .line 592
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 596
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 597
    .local v4, "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/4 v6, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    goto :goto_2f

    :cond_2e
    const/4 v7, 0x0

    :goto_2f
    add-int/2addr v5, v7

    .line 598
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 599
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 600
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 87
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_5

    .line 88
    return-void

    .line 90
    :cond_5
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 91
    .local v0, "context":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    .line 92
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 93
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 94
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 95
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 96
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 97
    return-void
.end method

.method public realmGet$date()J
    .registers 4

    .line 192
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 193
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->dateIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .registers 4

    .line 102
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 103
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$message()Ljava/lang/String;
    .registers 4

    .line 162
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 163
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->messageIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/ProxyState<",
            "*>;"
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$seen()Z
    .registers 4

    .line 214
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 215
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->seenIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .registers 4

    .line 132
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 133
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->titleIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$date(J)V
    .registers 12
    .param p1, "value"    # J

    .line 198
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 199
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 200
    return-void

    .line 202
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 203
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->dateIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 204
    return-void

    .line 207
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 208
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->dateIndex:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setLong(JJ)V

    .line 209
    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 109
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 110
    return-void

    .line 112
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 113
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 114
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 115
    return-void

    .line 117
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 118
    return-void

    .line 121
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 122
    if-nez p1, :cond_55

    .line 123
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 124
    return-void

    .line 126
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 127
    return-void
.end method

.method public realmSet$message(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 169
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 170
    return-void

    .line 172
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 173
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 174
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->messageIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 175
    return-void

    .line 177
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->messageIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 178
    return-void

    .line 181
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 182
    if-nez p1, :cond_55

    .line 183
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->messageIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 184
    return-void

    .line 186
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->messageIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 187
    return-void
.end method

.method public realmSet$seen(Z)V
    .registers 10
    .param p1, "value"    # Z

    .line 220
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 221
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 222
    return-void

    .line 224
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 225
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->seenIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 226
    return-void

    .line 229
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 230
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->seenIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 231
    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 139
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 140
    return-void

    .line 142
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 143
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 144
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->titleIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 145
    return-void

    .line 147
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->titleIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 148
    return-void

    .line 151
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 152
    if-nez p1, :cond_55

    .line 153
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->titleIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 154
    return-void

    .line 156
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->titleIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 157
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 558
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 559
    const-string v0, "Invalid object"

    return-object v0

    .line 561
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServerMessages = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_21
    const-string v1, "null"

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    const-string/jumbo v1, "{title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    :cond_42
    const-string v1, "null"

    :goto_44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const-string/jumbo v1, "{message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->realmGet$message()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->realmGet$message()Ljava/lang/String;

    move-result-object v1

    goto :goto_65

    :cond_63
    const-string v1, "null"

    :goto_65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    const-string/jumbo v1, "{date:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->realmGet$date()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 576
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const-string/jumbo v1, "{seen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;->realmGet$seen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 580
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxy.ClassNameHelper (io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxy$ClassNameHelper)
.class public final Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "com_digikala_dms_model_domain_ServerMessagesRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "ServerMessages"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxy.ServerMessagesColumnInfo (io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo)
.class final Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_digikala_dms_model_domain_ServerMessagesRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServerMessagesColumnInfo"
.end annotation


# instance fields
.field dateIndex:J

.field idIndex:J

.field messageIndex:J

.field seenIndex:J

.field titleIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 55
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 56
    invoke-virtual {p0, p1, p0}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    .line 57
    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 5
    .param p1, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 45
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 46
    const-string v0, "ServerMessages"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 47
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->idIndex:J

    .line 48
    const-string/jumbo v1, "title"

    const-string/jumbo v2, "title"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->titleIndex:J

    .line 49
    const-string v1, "message"

    const-string v2, "message"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->messageIndex:J

    .line 50
    const-string v1, "date"

    const-string v2, "date"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->dateIndex:J

    .line 51
    const-string v1, "seen"

    const-string v2, "seen"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->seenIndex:J

    .line 52
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 61
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 66
    move-object v0, p1

    check-cast v0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    .line 67
    .local v0, "src":Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;

    .line 68
    .local v1, "dst":Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->idIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->idIndex:J

    .line 69
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->titleIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->titleIndex:J

    .line 70
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->messageIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->messageIndex:J

    .line 71
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->dateIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->dateIndex:J

    .line 72
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->seenIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxy$ServerMessagesColumnInfo;->seenIndex:J

    .line 73
    return-void
.end method
