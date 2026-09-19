###### Class io.realm.com_digikala_dms_model_design_AnswerRealmProxy (io.realm.com_digikala_dms_model_design_AnswerRealmProxy)
.class public Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;
.super Lcom/digikala/dms/model/design/Answer;
.source "com_digikala_dms_model_design_AnswerRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$ClassNameHelper;,
        Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/digikala/dms/model/design/Answer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    invoke-static {}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Lcom/digikala/dms/model/design/Answer;-><init>()V

    .line 73
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 74
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/digikala/dms/model/design/Answer;ZLjava/util/Map;)Lcom/digikala/dms/model/design/Answer;
    .registers 9
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lcom/digikala/dms/model/design/Answer;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/design/Answer;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/design/Answer;"
        }
    .end annotation

    .line 241
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 242
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 243
    move-object v1, v0

    check-cast v1, Lcom/digikala/dms/model/design/Answer;

    return-object v1

    .line 247
    :cond_c
    const-class v1, Lcom/digikala/dms/model/design/Answer;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/design/Answer;

    .line 248
    .local v1, "realmObject":Lcom/digikala/dms/model/design/Answer;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;

    .line 251
    .local v2, "realmObjectSource":Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;
    move-object v3, v1

    check-cast v3, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;

    .line 253
    .local v3, "realmObjectCopy":Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmGet$id()I

    move-result v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmSet$id(I)V

    .line 254
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmGet$Answer()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmSet$Answer(Ljava/lang/String;)V

    .line 255
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/Answer;ZLjava/util/Map;)Lcom/digikala/dms/model/design/Answer;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/design/Answer;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/design/Answer;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/design/Answer;"
        }
    .end annotation

    .line 222
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

    .line 223
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 224
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_33

    .line 227
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 228
    return-object p1

    .line 225
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_3b
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    .line 232
    .local v0, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    .line 233
    .local v1, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v1, :cond_4d

    .line 234
    move-object v2, v1

    check-cast v2, Lcom/digikala/dms/model/design/Answer;

    return-object v2

    .line 237
    :cond_4d
    invoke-static {p0, p1, p2, p3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->copy(Lio/realm/Realm;Lcom/digikala/dms/model/design/Answer;ZLjava/util/Map;)Lcom/digikala/dms/model/design/Answer;

    move-result-object v2

    return-object v2
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 154
    new-instance v0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/digikala/dms/model/design/Answer;IILjava/util/Map;)Lcom/digikala/dms/model/design/Answer;
    .registers 9
    .param p0, "realmObject"    # Lcom/digikala/dms/model/design/Answer;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/model/design/Answer;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/digikala/dms/model/design/Answer;"
        }
    .end annotation

    .line 345
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    if-gt p1, p2, :cond_3f

    if-nez p0, :cond_5

    goto :goto_3f

    .line 348
    :cond_5
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 350
    .local v0, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v0, :cond_1b

    .line 351
    new-instance v1, Lcom/digikala/dms/model/design/Answer;

    invoke-direct {v1}, Lcom/digikala/dms/model/design/Answer;-><init>()V

    .line 352
    .local v1, "unmanagedObject":Lcom/digikala/dms/model/design/Answer;
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 355
    .end local v1    # "unmanagedObject":Lcom/digikala/dms/model/design/Answer;
    :cond_1b
    iget v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v1, :cond_24

    .line 356
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/digikala/dms/model/design/Answer;

    return-object v1

    .line 358
    :cond_24
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/digikala/dms/model/design/Answer;

    .line 359
    .restart local v1    # "unmanagedObject":Lcom/digikala/dms/model/design/Answer;
    iput p1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 361
    :goto_2a
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;

    .line 362
    .local v2, "unmanagedCopy":Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;
    move-object v3, p0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;

    .line 363
    .local v3, "realmSource":Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmGet$id()I

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmSet$id(I)V

    .line 364
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmGet$Answer()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmSet$Answer(Ljava/lang/String;)V

    .line 366
    return-object v1

    .line 346
    .end local v0    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v1    # "unmanagedObject":Lcom/digikala/dms/model/design/Answer;
    .end local v2    # "unmanagedCopy":Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;
    .end local v3    # "realmSource":Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;
    :cond_3f
    :goto_3f
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 12

    .line 143
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "Answer"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 144
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string v1, "id"

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 145
    const-string v7, "Answer"

    sget-object v8, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 146
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/design/Answer;
    .registers 8
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 168
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 169
    .local v0, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Lcom/digikala/dms/model/design/Answer;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/design/Answer;

    .line 171
    .local v1, "obj":Lcom/digikala/dms/model/design/Answer;
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;

    .line 172
    .local v2, "objProxy":Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 173
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 176
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmSet$id(I)V

    goto :goto_32

    .line 174
    :cond_2a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'id\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 179
    :cond_32
    :goto_32
    const-string v3, "Answer"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 180
    const-string v3, "Answer"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 181
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmSet$Answer(Ljava/lang/String;)V

    goto :goto_50

    .line 183
    :cond_47
    const-string v3, "Answer"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmSet$Answer(Ljava/lang/String;)V

    .line 186
    :cond_50
    :goto_50
    return-object v1
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/design/Answer;
    .registers 7
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

    .line 193
    new-instance v0, Lcom/digikala/dms/model/design/Answer;

    invoke-direct {v0}, Lcom/digikala/dms/model/design/Answer;-><init>()V

    .line 194
    .local v0, "obj":Lcom/digikala/dms/model/design/Answer;
    move-object v1, v0

    check-cast v1, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;

    .line 195
    .local v1, "objProxy":Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 196
    :goto_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 197
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "name":Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 200
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_2d

    .line 201
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmSet$id(I)V

    goto :goto_5b

    .line 203
    :cond_2d
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 204
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'id\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 206
    :cond_38
    const-string v3, "Answer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 207
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_50

    .line 208
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmSet$Answer(Ljava/lang/String;)V

    goto :goto_5b

    .line 210
    :cond_50
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 211
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmSet$Answer(Ljava/lang/String;)V

    goto :goto_5b

    .line 214
    :cond_58
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 216
    .end local v2    # "name":Ljava/lang/String;
    :goto_5b
    goto :goto_b

    .line 217
    :cond_5c
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 218
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/design/Answer;

    return-object v2
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 150
    sget-object v0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 158
    const-string v0, "Answer"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/Answer;Ljava/util/Map;)J
    .registers 21
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/design/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/design/Answer;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 259
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

    .line 260
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 262
    :cond_3c
    const-class v1, Lcom/digikala/dms/model/design/Answer;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 263
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 264
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/design/Answer;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;

    .line 265
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 266
    .local v15, "rowIndex":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->idIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmGet$id()I

    move-result v3

    int-to-long v9, v3

    const/16 v17, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move/from16 v11, v17

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 268
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmGet$Answer()Ljava/lang/String;

    move-result-object v11

    .line 269
    .local v11, "realmGet$Answer":Ljava/lang/String;
    if-eqz v11, :cond_87

    .line 270
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->AnswerIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 272
    :cond_87
    return-wide v15
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 21
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

    .line 276
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lcom/digikala/dms/model/design/Answer;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 277
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 278
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/design/Answer;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;

    .line 279
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;
    const/4 v3, 0x0

    .line 280
    .local v3, "object":Lcom/digikala/dms/model/design/Answer;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 281
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/digikala/dms/model/design/Answer;

    .line 282
    .end local v3    # "object":Lcom/digikala/dms/model/design/Answer;
    .local v15, "object":Lcom/digikala/dms/model/design/Answer;
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 283
    goto/16 :goto_a2

    .line 285
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

    .line 286
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

    .line 287
    goto :goto_a2

    .line 289
    :cond_72
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 290
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->idIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmGet$id()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 292
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmGet$Answer()Ljava/lang/String;

    move-result-object v11

    .line 293
    .local v11, "realmGet$Answer":Ljava/lang/String;
    if-eqz v11, :cond_a1

    .line 294
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->AnswerIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 296
    .end local v11    # "realmGet$Answer":Ljava/lang/String;
    .end local v16    # "rowIndex":J
    :cond_a1
    nop

    .line 279
    :goto_a2
    move-object v3, v15

    goto/16 :goto_1c

    .line 297
    .end local v15    # "object":Lcom/digikala/dms/model/design/Answer;
    .restart local v3    # "object":Lcom/digikala/dms/model/design/Answer;
    :cond_a5
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/Answer;Ljava/util/Map;)J
    .registers 21
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/design/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/design/Answer;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 300
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

    .line 301
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 303
    :cond_3c
    const-class v1, Lcom/digikala/dms/model/design/Answer;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 304
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 305
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/design/Answer;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;

    .line 306
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 307
    .local v15, "rowIndex":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->idIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmGet$id()I

    move-result v3

    int-to-long v9, v3

    const/16 v17, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move/from16 v11, v17

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 309
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmGet$Answer()Ljava/lang/String;

    move-result-object v11

    .line 310
    .local v11, "realmGet$Answer":Ljava/lang/String;
    if-eqz v11, :cond_88

    .line 311
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->AnswerIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_90

    .line 313
    :cond_88
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->AnswerIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 315
    :goto_90
    return-wide v15
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 21
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

    .line 319
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lcom/digikala/dms/model/design/Answer;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 320
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 321
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/design/Answer;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;

    .line 322
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;
    const/4 v3, 0x0

    .line 323
    .local v3, "object":Lcom/digikala/dms/model/design/Answer;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_af

    .line 324
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/digikala/dms/model/design/Answer;

    .line 325
    .end local v3    # "object":Lcom/digikala/dms/model/design/Answer;
    .local v15, "object":Lcom/digikala/dms/model/design/Answer;
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 326
    goto/16 :goto_ac

    .line 328
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

    .line 329
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

    .line 330
    goto :goto_ac

    .line 332
    :cond_72
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 333
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->idIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmGet$id()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 335
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxyInterface;->realmGet$Answer()Ljava/lang/String;

    move-result-object v11

    .line 336
    .local v11, "realmGet$Answer":Ljava/lang/String;
    if-eqz v11, :cond_a2

    .line 337
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->AnswerIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_ab

    .line 339
    :cond_a2
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->AnswerIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 341
    .end local v11    # "realmGet$Answer":Ljava/lang/String;
    .end local v16    # "rowIndex":J
    :goto_ab
    nop

    .line 322
    :goto_ac
    move-object v3, v15

    goto/16 :goto_1c

    .line 342
    .end local v15    # "object":Lcom/digikala/dms/model/design/Answer;
    .restart local v3    # "object":Lcom/digikala/dms/model/design/Answer;
    :cond_af
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 407
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 408
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 409
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;

    .line 411
    .local v2, "aAnswer":Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;
    iget-object v3, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 413
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

    .line 415
    :cond_35
    iget-object v5, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 416
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 417
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

    .line 419
    :cond_5d
    iget-object v7, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 421
    :cond_76
    return v0

    .line 408
    .end local v2    # "aAnswer":Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;
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

    .line 394
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 398
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 399
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

    .line 400
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 401
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 402
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 78
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    check-cast v1, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;

    .line 83
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 84
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 85
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 86
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 87
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 88
    return-void
