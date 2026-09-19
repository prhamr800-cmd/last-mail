###### Class io.realm.com_digikala_dms_model_domain_UnprocessedReasonRealmProxy (io.realm.com_digikala_dms_model_domain_UnprocessedReasonRealmProxy)
.class public Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;
.super Lcom/digikala/dms/model/domain/UnprocessedReason;
.source "com_digikala_dms_model_domain_UnprocessedReasonRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$ClassNameHelper;,
        Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/digikala/dms/model/domain/UnprocessedReason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Lcom/digikala/dms/model/domain/UnprocessedReason;-><init>()V

    .line 73
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 74
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/digikala/dms/model/domain/UnprocessedReason;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/UnprocessedReason;
    .registers 9
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lcom/digikala/dms/model/domain/UnprocessedReason;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/UnprocessedReason;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/domain/UnprocessedReason;"
        }
    .end annotation

    .line 249
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 250
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 251
    move-object v1, v0

    check-cast v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    return-object v1

    .line 255
    :cond_c
    const-class v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    .line 256
    .local v1, "realmObject":Lcom/digikala/dms/model/domain/UnprocessedReason;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;

    .line 259
    .local v2, "realmObjectSource":Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;
    move-object v3, v1

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;

    .line 261
    .local v3, "realmObjectCopy":Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    .line 262
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 263
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/UnprocessedReason;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/UnprocessedReason;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/UnprocessedReason;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/UnprocessedReason;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/domain/UnprocessedReason;"
        }
    .end annotation

    .line 230
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

    .line 231
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 232
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_33

    .line 235
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 236
    return-object p1

    .line 233
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_3b
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    .line 240
    .local v0, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    .line 241
    .local v1, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v1, :cond_4d

    .line 242
    move-object v2, v1

    check-cast v2, Lcom/digikala/dms/model/domain/UnprocessedReason;

    return-object v2

    .line 245
    :cond_4d
    invoke-static {p0, p1, p2, p3}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->copy(Lio/realm/Realm;Lcom/digikala/dms/model/domain/UnprocessedReason;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/UnprocessedReason;

    move-result-object v2

    return-object v2
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 162
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/digikala/dms/model/domain/UnprocessedReason;IILjava/util/Map;)Lcom/digikala/dms/model/domain/UnprocessedReason;
    .registers 9
    .param p0, "realmObject"    # Lcom/digikala/dms/model/domain/UnprocessedReason;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/model/domain/UnprocessedReason;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/digikala/dms/model/domain/UnprocessedReason;"
        }
    .end annotation

    .line 369
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    if-gt p1, p2, :cond_3f

    if-nez p0, :cond_5

    goto :goto_3f

    .line 372
    :cond_5
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 374
    .local v0, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v0, :cond_1b

    .line 375
    new-instance v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-direct {v1}, Lcom/digikala/dms/model/domain/UnprocessedReason;-><init>()V

    .line 376
    .local v1, "unmanagedObject":Lcom/digikala/dms/model/domain/UnprocessedReason;
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 379
    .end local v1    # "unmanagedObject":Lcom/digikala/dms/model/domain/UnprocessedReason;
    :cond_1b
    iget v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v1, :cond_24

    .line 380
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    return-object v1

    .line 382
    :cond_24
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    .line 383
    .restart local v1    # "unmanagedObject":Lcom/digikala/dms/model/domain/UnprocessedReason;
    iput p1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 385
    :goto_2a
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;

    .line 386
    .local v2, "unmanagedCopy":Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;
    move-object v3, p0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;

    .line 387
    .local v3, "realmSource":Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    .line 388
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 390
    return-object v1

    .line 370
    .end local v0    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v1    # "unmanagedObject":Lcom/digikala/dms/model/domain/UnprocessedReason;
    .end local v2    # "unmanagedCopy":Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;
    .end local v3    # "realmSource":Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;
    :cond_3f
    :goto_3f
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 12

    .line 151
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "UnprocessedReason"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 152
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string/jumbo v1, "title"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 153
    const-string v7, "id"

    sget-object v8, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 154
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/UnprocessedReason;
    .registers 8
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 176
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 177
    .local v0, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    .line 179
    .local v1, "obj":Lcom/digikala/dms/model/domain/UnprocessedReason;
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;

    .line 180
    .local v2, "objProxy":Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_31

    .line 181
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 182
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto :goto_31

    .line 184
    :cond_27
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    .line 187
    :cond_31
    :goto_31
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 188
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 189
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto :goto_4e

    .line 191
    :cond_45
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 194
    :cond_4e
    :goto_4e
    return-object v1
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/UnprocessedReason;
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

    .line 201
    new-instance v0, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-direct {v0}, Lcom/digikala/dms/model/domain/UnprocessedReason;-><init>()V

    .line 202
    .local v0, "obj":Lcom/digikala/dms/model/domain/UnprocessedReason;
    move-object v1, v0

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;

    .line 203
    .local v1, "objProxy":Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 204
    :goto_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 205
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_36

    .line 208
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_2f

    .line 209
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto :goto_58

    .line 211
    :cond_2f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 212
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmSet$title(Ljava/lang/String;)V

    goto :goto_58

    .line 214
    :cond_36
    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 215
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_4e

    .line 216
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto :goto_58

    .line 218
    :cond_4e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 219
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto :goto_58

    .line 222
    :cond_55
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 224
    .end local v2    # "name":Ljava/lang/String;
    :goto_58
    goto :goto_b

    .line 225
    :cond_59
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 226
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/UnprocessedReason;

    return-object v2
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 158
    sget-object v0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 166
    const-string v0, "UnprocessedReason"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/UnprocessedReason;Ljava/util/Map;)J
    .registers 21
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/UnprocessedReason;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/UnprocessedReason;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 267
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

    .line 268
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 270
    :cond_3c
    const-class v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 271
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 272
    .local v11, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    .line 273
    .local v13, "columnInfo":Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v14

    .line 274
    .local v14, "rowIndex":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v10, p2

    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v16

    .line 276
    .local v16, "realmGet$title":Ljava/lang/String;
    if-eqz v16, :cond_78

    .line 277
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->titleIndex:J

    const/16 v17, 0x0

    move-wide v3, v11

    move-wide v7, v14

    move-object/from16 v9, v16

    move/from16 v10, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 279
    :cond_78
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v17

    .line 280
    .local v17, "realmGet$id":Ljava/lang/String;
    if-eqz v17, :cond_8b

    .line 281
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->idIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 283
    :cond_8b
    return-wide v14
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 22
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

    .line 287
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 288
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 289
    .local v11, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    .line 290
    .local v13, "columnInfo":Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;
    const/4 v3, 0x0

    .line 291
    .local v3, "object":Lcom/digikala/dms/model/domain/UnprocessedReason;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 292
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/digikala/dms/model/domain/UnprocessedReason;

    .line 293
    .end local v3    # "object":Lcom/digikala/dms/model/domain/UnprocessedReason;
    .local v14, "object":Lcom/digikala/dms/model/domain/UnprocessedReason;
    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 294
    goto/16 :goto_a4

    .line 296
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

    .line 297
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

    .line 298
    goto :goto_a4

    .line 300
    :cond_72
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 301
    .local v15, "rowIndex":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v17

    .line 303
    .local v17, "realmGet$title":Ljava/lang/String;
    if-eqz v17, :cond_90

    .line 304
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->titleIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 306
    :cond_90
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v18

    .line 307
    .local v18, "realmGet$id":Ljava/lang/String;
    if-eqz v18, :cond_a3

    .line 308
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->idIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 310
    .end local v15    # "rowIndex":J
    .end local v17    # "realmGet$title":Ljava/lang/String;
    .end local v18    # "realmGet$id":Ljava/lang/String;
    :cond_a3
    nop

    .line 290
    :goto_a4
    move-object v3, v14

    goto/16 :goto_1c

    .line 311
    .end local v14    # "object":Lcom/digikala/dms/model/domain/UnprocessedReason;
    .restart local v3    # "object":Lcom/digikala/dms/model/domain/UnprocessedReason;
    :cond_a7
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/UnprocessedReason;Ljava/util/Map;)J
    .registers 21
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/UnprocessedReason;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/UnprocessedReason;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 314
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

    .line 315
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 317
    :cond_3c
    const-class v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 318
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 319
    .local v11, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    .line 320
    .local v13, "columnInfo":Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v14

    .line 321
    .local v14, "rowIndex":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v10, p2

    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v16

    .line 323
    .local v16, "realmGet$title":Ljava/lang/String;
    if-eqz v16, :cond_79

    .line 324
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->titleIndex:J

    const/16 v17, 0x0

    move-wide v3, v11

    move-wide v7, v14

    move-object/from16 v9, v16

    move/from16 v10, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_81

    .line 326
    :cond_79
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->titleIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 328
    :goto_81
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v17

    .line 329
    .local v17, "realmGet$id":Ljava/lang/String;
    if-eqz v17, :cond_95

    .line 330
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->idIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9d

    .line 332
    :cond_95
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->idIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 334
    :goto_9d
    return-wide v14
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 22
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

    .line 338
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lcom/digikala/dms/model/domain/UnprocessedReason;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 339
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 340
    .local v11, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/UnprocessedReason;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    .line 341
    .local v13, "columnInfo":Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;
    const/4 v3, 0x0

    .line 342
    .local v3, "object":Lcom/digikala/dms/model/domain/UnprocessedReason;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 343
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/digikala/dms/model/domain/UnprocessedReason;

    .line 344
    .end local v3    # "object":Lcom/digikala/dms/model/domain/UnprocessedReason;
    .local v14, "object":Lcom/digikala/dms/model/domain/UnprocessedReason;
    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 345
    goto/16 :goto_b6

    .line 347
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

    .line 348
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

    .line 349
    goto :goto_b6

    .line 351
    :cond_72
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 352
    .local v15, "rowIndex":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmGet$title()Ljava/lang/String;

    move-result-object v17

    .line 354
    .local v17, "realmGet$title":Ljava/lang/String;
    if-eqz v17, :cond_91

    .line 355
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->titleIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_99

    .line 357
    :cond_91
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->titleIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 359
    :goto_99
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v18

    .line 360
    .local v18, "realmGet$id":Ljava/lang/String;
    if-eqz v18, :cond_ad

    .line 361
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->idIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b5

    .line 363
    :cond_ad
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->idIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 365
    .end local v15    # "rowIndex":J
    .end local v17    # "realmGet$title":Ljava/lang/String;
    .end local v18    # "realmGet$id":Ljava/lang/String;
    :goto_b5
    nop

    .line 341
    :goto_b6
    move-object v3, v14

    goto/16 :goto_1c

    .line 366
    .end local v14    # "object":Lcom/digikala/dms/model/domain/UnprocessedReason;
    .restart local v3    # "object":Lcom/digikala/dms/model/domain/UnprocessedReason;
    :cond_b9
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 431
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 432
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 433
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;

    .line 435
    .local v2, "aUnprocessedReason":Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;
    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 437
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

    .line 439
    :cond_35
    iget-object v5, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 440
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 441
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

    .line 443
    :cond_5d
    iget-object v7, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 445
    :cond_76
    return v0

    .line 432
    .end local v2    # "aUnprocessedReason":Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;
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

    .line 418
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 422
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 423
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

    .line 424
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 425
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 426
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 78
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_5

    .line 79
    return-void

    .line 81
    :cond_5
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 82
    .local v0, "context":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    .line 83
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 84
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 85
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 86
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 87
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 88
    return-void
