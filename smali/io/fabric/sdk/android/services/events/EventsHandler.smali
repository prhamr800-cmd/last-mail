###### Class io.fabric.sdk.android.services.events.EventsHandler (io.fabric.sdk.android.services.events.EventsHandler)
.class public abstract Lio/fabric/sdk/android/services/events/EventsHandler;
.super Ljava/lang/Object;
.source "EventsHandler.java"

# interfaces
.implements Lio/fabric/sdk/android/services/events/EventsStorageListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/events/EventsStorageListener;"
    }
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field protected strategy:Lio/fabric/sdk/android/services/events/EventsStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/events/EventsStrategy<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/events/EventsStrategy;Lio/fabric/sdk/android/services/events/EventsFilesManager;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "filesManager"    # Lio/fabric/sdk/android/services/events/EventsFilesManager;
    .param p4, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/services/events/EventsStrategy<",
            "TT;>;",
            "Lio/fabric/sdk/android/services/events/EventsFilesManager;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler;, "Lio/fabric/sdk/android/services/events/EventsHandler<TT;>;"
    .local p2, "strategy":Lio/fabric/sdk/android/services/events/EventsStrategy;, "Lio/fabric/sdk/android/services/events/EventsStrategy<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/events/EventsHandler;->context:Landroid/content/Context;

    .line 39
    iput-object p4, p0, Lio/fabric/sdk/android/services/events/EventsHandler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 40
    iput-object p2, p0, Lio/fabric/sdk/android/services/events/EventsHandler;->strategy:Lio/fabric/sdk/android/services/events/EventsStrategy;

    .line 42
    invoke-virtual {p3, p0}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->registerRollOverListener(Lio/fabric/sdk/android/services/events/EventsStorageListener;)V

    .line 43
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 2

    .line 92
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler;, "Lio/fabric/sdk/android/services/events/EventsHandler<TT;>;"
    new-instance v0, Lio/fabric/sdk/android/services/events/EventsHandler$4;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/events/EventsHandler$4;-><init>(Lio/fabric/sdk/android/services/events/EventsHandler;)V

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/events/EventsHandler;->executeAsync(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method protected executeAsync(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 118
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler;, "Lio/fabric/sdk/android/services/events/EventsHandler<TT;>;"
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsHandler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 121
    goto :goto_e

    .line 119
    :catch_6
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lio/fabric/sdk/android/services/events/EventsHandler;->context:Landroid/content/Context;

    const-string v2, "Failed to submit events task"

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlledError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method protected executeSync(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 110
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler;, "Lio/fabric/sdk/android/services/events/EventsHandler<TT;>;"
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsHandler;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 113
    goto :goto_12

    .line 111
    :catch_a
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lio/fabric/sdk/android/services/events/EventsHandler;->context:Landroid/content/Context;

    const-string v2, "Failed to run events task"

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlledError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method protected abstract getDisabledEventsStrategy()Lio/fabric/sdk/android/services/events/EventsStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/fabric/sdk/android/services/events/EventsStrategy<",
            "TT;>;"
        }
    .end annotation
.end method

.method public onRollOver(Ljava/lang/String;)V
    .registers 3
    .param p1, "rolledOverFile"    # Ljava/lang/String;

    .line 79
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler;, "Lio/fabric/sdk/android/services/events/EventsHandler<TT;>;"
    new-instance v0, Lio/fabric/sdk/android/services/events/EventsHandler$3;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/events/EventsHandler$3;-><init>(Lio/fabric/sdk/android/services/events/EventsHandler;)V

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/events/EventsHandler;->executeAsync(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method public recordEventAsync(Ljava/lang/Object;Z)V
    .registers 4
    .param p2, "sendImmediately"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler;, "Lio/fabric/sdk/android/services/events/EventsHandler<TT;>;"
    .local p1, "event":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/fabric/sdk/android/services/events/EventsHandler$1;

    invoke-direct {v0, p0, p1, p2}, Lio/fabric/sdk/android/services/events/EventsHandler$1;-><init>(Lio/fabric/sdk/android/services/events/EventsHandler;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/events/EventsHandler;->executeAsync(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method public recordEventSync(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler;, "Lio/fabric/sdk/android/services/events/EventsHandler<TT;>;"
    .local p1, "event":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/fabric/sdk/android/services/events/EventsHandler$2;

    invoke-direct {v0, p0, p1}, Lio/fabric/sdk/android/services/events/EventsHandler$2;-><init>(Lio/fabric/sdk/android/services/events/EventsHandler;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/events/EventsHandler;->executeSync(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

###### Class io.fabric.sdk.android.services.events.EventsHandler.AnonymousClass1 (io.fabric.sdk.android.services.events.EventsHandler$1)
.class Lio/fabric/sdk/android/services/events/EventsHandler$1;
.super Ljava/lang/Object;
.source "EventsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/events/EventsHandler;->recordEventAsync(Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

.field final synthetic val$event:Ljava/lang/Object;

.field final synthetic val$sendImmediately:Z


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/events/EventsHandler;Ljava/lang/Object;Z)V
    .registers 4

    .line 46
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler$1;, "Lio/fabric/sdk/android/services/events/EventsHandler.1;"
    iput-object p1, p0, Lio/fabric/sdk/android/services/events/EventsHandler$1;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    iput-object p2, p0, Lio/fabric/sdk/android/services/events/EventsHandler$1;->val$event:Ljava/lang/Object;

    iput-boolean p3, p0, Lio/fabric/sdk/android/services/events/EventsHandler$1;->val$sendImmediately:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 50
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler$1;, "Lio/fabric/sdk/android/services/events/EventsHandler.1;"
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsHandler$1;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    iget-object v0, v0, Lio/fabric/sdk/android/services/events/EventsHandler;->strategy:Lio/fabric/sdk/android/services/events/EventsStrategy;

    iget-object v1, p0, Lio/fabric/sdk/android/services/events/EventsHandler$1;->val$event:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/events/EventsStrategy;->recordEvent(Ljava/lang/Object;)V

    .line 52
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/events/EventsHandler$1;->val$sendImmediately:Z

    if-eqz v0, :cond_14

    .line 54
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsHandler$1;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    iget-object v0, v0, Lio/fabric/sdk/android/services/events/EventsHandler;->strategy:Lio/fabric/sdk/android/services/events/EventsStrategy;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/events/EventsStrategy;->rollFileOver()Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 58
    :cond_14
    goto :goto_1f

    .line 56
    :catch_15
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lio/fabric/sdk/android/services/events/EventsHandler$1;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    iget-object v1, v1, Lio/fabric/sdk/android/services/events/EventsHandler;->context:Landroid/content/Context;

    const-string v2, "Failed to record event."

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlledError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

###### Class io.fabric.sdk.android.services.events.EventsHandler.AnonymousClass2 (io.fabric.sdk.android.services.events.EventsHandler$2)
.class Lio/fabric/sdk/android/services/events/EventsHandler$2;
.super Ljava/lang/Object;
.source "EventsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/events/EventsHandler;->recordEventSync(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

.field final synthetic val$event:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/events/EventsHandler;Ljava/lang/Object;)V
    .registers 3

    .line 64
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler$2;, "Lio/fabric/sdk/android/services/events/EventsHandler.2;"
    iput-object p1, p0, Lio/fabric/sdk/android/services/events/EventsHandler$2;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    iput-object p2, p0, Lio/fabric/sdk/android/services/events/EventsHandler$2;->val$event:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 68
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler$2;, "Lio/fabric/sdk/android/services/events/EventsHandler.2;"
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsHandler$2;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    iget-object v0, v0, Lio/fabric/sdk/android/services/events/EventsHandler;->strategy:Lio/fabric/sdk/android/services/events/EventsStrategy;

    iget-object v1, p0, Lio/fabric/sdk/android/services/events/EventsHandler$2;->val$event:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/events/EventsStrategy;->recordEvent(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 72
    goto :goto_14

    .line 69
    :catch_a
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lio/fabric/sdk/android/services/events/EventsHandler$2;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    iget-object v1, v1, Lio/fabric/sdk/android/services/events/EventsHandler;->context:Landroid/content/Context;

    const-string v2, "Crashlytics failed to record event"

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlledError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    return-void
.end method

###### Class io.fabric.sdk.android.services.events.EventsHandler.AnonymousClass3 (io.fabric.sdk.android.services.events.EventsHandler$3)
.class Lio/fabric/sdk/android/services/events/EventsHandler$3;
.super Ljava/lang/Object;
.source "EventsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/events/EventsHandler;->onRollOver(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/fabric/sdk/android/services/events/EventsHandler;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/events/EventsHandler;)V
    .registers 2

    .line 79
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler$3;, "Lio/fabric/sdk/android/services/events/EventsHandler.3;"
    iput-object p1, p0, Lio/fabric/sdk/android/services/events/EventsHandler$3;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 83
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler$3;, "Lio/fabric/sdk/android/services/events/EventsHandler.3;"
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsHandler$3;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    iget-object v0, v0, Lio/fabric/sdk/android/services/events/EventsHandler;->strategy:Lio/fabric/sdk/android/services/events/EventsStrategy;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/events/EventsStrategy;->sendEvents()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 86
    goto :goto_12

    .line 84
    :catch_8
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lio/fabric/sdk/android/services/events/EventsHandler$3;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    iget-object v1, v1, Lio/fabric/sdk/android/services/events/EventsHandler;->context:Landroid/content/Context;

    const-string v2, "Failed to send events files."

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlledError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

###### Class io.fabric.sdk.android.services.events.EventsHandler.AnonymousClass4 (io.fabric.sdk.android.services.events.EventsHandler$4)
.class Lio/fabric/sdk/android/services/events/EventsHandler$4;
.super Ljava/lang/Object;
.source "EventsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/events/EventsHandler;->disable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/fabric/sdk/android/services/events/EventsHandler;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/events/EventsHandler;)V
    .registers 2

    .line 92
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler$4;, "Lio/fabric/sdk/android/services/events/EventsHandler.4;"
    iput-object p1, p0, Lio/fabric/sdk/android/services/events/EventsHandler$4;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 96
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsHandler$4;, "Lio/fabric/sdk/android/services/events/EventsHandler.4;"
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsHandler$4;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    iget-object v0, v0, Lio/fabric/sdk/android/services/events/EventsHandler;->strategy:Lio/fabric/sdk/android/services/events/EventsStrategy;

    .line 97
    .local v0, "prevStrategy":Lio/fabric/sdk/android/services/events/EventsStrategy;, "Lio/fabric/sdk/android/services/events/EventsStrategy<TT;>;"
    iget-object v1, p0, Lio/fabric/sdk/android/services/events/EventsHandler$4;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    iget-object v2, p0, Lio/fabric/sdk/android/services/events/EventsHandler$4;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/events/EventsHandler;->getDisabledEventsStrategy()Lio/fabric/sdk/android/services/events/EventsStrategy;

    move-result-object v2

    iput-object v2, v1, Lio/fabric/sdk/android/services/events/EventsHandler;->strategy:Lio/fabric/sdk/android/services/events/EventsStrategy;

    .line 98
    invoke-interface {v0}, Lio/fabric/sdk/android/services/events/EventsStrategy;->deleteAllEvents()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 101
    .end local v0    # "prevStrategy":Lio/fabric/sdk/android/services/events/EventsStrategy;, "Lio/fabric/sdk/android/services/events/EventsStrategy<TT;>;"
    goto :goto_1c

    .line 99
    :catch_12
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lio/fabric/sdk/android/services/events/EventsHandler$4;->this$0:Lio/fabric/sdk/android/services/events/EventsHandler;

    iget-object v1, v1, Lio/fabric/sdk/android/services/events/EventsHandler;->context:Landroid/content/Context;

    const-string v2, "Failed to disable events."

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlledError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c
    return-void
.end method
