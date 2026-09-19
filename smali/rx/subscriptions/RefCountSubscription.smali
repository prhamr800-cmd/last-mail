###### Class rx.subscriptions.RefCountSubscription (rx.subscriptions.RefCountSubscription)
.class public final Lrx/subscriptions/RefCountSubscription;
.super Ljava/lang/Object;
.source "RefCountSubscription.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subscriptions/RefCountSubscription$InnerSubscription;,
        Lrx/subscriptions/RefCountSubscription$State;
    }
.end annotation


# static fields
.field static final EMPTY_STATE:Lrx/subscriptions/RefCountSubscription$State;

.field static final STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lrx/subscriptions/RefCountSubscription;",
            "Lrx/subscriptions/RefCountSubscription$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final actual:Lrx/Subscription;

.field volatile state:Lrx/subscriptions/RefCountSubscription$State;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 29
    new-instance v0, Lrx/subscriptions/RefCountSubscription$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lrx/subscriptions/RefCountSubscription$State;-><init>(ZI)V

    sput-object v0, Lrx/subscriptions/RefCountSubscription;->EMPTY_STATE:Lrx/subscriptions/RefCountSubscription$State;

    .line 31
    const-class v0, Lrx/subscriptions/RefCountSubscription;

    const-class v1, Lrx/subscriptions/RefCountSubscription$State;

    const-string v2, "state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/subscriptions/RefCountSubscription;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/Subscription;)V
    .registers 4
    .param p1, "s"    # Lrx/Subscription;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lrx/subscriptions/RefCountSubscription;->EMPTY_STATE:Lrx/subscriptions/RefCountSubscription$State;

    iput-object v0, p0, Lrx/subscriptions/RefCountSubscription;->state:Lrx/subscriptions/RefCountSubscription$State;

    .line 66
    if-eqz p1, :cond_c

    .line 69
    iput-object p1, p0, Lrx/subscriptions/RefCountSubscription;->actual:Lrx/Subscription;

    .line 70
    return-void

    .line 67
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "s"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unsubscribeActualIfApplicable(Lrx/subscriptions/RefCountSubscription$State;)V
    .registers 3
    .param p1, "state"    # Lrx/subscriptions/RefCountSubscription$State;

    .line 112
    iget-boolean v0, p1, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    if-eqz v0, :cond_d

    iget v0, p1, Lrx/subscriptions/RefCountSubscription$State;->children:I

    if-nez v0, :cond_d

    .line 113
    iget-object v0, p0, Lrx/subscriptions/RefCountSubscription;->actual:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 115
    :cond_d
    return-void
.end method


# virtual methods
.method public get()Lrx/Subscription;
    .registers 4

    .line 81
    :cond_0
    iget-object v0, p0, Lrx/subscriptions/RefCountSubscription;->state:Lrx/subscriptions/RefCountSubscription$State;

    .line 82
    .local v0, "oldState":Lrx/subscriptions/RefCountSubscription$State;
    iget-boolean v1, v0, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    if-eqz v1, :cond_b

    .line 83
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v1

    return-object v1

    .line 85
    :cond_b
    invoke-virtual {v0}, Lrx/subscriptions/RefCountSubscription$State;->addChild()Lrx/subscriptions/RefCountSubscription$State;

    move-result-object v1

    .line 87
    .local v1, "newState":Lrx/subscriptions/RefCountSubscription$State;
    sget-object v2, Lrx/subscriptions/RefCountSubscription;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    new-instance v2, Lrx/subscriptions/RefCountSubscription$InnerSubscription;

    invoke-direct {v2, p0}, Lrx/subscriptions/RefCountSubscription$InnerSubscription;-><init>(Lrx/subscriptions/RefCountSubscription;)V

    return-object v2
.end method

.method public isUnsubscribed()Z
    .registers 2

    .line 94
    iget-object v0, p0, Lrx/subscriptions/RefCountSubscription;->state:Lrx/subscriptions/RefCountSubscription$State;

    iget-boolean v0, v0, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    return v0
.end method

.method public unsubscribe()V
    .registers 4

    .line 102
    :cond_0
    iget-object v0, p0, Lrx/subscriptions/RefCountSubscription;->state:Lrx/subscriptions/RefCountSubscription$State;

    .line 103
    .local v0, "oldState":Lrx/subscriptions/RefCountSubscription$State;
    iget-boolean v1, v0, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    if-eqz v1, :cond_7

    .line 104
    return-void

    .line 106
    :cond_7
    invoke-virtual {v0}, Lrx/subscriptions/RefCountSubscription$State;->unsubscribe()Lrx/subscriptions/RefCountSubscription$State;

    move-result-object v1

    .line 107
    .local v1, "newState":Lrx/subscriptions/RefCountSubscription$State;
    sget-object v2, Lrx/subscriptions/RefCountSubscription;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-direct {p0, v1}, Lrx/subscriptions/RefCountSubscription;->unsubscribeActualIfApplicable(Lrx/subscriptions/RefCountSubscription$State;)V

    .line 109
    return-void
