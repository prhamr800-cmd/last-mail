###### Class io.realm.com_digikala_dms_model_domain_RejectReasonRealmProxy (io.realm.com_digikala_dms_model_domain_RejectReasonRealmProxy)
.class public Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;
.super Lcom/digikala/dms/model/domain/RejectReason;
.source "com_digikala_dms_model_domain_RejectReasonRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$ClassNameHelper;,
        Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/digikala/dms/model/domain/RejectReason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Lcom/digikala/dms/model/domain/RejectReason;-><init>()V

    .line 76
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 77
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/digikala/dms/model/domain/RejectReason;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/RejectReason;
    .registers 9
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lcom/digikala/dms/model/domain/RejectReason;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/RejectReason;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/domain/RejectReason;"
        }
    .end annotation

    .line 297
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 298
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 299
    move-object v1, v0

    check-cast v1, Lcom/digikala/dms/model/domain/RejectReason;

    return-object v1

    .line 303
    :cond_c
    const-class v1, Lcom/digikala/dms/model/domain/RejectReason;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/RejectReason;

    .line 304
    .local v1, "realmObject":Lcom/digikala/dms/model/domain/RejectReason;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;

    .line 307
    .local v2, "realmObjectSource":Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;
    move-object v3, v1

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;

    .line 309
    .local v3, "realmObjectCopy":Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    .line 310
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 311
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    .line 312
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/RejectReason;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/RejectReason;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/RejectReason;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/RejectReason;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/domain/RejectReason;"
        }
    .end annotation

    .line 278
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

    .line 279
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 280
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_33

    .line 283
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 284
    return-object p1

    .line 281
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_3b
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    .line 288
    .local v0, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    .line 289
    .local v1, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v1, :cond_4d

    .line 290
    move-object v2, v1

    check-cast v2, Lcom/digikala/dms/model/domain/RejectReason;

    return-object v2

    .line 293
    :cond_4d
    invoke-static {p0, p1, p2, p3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->copy(Lio/realm/Realm;Lcom/digikala/dms/model/domain/RejectReason;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/RejectReason;

    move-result-object v2

    return-object v2
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 196
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/digikala/dms/model/domain/RejectReason;IILjava/util/Map;)Lcom/digikala/dms/model/domain/RejectReason;
    .registers 9
    .param p0, "realmObject"    # Lcom/digikala/dms/model/domain/RejectReason;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/model/domain/RejectReason;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/digikala/dms/model/domain/RejectReason;"
        }
    .end annotation

    .line 438
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    if-gt p1, p2, :cond_46

    if-nez p0, :cond_5

    goto :goto_46

    .line 441
    :cond_5
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 443
    .local v0, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v0, :cond_1b

    .line 444
    new-instance v1, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-direct {v1}, Lcom/digikala/dms/model/domain/RejectReason;-><init>()V

    .line 445
    .local v1, "unmanagedObject":Lcom/digikala/dms/model/domain/RejectReason;
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 448
    .end local v1    # "unmanagedObject":Lcom/digikala/dms/model/domain/RejectReason;
    :cond_1b
    iget v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v1, :cond_24

    .line 449
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/digikala/dms/model/domain/RejectReason;

    return-object v1

    .line 451
    :cond_24
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/digikala/dms/model/domain/RejectReason;

    .line 452
    .restart local v1    # "unmanagedObject":Lcom/digikala/dms/model/domain/RejectReason;
    iput p1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 454
    :goto_2a
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;

    .line 455
    .local v2, "unmanagedCopy":Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;
    move-object v3, p0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;

    .line 456
    .local v3, "realmSource":Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    .line 457
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 458
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    .line 460
    return-object v1

    .line 439
    .end local v0    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v1    # "unmanagedObject":Lcom/digikala/dms/model/domain/RejectReason;
    .end local v2    # "unmanagedCopy":Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;
    .end local v3    # "realmSource":Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;
    :cond_46
    :goto_46
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 12

    .line 184
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "RejectReason"

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 185
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string/jumbo v1, "title"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 186
    const-string v7, "id"

    sget-object v8, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 187
    const-string/jumbo v2, "type"

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 188
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/RejectReason;
    .registers 8
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 211
    .local v0, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Lcom/digikala/dms/model/domain/RejectReason;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/RejectReason;

    .line 213
    .local v1, "obj":Lcom/digikala/dms/model/domain/RejectReason;
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;

    .line 214
    .local v2, "objProxy":Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_31

    .line 215
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 216
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto :goto_31

    .line 218
    :cond_27
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    .line 221
    :cond_31
    :goto_31
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 222
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 223
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto :goto_4e

    .line 225
    :cond_45
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 228
    :cond_4e
    :goto_4e
    const-string/jumbo v3, "type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 229
    const-string/jumbo v3, "type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 230
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    goto :goto_6e

    .line 232
    :cond_64
    const-string/jumbo v3, "type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    .line 235
    :cond_6e
    :goto_6e
    return-object v1
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/RejectReason;
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

    .line 242
    new-instance v0, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-direct {v0}, Lcom/digikala/dms/model/domain/RejectReason;-><init>()V

    .line 243
    .local v0, "obj":Lcom/digikala/dms/model/domain/RejectReason;
    move-object v1, v0

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;

    .line 244
    .local v1, "objProxy":Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 245
    :goto_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 246
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_36

    .line 249
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_2f

    .line 250
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto :goto_78

    .line 252
    :cond_2f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 253
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto :goto_78

    .line 255
    :cond_36
    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 256
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_4e

    .line 257
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto :goto_78

    .line 259
    :cond_4e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 260
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto :goto_78

    .line 262
    :cond_55
    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 263
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_6e

    .line 264
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    goto :goto_78

    .line 266
    :cond_6e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 267
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmSet$type(Ljava/lang/String;)V

    goto :goto_78

    .line 270
    :cond_75
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 272
    .end local v2    # "name":Ljava/lang/String;
    :goto_78
    goto :goto_b

    .line 273
    :cond_79
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 274
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/RejectReason;

    return-object v2
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 192
    sget-object v0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 200
    const-string v0, "RejectReason"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/RejectReason;Ljava/util/Map;)J
    .registers 22
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/RejectReason;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/RejectReason;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 316
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

    .line 317
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 319
    :cond_3c
    const-class v1, Lcom/digikala/dms/model/domain/RejectReason;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 320
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 321
    .local v11, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    .line 322
    .local v13, "columnInfo":Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v14

    .line 323
    .local v14, "rowIndex":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v10, p2

    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v16

    .line 325
    .local v16, "realmGet$title":Ljava/lang/String;
    if-eqz v16, :cond_78

    .line 326
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->titleIndex:J

    const/16 v17, 0x0

    move-wide v3, v11

    move-wide v7, v14

    move-object/from16 v9, v16

    move/from16 v10, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 328
    :cond_78
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v17

    .line 329
    .local v17, "realmGet$id":Ljava/lang/String;
    if-eqz v17, :cond_8b

    .line 330
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->idIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 332
    :cond_8b
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object v18

    .line 333
    .local v18, "realmGet$type":Ljava/lang/String;
    if-eqz v18, :cond_9e

    .line 334
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->typeIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 336
    :cond_9e
    return-wide v14
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 23
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

    .line 340
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lcom/digikala/dms/model/domain/RejectReason;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 341
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 342
    .local v11, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    .line 343
    .local v13, "columnInfo":Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;
    const/4 v3, 0x0

    .line 344
    .local v3, "object":Lcom/digikala/dms/model/domain/RejectReason;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 345
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/digikala/dms/model/domain/RejectReason;

    .line 346
    .end local v3    # "object":Lcom/digikala/dms/model/domain/RejectReason;
    .local v14, "object":Lcom/digikala/dms/model/domain/RejectReason;
    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 347
    goto/16 :goto_b7

    .line 349
    :cond_31
    instance-of v3, v14, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_72

    move-object v3, v14

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_72

    move-object v3, v14

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

    .line 350
    move-object v3, v14

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    goto :goto_b7

    .line 353
    :cond_72
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 354
    .local v15, "rowIndex":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v17

    .line 356
    .local v17, "realmGet$title":Ljava/lang/String;
    if-eqz v17, :cond_90

    .line 357
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->titleIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 359
    :cond_90
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v18

    .line 360
    .local v18, "realmGet$id":Ljava/lang/String;
    if-eqz v18, :cond_a3

    .line 361
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->idIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 363
    :cond_a3
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object v19

    .line 364
    .local v19, "realmGet$type":Ljava/lang/String;
    if-eqz v19, :cond_b6

    .line 365
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->typeIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 367
    .end local v15    # "rowIndex":J
    .end local v17    # "realmGet$title":Ljava/lang/String;
    .end local v18    # "realmGet$id":Ljava/lang/String;
    .end local v19    # "realmGet$type":Ljava/lang/String;
    :cond_b6
    nop

    .line 343
    :goto_b7
    move-object v3, v14

    goto/16 :goto_1c

    .line 368
    .end local v14    # "object":Lcom/digikala/dms/model/domain/RejectReason;
    .restart local v3    # "object":Lcom/digikala/dms/model/domain/RejectReason;
    :cond_ba
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/RejectReason;Ljava/util/Map;)J
    .registers 22
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/RejectReason;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/RejectReason;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 371
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

    .line 372
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 374
    :cond_3c
    const-class v1, Lcom/digikala/dms/model/domain/RejectReason;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 375
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 376
    .local v11, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    .line 377
    .local v13, "columnInfo":Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v14

    .line 378
    .local v14, "rowIndex":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v10, p2

    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v16

    .line 380
    .local v16, "realmGet$title":Ljava/lang/String;
    if-eqz v16, :cond_79

    .line 381
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->titleIndex:J

    const/16 v17, 0x0

    move-wide v3, v11

    move-wide v7, v14

    move-object/from16 v9, v16

    move/from16 v10, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_81

    .line 383
    :cond_79
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->titleIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 385
    :goto_81
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v17

    .line 386
    .local v17, "realmGet$id":Ljava/lang/String;
    if-eqz v17, :cond_95

    .line 387
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->idIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9d

    .line 389
    :cond_95
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->idIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 391
    :goto_9d
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object v18

    .line 392
    .local v18, "realmGet$type":Ljava/lang/String;
    if-eqz v18, :cond_b1

    .line 393
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->typeIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b9

    .line 395
    :cond_b1
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->typeIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 397
    :goto_b9
    return-wide v14
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 23
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

    .line 401
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lcom/digikala/dms/model/domain/RejectReason;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 402
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 403
    .local v11, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    .line 404
    .local v13, "columnInfo":Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;
    const/4 v3, 0x0

    .line 405
    .local v3, "object":Lcom/digikala/dms/model/domain/RejectReason;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d6

    .line 406
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/digikala/dms/model/domain/RejectReason;

    .line 407
    .end local v3    # "object":Lcom/digikala/dms/model/domain/RejectReason;
    .local v14, "object":Lcom/digikala/dms/model/domain/RejectReason;
    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 408
    goto/16 :goto_d3

    .line 410
    :cond_31
    instance-of v3, v14, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_73

    move-object v3, v14

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_73

    move-object v3, v14

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

    .line 411
    move-object v3, v14

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    goto/16 :goto_d3

    .line 414
    :cond_73
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 415
    .local v15, "rowIndex":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v17

    .line 417
    .local v17, "realmGet$title":Ljava/lang/String;
    if-eqz v17, :cond_92

    .line 418
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->titleIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9a

    .line 420
    :cond_92
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->titleIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 422
    :goto_9a
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v18

    .line 423
    .local v18, "realmGet$id":Ljava/lang/String;
    if-eqz v18, :cond_ae

    .line 424
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->idIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b6

    .line 426
    :cond_ae
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->idIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 428
    :goto_b6
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;->realmGet$type()Ljava/lang/String;

    move-result-object v19

    .line 429
    .local v19, "realmGet$type":Ljava/lang/String;
    if-eqz v19, :cond_ca

    .line 430
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->typeIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d2

    .line 432
    :cond_ca
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->typeIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 434
    .end local v15    # "rowIndex":J
    .end local v17    # "realmGet$title":Ljava/lang/String;
    .end local v18    # "realmGet$id":Ljava/lang/String;
    .end local v19    # "realmGet$type":Ljava/lang/String;
    :goto_d2
    nop

    .line 404
    :goto_d3
    move-object v3, v14

    goto/16 :goto_1c

    .line 435
    .end local v14    # "object":Lcom/digikala/dms/model/domain/RejectReason;
    .restart local v3    # "object":Lcom/digikala/dms/model/domain/RejectReason;
    :cond_d6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 505
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 506
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 507
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;

    .line 509
    .local v2, "aRejectReason":Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;
    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 510
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 511
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

    .line 513
    :cond_35
    iget-object v5, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 514
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 515
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

    .line 517
    :cond_5d
    iget-object v7, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 519
    :cond_76
    return v0

    .line 506
    .end local v2    # "aRejectReason":Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;
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

    .line 492
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 496
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 497
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

    .line 498
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 499
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 500
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 81
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_5

    .line 82
    return-void

    .line 84
    :cond_5
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 85
    .local v0, "context":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    .line 86
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 87
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 88
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 89
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 90
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 91
    return-void