.end method

.method public realmGet$Answer()Ljava/lang/String;
    .registers 4

    .line 115
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 116
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->AnswerIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()I
    .registers 4

    .line 93
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 94
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->idIndex:J

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

    .line 389
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmSet$Answer(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 122
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 123
    return-void

    .line 125
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 126
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 127
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->AnswerIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 128
    return-void

    .line 130
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->AnswerIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 131
    return-void

    .line 134
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 135
    if-nez p1, :cond_55

    .line 136
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->AnswerIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 137
    return-void

    .line 139
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->AnswerIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 140
    return-void
.end method

.method public realmSet$id(I)V
    .registers 11
    .param p1, "value"    # I

    .line 99
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 100
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 101
    return-void

    .line 103
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 104
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->idIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 105
    return-void

    .line 108
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 109
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->idIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 372
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 373
    const-string v0, "Invalid object"

    return-object v0

    .line 375
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Answer = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->realmGet$id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string/jumbo v1, "{Answer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->realmGet$Answer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;->realmGet$Answer()Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    :cond_39
    const-string v1, "null"

    :goto_3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.com_digikala_dms_model_design_AnswerRealmProxy.AnswerColumnInfo (io.realm.com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo)
.class final Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_digikala_dms_model_design_AnswerRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnswerColumnInfo"
.end annotation


# instance fields
.field AnswerIndex:J

.field idIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 49
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 50
    invoke-virtual {p0, p1, p0}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

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
    const-string v0, "Answer"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 44
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->idIndex:J

    .line 45
    const-string v1, "Answer"

    const-string v2, "Answer"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->AnswerIndex:J

    .line 46
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 55
    new-instance v0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 60
    move-object v0, p1

    check-cast v0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;

    .line 61
    .local v0, "src":Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;

    .line 62
    .local v1, "dst":Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->idIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->idIndex:J

    .line 63
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->AnswerIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$AnswerColumnInfo;->AnswerIndex:J

    .line 64
    return-void
.end method

###### Class io.realm.com_digikala_dms_model_design_AnswerRealmProxy.ClassNameHelper (io.realm.com_digikala_dms_model_design_AnswerRealmProxy$ClassNameHelper)
.class public final Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "com_digikala_dms_model_design_AnswerRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_design_AnswerRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "Answer"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