.end method

.method unsubscribeAChild()V
    .registers 4

    .line 120
    :cond_0
    iget-object v0, p0, Lrx/subscriptions/RefCountSubscription;->state:Lrx/subscriptions/RefCountSubscription$State;

    .line 121
    .local v0, "oldState":Lrx/subscriptions/RefCountSubscription$State;
    invoke-virtual {v0}, Lrx/subscriptions/RefCountSubscription$State;->removeChild()Lrx/subscriptions/RefCountSubscription$State;

    move-result-object v1

    .line 122
    .local v1, "newState":Lrx/subscriptions/RefCountSubscription$State;
    sget-object v2, Lrx/subscriptions/RefCountSubscription;->STATE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-direct {p0, v1}, Lrx/subscriptions/RefCountSubscription;->unsubscribeActualIfApplicable(Lrx/subscriptions/RefCountSubscription$State;)V

    .line 124
    return-void
.end method

###### Class rx.subscriptions.RefCountSubscription.InnerSubscription (rx.subscriptions.RefCountSubscription$InnerSubscription)
.class final Lrx/subscriptions/RefCountSubscription$InnerSubscription;
.super Ljava/lang/Object;
.source "RefCountSubscription.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subscriptions/RefCountSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InnerSubscription"
.end annotation


# static fields
.field static final INNER_DONE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lrx/subscriptions/RefCountSubscription$InnerSubscription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile innerDone:I

.field final parent:Lrx/subscriptions/RefCountSubscription;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 130
    const-class v0, Lrx/subscriptions/RefCountSubscription$InnerSubscription;

    const-string v1, "innerDone"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->INNER_DONE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/subscriptions/RefCountSubscription;)V
    .registers 2
    .param p1, "parent"    # Lrx/subscriptions/RefCountSubscription;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->parent:Lrx/subscriptions/RefCountSubscription;

    .line 134
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .line 144
    iget v0, p0, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->innerDone:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public unsubscribe()V
    .registers 4

    .line 137
    sget-object v0, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->INNER_DONE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 138
    iget-object v0, p0, Lrx/subscriptions/RefCountSubscription$InnerSubscription;->parent:Lrx/subscriptions/RefCountSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/RefCountSubscription;->unsubscribeAChild()V

    .line 140
    :cond_f
    return-void
.end method

###### Class rx.subscriptions.RefCountSubscription.State (rx.subscriptions.RefCountSubscription$State)
.class final Lrx/subscriptions/RefCountSubscription$State;
.super Ljava/lang/Object;
.source "RefCountSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subscriptions/RefCountSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# instance fields
.field final children:I

.field final isUnsubscribed:Z


# direct methods
.method constructor <init>(ZI)V
    .registers 3
    .param p1, "u"    # Z
    .param p2, "c"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean p1, p0, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    .line 40
    iput p2, p0, Lrx/subscriptions/RefCountSubscription$State;->children:I

    .line 41
    return-void
.end method


# virtual methods
.method addChild()Lrx/subscriptions/RefCountSubscription$State;
    .registers 4

    .line 44
    new-instance v0, Lrx/subscriptions/RefCountSubscription$State;

    iget-boolean v1, p0, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    iget v2, p0, Lrx/subscriptions/RefCountSubscription$State;->children:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lrx/subscriptions/RefCountSubscription$State;-><init>(ZI)V

    return-object v0
.end method

.method removeChild()Lrx/subscriptions/RefCountSubscription$State;
    .registers 4

    .line 48
    new-instance v0, Lrx/subscriptions/RefCountSubscription$State;

    iget-boolean v1, p0, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    iget v2, p0, Lrx/subscriptions/RefCountSubscription$State;->children:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2}, Lrx/subscriptions/RefCountSubscription$State;-><init>(ZI)V

    return-object v0
.end method

.method unsubscribe()Lrx/subscriptions/RefCountSubscription$State;
    .registers 4

    .line 52
    new-instance v0, Lrx/subscriptions/RefCountSubscription$State;

    iget v1, p0, Lrx/subscriptions/RefCountSubscription$State;->children:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lrx/subscriptions/RefCountSubscription$State;-><init>(ZI)V

    return-object v0
.end method
