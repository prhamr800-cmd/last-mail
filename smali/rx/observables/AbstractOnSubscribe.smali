###### Class rx.observables.AbstractOnSubscribe (rx.observables.AbstractOnSubscribe)
.class public abstract Lrx/observables/AbstractOnSubscribe;
.super Ljava/lang/Object;
.source "AbstractOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/observables/AbstractOnSubscribe$SubscriptionState;,
        Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;,
        Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;,
        Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation

.annotation build Lrx/annotations/Experimental;
.end annotation


# static fields
.field private static final NULL_FUNC1:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 205
    new-instance v0, Lrx/observables/AbstractOnSubscribe$1;

    invoke-direct {v0}, Lrx/observables/AbstractOnSubscribe$1;-><init>()V

    sput-object v0, Lrx/observables/AbstractOnSubscribe;->NULL_FUNC1:Lrx/functions/Func1;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 154
    .local p0, "this":Lrx/observables/AbstractOnSubscribe;, "Lrx/observables/AbstractOnSubscribe<TT;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    return-void
.end method

.method public static create(Lrx/functions/Action1;)Lrx/observables/AbstractOnSubscribe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1<",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState<",
            "TT;TS;>;>;)",
            "Lrx/observables/AbstractOnSubscribe<",
            "TT;TS;>;"
        }
    .end annotation

    .line 225
    .local p0, "next":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;>;"
    sget-object v0, Lrx/observables/AbstractOnSubscribe;->NULL_FUNC1:Lrx/functions/Func1;

    .line 227
    .local v0, "nullFunc":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Subscriber<-TT;>;+TS;>;"
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lrx/observables/AbstractOnSubscribe;->create(Lrx/functions/Action1;Lrx/functions/Func1;Lrx/functions/Action1;)Lrx/observables/AbstractOnSubscribe;

    move-result-object v1

    return-object v1
.end method

.method public static create(Lrx/functions/Action1;Lrx/functions/Func1;)Lrx/observables/AbstractOnSubscribe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1<",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState<",
            "TT;TS;>;>;",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Subscriber<",
            "-TT;>;+TS;>;)",
            "Lrx/observables/AbstractOnSubscribe<",
            "TT;TS;>;"
        }
    .end annotation

    .line 245
    .local p0, "next":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;>;"
    .local p1, "onSubscribe":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Subscriber<-TT;>;+TS;>;"
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lrx/observables/AbstractOnSubscribe;->create(Lrx/functions/Action1;Lrx/functions/Func1;Lrx/functions/Action1;)Lrx/observables/AbstractOnSubscribe;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lrx/functions/Action1;Lrx/functions/Func1;Lrx/functions/Action1;)Lrx/observables/AbstractOnSubscribe;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1<",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState<",
            "TT;TS;>;>;",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Subscriber<",
            "-TT;>;+TS;>;",
            "Lrx/functions/Action1<",
            "-TS;>;)",
            "Lrx/observables/AbstractOnSubscribe<",
            "TT;TS;>;"
        }
    .end annotation

    .line 265
    .local p0, "next":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;>;"
    .local p1, "onSubscribe":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Subscriber<-TT;>;+TS;>;"
    .local p2, "onTerminated":Lrx/functions/Action1;, "Lrx/functions/Action1<-TS;>;"
    new-instance v0, Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;-><init>(Lrx/functions/Action1;Lrx/functions/Func1;Lrx/functions/Action1;Lrx/observables/AbstractOnSubscribe$1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 153
    .local p0, "this":Lrx/observables/AbstractOnSubscribe;, "Lrx/observables/AbstractOnSubscribe<TT;TS;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/observables/AbstractOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public final call(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 189
    .local p0, "this":Lrx/observables/AbstractOnSubscribe;, "Lrx/observables/AbstractOnSubscribe<TT;TS;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-virtual {p0, p1}, Lrx/observables/AbstractOnSubscribe;->onSubscribe(Lrx/Subscriber;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, "custom":Ljava/lang/Object;, "TS;"
    new-instance v1, Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;-><init>(Lrx/observables/AbstractOnSubscribe;Lrx/Subscriber;Ljava/lang/Object;Lrx/observables/AbstractOnSubscribe$1;)V

    .line 191
    .local v1, "state":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    new-instance v3, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;

    invoke-direct {v3, v1, v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;-><init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;Lrx/observables/AbstractOnSubscribe$1;)V

    invoke-virtual {p1, v3}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 192
    new-instance v3, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;

    invoke-direct {v3, v1, v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;-><init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;Lrx/observables/AbstractOnSubscribe$1;)V

    invoke-virtual {p1, v3}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 193
    return-void
.end method

.method protected abstract next(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState<",
            "TT;TS;>;)V"
        }
    .end annotation
.end method

.method protected onSubscribe(Lrx/Subscriber;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)TS;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lrx/observables/AbstractOnSubscribe;, "Lrx/observables/AbstractOnSubscribe<TT;TS;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onTerminated(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 178
    .local p0, "this":Lrx/observables/AbstractOnSubscribe;, "Lrx/observables/AbstractOnSubscribe<TT;TS;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    return-void
.end method

.method public final toObservable()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lrx/observables/AbstractOnSubscribe;, "Lrx/observables/AbstractOnSubscribe<TT;TS;>;"
    invoke-static {p0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.observables.AbstractOnSubscribe.AnonymousClass1 (rx.observables.AbstractOnSubscribe$1)
.class final Lrx/observables/AbstractOnSubscribe$1;
.super Ljava/lang/Object;
.source "AbstractOnSubscribe.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AbstractOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "t1"    # Ljava/lang/Object;

    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

###### Class rx.observables.AbstractOnSubscribe.LambdaOnSubscribe (rx.observables.AbstractOnSubscribe$LambdaOnSubscribe)
.class final Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;
.super Lrx/observables/AbstractOnSubscribe;
.source "AbstractOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AbstractOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LambdaOnSubscribe"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/observables/AbstractOnSubscribe<",
        "TT;TS;>;"
    }
.end annotation


# instance fields
.field final next:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState<",
            "TT;TS;>;>;"
        }
    .end annotation
