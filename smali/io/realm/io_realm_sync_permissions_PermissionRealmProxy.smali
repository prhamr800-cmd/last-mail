###### Class io.realm.io_realm_sync_permissions_PermissionRealmProxy (io.realm.io_realm_sync_permissions_PermissionRealmProxy)
.class public Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;
.super Lio/realm/sync/permissions/Permission;
.source "io_realm_sync_permissions_PermissionRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$ClassNameHelper;,
        Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lio/realm/sync/permissions/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    invoke-static {}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 89
    invoke-direct {p0}, Lio/realm/sync/permissions/Permission;-><init>()V

    .line 90
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 91
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/sync/permissions/Permission;ZLjava/util/Map;)Lio/realm/sync/permissions/Permission;
    .registers 11
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lio/realm/sync/permissions/Permission;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/sync/permissions/Permission;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/sync/permissions/Permission;"
        }
    .end annotation

    .line 496
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 497
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 498
    move-object v1, v0

    check-cast v1, Lio/realm/sync/permissions/Permission;

    return-object v1

    .line 502
    :cond_c
    const-class v1, Lio/realm/sync/permissions/Permission;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lio/realm/sync/permissions/Permission;

    .line 503
    .local v1, "realmObject":Lio/realm/sync/permissions/Permission;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    move-object v2, p1

    check-cast v2, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    .line 506
    .local v2, "realmObjectSource":Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;
    move-object v3, v1

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    .line 509
    .local v3, "realmObjectCopy":Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$role()Lio/realm/sync/permissions/Role;

    move-result-object v4

    .line 510
    .local v4, "roleObj":Lio/realm/sync/permissions/Role;
    if-nez v4, :cond_30

    .line 511
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    goto :goto_43

    .line 513
    :cond_30
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/sync/permissions/Role;

    .line 514
    .local v5, "cacherole":Lio/realm/sync/permissions/Role;
    if-eqz v5, :cond_3c

    .line 515
    invoke-interface {v3, v5}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    goto :goto_43

    .line 517
    :cond_3c
    invoke-static {p0, v4, p2, p3}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Role;ZLjava/util/Map;)Lio/realm/sync/permissions/Role;

    move-result-object v6

    invoke-interface {v3, v6}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    .line 520
    .end local v5    # "cacherole":Lio/realm/sync/permissions/Role;
    :goto_43
    invoke-interface {v2}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canRead()Z

    move-result v5

    invoke-interface {v3, v5}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canRead(Z)V

    .line 521
    invoke-interface {v2}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canUpdate()Z

    move-result v5

    invoke-interface {v3, v5}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canUpdate(Z)V

    .line 522
    invoke-interface {v2}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canDelete()Z

    move-result v5

    invoke-interface {v3, v5}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canDelete(Z)V

    .line 523
    invoke-interface {v2}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canSetPermissions()Z

    move-result v5

    invoke-interface {v3, v5}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canSetPermissions(Z)V

    .line 524
    invoke-interface {v2}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canQuery()Z

    move-result v5

    invoke-interface {v3, v5}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canQuery(Z)V

    .line 525
    invoke-interface {v2}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canCreate()Z

    move-result v5

    invoke-interface {v3, v5}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canCreate(Z)V

    .line 526
    invoke-interface {v2}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canModifySchema()Z

    move-result v5

    invoke-interface {v3, v5}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canModifySchema(Z)V

    .line 527
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Permission;ZLjava/util/Map;)Lio/realm/sync/permissions/Permission;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/sync/permissions/Permission;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/sync/permissions/Permission;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/sync/permissions/Permission;"
        }
    .end annotation

    .line 477
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

    .line 478
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 479
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_33

    .line 482
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 483
    return-object p1

    .line 480
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_3b
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    .line 487
    .local v0, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    .line 488
    .local v1, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v1, :cond_4d

    .line 489
    move-object v2, v1

    check-cast v2, Lio/realm/sync/permissions/Permission;

    return-object v2

    .line 492
    :cond_4d
    invoke-static {p0, p1, p2, p3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->copy(Lio/realm/Realm;Lio/realm/sync/permissions/Permission;ZLjava/util/Map;)Lio/realm/sync/permissions/Permission;

    move-result-object v2

    return-object v2
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 320
    new-instance v0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lio/realm/sync/permissions/Permission;IILjava/util/Map;)Lio/realm/sync/permissions/Permission;
    .registers 10
    .param p0, "realmObject"    # Lio/realm/sync/permissions/Permission;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/sync/permissions/Permission;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lio/realm/sync/permissions/Permission;"
        }
    .end annotation

    .line 661
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    if-gt p1, p2, :cond_6f

    if-nez p0, :cond_5

    goto :goto_6f

    .line 664
    :cond_5
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 666
    .local v0, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v0, :cond_1b

    .line 667
    new-instance v1, Lio/realm/sync/permissions/Permission;

    invoke-direct {v1}, Lio/realm/sync/permissions/Permission;-><init>()V

    .line 668
    .local v1, "unmanagedObject":Lio/realm/sync/permissions/Permission;
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 671
    .end local v1    # "unmanagedObject":Lio/realm/sync/permissions/Permission;
    :cond_1b
    iget v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v1, :cond_24

    .line 672
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lio/realm/sync/permissions/Permission;

    return-object v1

    .line 674
    :cond_24
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lio/realm/sync/permissions/Permission;

    .line 675
    .restart local v1    # "unmanagedObject":Lio/realm/sync/permissions/Permission;
    iput p1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 677
    :goto_2a
    move-object v2, v1

    check-cast v2, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    .line 678
    .local v2, "unmanagedCopy":Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;
    move-object v3, p0

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    .line 681
    .local v3, "realmSource":Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;
    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$role()Lio/realm/sync/permissions/Role;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-static {v4, v5, p2, p3}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->createDetachedCopy(Lio/realm/sync/permissions/Role;IILjava/util/Map;)Lio/realm/sync/permissions/Role;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    .line 682
    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canRead()Z

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canRead(Z)V

    .line 683
    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canUpdate()Z

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canUpdate(Z)V

    .line 684
    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canDelete()Z

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canDelete(Z)V

    .line 685
    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canSetPermissions()Z

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canSetPermissions(Z)V

    .line 686
    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canQuery()Z

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canQuery(Z)V

    .line 687
    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canCreate()Z

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canCreate(Z)V

    .line 688
    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canModifySchema()Z

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canModifySchema(Z)V

    .line 690
    return-object v1

    .line 662
    .end local v0    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v1    # "unmanagedObject":Lio/realm/sync/permissions/Permission;
    .end local v2    # "unmanagedCopy":Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;
    .end local v3    # "realmSource":Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;
    :cond_6f
    :goto_6f
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 10

    .line 303
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "__Permission"

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 304
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string v1, "role"

    sget-object v2, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v3, "__Role"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 305
    const-string v5, "canRead"

    sget-object v6, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 306
    const-string v5, "canUpdate"

    sget-object v6, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 307
    const-string v5, "canDelete"

    sget-object v6, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 308
    const-string v5, "canSetPermissions"

    sget-object v6, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 309
    const-string v5, "canQuery"

    sget-object v6, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 310
    const-string v5, "canCreate"

    sget-object v6, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 311
    const-string v5, "canModifySchema"

    sget-object v6, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 312
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/sync/permissions/Permission;
    .registers 8
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 335
    .local v0, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "role"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 336
    const-string v2, "role"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_13
    const-class v2, Lio/realm/sync/permissions/Permission;

    invoke-virtual {p0, v2, v1, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lio/realm/sync/permissions/Permission;

    .line 340
    .local v1, "obj":Lio/realm/sync/permissions/Permission;
    move-object v2, v1

    check-cast v2, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    .line 341
    .local v2, "objProxy":Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;
    const-string v3, "role"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 342
    const-string v3, "role"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 343
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    goto :goto_40

    .line 345
    :cond_33
    const-string v3, "role"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/sync/permissions/Role;

    move-result-object v3

    .line 346
    .local v3, "roleObj":Lio/realm/sync/permissions/Role;
    invoke-interface {v2, v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    .line 349
    .end local v3    # "roleObj":Lio/realm/sync/permissions/Role;
    :cond_40
    :goto_40
    const-string v3, "canRead"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 350
    const-string v3, "canRead"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 353
    const-string v3, "canRead"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canRead(Z)V

    goto :goto_62

    .line 351
    :cond_5a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'canRead\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 356
    :cond_62
    :goto_62
    const-string v3, "canUpdate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 357
    const-string v3, "canUpdate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7c

    .line 360
    const-string v3, "canUpdate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canUpdate(Z)V

    goto :goto_84

    .line 358
    :cond_7c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'canUpdate\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 363
    :cond_84
    :goto_84
    const-string v3, "canDelete"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 364
    const-string v3, "canDelete"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 367
    const-string v3, "canDelete"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canDelete(Z)V

    goto :goto_a6

    .line 365
    :cond_9e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'canDelete\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 370
    :cond_a6
    :goto_a6
    const-string v3, "canSetPermissions"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 371
    const-string v3, "canSetPermissions"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c0

    .line 374
    const-string v3, "canSetPermissions"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canSetPermissions(Z)V

    goto :goto_c8

    .line 372
    :cond_c0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'canSetPermissions\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 377
    :cond_c8
    :goto_c8
    const-string v3, "canQuery"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 378
    const-string v3, "canQuery"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e2

    .line 381
    const-string v3, "canQuery"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canQuery(Z)V

    goto :goto_ea

    .line 379
    :cond_e2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'canQuery\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 384
    :cond_ea
    :goto_ea
    const-string v3, "canCreate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10c

    .line 385
    const-string v3, "canCreate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_104

    .line 388
    const-string v3, "canCreate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canCreate(Z)V

    goto :goto_10c

    .line 386
    :cond_104
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'canCreate\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 391
    :cond_10c
    :goto_10c
    const-string v3, "canModifySchema"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12e

    .line 392
    const-string v3, "canModifySchema"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_126

    .line 395
    const-string v3, "canModifySchema"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canModifySchema(Z)V

    goto :goto_12e

    .line 393
    :cond_126
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'canModifySchema\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 398
    :cond_12e
    :goto_12e
    return-object v1
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/sync/permissions/Permission;
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

    .line 405
    new-instance v0, Lio/realm/sync/permissions/Permission;

    invoke-direct {v0}, Lio/realm/sync/permissions/Permission;-><init>()V

    .line 406
    .local v0, "obj":Lio/realm/sync/permissions/Permission;
    move-object v1, v0

    check-cast v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    .line 407
    .local v1, "objProxy":Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 408
    :goto_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_135

    .line 409
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "name":Ljava/lang/String;
    const-string v3, "role"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 412
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v3, v4, :cond_2e

    .line 413
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 414
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    goto/16 :goto_133

    .line 416
    :cond_2e
    invoke-static {p0, p1}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/sync/permissions/Role;

    move-result-object v3

    .line 417
    .local v3, "roleObj":Lio/realm/sync/permissions/Role;
    invoke-interface {v1, v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    .line 418
    .end local v3    # "roleObj":Lio/realm/sync/permissions/Role;
    goto/16 :goto_133

    .line 419
    :cond_37
    const-string v3, "canRead"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 420
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_50

    .line 421
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canRead(Z)V

    goto/16 :goto_133

    .line 423
    :cond_50
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 424
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'canRead\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 426
    :cond_5b
    const-string v3, "canUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 427
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_74

    .line 428
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canUpdate(Z)V

    goto/16 :goto_133

    .line 430
    :cond_74
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 431
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'canUpdate\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 433
    :cond_7f
    const-string v3, "canDelete"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 434
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_98

    .line 435
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canDelete(Z)V

    goto/16 :goto_133

    .line 437
    :cond_98
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 438
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'canDelete\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 440
    :cond_a3
    const-string v3, "canSetPermissions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 441
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_bc

    .line 442
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canSetPermissions(Z)V

    goto/16 :goto_133

    .line 444
    :cond_bc
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 445
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'canSetPermissions\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 447
    :cond_c7
    const-string v3, "canQuery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 448
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_df

    .line 449
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canQuery(Z)V

    goto :goto_133

    .line 451
    :cond_df
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 452
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'canQuery\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 454
    :cond_ea
    const-string v3, "canCreate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 455
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_102

    .line 456
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canCreate(Z)V

    goto :goto_133

    .line 458
    :cond_102
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 459
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'canCreate\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 461
    :cond_10d
    const-string v3, "canModifySchema"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_130

    .line 462
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_125

    .line 463
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmSet$canModifySchema(Z)V

    goto :goto_133

    .line 465
    :cond_125
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 466
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'canModifySchema\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 469
    :cond_130
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 471
    .end local v2    # "name":Ljava/lang/String;
    :goto_133
    goto/16 :goto_b

    .line 472
    :cond_135
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 473
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lio/realm/sync/permissions/Permission;

    return-object v2
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 316
    sget-object v0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 324
    const-string v0, "__Permission"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lio/realm/sync/permissions/Permission;Ljava/util/Map;)J
    .registers 24
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/sync/permissions/Permission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/sync/permissions/Permission;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 531
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_40

    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_40

    move-object v3, v1

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

    if-eqz v3, :cond_40

    .line 532
    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    return-wide v3

    .line 534
    :cond_40
    const-class v3, Lio/realm/sync/permissions/Permission;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 535
    .local v3, "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 536
    .local v13, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lio/realm/sync/permissions/Permission;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    .line 537
    .local v15, "columnInfo":Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;
    invoke-static {v3}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 538
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    move-object v4, v1

    check-cast v4, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$role()Lio/realm/sync/permissions/Role;

    move-result-object v12

    .line 541
    .local v12, "roleObj":Lio/realm/sync/permissions/Role;
    if-eqz v12, :cond_90

    .line 542
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 543
    .local v4, "cacherole":Ljava/lang/Long;
    if-nez v4, :cond_7b

    .line 544
    invoke-static {v0, v12, v2}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->insert(Lio/realm/Realm;Lio/realm/sync/permissions/Role;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 546
    .end local v4    # "cacherole":Ljava/lang/Long;
    .local v18, "cacherole":Ljava/lang/Long;
    :cond_7b
    move-object/from16 v18, v4

    iget-wide v6, v15, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->roleIndex:J

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/16 v19, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object/from16 v20, v12

    .end local v12    # "roleObj":Lio/realm/sync/permissions/Role;
    .local v20, "roleObj":Lio/realm/sync/permissions/Role;
    move/from16 v12, v19

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_92

    .line 548
    .end local v18    # "cacherole":Ljava/lang/Long;
    .end local v20    # "roleObj":Lio/realm/sync/permissions/Role;
    .restart local v12    # "roleObj":Lio/realm/sync/permissions/Role;
    :cond_90
    move-object/from16 v20, v12

    .end local v12    # "roleObj":Lio/realm/sync/permissions/Role;
    .restart local v20    # "roleObj":Lio/realm/sync/permissions/Role;
    :goto_92
    iget-wide v6, v15, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canReadIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canRead()Z

    move-result v10

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 549
    iget-wide v6, v15, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canUpdateIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canUpdate()Z

    move-result v10

    move-wide v4, v13

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 550
    iget-wide v6, v15, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canDeleteIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canDelete()Z

    move-result v10

    move-wide v4, v13

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 551
    iget-wide v6, v15, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canSetPermissionsIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canSetPermissions()Z

    move-result v10

    move-wide v4, v13

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 552
    iget-wide v6, v15, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canQueryIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canQuery()Z

    move-result v10

    move-wide v4, v13

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 553
    iget-wide v6, v15, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canCreateIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canCreate()Z

    move-result v10

    move-wide v4, v13

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 554
    iget-wide v6, v15, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canModifySchemaIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canModifySchema()Z

    move-result v10

    move-wide v4, v13

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 555
    return-wide v16
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

    .line 559
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Lio/realm/sync/permissions/Permission;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 560
    .local v2, "table":Lio/realm/internal/Table;
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 561
    .local v11, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/sync/permissions/Permission;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    .line 562
    .local v13, "columnInfo":Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;
    const/4 v3, 0x0

    .line 563
    .local v3, "object":Lio/realm/sync/permissions/Permission;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10e

    .line 564
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lio/realm/sync/permissions/Permission;

    .line 565
    .end local v3    # "object":Lio/realm/sync/permissions/Permission;
    .local v14, "object":Lio/realm/sync/permissions/Permission;
    invoke-interface {v1, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 566
    goto/16 :goto_10b

    .line 568
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

    .line 569
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

    invoke-interface {v1, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    goto/16 :goto_10b

    .line 572
    :cond_73
    invoke-static {v2}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 573
    .local v15, "rowIndex":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    move-object v3, v14

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$role()Lio/realm/sync/permissions/Role;

    move-result-object v10

    .line 576
    .local v10, "roleObj":Lio/realm/sync/permissions/Role;
    if-eqz v10, :cond_ab

    .line 577
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 578
    .local v3, "cacherole":Ljava/lang/Long;
    if-nez v3, :cond_97

    .line 579
    invoke-static {v0, v10, v1}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->insert(Lio/realm/Realm;Lio/realm/sync/permissions/Role;Ljava/util/Map;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 581
    .end local v3    # "cacherole":Ljava/lang/Long;
    .local v17, "cacherole":Ljava/lang/Long;
    :cond_97
    move-object/from16 v17, v3

    iget-wide v4, v13, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->roleIndex:J

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v18, 0x0

    move-object v3, v2

    move-wide v6, v15

    move-object/from16 v19, v10

    .end local v10    # "roleObj":Lio/realm/sync/permissions/Role;
    .local v19, "roleObj":Lio/realm/sync/permissions/Role;
    move/from16 v10, v18

    invoke-virtual/range {v3 .. v10}, Lio/realm/internal/Table;->setLink(JJJZ)V

    goto :goto_ad

    .line 583
    .end local v17    # "cacherole":Ljava/lang/Long;
    .end local v19    # "roleObj":Lio/realm/sync/permissions/Role;
    .restart local v10    # "roleObj":Lio/realm/sync/permissions/Role;
    :cond_ab
    move-object/from16 v19, v10

    .end local v10    # "roleObj":Lio/realm/sync/permissions/Role;
    .restart local v19    # "roleObj":Lio/realm/sync/permissions/Role;
    :goto_ad
    iget-wide v5, v13, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canReadIndex:J

    move-object v3, v14

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canRead()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 584
    iget-wide v5, v13, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canUpdateIndex:J

    move-object v3, v14

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canUpdate()Z

    move-result v9

    move-wide v3, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 585
    iget-wide v5, v13, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canDeleteIndex:J

    move-object v3, v14

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canDelete()Z

    move-result v9

    move-wide v3, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 586
    iget-wide v5, v13, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canSetPermissionsIndex:J

    move-object v3, v14

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canSetPermissions()Z

    move-result v9

    move-wide v3, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 587
    iget-wide v5, v13, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canQueryIndex:J

    move-object v3, v14

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canQuery()Z

    move-result v9

    move-wide v3, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 588
    iget-wide v5, v13, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canCreateIndex:J

    move-object v3, v14

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canCreate()Z

    move-result v9

    move-wide v3, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 589
    iget-wide v5, v13, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canModifySchemaIndex:J

    move-object v3, v14

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canModifySchema()Z

    move-result v9

    move-wide v3, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 590
    .end local v15    # "rowIndex":J
    .end local v19    # "roleObj":Lio/realm/sync/permissions/Role;
    nop

    .line 562
    :goto_10b
    move-object v3, v14

    goto/16 :goto_1c

    .line 591
    .end local v14    # "object":Lio/realm/sync/permissions/Permission;
    .local v3, "object":Lio/realm/sync/permissions/Permission;
    :cond_10e
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Permission;Ljava/util/Map;)J
    .registers 24
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/sync/permissions/Permission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/sync/permissions/Permission;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 594
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_40

    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_40

    move-object v3, v1

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

    if-eqz v3, :cond_40

    .line 595
    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    return-wide v3

    .line 597
    :cond_40
    const-class v3, Lio/realm/sync/permissions/Permission;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 598
    .local v3, "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 599
    .local v13, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lio/realm/sync/permissions/Permission;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    .line 600
    .local v15, "columnInfo":Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;
    invoke-static {v3}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 601
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    move-object v4, v1

    check-cast v4, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$role()Lio/realm/sync/permissions/Role;

    move-result-object v12

    .line 604
    .local v12, "roleObj":Lio/realm/sync/permissions/Role;
    if-eqz v12, :cond_90

    .line 605
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 606
    .local v4, "cacherole":Ljava/lang/Long;
    if-nez v4, :cond_7b

    .line 607
    invoke-static {v0, v12, v2}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Role;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 609
    .end local v4    # "cacherole":Ljava/lang/Long;
    .local v18, "cacherole":Ljava/lang/Long;
    :cond_7b
    move-object/from16 v18, v4

    iget-wide v6, v15, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->roleIndex:J

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/16 v19, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    move-object/from16 v20, v12

    .end local v12    # "roleObj":Lio/realm/sync/permissions/Role;
    .local v20, "roleObj":Lio/realm/sync/permissions/Role;
    move/from16 v12, v19

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 610
    .end local v18    # "cacherole":Ljava/lang/Long;
    goto :goto_9a

    .line 611
    .end local v20    # "roleObj":Lio/realm/sync/permissions/Role;
    .restart local v12    # "roleObj":Lio/realm/sync/permissions/Role;
    :cond_90
    move-object/from16 v20, v12

    .end local v12    # "roleObj":Lio/realm/sync/permissions/Role;
    .restart local v20    # "roleObj":Lio/realm/sync/permissions/Role;
    iget-wide v6, v15, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->roleIndex:J

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 613
    :goto_9a
    iget-wide v6, v15, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canReadIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canRead()Z

    move-result v10

    const/4 v11, 0x0

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 614
    iget-wide v6, v15, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canUpdateIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canUpdate()Z

    move-result v10

    move-wide v4, v13

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 615
    iget-wide v6, v15, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canDeleteIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canDelete()Z

    move-result v10

    move-wide v4, v13

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 616
    iget-wide v6, v15, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canSetPermissionsIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canSetPermissions()Z

    move-result v10

    move-wide v4, v13

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 617
    iget-wide v6, v15, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canQueryIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canQuery()Z

    move-result v10

    move-wide v4, v13

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 618
    iget-wide v6, v15, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canCreateIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canCreate()Z

    move-result v10

    move-wide v4, v13

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 619
    iget-wide v6, v15, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canModifySchemaIndex:J

    move-object v4, v1

    check-cast v4, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canModifySchema()Z

    move-result v10

    move-wide v4, v13

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 620
    return-wide v16
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

    .line 624
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Lio/realm/sync/permissions/Permission;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 625
    .local v2, "table":Lio/realm/internal/Table;
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 626
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/sync/permissions/Permission;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    .line 627
    .local v14, "columnInfo":Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;
    const/4 v3, 0x0

    .line 628
    .local v3, "object":Lio/realm/sync/permissions/Permission;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_118

    .line 629
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/sync/permissions/Permission;

    .line 630
    .end local v3    # "object":Lio/realm/sync/permissions/Permission;
    .local v15, "object":Lio/realm/sync/permissions/Permission;
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 631
    goto/16 :goto_115

    .line 633
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

    .line 634
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

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    goto/16 :goto_115

    .line 637
    :cond_73
    invoke-static {v2}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 638
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$role()Lio/realm/sync/permissions/Role;

    move-result-object v11

    .line 641
    .local v11, "roleObj":Lio/realm/sync/permissions/Role;
    if-eqz v11, :cond_ac

    .line 642
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 643
    .local v3, "cacherole":Ljava/lang/Long;
    if-nez v3, :cond_97

    .line 644
    invoke-static {v0, v11, v1}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Role;Ljava/util/Map;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 646
    .end local v3    # "cacherole":Ljava/lang/Long;
    .local v18, "cacherole":Ljava/lang/Long;
    :cond_97
    move-object/from16 v18, v3

    iget-wide v5, v14, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->roleIndex:J

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/16 v19, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v20, v11

    .end local v11    # "roleObj":Lio/realm/sync/permissions/Role;
    .local v20, "roleObj":Lio/realm/sync/permissions/Role;
    move/from16 v11, v19

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 647
    .end local v18    # "cacherole":Ljava/lang/Long;
    goto :goto_b6

    .line 648
    .end local v20    # "roleObj":Lio/realm/sync/permissions/Role;
    .restart local v11    # "roleObj":Lio/realm/sync/permissions/Role;
    :cond_ac
    move-object/from16 v20, v11

    .end local v11    # "roleObj":Lio/realm/sync/permissions/Role;
    .restart local v20    # "roleObj":Lio/realm/sync/permissions/Role;
    iget-wide v5, v14, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->roleIndex:J

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 650
    :goto_b6
    iget-wide v5, v14, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canReadIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canRead()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 651
    iget-wide v5, v14, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canUpdateIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canUpdate()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 652
    iget-wide v5, v14, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canDeleteIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canDelete()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 653
    iget-wide v5, v14, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canSetPermissionsIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canSetPermissions()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 654
    iget-wide v5, v14, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canQueryIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canQuery()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 655
    iget-wide v5, v14, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canCreateIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canCreate()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 656
    iget-wide v5, v14, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canModifySchemaIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;->realmGet$canModifySchema()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 657
    .end local v16    # "rowIndex":J
    .end local v20    # "roleObj":Lio/realm/sync/permissions/Role;
    nop

    .line 627
    :goto_115
    move-object v3, v15

    goto/16 :goto_1c

    .line 658
    .end local v15    # "object":Lio/realm/sync/permissions/Permission;
    .local v3, "object":Lio/realm/sync/permissions/Permission;
    :cond_118
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 755
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 756
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 757
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;

    .line 759
    .local v2, "aPermission":Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;
    iget-object v3, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 760
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 761
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

    .line 763
    :cond_35
    iget-object v5, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 764
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 765
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

    .line 767
    :cond_5d
    iget-object v7, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 769
    :cond_76
    return v0

    .line 756
    .end local v2    # "aPermission":Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;
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

    .line 742
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 744
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 746
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 747
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

    .line 748
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 749
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 750
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 95
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_5

    .line 96
    return-void

    .line 98
    :cond_5
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 99
    .local v0, "context":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iput-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    .line 100
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 101
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 102
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 103
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 104
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 105
    return-void
.end method

.method public realmGet$canCreate()Z
    .registers 4

    .line 261
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 262
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canCreateIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$canDelete()Z
    .registers 4

    .line 195
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 196
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canDeleteIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$canModifySchema()Z
    .registers 4

    .line 283
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 284
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canModifySchemaIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$canQuery()Z
    .registers 4

    .line 239
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 240
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canQueryIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$canRead()Z
    .registers 4

    .line 151
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 152
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canReadIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$canSetPermissions()Z
    .registers 4

    .line 217
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 218
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canSetPermissionsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$canUpdate()Z
    .registers 4

    .line 173
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 174
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canUpdateIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

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

    .line 737
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$role()Lio/realm/sync/permissions/Role;
    .registers 8

    .line 109
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 110
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->roleIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_1b
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    const-class v2, Lio/realm/sync/permissions/Role;

    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v3, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v3, v3, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->roleIndex:J

    invoke-interface {v0, v3, v4}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lio/realm/sync/permissions/Role;

    return-object v0
.end method

.method public realmSet$canCreate(Z)V
    .registers 10
    .param p1, "value"    # Z

    .line 267
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 268
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 269
    return-void

    .line 271
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 272
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canCreateIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 273
    return-void

    .line 276
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 277
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canCreateIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 278
    return-void
.end method

.method public realmSet$canDelete(Z)V
    .registers 10
    .param p1, "value"    # Z

    .line 201
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 202
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 203
    return-void

    .line 205
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 206
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canDeleteIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 207
    return-void

    .line 210
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 211
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canDeleteIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 212
    return-void
.end method

.method public realmSet$canModifySchema(Z)V
    .registers 10
    .param p1, "value"    # Z

    .line 289
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 290
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 291
    return-void

    .line 293
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 294
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canModifySchemaIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 295
    return-void

    .line 298
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 299
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canModifySchemaIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 300
    return-void
.end method

.method public realmSet$canQuery(Z)V
    .registers 10
    .param p1, "value"    # Z

    .line 245
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 246
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 247
    return-void

    .line 249
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 250
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canQueryIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 251
    return-void

    .line 254
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 255
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canQueryIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 256
    return-void
.end method

.method public realmSet$canRead(Z)V
    .registers 10
    .param p1, "value"    # Z

    .line 157
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 158
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 159
    return-void

    .line 161
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 162
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canReadIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 163
    return-void

    .line 166
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 167
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canReadIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 168
    return-void
.end method

.method public realmSet$canSetPermissions(Z)V
    .registers 10
    .param p1, "value"    # Z

    .line 223
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 224
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 225
    return-void

    .line 227
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 228
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canSetPermissionsIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 229
    return-void

    .line 232
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 233
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canSetPermissionsIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 234
    return-void
.end method

.method public realmSet$canUpdate(Z)V
    .registers 10
    .param p1, "value"    # Z

    .line 179
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 180
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 181
    return-void

    .line 183
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 184
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canUpdateIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 185
    return-void

    .line 188
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 189
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canUpdateIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 190
    return-void
.end method

.method public realmSet$role(Lio/realm/sync/permissions/Role;)V
    .registers 12
    .param p1, "value"    # Lio/realm/sync/permissions/Role;

    .line 118
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 119
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 120
    return-void

    .line 122
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "role"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 123
    return-void

    .line 125
    :cond_20
    if-eqz p1, :cond_37

    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 126
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lio/realm/sync/permissions/Role;

    .line 128
    :cond_37
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 129
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_47

    .line 131
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->roleIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    .line 132
    return-void

    .line 134
    :cond_47
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 135
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v3, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->roleIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    move-object v1, p1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lio/realm/internal/Table;->setLink(JJJZ)V

    .line 136
    return-void

    .line 139
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_6c
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 140
    if-nez p1, :cond_85

    .line 141
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->roleIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    .line 142
    return-void

    .line 144
    :cond_85
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 145
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->roleIndex:J

    move-object v3, p1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    .line 146
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 696
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 697
    const-string v0, "Invalid object"

    return-object v0

    .line 699
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Permission = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 700
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {p0}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->realmGet$role()Lio/realm/sync/permissions/Role;

    move-result-object v1

    if-eqz v1, :cond_1f

    const-string v1, "Role"

    goto :goto_21

    :cond_1f
    const-string v1, "null"

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    const-string/jumbo v1, "{canRead:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual {p0}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->realmGet$canRead()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 706
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    const-string/jumbo v1, "{canUpdate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {p0}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->realmGet$canUpdate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 710
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    const-string/jumbo v1, "{canDelete:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {p0}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->realmGet$canDelete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 714
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    const-string/jumbo v1, "{canSetPermissions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {p0}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->realmGet$canSetPermissions()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 718
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    const-string/jumbo v1, "{canQuery:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {p0}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->realmGet$canQuery()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 722
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    const-string/jumbo v1, "{canCreate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {p0}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->realmGet$canCreate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 726
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    const-string/jumbo v1, "{canModifySchema:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-virtual {p0}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->realmGet$canModifySchema()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 730
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.io_realm_sync_permissions_PermissionRealmProxy.ClassNameHelper (io.realm.io_realm_sync_permissions_PermissionRealmProxy$ClassNameHelper)
.class public final Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "io_realm_sync_permissions_PermissionRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "__Permission"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.realm.io_realm_sync_permissions_PermissionRealmProxy.PermissionColumnInfo (io.realm.io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo)
.class final Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "io_realm_sync_permissions_PermissionRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PermissionColumnInfo"
.end annotation


# instance fields
.field canCreateIndex:J

.field canDeleteIndex:J

.field canModifySchemaIndex:J

.field canQueryIndex:J

.field canReadIndex:J

.field canSetPermissionsIndex:J

.field canUpdateIndex:J

.field roleIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 60
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 61
    invoke-virtual {p0, p1, p0}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    .line 62
    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 5
    .param p1, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 47
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 48
    const-string v0, "__Permission"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 49
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string v1, "role"

    const-string v2, "role"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->roleIndex:J

    .line 50
    const-string v1, "canRead"

    const-string v2, "canRead"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canReadIndex:J

    .line 51
    const-string v1, "canUpdate"

    const-string v2, "canUpdate"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canUpdateIndex:J

    .line 52
    const-string v1, "canDelete"

    const-string v2, "canDelete"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canDeleteIndex:J

    .line 53
    const-string v1, "canSetPermissions"

    const-string v2, "canSetPermissions"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canSetPermissionsIndex:J

    .line 54
    const-string v1, "canQuery"

    const-string v2, "canQuery"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canQueryIndex:J

    .line 55
    const-string v1, "canCreate"

    const-string v2, "canCreate"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canCreateIndex:J

    .line 56
    const-string v1, "canModifySchema"

    const-string v2, "canModifySchema"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canModifySchemaIndex:J

    .line 57
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 66
    new-instance v0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 71
    move-object v0, p1

    check-cast v0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    .line 72
    .local v0, "src":Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    .line 73
    .local v1, "dst":Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;
    iget-wide v2, v0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->roleIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->roleIndex:J

    .line 74
    iget-wide v2, v0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canReadIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canReadIndex:J

    .line 75
    iget-wide v2, v0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canUpdateIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canUpdateIndex:J

    .line 76
    iget-wide v2, v0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canDeleteIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canDeleteIndex:J

    .line 77
    iget-wide v2, v0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canSetPermissionsIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canSetPermissionsIndex:J

    .line 78
    iget-wide v2, v0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canQueryIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canQueryIndex:J

    .line 79
    iget-wide v2, v0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canCreateIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canCreateIndex:J

    .line 80
    iget-wide v2, v0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canModifySchemaIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;->canModifySchemaIndex:J

    .line 81
    return-void
.end method
