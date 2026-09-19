###### Class rx.subscriptions.SerialSubscription (rx.subscriptions.SerialSubscription)
.class public final Lrx/subscriptions/SerialSubscription;
.super Ljava/lang/Object;
.source "SerialSubscription.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subscriptions/SerialSubscription$State;
    }
.end annotation


# static fields
.field static final STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lrx/subscriptions/SerialSubscription;",
            "Lrx/subscriptions/SerialSubscription$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile state:Lrx/subscriptions/SerialSubscription$State;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 28
    const-class v0, Lrx/subscriptions/SerialSubscription;

    const-class v1, Lrx/subscriptions/SerialSubscription$State;

    const-string v2, "state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/subscriptions/SerialSubscription;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lrx/subscriptions/SerialSubscription$State;

    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lrx/subscriptions/SerialSubscription$State;-><init>(ZLrx/Subscription;)V

    iput-object v0, p0, Lrx/subscriptions/SerialSubscription;->state:Lrx/subscriptions/SerialSubscription$State;

    .line 31
    return-void
.end method


# virtual methods
.method public get()Lrx/Subscription;
    .registers 2

    .line 102
    iget-object v0, p0, Lrx/subscriptions/SerialSubscription;->state:Lrx/subscriptions/SerialSubscription$State;

    iget-object v0, v0, Lrx/subscriptions/SerialSubscription$State;->subscription:Lrx/Subscription;

    return-object v0
.end method

.method public isUnsubscribed()Z
    .registers 2

    .line 52
    iget-object v0, p0, Lrx/subscriptions/SerialSubscription;->state:Lrx/subscriptions/SerialSubscription$State;

    iget-boolean v0, v0, Lrx/subscriptions/SerialSubscription$State;->isUnsubscribed:Z

    return v0
.end method

.method public set(Lrx/Subscription;)V
    .registers 5
    .param p1, "s"    # Lrx/Subscription;

    .line 79
    if-eqz p1, :cond_1e

    .line 85
    :cond_2
    iget-object v0, p0, Lrx/subscriptions/SerialSubscription;->state:Lrx/subscriptions/SerialSubscription$State;

    .line 86
    .local v0, "oldState":Lrx/subscriptions/SerialSubscription$State;
    iget-boolean v1, v0, Lrx/subscriptions/SerialSubscription$State;->isUnsubscribed:Z

    if-eqz v1, :cond_c

    .line 87
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 88
    return-void

    .line 90
    :cond_c
    invoke-virtual {v0, p1}, Lrx/subscriptions/SerialSubscription$State;->set(Lrx/Subscription;)Lrx/subscriptions/SerialSubscription$State;

    move-result-object v1

    .line 92
    .local v1, "newState":Lrx/subscriptions/SerialSubscription$State;
    sget-object v2, Lrx/subscriptions/SerialSubscription;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    iget-object v2, v0, Lrx/subscriptions/SerialSubscription$State;->subscription:Lrx/Subscription;

    invoke-interface {v2}, Lrx/Subscription;->unsubscribe()V

    .line 94
    return-void

    .line 80
    .end local v0    # "oldState":Lrx/subscriptions/SerialSubscription$State;
    .end local v1    # "newState":Lrx/subscriptions/SerialSubscription$State;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subscription can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unsubscribe()V
    .registers 4

    .line 60
    :cond_0
    iget-object v0, p0, Lrx/subscriptions/SerialSubscription;->state:Lrx/subscriptions/SerialSubscription$State;

    .line 61
    .local v0, "oldState":Lrx/subscriptions/SerialSubscription$State;
    iget-boolean v1, v0, Lrx/subscriptions/SerialSubscription$State;->isUnsubscribed:Z

    if-eqz v1, :cond_7

    .line 62
    return-void

    .line 64
    :cond_7
    invoke-virtual {v0}, Lrx/subscriptions/SerialSubscription$State;->unsubscribe()Lrx/subscriptions/SerialSubscription$State;

    move-result-object v1

    .line 66
    .local v1, "newState":Lrx/subscriptions/SerialSubscription$State;
    sget-object v2, Lrx/subscriptions/SerialSubscription;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, v0, Lrx/subscriptions/SerialSubscription$State;->subscription:Lrx/Subscription;

    invoke-interface {v2}, Lrx/Subscription;->unsubscribe()V

    .line 68
    return-void
.end method

###### Class rx.subscriptions.SerialSubscription.State (rx.subscriptions.SerialSubscription$State)
.class final Lrx/subscriptions/SerialSubscription$State;
.super Ljava/lang/Object;
.source "SerialSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subscriptions/SerialSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# instance fields
.field final isUnsubscribed:Z

.field final subscription:Lrx/Subscription;


# direct methods
.method constructor <init>(ZLrx/Subscription;)V
    .registers 3
    .param p1, "u"    # Z
    .param p2, "s"    # Lrx/Subscription;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lrx/subscriptions/SerialSubscription$State;->isUnsubscribed:Z

    .line 37
    iput-object p2, p0, Lrx/subscriptions/SerialSubscription$State;->subscription:Lrx/Subscription;

    .line 38
    return-void
.end method


# virtual methods
.method set(Lrx/Subscription;)Lrx/subscriptions/SerialSubscription$State;
    .registers 4
    .param p1, "s"    # Lrx/Subscription;

    .line 45
    new-instance v0, Lrx/subscriptions/SerialSubscription$State;

    iget-boolean v1, p0, Lrx/subscriptions/SerialSubscription$State;->isUnsubscribed:Z

    invoke-direct {v0, v1, p1}, Lrx/subscriptions/SerialSubscription$State;-><init>(ZLrx/Subscription;)V

    return-object v0
.end method

.method unsubscribe()Lrx/subscriptions/SerialSubscription$State;
    .registers 4

    .line 41
    new-instance v0, Lrx/subscriptions/SerialSubscription$State;

    iget-object v1, p0, Lrx/subscriptions/SerialSubscription$State;->subscription:Lrx/Subscription;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lrx/subscriptions/SerialSubscription$State;-><init>(ZLrx/Subscription;)V

    return-object v0
.end method
