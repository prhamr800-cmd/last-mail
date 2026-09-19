###### Class rx.android.schedulers.HandlerThreadScheduler (rx.android.schedulers.HandlerThreadScheduler)
.class public Lrx/android/schedulers/HandlerThreadScheduler;
.super Lrx/Scheduler;
.source "HandlerThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 41
    iput-object p1, p0, Lrx/android/schedulers/HandlerThreadScheduler;->handler:Landroid/os/Handler;

    .line 42
    return-void
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .registers 3

    .line 46
    new-instance v0, Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;

    iget-object v1, p0, Lrx/android/schedulers/HandlerThreadScheduler;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

###### Class rx.android.schedulers.HandlerThreadScheduler.InnerHandlerThreadScheduler (rx.android.schedulers.HandlerThreadScheduler$InnerHandlerThreadScheduler)
.class Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;
.super Lrx/Scheduler$Worker;
.source "HandlerThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/schedulers/HandlerThreadScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerHandlerThreadScheduler"
.end annotation


# instance fields
.field private final compositeSubscription:Lrx/subscriptions/CompositeSubscription;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 55
    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 53
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;->compositeSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 56
    iput-object p1, p0, Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;->handler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;

    .line 49
    iget-object v0, p0, Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .line 66
    iget-object v0, p0, Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;->compositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 5
    .param p1, "action"    # Lrx/functions/Action0;

    .line 90
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 9
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 71
    invoke-static {}, Lrx/android/plugins/RxAndroidPlugins;->getInstance()Lrx/android/plugins/RxAndroidPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/android/plugins/RxAndroidPlugins;->getSchedulersHook()Lrx/android/plugins/RxAndroidSchedulersHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/android/plugins/RxAndroidSchedulersHook;->onSchedule(Lrx/functions/Action0;)Lrx/functions/Action0;

    move-result-object p1

    .line 73
    new-instance v0, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v0, p1}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/functions/Action0;)V

    .line 74
    .local v0, "scheduledAction":Lrx/internal/schedulers/ScheduledAction;
    new-instance v1, Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler$1;

    invoke-direct {v1, p0, v0}, Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler$1;-><init>(Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;Lrx/internal/schedulers/ScheduledAction;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Lrx/Subscription;)V

    .line 80
    iget-object v1, p0, Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;->compositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->addParent(Lrx/subscriptions/CompositeSubscription;)V

    .line 81
    iget-object v1, p0, Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;->compositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 83
    iget-object v1, p0, Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;->handler:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    return-object v0
.end method

.method public unsubscribe()V
    .registers 2

    .line 61
    iget-object v0, p0, Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;->compositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 62
    return-void
.end method

###### Class rx.android.schedulers.HandlerThreadScheduler.InnerHandlerThreadScheduler.AnonymousClass1 (rx.android.schedulers.HandlerThreadScheduler$InnerHandlerThreadScheduler$1)
.class Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler$1;
.super Ljava/lang/Object;
.source "HandlerThreadScheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;

.field final synthetic val$scheduledAction:Lrx/internal/schedulers/ScheduledAction;


# direct methods
.method constructor <init>(Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;Lrx/internal/schedulers/ScheduledAction;)V
    .registers 3

    .line 74
    iput-object p1, p0, Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler$1;->this$0:Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;

    iput-object p2, p0, Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler$1;->val$scheduledAction:Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 77
    iget-object v0, p0, Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler$1;->this$0:Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;

    invoke-static {v0}, Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;->access$000(Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lrx/android/schedulers/HandlerThreadScheduler$InnerHandlerThreadScheduler$1;->val$scheduledAction:Lrx/internal/schedulers/ScheduledAction;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method
