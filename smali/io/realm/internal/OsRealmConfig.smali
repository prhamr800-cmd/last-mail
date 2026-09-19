###### Class io.realm.internal.OsRealmConfig (io.realm.internal.OsRealmConfig)
.class public Lio/realm/internal/OsRealmConfig;
.super Ljava/lang/Object;
.source "OsRealmConfig.java"

# interfaces
.implements Lio/realm/internal/NativeObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsRealmConfig$Builder;,
        Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;,
        Lio/realm/internal/OsRealmConfig$SchemaMode;,
        Lio/realm/internal/OsRealmConfig$Durability;
    }
.end annotation


# static fields
.field private static final SCHEMA_MODE_VALUE_ADDITIVE:B = 0x4t

.field private static final SCHEMA_MODE_VALUE_AUTOMATIC:B = 0x0t

.field private static final SCHEMA_MODE_VALUE_IMMUTABLE:B = 0x1t

.field private static final SCHEMA_MODE_VALUE_MANUAL:B = 0x5t

.field private static final SCHEMA_MODE_VALUE_READONLY:B = 0x2t

.field private static final SCHEMA_MODE_VALUE_RESET_FILE:B = 0x3t

.field private static final SYNCSESSION_STOP_POLICY_VALUE_AFTER_CHANGES_UPLOADED:B = 0x2t

.field private static final SYNCSESSION_STOP_POLICY_VALUE_IMMEDIATELY:B = 0x0t

.field private static final SYNCSESSION_STOP_POLICY_VALUE_LIVE_INDEFINETELY:B = 0x1t

.field private static final nativeFinalizerPtr:J


# instance fields
.field private final compactOnLaunchCallback:Lio/realm/CompactOnLaunchCallback;

.field private final context:Lio/realm/internal/NativeContext;

.field private final initializationCallback:Lio/realm/internal/OsSharedRealm$InitializationCallback;

.field private final migrationCallback:Lio/realm/internal/OsSharedRealm$MigrationCallback;

.field private final nativePtr:J

.field private final realmConfiguration:Lio/realm/RealmConfiguration;

.field private final resolvedRealmURI:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 161
    invoke-static {}, Lio/realm/internal/OsRealmConfig;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsRealmConfig;->nativeFinalizerPtr:J

    return-void
.end method

