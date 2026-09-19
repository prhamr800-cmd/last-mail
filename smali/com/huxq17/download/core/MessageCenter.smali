###### Class com.huxq17.download.core.MessageCenter (com.huxq17.download.core.MessageCenter)
.class public Lcom/huxq17/download/core/MessageCenter;
.super Ljava/lang/Object;
.source "MessageCenter.java"

# interfaces
.implements Lcom/huxq17/download/core/service/IMessageCenter;


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private observers:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/huxq17/download/core/DownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/huxq17/download/core/MessageCenter;->observers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 20
    new-instance v0, Lcom/huxq17/download/core/MessageCenter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huxq17/download/core/MessageCenter$1;-><init>(Lcom/huxq17/download/core/MessageCenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huxq17/download/core/MessageCenter;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/huxq17/download/core/MessageCenter;->context:Landroid/content/Context;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/huxq17/download/core/MessageCenter;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method getObserverIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/huxq17/download/core/DownloadListener;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/huxq17/download/core/MessageCenter;->observers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method getObserverSize()I
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/huxq17/download/core/MessageCenter;->observers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    return v0
.end method

.method handleDownloadInfoSnapshot(Ljava/util/Iterator;Lcom/huxq17/download/core/DownloadInfo;)V
    .registers 5
    .param p2, "snapshot"    # Lcom/huxq17/download/core/DownloadInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/huxq17/download/core/DownloadListener;",
            ">;",
            "Lcom/huxq17/download/core/DownloadInfo;",
            ")V"
        }
    .end annotation

    .line 40
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huxq17/download/core/DownloadListener;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/DownloadListener;

    .line 42
    .local v0, "downloadListener":Lcom/huxq17/download/core/DownloadListener;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadListener;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 43
    invoke-virtual {v0, p2}, Lcom/huxq17/download/core/DownloadListener;->filter(Lcom/huxq17/download/core/DownloadInfo;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 44
    invoke-virtual {v0, p2}, Lcom/huxq17/download/core/DownloadListener;->downloading(Lcom/huxq17/download/core/DownloadInfo;)V

    goto :goto_21

    .line 47
    :cond_1e
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 49
    .end local v0    # "downloadListener":Lcom/huxq17/download/core/DownloadListener;
    :cond_21
    :goto_21
    goto :goto_0

    .line 50
    :cond_22
    return-void
.end method

.method isShutdown()Z
    .registers 2

    .line 53
    const-class v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-interface {v0}, Lcom/huxq17/download/core/service/IDownloadManager;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public notifyProgressChanged(Lcom/huxq17/download/core/DownloadDetailsInfo;)V
    .registers 4
    .param p1, "downloadInfo"    # Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 58
    invoke-virtual {p0}, Lcom/huxq17/download/core/MessageCenter;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 59
    return-void

    .line 61
    :cond_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 62
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->snapshot()Lcom/huxq17/download/core/DownloadInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/huxq17/download/core/MessageCenter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    return-void
.end method

.method public declared-synchronized register(Lcom/huxq17/download/core/DownloadListener;)V
    .registers 3
    .param p1, "downloadListener"    # Lcom/huxq17/download/core/DownloadListener;

    monitor-enter p0

    .line 80
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p1, v0}, Lcom/huxq17/download/core/DownloadListener;->setEnable(Z)V

    .line 81
    iget-object v0, p0, Lcom/huxq17/download/core/MessageCenter;->observers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 82
    monitor-exit p0

    return-void

    .line 79
    .end local p1    # "downloadListener":Lcom/huxq17/download/core/DownloadListener;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setHandler(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 110
    iput-object p1, p0, Lcom/huxq17/download/core/MessageCenter;->handler:Landroid/os/Handler;

    .line 111
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    iput-object p1, p0, Lcom/huxq17/download/core/MessageCenter;->context:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public declared-synchronized unRegister(Lcom/huxq17/download/core/DownloadListener;)V
    .registers 3
    .param p1, "downloadListener"    # Lcom/huxq17/download/core/DownloadListener;

    monitor-enter p0

    .line 98
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1, v0}, Lcom/huxq17/download/core/DownloadListener;->setEnable(Z)V

    .line 99
    iget-object v0, p0, Lcom/huxq17/download/core/MessageCenter;->observers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 100
    monitor-exit p0

    return-void

    .line 97
    .end local p1    # "downloadListener":Lcom/huxq17/download/core/DownloadListener;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unRegister(Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    monitor-enter p0

    .line 86
    :try_start_1
    iget-object v0, p0, Lcom/huxq17/download/core/MessageCenter;->observers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 87
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huxq17/download/core/DownloadListener;>;"
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huxq17/download/core/DownloadListener;

    .line 89
    .local v1, "downloadListener":Lcom/huxq17/download/core/DownloadListener;
    invoke-virtual {v1}, Lcom/huxq17/download/core/DownloadListener;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 90
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/huxq17/download/core/DownloadListener;->setEnable(Z)V

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_27

    .line 93
    .end local v1    # "downloadListener":Lcom/huxq17/download/core/DownloadListener;
    :cond_24
    goto :goto_7

    .line 94
    :cond_25
    monitor-exit p0

    return-void

    .line 85
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huxq17/download/core/DownloadListener;>;"
    .end local p1    # "id":Ljava/lang/String;
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.huxq17.download.core.MessageCenter.AnonymousClass1 (com.huxq17.download.core.MessageCenter$1)
.class Lcom/huxq17/download/core/MessageCenter$1;
.super Landroid/os/Handler;
.source "MessageCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huxq17/download/core/MessageCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huxq17/download/core/MessageCenter;


# direct methods
.method constructor <init>(Lcom/huxq17/download/core/MessageCenter;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/huxq17/download/core/MessageCenter;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 20
    iput-object p1, p0, Lcom/huxq17/download/core/MessageCenter$1;->this$0:Lcom/huxq17/download/core/MessageCenter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    iget-object v0, p0, Lcom/huxq17/download/core/MessageCenter$1;->this$0:Lcom/huxq17/download/core/MessageCenter;

    invoke-virtual {v0}, Lcom/huxq17/download/core/MessageCenter;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 24
    return-void

    .line 26
    :cond_9
    iget-object v0, p0, Lcom/huxq17/download/core/MessageCenter$1;->this$0:Lcom/huxq17/download/core/MessageCenter;

    iget-object v1, p0, Lcom/huxq17/download/core/MessageCenter$1;->this$0:Lcom/huxq17/download/core/MessageCenter;

    invoke-virtual {v1}, Lcom/huxq17/download/core/MessageCenter;->getObserverIterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/huxq17/download/core/DownloadInfo;

    invoke-virtual {v0, v1, v2}, Lcom/huxq17/download/core/MessageCenter;->handleDownloadInfoSnapshot(Ljava/util/Iterator;Lcom/huxq17/download/core/DownloadInfo;)V

    .line 27
    return-void
.end method
