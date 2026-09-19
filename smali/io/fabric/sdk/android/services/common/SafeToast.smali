###### Class io.fabric.sdk.android.services.common.SafeToast (io.fabric.sdk.android.services.common.SafeToast)
.class public Lio/fabric/sdk/android/services/common/SafeToast;
.super Landroid/widget/Toast;
.source "SafeToast.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method static synthetic access$001(Lio/fabric/sdk/android/services/common/SafeToast;)V
    .registers 1
    .param p0, "x0"    # Lio/fabric/sdk/android/services/common/SafeToast;

    .line 32
    invoke-super {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lio/fabric/sdk/android/services/common/SafeToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .line 72
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 74
    .local v0, "origToast":Landroid/widget/Toast;
    new-instance v1, Lio/fabric/sdk/android/services/common/SafeToast;

    invoke-direct {v1, p0}, Lio/fabric/sdk/android/services/common/SafeToast;-><init>(Landroid/content/Context;)V

    .line 75
    .local v1, "safeToast":Lio/fabric/sdk/android/services/common/SafeToast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/fabric/sdk/android/services/common/SafeToast;->setView(Landroid/view/View;)V

    .line 76
    invoke-virtual {v0}, Landroid/widget/Toast;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/fabric/sdk/android/services/common/SafeToast;->setDuration(I)V

    .line 78
    return-object v1
.end method


# virtual methods
.method public show()V
    .registers 3

    .line 46
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 47
    invoke-super {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1f

    .line 49
    :cond_e
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lio/fabric/sdk/android/services/common/SafeToast$1;

    invoke-direct {v1, p0}, Lio/fabric/sdk/android/services/common/SafeToast$1;-><init>(Lio/fabric/sdk/android/services/common/SafeToast;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    .end local v0    # "handler":Landroid/os/Handler;
    :goto_1f
    return-void
.end method

###### Class io.fabric.sdk.android.services.common.SafeToast.AnonymousClass1 (io.fabric.sdk.android.services.common.SafeToast$1)
.class Lio/fabric/sdk/android/services/common/SafeToast$1;
.super Lio/fabric/sdk/android/services/concurrency/PriorityRunnable;
.source "SafeToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/common/SafeToast;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/fabric/sdk/android/services/common/SafeToast;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/common/SafeToast;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/SafeToast$1;->this$0:Lio/fabric/sdk/android/services/common/SafeToast;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 53
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/SafeToast$1;->this$0:Lio/fabric/sdk/android/services/common/SafeToast;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/SafeToast;->access$001(Lio/fabric/sdk/android/services/common/SafeToast;)V

    .line 54
    return-void
.end method
