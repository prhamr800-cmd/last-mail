###### Class io.realm.com_digikala_dms_model_design_QuestionRealmProxy (io.realm.com_digikala_dms_model_design_QuestionRealmProxy)
.class public Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;
.super Lcom/digikala/dms/model/design/Question;
.source "com_digikala_dms_model_design_QuestionRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$ClassNameHelper;,
        Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/digikala/dms/model/design/Question;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 73
    invoke-static {}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Lcom/digikala/dms/model/design/Question;-><init>()V

    .line 79
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 80
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/digikala/dms/model/design/Question;ZLjava/util/Map;)Lcom/digikala/dms/model/design/Question;
    .registers 9
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lcom/digikala/dms/model/design/Question;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/design/Question;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/design/Question;"
        }
    .end annotation

    .line 340
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 341
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 342
    move-object v1, v0

    check-cast v1, Lcom/digikala/dms/model/design/Question;

    return-object v1

    .line 346
    :cond_c
    const-class v1, Lcom/digikala/dms/model/design/Question;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/design/Question;

    .line 347
    .local v1, "realmObject":Lcom/digikala/dms/model/design/Question;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    .line 350
    .local v2, "realmObjectSource":Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;
    move-object v3, v1

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    .line 352
    .local v3, "realmObjectCopy":Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$id()I

    move-result v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$id(I)V

    .line 353
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$Question()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$Question(Ljava/lang/String;)V

    .line 354
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$Type()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$Type(Ljava/lang/String;)V

    .line 355
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$IsRequired()Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$IsRequired(Ljava/lang/Boolean;)V

    .line 356
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/Question;ZLjava/util/Map;)Lcom/digikala/dms/model/design/Question;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/design/Question;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/design/Question;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/design/Question;"
        }
    .end annotation

    .line 321
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

    .line 322
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 323
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_33

    .line 326
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 327
    return-object p1

    .line 324
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_3b
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    .line 331
    .local v0, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    .line 332
    .local v1, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v1, :cond_4d

    .line 333
    move-object v2, v1

    check-cast v2, Lcom/digikala/dms/model/design/Question;

    return-object v2

    .line 336
    :cond_4d
    invoke-static {p0, p1, p2, p3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->copy(Lio/realm/Realm;Lcom/digikala/dms/model/design/Question;ZLjava/util/Map;)Lcom/digikala/dms/model/design/Question;

    move-result-object v2

    return-object v2
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 225
    new-instance v0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/digikala/dms/model/design/Question;IILjava/util/Map;)Lcom/digikala/dms/model/design/Question;
    .registers 9
    .param p0, "realmObject"    # Lcom/digikala/dms/model/design/Question;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/model/design/Question;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/digikala/dms/model/design/Question;"
        }
    .end annotation

    .line 486
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    if-gt p1, p2, :cond_4d

    if-nez p0, :cond_5

    goto :goto_4d

    .line 489
    :cond_5
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 491
    .local v0, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v0, :cond_1b

    .line 492
    new-instance v1, Lcom/digikala/dms/model/design/Question;

    invoke-direct {v1}, Lcom/digikala/dms/model/design/Question;-><init>()V

    .line 493
    .local v1, "unmanagedObject":Lcom/digikala/dms/model/design/Question;
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 496
    .end local v1    # "unmanagedObject":Lcom/digikala/dms/model/design/Question;
    :cond_1b
    iget v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v1, :cond_24

    .line 497
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/digikala/dms/model/design/Question;

    return-object v1

    .line 499
    :cond_24
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/digikala/dms/model/design/Question;

    .line 500
    .restart local v1    # "unmanagedObject":Lcom/digikala/dms/model/design/Question;
    iput p1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 502
    :goto_2a
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    .line 503
    .local v2, "unmanagedCopy":Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;
    move-object v3, p0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    .line 504
    .local v3, "realmSource":Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$id()I

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$id(I)V

    .line 505
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$Question()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$Question(Ljava/lang/String;)V

    .line 506
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$Type()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$Type(Ljava/lang/String;)V

    .line 507
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$IsRequired()Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$IsRequired(Ljava/lang/Boolean;)V

    .line 509
    return-object v1

    .line 487
    .end local v0    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v1    # "unmanagedObject":Lcom/digikala/dms/model/design/Question;
    .end local v2    # "unmanagedCopy":Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;
    .end local v3    # "realmSource":Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;
    :cond_4d
    :goto_4d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 13

    .line 212
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "Question"

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 213
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string v1, "id"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 214
    const-string v7, "Question"

    sget-object v8, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 215
    const-string v2, "Type"

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 216
    const-string v8, "IsRequired"

    sget-object v9, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v12, 0x0

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 217
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/design/Question;
    .registers 8
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 239
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 240
    .local v0, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Lcom/digikala/dms/model/design/Question;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/design/Question;

    .line 242
    .local v1, "obj":Lcom/digikala/dms/model/design/Question;
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    .line 243
    .local v2, "objProxy":Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 244
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 247
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$id(I)V

    goto :goto_32

    .line 245
    :cond_2a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'id\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 250
    :cond_32
    :goto_32
    const-string v3, "Question"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_50

    .line 251
    const-string v3, "Question"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 252
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$Question(Ljava/lang/String;)V

    goto :goto_50

    .line 254
    :cond_47
    const-string v3, "Question"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$Question(Ljava/lang/String;)V

    .line 257
    :cond_50
    :goto_50
    const-string v3, "Type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 258
    const-string v3, "Type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 259
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$Type(Ljava/lang/String;)V

    goto :goto_6d

    .line 261
    :cond_64
    const-string v3, "Type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$Type(Ljava/lang/String;)V

    .line 264
    :cond_6d
    :goto_6d
    const-string v3, "IsRequired"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 265
    const-string v3, "IsRequired"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 266
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$IsRequired(Ljava/lang/Boolean;)V

    goto :goto_8e

    .line 268
    :cond_81
    const-string v3, "IsRequired"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$IsRequired(Ljava/lang/Boolean;)V

    .line 271
    :cond_8e
    :goto_8e
    return-object v1
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/design/Question;
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

    .line 278
    new-instance v0, Lcom/digikala/dms/model/design/Question;

    invoke-direct {v0}, Lcom/digikala/dms/model/design/Question;-><init>()V

    .line 279
    .local v0, "obj":Lcom/digikala/dms/model/design/Question;
    move-object v1, v0

    check-cast v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    .line 280
    .local v1, "objProxy":Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 281
    :goto_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 282
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "name":Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 285
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_2e

    .line 286
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$id(I)V

    goto/16 :goto_9e

    .line 288
    :cond_2e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 289
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'id\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 291
    :cond_39
    const-string v3, "Question"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_59

    .line 292
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_52

    .line 293
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$Question(Ljava/lang/String;)V

    goto :goto_9e

    .line 295
    :cond_52
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 296
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$Question(Ljava/lang/String;)V

    goto :goto_9e

    .line 298
    :cond_59
    const-string v3, "Type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 299
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_71

    .line 300
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$Type(Ljava/lang/String;)V

    goto :goto_9e

    .line 302
    :cond_71
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 303
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$Type(Ljava/lang/String;)V

    goto :goto_9e

    .line 305
    :cond_78
    const-string v3, "IsRequired"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 306
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_94

    .line 307
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$IsRequired(Ljava/lang/Boolean;)V

    goto :goto_9e

    .line 309
    :cond_94
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 310
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmSet$IsRequired(Ljava/lang/Boolean;)V

    goto :goto_9e

    .line 313
    :cond_9b
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 315
    .end local v2    # "name":Ljava/lang/String;
    :goto_9e
    goto/16 :goto_b

    .line 316
    :cond_a0
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 317
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/design/Question;

    return-object v2
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 221
    sget-object v0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 229
    const-string v0, "Question"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/Question;Ljava/util/Map;)J
    .registers 22
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/design/Question;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/design/Question;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 360
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

    .line 361
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 363
    :cond_3c
    const-class v1, Lcom/digikala/dms/model/design/Question;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 364
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 365
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/design/Question;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    .line 366
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 367
    .local v15, "rowIndex":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->idIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$id()I

    move-result v3

    int-to-long v9, v3

    const/16 v17, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move/from16 v11, v17

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 369
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$Question()Ljava/lang/String;

    move-result-object v11

    .line 370
    .local v11, "realmGet$Question":Ljava/lang/String;
    if-eqz v11, :cond_87

    .line 371
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->QuestionIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 373
    :cond_87
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$Type()Ljava/lang/String;

    move-result-object v17

    .line 374
    .local v17, "realmGet$Type":Ljava/lang/String;
    if-eqz v17, :cond_9a

    .line 375
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->TypeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 377
    :cond_9a
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$IsRequired()Ljava/lang/Boolean;

    move-result-object v18

    .line 378
    .local v18, "realmGet$IsRequired":Ljava/lang/Boolean;
    if-eqz v18, :cond_af

    .line 379
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->IsRequiredIndex:J

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 381
    :cond_af
    return-wide v15
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

    .line 385
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lcom/digikala/dms/model/design/Question;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 386
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 387
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/design/Question;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    .line 388
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;
    const/4 v3, 0x0

    .line 389
    .local v3, "object":Lcom/digikala/dms/model/design/Question;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 390
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/digikala/dms/model/design/Question;

    .line 391
    .end local v3    # "object":Lcom/digikala/dms/model/design/Question;
    .local v15, "object":Lcom/digikala/dms/model/design/Question;
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 392
    goto/16 :goto_cc

    .line 394
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

    .line 395
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

    .line 396
    goto :goto_cc

    .line 398
    :cond_72
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 399
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->idIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$id()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 401
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$Question()Ljava/lang/String;

    move-result-object v11

    .line 402
    .local v11, "realmGet$Question":Ljava/lang/String;
    if-eqz v11, :cond_a1

    .line 403
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->QuestionIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 405
    :cond_a1
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$Type()Ljava/lang/String;

    move-result-object v18

    .line 406
    .local v18, "realmGet$Type":Ljava/lang/String;
    if-eqz v18, :cond_b5

    .line 407
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->TypeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 409
    :cond_b5
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$IsRequired()Ljava/lang/Boolean;

    move-result-object v19

    .line 410
    .local v19, "realmGet$IsRequired":Ljava/lang/Boolean;
    if-eqz v19, :cond_cb

    .line 411
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->IsRequiredIndex:J

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 413
    .end local v11    # "realmGet$Question":Ljava/lang/String;
    .end local v16    # "rowIndex":J
    .end local v18    # "realmGet$Type":Ljava/lang/String;
    .end local v19    # "realmGet$IsRequired":Ljava/lang/Boolean;
    :cond_cb
    nop

    .line 388
    :goto_cc
    move-object v3, v15

    goto/16 :goto_1c

    .line 414
    .end local v15    # "object":Lcom/digikala/dms/model/design/Question;
    .restart local v3    # "object":Lcom/digikala/dms/model/design/Question;
    :cond_cf
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/Question;Ljava/util/Map;)J
    .registers 22
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/design/Question;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/design/Question;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 417
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

    .line 418
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 420
    :cond_3c
    const-class v1, Lcom/digikala/dms/model/design/Question;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 421
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 422
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/design/Question;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    .line 423
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 424
    .local v15, "rowIndex":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->idIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$id()I

    move-result v3

    int-to-long v9, v3

    const/16 v17, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move/from16 v11, v17

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 426
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$Question()Ljava/lang/String;

    move-result-object v11

    .line 427
    .local v11, "realmGet$Question":Ljava/lang/String;
    if-eqz v11, :cond_88

    .line 428
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->QuestionIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_90

    .line 430
    :cond_88
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->QuestionIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 432
    :goto_90
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$Type()Ljava/lang/String;

    move-result-object v17

    .line 433
    .local v17, "realmGet$Type":Ljava/lang/String;
    if-eqz v17, :cond_a4

    .line 434
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->TypeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_ac

    .line 436
    :cond_a4
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->TypeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 438
    :goto_ac
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$IsRequired()Ljava/lang/Boolean;

    move-result-object v18

    .line 439
    .local v18, "realmGet$IsRequired":Ljava/lang/Boolean;
    if-eqz v18, :cond_c2

    .line 440
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->IsRequiredIndex:J

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_ca

    .line 442
    :cond_c2
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->IsRequiredIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 444
    :goto_ca
    return-wide v15
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

    .line 448
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lcom/digikala/dms/model/design/Question;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 449
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 450
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/design/Question;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    .line 451
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;
    const/4 v3, 0x0

    .line 452
    .local v3, "object":Lcom/digikala/dms/model/design/Question;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ee

    .line 453
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/digikala/dms/model/design/Question;

    .line 454
    .end local v3    # "object":Lcom/digikala/dms/model/design/Question;
    .local v15, "object":Lcom/digikala/dms/model/design/Question;
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 455
    goto/16 :goto_eb

    .line 457
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

    .line 458
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

    .line 459
    goto/16 :goto_eb

    .line 461
    :cond_73
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 462
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->idIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$id()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 464
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$Question()Ljava/lang/String;

    move-result-object v11

    .line 465
    .local v11, "realmGet$Question":Ljava/lang/String;
    if-eqz v11, :cond_a3

    .line 466
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->QuestionIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_ac

    .line 468
    :cond_a3
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->QuestionIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 470
    :goto_ac
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$Type()Ljava/lang/String;

    move-result-object v18

    .line 471
    .local v18, "realmGet$Type":Ljava/lang/String;
    if-eqz v18, :cond_c1

    .line 472
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->TypeIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_ca

    .line 474
    :cond_c1
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->TypeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 476
    :goto_ca
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxyInterface;->realmGet$IsRequired()Ljava/lang/Boolean;

    move-result-object v19

    .line 477
    .local v19, "realmGet$IsRequired":Ljava/lang/Boolean;
    if-eqz v19, :cond_e1

    .line 478
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->IsRequiredIndex:J

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_ea

    .line 480
    :cond_e1
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->IsRequiredIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 482
    .end local v11    # "realmGet$Question":Ljava/lang/String;
    .end local v16    # "rowIndex":J
    .end local v18    # "realmGet$Type":Ljava/lang/String;
    .end local v19    # "realmGet$IsRequired":Ljava/lang/Boolean;
    :goto_ea
    nop

    .line 451
    :goto_eb
    move-object v3, v15

    goto/16 :goto_1c

    .line 483
    .end local v15    # "object":Lcom/digikala/dms/model/design/Question;
    .restart local v3    # "object":Lcom/digikala/dms/model/design/Question;
    :cond_ee
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 558
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 559
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 560
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;

    .line 562
    .local v2, "aQuestion":Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;
    iget-object v3, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 563
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 564
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

    .line 566
    :cond_35
    iget-object v5, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 567
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 568
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

    .line 570
    :cond_5d
    iget-object v7, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 572
    :cond_76
    return v0

    .line 559
    .end local v2    # "aQuestion":Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;
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

    .line 545
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 549
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 550
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

    .line 551
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 552
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 553
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 84
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_5

    .line 85
    return-void

    .line 87
    :cond_5
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 88
    .local v0, "context":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    .line 89
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 90
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 91
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 92
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 93
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 94
    return-void