.end field

.field final onSubscribe:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Subscriber<",
            "-TT;>;+TS;>;"
        }
    .end annotation
.end field

.field final onTerminated:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "-TS;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/functions/Action1;Lrx/functions/Func1;Lrx/functions/Action1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState<",
            "TT;TS;>;>;",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Subscriber<",
            "-TT;>;+TS;>;",
            "Lrx/functions/Action1<",
            "-TS;>;)V"
        }
    .end annotation

    .line 280
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;, "Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe<TT;TS;>;"
    .local p1, "next":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;>;"
    .local p2, "onSubscribe":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Subscriber<-TT;>;+TS;>;"
    .local p3, "onTerminated":Lrx/functions/Action1;, "Lrx/functions/Action1<-TS;>;"
    invoke-direct {p0}, Lrx/observables/AbstractOnSubscribe;-><init>()V

    .line 281
    iput-object p1, p0, Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;->next:Lrx/functions/Action1;

    .line 282
    iput-object p2, p0, Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;->onSubscribe:Lrx/functions/Func1;

    .line 283
    iput-object p3, p0, Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;->onTerminated:Lrx/functions/Action1;

    .line 284
    return-void
.end method

.method synthetic constructor <init>(Lrx/functions/Action1;Lrx/functions/Func1;Lrx/functions/Action1;Lrx/observables/AbstractOnSubscribe$1;)V
    .registers 5
    .param p1, "x0"    # Lrx/functions/Action1;
    .param p2, "x1"    # Lrx/functions/Func1;
    .param p3, "x2"    # Lrx/functions/Action1;
    .param p4, "x3"    # Lrx/observables/AbstractOnSubscribe$1;

    .line 275
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;, "Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe<TT;TS;>;"
    invoke-direct {p0, p1, p2, p3}, Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;-><init>(Lrx/functions/Action1;Lrx/functions/Func1;Lrx/functions/Action1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 275
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;, "Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe<TT;TS;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-super {p0, v0}, Lrx/observables/AbstractOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method protected next(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState<",
            "TT;TS;>;)V"
        }
    .end annotation

    .line 295
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;, "Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe<TT;TS;>;"
    .local p1, "state":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;->next:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 296
    return-void
.end method

