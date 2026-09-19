###### Class android.support.v4.media.MediaSessionManagerImplBase (android.support.v4.media.MediaSessionManagerImplBase)
.class Landroid/support/v4/media/MediaSessionManagerImplBase;
.super Ljava/lang/Object;
.source "MediaSessionManagerImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"

.field private static final PERMISSION_MEDIA_CONTENT_CONTROL:Ljava/lang/String; = "android.permission.MEDIA_CONTENT_CONTROL"

.field private static final PERMISSION_STATUS_BAR_SERVICE:Ljava/lang/String; = "android.permission.STATUS_BAR_SERVICE"

.field private static final TAG:Ljava/lang/String; = "MediaSessionManager"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    sget-boolean v0, Landroid/support/v4/media/MediaSessionManager;->DEBUG:Z

    sput-boolean v0, Landroid/support/v4/media/MediaSessionManagerImplBase;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/support/v4/media/MediaSessionManagerImplBase;->mContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManagerImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaSessionManagerImplBase;->mContentResolver:Landroid/content/ContentResolver;

    .line 48
    return-void
.end method

.method private isPermissionGranted(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;Ljava/lang/String;)Z
    .registers 8
    .param p1, "userInfo"    # Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;
    .param p2, "permission"    # Ljava/lang/String;

    .line 84
    invoke-interface {p1}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;->getPid()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1b

    .line 86
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManagerImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 87
    invoke-interface {p1}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-virtual {v0, p2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v1, 0x1

    nop

    :cond_1a
    return v1

    .line 89
    :cond_1b
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManagerImplBase;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;->getPid()I

    move-result v3

    invoke-interface {p1}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result v4

    invoke-virtual {v0, p2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_2d

    const/4 v1, 0x1

    nop

    :cond_2d
    return v1
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .line 52
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManagerImplBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method isEnabledNotificationListener(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;)Z
    .registers 9
    .param p1, "userInfo"    # Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 103
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManagerImplBase;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "enabledNotifListeners":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 106
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "components":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    array-length v4, v2

    if-ge v3, v4, :cond_30

    .line 108
    aget-object v4, v2, v3

    .line 109
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 110
    .local v4, "component":Landroid/content/ComponentName;
    if-eqz v4, :cond_2d

    .line 111
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 112
    const/4 v1, 0x1

    return v1

    .line 107
    .end local v4    # "component":Landroid/content/ComponentName;
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 117
    .end local v2    # "components":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_30
    return v1
.end method

.method public isTrustedForMediaControl(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;)Z
    .registers 7
    .param p1, "userInfo"    # Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/support/v4/media/MediaSessionManagerImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 61
    invoke-interface {p1}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_66

    .line 67
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 66
    nop

    .line 69
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {p1}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result v3

    if-eq v2, v3, :cond_44

    .line 70
    sget-boolean v2, Landroid/support/v4/media/MediaSessionManagerImplBase;->DEBUG:Z

    if-eqz v2, :cond_43

    .line 71
    const-string v2, "MediaSessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t match with the uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-interface {p1}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_43
    return v0

    .line 76
    :cond_44
    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-direct {p0, p1, v2}, Landroid/support/v4/media/MediaSessionManagerImplBase;->isPermissionGranted(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_64

    const-string v2, "android.permission.MEDIA_CONTENT_CONTROL"

    .line 77
    invoke-direct {p0, p1, v2}, Landroid/support/v4/media/MediaSessionManagerImplBase;->isPermissionGranted(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 78
    invoke-interface {p1}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_64

    .line 79
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSessionManagerImplBase;->isEnabledNotificationListener(Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;)Z

    move-result v2

    if-eqz v2, :cond_63

    goto :goto_64

    :cond_63
    goto :goto_65

    :cond_64
    :goto_64
    const/4 v0, 0x1

    :goto_65
    return v0

    .line 62
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_66
    move-exception v1

    .line 63
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v2, Landroid/support/v4/media/MediaSessionManagerImplBase;->DEBUG:Z

    if-eqz v2, :cond_8a

    .line 64
    const-string v2, "MediaSessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_8a
    return v0
.end method

###### Class android.support.v4.media.MediaSessionManagerImplBase.RemoteUserInfoImplBase (android.support.v4.media.MediaSessionManagerImplBase$RemoteUserInfoImplBase)
.class Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;
.super Ljava/lang/Object;
.source "MediaSessionManagerImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaSessionManagerImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteUserInfoImplBase"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mPid:I

.field private mUid:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    .line 127
    iput p2, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPid:I

    .line 128
    iput p3, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    .line 129
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 148
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 149
    return v0

    .line 151
    :cond_4
    instance-of v1, p1, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 152
    return v2

    .line 154
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;

    .line 155
    .local v1, "otherUserInfo":Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;
    iget-object v3, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget v3, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPid:I

    iget v4, v1, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPid:I

    if-ne v3, v4, :cond_24

    iget v3, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    iget v4, v1, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    if-ne v3, v4, :cond_24

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .registers 2

    .line 138
    iget v0, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPid:I

    return v0
.end method

.method public getUid()I
    .registers 2

    .line 143
    iget v0, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 162
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Landroid/support/v4/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
