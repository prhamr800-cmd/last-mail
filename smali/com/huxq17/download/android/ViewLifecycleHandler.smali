###### Class com.huxq17.download.android.ViewLifecycleHandler (com.huxq17.download.android.ViewLifecycleHandler)
.class public Lcom/huxq17/download/android/ViewLifecycleHandler;
.super Ljava/lang/Object;
.source "ViewLifecycleHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huxq17/download/android/ViewLifecycleHandler$DownloadListenerObserver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleLifecycle(Landroidx/lifecycle/Lifecycle;Lcom/huxq17/download/core/DownloadListener;)V
    .registers 4
    .param p0, "lifecycle"    # Landroidx/lifecycle/Lifecycle;
    .param p1, "downloadListener"    # Lcom/huxq17/download/core/DownloadListener;

    .line 14
    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", so disable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huxq17/download/utils/LogUtil;->w(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadListener;->disable()V

    .line 17
    return-void

    .line 19
    :cond_33
    new-instance v0, Lcom/huxq17/download/android/ViewLifecycleHandler$DownloadListenerObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/huxq17/download/android/ViewLifecycleHandler$DownloadListenerObserver;-><init>(Lcom/huxq17/download/core/DownloadListener;Lcom/huxq17/download/android/ViewLifecycleHandler$1;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 20
    return-void
.end method

.method public static handleLifecycleForFragment(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle;Lcom/huxq17/download/core/DownloadListener;)V
    .registers 6
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "lifecycle"    # Landroidx/lifecycle/Lifecycle;
    .param p2, "downloadListener"    # Lcom/huxq17/download/core/DownloadListener;

    .line 24
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", so disable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huxq17/download/utils/LogUtil;->w(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Lcom/huxq17/download/core/DownloadListener;->disable()V

    .line 27
    return-void

    .line 29
    :cond_33
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v2, Lcom/huxq17/download/android/ViewLifecycleHandler$DownloadListenerObserver;

    invoke-direct {v2, p2, v1}, Lcom/huxq17/download/android/ViewLifecycleHandler$DownloadListenerObserver;-><init>(Lcom/huxq17/download/core/DownloadListener;Lcom/huxq17/download/android/ViewLifecycleHandler$1;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_59

    .line 32
    :cond_51
    new-instance v0, Lcom/huxq17/download/android/ViewLifecycleHandler$DownloadListenerObserver;

    invoke-direct {v0, p2, p0, v1}, Lcom/huxq17/download/android/ViewLifecycleHandler$DownloadListenerObserver;-><init>(Lcom/huxq17/download/core/DownloadListener;Landroidx/fragment/app/Fragment;Lcom/huxq17/download/android/ViewLifecycleHandler$1;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 34
    :goto_59
    return-void
.end method

###### Class com.huxq17.download.android.ViewLifecycleHandler.AnonymousClass1 (com.huxq17.download.android.ViewLifecycleHandler$1)
.class synthetic Lcom/huxq17/download/android/ViewLifecycleHandler$1;
.super Ljava/lang/Object;
.source "ViewLifecycleHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huxq17/download/android/ViewLifecycleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$lifecycle$Lifecycle$Event:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 63
    invoke-static {}, Landroidx/lifecycle/Lifecycle$Event;->values()[Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/huxq17/download/android/ViewLifecycleHandler$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    :try_start_9
    sget-object v0, Lcom/huxq17/download/android/ViewLifecycleHandler$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Lcom/huxq17/download/android/ViewLifecycleHandler$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    return-void
.end method

###### Class com.huxq17.download.android.ViewLifecycleHandler.DownloadListenerObserver (com.huxq17.download.android.ViewLifecycleHandler$DownloadListenerObserver)
.class Lcom/huxq17/download/android/ViewLifecycleHandler$DownloadListenerObserver;
.super Ljava/lang/Object;
.source "ViewLifecycleHandler.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huxq17/download/android/ViewLifecycleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadListenerObserver"
.end annotation


# instance fields
.field private downloadListener:Lcom/huxq17/download/core/DownloadListener;

.field private fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method private constructor <init>(Lcom/huxq17/download/core/DownloadListener;)V
    .registers 2
    .param p1, "downloadListener"    # Lcom/huxq17/download/core/DownloadListener;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/huxq17/download/android/ViewLifecycleHandler$DownloadListenerObserver;->downloadListener:Lcom/huxq17/download/core/DownloadListener;

    .line 42
    return-void
.end method

.method private constructor <init>(Lcom/huxq17/download/core/DownloadListener;Landroidx/fragment/app/Fragment;)V
    .registers 3
    .param p1, "downloadListener"    # Lcom/huxq17/download/core/DownloadListener;
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/huxq17/download/android/ViewLifecycleHandler$DownloadListenerObserver;->downloadListener:Lcom/huxq17/download/core/DownloadListener;

    .line 46
    iput-object p2, p0, Lcom/huxq17/download/android/ViewLifecycleHandler$DownloadListenerObserver;->fragment:Landroidx/fragment/app/Fragment;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/huxq17/download/core/DownloadListener;Landroidx/fragment/app/Fragment;Lcom/huxq17/download/android/ViewLifecycleHandler$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/huxq17/download/core/DownloadListener;
    .param p2, "x1"    # Landroidx/fragment/app/Fragment;
    .param p3, "x2"    # Lcom/huxq17/download/android/ViewLifecycleHandler$1;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/huxq17/download/android/ViewLifecycleHandler$DownloadListenerObserver;-><init>(Lcom/huxq17/download/core/DownloadListener;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huxq17/download/core/DownloadListener;Lcom/huxq17/download/android/ViewLifecycleHandler$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/huxq17/download/core/DownloadListener;
    .param p2, "x1"    # Lcom/huxq17/download/android/ViewLifecycleHandler$1;

    .line 36
    invoke-direct {p0, p1}, Lcom/huxq17/download/android/ViewLifecycleHandler$DownloadListenerObserver;-><init>(Lcom/huxq17/download/core/DownloadListener;)V

    return-void
.end method

.method private onDestroy()V
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/huxq17/download/android/ViewLifecycleHandler$DownloadListenerObserver;->downloadListener:Lcom/huxq17/download/core/DownloadListener;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadListener;->disable()V

    .line 59
    return-void
.end method

.method private onStart()V
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/huxq17/download/android/ViewLifecycleHandler$DownloadListenerObserver;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1d

    .line 51
    iget-object v0, p0, Lcom/huxq17/download/android/ViewLifecycleHandler$DownloadListenerObserver;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 52
    iget-object v0, p0, Lcom/huxq17/download/android/ViewLifecycleHandler$DownloadListenerObserver;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huxq17/download/android/ViewLifecycleHandler$DownloadListenerObserver;->fragment:Landroidx/fragment/app/Fragment;

    .line 55
    :cond_1d
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 5
    .param p1, "source"    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 63
    sget-object v0, Lcom/huxq17/download/android/ViewLifecycleHandler$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    goto :goto_14

    .line 68
    :pswitch_c
    invoke-direct {p0}, Lcom/huxq17/download/android/ViewLifecycleHandler$DownloadListenerObserver;->onDestroy()V

    goto :goto_14

    .line 65
    :pswitch_10
    invoke-direct {p0}, Lcom/huxq17/download/android/ViewLifecycleHandler$DownloadListenerObserver;->onStart()V

    .line 66
    nop

    .line 71
    :goto_14
    return-void

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_10
        :pswitch_c
    .end packed-switch
.end method
