###### Class io.realm.SyncConfiguration (io.realm.SyncConfiguration)
.class public Lio/realm/SyncConfiguration;
.super Lio/realm/RealmConfiguration;
.source "SyncConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/SyncConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final INVALID_CHARS:[C

.field static final MAX_FILE_NAME_LENGTH:I = 0xff

.field static final MAX_FULL_PATH_LENGTH:I = 0x100


# instance fields
.field private final deleteRealmOnLogout:Z

.field private final errorHandler:Lio/realm/SyncSession$ErrorHandler;

.field private final isPartial:Z

.field private final serverCertificateAssetName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final serverCertificateFilePath:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final serverUrl:Ljava/net/URI;

.field private final sessionStopPolicy:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

.field private final syncClientValidateSsl:Z

.field private final user:Lio/realm/SyncUser;

.field private final waitForInitialData:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lio/realm/SyncConfiguration;->INVALID_CHARS:[C

    return-void

    :array_a
    .array-data 2
        0x3cs
        0x3es
        0x3as
        0x22s
        0x2fs
        0x5cs
        0x7cs
        0x3fs
        0x2as
    .end array-data
.end method

.method private constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJLio/realm/RealmMigration;ZLio/realm/internal/OsRealmConfig$Durability;Lio/realm/internal/RealmProxyMediator;Lio/realm/rx/RxObservableFactory;Lio/realm/Realm$Transaction;ZLio/realm/SyncUser;Ljava/net/URI;Lio/realm/SyncSession$ErrorHandler;ZZLjava/lang/String;Ljava/lang/String;ZLio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;Z)V
    .registers 42
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "canonicalPath"    # Ljava/lang/String;
    .param p4, "assetFilePath"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "key"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "schemaVersion"    # J
    .param p8, "migration"    # Lio/realm/RealmMigration;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "deleteRealmIfMigrationNeeded"    # Z
    .param p10, "durability"    # Lio/realm/internal/OsRealmConfig$Durability;
    .param p11, "schemaMediator"    # Lio/realm/internal/RealmProxyMediator;
    .param p12, "rxFactory"    # Lio/realm/rx/RxObservableFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p13, "initialDataTransaction"    # Lio/realm/Realm$Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p14, "readOnly"    # Z
    .param p15, "user"    # Lio/realm/SyncUser;
    .param p16, "serverUrl"    # Ljava/net/URI;
    .param p17, "errorHandler"    # Lio/realm/SyncSession$ErrorHandler;
    .param p18, "deleteRealmOnLogout"    # Z
    .param p19, "syncClientValidateSsl"    # Z
    .param p20, "serverCertificateAssetName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p21, "serverCertificateFilePath"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p22, "waitForInitialData"    # Z
    .param p23, "sessionStopPolicy"    # Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;
    .param p24, "isPartial"    # Z

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    .line 128
    const/16 v16, 0x0

    move-object/from16 v15, v16

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lio/realm/RealmConfiguration;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJLio/realm/RealmMigration;ZLio/realm/internal/OsRealmConfig$Durability;Lio/realm/internal/RealmProxyMediator;Lio/realm/rx/RxObservableFactory;Lio/realm/Realm$Transaction;ZLio/realm/CompactOnLaunchCallback;Z)V

    .line 145
    move-object/from16 v1, p15

    iput-object v1, v0, Lio/realm/SyncConfiguration;->user:Lio/realm/SyncUser;

    .line 146
    move-object/from16 v2, p16

    iput-object v2, v0, Lio/realm/SyncConfiguration;->serverUrl:Ljava/net/URI;

    .line 147
    move-object/from16 v3, p17

    iput-object v3, v0, Lio/realm/SyncConfiguration;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    .line 148
    move/from16 v4, p18

    iput-boolean v4, v0, Lio/realm/SyncConfiguration;->deleteRealmOnLogout:Z

    .line 149
    move/from16 v5, p19

    iput-boolean v5, v0, Lio/realm/SyncConfiguration;->syncClientValidateSsl:Z

    .line 150
    move-object/from16 v6, p20

    iput-object v6, v0, Lio/realm/SyncConfiguration;->serverCertificateAssetName:Ljava/lang/String;

    .line 151
    move-object/from16 v7, p21

    iput-object v7, v0, Lio/realm/SyncConfiguration;->serverCertificateFilePath:Ljava/lang/String;

    .line 152
    move/from16 v8, p22

    iput-boolean v8, v0, Lio/realm/SyncConfiguration;->waitForInitialData:Z

    .line 153
    move-object/from16 v9, p23

    iput-object v9, v0, Lio/realm/SyncConfiguration;->sessionStopPolicy:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    .line 154
    move/from16 v10, p24

    iput-boolean v10, v0, Lio/realm/SyncConfiguration;->isPartial:Z

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJLio/realm/RealmMigration;ZLio/realm/internal/OsRealmConfig$Durability;Lio/realm/internal/RealmProxyMediator;Lio/realm/rx/RxObservableFactory;Lio/realm/Realm$Transaction;ZLio/realm/SyncUser;Ljava/net/URI;Lio/realm/SyncSession$ErrorHandler;ZZLjava/lang/String;Ljava/lang/String;ZLio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;ZLio/realm/SyncConfiguration$1;)V
    .registers 26
    .param p1, "x0"    # Ljava/io/File;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # [B
    .param p6, "x5"    # J
    .param p8, "x6"    # Lio/realm/RealmMigration;
    .param p9, "x7"    # Z
    .param p10, "x8"    # Lio/realm/internal/OsRealmConfig$Durability;
    .param p11, "x9"    # Lio/realm/internal/RealmProxyMediator;
    .param p12, "x10"    # Lio/realm/rx/RxObservableFactory;
    .param p13, "x11"    # Lio/realm/Realm$Transaction;
    .param p14, "x12"    # Z
    .param p15, "x13"    # Lio/realm/SyncUser;
    .param p16, "x14"    # Ljava/net/URI;
    .param p17, "x15"    # Lio/realm/SyncSession$ErrorHandler;
    .param p18, "x16"    # Z
    .param p19, "x17"    # Z
    .param p20, "x18"    # Ljava/lang/String;
    .param p21, "x19"    # Ljava/lang/String;
    .param p22, "x20"    # Z
    .param p23, "x21"    # Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;
    .param p24, "x22"    # Z
    .param p25, "x23"    # Lio/realm/SyncConfiguration$1;

    .line 77
    invoke-direct/range {p0 .. p24}, Lio/realm/SyncConfiguration;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJLio/realm/RealmMigration;ZLio/realm/internal/OsRealmConfig$Durability;Lio/realm/internal/RealmProxyMediator;Lio/realm/rx/RxObservableFactory;Lio/realm/Realm$Transaction;ZLio/realm/SyncUser;Ljava/net/URI;Lio/realm/SyncSession$ErrorHandler;ZZLjava/lang/String;Ljava/lang/String;ZLio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;Z)V

    return-void
