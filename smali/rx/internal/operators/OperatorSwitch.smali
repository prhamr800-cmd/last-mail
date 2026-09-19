###### Class rx.internal.operators.OperatorSwitch (rx.internal.operators.OperatorSwitch)
.class public final Lrx/internal/operators/OperatorSwitch;
.super Ljava/lang/Object;
.source "OperatorSwitch.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;,
        Lrx/internal/operators/OperatorSwitch$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;",
        "Lrx/Observable<",
        "+TT;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorSwitch;, "Lrx/internal/operators/OperatorSwitch<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorSwitch$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/internal/operators/OperatorSwitch$1;

    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorSwitch;, "Lrx/internal/operators/OperatorSwitch<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorSwitch;-><init>()V

    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorSwitch;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorSwitch<",
            "TT;>;"
        }
    .end annotation

    .line 47
    sget-object v0, Lrx/internal/operators/OperatorSwitch$Holder;->INSTANCE:Lrx/internal/operators/OperatorSwitch;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorSwitch;, "Lrx/internal/operators/OperatorSwitch<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorSwitch;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-",
            "Lrx/Observable<",
            "+TT;>;>;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorSwitch;, "Lrx/internal/operators/OperatorSwitch<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;-><init>(Lrx/Subscriber;)V

    .line 53
    .local v0, "sws":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 54
    return-object v0
.end method

###### Class rx.internal.operators.OperatorSwitch.AnonymousClass1 (rx.internal.operators.OperatorSwitch$1)
.class synthetic Lrx/internal/operators/OperatorSwitch$1;
.super Ljava/lang/Object;
.source "OperatorSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class rx.internal.operators.OperatorSwitch.Holder (rx.internal.operators.OperatorSwitch$Holder)
.class final Lrx/internal/operators/OperatorSwitch$Holder;
.super Ljava/lang/Object;
.source "OperatorSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorSwitch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorSwitch<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Lrx/internal/operators/OperatorSwitch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorSwitch;-><init>(Lrx/internal/operators/OperatorSwitch$1;)V

    sput-object v0, Lrx/internal/operators/OperatorSwitch$Holder;->INSTANCE:Lrx/internal/operators/OperatorSwitch;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class rx.internal.operators.OperatorSwitch.SwitchSubscriber (rx.internal.operators.OperatorSwitch$SwitchSubscriber)
.class final Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;
.super Lrx/Subscriber;
.source "OperatorSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SwitchSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "Lrx/Observable<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field active:Z

.field currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<",
            "TT;>.InnerSubscriber;"
        }
    .end annotation
.end field

.field emitting:Z

.field final guard:Ljava/lang/Object;

.field index:I

.field volatile infinite:Z

.field initialRequested:J

.field mainDone:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite<",
            "*>;"
        }
    .end annotation
.end field