.end method

.method public realmGet$id()Ljava/lang/String;
    .registers 4

    .line 126
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 127
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->idIndex:J

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

    .line 487
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .registers 4

    .line 96
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 97
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->titleIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$type()Ljava/lang/String;
    .registers 4

    .line 156
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 157
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->typeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 133
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 134
    return-void

    .line 136
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 137
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 138
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 139
    return-void

    .line 141
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 142
    return-void

    .line 145
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 146
    if-nez p1, :cond_55

    .line 147
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 148
    return-void

    .line 150
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 151
    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 103
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 104
    return-void

    .line 106
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 107
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 108
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->titleIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 109
    return-void

    .line 111
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->titleIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 112
    return-void

    .line 115
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 116
    if-nez p1, :cond_55

    .line 117
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->titleIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 118
    return-void

    .line 120
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->titleIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 121
    return-void
.end method

.method public realmSet$type(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 163
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 164
    return-void

    .line 166
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 167
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 168
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->typeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 169
    return-void

    .line 171
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->typeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 172
    return-void

    .line 175
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 176
    if-nez p1, :cond_55

    .line 177
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->typeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 178
    return-void

    .line 180
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->typeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 466
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 467
    const-string v0, "Invalid object"

    return-object v0

    .line 469
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RejectReason = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 470
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_21
    const-string v1, "null"

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    const-string/jumbo v1, "{id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    :cond_42
    const-string v1, "null"

    :goto_44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string/jumbo v1, "{type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    goto :goto_65

    :cond_63
    const-string v1, "null"

    :goto_65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.com_digikala_dms_model_domain_RejectReasonRealmProxy.ClassNameHelper (io.realm.com_digikala_dms_model_domain_RejectReasonRealmProxy$ClassNameHelper)
.class public final Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "com_digikala_dms_model_domain_RejectReasonRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "RejectReason"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.realm.com_digikala_dms_model_domain_RejectReasonRealmProxy.RejectReasonColumnInfo (io.realm.com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo)
.class final Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_digikala_dms_model_domain_RejectReasonRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RejectReasonColumnInfo"
.end annotation


# instance fields
.field idIndex:J

.field titleIndex:J

.field typeIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 51
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 52
    invoke-virtual {p0, p1, p0}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    .line 53
    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 5
    .param p1, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 43
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 44
    const-string v0, "RejectReason"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 45
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string/jumbo v1, "title"

    const-string/jumbo v2, "title"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->titleIndex:J

    .line 46
    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->idIndex:J

    .line 47
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "type"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->typeIndex:J

    .line 48
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 57
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 62
    move-object v0, p1

    check-cast v0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    .line 63
    .local v0, "src":Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;

    .line 64
    .local v1, "dst":Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->titleIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->titleIndex:J

    .line 65
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->idIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->idIndex:J

    .line 66
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->typeIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxy$RejectReasonColumnInfo;->typeIndex:J

    .line 67
    return-void
.end method