.end method

.method static synthetic access$000(Ljava/net/URI;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/net/URI;

    .line 77
    invoke-static {p0}, Lio/realm/SyncConfiguration;->getServerPath(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()[C
    .registers 1

    .line 77
    sget-object v0, Lio/realm/SyncConfiguration;->INVALID_CHARS:[C

    return-object v0
.end method

.method public static automatic()Lio/realm/SyncConfiguration;
    .registers 3

    .line 198
    invoke-static {}, Lio/realm/SyncUser;->current()Lio/realm/SyncUser;

    move-result-object v0

    .line 199
    .local v0, "user":Lio/realm/SyncUser;
    if-eqz v0, :cond_b

    .line 202
    invoke-static {v0}, Lio/realm/SyncConfiguration;->getDefaultConfig(Lio/realm/SyncUser;)Lio/realm/SyncConfiguration;

    move-result-object v1

    return-object v1

    .line 200
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No user was logged in."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static automatic(Lio/realm/SyncUser;)Lio/realm/SyncConfiguration;
    .registers 3
    .param p0, "user"    # Lio/realm/SyncUser;

    .line 216
    if-eqz p0, :cond_15

    .line 219
    invoke-virtual {p0}, Lio/realm/SyncUser;->isValid()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 222
    invoke-static {p0}, Lio/realm/SyncConfiguration;->getDefaultConfig(Lio/realm/SyncUser;)Lio/realm/SyncConfiguration;

    move-result-object v0

    return-object v0

    .line 220
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User is no logger valid.  Log the user in again."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'user\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createUrl(Lio/realm/SyncUser;)Ljava/lang/String;
    .registers 7
    .param p0, "user"    # Lio/realm/SyncUser;

    .line 233
    invoke-virtual {p0}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v0

    .line 234
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "protocol":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v3

    .line 237
    .local v3, "port":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_27

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    :cond_27
    const-string v4, "https"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 242
    const-string v1, "realms"

    goto :goto_34

    .line 244
    :cond_32
    const-string v1, "realm"

    .line 247
    :goto_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/default"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static forRecovery(Ljava/lang/String;)Lio/realm/RealmConfiguration;
    .registers 3
    .param p0, "canonicalPath"    # Ljava/lang/String;

    .line 261
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/realm/SyncConfiguration;->forRecovery(Ljava/lang/String;[B[Ljava/lang/Object;)Lio/realm/RealmConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static forRecovery(Ljava/lang/String;[BLio/realm/internal/RealmProxyMediator;)Lio/realm/RealmConfiguration;
    .registers 21
    .param p0, "canonicalPath"    # Ljava/lang/String;
    .param p1, "encryptionKey"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "schemaMediator"    # Lio/realm/internal/RealmProxyMediator;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v11, p2

    .line 265
    new-instance v17, Lio/realm/RealmConfiguration;

    move-object/from16 v0, v17

    sget-object v10, Lio/realm/internal/OsRealmConfig$Durability;->FULL:Lio/realm/internal/OsRealmConfig$Durability;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-direct/range {v0 .. v16}, Lio/realm/RealmConfiguration;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJLio/realm/RealmMigration;ZLio/realm/internal/OsRealmConfig$Durability;Lio/realm/internal/RealmProxyMediator;Lio/realm/rx/RxObservableFactory;Lio/realm/Realm$Transaction;ZLio/realm/CompactOnLaunchCallback;Z)V

    return-object v17
.end method

.method public static varargs forRecovery(Ljava/lang/String;[B[Ljava/lang/Object;)Lio/realm/RealmConfiguration;
    .registers 9
    .param p0, "canonicalPath"    # Ljava/lang/String;
    .param p1, "encryptionKey"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "modules"    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 168
    .local v0, "validatedModules":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    if-eqz p2, :cond_41

    array-length v1, p2

    if-lez v1, :cond_41

    .line 169
    array-length v1, p2

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_4e

    aget-object v3, p2, v2

    .line 170
    .local v3, "module":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lio/realm/annotations/RealmModule;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 174
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v3    # "module":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 171
    .restart local v3    # "module":Ljava/lang/Object;
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not a RealmModule. Add @RealmModule to the class definition."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    .end local v3    # "module":Ljava/lang/Object;
    :cond_41
    invoke-static {}, Lio/realm/Realm;->getDefaultModule()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 178
    invoke-static {}, Lio/realm/Realm;->getDefaultModule()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_4e
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lio/realm/SyncConfiguration;->createSchemaMediator(Ljava/util/Set;Ljava/util/Set;)Lio/realm/internal/RealmProxyMediator;

    move-result-object v1

    .line 183
    .local v1, "schemaMediator":Lio/realm/internal/RealmProxyMediator;
    invoke-static {p0, p1, v1}, Lio/realm/SyncConfiguration;->forRecovery(Ljava/lang/String;[BLio/realm/internal/RealmProxyMediator;)Lio/realm/RealmConfiguration;

    move-result-object v2

    return-object v2
.end method

.method private static getDefaultConfig(Lio/realm/SyncUser;)Lio/realm/SyncConfiguration;
    .registers 3
    .param p0, "user"    # Lio/realm/SyncUser;

    .line 226
    new-instance v0, Lio/realm/SyncConfiguration$Builder;

    invoke-static {p0}, Lio/realm/SyncConfiguration;->createUrl(Lio/realm/SyncUser;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/realm/SyncConfiguration$Builder;-><init>(Lio/realm/SyncUser;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Lio/realm/SyncConfiguration$Builder;->partialRealm()Lio/realm/SyncConfiguration$Builder;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lio/realm/SyncConfiguration$Builder;->build()Lio/realm/SyncConfiguration;

    move-result-object v0

    .line 226
    return-object v0
.end method

.method private static getServerPath(Ljava/net/URI;)Ljava/lang/String;
    .registers 4
    .param p0, "serverUrl"    # Ljava/net/URI;

    .line 278
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "path":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 280
    .local v1, "endIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    .line 281
    return-object v0

    .line 282
    :cond_e
    const/4 v2, 0x1

    if-nez v1, :cond_16

    .line 283
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 285
    :cond_16
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static resolveServerUrl(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;
    .registers 7
    .param p0, "serverUrl"    # Ljava/net/URI;
    .param p1, "userIdentifier"    # Ljava/lang/String;

    .line 270
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/~/"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_25} :catch_26

    return-object v0

    .line 271
    :catch_26
    move-exception v0

    .line 272
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not replace \'/~/\' with a valid user ID."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 291
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 292
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_7b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_7b

    .line 293
    :cond_12
    invoke-super {p0, p1}, Lio/realm/RealmConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    return v1

    .line 295
    :cond_19
    move-object v2, p1

    check-cast v2, Lio/realm/SyncConfiguration;

    .line 297
    .local v2, "that":Lio/realm/SyncConfiguration;
    iget-boolean v3, p0, Lio/realm/SyncConfiguration;->deleteRealmOnLogout:Z

    iget-boolean v4, v2, Lio/realm/SyncConfiguration;->deleteRealmOnLogout:Z

    if-eq v3, v4, :cond_23

    return v1

    .line 298
    :cond_23
    iget-boolean v3, p0, Lio/realm/SyncConfiguration;->syncClientValidateSsl:Z

    iget-boolean v4, v2, Lio/realm/SyncConfiguration;->syncClientValidateSsl:Z

    if-eq v3, v4, :cond_2a

    return v1

    .line 299
    :cond_2a
    iget-object v3, p0, Lio/realm/SyncConfiguration;->serverUrl:Ljava/net/URI;

    iget-object v4, v2, Lio/realm/SyncConfiguration;->serverUrl:Ljava/net/URI;

    invoke-virtual {v3, v4}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    return v1

    .line 300
    :cond_35
    iget-object v3, p0, Lio/realm/SyncConfiguration;->user:Lio/realm/SyncUser;

    iget-object v4, v2, Lio/realm/SyncConfiguration;->user:Lio/realm/SyncUser;

    invoke-virtual {v3, v4}, Lio/realm/SyncUser;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    return v1

    .line 301
    :cond_40
    iget-object v3, p0, Lio/realm/SyncConfiguration;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    iget-object v4, v2, Lio/realm/SyncConfiguration;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    return v1

    .line 302
    :cond_4b
    iget-object v3, p0, Lio/realm/SyncConfiguration;->serverCertificateAssetName:Ljava/lang/String;

    if-eqz v3, :cond_5a

    iget-object v3, p0, Lio/realm/SyncConfiguration;->serverCertificateAssetName:Ljava/lang/String;

    iget-object v4, v2, Lio/realm/SyncConfiguration;->serverCertificateAssetName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    goto :goto_5e

    :cond_5a
    iget-object v3, v2, Lio/realm/SyncConfiguration;->serverCertificateAssetName:Ljava/lang/String;

    if-eqz v3, :cond_5f

    :goto_5e
    return v1

    .line 303
    :cond_5f
    iget-object v3, p0, Lio/realm/SyncConfiguration;->serverCertificateFilePath:Ljava/lang/String;

    if-eqz v3, :cond_6e

    iget-object v3, p0, Lio/realm/SyncConfiguration;->serverCertificateFilePath:Ljava/lang/String;

    iget-object v4, v2, Lio/realm/SyncConfiguration;->serverCertificateFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    goto :goto_72

    :cond_6e
    iget-object v3, v2, Lio/realm/SyncConfiguration;->serverCertificateFilePath:Ljava/lang/String;

    if-eqz v3, :cond_73

    :goto_72
    return v1

    .line 304
    :cond_73
    iget-boolean v3, p0, Lio/realm/SyncConfiguration;->waitForInitialData:Z

    iget-boolean v4, v2, Lio/realm/SyncConfiguration;->waitForInitialData:Z

    if-eq v3, v4, :cond_7a

    return v1

    .line 305
    :cond_7a
    return v0

    .line 292
    .end local v2    # "that":Lio/realm/SyncConfiguration;
    :cond_7b
    :goto_7b
    return v1
.end method

.method public getErrorHandler()Lio/realm/SyncSession$ErrorHandler;
    .registers 2

    .line 358
    iget-object v0, p0, Lio/realm/SyncConfiguration;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    return-object v0
.end method

.method public getServerCertificateAssetName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 380
    iget-object v0, p0, Lio/realm/SyncConfiguration;->serverCertificateAssetName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerCertificateFilePath()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 392
    iget-object v0, p0, Lio/realm/SyncConfiguration;->serverCertificateFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUrl()Ljava/net/URI;
    .registers 2

    .line 354
    iget-object v0, p0, Lio/realm/SyncConfiguration;->serverUrl:Ljava/net/URI;

    return-object v0
.end method

.method public getSessionStopPolicy()Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;
    .registers 2

    .line 429
    iget-object v0, p0, Lio/realm/SyncConfiguration;->sessionStopPolicy:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    return-object v0
.end method

.method public getUser()Lio/realm/SyncUser;
    .registers 2

    .line 344
    iget-object v0, p0, Lio/realm/SyncConfiguration;->user:Lio/realm/SyncUser;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 310
    invoke-super {p0}, Lio/realm/RealmConfiguration;->hashCode()I

    move-result v0

    .line 311
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/realm/SyncConfiguration;->serverUrl:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 312
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/realm/SyncConfiguration;->user:Lio/realm/SyncUser;

    invoke-virtual {v2}, Lio/realm/SyncUser;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 313
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/realm/SyncConfiguration;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 314
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lio/realm/SyncConfiguration;->deleteRealmOnLogout:Z

    add-int/2addr v0, v2

    .line 315
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lio/realm/SyncConfiguration;->syncClientValidateSsl:Z

    add-int/2addr v1, v2

    .line 316
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/realm/SyncConfiguration;->serverCertificateAssetName:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_37

    iget-object v2, p0, Lio/realm/SyncConfiguration;->serverCertificateAssetName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    add-int/2addr v0, v2

    .line 317
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/realm/SyncConfiguration;->serverCertificateFilePath:Ljava/lang/String;

    if-eqz v2, :cond_46

    iget-object v2, p0, Lio/realm/SyncConfiguration;->serverCertificateFilePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    nop

    :cond_46
    add-int/2addr v1, v3

    .line 318
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lio/realm/SyncConfiguration;->waitForInitialData:Z

    add-int/2addr v0, v2

    .line 319
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isPartialRealm()Z
    .registers 2

    .line 442
    iget-boolean v0, p0, Lio/realm/SyncConfiguration;->isPartial:Z

    return v0
.end method

.method isSyncConfiguration()Z
    .registers 2

    .line 418
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDeleteRealmOnLogout()Z
    .registers 2

    .line 368
    iget-boolean v0, p0, Lio/realm/SyncConfiguration;->deleteRealmOnLogout:Z

    return v0
.end method

.method public shouldWaitForInitialRemoteData()Z
    .registers 2

    .line 413
    iget-boolean v0, p0, Lio/realm/SyncConfiguration;->waitForInitialData:Z

    return v0
.end method

.method public syncClientValidateSsl()Z
    .registers 2

    .line 402
    iget-boolean v0, p0, Lio/realm/SyncConfiguration;->syncClientValidateSsl:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lio/realm/RealmConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/realm/SyncConfiguration;->serverUrl:Ljava/net/URI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/realm/SyncConfiguration;->user:Lio/realm/SyncUser;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorHandler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/realm/SyncConfiguration;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteRealmOnLogout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lio/realm/SyncConfiguration;->deleteRealmOnLogout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForInitialRemoteData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lio/realm/SyncConfiguration;->waitForInitialData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.SyncConfiguration.AnonymousClass1 (io.realm.SyncConfiguration$1)
.class synthetic Lio/realm/SyncConfiguration$1;
.super Ljava/lang/Object;
.source "SyncConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SyncConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.realm.SyncConfiguration.Builder (io.realm.SyncConfiguration$Builder)
.class public final Lio/realm/SyncConfiguration$Builder;
.super Ljava/lang/Object;
.source "SyncConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SyncConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private debugSchema:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private defaultFolder:Ljava/io/File;

.field private defaultLocalFileName:Ljava/lang/String;

.field private deleteRealmOnLogout:Z

.field private directory:Ljava/io/File;

.field private durability:Lio/realm/internal/OsRealmConfig$Durability;

.field private errorHandler:Lio/realm/SyncSession$ErrorHandler;

.field private fileName:Ljava/lang/String;

.field private initialDataTransaction:Lio/realm/Realm$Transaction;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private isPartial:Z

.field private key:[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private modules:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private overrideDefaultFolder:Z

.field private overrideDefaultLocalFileName:Z

.field private final pattern:Ljava/util/regex/Pattern;

.field private readOnly:Z

.field private rxFactory:Lio/realm/rx/RxObservableFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private schemaVersion:J

.field private serverCertificateAssetName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private serverCertificateFilePath:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private serverUrl:Ljava/net/URI;

.field private sessionStopPolicy:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

.field private syncClientValidateSsl:Z

.field private user:Lio/realm/SyncUser;

.field private waitForServerChanges:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/realm/SyncUser;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Lio/realm/SyncUser;
    .param p3, "url"    # Ljava/lang/String;

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->overrideDefaultFolder:Z

    .line 453
    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->overrideDefaultLocalFileName:Z

    .line 456
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lio/realm/SyncConfiguration$Builder;->schemaVersion:J

    .line 457
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lio/realm/SyncConfiguration$Builder;->modules:Ljava/util/HashSet;

    .line 458
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lio/realm/SyncConfiguration$Builder;->debugSchema:Ljava/util/HashSet;

    .line 465
    sget-object v1, Lio/realm/internal/OsRealmConfig$Durability;->FULL:Lio/realm/internal/OsRealmConfig$Durability;

    iput-object v1, p0, Lio/realm/SyncConfiguration$Builder;->durability:Lio/realm/internal/OsRealmConfig$Durability;

    .line 466
    const-string v1, "^[A-Za-z0-9_\\-\\.]+$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lio/realm/SyncConfiguration$Builder;->pattern:Ljava/util/regex/Pattern;

    .line 467
    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->readOnly:Z

    .line 468
    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->waitForServerChanges:Z

    .line 470
    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->deleteRealmOnLogout:Z

    .line 472
    const/4 v1, 0x0

    iput-object v1, p0, Lio/realm/SyncConfiguration$Builder;->user:Lio/realm/SyncUser;

    .line 473
    sget-object v1, Lio/realm/SyncManager;->defaultSessionErrorHandler:Lio/realm/SyncSession$ErrorHandler;

    iput-object v1, p0, Lio/realm/SyncConfiguration$Builder;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    .line 474
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/realm/SyncConfiguration$Builder;->syncClientValidateSsl:Z

    .line 479
    sget-object v1, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->AFTER_CHANGES_UPLOADED:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    iput-object v1, p0, Lio/realm/SyncConfiguration$Builder;->sessionStopPolicy:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    .line 480
    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->isPartial:Z

    .line 514
    if-eqz p1, :cond_61

    .line 517
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "realm-object-server"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/realm/SyncConfiguration$Builder;->defaultFolder:Ljava/io/File;

    .line 518
    invoke-static {}, Lio/realm/Realm;->getDefaultModule()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 519
    iget-object v0, p0, Lio/realm/SyncConfiguration$Builder;->modules:Ljava/util/HashSet;

    invoke-static {}, Lio/realm/Realm;->getDefaultModule()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_5a
    invoke-direct {p0, p2}, Lio/realm/SyncConfiguration$Builder;->validateAndSet(Lio/realm/SyncUser;)V

    .line 523
    invoke-direct {p0, p3}, Lio/realm/SyncConfiguration$Builder;->validateAndSet(Ljava/lang/String;)V

    .line 524
    return-void

    .line 515
    :cond_61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call `Realm.init(Context)` before creating a SyncConfiguration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lio/realm/SyncUser;Ljava/lang/String;)V
    .registers 4
    .param p1, "user"    # Lio/realm/SyncUser;
    .param p2, "uri"    # Ljava/lang/String;

    .line 509
    sget-object v0, Lio/realm/BaseRealm;->applicationContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1, p2}, Lio/realm/SyncConfiguration$Builder;-><init>(Landroid/content/Context;Lio/realm/SyncUser;Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method private MD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "in"    # Ljava/lang/String;

    .line 954
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 955
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 956
    .local v1, "buf":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 957
    .local v2, "builder":Ljava/lang/StringBuilder;
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v3, :cond_33

    aget-byte v6, v1, v5

    .line 958
    .local v6, "b":B
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%02X"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 960
    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_37
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_37} :catch_43
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_37} :catch_38

    return-object v3

    .line 963
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "buf":[B
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :catch_38
    move-exception v0

    .line 964
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lio/realm/exceptions/RealmException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 961
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_43
    move-exception v0

    .line 962
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lio/realm/exceptions/RealmException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkModule(Ljava/lang/Object;)V
    .registers 5
    .param p1, "module"    # Ljava/lang/Object;

    .line 1108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/realm/annotations/RealmModule;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1112
    return-void

    .line 1109
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a RealmModule. Add @RealmModule to the class definition."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateAndSet(Lio/realm/SyncUser;)V
    .registers 4
    .param p1, "user"    # Lio/realm/SyncUser;

    .line 528
    if-eqz p1, :cond_13

    .line 531
    invoke-virtual {p1}, Lio/realm/SyncUser;->isValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 534
    iput-object p1, p0, Lio/realm/SyncConfiguration$Builder;->user:Lio/realm/SyncUser;

    .line 535
    return-void

    .line 532
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User not authenticated or authentication expired."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null `user` required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateAndSet(Ljava/lang/String;)V
    .registers 14
    .param p1, "uri"    # Ljava/lang/String;

    .line 539
    if-eqz p1, :cond_1a8

    .line 544
    :try_start_2
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_9} :catch_190

    .line 547
    nop

    .line 551
    :try_start_a
    iget-object v0, p0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "serverScheme":Ljava/lang/String;
    if-nez v0, :cond_2c

    .line 553
    iget-object v1, p0, Lio/realm/SyncConfiguration$Builder;->user:Lio/realm/SyncUser;

    invoke-virtual {v1}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, "authProtocol":Ljava/lang/String;
    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 555
    const-string v2, "realms"

    move-object v0, v2

    goto :goto_2b

    .line 557
    :cond_28
    const-string v2, "realm"

    move-object v0, v2

    .line 559
    .end local v1    # "authProtocol":Ljava/lang/String;
    :goto_2b
    goto :goto_43

    :cond_2c
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 560
    const-string v1, "realm"

    move-object v0, v1

    goto :goto_43

    .line 561
    :cond_38
    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 562
    const-string v1, "realms"

    move-object v0, v1

    .line 566
    :cond_43
    :goto_43
    iget-object v1, p0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, "host":Ljava/lang/String;
    if-nez v1, :cond_56

    .line 568
    iget-object v2, p0, Lio/realm/SyncConfiguration$Builder;->user:Lio/realm/SyncUser;

    invoke-virtual {v2}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 572
    .end local v1    # "host":Ljava/lang/String;
    .local v9, "host":Ljava/lang/String;
    :cond_56
    move-object v9, v1

    iget-object v1, p0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_79

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_79

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 577
    .end local v1    # "path":Ljava/lang/String;
    .local v10, "path":Ljava/lang/String;
    :cond_79
    move-object v10, v1

    new-instance v11, Ljava/net/URI;

    iget-object v1, p0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    .line 578
    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    .line 580
    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v5

    .line 581
    if-eqz v10, :cond_a2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a3

    :cond_a2
    const/4 v1, 0x0

    :goto_a3
    move-object v6, v1

    iget-object v1, p0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    .line 582
    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    .line 583
    invoke-virtual {v1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v8

    move-object v1, v11

    move-object v2, v0

    move-object v4, v9

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, p0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;
    :try_end_b8
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_b8} :catch_178

    .line 587
    .end local v0    # "serverScheme":Ljava/lang/String;
    .end local v9    # "host":Ljava/lang/String;
    .end local v10    # "path":Ljava/lang/String;
    nop

    .line 590
    iget-object v0, p0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_161

    .line 595
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, "pathSegments":[Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x1

    .local v3, "i":I
    :goto_c9
    array-length v4, v1

    if-ge v3, v4, :cond_125

    .line 597
    aget-object v4, v1, v3

    .line 598
    .local v4, "segment":Ljava/lang/String;
    const-string/jumbo v5, "~"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d8

    .line 599
    goto :goto_f4

    .line 601
    :cond_d8
    const-string v5, ".."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10e

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10e

    .line 604
    iget-object v5, p0, Lio/realm/SyncConfiguration$Builder;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 605
    .local v5, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_f7

    .line 596
    .end local v4    # "segment":Ljava/lang/String;
    .end local v5    # "m":Ljava/util/regex/Matcher;
    :goto_f4
    add-int/lit8 v3, v3, 0x1

    goto :goto_c9

    .line 606
    .restart local v4    # "segment":Ljava/lang/String;
    .restart local v5    # "m":Ljava/util/regex/Matcher;
    :cond_f7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The URI must only contain characters 0-9, a-z, A-Z, ., _, and -: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 602
    .end local v5    # "m":Ljava/util/regex/Matcher;
    :cond_10e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The URI has an invalid segment: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 610
    .end local v3    # "i":I
    .end local v4    # "segment":Ljava/lang/String;
    :cond_125
    array-length v3, v1

    sub-int/2addr v3, v2

    aget-object v2, v1, v3

    iput-object v2, p0, Lio/realm/SyncConfiguration$Builder;->defaultLocalFileName:Ljava/lang/String;

    .line 614
    iget-object v2, p0, Lio/realm/SyncConfiguration$Builder;->defaultLocalFileName:Ljava/lang/String;

    const-string v3, ".realm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14a

    iget-object v2, p0, Lio/realm/SyncConfiguration$Builder;->defaultLocalFileName:Ljava/lang/String;

    const-string v3, ".realm.lock"

    .line 615
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14a

    iget-object v2, p0, Lio/realm/SyncConfiguration$Builder;->defaultLocalFileName:Ljava/lang/String;

    const-string v3, ".realm.management"

    .line 616
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14a

    .line 619
    return-void

    .line 617
    :cond_14a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The URI must not end with \'.realm\', \'.realm.lock\' or \'.realm.management: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 592
    .end local v1    # "pathSegments":[Ljava/lang/String;
    :cond_161
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 585
    .end local v0    # "path":Ljava/lang/String;
    :catch_178
    move-exception v0

    .line 586
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 545
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :catch_190
    move-exception v0

    .line 546
    .restart local v0    # "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 540
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_1a8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'uri\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addModule(Ljava/lang/Object;)Lio/realm/SyncConfiguration$Builder;
    .registers 3
    .param p1, "module"    # Ljava/lang/Object;

    .line 812
    if-eqz p1, :cond_a

    .line 813
    invoke-direct {p0, p1}, Lio/realm/SyncConfiguration$Builder;->checkModule(Ljava/lang/Object;)V

    .line 814
    iget-object v0, p0, Lio/realm/SyncConfiguration$Builder;->modules:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 817
    :cond_a
    return-object p0
.end method

.method public build()Lio/realm/SyncConfiguration;
    .registers 35

    .line 989
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    if-eqz v1, :cond_222

    iget-object v1, v0, Lio/realm/SyncConfiguration$Builder;->user:Lio/realm/SyncUser;

    if-eqz v1, :cond_222

    .line 995
    iget-boolean v1, v0, Lio/realm/SyncConfiguration$Builder;->readOnly:Z

    if-eqz v1, :cond_27

    .line 996
    iget-object v1, v0, Lio/realm/SyncConfiguration$Builder;->initialDataTransaction:Lio/realm/Realm$Transaction;

    if-nez v1, :cond_1f

    .line 1000
    iget-boolean v1, v0, Lio/realm/SyncConfiguration$Builder;->waitForServerChanges:Z

    if-eqz v1, :cond_17

    goto :goto_27

    .line 1001
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "A read-only Realms must be provided by some source. \'waitForInitialRemoteData()\' wasn\'t enabled which is currently the only supported source."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 997
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This Realm is marked as read-only. Read-only Realms cannot use initialData(Realm.Transaction)."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1007
    :cond_27
    :goto_27
    iget-object v1, v0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/~/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, v0, Lio/realm/SyncConfiguration$Builder;->user:Lio/realm/SyncUser;

    invoke-virtual {v1}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e

    goto :goto_46

    .line 1008
    :cond_3e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The serverUrl contains a /~/, but the user does not have an identity. Most likely it hasn\'t been authenticated yet or has been created directly from an access token. Use a path without /~/."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1013
    :cond_46
    :goto_46
    iget-object v1, v0, Lio/realm/SyncConfiguration$Builder;->rxFactory:Lio/realm/rx/RxObservableFactory;

    if-nez v1, :cond_57

    invoke-static {}, Lio/realm/RealmConfiguration;->isRxJavaAvailable()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1014
    new-instance v1, Lio/realm/rx/RealmObservableFactory;

    invoke-direct {v1}, Lio/realm/rx/RealmObservableFactory;-><init>()V

    iput-object v1, v0, Lio/realm/SyncConfiguration$Builder;->rxFactory:Lio/realm/rx/RxObservableFactory;

    .line 1020
    :cond_57
    iget-object v1, v0, Lio/realm/SyncConfiguration$Builder;->serverUrl:Ljava/net/URI;

    iget-object v2, v0, Lio/realm/SyncConfiguration$Builder;->user:Lio/realm/SyncUser;

    invoke-virtual {v2}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/realm/SyncConfiguration;->resolveServerUrl(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 1021
    .local v1, "resolvedServerUrl":Ljava/net/URI;
    iget-boolean v2, v0, Lio/realm/SyncConfiguration$Builder;->overrideDefaultFolder:Z

    if-eqz v2, :cond_6a

    iget-object v2, v0, Lio/realm/SyncConfiguration$Builder;->directory:Ljava/io/File;

    goto :goto_6c

    :cond_6a
    iget-object v2, v0, Lio/realm/SyncConfiguration$Builder;->defaultFolder:Ljava/io/File;

    .line 1022
    .local v2, "rootDir":Ljava/io/File;
    :goto_6c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lio/realm/SyncConfiguration$Builder;->user:Lio/realm/SyncUser;

    invoke-virtual {v4}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lio/realm/SyncConfiguration;->access$000(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1023
    .local v5, "realmPathFromRootDir":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1025
    .local v3, "realmFileDirectory":Ljava/io/File;
    iget-boolean v4, v0, Lio/realm/SyncConfiguration$Builder;->overrideDefaultLocalFileName:Z

    if-eqz v4, :cond_96

    iget-object v4, v0, Lio/realm/SyncConfiguration$Builder;->fileName:Ljava/lang/String;

    goto :goto_98

    :cond_96
    iget-object v4, v0, Lio/realm/SyncConfiguration$Builder;->defaultLocalFileName:Ljava/lang/String;

    .line 1026
    .local v4, "realmFileName":Ljava/lang/String;
    :goto_98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1028
    .local v6, "fullPathName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x100

    if-le v7, v11, :cond_120

    .line 1030
    invoke-direct {v0, v4}, Lio/realm/SyncConfiguration$Builder;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1031
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1032
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_120

    .line 1034
    new-instance v7, Ljava/io/File;

    iget-object v12, v0, Lio/realm/SyncConfiguration$Builder;->user:Lio/realm/SyncUser;

    invoke-virtual {v12}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v2, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v7

    .line 1035
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1036
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v11, :cond_108

    goto :goto_120

    .line 1037
    :cond_108
    new-instance v7, Ljava/lang/IllegalStateException;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v8, [Ljava/lang/Object;

    .line 1039
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    aput-object v6, v8, v9

    .line 1037
    const-string v9, "Full path name must not exceed %d characters: %s"

    invoke-static {v12, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1044
    :cond_120
    :goto_120
    move-object v15, v3

    move-object/from16 v29, v6

    .end local v3    # "realmFileDirectory":Ljava/io/File;
    .end local v6    # "fullPathName":Ljava/lang/String;
    .local v15, "realmFileDirectory":Ljava/io/File;
    .local v29, "fullPathName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0xff

    if-gt v3, v6, :cond_1fe

    .line 1051
    invoke-static {}, Lio/realm/SyncConfiguration;->access$100()[C

    move-result-object v3

    array-length v6, v3

    move-object v14, v4

    const/4 v4, 0x0

    .end local v4    # "realmFileName":Ljava/lang/String;
    .local v14, "realmFileName":Ljava/lang/String;
    :goto_132
    if-ge v4, v6, :cond_13f

    aget-char v7, v3, v4

    .line 1052
    .local v7, "c":C
    const/16 v8, 0x5f

    invoke-virtual {v14, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    .line 1051
    .end local v7    # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_132

    .line 1056
    :cond_13f
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_163

    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_14c

    goto :goto_163

    .line 1057
    :cond_14c
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not create directory for saving the Realm: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1060
    :cond_163
    :goto_163
    iget-object v3, v0, Lio/realm/SyncConfiguration$Builder;->serverCertificateAssetName:Ljava/lang/String;

    invoke-static {v3}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_191

    .line 1061
    iget-boolean v3, v0, Lio/realm/SyncConfiguration$Builder;->syncClientValidateSsl:Z

    if-eqz v3, :cond_18a

    .line 1065
    iget-object v3, v0, Lio/realm/SyncConfiguration$Builder;->serverCertificateAssetName:Ljava/lang/String;

    iget-object v4, v0, Lio/realm/SyncConfiguration$Builder;->serverCertificateAssetName:Ljava/lang/String;

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/2addr v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1066
    .local v3, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v15, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lio/realm/SyncConfiguration$Builder;->serverCertificateFilePath:Ljava/lang/String;

    .line 1067
    .end local v3    # "fileName":Ljava/lang/String;
    goto :goto_191

    .line 1068
    :cond_18a
    const-string v3, "SSL Verification is disabled, the provided server certificate will not be used."

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1073
    :cond_191
    :goto_191
    iget-boolean v3, v0, Lio/realm/SyncConfiguration$Builder;->isPartial:Z

    if-eqz v3, :cond_19d

    .line 1074
    new-instance v3, Lio/realm/internal/sync/permissions/ObjectPermissionsModule;

    invoke-direct {v3}, Lio/realm/internal/sync/permissions/ObjectPermissionsModule;-><init>()V

    invoke-virtual {v0, v3}, Lio/realm/SyncConfiguration$Builder;->addModule(Ljava/lang/Object;)Lio/realm/SyncConfiguration$Builder;

    .line 1077
    :cond_19d
    new-instance v30, Lio/realm/SyncConfiguration;

    move-object/from16 v3, v30

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v15, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1081
    invoke-static {v4}, Lio/realm/RealmConfiguration;->getCanonicalPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v0, Lio/realm/SyncConfiguration$Builder;->key:[B

    iget-wide v9, v0, Lio/realm/SyncConfiguration$Builder;->schemaVersion:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, v0, Lio/realm/SyncConfiguration$Builder;->durability:Lio/realm/internal/OsRealmConfig$Durability;

    iget-object v4, v0, Lio/realm/SyncConfiguration$Builder;->modules:Ljava/util/HashSet;

    iget-object v7, v0, Lio/realm/SyncConfiguration$Builder;->debugSchema:Ljava/util/HashSet;

    .line 1088
    invoke-static {v4, v7}, Lio/realm/RealmConfiguration;->createSchemaMediator(Ljava/util/Set;Ljava/util/Set;)Lio/realm/internal/RealmProxyMediator;

    move-result-object v4

    move-object/from16 v31, v14

    .end local v14    # "realmFileName":Ljava/lang/String;
    .local v31, "realmFileName":Ljava/lang/String;
    move-object v14, v4

    iget-object v4, v0, Lio/realm/SyncConfiguration$Builder;->rxFactory:Lio/realm/rx/RxObservableFactory;

    move-object/from16 v32, v15

    .end local v15    # "realmFileDirectory":Ljava/io/File;
    .local v32, "realmFileDirectory":Ljava/io/File;
    move-object v15, v4

    iget-object v4, v0, Lio/realm/SyncConfiguration$Builder;->initialDataTransaction:Lio/realm/Realm$Transaction;

    move-object/from16 v16, v4

    iget-boolean v4, v0, Lio/realm/SyncConfiguration$Builder;->readOnly:Z

    move/from16 v17, v4

    iget-object v4, v0, Lio/realm/SyncConfiguration$Builder;->user:Lio/realm/SyncUser;

    move-object/from16 v18, v4

    iget-object v4, v0, Lio/realm/SyncConfiguration$Builder;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    move-object/from16 v20, v4

    iget-boolean v4, v0, Lio/realm/SyncConfiguration$Builder;->deleteRealmOnLogout:Z

    move/from16 v21, v4

    iget-boolean v4, v0, Lio/realm/SyncConfiguration$Builder;->syncClientValidateSsl:Z

    move/from16 v22, v4

    iget-object v4, v0, Lio/realm/SyncConfiguration$Builder;->serverCertificateAssetName:Ljava/lang/String;

    move-object/from16 v23, v4

    iget-object v4, v0, Lio/realm/SyncConfiguration$Builder;->serverCertificateFilePath:Ljava/lang/String;

    move-object/from16 v24, v4

    iget-boolean v4, v0, Lio/realm/SyncConfiguration$Builder;->waitForServerChanges:Z

    move/from16 v25, v4

    iget-object v4, v0, Lio/realm/SyncConfiguration$Builder;->sessionStopPolicy:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    move-object/from16 v26, v4

    iget-boolean v4, v0, Lio/realm/SyncConfiguration$Builder;->isPartial:Z

    move/from16 v27, v4

    const/16 v28, 0x0

    move-object/from16 v4, v32

    move-object/from16 v33, v5

    .end local v5    # "realmPathFromRootDir":Ljava/lang/String;
    .local v33, "realmPathFromRootDir":Ljava/lang/String;
    move-object/from16 v5, v31

    move-object/from16 v19, v1

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v28}, Lio/realm/SyncConfiguration;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJLio/realm/RealmMigration;ZLio/realm/internal/OsRealmConfig$Durability;Lio/realm/internal/RealmProxyMediator;Lio/realm/rx/RxObservableFactory;Lio/realm/Realm$Transaction;ZLio/realm/SyncUser;Ljava/net/URI;Lio/realm/SyncSession$ErrorHandler;ZZLjava/lang/String;Ljava/lang/String;ZLio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;ZLio/realm/SyncConfiguration$1;)V

    .line 1077
    return-object v30

    .line 1045
    .end local v31    # "realmFileName":Ljava/lang/String;
    .end local v32    # "realmFileDirectory":Ljava/io/File;
    .end local v33    # "realmPathFromRootDir":Ljava/lang/String;
    .restart local v4    # "realmFileName":Ljava/lang/String;
    .restart local v5    # "realmPathFromRootDir":Ljava/lang/String;
    .restart local v15    # "realmFileDirectory":Ljava/io/File;
    :cond_1fe
    move-object/from16 v33, v5

    move-object/from16 v32, v15

    .end local v5    # "realmPathFromRootDir":Ljava/lang/String;
    .end local v15    # "realmFileDirectory":Ljava/io/File;
    .restart local v32    # "realmFileDirectory":Ljava/io/File;
    .restart local v33    # "realmPathFromRootDir":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v8, [Ljava/lang/Object;

    .line 1046
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v10

    .line 1047
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v9

    .line 1045
    const-string v6, "File name exceed %d characters: %d"

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 990
    .end local v1    # "resolvedServerUrl":Ljava/net/URI;
    .end local v2    # "rootDir":Ljava/io/File;
    .end local v4    # "realmFileName":Ljava/lang/String;
    .end local v29    # "fullPathName":Ljava/lang/String;
    .end local v32    # "realmFileDirectory":Ljava/io/File;
    .end local v33    # "realmPathFromRootDir":Ljava/lang/String;
    :cond_222
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "serverUrl() and user() are both required."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public directory(Ljava/io/File;)Lio/realm/SyncConfiguration$Builder;
    .registers 5
    .param p1, "directory"    # Ljava/io/File;

    .line 653
    if-eqz p1, :cond_81

    .line 656
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_61

    .line 660
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_35

    .line 661
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create the specified directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_35
    :goto_35
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 668
    iput-object p1, p0, Lio/realm/SyncConfiguration$Builder;->directory:Ljava/io/File;

    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->overrideDefaultFolder:Z

    .line 670
    return-object p0

    .line 665
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Realm directory is not writable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'directory\' is a file, not a directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'directory\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableSSLVerification()Lio/realm/SyncConfiguration$Builder;
    .registers 2

    .line 907
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->syncClientValidateSsl:Z

    .line 908
    return-object p0
.end method

.method public encryptionKey([B)Lio/realm/SyncConfiguration$Builder;
    .registers 7
    .param p1, "key"    # [B

    .line 681
    if-eqz p1, :cond_2f

    .line 684
    array-length v0, p1

    const/16 v1, 0x40

    if-ne v0, v1, :cond_f

    .line 689
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lio/realm/SyncConfiguration$Builder;->key:[B

    .line 690
    return-object p0

    .line 685
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 687
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 685
    const-string v1, "The provided key must be %s bytes. Yours was: %s"

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-null key must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public errorHandler(Lio/realm/SyncSession$ErrorHandler;)Lio/realm/SyncConfiguration$Builder;
    .registers 4
    .param p1, "errorHandler"    # Lio/realm/SyncSession$ErrorHandler;

    .line 867
    if-eqz p1, :cond_5

    .line 870
    iput-object p1, p0, Lio/realm/SyncConfiguration$Builder;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    .line 871
    return-object p0

    .line 868
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'errorHandler\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public inMemory()Lio/realm/SyncConfiguration$Builder;
    .registers 2

    .line 852
    sget-object v0, Lio/realm/internal/OsRealmConfig$Durability;->MEM_ONLY:Lio/realm/internal/OsRealmConfig$Durability;

    iput-object v0, p0, Lio/realm/SyncConfiguration$Builder;->durability:Lio/realm/internal/OsRealmConfig$Durability;

    .line 853
    return-object p0
.end method

.method public initialData(Lio/realm/Realm$Transaction;)Lio/realm/SyncConfiguration$Builder;
    .registers 2
    .param p1, "transaction"    # Lio/realm/Realm$Transaction;

    .line 839
    iput-object p1, p0, Lio/realm/SyncConfiguration$Builder;->initialDataTransaction:Lio/realm/Realm$Transaction;

    .line 840
    return-object p0
.end method

.method public modules(Ljava/lang/Iterable;)Lio/realm/SyncConfiguration$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/realm/SyncConfiguration$Builder;"
        }
    .end annotation

    .line 798
    .local p1, "modules":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/realm/SyncConfiguration$Builder;->modules:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 799
    if-eqz p1, :cond_19

    .line 800
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 801
    .local v1, "module":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lio/realm/SyncConfiguration$Builder;->addModule(Ljava/lang/Object;)Lio/realm/SyncConfiguration$Builder;

    .line 802
    .end local v1    # "module":Ljava/lang/Object;
    goto :goto_b

    .line 804
    :cond_19
    return-object p0
.end method

.method public varargs modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/SyncConfiguration$Builder;
    .registers 6
    .param p1, "baseModule"    # Ljava/lang/Object;
    .param p2, "additionalModules"    # [Ljava/lang/Object;

    .line 772
    iget-object v0, p0, Lio/realm/SyncConfiguration$Builder;->modules:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 773
    invoke-virtual {p0, p1}, Lio/realm/SyncConfiguration$Builder;->addModule(Ljava/lang/Object;)Lio/realm/SyncConfiguration$Builder;

    .line 775
    if-eqz p2, :cond_16

    .line 776
    array-length v0, p2

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-object v2, p2, v1

    .line 777
    .local v2, "module":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lio/realm/SyncConfiguration$Builder;->addModule(Ljava/lang/Object;)Lio/realm/SyncConfiguration$Builder;

    .line 776
    .end local v2    # "module":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 780
    :cond_16
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lio/realm/SyncConfiguration$Builder;
    .registers 4
    .param p1, "filename"    # Ljava/lang/String;

    .line 630
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 633
    iput-object p1, p0, Lio/realm/SyncConfiguration$Builder;->fileName:Ljava/lang/String;

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->overrideDefaultLocalFileName:Z

    .line 635
    return-object p0

    .line 631
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-empty filename must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public partialRealm()Lio/realm/SyncConfiguration$Builder;
    .registers 2

    .line 948
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->isPartial:Z

    .line 949
    return-object p0
.end method

.method public readOnly()Lio/realm/SyncConfiguration$Builder;
    .registers 2

    .line 939
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->readOnly:Z

    .line 940
    return-object p0
.end method

.method public rxFactory(Lio/realm/rx/RxObservableFactory;)Lio/realm/SyncConfiguration$Builder;
    .registers 2
    .param p1, "factory"    # Lio/realm/rx/RxObservableFactory;

    .line 827
    iput-object p1, p0, Lio/realm/SyncConfiguration$Builder;->rxFactory:Lio/realm/rx/RxObservableFactory;

    .line 828
    return-object p0
.end method

.method varargs schema(Ljava/lang/Class;[Ljava/lang/Class;)Lio/realm/SyncConfiguration$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;[",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Lio/realm/SyncConfiguration$Builder;"
        }
    .end annotation

    .line 700
    .local p1, "firstClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/realm/RealmModel;>;"
    .local p2, "additionalClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lio/realm/RealmModel;>;"
    if-eqz p1, :cond_1b

    .line 703
    iget-object v0, p0, Lio/realm/SyncConfiguration$Builder;->modules:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 704
    iget-object v0, p0, Lio/realm/SyncConfiguration$Builder;->modules:Ljava/util/HashSet;

    sget-object v1, Lio/realm/RealmConfiguration;->DEFAULT_MODULE_MEDIATOR:Lio/realm/internal/RealmProxyMediator;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 705
    iget-object v0, p0, Lio/realm/SyncConfiguration$Builder;->debugSchema:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 707
    if-eqz p2, :cond_1a

    .line 708
    iget-object v0, p0, Lio/realm/SyncConfiguration$Builder;->debugSchema:Ljava/util/HashSet;

    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 711
    :cond_1a
    return-object p0

    .line 701
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-null class must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public schemaVersion(J)Lio/realm/SyncConfiguration$Builder;
    .registers 6
    .param p1, "schemaVersion"    # J

    .line 749
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    .line 752
    iput-wide p1, p0, Lio/realm/SyncConfiguration$Builder;->schemaVersion:J

    .line 753
    return-object p0

    .line 750
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Realm schema version numbers must be 0 (zero) or higher. Yours was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method sessionStopPolicy(Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;)Lio/realm/SyncConfiguration$Builder;
    .registers 2
    .param p1, "policy"    # Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    .line 721
    iput-object p1, p0, Lio/realm/SyncConfiguration$Builder;->sessionStopPolicy:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    .line 722
    return-object p0
.end method

.method public trustedRootCA(Ljava/lang/String;)Lio/realm/SyncConfiguration$Builder;
    .registers 4
    .param p1, "filename"    # Ljava/lang/String;

    .line 892
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 895
    iput-object p1, p0, Lio/realm/SyncConfiguration$Builder;->serverCertificateAssetName:Ljava/lang/String;

    .line 896
    return-object p0

    .line 893
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-empty filename must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public waitForInitialRemoteData()Lio/realm/SyncConfiguration$Builder;
    .registers 2

    .line 924
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/SyncConfiguration$Builder;->waitForServerChanges:Z

    .line 925
    return-object p0
.end method