.field queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final s:Lrx/observers/SerializedSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observers/SerializedSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field final ssub:Lrx/subscriptions/SerialSubscription;


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    .line 61
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->infinite:Z

    .line 80
    new-instance v0, Lrx/observers/SerializedSubscriber;

    invoke-direct {v0, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->s:Lrx/observers/SerializedSubscriber;

    .line 81
    new-instance v0, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v0}, Lrx/subscriptions/SerialSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    .line 82
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 83
    new-instance v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;-><init>(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 109
    return-void
.end method


# virtual methods
.method complete(I)V
    .registers 7
    .param p1, "id"    # I

    .line 253
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    const/4 v1, 0x0

    :try_start_4
    iget v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:I

    if-eq p1, v2, :cond_a

    .line 255
    monitor-exit v0

    return-void

    .line 257
    :cond_a
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->active:Z

    .line 258
    iget-boolean v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->mainDone:Z

    if-nez v2, :cond_13

    .line 259
    monitor-exit v0

    return-void

    .line 261
    :cond_13
    iget-boolean v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    if-eqz v2, :cond_2f

    .line 262
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    if-nez v2, :cond_22

    .line 263
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 265
    :cond_22
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    iget-object v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    monitor-exit v0

    return-void

    .line 269
    :cond_2f
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_48

    .line 270
    .local v2, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_31
    iput-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 271
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    .line 272
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_43

    .line 274
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->drain(Ljava/util/List;)V

    .line 275
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 276
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->unsubscribe()V

    .line 277
    return-void

    .line 272
    :catchall_43
    move-exception v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_49

    .end local v2    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_48
    move-exception v2

    .local v1, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_49
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v2
.end method

.method drain(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 209
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    .local p1, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez p1, :cond_3

    .line 210
    return-void

    .line 212
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 213
    .local v1, "o":Ljava/lang/Object;
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 214
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v2}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 215
    goto :goto_3a

    .line 217
    :cond_1f
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 218
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->s:Lrx/observers/SerializedSubscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v1}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 219
    goto :goto_3a

    .line 222
    :cond_33
    move-object v2, v1

    .line 223
    .local v2, "t":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v3, v2}, Lrx/observers/SerializedSubscriber;->onNext(Ljava/lang/Object;)V

    .line 225
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_7

    .line 226
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3a
    :goto_3a
    return-void
.end method

.method emit(Ljava/lang/Object;ILrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;)V
    .registers 12
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<",
            "TT;>.InnerSubscriber;)V"
        }
    .end annotation

    .line 162
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p3, "innerSubscriber":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    const/4 v1, 0x0

    :try_start_4
    iget v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:I

    if-eq p2, v2, :cond_a

    .line 164
    monitor-exit v0

    return-void

    .line 166
    :cond_a
    iget-boolean v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    if-eqz v2, :cond_23

    .line 167
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    if-nez v2, :cond_19

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 170
    :cond_19
    invoke-static {p3}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->access$110(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;)J

    .line 171
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    monitor-exit v0

    return-void

    .line 174
    :cond_23
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_80

    .line 175
    .local v2, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_25
    iput-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 176
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    .line 177
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_7b

    .line 178
    const/4 v0, 0x1

    .line 179
    .local v0, "once":Z
    const/4 v3, 0x0

    move v4, v0

    const/4 v0, 0x0

    .line 182
    .local v0, "skipFinal":Z
    .local v4, "once":Z
    :cond_2f
    :try_start_2f
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->drain(Ljava/util/List;)V

    .line 183
    if-eqz v4, :cond_45

    .line 184
    const/4 v4, 0x0

    .line 185
    iget-object v5, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v5
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_6d

    .line 186
    :try_start_38
    invoke-static {p3}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->access$110(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;)J

    .line 187
    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_42

    .line 188
    :try_start_3c
    iget-object v5, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v5, p1}, Lrx/observers/SerializedSubscriber;->onNext(Ljava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_6d

    goto :goto_45

    .line 187
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v5
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    :try_start_44
    throw v1

    .line 190
    :cond_45
    :goto_45
    iget-object v5, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v5
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_6d

    .line 191
    :try_start_48
    iget-object v6, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    move-object v2, v6

    .line 192
    iput-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 193
    if-nez v2, :cond_54

    .line 194
    iput-boolean v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    .line 195
    const/4 v0, 0x1

    .line 196
    monitor-exit v5

    goto :goto_5d

    .line 198
    :cond_54
    monitor-exit v5
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_6a

    .line 199
    :try_start_55
    iget-object v5, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v5}, Lrx/observers/SerializedSubscriber;->isUnsubscribed()Z

    move-result v5
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_6d

    if-eqz v5, :cond_2f

    .line 201
    :goto_5d
    if-nez v0, :cond_69

    .line 202
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_62
    iput-boolean v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    .line 204
    monitor-exit v1

    goto :goto_69

    :catchall_66
    move-exception v3

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_66

    throw v3

    .line 207
    :cond_69
    :goto_69
    return-void

    .line 198
    :catchall_6a
    move-exception v1

    :try_start_6b
    monitor-exit v5
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    .line 201
    :catchall_6d
    move-exception v1

    if-nez v0, :cond_7a

    .line 202
    iget-object v5, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v5

    .line 203
    :try_start_73
    iput-boolean v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    .line 204
    monitor-exit v5

    goto :goto_7a

    :catchall_77
    move-exception v1

    monitor-exit v5
    :try_end_79
    .catchall {:try_start_73 .. :try_end_79} :catchall_77

    throw v1

    :cond_7a
    :goto_7a
    throw v1

    .line 177
    .end local v0    # "skipFinal":Z
    .end local v4    # "once":Z
    :catchall_7b
    move-exception v1

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_81

    .end local v2    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_80
    move-exception v2

    .local v1, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_81
    :try_start_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v2
