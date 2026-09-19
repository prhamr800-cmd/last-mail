###### Class com.google.android.gms.internal.measurement.zzsl (com.google.android.gms.internal.measurement.zzsl)
.class public Lcom/google/android/gms/internal/measurement/zzsl;
.super Ljava/lang/Object;


# static fields
.field private static volatile zzbrk:Landroid/os/UserManager;

.field private static volatile zzbrl:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzsl;->zztj()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzsl;->zzbrl:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUserUnlocked(Landroid/content/Context;)Z
    .registers 2

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzsl;->zztj()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzsl;->zzab(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private static zzab(Landroid/content/Context;)Z
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .line 4
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzsl;->zzbrl:Z

    .line 5
    if-nez v0, :cond_3e

    .line 6
    const/4 v1, 0x1

    move v2, v0

    const/4 v0, 0x1

    :goto_7
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-gt v0, v3, :cond_39

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzsl;->zzac(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 8
    if-nez v3, :cond_14

    .line 9
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/zzsl;->zzbrl:Z

    .line 10
    return v1

    .line 11
    :cond_14
    nop

    .line 12
    :try_start_15
    invoke-virtual {v3}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v5

    if-nez v5, :cond_28

    .line 13
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_28

    :cond_26
    const/4 v2, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v2, 0x1

    :goto_29
    sput-boolean v2, Lcom/google/android/gms/internal/measurement/zzsl;->zzbrl:Z
    :try_end_2b
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_2b} :catch_2c

    .line 14
    goto :goto_39

    .line 15
    :catch_2c
    move-exception v3

    .line 16
    const-string v5, "DirectBootUtils"

    const-string v6, "Failed to check if user is unlocked"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    sput-object v4, Lcom/google/android/gms/internal/measurement/zzsl;->zzbrk:Landroid/os/UserManager;

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 19
    :cond_39
    :goto_39
    move v0, v2

    if-eqz v0, :cond_3e

    .line 20
    sput-object v4, Lcom/google/android/gms/internal/measurement/zzsl;->zzbrk:Landroid/os/UserManager;

    .line 21
    :cond_3e
    return v0
.end method

.method private static zzac(Landroid/content/Context;)Landroid/os/UserManager;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsl;->zzbrk:Landroid/os/UserManager;

    .line 23
    if-nez v0, :cond_1b

    .line 24
    const-class v1, Lcom/google/android/gms/internal/measurement/zzsl;

    monitor-enter v1

    .line 25
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsl;->zzbrk:Landroid/os/UserManager;

    .line 26
    if-nez v0, :cond_16

    .line 27
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzsl;->zzbrk:Landroid/os/UserManager;

    .line 28
    move-object v0, p0

    :cond_16
    monitor-exit v1

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    .line 29
    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public static zztj()Z
    .registers 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
