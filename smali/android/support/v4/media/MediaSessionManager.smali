###### Class android.support.v4.media.MediaSessionManager (android.support.v4.media.MediaSessionManager)
.class public final Landroid/support/v4/media/MediaSessionManager;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;,
        Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;,
        Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "MediaSessionManager"

.field private static final sLock:Ljava/lang/Object;

.field private static volatile sSessionManager:Landroid/support/v4/media/MediaSessionManager;


# instance fields
.field mImpl:Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    const-string v0, "MediaSessionManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/MediaSessionManager;->DEBUG:Z

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaSessionManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_11

    .line 70
    new-instance v0, Landroid/support/v4/media/MediaSessionManagerImplApi28;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaSessionManagerImplApi28;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaSessionManager;->mImpl:Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;

    goto :goto_26

    .line 71
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1f

    .line 72
    new-instance v0, Landroid/support/v4/media/MediaSessionManagerImplApi21;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaSessionManagerImplApi21;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaSessionManager;->mImpl:Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;

    goto :goto_26

    .line 74
    :cond_1f
    new-instance v0, Landroid/support/v4/media/MediaSessionManagerImplBase;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaSessionManagerImplBase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaSessionManager;->mImpl:Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;

    .line 76
    :goto_26
    return-void
.end method

.method public static getSessionManager(Landroid/content/Context;)Landroid/support/v4/media/MediaSessionManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 55
    sget-object v0, Landroid/support/v4/media/MediaSessionManager;->sSessionManager:Landroid/support/v4/media/MediaSessionManager;

    .line 56
    .local v0, "manager":Landroid/support/v4/media/MediaSessionManager;
    if-nez v0, :cond_1f

    .line 57
    sget-object v1, Landroid/support/v4/media/MediaSessionManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_7
    sget-object v2, Landroid/support/v4/media/MediaSessionManager;->sSessionManager:Landroid/support/v4/media/MediaSessionManager;

    move-object v0, v2

    .line 59
    if-nez v0, :cond_1a

    .line 60
    new-instance v2, Landroid/support/v4/media/MediaSessionManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/media/MediaSessionManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/support/v4/media/MediaSessionManager;->sSessionManager:Landroid/support/v4/media/MediaSessionManager;

    .line 61
    sget-object v2, Landroid/support/v4/media/MediaSessionManager;->sSessionManager:Landroid/support/v4/media/MediaSessionManager;

    move-object v0, v2

    .line 63
    :cond_1a
    monitor-exit v1

    goto :goto_1f

    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v2

    .line 65
    :cond_1f
    :goto_1f
    return-object v0
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManager;->mImpl:Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public isTrustedForMediaControl(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;)Z
    .registers 4
    .param p1, "userInfo"    # Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    if-eqz p1, :cond_b

    .line 94
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManager;->mImpl:Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;

    iget-object v1, p1, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-interface {v0, v1}, Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;->isTrustedForMediaControl(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;)Z

    move-result v0

    return v0

    .line 92
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "userInfo should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class android.support.v4.media.MediaSessionManager.MediaSessionManagerImpl (android.support.v4.media.MediaSessionManager$MediaSessionManagerImpl)
.class interface abstract Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MediaSessionManagerImpl"
.end annotation


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract isTrustedForMediaControl(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;)Z
.end method

###### Class android.support.v4.media.MediaSessionManager.RemoteUserInfo (android.support.v4.media.MediaSessionManager$RemoteUserInfo)
.class public final Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteUserInfo"
.end annotation


# static fields
.field public static final LEGACY_CONTROLLER:Ljava/lang/String; = "android.media.session.MediaController"


# instance fields
.field mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .registers 3
    .param p1, "remoteUserInfo"    # Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Landroid/support/v4/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;-><init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_11

    .line 142
    new-instance v0, Landroid/support/v4/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v4/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;

    goto :goto_18

    .line 146
    :cond_11
    new-instance v0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;

    .line 149
    :goto_18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 208
    if-ne p0, p1, :cond_4

    .line 209
    const/4 v0, 0x1

    return v0

    .line 211
    :cond_4
    instance-of v0, p1, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;

    if-nez v0, :cond_a

    .line 212
    const/4 v0, 0x0

    return v0

    .line 214
    :cond_a
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;

    move-object v1, p1

    check-cast v1, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;

    iget-object v1, v1, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 172
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPid()I
    .registers 2

    .line 179
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;->getPid()I

    move-result v0

    return v0
.end method

.method public getUid()I
    .registers 2

    .line 186
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 219
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

###### Class android.support.v4.media.MediaSessionManager.RemoteUserInfoImpl (android.support.v4.media.MediaSessionManager$RemoteUserInfoImpl)
.class interface abstract Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "RemoteUserInfoImpl"
.end annotation


# virtual methods
.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPid()I
.end method

.method public abstract getUid()I
.end method