.method private constructor <init>(Lio/realm/RealmConfiguration;ZLio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$MigrationCallback;Lio/realm/internal/OsSharedRealm$InitializationCallback;)V
    .registers 40
    .param p1, "config"    # Lio/realm/RealmConfiguration;
    .param p2, "autoUpdateNotification"    # Z
    .param p3, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "migrationCallback"    # Lio/realm/internal/OsSharedRealm$MigrationCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "initializationCallback"    # Lio/realm/internal/OsSharedRealm$InitializationCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 186
    move-object/from16 v10, p0

    move-object/from16 v11, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Lio/realm/internal/NativeContext;

    invoke-direct {v0}, Lio/realm/internal/NativeContext;-><init>()V

    iput-object v0, v10, Lio/realm/internal/OsRealmConfig;->context:Lio/realm/internal/NativeContext;

    .line 187
    move-object/from16 v12, p1

    iput-object v12, v10, Lio/realm/internal/OsRealmConfig;->realmConfiguration:Lio/realm/RealmConfiguration;

    .line 188
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v13, 0x0

    invoke-static {v0, v13, v1}, Lio/realm/internal/OsRealmConfig;->nativeCreate(Ljava/lang/String;ZZ)J

    move-result-wide v2

    iput-wide v2, v10, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    .line 189
    sget-object v0, Lio/realm/internal/NativeContext;->dummyContext:Lio/realm/internal/NativeContext;

    invoke-virtual {v0, v10}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 192
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;

    move-result-object v0

    iget-object v2, v10, Lio/realm/internal/OsRealmConfig;->realmConfiguration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0, v2}, Lio/realm/internal/ObjectServerFacade;->getUserAndServerUrl(Lio/realm/RealmConfiguration;)[Ljava/lang/Object;

    move-result-object v14

    .line 193
    .local v14, "syncConfigurationOptions":[Ljava/lang/Object;
    aget-object v0, v14, v13

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 194
    .local v23, "syncUserIdentifier":Ljava/lang/String;
    aget-object v0, v14, v1

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    .line 195
    .local v24, "syncRealmUrl":Ljava/lang/String;
    const/4 v0, 0x2

    aget-object v0, v14, v0

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    .line 196
    .local v25, "syncRealmAuthUrl":Ljava/lang/String;
    const/4 v0, 0x3

    aget-object v0, v14, v0

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    .line 197
    .local v26, "syncRefreshToken":Ljava/lang/String;
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x4

    aget-object v2, v14, v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 198
    .local v15, "syncClientValidateSsl":Z
    const/4 v0, 0x5

    aget-object v0, v14, v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 199
    .local v9, "syncSslTrustCertificatePath":Ljava/lang/String;
    const/4 v0, 0x6

    aget-object v0, v14, v0

    move-object/from16 v27, v0

    check-cast v27, Ljava/lang/Byte;

    .line 200
    .local v27, "sessionStopPolicy":Ljava/lang/Byte;
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x7

    aget-object v2, v14, v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v28

    .line 203
    .local v28, "isPartial":Z
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->getEncryptionKey()[B

    move-result-object v5

    .line 204
    .local v5, "key":[B
    if-eqz v5, :cond_71

    .line 205
    iget-wide v2, v10, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    invoke-static {v2, v3, v5}, Lio/realm/internal/OsRealmConfig;->nativeSetEncryptionKey(J[B)V

    .line 209
    :cond_71
    iget-wide v2, v10, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->getDurability()Lio/realm/internal/OsRealmConfig$Durability;

    move-result-object v0

    sget-object v4, Lio/realm/internal/OsRealmConfig$Durability;->MEM_ONLY:Lio/realm/internal/OsRealmConfig$Durability;

    if-ne v0, v4, :cond_7c

    goto :goto_7d

    :cond_7c
    const/4 v1, 0x0

    :goto_7d
    invoke-static {v2, v3, v1}, Lio/realm/internal/OsRealmConfig;->nativeSetInMemory(JZ)V

    .line 212
    iget-wide v0, v10, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    move/from16 v6, p2

    invoke-static {v0, v1, v6}, Lio/realm/internal/OsRealmConfig;->nativeEnableChangeNotification(JZ)V

    .line 215
    sget-object v0, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_MANUAL:Lio/realm/internal/OsRealmConfig$SchemaMode;

    .line 216
    .local v0, "schemaMode":Lio/realm/internal/OsRealmConfig$SchemaMode;
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->isRecoveryConfiguration()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 217
    sget-object v0, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_IMMUTABLE:Lio/realm/internal/OsRealmConfig$SchemaMode;

    .line 225
    .end local v0    # "schemaMode":Lio/realm/internal/OsRealmConfig$SchemaMode;
    .local v29, "schemaMode":Lio/realm/internal/OsRealmConfig$SchemaMode;
    :cond_91
    :goto_91
    move-object/from16 v29, v0

    goto :goto_ab

    .line 218
    .end local v29    # "schemaMode":Lio/realm/internal/OsRealmConfig$SchemaMode;
    .restart local v0    # "schemaMode":Lio/realm/internal/OsRealmConfig$SchemaMode;
    :cond_94
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 219
    sget-object v0, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_READONLY:Lio/realm/internal/OsRealmConfig$SchemaMode;

    goto :goto_91

    .line 220
    :cond_9d
    if-eqz v24, :cond_a2

    .line 221
    sget-object v0, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_ADDITIVE:Lio/realm/internal/OsRealmConfig$SchemaMode;

    goto :goto_91

    .line 222
    :cond_a2
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->shouldDeleteRealmIfMigrationNeeded()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 223
    sget-object v0, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_RESET_FILE:Lio/realm/internal/OsRealmConfig$SchemaMode;

    goto :goto_91

    .line 225
    .end local v0    # "schemaMode":Lio/realm/internal/OsRealmConfig$SchemaMode;
    .restart local v29    # "schemaMode":Lio/realm/internal/OsRealmConfig$SchemaMode;
    :goto_ab
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->getSchemaVersion()J

    move-result-wide v30

    .line 226
    .local v30, "schemaVersion":J
    if-nez p3, :cond_b5

    const-wide/16 v0, 0x0

    :goto_b3
    move-wide v7, v0

    goto :goto_ba

    :cond_b5
    invoke-virtual/range {p3 .. p3}, Lio/realm/internal/OsSchemaInfo;->getNativePtr()J

    move-result-wide v0

    goto :goto_b3

    .line 227
    .local v7, "nativeSchemaPtr":J
    :goto_ba
    move-object/from16 v4, p4

    iput-object v4, v10, Lio/realm/internal/OsRealmConfig;->migrationCallback:Lio/realm/internal/OsSharedRealm$MigrationCallback;

    .line 228
    iget-wide v2, v10, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    invoke-virtual/range {v29 .. v29}, Lio/realm/internal/OsRealmConfig$SchemaMode;->getNativeValue()B

    move-result v0

    move-object/from16 v1, p0

    move v4, v0

    move-object/from16 v32, v5

    .end local v5    # "key":[B
    .local v32, "key":[B
    move-wide/from16 v5, v30

    move-object/from16 v33, v9

    .end local v9    # "syncSslTrustCertificatePath":Ljava/lang/String;
    .local v33, "syncSslTrustCertificatePath":Ljava/lang/String;
    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lio/realm/internal/OsRealmConfig;->nativeSetSchemaConfig(JBJJLio/realm/internal/OsSharedRealm$MigrationCallback;)V

    .line 231
    invoke-virtual/range {p1 .. p1}, Lio/realm/RealmConfiguration;->getCompactOnLaunchCallback()Lio/realm/CompactOnLaunchCallback;

    move-result-object v0

    iput-object v0, v10, Lio/realm/internal/OsRealmConfig;->compactOnLaunchCallback:Lio/realm/CompactOnLaunchCallback;

    .line 232
    iget-object v0, v10, Lio/realm/internal/OsRealmConfig;->compactOnLaunchCallback:Lio/realm/CompactOnLaunchCallback;

    if-eqz v0, :cond_e3

    .line 233
    iget-wide v0, v10, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    iget-object v2, v10, Lio/realm/internal/OsRealmConfig;->compactOnLaunchCallback:Lio/realm/CompactOnLaunchCallback;

    invoke-static {v0, v1, v2}, Lio/realm/internal/OsRealmConfig;->nativeSetCompactOnLaunchCallback(JLio/realm/CompactOnLaunchCallback;)V

    .line 237
    :cond_e3
    iput-object v11, v10, Lio/realm/internal/OsRealmConfig;->initializationCallback:Lio/realm/internal/OsSharedRealm$InitializationCallback;

    .line 238
    if-eqz v11, :cond_ec

    .line 239
    iget-wide v0, v10, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    invoke-direct {v10, v0, v1, v11}, Lio/realm/internal/OsRealmConfig;->nativeSetInitializationCallback(JLio/realm/internal/OsSharedRealm$InitializationCallback;)V

    .line 242
    :cond_ec
    const/4 v1, 0x0

    .line 244
    .local v1, "resolvedRealmURI":Ljava/net/URI;
    if-eqz v24, :cond_11e

    .line 245
    iget-wide v2, v10, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    .line 246
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Byte;->byteValue()B

    move-result v22

    .line 245
    move v4, v15

    .end local v15    # "syncClientValidateSsl":Z
    .local v4, "syncClientValidateSsl":Z
    move-wide v15, v2

    move-object/from16 v17, v24

    move-object/from16 v18, v25

    move-object/from16 v19, v23

    move-object/from16 v20, v26

    move/from16 v21, v28

    invoke-static/range {v15 .. v22}, Lio/realm/internal/OsRealmConfig;->nativeCreateAndSetSyncConfig(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZB)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 248
    .local v2, "resolvedSyncRealmUrl":Ljava/lang/String;
    :try_start_106
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_10b
    .catch Ljava/net/URISyntaxException; {:try_start_106 .. :try_end_10b} :catch_10e

    .line 251
    .end local v1    # "resolvedRealmURI":Ljava/net/URI;
    .local v0, "resolvedRealmURI":Ljava/net/URI;
    nop

    .line 252
    move-object v1, v0

    goto :goto_116

    .line 249
    .end local v0    # "resolvedRealmURI":Ljava/net/URI;
    .restart local v1    # "resolvedRealmURI":Ljava/net/URI;
    :catch_10e
    move-exception v0

    .line 250
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v3, "Cannot create a URI from the Realm URL address"

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :goto_116
    iget-wide v5, v10, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    move-object/from16 v3, v33

    .end local v33    # "syncSslTrustCertificatePath":Ljava/lang/String;
    .local v3, "syncSslTrustCertificatePath":Ljava/lang/String;
    invoke-static {v5, v6, v4, v3}, Lio/realm/internal/OsRealmConfig;->nativeSetSyncConfigSslSettings(JZLjava/lang/String;)V

    goto :goto_121

    .line 254
    .end local v2    # "resolvedSyncRealmUrl":Ljava/lang/String;
    .end local v3    # "syncSslTrustCertificatePath":Ljava/lang/String;
    .end local v4    # "syncClientValidateSsl":Z
    .restart local v15    # "syncClientValidateSsl":Z
    .restart local v33    # "syncSslTrustCertificatePath":Ljava/lang/String;
    :cond_11e
    move v4, v15

    move-object/from16 v3, v33

    .end local v15    # "syncClientValidateSsl":Z
    .end local v33    # "syncSslTrustCertificatePath":Ljava/lang/String;
    .restart local v3    # "syncSslTrustCertificatePath":Ljava/lang/String;
    .restart local v4    # "syncClientValidateSsl":Z
    :goto_121
    iput-object v1, v10, Lio/realm/internal/OsRealmConfig;->resolvedRealmURI:Ljava/net/URI;

    .line 255
    return-void
.end method

.method synthetic constructor <init>(Lio/realm/RealmConfiguration;ZLio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$MigrationCallback;Lio/realm/internal/OsSharedRealm$InitializationCallback;Lio/realm/internal/OsRealmConfig$1;)V
    .registers 7
    .param p1, "x0"    # Lio/realm/RealmConfiguration;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lio/realm/internal/OsSchemaInfo;
    .param p4, "x3"    # Lio/realm/internal/OsSharedRealm$MigrationCallback;
    .param p5, "x4"    # Lio/realm/internal/OsSharedRealm$InitializationCallback;
    .param p6, "x5"    # Lio/realm/internal/OsRealmConfig$1;

    .line 31
    invoke-direct/range {p0 .. p5}, Lio/realm/internal/OsRealmConfig;-><init>(Lio/realm/RealmConfiguration;ZLio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$MigrationCallback;Lio/realm/internal/OsSharedRealm$InitializationCallback;)V

    return-void
.end method

.method private static native nativeCreate(Ljava/lang/String;ZZ)J
.end method

.method private static native nativeCreateAndSetSyncConfig(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZB)Ljava/lang/String;
.end method

.method private static native nativeEnableChangeNotification(JZ)V
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeSetCompactOnLaunchCallback(JLio/realm/CompactOnLaunchCallback;)V
.end method

.method private static native nativeSetEncryptionKey(J[B)V
.end method

.method private static native nativeSetInMemory(JZ)V
.end method

.method private native nativeSetInitializationCallback(JLio/realm/internal/OsSharedRealm$InitializationCallback;)V
.end method

.method private native nativeSetSchemaConfig(JBJJLio/realm/internal/OsSharedRealm$MigrationCallback;)V
    .param p8    # Lio/realm/internal/OsSharedRealm$MigrationCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native nativeSetSyncConfigSslSettings(JZLjava/lang/String;)V
.end method


# virtual methods
.method getContext()Lio/realm/internal/NativeContext;
    .registers 2

    .line 276
    iget-object v0, p0, Lio/realm/internal/OsRealmConfig;->context:Lio/realm/internal/NativeContext;

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .registers 3

    .line 264
    sget-wide v0, Lio/realm/internal/OsRealmConfig;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .registers 3

    .line 259
    iget-wide v0, p0, Lio/realm/internal/OsRealmConfig;->nativePtr:J

    return-wide v0
.end method

.method public getRealmConfiguration()Lio/realm/RealmConfiguration;
    .registers 2

    .line 268
    iget-object v0, p0, Lio/realm/internal/OsRealmConfig;->realmConfiguration:Lio/realm/RealmConfiguration;

    return-object v0
.end method

.method public getResolvedRealmURI()Ljava/net/URI;
    .registers 2

    .line 272
    iget-object v0, p0, Lio/realm/internal/OsRealmConfig;->resolvedRealmURI:Ljava/net/URI;

    return-object v0
.end method

###### Class io.realm.internal.OsRealmConfig.AnonymousClass1 (io.realm.internal.OsRealmConfig$1)
.class synthetic Lio/realm/internal/OsRealmConfig$1;
.super Ljava/lang/Object;
.source "OsRealmConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsRealmConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.realm.internal.OsRealmConfig.Builder (io.realm.internal.OsRealmConfig$Builder)
.class public Lio/realm/internal/OsRealmConfig$Builder;
.super Ljava/lang/Object;
.source "OsRealmConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsRealmConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private autoUpdateNotification:Z

.field private configuration:Lio/realm/RealmConfiguration;

.field private initializationCallback:Lio/realm/internal/OsSharedRealm$InitializationCallback;

.field private migrationCallback:Lio/realm/internal/OsSharedRealm$MigrationCallback;

.field private schemaInfo:Lio/realm/internal/OsSchemaInfo;


# direct methods
.method public constructor <init>(Lio/realm/RealmConfiguration;)V
    .registers 3
    .param p1, "configuration"    # Lio/realm/RealmConfiguration;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/OsRealmConfig$Builder;->schemaInfo:Lio/realm/internal/OsSchemaInfo;

    .line 86
    iput-object v0, p0, Lio/realm/internal/OsRealmConfig$Builder;->migrationCallback:Lio/realm/internal/OsSharedRealm$MigrationCallback;

    .line 87
    iput-object v0, p0, Lio/realm/internal/OsRealmConfig$Builder;->initializationCallback:Lio/realm/internal/OsSharedRealm$InitializationCallback;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/OsRealmConfig$Builder;->autoUpdateNotification:Z

    .line 94
    iput-object p1, p0, Lio/realm/internal/OsRealmConfig$Builder;->configuration:Lio/realm/RealmConfiguration;

    .line 95
    return-void
.end method


# virtual methods
.method public autoUpdateNotification(Z)Lio/realm/internal/OsRealmConfig$Builder;
    .registers 2
    .param p1, "autoUpdateNotification"    # Z

    .line 139
    iput-boolean p1, p0, Lio/realm/internal/OsRealmConfig$Builder;->autoUpdateNotification:Z

    .line 140
    return-object p0
.end method

.method build()Lio/realm/internal/OsRealmConfig;
    .registers 9

    .line 146
    new-instance v7, Lio/realm/internal/OsRealmConfig;

    iget-object v1, p0, Lio/realm/internal/OsRealmConfig$Builder;->configuration:Lio/realm/RealmConfiguration;

    iget-boolean v2, p0, Lio/realm/internal/OsRealmConfig$Builder;->autoUpdateNotification:Z

    iget-object v3, p0, Lio/realm/internal/OsRealmConfig$Builder;->schemaInfo:Lio/realm/internal/OsSchemaInfo;

    iget-object v4, p0, Lio/realm/internal/OsRealmConfig$Builder;->migrationCallback:Lio/realm/internal/OsSharedRealm$MigrationCallback;

    iget-object v5, p0, Lio/realm/internal/OsRealmConfig$Builder;->initializationCallback:Lio/realm/internal/OsSharedRealm$InitializationCallback;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/OsRealmConfig;-><init>(Lio/realm/RealmConfiguration;ZLio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$MigrationCallback;Lio/realm/internal/OsSharedRealm$InitializationCallback;Lio/realm/internal/OsRealmConfig$1;)V

    return-object v7
.end method

.method public initializationCallback(Lio/realm/internal/OsSharedRealm$InitializationCallback;)Lio/realm/internal/OsRealmConfig$Builder;
    .registers 2
    .param p1, "initializationCallback"    # Lio/realm/internal/OsSharedRealm$InitializationCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 127
    iput-object p1, p0, Lio/realm/internal/OsRealmConfig$Builder;->initializationCallback:Lio/realm/internal/OsSharedRealm$InitializationCallback;

    .line 128
    return-object p0
.end method

.method public migrationCallback(Lio/realm/internal/OsSharedRealm$MigrationCallback;)Lio/realm/internal/OsRealmConfig$Builder;
    .registers 2
    .param p1, "migrationCallback"    # Lio/realm/internal/OsSharedRealm$MigrationCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 116
    iput-object p1, p0, Lio/realm/internal/OsRealmConfig$Builder;->migrationCallback:Lio/realm/internal/OsSharedRealm$MigrationCallback;

    .line 117
    return-object p0
.end method

.method public schemaInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/OsRealmConfig$Builder;
    .registers 2
    .param p1, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 105
    iput-object p1, p0, Lio/realm/internal/OsRealmConfig$Builder;->schemaInfo:Lio/realm/internal/OsSchemaInfo;

    .line 106
    return-object p0
.end method

###### Class io.realm.internal.OsRealmConfig.Durability (io.realm.internal.OsRealmConfig$Durability)
.class public final enum Lio/realm/internal/OsRealmConfig$Durability;
.super Ljava/lang/Enum;
.source "OsRealmConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsRealmConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Durability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/internal/OsRealmConfig$Durability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/internal/OsRealmConfig$Durability;

.field public static final enum FULL:Lio/realm/internal/OsRealmConfig$Durability;

.field public static final enum MEM_ONLY:Lio/realm/internal/OsRealmConfig$Durability;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 34
    new-instance v0, Lio/realm/internal/OsRealmConfig$Durability;

    const-string v1, "FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/realm/internal/OsRealmConfig$Durability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$Durability;->FULL:Lio/realm/internal/OsRealmConfig$Durability;

    .line 35
    new-instance v0, Lio/realm/internal/OsRealmConfig$Durability;

    const-string v1, "MEM_ONLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lio/realm/internal/OsRealmConfig$Durability;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$Durability;->MEM_ONLY:Lio/realm/internal/OsRealmConfig$Durability;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Lio/realm/internal/OsRealmConfig$Durability;

    sget-object v1, Lio/realm/internal/OsRealmConfig$Durability;->FULL:Lio/realm/internal/OsRealmConfig$Durability;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/internal/OsRealmConfig$Durability;->MEM_ONLY:Lio/realm/internal/OsRealmConfig$Durability;

    aput-object v1, v0, v3

    sput-object v0, Lio/realm/internal/OsRealmConfig$Durability;->$VALUES:[Lio/realm/internal/OsRealmConfig$Durability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lio/realm/internal/OsRealmConfig$Durability;->value:I

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/OsRealmConfig$Durability;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lio/realm/internal/OsRealmConfig$Durability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/internal/OsRealmConfig$Durability;

    return-object v0
.end method

.method public static values()[Lio/realm/internal/OsRealmConfig$Durability;
    .registers 1

    .line 33
    sget-object v0, Lio/realm/internal/OsRealmConfig$Durability;->$VALUES:[Lio/realm/internal/OsRealmConfig$Durability;

    invoke-virtual {v0}, [Lio/realm/internal/OsRealmConfig$Durability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/OsRealmConfig$Durability;

    return-object v0
.end method

###### Class io.realm.internal.OsRealmConfig.SchemaMode (io.realm.internal.OsRealmConfig$SchemaMode)
.class public final enum Lio/realm/internal/OsRealmConfig$SchemaMode;
.super Ljava/lang/Enum;
.source "OsRealmConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsRealmConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SchemaMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/internal/OsRealmConfig$SchemaMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/internal/OsRealmConfig$SchemaMode;

.field public static final enum SCHEMA_MODE_ADDITIVE:Lio/realm/internal/OsRealmConfig$SchemaMode;

.field public static final enum SCHEMA_MODE_AUTOMATIC:Lio/realm/internal/OsRealmConfig$SchemaMode;

.field public static final enum SCHEMA_MODE_IMMUTABLE:Lio/realm/internal/OsRealmConfig$SchemaMode;

.field public static final enum SCHEMA_MODE_MANUAL:Lio/realm/internal/OsRealmConfig$SchemaMode;

.field public static final enum SCHEMA_MODE_READONLY:Lio/realm/internal/OsRealmConfig$SchemaMode;

.field public static final enum SCHEMA_MODE_RESET_FILE:Lio/realm/internal/OsRealmConfig$SchemaMode;


# instance fields
.field final value:B


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 45
    new-instance v0, Lio/realm/internal/OsRealmConfig$SchemaMode;

    const-string v1, "SCHEMA_MODE_AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/realm/internal/OsRealmConfig$SchemaMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_AUTOMATIC:Lio/realm/internal/OsRealmConfig$SchemaMode;

    .line 46
    new-instance v0, Lio/realm/internal/OsRealmConfig$SchemaMode;

    const-string v1, "SCHEMA_MODE_IMMUTABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lio/realm/internal/OsRealmConfig$SchemaMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_IMMUTABLE:Lio/realm/internal/OsRealmConfig$SchemaMode;

    .line 47
    new-instance v0, Lio/realm/internal/OsRealmConfig$SchemaMode;

    const-string v1, "SCHEMA_MODE_READONLY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lio/realm/internal/OsRealmConfig$SchemaMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_READONLY:Lio/realm/internal/OsRealmConfig$SchemaMode;

    .line 48
    new-instance v0, Lio/realm/internal/OsRealmConfig$SchemaMode;

    const-string v1, "SCHEMA_MODE_RESET_FILE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lio/realm/internal/OsRealmConfig$SchemaMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_RESET_FILE:Lio/realm/internal/OsRealmConfig$SchemaMode;

    .line 49
    new-instance v0, Lio/realm/internal/OsRealmConfig$SchemaMode;

    const-string v1, "SCHEMA_MODE_ADDITIVE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lio/realm/internal/OsRealmConfig$SchemaMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_ADDITIVE:Lio/realm/internal/OsRealmConfig$SchemaMode;

    .line 50
    new-instance v0, Lio/realm/internal/OsRealmConfig$SchemaMode;

    const-string v1, "SCHEMA_MODE_MANUAL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lio/realm/internal/OsRealmConfig$SchemaMode;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_MANUAL:Lio/realm/internal/OsRealmConfig$SchemaMode;

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [Lio/realm/internal/OsRealmConfig$SchemaMode;

    sget-object v1, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_AUTOMATIC:Lio/realm/internal/OsRealmConfig$SchemaMode;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_IMMUTABLE:Lio/realm/internal/OsRealmConfig$SchemaMode;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_READONLY:Lio/realm/internal/OsRealmConfig$SchemaMode;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_RESET_FILE:Lio/realm/internal/OsRealmConfig$SchemaMode;

    aput-object v1, v0, v5

    sget-object v1, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_ADDITIVE:Lio/realm/internal/OsRealmConfig$SchemaMode;

    aput-object v1, v0, v6

    sget-object v1, Lio/realm/internal/OsRealmConfig$SchemaMode;->SCHEMA_MODE_MANUAL:Lio/realm/internal/OsRealmConfig$SchemaMode;

    aput-object v1, v0, v7

    sput-object v0, Lio/realm/internal/OsRealmConfig$SchemaMode;->$VALUES:[Lio/realm/internal/OsRealmConfig$SchemaMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .registers 4
    .param p3, "value"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-byte p3, p0, Lio/realm/internal/OsRealmConfig$SchemaMode;->value:B

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/OsRealmConfig$SchemaMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lio/realm/internal/OsRealmConfig$SchemaMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/internal/OsRealmConfig$SchemaMode;

    return-object v0
.end method

.method public static values()[Lio/realm/internal/OsRealmConfig$SchemaMode;
    .registers 1

    .line 44
    sget-object v0, Lio/realm/internal/OsRealmConfig$SchemaMode;->$VALUES:[Lio/realm/internal/OsRealmConfig$SchemaMode;

    invoke-virtual {v0}, [Lio/realm/internal/OsRealmConfig$SchemaMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/OsRealmConfig$SchemaMode;

    return-object v0
.end method


# virtual methods
.method public getNativeValue()B
    .registers 2

    .line 59
    iget-byte v0, p0, Lio/realm/internal/OsRealmConfig$SchemaMode;->value:B

    return v0
.end method

###### Class io.realm.internal.OsRealmConfig.SyncSessionStopPolicy (io.realm.internal.OsRealmConfig$SyncSessionStopPolicy)
.class public final enum Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;
.super Ljava/lang/Enum;
.source "OsRealmConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsRealmConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncSessionStopPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

.field public static final enum AFTER_CHANGES_UPLOADED:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

.field public static final enum IMMEDIATELY:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

.field public static final enum LIVE_INDEFINITELY:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;


# instance fields
.field final value:B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 64
    new-instance v0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    const-string v1, "IMMEDIATELY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->IMMEDIATELY:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    .line 65
    new-instance v0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    const-string v1, "LIVE_INDEFINITELY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->LIVE_INDEFINITELY:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    .line 66
    new-instance v0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    const-string v1, "AFTER_CHANGES_UPLOADED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->AFTER_CHANGES_UPLOADED:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    sget-object v1, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->IMMEDIATELY:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->LIVE_INDEFINITELY:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->AFTER_CHANGES_UPLOADED:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    aput-object v1, v0, v4

    sput-object v0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->$VALUES:[Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .registers 4
    .param p3, "value"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput-byte p3, p0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->value:B

    .line 72
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 63
    const-class v0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    return-object v0
.end method

.method public static values()[Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;
    .registers 1

    .line 63
    sget-object v0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->$VALUES:[Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    invoke-virtual {v0}, [Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    return-object v0
.end method


# virtual methods
.method public getNativeValue()B
    .registers 2

    .line 75
    iget-byte v0, p0, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->value:B

    return v0
.end method