.method protected onSubscribe(Lrx/Subscriber;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)TS;"
        }
    .end annotation

    .line 287
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;, "Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe<TT;TS;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;->onSubscribe:Lrx/functions/Func1;

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onTerminated(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 291
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;, "Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe<TT;TS;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;->onTerminated:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 292
    return-void
.end method

###### Class rx.observables.AbstractOnSubscribe.SubscriptionCompleter (rx.observables.AbstractOnSubscribe$SubscriptionCompleter)
.class final Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "AbstractOnSubscribe.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AbstractOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubscriptionCompleter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6eefff08576a4bccL


# instance fields
.field private final state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState<",
            "TT;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState<",
            "TT;TS;>;)V"
        }
    .end annotation

    .line 308
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;, "Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter<TT;TS;>;"
    .local p1, "state":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 309
    iput-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    .line 310
    return-void
.end method

.method synthetic constructor <init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;Lrx/observables/AbstractOnSubscribe$1;)V
    .registers 3
    .param p1, "x0"    # Lrx/observables/AbstractOnSubscribe$SubscriptionState;
    .param p2, "x1"    # Lrx/observables/AbstractOnSubscribe$1;

    .line 305
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;, "Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter<TT;TS;>;"
    invoke-direct {p0, p1}, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;-><init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .line 313
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;, "Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter<TT;TS;>;"
    invoke-virtual {p0}, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;->get()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .registers 3

    .line 317
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;, "Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter<TT;TS;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 318
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->free()V

    .line 320
    :cond_d
    return-void
.end method

###### Class rx.observables.AbstractOnSubscribe.SubscriptionProducer (rx.observables.AbstractOnSubscribe$SubscriptionProducer)
.class final Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;
.super Ljava/lang/Object;
.source "AbstractOnSubscribe.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AbstractOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubscriptionProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# instance fields
.field final state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState<",
            "TT;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState<",
            "TT;TS;>;)V"
        }
    .end annotation

    .line 331
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;, "Lrx/observables/AbstractOnSubscribe$SubscriptionProducer<TT;TS;>;"
    .local p1, "state":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    .line 333
    return-void
.end method

.method synthetic constructor <init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;Lrx/observables/AbstractOnSubscribe$1;)V
    .registers 3
    .param p1, "x0"    # Lrx/observables/AbstractOnSubscribe$SubscriptionState;
    .param p2, "x1"    # Lrx/observables/AbstractOnSubscribe$1;

    .line 329
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;, "Lrx/observables/AbstractOnSubscribe$SubscriptionProducer<TT;TS;>;"
    invoke-direct {p0, p1}, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;-><init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V

    return-void
.end method