.end method

.method public realmGet$id()Ljava/lang/String;
    .registers 4

    .line 123
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 124
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->idIndex:J

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

    .line 413
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .registers 4

    .line 93
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 94
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->titleIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 130
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 131
    return-void

    .line 133
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 134
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 135
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 136
    return-void

    .line 138
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 139
    return-void

    .line 142
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 143
    if-nez p1, :cond_55

    .line 144
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 145
    return-void

    .line 147
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 148
    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 100
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 101
    return-void

    .line 103
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 104
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 105
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->titleIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 106
    return-void

    .line 108
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->titleIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 109
    return-void

    .line 112
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 113
    if-nez p1, :cond_55

    .line 114
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->titleIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 115
    return-void

    .line 117
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->titleIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 396
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 397
    const-string v0, "Invalid object"

    return-object v0

    .line 399
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UnprocessedReason = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_21
    const-string v1, "null"

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string/jumbo v1, "{id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    :cond_42
    const-string v1, "null"

    :goto_44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.com_digikala_dms_model_domain_UnprocessedReasonRealmProxy.ClassNameHelper (io.realm.com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$ClassNameHelper)
.class public final Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "com_digikala_dms_model_domain_UnprocessedReasonRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "UnprocessedReason"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.realm.com_digikala_dms_model_domain_UnprocessedReasonRealmProxy.UnprocessedReasonColumnInfo (io.realm.com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo)
.class final Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_digikala_dms_model_domain_UnprocessedReasonRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnprocessedReasonColumnInfo"
.end annotation


# instance fields
.field idIndex:J

.field titleIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 49
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 50
    invoke-virtual {p0, p1, p0}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    .line 51
    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 5
    .param p1, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 42
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 43
    const-string v0, "UnprocessedReason"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 44
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string/jumbo v1, "title"

    const-string/jumbo v2, "title"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->titleIndex:J

    .line 45
    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->idIndex:J

    .line 46
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 55
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 60
    move-object v0, p1

    check-cast v0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    .line 61
    .local v0, "src":Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;

    .line 62
    .local v1, "dst":Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->titleIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->titleIndex:J

    .line 63
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->idIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_UnprocessedReasonRealmProxy$UnprocessedReasonColumnInfo;->idIndex:J

    .line 64
    return-void
.end method