.end method

.method error(Ljava/lang/Throwable;I)V
    .registers 8
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "id"    # I

    .line 230
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    const/4 v1, 0x0

    :try_start_4
    iget v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:I

    if-eq p2, v2, :cond_a

    .line 232
    monitor-exit v0

    return-void

    .line 234
    :cond_a
    iget-boolean v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    if-eqz v2, :cond_26

    .line 235
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    if-nez v2, :cond_19

    .line 236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 238
    :cond_19
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    iget-object v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    monitor-exit v0

    return-void

    .line 242
    :cond_26
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_3f

    .line 243
    .local v2, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_28
    iput-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 244
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    .line 245
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_3a

    .line 247
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->drain(Ljava/util/List;)V

    .line 248
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 249
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->unsubscribe()V

    .line 250
    return-void

    .line 245
    :catchall_3a
    move-exception v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_40

    .end local v2    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_3f
    move-exception v2

    .local v1, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_40
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v2
.end method

.method public onCompleted()V
    .registers 5

    .line 140
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_5
    iput-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->mainDone:Z

    .line 142
    iget-boolean v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->active:Z

    if-eqz v3, :cond_d

    .line 143
    monitor-exit v0

    return-void

    .line 145
    :cond_d
    iget-boolean v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    if-eqz v3, :cond_29

    .line 146
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    if-nez v1, :cond_1c

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 149
    :cond_1c
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    iget-object v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    monitor-exit v0

    return-void

    .line 152
    :cond_29
    iget-object v3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_3f

    .line 153
    .local v3, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_2b
    iput-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->queue:Ljava/util/List;

    .line 154
    iput-boolean v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emitting:Z

    .line 155
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_3c

    .line 156
    invoke-virtual {p0, v3}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->drain(Ljava/util/List;)V

    .line 157
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 158
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->unsubscribe()V

    .line 159
    return-void

    .line 155
    :catchall_3c
    move-exception v1

    move-object v2, v3

    goto :goto_40

    .end local v3    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_3f
    move-exception v1

    .local v2, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_40
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 133
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 134
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->unsubscribe()V

    .line 135
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 57
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Observable;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 115
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    .local p1, "t":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_6
    iget v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->index:I

    move v1, v4

    .line 117
    .local v1, "id":I
    iput-boolean v5, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->active:Z

    .line 118
    iget-boolean v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->infinite:Z

    if-eqz v4, :cond_19

    .line 119
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_28

    .line 121
    :cond_19
    iget-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    if-nez v4, :cond_21

    iget-wide v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->initialRequested:J

    :goto_1f
    move-wide v2, v4

    goto :goto_28

    :cond_21
    iget-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    invoke-static {v4}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->access$100(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;)J

    move-result-wide v4

    goto :goto_1f

    .line 123
    .local v2, "remainingRequest":J
    :goto_28
    new-instance v4, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    invoke-direct {v4, p0, v1, v2, v3}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;-><init>(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;IJ)V

    iput-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    .line 124
    iget-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    invoke-static {v4, v2, v3}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->access$102(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;J)J

    .line 125
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_42

    .line 126
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->ssub:Lrx/subscriptions/SerialSubscription;

    iget-object v4, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    invoke-virtual {v0, v4}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 128
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    invoke-virtual {p1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 129
    return-void

    .line 125
    .end local v1    # "id":I
    .end local v2    # "remainingRequest":J
    :catchall_42
    move-exception v4

    .restart local v1    # "id":I
    .restart local v2    # "remainingRequest":J
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v4
.end method

###### Class rx.internal.operators.OperatorSwitch.SwitchSubscriber.AnonymousClass1 (rx.internal.operators.OperatorSwitch$SwitchSubscriber$1)
.class Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorSwitch.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;-><init>(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;)V
    .registers 2

    .line 83
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 6
    .param p1, "n"    # J

    .line 87
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-boolean v0, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->infinite:Z

    if-eqz v0, :cond_7

    .line 88
    return-void

    .line 90
    :cond_7
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_15

    .line 91
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->infinite:Z

    .line 94
    :cond_15
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    const/4 v1, 0x0

    :try_start_1b
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-object v2, v2, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    move-object v1, v2

    .line 96
    .local v1, "localSubscriber":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-object v2, v2, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    if-nez v2, :cond_2b

    .line 97
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iput-wide p1, v2, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->initialRequested:J

    goto :goto_32

    .line 101
    :cond_2b
    iget-object v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-object v2, v2, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    invoke-static {v2, p1, p2}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->access$114(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;J)J

    .line 103
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_39

    .line 104
    if-eqz v1, :cond_38

    .line 105
    invoke-virtual {v1, p1, p2}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->requestMore(J)V

    .line 107
    :cond_38
    return-void

    .line 103
    .end local v1    # "localSubscriber":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    :catchall_39
    move-exception v2

    .restart local v1    # "localSubscriber":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v2
.end method

###### Class rx.internal.operators.OperatorSwitch.SwitchSubscriber.InnerSubscriber (rx.internal.operators.OperatorSwitch$SwitchSubscriber$InnerSubscriber)
.class final Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;
.super Lrx/Subscriber;
.source "OperatorSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InnerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final id:I

.field private final initialRequested:J

.field private requested:J

.field final synthetic this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;IJ)V
    .registers 7
    .param p2, "id"    # I
    .param p3, "initialRequested"    # J

    .line 292
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 286
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->requested:J

    .line 293
    iput p2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->id:I

    .line 294
    iput-wide p3, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->initialRequested:J

    .line 295
    return-void
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;)J
    .registers 3
    .param p0, "x0"    # Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    .line 279
    iget-wide v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->requested:J

    return-wide v0
.end method

.method static synthetic access$102(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;J)J
    .registers 3
    .param p0, "x0"    # Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;
    .param p1, "x1"    # J

    .line 279
    iput-wide p1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->requested:J

    return-wide p1
.end method

.method static synthetic access$110(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;)J
    .registers 5
    .param p0, "x0"    # Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    .line 279
    iget-wide v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->requested:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->requested:J

    return-wide v0
.end method

.method static synthetic access$114(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;J)J
    .registers 5
    .param p0, "x0"    # Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;
    .param p1, "x1"    # J

    .line 279
    iget-wide v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->requested:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->requested:J

    return-wide v0
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 318
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->id:I

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->complete(I)V

    .line 319
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 313
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->id:I

    invoke-virtual {v0, p1, v1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->error(Ljava/lang/Throwable;I)V

    .line 314
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 308
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->id:I

    invoke-virtual {v0, p1, v1, p0}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->emit(Ljava/lang/Object;ILrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;)V

    .line 309
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 299
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    iget-wide v0, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->initialRequested:J

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->requestMore(J)V

    .line 300
    return-void
.end method

.method public requestMore(J)V
    .registers 3
    .param p1, "n"    # J

    .line 303
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->request(J)V

    .line 304
    return-void
.end method
