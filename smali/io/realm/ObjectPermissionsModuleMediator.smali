###### Class io.realm.ObjectPermissionsModuleMediator (io.realm.ObjectPermissionsModuleMediator)
.class Lio/realm/ObjectPermissionsModuleMediator;
.super Lio/realm/internal/RealmProxyMediator;
.source "ObjectPermissionsModuleMediator.java"


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

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 29
    .local v0, "modelClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Lio/realm/RealmModel;>;>;"
    const-class v1, Lio/realm/sync/permissions/RealmPermissions;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    const-class v1, Lio/realm/sync/permissions/Permission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    const-class v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    const-class v1, Lio/realm/sync/permissions/Role;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    const-class v1, Lio/realm/sync/permissions/ClassPermissions;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lio/realm/ObjectPermissionsModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

    .line 35
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

    .line 129
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

    .line 131
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    :goto_11
    const-class v1, Lio/realm/sync/permissions/RealmPermissions;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 132
    move-object v1, p2

    check-cast v1, Lio/realm/sync/permissions/RealmPermissions;

    invoke-static {p1, v1, p3, p4}, Lio/realm/io_realm_sync_permissions_RealmPermissionsRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/RealmPermissions;ZLjava/util/Map;)Lio/realm/sync/permissions/RealmPermissions;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 134
    :cond_27
    const-class v1, Lio/realm/sync/permissions/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 135
    move-object v1, p2

    check-cast v1, Lio/realm/sync/permissions/Permission;

    invoke-static {p1, v1, p3, p4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Permission;ZLjava/util/Map;)Lio/realm/sync/permissions/Permission;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 137
    :cond_3d
    const-class v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 138
    move-object v1, p2

    check-cast v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-static {p1, v1, p3, p4}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/PermissionUser;ZLjava/util/Map;)Lio/realm/sync/permissions/PermissionUser;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 140
    :cond_53
    const-class v1, Lio/realm/sync/permissions/Role;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 141
    move-object v1, p2

    check-cast v1, Lio/realm/sync/permissions/Role;

    invoke-static {p1, v1, p3, p4}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Role;ZLjava/util/Map;)Lio/realm/sync/permissions/Role;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 143
    :cond_69
    const-class v1, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 144
    move-object v1, p2

    check-cast v1, Lio/realm/sync/permissions/ClassPermissions;

    invoke-static {p1, v1, p3, p4}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/ClassPermissions;ZLjava/util/Map;)Lio/realm/sync/permissions/ClassPermissions;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 146
    :cond_7f
    invoke-static {v0}, Lio/realm/ObjectPermissionsModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

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

    .line 50
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/realm/RealmModel;>;"
    invoke-static {p1}, Lio/realm/ObjectPermissionsModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 52
    const-class v0, Lio/realm/sync/permissions/RealmPermissions;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 53
    invoke-static {p2}, Lio/realm/io_realm_sync_permissions_RealmPermissionsRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/io_realm_sync_permissions_RealmPermissionsRealmProxy$RealmPermissionsColumnInfo;

    move-result-object v0

    return-object v0

    .line 55
    :cond_10
    const-class v0, Lio/realm/sync/permissions/Permission;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 56
    invoke-static {p2}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/io_realm_sync_permissions_PermissionRealmProxy$PermissionColumnInfo;

    move-result-object v0

    return-object v0

    .line 58
    :cond_1d
    const-class v0, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 59
    invoke-static {p2}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

    move-result-object v0

    return-object v0

    .line 61
    :cond_2a
    const-class v0, Lio/realm/sync/permissions/Role;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 62
    invoke-static {p2}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/io_realm_sync_permissions_RoleRealmProxy$RoleColumnInfo;

    move-result-object v0

    return-object v0

    .line 64
    :cond_37
    const-class v0, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 65
    invoke-static {p2}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;

    move-result-object v0

    return-object v0

    .line 67
    :cond_44
    invoke-static {p1}, Lio/realm/ObjectPermissionsModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

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

    .line 327
    .local p1, "realmObject":Lio/realm/RealmModel;, "TE;"
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 329
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const-class v1, Lio/realm/sync/permissions/RealmPermissions;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 330
    move-object v1, p1

    check-cast v1, Lio/realm/sync/permissions/RealmPermissions;

    invoke-static {v1, v2, p2, p3}, Lio/realm/io_realm_sync_permissions_RealmPermissionsRealmProxy;->createDetachedCopy(Lio/realm/sync/permissions/RealmPermissions;IILjava/util/Map;)Lio/realm/sync/permissions/RealmPermissions;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 332
    :cond_1f
    const-class v1, Lio/realm/sync/permissions/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 333
    move-object v1, p1

    check-cast v1, Lio/realm/sync/permissions/Permission;

    invoke-static {v1, v2, p2, p3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->createDetachedCopy(Lio/realm/sync/permissions/Permission;IILjava/util/Map;)Lio/realm/sync/permissions/Permission;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 335
    :cond_35
    const-class v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 336
    move-object v1, p1

    check-cast v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-static {v1, v2, p2, p3}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->createDetachedCopy(Lio/realm/sync/permissions/PermissionUser;IILjava/util/Map;)Lio/realm/sync/permissions/PermissionUser;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 338
    :cond_4b
    const-class v1, Lio/realm/sync/permissions/Role;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 339
    move-object v1, p1

    check-cast v1, Lio/realm/sync/permissions/Role;

    invoke-static {v1, v2, p2, p3}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->createDetachedCopy(Lio/realm/sync/permissions/Role;IILjava/util/Map;)Lio/realm/sync/permissions/Role;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 341
    :cond_61
    const-class v1, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 342
    move-object v1, p1

    check-cast v1, Lio/realm/sync/permissions/ClassPermissions;

    invoke-static {v1, v2, p2, p3}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->createDetachedCopy(Lio/realm/sync/permissions/ClassPermissions;IILjava/util/Map;)Lio/realm/sync/permissions/ClassPermissions;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmModel;

    return-object v1

    .line 344
    :cond_77
    invoke-static {v0}, Lio/realm/ObjectPermissionsModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

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

    .line 280
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p1}, Lio/realm/ObjectPermissionsModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 282
    const-class v0, Lio/realm/sync/permissions/RealmPermissions;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 283
    invoke-static {p2, p3, p4}, Lio/realm/io_realm_sync_permissions_RealmPermissionsRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/sync/permissions/RealmPermissions;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 285
    :cond_16
    const-class v0, Lio/realm/sync/permissions/Permission;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 286
    invoke-static {p2, p3, p4}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/sync/permissions/Permission;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 288
    :cond_29
    const-class v0, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 289
    invoke-static {p2, p3, p4}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/sync/permissions/PermissionUser;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 291
    :cond_3c
    const-class v0, Lio/realm/sync/permissions/Role;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 292
    invoke-static {p2, p3, p4}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/sync/permissions/Role;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 294
    :cond_4f
    const-class v0, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 295
    invoke-static {p2, p3, p4}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/sync/permissions/ClassPermissions;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 297
    :cond_62
    invoke-static {p1}, Lio/realm/ObjectPermissionsModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

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

    .line 303
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p1}, Lio/realm/ObjectPermissionsModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 305
    const-class v0, Lio/realm/sync/permissions/RealmPermissions;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 306
    invoke-static {p2, p3}, Lio/realm/io_realm_sync_permissions_RealmPermissionsRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/sync/permissions/RealmPermissions;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 308
    :cond_16
    const-class v0, Lio/realm/sync/permissions/Permission;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 309
    invoke-static {p2, p3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/sync/permissions/Permission;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 311
    :cond_29
    const-class v0, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 312
    invoke-static {p2, p3}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/sync/permissions/PermissionUser;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 314
    :cond_3c
    const-class v0, Lio/realm/sync/permissions/Role;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 315
    invoke-static {p2, p3}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/sync/permissions/Role;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 317
    :cond_4f
    const-class v0, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 318
    invoke-static {p2, p3}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/sync/permissions/ClassPermissions;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    return-object v0

    .line 320
    :cond_62
    invoke-static {p1}, Lio/realm/ObjectPermissionsModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

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

    .line 39
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 40
    .local v0, "infoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lio/realm/RealmModel;>;Lio/realm/internal/OsObjectSchemaInfo;>;"
    const-class v1, Lio/realm/sync/permissions/RealmPermissions;

    invoke-static {}, Lio/realm/io_realm_sync_permissions_RealmPermissionsRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-class v1, Lio/realm/sync/permissions/Permission;

    invoke-static {}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-class v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-static {}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-class v1, Lio/realm/sync/permissions/Role;

    invoke-static {}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-class v1, Lio/realm/sync/permissions/ClassPermissions;

    invoke-static {}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
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

    .line 122
    sget-object v0, Lio/realm/ObjectPermissionsModuleMediator;->MODEL_CLASSES:Ljava/util/Set;

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

    .line 72
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/realm/RealmModel;>;"
    invoke-static {p1}, Lio/realm/ObjectPermissionsModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 74
    const-class v0, Lio/realm/sync/permissions/RealmPermissions;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 75
    const-string v0, "__Realm"

    return-object v0

    .line 77
    :cond_e
    const-class v0, Lio/realm/sync/permissions/Permission;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 78
    const-string v0, "__Permission"

    return-object v0

    .line 80
    :cond_19
    const-class v0, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 81
    const-string v0, "__User"

    return-object v0

    .line 83
    :cond_24
    const-class v0, Lio/realm/sync/permissions/Role;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 84
    const-string v0, "__Role"

    return-object v0

    .line 86
    :cond_2f
    const-class v0, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 87
    const-string v0, "__Class"

    return-object v0

    .line 89
    :cond_3a
    invoke-static {p1}, Lio/realm/ObjectPermissionsModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

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

    .line 153
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

    .line 155
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lio/realm/RealmModel;>;"
    :goto_11
    const-class v1, Lio/realm/sync/permissions/RealmPermissions;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 156
    move-object v1, p2

    check-cast v1, Lio/realm/sync/permissions/RealmPermissions;

    invoke-static {p1, v1, p3}, Lio/realm/io_realm_sync_permissions_RealmPermissionsRealmProxy;->insert(Lio/realm/Realm;Lio/realm/sync/permissions/RealmPermissions;Ljava/util/Map;)J

    goto :goto_5b

    .line 157
    :cond_20
    const-class v1, Lio/realm/sync/permissions/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 158
    move-object v1, p2

    check-cast v1, Lio/realm/sync/permissions/Permission;

    invoke-static {p1, v1, p3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->insert(Lio/realm/Realm;Lio/realm/sync/permissions/Permission;Ljava/util/Map;)J

    goto :goto_5b

    .line 159
    :cond_2f
    const-class v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 160
    move-object v1, p2

    check-cast v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-static {p1, v1, p3}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->insert(Lio/realm/Realm;Lio/realm/sync/permissions/PermissionUser;Ljava/util/Map;)J

    goto :goto_5b

    .line 161
    :cond_3e
    const-class v1, Lio/realm/sync/permissions/Role;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 162
    move-object v1, p2

    check-cast v1, Lio/realm/sync/permissions/Role;

    invoke-static {p1, v1, p3}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->insert(Lio/realm/Realm;Lio/realm/sync/permissions/Role;Ljava/util/Map;)J

    goto :goto_5b

    .line 163
    :cond_4d
    const-class v1, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 164
    move-object v1, p2

    check-cast v1, Lio/realm/sync/permissions/ClassPermissions;

    invoke-static {p1, v1, p3}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->insert(Lio/realm/Realm;Lio/realm/sync/permissions/ClassPermissions;Ljava/util/Map;)J

    .line 168
    :goto_5b
    return-void

    .line 166
    :cond_5c
    invoke-static {v0}, Lio/realm/ObjectPermissionsModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

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

    .line 172
    .local p2, "objects":Ljava/util/Collection;, "Ljava/util/Collection<+Lio/realm/RealmModel;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 173
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    const/4 v1, 0x0

    .line 174
    .local v1, "object":Lio/realm/RealmModel;
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 175
    .local v2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 177
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lio/realm/RealmModel;

    .line 180
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

    .line 182
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lio/realm/RealmModel;>;"
    :goto_2c
    const-class v4, Lio/realm/sync/permissions/RealmPermissions;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 183
    move-object v4, v1

    check-cast v4, Lio/realm/sync/permissions/RealmPermissions;

    invoke-static {p1, v4, v2}, Lio/realm/io_realm_sync_permissions_RealmPermissionsRealmProxy;->insert(Lio/realm/Realm;Lio/realm/sync/permissions/RealmPermissions;Ljava/util/Map;)J

    goto :goto_76

    .line 184
    :cond_3b
    const-class v4, Lio/realm/sync/permissions/Permission;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 185
    move-object v4, v1

    check-cast v4, Lio/realm/sync/permissions/Permission;

    invoke-static {p1, v4, v2}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->insert(Lio/realm/Realm;Lio/realm/sync/permissions/Permission;Ljava/util/Map;)J

    goto :goto_76

    .line 186
    :cond_4a
    const-class v4, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 187
    move-object v4, v1

    check-cast v4, Lio/realm/sync/permissions/PermissionUser;

    invoke-static {p1, v4, v2}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->insert(Lio/realm/Realm;Lio/realm/sync/permissions/PermissionUser;Ljava/util/Map;)J

    goto :goto_76

    .line 188
    :cond_59
    const-class v4, Lio/realm/sync/permissions/Role;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 189
    move-object v4, v1

    check-cast v4, Lio/realm/sync/permissions/Role;

    invoke-static {p1, v4, v2}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->insert(Lio/realm/Realm;Lio/realm/sync/permissions/Role;Ljava/util/Map;)J

    goto :goto_76

    .line 190
    :cond_68
    const-class v4, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 191
    move-object v4, v1

    check-cast v4, Lio/realm/sync/permissions/ClassPermissions;

    invoke-static {p1, v4, v2}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->insert(Lio/realm/Realm;Lio/realm/sync/permissions/ClassPermissions;Ljava/util/Map;)J

    .line 195
    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 196
    const-class v4, Lio/realm/sync/permissions/RealmPermissions;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 197
    invoke-static {p1, v0, v2}, Lio/realm/io_realm_sync_permissions_RealmPermissionsRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_c2

    .line 198
    :cond_88
    const-class v4, Lio/realm/sync/permissions/Permission;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 199
    invoke-static {p1, v0, v2}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_c2

    .line 200
    :cond_94
    const-class v4, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 201
    invoke-static {p1, v0, v2}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_c2

    .line 202
    :cond_a0
    const-class v4, Lio/realm/sync/permissions/Role;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 203
    invoke-static {p1, v0, v2}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_c2

    .line 204
    :cond_ac
    const-class v4, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 205
    invoke-static {p1, v0, v2}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_c2

    .line 207
    :cond_b8
    invoke-static {v3}, Lio/realm/ObjectPermissionsModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v4

    throw v4

    .line 193
    :cond_bd
    invoke-static {v3}, Lio/realm/ObjectPermissionsModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v4

    throw v4

    .line 211
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lio/realm/RealmModel;>;"
    :cond_c2
    :goto_c2
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

    .line 217
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

    .line 219
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lio/realm/RealmModel;>;"
    :goto_11
    const-class v1, Lio/realm/sync/permissions/RealmPermissions;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 220
    move-object v1, p2

    check-cast v1, Lio/realm/sync/permissions/RealmPermissions;

    invoke-static {p1, v1, p3}, Lio/realm/io_realm_sync_permissions_RealmPermissionsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/RealmPermissions;Ljava/util/Map;)J

    goto :goto_5b

    .line 221
    :cond_20
    const-class v1, Lio/realm/sync/permissions/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 222
    move-object v1, p2

    check-cast v1, Lio/realm/sync/permissions/Permission;

    invoke-static {p1, v1, p3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Permission;Ljava/util/Map;)J

    goto :goto_5b

    .line 223
    :cond_2f
    const-class v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 224
    move-object v1, p2

    check-cast v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-static {p1, v1, p3}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/PermissionUser;Ljava/util/Map;)J

    goto :goto_5b

    .line 225
    :cond_3e
    const-class v1, Lio/realm/sync/permissions/Role;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 226
    move-object v1, p2

    check-cast v1, Lio/realm/sync/permissions/Role;

    invoke-static {p1, v1, p3}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Role;Ljava/util/Map;)J

    goto :goto_5b

    .line 227
    :cond_4d
    const-class v1, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 228
    move-object v1, p2

    check-cast v1, Lio/realm/sync/permissions/ClassPermissions;

    invoke-static {p1, v1, p3}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/ClassPermissions;Ljava/util/Map;)J

    .line 232
    :goto_5b
    return-void

    .line 230
    :cond_5c
    invoke-static {v0}, Lio/realm/ObjectPermissionsModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

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

    .line 236
    .local p2, "objects":Ljava/util/Collection;, "Ljava/util/Collection<+Lio/realm/RealmModel;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 237
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    const/4 v1, 0x0

    .line 238
    .local v1, "object":Lio/realm/RealmModel;
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 239
    .local v2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 241
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lio/realm/RealmModel;

    .line 244
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

    .line 246
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lio/realm/RealmModel;>;"
    :goto_2c
    const-class v4, Lio/realm/sync/permissions/RealmPermissions;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 247
    move-object v4, v1

    check-cast v4, Lio/realm/sync/permissions/RealmPermissions;

    invoke-static {p1, v4, v2}, Lio/realm/io_realm_sync_permissions_RealmPermissionsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/RealmPermissions;Ljava/util/Map;)J

    goto :goto_76

    .line 248
    :cond_3b
    const-class v4, Lio/realm/sync/permissions/Permission;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 249
    move-object v4, v1

    check-cast v4, Lio/realm/sync/permissions/Permission;

    invoke-static {p1, v4, v2}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Permission;Ljava/util/Map;)J

    goto :goto_76

    .line 250
    :cond_4a
    const-class v4, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 251
    move-object v4, v1

    check-cast v4, Lio/realm/sync/permissions/PermissionUser;

    invoke-static {p1, v4, v2}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/PermissionUser;Ljava/util/Map;)J

    goto :goto_76

    .line 252
    :cond_59
    const-class v4, Lio/realm/sync/permissions/Role;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 253
    move-object v4, v1

    check-cast v4, Lio/realm/sync/permissions/Role;

    invoke-static {p1, v4, v2}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Role;Ljava/util/Map;)J

    goto :goto_76

    .line 254
    :cond_68
    const-class v4, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 255
    move-object v4, v1

    check-cast v4, Lio/realm/sync/permissions/ClassPermissions;

    invoke-static {p1, v4, v2}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/ClassPermissions;Ljava/util/Map;)J

    .line 259
    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 260
    const-class v4, Lio/realm/sync/permissions/RealmPermissions;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 261
    invoke-static {p1, v0, v2}, Lio/realm/io_realm_sync_permissions_RealmPermissionsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_c2

    .line 262
    :cond_88
    const-class v4, Lio/realm/sync/permissions/Permission;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 263
    invoke-static {p1, v0, v2}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_c2

    .line 264
    :cond_94
    const-class v4, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 265
    invoke-static {p1, v0, v2}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_c2

    .line 266
    :cond_a0
    const-class v4, Lio/realm/sync/permissions/Role;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 267
    invoke-static {p1, v0, v2}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_c2

    .line 268
    :cond_ac
    const-class v4, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 269
    invoke-static {p1, v0, v2}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_c2

    .line 271
    :cond_b8
    invoke-static {v3}, Lio/realm/ObjectPermissionsModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v4

    throw v4

    .line 257
    :cond_bd
    invoke-static {v3}, Lio/realm/ObjectPermissionsModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v4

    throw v4

    .line 275
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lio/realm/RealmModel;>;"
    :cond_c2
    :goto_c2
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

    .line 94
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p6, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 96
    .local v1, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    :try_start_9
    move-object v2, p2

    check-cast v2, Lio/realm/BaseRealm;

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 97
    invoke-static {p1}, Lio/realm/ObjectPermissionsModuleMediator;->checkClass(Ljava/lang/Class;)V

    .line 99
    const-class v0, Lio/realm/sync/permissions/RealmPermissions;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 100
    new-instance v0, Lio/realm/io_realm_sync_permissions_RealmPermissionsRealmProxy;

    invoke-direct {v0}, Lio/realm/io_realm_sync_permissions_RealmPermissionsRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_8e

    .line 116
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 100
    return-object v0

    .line 102
    :cond_2d
    :try_start_2d
    const-class v0, Lio/realm/sync/permissions/Permission;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 103
    new-instance v0, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;

    invoke-direct {v0}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_40
    .catchall {:try_start_2d .. :try_end_40} :catchall_8e

    .line 116
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 103
    return-object v0

    .line 105
    :cond_44
    :try_start_44
    const-class v0, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 106
    new-instance v0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;

    invoke-direct {v0}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_57
    .catchall {:try_start_44 .. :try_end_57} :catchall_8e

    .line 116
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 106
    return-object v0

    .line 108
    :cond_5b
    :try_start_5b
    const-class v0, Lio/realm/sync/permissions/Role;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 109
    new-instance v0, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;

    invoke-direct {v0}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_6e
    .catchall {:try_start_5b .. :try_end_6e} :catchall_8e

    .line 116
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 109
    return-object v0

    .line 111
    :cond_72
    :try_start_72
    const-class v0, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 112
    new-instance v0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;

    invoke-direct {v0}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;
    :try_end_85
    .catchall {:try_start_72 .. :try_end_85} :catchall_8e

    .line 116
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 112
    return-object v0

    .line 114
    :cond_89
    :try_start_89
    invoke-static {p1}, Lio/realm/ObjectPermissionsModuleMediator;->getMissingProxyClassException(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_8e

    .line 116
    :catchall_8e
    move-exception v0

    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    throw v0
.end method

.method public transformerApplied()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
