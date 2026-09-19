###### Class rx.Scheduler (rx.Scheduler)
.class public abstract Lrx/Scheduler;
.super Ljava/lang/Object;
.source "Scheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Scheduler$Worker;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public abstract createWorker()Lrx/Scheduler$Worker;
.end method

.method public now()J
    .registers 3

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

###### Class rx.Scheduler.Worker (rx.Scheduler$Worker)
.class public abstract Lrx/Scheduler$Worker;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/Scheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Worker"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public now()J
    .registers 3

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract schedule(Lrx/functions/Action0;)Lrx/Subscription;
.end method

.method public abstract schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
.end method

.method public schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 25
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 111
    move-wide/from16 v0, p2

    move-object/from16 v2, p6

    move-wide/from16 v3, p4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v13

    .line 112
    .local v13, "periodInNanos":J
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p0 .. p0}, Lrx/Scheduler$Worker;->now()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    add-long v15, v5, v7

    .line 114
    .local v15, "startInNanos":J
    new-instance v5, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v5}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    move-object v11, v5

    .line 115
    .local v11, "mas":Lrx/subscriptions/MultipleAssignmentSubscription;
    new-instance v17, Lrx/Scheduler$Worker$1;

    move-object/from16 v5, v17

    move-object/from16 v6, p0

    move-object v7, v11

    move-object/from16 v8, p1

    move-wide v9, v15

    move-object v3, v11

    .end local v11    # "mas":Lrx/subscriptions/MultipleAssignmentSubscription;
    .local v3, "mas":Lrx/subscriptions/MultipleAssignmentSubscription;
    move-wide v11, v13

    invoke-direct/range {v5 .. v12}, Lrx/Scheduler$Worker$1;-><init>(Lrx/Scheduler$Worker;Lrx/subscriptions/MultipleAssignmentSubscription;Lrx/functions/Action0;JJ)V

    move-object/from16 v4, v17

    .line 126
    .local v4, "recursiveAction":Lrx/functions/Action0;
    new-instance v5, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v5}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 128
    .local v5, "s":Lrx/subscriptions/MultipleAssignmentSubscription;
    invoke-virtual {v3, v5}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 129
    invoke-virtual {v6, v4, v0, v1, v2}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v7

    invoke-virtual {v5, v7}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 130
    return-object v3
.end method

###### Class rx.Scheduler.Worker.AnonymousClass1 (rx.Scheduler$Worker$1)
.class Lrx/Scheduler$Worker$1;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:J

.field final synthetic this$0:Lrx/Scheduler$Worker;

.field final synthetic val$action:Lrx/functions/Action0;

.field final synthetic val$mas:Lrx/subscriptions/MultipleAssignmentSubscription;

.field final synthetic val$periodInNanos:J

.field final synthetic val$startInNanos:J


# direct methods
.method constructor <init>(Lrx/Scheduler$Worker;Lrx/subscriptions/MultipleAssignmentSubscription;Lrx/functions/Action0;JJ)V
    .registers 8

    .line 115
    iput-object p1, p0, Lrx/Scheduler$Worker$1;->this$0:Lrx/Scheduler$Worker;

    iput-object p2, p0, Lrx/Scheduler$Worker$1;->val$mas:Lrx/subscriptions/MultipleAssignmentSubscription;

    iput-object p3, p0, Lrx/Scheduler$Worker$1;->val$action:Lrx/functions/Action0;

    iput-wide p4, p0, Lrx/Scheduler$Worker$1;->val$startInNanos:J

    iput-wide p6, p0, Lrx/Scheduler$Worker$1;->val$periodInNanos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lrx/Scheduler$Worker$1;->count:J

    return-void
.end method


# virtual methods
.method public call()V
    .registers 8

    .line 119
    iget-object v0, p0, Lrx/Scheduler$Worker$1;->val$mas:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_36

    .line 120
    iget-object v0, p0, Lrx/Scheduler$Worker$1;->val$action:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 121
    iget-wide v0, p0, Lrx/Scheduler$Worker$1;->val$startInNanos:J

    iget-wide v2, p0, Lrx/Scheduler$Worker$1;->count:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/Scheduler$Worker$1;->count:J

    iget-wide v4, p0, Lrx/Scheduler$Worker$1;->val$periodInNanos:J

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    .line 122
    .local v0, "nextTick":J
    iget-object v2, p0, Lrx/Scheduler$Worker$1;->val$mas:Lrx/subscriptions/MultipleAssignmentSubscription;

    iget-object v3, p0, Lrx/Scheduler$Worker$1;->this$0:Lrx/Scheduler$Worker;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lrx/Scheduler$Worker$1;->this$0:Lrx/Scheduler$Worker;

    invoke-virtual {v5}, Lrx/Scheduler$Worker;->now()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    sub-long v4, v0, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p0, v4, v5, v6}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 124
    .end local v0    # "nextTick":J
    :cond_36
    return-void
.end method
