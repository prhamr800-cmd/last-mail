###### Class io.realm.internal.android.AndroidCapabilities (io.realm.internal.android.AndroidCapabilities)
.class public Lio/realm/internal/android/AndroidCapabilities;
.super Ljava/lang/Object;
.source "AndroidCapabilities.java"

# interfaces
.implements Lio/realm/internal/Capabilities;


# static fields
.field public static EMULATE_MAIN_THREAD:Z
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "MS_SHOULD_BE_FINAL"
        }
    .end annotation
.end field


# instance fields
.field private final isIntentServiceThread:Z

.field private final looper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lio/realm/internal/android/AndroidCapabilities;->EMULATE_MAIN_THREAD:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lio/realm/internal/android/AndroidCapabilities;->looper:Landroid/os/Looper;

    .line 43
    invoke-static {}, Lio/realm/internal/android/AndroidCapabilities;->isIntentServiceThread()Z

    move-result v0

    iput-boolean v0, p0, Lio/realm/internal/android/AndroidCapabilities;->isIntentServiceThread:Z

    .line 44
    return-void
.end method

.method private hasLooper()Z
    .registers 2

    .line 69
    iget-object v0, p0, Lio/realm/internal/android/AndroidCapabilities;->looper:Landroid/os/Looper;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static isIntentServiceThread()Z
    .registers 2

    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "threadName":Ljava/lang/String;
    if-eqz v0, :cond_14

    const-string v1, "IntentService["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method


# virtual methods
.method public canDeliverNotification()Z
    .registers 2

    .line 48
    invoke-direct {p0}, Lio/realm/internal/android/AndroidCapabilities;->hasLooper()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lio/realm/internal/android/AndroidCapabilities;->isIntentServiceThread:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public checkCanDeliverNotification(Ljava/lang/String;)V
    .registers 5
    .param p1, "exceptionMessage"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    invoke-direct {p0}, Lio/realm/internal/android/AndroidCapabilities;->hasLooper()Z

    move-result v0

    if-nez v0, :cond_27

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    if-nez p1, :cond_d

    const-string v1, ""

    goto :goto_23

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Realm cannot be automatically updated on a thread without a looper."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_27
    iget-boolean v0, p0, Lio/realm/internal/android/AndroidCapabilities;->isIntentServiceThread:Z

    if-eqz v0, :cond_4c

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    if-nez p1, :cond_32

    const-string v1, ""

    goto :goto_48

    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Realm cannot be automatically updated on an IntentService thread."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_4c
    return-void
.end method

.method public isMainThread()Z
    .registers 3

    .line 65
    iget-object v0, p0, Lio/realm/internal/android/AndroidCapabilities;->looper:Landroid/os/Looper;

    if-eqz v0, :cond_12

    sget-boolean v0, Lio/realm/internal/android/AndroidCapabilities;->EMULATE_MAIN_THREAD:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lio/realm/internal/android/AndroidCapabilities;->looper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method
