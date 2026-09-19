###### Class rx.schedulers.ImmediateScheduler (rx.schedulers.ImmediateScheduler)
.class public final Lrx/schedulers/ImmediateScheduler;
.super Lrx/Scheduler;
.source "ImmediateScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/schedulers/ImmediateScheduler$InnerImmediateScheduler;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lrx/schedulers/ImmediateScheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Lrx/schedulers/ImmediateScheduler;

    invoke-direct {v0}, Lrx/schedulers/ImmediateScheduler;-><init>()V

    sput-object v0, Lrx/schedulers/ImmediateScheduler;->INSTANCE:Lrx/schedulers/ImmediateScheduler;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 37
    return-void
.end method

.method static instance()Lrx/schedulers/ImmediateScheduler;
    .registers 1

    .line 33
    sget-object v0, Lrx/schedulers/ImmediateScheduler;->INSTANCE:Lrx/schedulers/ImmediateScheduler;

    return-object v0
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .registers 3

    .line 41
    new-instance v0, Lrx/schedulers/ImmediateScheduler$InnerImmediateScheduler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrx/schedulers/ImmediateScheduler$InnerImmediateScheduler;-><init>(Lrx/schedulers/ImmediateScheduler;Lrx/schedulers/ImmediateScheduler$1;)V

    return-object v0
.end method

###### Class rx.schedulers.ImmediateScheduler.AnonymousClass1 (rx.schedulers.ImmediateScheduler$1)
.class synthetic Lrx/schedulers/ImmediateScheduler$1;
.super Ljava/lang/Object;
.source "ImmediateScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/ImmediateScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class rx.schedulers.ImmediateScheduler.InnerImmediateScheduler (rx.schedulers.ImmediateScheduler$InnerImmediateScheduler)
.class Lrx/schedulers/ImmediateScheduler$InnerImmediateScheduler;
.super Lrx/Scheduler$Worker;
.source "ImmediateScheduler.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/ImmediateScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerImmediateScheduler"
.end annotation


# instance fields
.field final innerSubscription:Lrx/subscriptions/BooleanSubscription;

.field final synthetic this$0:Lrx/schedulers/ImmediateScheduler;


# direct methods
.method private constructor <init>(Lrx/schedulers/ImmediateScheduler;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lrx/schedulers/ImmediateScheduler$InnerImmediateScheduler;->this$0:Lrx/schedulers/ImmediateScheduler;

    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 46
    new-instance p1, Lrx/subscriptions/BooleanSubscription;

    invoke-direct {p1}, Lrx/subscriptions/BooleanSubscription;-><init>()V

    iput-object p1, p0, Lrx/schedulers/ImmediateScheduler$InnerImmediateScheduler;->innerSubscription:Lrx/subscriptions/BooleanSubscription;

    return-void
.end method

.method synthetic constructor <init>(Lrx/schedulers/ImmediateScheduler;Lrx/schedulers/ImmediateScheduler$1;)V
    .registers 3
    .param p1, "x0"    # Lrx/schedulers/ImmediateScheduler;
    .param p2, "x1"    # Lrx/schedulers/ImmediateScheduler$1;

    .line 44
    invoke-direct {p0, p1}, Lrx/schedulers/ImmediateScheduler$InnerImmediateScheduler;-><init>(Lrx/schedulers/ImmediateScheduler;)V

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .line 69
    iget-object v0, p0, Lrx/schedulers/ImmediateScheduler$InnerImmediateScheduler;->innerSubscription:Lrx/subscriptions/BooleanSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 3
    .param p1, "action"    # Lrx/functions/Action0;

    .line 58
    invoke-interface {p1}, Lrx/functions/Action0;->call()V

    .line 59
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 9
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 51
    iget-object v0, p0, Lrx/schedulers/ImmediateScheduler$InnerImmediateScheduler;->this$0:Lrx/schedulers/ImmediateScheduler;

    invoke-virtual {v0}, Lrx/schedulers/ImmediateScheduler;->now()J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 53
    .local v0, "execTime":J
    new-instance v2, Lrx/schedulers/SleepingAction;

    invoke-direct {v2, p1, p0, v0, v1}, Lrx/schedulers/SleepingAction;-><init>(Lrx/functions/Action0;Lrx/Scheduler$Worker;J)V

    invoke-virtual {p0, v2}, Lrx/schedulers/ImmediateScheduler$InnerImmediateScheduler;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    return-object v2
.end method

.method public unsubscribe()V
    .registers 2

    .line 64
    iget-object v0, p0, Lrx/schedulers/ImmediateScheduler$InnerImmediateScheduler;->innerSubscription:Lrx/subscriptions/BooleanSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->unsubscribe()V

    .line 65
    return-void
.end method
