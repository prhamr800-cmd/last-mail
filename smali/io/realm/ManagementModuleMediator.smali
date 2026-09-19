###### Class io.realm.ManagementModuleMediator (io.realm.ManagementModuleMediator)
.class Lio/realm/ManagementModuleMediator;
.super Lio/realm/internal/RealmProxyMediator;
.source "ManagementModuleMediator.java"


# annotations
.annotation runtime Lio/realm/annotations/RealmModule;
.end annotation


# static fields
.field private static final MODEL_CLASSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 29
    .local v0, "modelClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Lio/realm/RealmModel;>;>;"
    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    const-class v1, Lio/realm/permissions/PermissionOffer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lio/realm/ManagementModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

    .line 33
    .end local v0    # "modelClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Lio/realm/RealmModel;>;>;"
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lio/realm/internal/RealmProxyMediator;-><init>()V

    return-void
.end method


# virtual methods
.method public copyOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;ZLjava/util/Map;)Lio/realm/RealmModel;
    .registers 7
    .param p1, "realm"    # Lio/realm/Realm;
    .param p3, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "TE;Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)TE;"
        }
    .end annotation

    .line 107
    .local p2, "obj":Lio/realm/RealmModel;, "TE;"
    .local p4, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 109
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    :goto_11
    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 110
    move-object v1, p2

    check-cast v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-static {p1, v1, p3, p4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionOfferResponse;ZLjava/util/Map;)Lio/realm/internal/permissions/PermissionOfferResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 112
    :cond_27
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 113
    move-object v1, p2

    check-cast v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-static {p1, v1, p3, p4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;ZLjava/util/Map;)Lio/realm/internal/permissions/PermissionChange;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 115
    :cond_3d
    const-class v1, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 116
    move-object v1, p2

    check-cast v1, Lio/realm/permissions/PermissionOffer;

    invoke-static {p1, v1, p3, p4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/permissions/PermissionOffer;ZLjava/util/Map;)Lio/realm/permissions/PermissionOffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 118
    :cond_53
    invoke-static {v0}, Lio/realm/ManagementModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v1

    throw v1
.end method