# virtual methods
.method protected doNext()Z
    .registers 7

    .line 362
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;, "Lrx/observables/AbstractOnSubscribe$SubscriptionProducer<TT;TS;>;"
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->use()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_97

    .line 364
    :try_start_9
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->phase()I

    move-result v0

    .line 365
    .local v0, "p":I
    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-static {v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$600(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/observables/AbstractOnSubscribe;

    move-result-object v2

    iget-object v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v2, v3}, Lrx/observables/AbstractOnSubscribe;->next(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V

    .line 366
    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->verify()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 369
    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->accept()Z

    move-result v2

    if-nez v2, :cond_40

    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->stopRequested()Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_40

    .line 373
    :cond_33
    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-static {v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$708(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)J
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_38} :catch_81
    .catchall {:try_start_9 .. :try_end_38} :catchall_7f

    .line 379
    .end local v0    # "p":I
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->free()V

    .line 380
    nop

    .line 381
    const/4 v0, 0x1

    return v0

    .line 370
    .restart local v0    # "p":I
    :cond_40
    :goto_40
    :try_start_40
    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->terminate()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_45} :catch_81
    .catchall {:try_start_40 .. :try_end_45} :catchall_7f

    .line 371
    nop

    .line 379
    .end local v0    # "p":I
    .end local p0    # "this":Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;, "Lrx/observables/AbstractOnSubscribe$SubscriptionProducer<TT;TS;>;"
    :goto_46
    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->free()V

    return v1

    .line 367
    .restart local v0    # "p":I
    .restart local p0    # "this":Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;, "Lrx/observables/AbstractOnSubscribe$SubscriptionProducer<TT;TS;>;"
    :cond_4c
    :try_start_4c
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No event produced or stop called @ Phase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v4}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->phase()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Calls: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v4}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->calls()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_7f} :catch_81
    .catchall {:try_start_4c .. :try_end_7f} :catchall_7f

    .line 379
    .end local v0    # "p":I
    :catchall_7f
    move-exception v0

    goto :goto_91

    .line 374
    :catch_81
    move-exception v0

    .line 375
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_82
    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->terminate()V

    .line 376
    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-static {v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$500(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/Subscriber;

    move-result-object v2

    invoke-virtual {v2, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_90
    .catchall {:try_start_82 .. :try_end_90} :catchall_7f

    .line 377
    goto :goto_46

    .line 379
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_91
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-virtual {v1}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->free()V

    throw v0

    .line 383
    :cond_97
    return v1
.end method

.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .line 336
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;, "Lrx/observables/AbstractOnSubscribe$SubscriptionProducer<TT;TS;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_5d

    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-static {v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$400(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_5d

    .line 337
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_30

    .line 339
    :cond_1d
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-static {v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$500(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/Subscriber;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 340
    invoke-virtual {p0}, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->doNext()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 341
    goto :goto_5d

    .line 345
    :cond_30
    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-static {v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$500(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/Subscriber;

    move-result-object v2

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 347
    :cond_3c
    invoke-virtual {p0}, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->doNext()Z

    move-result v2

    if-nez v2, :cond_43

    .line 348
    goto :goto_5d

    .line 350
    :cond_43
    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-static {v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$400(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_5d

    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;->state:Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-static {v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->access$500(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/Subscriber;

    move-result-object v2

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 353
    :cond_5d
    :goto_5d
    return-void
.end method

###### Class rx.observables.AbstractOnSubscribe.SubscriptionState (rx.observables.AbstractOnSubscribe$SubscriptionState)
.class public final Lrx/observables/AbstractOnSubscribe$SubscriptionState;
.super Ljava/lang/Object;
.source "AbstractOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AbstractOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscriptionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private calls:J

.field private hasCompleted:Z

.field private hasOnNext:Z

.field private final inUse:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final parent:Lrx/observables/AbstractOnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/AbstractOnSubscribe<",
            "TT;TS;>;"
        }
    .end annotation
.end field

.field private phase:I

.field private final requestCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private stopRequested:Z

.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private theException:Ljava/lang/Throwable;

.field private theValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/observables/AbstractOnSubscribe;Lrx/Subscriber;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/AbstractOnSubscribe<",
            "TT;TS;>;",
            "Lrx/Subscriber<",
            "-TT;>;TS;)V"
        }
    .end annotation

    .line 409
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    .local p1, "parent":Lrx/observables/AbstractOnSubscribe;, "Lrx/observables/AbstractOnSubscribe<TT;TS;>;"
    .local p2, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p3, "state":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->parent:Lrx/observables/AbstractOnSubscribe;

    .line 411
    iput-object p2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    .line 412
    iput-object p3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->state:Ljava/lang/Object;

    .line 413
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->requestCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 414
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 415
    return-void
.end method

.method synthetic constructor <init>(Lrx/observables/AbstractOnSubscribe;Lrx/Subscriber;Ljava/lang/Object;Lrx/observables/AbstractOnSubscribe$1;)V
    .registers 5
    .param p1, "x0"    # Lrx/observables/AbstractOnSubscribe;
    .param p2, "x1"    # Lrx/Subscriber;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Lrx/observables/AbstractOnSubscribe$1;

    .line 396
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    invoke-direct {p0, p1, p2, p3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;-><init>(Lrx/observables/AbstractOnSubscribe;Lrx/Subscriber;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 2
    .param p0, "x0"    # Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    .line 396
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->requestCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$500(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/Subscriber;
    .registers 2
    .param p0, "x0"    # Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    .line 396
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    return-object v0
.end method

.method static synthetic access$600(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)Lrx/observables/AbstractOnSubscribe;
    .registers 2
    .param p0, "x0"    # Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    .line 396
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->parent:Lrx/observables/AbstractOnSubscribe;

    return-object v0
.end method

.method static synthetic access$708(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)J
    .registers 5
    .param p0, "x0"    # Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    .line 396
    iget-wide v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->calls:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->calls:J

    return-wide v0
.end method


# virtual methods
.method protected accept()Z
    .registers 9

    .line 529
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasOnNext:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_38

    .line 530
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theValue:Ljava/lang/Object;

    .line 531
    .local v0, "value":Ljava/lang/Object;, "TT;"
    iput-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theValue:Ljava/lang/Object;

    .line 532
    iput-boolean v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasOnNext:Z

    .line 535
    :try_start_d
    iget-object v4, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_13

    .line 546
    goto :goto_38

    .line 536
    :catch_13
    move-exception v4

    .line 537
    .local v4, "t":Ljava/lang/Throwable;
    iput-boolean v3, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    .line 538
    iget-object v5, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    .line 539
    .local v5, "e":Ljava/lang/Throwable;
    iput-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    .line 540
    if-nez v5, :cond_22

    .line 541
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1, v4}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_37

    .line 543
    :cond_22
    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    new-instance v6, Lrx/exceptions/CompositeException;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Throwable;

    aput-object v4, v7, v1

    aput-object v5, v7, v3

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v6, v1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v6}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 545
    :goto_37
    return v3

    .line 548
    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    .end local v4    # "t":Ljava/lang/Throwable;
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_38
    :goto_38
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    if-eqz v0, :cond_4e

    .line 549
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    .line 550
    .local v0, "e":Ljava/lang/Throwable;
    iput-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    .line 552
    if-eqz v0, :cond_48

    .line 553
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_4d

    .line 555
    :cond_48
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 557
    :goto_4d
    return v3

    .line 559
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4e
    return v1
.end method

.method public advancePhase()V
    .registers 2

    .line 445
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->advancePhaseBy(I)V

    .line 446
    return-void
.end method

.method public advancePhaseBy(I)V
    .registers 3
    .param p1, "amount"    # I

    .line 454
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iget v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->phase:I

    add-int/2addr v0, p1

    iput v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->phase:I

    .line 455
    return-void
.end method

.method public calls()J
    .registers 3

    .line 462
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iget-wide v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->calls:J

    return-wide v0
.end method

.method protected free()V
    .registers 4

    .line 599
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 600
    .local v0, "i":I
    if-gtz v0, :cond_9

    .line 601
    return-void

    .line 603
    :cond_9
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_18

    .line 604
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->parent:Lrx/observables/AbstractOnSubscribe;

    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->state:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/observables/AbstractOnSubscribe;->onTerminated(Ljava/lang/Object;)V

    .line 606
    :cond_18
    return-void
.end method

.method public onCompleted()V
    .registers 4

    .line 510
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    if-nez v0, :cond_8

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    .line 514
    return-void

    .line 511
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    const-string v2, "Already terminated"

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 492
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    if-eqz p1, :cond_16

    .line 495
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    if-nez v0, :cond_c

    .line 498
    iput-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    .line 500
    return-void

    .line 496
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    const-string v2, "Already terminated"

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 493
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "e != null required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 473
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasOnNext:Z

    if-nez v0, :cond_18

    .line 476
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    if-nez v0, :cond_e

    .line 479
    iput-object p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theValue:Ljava/lang/Object;

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasOnNext:Z

    .line 481
    return-void

    .line 477
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->theException:Ljava/lang/Throwable;

    const-string v2, "Already terminated"

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 474
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onNext not consumed yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public phase()I
    .registers 2

    .line 429
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iget v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->phase:I

    return v0
.end method

.method public phase(I)V
    .registers 2
    .param p1, "newPhase"    # I

    .line 438
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iput p1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->phase:I

    .line 439
    return-void
.end method

.method public state()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 422
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->state:Ljava/lang/Object;

    return-object v0
.end method

.method public stop()V
    .registers 2

    .line 520
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->stopRequested:Z

    .line 521
    return-void
.end method

.method protected stopRequested()Z
    .registers 2

    .line 573
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->stopRequested:Z

    return v0
.end method

.method protected terminate()V
    .registers 4

    .line 614
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    :goto_0
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 615
    .local v0, "i":I
    if-gtz v0, :cond_9

    .line 616
    return-void

    .line 618
    :cond_9
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 619
    iget-object v1, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->parent:Lrx/observables/AbstractOnSubscribe;

    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->state:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/observables/AbstractOnSubscribe;->onTerminated(Ljava/lang/Object;)V

    .line 620
    nop

    .line 623
    .end local v0    # "i":I
    return-void

    .line 622
    :cond_1b
    goto :goto_0
.end method

.method protected use()Z
    .registers 5

    .line 585
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 586
    .local v0, "i":I
    if-nez v0, :cond_a

    .line 587
    const/4 v1, 0x0

    return v1

    .line 589
    :cond_a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v2, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->inUse:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 590
    return v1

    .line 592
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This is not reentrant nor threadsafe!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected verify()Z
    .registers 2

    .line 568
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasOnNext:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->hasCompleted:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lrx/observables/AbstractOnSubscribe$SubscriptionState;->stopRequested:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
