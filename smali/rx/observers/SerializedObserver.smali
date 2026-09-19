###### Class rx.observers.SerializedObserver (rx.observers.SerializedObserver)
.class public Lrx/observers/SerializedObserver;
.super Ljava/lang/Object;
.source "SerializedObserver.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/observers/SerializedObserver$ErrorSentinel;,
        Lrx/observers/SerializedObserver$FastList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final COMPLETE_SENTINEL:Ljava/lang/Object;

.field private static final MAX_DRAIN_ITERATION:I = 0x7fffffff

.field private static final NULL_SENTINEL:Ljava/lang/Object;


# instance fields
.field private final actual:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private emitting:Z

.field private queue:Lrx/observers/SerializedObserver$FastList;

.field private terminated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/observers/SerializedObserver;->NULL_SENTINEL:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/observers/SerializedObserver;->COMPLETE_SENTINEL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    .local p1, "s":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 39
    iput-boolean v0, p0, Lrx/observers/SerializedObserver;->terminated:Z

    .line 76
    iput-object p1, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    .line 77
    return-void
.end method


# virtual methods
.method drainQueue(Lrx/observers/SerializedObserver$FastList;)V
    .registers 8
    .param p1, "list"    # Lrx/observers/SerializedObserver$FastList;

    .line 193
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    if-eqz p1, :cond_44

    iget v0, p1, Lrx/observers/SerializedObserver$FastList;->size:I

    if-nez v0, :cond_7

    goto :goto_44

    .line 196
    :cond_7
    iget-object v0, p1, Lrx/observers/SerializedObserver$FastList;->array:[Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_b
    if-ge v2, v1, :cond_43

    aget-object v3, v0, v2

    .line 197
    .local v3, "v":Ljava/lang/Object;
    if-nez v3, :cond_12

    .line 198
    goto :goto_43

    .line 200
    :cond_12
    sget-object v4, Lrx/observers/SerializedObserver;->NULL_SENTINEL:Ljava/lang/Object;

    if-ne v3, v4, :cond_1d

    .line 201
    iget-object v4, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_40

    .line 202
    :cond_1d
    sget-object v4, Lrx/observers/SerializedObserver;->COMPLETE_SENTINEL:Ljava/lang/Object;

    if-ne v3, v4, :cond_27

    .line 203
    iget-object v4, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-interface {v4}, Lrx/Observer;->onCompleted()V

    goto :goto_40

    .line 204
    :cond_27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lrx/observers/SerializedObserver$ErrorSentinel;

    if-ne v4, v5, :cond_3a

    .line 205
    iget-object v4, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    move-object v5, v3

    check-cast v5, Lrx/observers/SerializedObserver$ErrorSentinel;

    iget-object v5, v5, Lrx/observers/SerializedObserver$ErrorSentinel;->e:Ljava/lang/Throwable;

    invoke-interface {v4, v5}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_40

    .line 208
    :cond_3a
    move-object v4, v3

    .line 209
    .local v4, "t":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-interface {v5, v4}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 196
    .end local v3    # "v":Ljava/lang/Object;
    .end local v4    # "t":Ljava/lang/Object;, "TT;"
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 212
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_43
    :goto_43
    return-void

    .line 194
    :cond_44
    :goto_44
    return-void
.end method

.method public onCompleted()V
    .registers 5

    .line 82
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    monitor-enter p0

    .line 83
    const/4 v0, 0x0

    :try_start_2
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v1, :cond_8

    .line 84
    monitor-exit p0

    return-void

    .line 86
    :cond_8
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    .line 87
    iget-boolean v2, p0, Lrx/observers/SerializedObserver;->emitting:Z

    if-eqz v2, :cond_23

    .line 88
    iget-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    if-nez v1, :cond_1a

    .line 89
    new-instance v1, Lrx/observers/SerializedObserver$FastList;

    invoke-direct {v1}, Lrx/observers/SerializedObserver$FastList;-><init>()V

    iput-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 91
    :cond_1a
    iget-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    sget-object v2, Lrx/observers/SerializedObserver;->COMPLETE_SENTINEL:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/observers/SerializedObserver$FastList;->add(Ljava/lang/Object;)V

    .line 92
    monitor-exit p0

    return-void

    .line 94
    :cond_23
    iput-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 95
    iget-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_38

    .line 96
    .local v1, "list":Lrx/observers/SerializedObserver$FastList;
    :try_start_27
    iput-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 97
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_33

    .line 98
    invoke-virtual {p0, v1}, Lrx/observers/SerializedObserver;->drainQueue(Lrx/observers/SerializedObserver$FastList;)V

    .line 99
    iget-object v0, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 100
    return-void

    .line 97
    :catchall_33
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_39

    .end local v1    # "list":Lrx/observers/SerializedObserver$FastList;
    :catchall_38
    move-exception v1

    .local v0, "list":Lrx/observers/SerializedObserver$FastList;
    :goto_39
    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 104
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 106
    monitor-enter p0

    .line 107
    const/4 v0, 0x0

    :try_start_5
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v1, :cond_b

    .line 108
    monitor-exit p0

    return-void

    .line 110
    :cond_b
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    if-eqz v1, :cond_26

    .line 111
    iget-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    if-nez v1, :cond_1a

    .line 112
    new-instance v1, Lrx/observers/SerializedObserver$FastList;

    invoke-direct {v1}, Lrx/observers/SerializedObserver$FastList;-><init>()V

    iput-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 114
    :cond_1a
    iget-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    new-instance v2, Lrx/observers/SerializedObserver$ErrorSentinel;

    invoke-direct {v2, p1}, Lrx/observers/SerializedObserver$ErrorSentinel;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lrx/observers/SerializedObserver$FastList;->add(Ljava/lang/Object;)V

    .line 115
    monitor-exit p0

    return-void

    .line 117
    :cond_26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 118
    iget-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_44

    .line 119
    .local v1, "list":Lrx/observers/SerializedObserver$FastList;
    :try_start_2b
    iput-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 120
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_3f

    .line 121
    invoke-virtual {p0, v1}, Lrx/observers/SerializedObserver;->drainQueue(Lrx/observers/SerializedObserver$FastList;)V

    .line 122
    iget-object v0, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 123
    monitor-enter p0

    .line 124
    const/4 v0, 0x0

    :try_start_38
    iput-boolean v0, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 125
    monitor-exit p0

    .line 126
    return-void

    .line 125
    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_3c

    throw v0

    .line 120
    :catchall_3f
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_45

    .end local v1    # "list":Lrx/observers/SerializedObserver$FastList;
    :catchall_44
    move-exception v1

    .local v0, "list":Lrx/observers/SerializedObserver$FastList;
    :goto_45
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 132
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 133
    const/4 v0, 0x0

    :try_start_2
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v1, :cond_8

    .line 134
    monitor-exit p0

    return-void

    .line 136
    :cond_8
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    if-eqz v1, :cond_24

    .line 137
    iget-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    if-nez v1, :cond_17

    .line 138
    new-instance v1, Lrx/observers/SerializedObserver$FastList;

    invoke-direct {v1}, Lrx/observers/SerializedObserver$FastList;-><init>()V

    iput-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 140
    :cond_17
    iget-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    if-eqz p1, :cond_1d

    move-object v2, p1

    goto :goto_1f

    :cond_1d
    sget-object v2, Lrx/observers/SerializedObserver;->NULL_SENTINEL:Ljava/lang/Object;

    :goto_1f
    invoke-virtual {v1, v2}, Lrx/observers/SerializedObserver$FastList;->add(Ljava/lang/Object;)V

    .line 142
    monitor-exit p0

    return-void

    .line 145
    :cond_24
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 147
    iget-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_a4

    .line 148
    .local v1, "list":Lrx/observers/SerializedObserver$FastList;
    :try_start_29
    iput-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 149
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_9f

    .line 152
    const/4 v2, 0x0

    move v3, v2

    .line 154
    .local v3, "skipFinal":Z
    const v4, 0x7fffffff

    move-object v5, v1

    const v1, 0x7fffffff

    .line 156
    .local v1, "iter":I
    .local v5, "list":Lrx/observers/SerializedObserver$FastList;
    :cond_35
    :try_start_35
    invoke-virtual {p0, v5}, Lrx/observers/SerializedObserver;->drainQueue(Lrx/observers/SerializedObserver$FastList;)V

    .line 157
    if-ne v1, v4, :cond_3f

    .line 159
    iget-object v6, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-interface {v6, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 161
    :cond_3f
    add-int/lit8 v1, v1, -0x1

    .line 162
    if-lez v1, :cond_6b

    .line 163
    monitor-enter p0
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_87

    .line 164
    :try_start_44
    iget-object v6, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    move-object v5, v6

    .line 165
    iput-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 166
    if-nez v5, :cond_66

    .line 167
    iput-boolean v2, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 168
    const/4 v3, 0x1

    .line 169
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_44 .. :try_end_4f} :catchall_68

    .line 175
    if-nez v3, :cond_65

    .line 176
    monitor-enter p0

    .line 177
    :try_start_52
    iget-boolean v4, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v4, :cond_5c

    .line 178
    iget-object v2, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    move-object v5, v2

    .line 179
    iput-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    goto :goto_60

    .line 181
    :cond_5c
    iput-boolean v2, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 182
    const/4 v0, 0x0

    .line 184
    move-object v5, v0

    :goto_60
    monitor-exit p0

    goto :goto_65

    :catchall_62
    move-exception v0

    monitor-exit p0
    :try_end_64
    .catchall {:try_start_52 .. :try_end_64} :catchall_62

    throw v0

    :cond_65
    :goto_65
    return-void

    .line 171
    :cond_66
    :try_start_66
    monitor-exit p0

    goto :goto_6b

    :catchall_68
    move-exception v4

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_68

    :try_start_6a
    throw v4
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_87

    .line 173
    :cond_6b
    :goto_6b
    if-gtz v1, :cond_35

    .line 175
    .end local v1    # "iter":I
    if-nez v3, :cond_83

    .line 176
    monitor-enter p0

    .line 177
    :try_start_70
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v1, :cond_7a

    .line 178
    iget-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    move-object v5, v1

    .line 179
    iput-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    goto :goto_7e

    .line 181
    :cond_7a
    iput-boolean v2, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 182
    const/4 v0, 0x0

    .line 184
    move-object v5, v0

    :goto_7e
    monitor-exit p0

    goto :goto_83

    :catchall_80
    move-exception v0

    monitor-exit p0
    :try_end_82
    .catchall {:try_start_70 .. :try_end_82} :catchall_80

    throw v0

    .line 189
    :cond_83
    :goto_83
    invoke-virtual {p0, v5}, Lrx/observers/SerializedObserver;->drainQueue(Lrx/observers/SerializedObserver$FastList;)V

    .line 190
    return-void

    .line 175
    :catchall_87
    move-exception v1

    if-nez v3, :cond_9e

    .line 176
    monitor-enter p0

    .line 177
    :try_start_8b
    iget-boolean v4, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v4, :cond_95

    .line 178
    iget-object v2, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    move-object v5, v2

    .line 179
    iput-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    goto :goto_99

    .line 181
    :cond_95
    iput-boolean v2, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 182
    const/4 v0, 0x0

    .line 184
    move-object v5, v0

    :goto_99
    monitor-exit p0

    goto :goto_9e

    :catchall_9b
    move-exception v0

    monitor-exit p0
    :try_end_9d
    .catchall {:try_start_8b .. :try_end_9d} :catchall_9b

    throw v0

    :cond_9e
    :goto_9e
    throw v1

    .line 149
    .end local v3    # "skipFinal":Z
    .end local v5    # "list":Lrx/observers/SerializedObserver$FastList;
    .local v1, "list":Lrx/observers/SerializedObserver$FastList;
    :catchall_9f
    move-exception v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_a5

    .end local v1    # "list":Lrx/observers/SerializedObserver$FastList;
    :catchall_a4
    move-exception v1

    .local v0, "list":Lrx/observers/SerializedObserver$FastList;
    :goto_a5
    :try_start_a5
    monitor-exit p0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw v1
.end method

###### Class rx.observers.SerializedObserver.ErrorSentinel (rx.observers.SerializedObserver$ErrorSentinel)
.class final Lrx/observers/SerializedObserver$ErrorSentinel;
.super Ljava/lang/Object;
.source "SerializedObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observers/SerializedObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ErrorSentinel"
.end annotation


# instance fields
.field final e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lrx/observers/SerializedObserver$ErrorSentinel;->e:Ljava/lang/Throwable;

    .line 72
    return-void
.end method

###### Class rx.observers.SerializedObserver.FastList (rx.observers.SerializedObserver$FastList)
.class final Lrx/observers/SerializedObserver$FastList;
.super Ljava/lang/Object;
.source "SerializedObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observers/SerializedObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FastList"
.end annotation


# instance fields
.field array:[Ljava/lang/Object;

.field size:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 51
    iget v0, p0, Lrx/observers/SerializedObserver$FastList;->size:I

    .line 52
    .local v0, "s":I
    iget-object v1, p0, Lrx/observers/SerializedObserver$FastList;->array:[Ljava/lang/Object;

    .line 53
    .local v1, "a":[Ljava/lang/Object;
    if-nez v1, :cond_d

    .line 54
    const/16 v2, 0x10

    new-array v1, v2, [Ljava/lang/Object;

    .line 55
    iput-object v1, p0, Lrx/observers/SerializedObserver$FastList;->array:[Ljava/lang/Object;

    goto :goto_1c

    .line 56
    :cond_d
    array-length v2, v1

    if-ne v0, v2, :cond_1c

    .line 57
    shr-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/Object;

    .line 58
    .local v2, "array2":[Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    move-object v1, v2

    .line 60
    iput-object v1, p0, Lrx/observers/SerializedObserver$FastList;->array:[Ljava/lang/Object;

    .line 62
    .end local v2    # "array2":[Ljava/lang/Object;
    :cond_1c
    :goto_1c
    aput-object p1, v1, v0

    .line 63
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lrx/observers/SerializedObserver$FastList;->size:I

    .line 64
    return-void
.end method