.method public createColumnInfo(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/ColumnInfo;
    .registers 4
    .param p2, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/internal/OsSchemaInfo;",
            ")",
            "Lio/realm/internal/ColumnInfo;"
        }
    .end annotation

    .line 46
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/realm/RealmModel;>;"
    invoke-static {p1}, Lio/realm/ManagementModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 48
    const-class v0, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 49
    invoke-static {p2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    move-result-object v0

    return-object v0

    .line 51
    :cond_10
    const-class v0, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 52
    invoke-static {p2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    move-result-object v0

    return-object v0

    .line 54
    :cond_1d
    const-class v0, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 55
    invoke-static {p2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    move-result-object v0

    return-object v0

    .line 57
    :cond_2a
    invoke-static {p1}, Lio/realm/ManagementModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public createDetachedCopy(Lio/realm/RealmModel;ILjava/util/Map;)Lio/realm/RealmModel;
    .registers 7
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;I",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)TE;"
        }
    .end annotation

    .line 263
    .local p1, "realmObject":Lio/realm/RealmModel;, "TE;"
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 265
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 266
    move-object v1, p1

    check-cast v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-static {v1, v2, p2, p3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->createDetachedCopy(Lio/realm/internal/permissions/PermissionOfferResponse;IILjava/util/Map;)Lio/realm/internal/permissions/PermissionOfferResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 268
    :cond_1f
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 269
    move-object v1, p1

    check-cast v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-static {v1, v2, p2, p3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->createDetachedCopy(Lio/realm/internal/permissions/PermissionChange;IILjava/util/Map;)Lio/realm/internal/permissions/PermissionChange;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 271
    :cond_35
    const-class v1, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 272
    move-object v1, p1

    check-cast v1, Lio/realm/permissions/PermissionOffer;

    invoke-static {v1, v2, p2, p3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->createDetachedCopy(Lio/realm/permissions/PermissionOffer;IILjava/util/Map;)Lio/realm/permissions/PermissionOffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 274
    :cond_4b
    invoke-static {v0}, Lio/realm/ManagementModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v1

    throw v1
.end method

.method public createOrUpdateUsingJsonObject(Ljava/lang/Class;Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/RealmModel;
    .registers 6
    .param p2, "realm"    # Lio/realm/Realm;
    .param p3, "json"    # Lorg/json/JSONObject;
    .param p4, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/Realm;",
            "Lorg/json/JSONObject;",
            "Z)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 228
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p1}, Lio/realm/ManagementModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 230
    const-class v0, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 231
    invoke-static {p2, p3, p4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/internal/permissions/PermissionOfferResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 233
    :cond_16
    const-class v0, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 234
    invoke-static {p2, p3, p4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/internal/permissions/PermissionChange;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 236
    :cond_29
    const-class v0, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 237
    invoke-static {p2, p3, p4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/permissions/PermissionOffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 239
    :cond_3c
    invoke-static {p1}, Lio/realm/ManagementModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public createUsingJsonStream(Ljava/lang/Class;Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/RealmModel;
    .registers 5
    .param p2, "realm"    # Lio/realm/Realm;
    .param p3, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lio/realm/Realm;",
            "Landroid/util/JsonReader;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p1}, Lio/realm/ManagementModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 247
    const-class v0, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 248
    invoke-static {p2, p3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/internal/permissions/PermissionOfferResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 250
    :cond_16
    const-class v0, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 251
    invoke-static {p2, p3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/internal/permissions/PermissionChange;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 253
    :cond_29
    const-class v0, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 254
    invoke-static {p2, p3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/permissions/PermissionOffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 256
    :cond_3c
    invoke-static {p1}, Lio/realm/ManagementModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public getExpectedObjectSchemaInfoMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Lio/realm/internal/OsObjectSchemaInfo;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 38
    .local v0, "infoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lio/realm/RealmModel;>;Lio/realm/internal/OsObjectSchemaInfo;>;"
    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-static {}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-static {}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-class v1, Lio/realm/permissions/PermissionOffer;

    invoke-static {}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-object v0
.end method

.method public getModelClasses()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation

    .line 100
    sget-object v0, Lio/realm/ManagementModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

    return-object v0
.end method

.method public getSimpleClassNameImpl(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 62
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/realm/RealmModel;>;"
    invoke-static {p1}, Lio/realm/ManagementModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 64
    const-class v0, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 65
    const-string v0, "PermissionOfferResponse"

    return-object v0

    .line 67
    :cond_e
    const-class v0, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 68
    const-string v0, "PermissionChange"

    return-object v0

    .line 70
    :cond_19
    const-class v0, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 71
    const-string v0, "PermissionOffer"

    return-object v0

    .line 73
    :cond_24
    invoke-static {p1}, Lio/realm/ManagementModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public insert(Lio/realm/Realm;Lio/realm/RealmModel;Ljava/util/Map;)V
    .registers 6
    .param p1, "realm"    # Lio/realm/Realm;
    .param p2, "object"    # Lio/realm/RealmModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmModel;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 127
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lio/realm/RealmModel;>;"
    :goto_11
    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 128
    move-object v1, p2

    check-cast v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-static {p1, v1, p3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->insert(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionOfferResponse;Ljava/util/Map;)J

    goto :goto_3d

    .line 129
    :cond_20
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 130
    move-object v1, p2

    check-cast v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-static {p1, v1, p3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->insert(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;Ljava/util/Map;)J

    goto :goto_3d

    .line 131
    :cond_2f
    const-class v1, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 132
    move-object v1, p2

    check-cast v1, Lio/realm/permissions/PermissionOffer;

    invoke-static {p1, v1, p3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->insert(Lio/realm/Realm;Lio/realm/permissions/PermissionOffer;Ljava/util/Map;)J

    .line 136
    :goto_3d
    return-void

    .line 134
    :cond_3e
    invoke-static {v0}, Lio/realm/ManagementModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v1

    throw v1
.end method

.method public insert(Lio/realm/Realm;Ljava/util/Collection;)V
    .registers 8
    .param p1, "realm"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Collection<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 140
    .local p2, "objects":Ljava/util/Collection;, "Ljava/util/Collection<+Lio/realm/RealmModel;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 141
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    const/4 v1, 0x0

    .line 142
    .local v1, "object":Lio/realm/RealmModel;
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 143
    .local v2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lio/realm/RealmModel;

    .line 148
    instance-of v3, v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_28

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_2c

    :cond_28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 150
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lio/realm/RealmModel;>;"
    :goto_2c
    const-class v4, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 151
    move-object v4, v1

    check-cast v4, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-static {p1, v4, v2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->insert(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionOfferResponse;Ljava/util/Map;)J

    goto :goto_58

    .line 152
    :cond_3b
    const-class v4, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 153
    move-object v4, v1

    check-cast v4, Lio/realm/internal/permissions/PermissionChange;

    invoke-static {p1, v4, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->insert(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;Ljava/util/Map;)J

    goto :goto_58

    .line 154
    :cond_4a
    const-class v4, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 155
    move-object v4, v1

    check-cast v4, Lio/realm/permissions/PermissionOffer;

    invoke-static {p1, v4, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->insert(Lio/realm/Realm;Lio/realm/permissions/PermissionOffer;Ljava/util/Map;)J

    .line 159
    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 160
    const-class v4, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 161
    invoke-static {p1, v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_8c

    .line 162
    :cond_6a
    const-class v4, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 163
    invoke-static {p1, v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_8c

    .line 164
    :cond_76
    const-class v4, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 165
    invoke-static {p1, v0, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_8c

    .line 167
    :cond_82
    invoke-static {v3}, Lio/realm/ManagementModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v4

    throw v4

    .line 157
    :cond_87
    invoke-static {v3}, Lio/realm/ManagementModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v4

    throw v4

    .line 171
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lio/realm/RealmModel;>;"
    :cond_8c
    :goto_8c
    return-void
.end method

.method public insertOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;Ljava/util/Map;)V
    .registers 6
    .param p1, "realm"    # Lio/realm/Realm;
    .param p2, "obj"    # Lio/realm/RealmModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmModel;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 177
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 179
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lio/realm/RealmModel;>;"
    :goto_11
    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 180
    move-object v1, p2

    check-cast v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-static {p1, v1, p3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionOfferResponse;Ljava/util/Map;)J

    goto :goto_3d

    .line 181
    :cond_20
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 182
    move-object v1, p2

    check-cast v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-static {p1, v1, p3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;Ljava/util/Map;)J

    goto :goto_3d

    .line 183
    :cond_2f
    const-class v1, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 184
    move-object v1, p2

    check-cast v1, Lio/realm/permissions/PermissionOffer;

    invoke-static {p1, v1, p3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/permissions/PermissionOffer;Ljava/util/Map;)J

    .line 188
    :goto_3d
    return-void

    .line 186
    :cond_3e
    invoke-static {v0}, Lio/realm/ManagementModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v1

    throw v1
.end method

.method public insertOrUpdate(Lio/realm/Realm;Ljava/util/Collection;)V
    .registers 8
    .param p1, "realm"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Collection<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 192
    .local p2, "objects":Ljava/util/Collection;, "Ljava/util/Collection<+Lio/realm/RealmModel;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 193
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    const/4 v1, 0x0

    .line 194
    .local v1, "object":Lio/realm/RealmModel;
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 195
    .local v2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 197
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lio/realm/RealmModel;

    .line 200
    instance-of v3, v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_28

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_2c

    :cond_28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 202
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lio/realm/RealmModel;>;"
    :goto_2c
    const-class v4, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 203
    move-object v4, v1

    check-cast v4, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-static {p1, v4, v2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionOfferResponse;Ljava/util/Map;)J

    goto :goto_58

    .line 204
    :cond_3b
    const-class v4, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 205
    move-object v4, v1

    check-cast v4, Lio/realm/internal/permissions/PermissionChange;

    invoke-static {p1, v4, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;Ljava/util/Map;)J

    goto :goto_58

    .line 206
    :cond_4a
    const-class v4, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 207
    move-object v4, v1

    check-cast v4, Lio/realm/permissions/PermissionOffer;

    invoke-static {p1, v4, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/permissions/PermissionOffer;Ljava/util/Map;)J

    .line 211
    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 212
    const-class v4, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 213
    invoke-static {p1, v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_8c

    .line 214
    :cond_6a
    const-class v4, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 215
    invoke-static {p1, v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_8c

    .line 216
    :cond_76
    const-class v4, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 217
    invoke-static {p1, v0, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_8c

    .line 219
    :cond_82
    invoke-static {v3}, Lio/realm/ManagementModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v4

    throw v4

    .line 209
    :cond_87
    invoke-static {v3}, Lio/realm/ManagementModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v4

    throw v4

    .line 223
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lio/realm/RealmModel;>;"
    :cond_8c
    :goto_8c
    return-void
.end method

.method public newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;
    .registers 14
    .param p2, "baseRealm"    # Ljava/lang/Object;
    .param p3, "row"    # Lio/realm/internal/Row;
    .param p4, "columnInfo"    # Lio/realm/internal/ColumnInfo;
    .param p5, "acceptDefaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Object;",
            "Lio/realm/internal/Row;",
            "Lio/realm/internal/ColumnInfo;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .line 78
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p6, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 80
    .local v1, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    :try_start_9
    move-object v2, p2

    check-cast v2, Lio/realm/BaseRealm;

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 81
    invoke-static {p1}, Lio/realm/ManagementModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 83
    const-class v0, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 84
    new-instance v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;

    invoke-direct {v0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_60

    .line 94
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 84
    return-object v0

    .line 86
    :cond_2d
    :try_start_2d
    const-class v0, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 87
    new-instance v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;

    invoke-direct {v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_40
    .catchall {:try_start_2d .. :try_end_40} :catchall_60

    .line 94
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 87
    return-object v0

    .line 89
    :cond_44
    :try_start_44
    const-class v0, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 90
    new-instance v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;

    invoke-direct {v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_57
    .catchall {:try_start_44 .. :try_end_57} :catchall_60

    .line 94
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 90
    return-object v0

    .line 92
    :cond_5b
    :try_start_5b
    invoke-static {p1}, Lio/realm/ManagementModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_60

    .line 94
    :catchall_60
    move-exception v0

    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    throw v0
.end method

.method public transformerApplied()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