.end method

.method public realmGet$IsRequired()Ljava/lang/Boolean;
    .registers 4

    .line 181
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 182
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->IsRequiredIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_1b
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->IsRequiredIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$Question()Ljava/lang/String;
    .registers 4

    .line 121
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 122
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->QuestionIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$Type()Ljava/lang/String;
    .registers 4

    .line 151
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 152
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->TypeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()I
    .registers 4

    .line 99
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 100
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
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

    .line 540
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmSet$IsRequired(Ljava/lang/Boolean;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 190
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 191
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 192
    return-void

    .line 194
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 195
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 196
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->IsRequiredIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 197
    return-void

    .line 199
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->IsRequiredIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 200
    return-void

    .line 203
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3f
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 204
    if-nez p1, :cond_58

    .line 205
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->IsRequiredIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 206
    return-void

    .line 208
    :cond_58
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->IsRequiredIndex:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 209
    return-void
.end method

.method public realmSet$Question(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 128
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 129
    return-void

    .line 131
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 132
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 133
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->QuestionIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 134
    return-void

    .line 136
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->QuestionIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 137
    return-void

    .line 140
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 141
    if-nez p1, :cond_55

    .line 142
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->QuestionIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 143
    return-void

    .line 145
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->QuestionIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 146
    return-void
.end method

.method public realmSet$Type(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 158
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 159
    return-void

    .line 161
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 162
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 163
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->TypeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 164
    return-void

    .line 166
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->TypeIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 167
    return-void

    .line 170
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 171
    if-nez p1, :cond_55

    .line 172
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->TypeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 173
    return-void

    .line 175
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->TypeIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 176
    return-void
.end method

.method public realmSet$id(I)V
    .registers 11
    .param p1, "value"    # I

    .line 105
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 106
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 107
    return-void

    .line 109
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 110
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 111
    return-void

    .line 114
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 115
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->idIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    .line 116
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 515
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 516
    const-string v0, "Invalid object"

    return-object v0

    .line 518
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Question = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->realmGet$id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 521
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const-string/jumbo v1, "{Question:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->realmGet$Question()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->realmGet$Question()Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    :cond_39
    const-string v1, "null"

    :goto_3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string/jumbo v1, "{Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->realmGet$Type()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5a

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->realmGet$Type()Ljava/lang/String;

    move-result-object v1

    goto :goto_5c

    :cond_5a
    const-string v1, "null"

    :goto_5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    const-string/jumbo v1, "{IsRequired:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->realmGet$IsRequired()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_7b

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;->realmGet$IsRequired()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_7d

    :cond_7b
    const-string v1, "null"

    :goto_7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 533
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.com_digikala_dms_model_design_QuestionRealmProxy.ClassNameHelper (io.realm.com_digikala_dms_model_design_QuestionRealmProxy$ClassNameHelper)
.class public final Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "com_digikala_dms_model_design_QuestionRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "Question"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.realm.com_digikala_dms_model_design_QuestionRealmProxy.QuestionColumnInfo (io.realm.com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo)
.class final Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_digikala_dms_model_design_QuestionRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QuestionColumnInfo"
.end annotation


# instance fields
.field IsRequiredIndex:J

.field QuestionIndex:J

.field TypeIndex:J

.field idIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 53
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 54
    invoke-virtual {p0, p1, p0}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    .line 55
    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 5
    .param p1, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 44
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 45
    const-string v0, "Question"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 46
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->idIndex:J

    .line 47
    const-string v1, "Question"

    const-string v2, "Question"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->QuestionIndex:J

    .line 48
    const-string v1, "Type"

    const-string v2, "Type"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->TypeIndex:J

    .line 49
    const-string v1, "IsRequired"

    const-string v2, "IsRequired"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->IsRequiredIndex:J

    .line 50
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 59
    new-instance v0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 64
    move-object v0, p1

    check-cast v0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    .line 65
    .local v0, "src":Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;

    .line 66
    .local v1, "dst":Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->idIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->idIndex:J

    .line 67
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->QuestionIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->QuestionIndex:J

    .line 68
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->TypeIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->TypeIndex:J

    .line 69
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->IsRequiredIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_design_QuestionRealmProxy$QuestionColumnInfo;->IsRequiredIndex:J

    .line 70
    return-void
.end method
