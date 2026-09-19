###### Class rx.internal.util.ScalarSynchronousObservable (rx.internal.util.ScalarSynchronousObservable)
.class public final Lrx/internal/util/ScalarSynchronousObservable;
.super Lrx/Observable;
.source "ScalarSynchronousObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;,
        Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;,
        Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 32
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$1;

    invoke-direct {v0, p1}, Lrx/internal/util/ScalarSynchronousObservable$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 48
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public static final create(Ljava/lang/Object;)Lrx/internal/util/ScalarSynchronousObservable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/internal/util/ScalarSynchronousObservable<",
            "TT;>;"
        }
    .end annotation

    .line 26
    .local p0, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-direct {v0, p0}, Lrx/internal/util/ScalarSynchronousObservable;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public scalarScheduleOn(Lrx/Scheduler;)Lrx/Observable;
    .registers 5
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable;, "Lrx/internal/util/ScalarSynchronousObservable<TT;>;"
    instance-of v0, p1, Lrx/internal/schedulers/EventLoopsScheduler;

    if-eqz v0, :cond_13

    .line 62
    move-object v0, p1

    check-cast v0, Lrx/internal/schedulers/EventLoopsScheduler;

    .line 63
    .local v0, "es":Lrx/internal/schedulers/EventLoopsScheduler;
    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    invoke-direct {v1, v0, v2}, Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;-><init>(Lrx/internal/schedulers/EventLoopsScheduler;Ljava/lang/Object;)V

    invoke-static {v1}, Lrx/internal/util/ScalarSynchronousObservable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v1

    return-object v1

    .line 65
    .end local v0    # "es":Lrx/internal/schedulers/EventLoopsScheduler;
    :cond_13
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;

    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;-><init>(Lrx/Scheduler;Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/internal/util/ScalarSynchronousObservable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.util.ScalarSynchronousObservable.AnonymousClass1 (rx.internal.util.ScalarSynchronousObservable$1)
.class Lrx/internal/util/ScalarSynchronousObservable$1;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousObservable;-><init>(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 32
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$1;, "Lrx/internal/util/ScalarSynchronousObservable.1;"
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$1;->val$t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 32
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$1;, "Lrx/internal/util/ScalarSynchronousObservable.1;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/util/ScalarSynchronousObservable$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$1;, "Lrx/internal/util/ScalarSynchronousObservable.1;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$1;->val$t:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 45
    return-void
.end method

###### Class rx.internal.util.ScalarSynchronousObservable.DirectScheduledEmission (rx.internal.util.ScalarSynchronousObservable$DirectScheduledEmission)
.class final Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DirectScheduledEmission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final es:Lrx/internal/schedulers/EventLoopsScheduler;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/schedulers/EventLoopsScheduler;Ljava/lang/Object;)V
    .registers 3
    .param p1, "es"    # Lrx/internal/schedulers/EventLoopsScheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/schedulers/EventLoopsScheduler;",
            "TT;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;, "Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;->es:Lrx/internal/schedulers/EventLoopsScheduler;

    .line 74
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;->value:Ljava/lang/Object;

    .line 75
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 69
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;, "Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;, "Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;->es:Lrx/internal/schedulers/EventLoopsScheduler;

    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;->value:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;-><init>(Lrx/Subscriber;Ljava/lang/Object;Lrx/internal/util/ScalarSynchronousObservable$1;)V

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/EventLoopsScheduler;->scheduleDirect(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 79
    return-void
.end method

###### Class rx.internal.util.ScalarSynchronousObservable.NormalScheduledEmission (rx.internal.util.ScalarSynchronousObservable$NormalScheduledEmission)
.class final Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NormalScheduledEmission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final scheduler:Lrx/Scheduler;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Scheduler;Ljava/lang/Object;)V
    .registers 3
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            "TT;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;, "Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;->scheduler:Lrx/Scheduler;

    .line 88
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;->value:Ljava/lang/Object;

    .line 89
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 82
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;, "Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;, "Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 94
    .local v0, "worker":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 95
    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;->value:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;-><init>(Lrx/Subscriber;Ljava/lang/Object;Lrx/internal/util/ScalarSynchronousObservable$1;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 96
    return-void
.end method

###### Class rx.internal.util.ScalarSynchronousObservable.ScalarSynchronousAction (rx.internal.util.ScalarSynchronousObservable$ScalarSynchronousAction)
.class final Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScalarSynchronousAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action0;"
    }
.end annotation


# instance fields
.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Subscriber;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 104
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;, "Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;->subscriber:Lrx/Subscriber;

    .line 106
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;->value:Ljava/lang/Object;

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lrx/Subscriber;Ljava/lang/Object;Lrx/internal/util/ScalarSynchronousObservable$1;)V
    .registers 4
    .param p1, "x0"    # Lrx/Subscriber;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lrx/internal/util/ScalarSynchronousObservable$1;

    .line 99
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;, "Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction<TT;>;"
    invoke-direct {p0, p1, p2}, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;-><init>(Lrx/Subscriber;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 112
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;, "Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction<TT;>;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;->subscriber:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_e

    .line 116
    nop

    .line 117
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 118
    return-void

    .line 113
    :catch_e
    move-exception v0

    .line 114
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 115
    return-void
.end method
