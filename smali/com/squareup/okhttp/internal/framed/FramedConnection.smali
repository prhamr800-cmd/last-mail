###### Class com.squareup.okhttp.internal.framed.FramedConnection (com.squareup.okhttp.internal.framed.FramedConnection)
.class public final Lcom/squareup/okhttp/internal/framed/FramedConnection;
.super Ljava/lang/Object;
.source "FramedConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;,
        Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;,
        Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field bytesLeftInWriteWindow:J

.field final client:Z

.field private final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

.field private final hostName:Ljava/lang/String;

.field private idleStartTimeNs:J

.field private lastGoodStreamId:I

.field private final listener:Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;

.field private nextPingId:I

.field private nextStreamId:I

.field okHttpSettings:Lcom/squareup/okhttp/internal/framed/Settings;

.field final peerSettings:Lcom/squareup/okhttp/internal/framed/Settings;

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/okhttp/internal/framed/Ping;",
            ">;"
        }
    .end annotation
.end field

.field final protocol:Lcom/squareup/okhttp/Protocol;

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field private final pushObserver:Lcom/squareup/okhttp/internal/framed/PushObserver;

.field final readerRunnable:Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;

.field private receivedInitialPeerSettings:Z

.field private shutdown:Z

.field final socket:Ljava/net/Socket;

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/okhttp/internal/framed/FramedStream;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J

.field final variant:Lcom/squareup/okhttp/internal/framed/Variant;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 55
    nop

    .line 69
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp FramedConnection"

    const/4 v7, 0x1

    .line 71
    invoke-static {v0, v7}, Lcom/squareup/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/squareup/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    .line 69
    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)V
    .registers 16
    .param p1, "builder"    # Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    .line 89
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->idleStartTimeNs:J

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 115
    new-instance v0, Lcom/squareup/okhttp/internal/framed/Settings;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/framed/Settings;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    .line 121
    new-instance v0, Lcom/squareup/okhttp/internal/framed/Settings;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/framed/Settings;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    .line 833
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    .line 132
    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->access$000(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)Lcom/squareup/okhttp/Protocol;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 133
    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->access$100(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)Lcom/squareup/okhttp/internal/framed/PushObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pushObserver:Lcom/squareup/okhttp/internal/framed/PushObserver;

    .line 134
    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->access$200(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->client:Z

    .line 135
    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->access$300(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->listener:Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;

    .line 137
    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->access$200(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_4e

    const/4 v1, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v1, 0x2

    :goto_4f
    iput v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    .line 138
    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->access$200(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v4, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v1, v4, :cond_62

    .line 139
    iget v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    .line 142
    :cond_62
    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->access$200(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v1

    if-eqz v1, :cond_6a

    const/4 v2, 0x1

    nop

    :cond_6a
    iput v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->nextPingId:I

    .line 148
    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->access$200(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v1

    const/4 v2, 0x7

    if-eqz v1, :cond_7a

    .line 149
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    const/high16 v4, 0x1000000

    invoke-virtual {v1, v2, v0, v4}, Lcom/squareup/okhttp/internal/framed/Settings;->set(III)Lcom/squareup/okhttp/internal/framed/Settings;

    .line 152
    :cond_7a
    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->access$400(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v4, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    const/4 v5, 0x0

    if-ne v1, v4, :cond_c2

    .line 155
    new-instance v1, Lcom/squareup/okhttp/internal/framed/Http2;

    invoke-direct {v1}, Lcom/squareup/okhttp/internal/framed/Http2;-><init>()V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->variant:Lcom/squareup/okhttp/internal/framed/Variant;

    .line 157
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x3c

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v12}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v4, "OkHttp %s Push Observer"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v13, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    aput-object v13, v6, v0

    .line 159
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/squareup/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v13

    move-object v6, v1

    invoke-direct/range {v6 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    .line 161
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    const v3, 0xffff

    invoke-virtual {v1, v2, v0, v3}, Lcom/squareup/okhttp/internal/framed/Settings;->set(III)Lcom/squareup/okhttp/internal/framed/Settings;

    .line 162
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    const/4 v2, 0x5

    const/16 v3, 0x4000

    invoke-virtual {v1, v2, v0, v3}, Lcom/squareup/okhttp/internal/framed/Settings;->set(III)Lcom/squareup/okhttp/internal/framed/Settings;

    goto :goto_d1

    .line 163
    :cond_c2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_10e

    .line 164
    new-instance v0, Lcom/squareup/okhttp/internal/framed/Spdy3;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/framed/Spdy3;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->variant:Lcom/squareup/okhttp/internal/framed/Variant;

    .line 165
    iput-object v5, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    .line 169
    :goto_d1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 170
    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->access$500(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->socket:Ljava/net/Socket;

    .line 171
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->variant:Lcom/squareup/okhttp/internal/framed/Variant;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->access$600(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)Lokio/BufferedSink;

    move-result-object v1

    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->client:Z

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/framed/Variant;->newWriter(Lokio/BufferedSink;Z)Lcom/squareup/okhttp/internal/framed/FrameWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    .line 173
    new-instance v0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->variant:Lcom/squareup/okhttp/internal/framed/Variant;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->access$700(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)Lokio/BufferedSource;

    move-result-object v2

    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->client:Z

    invoke-interface {v1, v2, v3}, Lcom/squareup/okhttp/internal/framed/Variant;->newReader(Lokio/BufferedSource;Z)Lcom/squareup/okhttp/internal/framed/FrameReader;

    move-result-object v1

    invoke-direct {v0, p0, v1, v5}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/FrameReader;Lcom/squareup/okhttp/internal/framed/FramedConnection$1;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->readerRunnable:Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;

    .line 174
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->readerRunnable:Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 175
    return-void

    .line 167
    :cond_10e
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;Lcom/squareup/okhttp/internal/framed/FramedConnection$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;
    .param p2, "x1"    # Lcom/squareup/okhttp/internal/framed/FramedConnection$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 55
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .registers 3
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .param p2, "x2"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->close(Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # I

    .line 55
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pushedStream(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILokio/BufferedSource;IZ)V
    .registers 5
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lokio/BufferedSource;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pushDataLater(ILokio/BufferedSource;IZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILjava/util/List;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pushHeadersLater(ILjava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 55
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->shutdown:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/squareup/okhttp/internal/framed/FramedConnection;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->shutdown:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/squareup/okhttp/internal/framed/FramedConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 55
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I

    return v0
.end method

.method static synthetic access$1702(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)I
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # I

    .line 55
    iput p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I

    return p1
.end method

.method static synthetic access$1800(Lcom/squareup/okhttp/internal/framed/FramedConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 55
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    return v0
.end method

.method static synthetic access$1900(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 55
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 55
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->listener:Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 55
    sget-object v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .registers 3
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pushResetLater(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 55
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/squareup/okhttp/internal/framed/FramedConnection;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)Lcom/squareup/okhttp/internal/framed/Ping;
    .registers 3
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # I

    .line 55
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->removePing(I)Lcom/squareup/okhttp/internal/framed/Ping;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/squareup/okhttp/internal/framed/FramedConnection;ZIILcom/squareup/okhttp/internal/framed/Ping;)V
    .registers 5
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/squareup/okhttp/internal/framed/Ping;

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->writePingLater(ZIILcom/squareup/okhttp/internal/framed/Ping;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILjava/util/List;)V
    .registers 3
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pushRequestLater(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Lcom/squareup/okhttp/internal/framed/PushObserver;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 55
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pushObserver:Lcom/squareup/okhttp/internal/framed/PushObserver;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 55
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lcom/squareup/okhttp/internal/framed/FramedConnection;ZIILcom/squareup/okhttp/internal/framed/Ping;)V
    .registers 5
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/squareup/okhttp/internal/framed/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->writePing(ZIILcom/squareup/okhttp/internal/framed/Ping;)V

    return-void
.end method

.method private close(Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .registers 11
    .param p1, "connectionCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .param p2, "streamCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    nop

    .line 455
    const/4 v0, 0x0

    move-object v1, v0

    .line 457
    .local v1, "thrown":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->shutdown(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    .line 460
    goto :goto_9

    .line 458
    :catch_7
    move-exception v2

    .line 459
    .local v2, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 462
    .end local v2    # "e":Ljava/io/IOException;
    :goto_9
    const/4 v2, 0x0

    .line 463
    .local v2, "streamsToClose":[Lcom/squareup/okhttp/internal/framed/FramedStream;
    const/4 v3, 0x0

    .line 464
    .local v3, "pingsToCancel":[Lcom/squareup/okhttp/internal/framed/Ping;
    monitor-enter p0

    .line 465
    :try_start_c
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_32

    .line 466
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    iget-object v6, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-interface {v4, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/squareup/okhttp/internal/framed/FramedStream;

    move-object v2, v4

    .line 467
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 468
    invoke-direct {p0, v5}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->setIdle(Z)V

    .line 470
    :cond_32
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-eqz v4, :cond_4d

    .line 471
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    iget-object v6, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [Lcom/squareup/okhttp/internal/framed/Ping;

    invoke-interface {v4, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/squareup/okhttp/internal/framed/Ping;

    move-object v3, v4

    .line 472
    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    .line 474
    :cond_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_c .. :try_end_4e} :catchall_86

    .line 476
    if-eqz v2, :cond_63

    .line 477
    array-length v0, v2

    move-object v4, v1

    const/4 v1, 0x0

    .end local v1    # "thrown":Ljava/io/IOException;
    .local v4, "thrown":Ljava/io/IOException;
    :goto_53
    if-ge v1, v0, :cond_62

    aget-object v6, v2, v1

    .line 479
    .local v6, "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :try_start_57
    invoke-virtual {v6, p2}, Lcom/squareup/okhttp/internal/framed/FramedStream;->close(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 482
    goto :goto_5f

    .line 480
    :catch_5b
    move-exception v7

    .line 481
    .local v7, "e":Ljava/io/IOException;
    if-eqz v4, :cond_5f

    move-object v4, v7

    .line 477
    .end local v6    # "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    .end local v7    # "e":Ljava/io/IOException;
    :cond_5f
    :goto_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 486
    :cond_62
    move-object v1, v4

    .end local v4    # "thrown":Ljava/io/IOException;
    .restart local v1    # "thrown":Ljava/io/IOException;
    :cond_63
    if-eqz v3, :cond_70

    .line 487
    array-length v0, v3

    :goto_66
    if-ge v5, v0, :cond_70

    aget-object v4, v3, v5

    .line 488
    .local v4, "ping":Lcom/squareup/okhttp/internal/framed/Ping;
    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/framed/Ping;->cancel()V

    .line 487
    .end local v4    # "ping":Lcom/squareup/okhttp/internal/framed/Ping;
    add-int/lit8 v5, v5, 0x1

    goto :goto_66

    .line 494
    :cond_70
    :try_start_70
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_75} :catch_76

    .line 497
    goto :goto_7a

    .line 495
    :catch_76
    move-exception v0

    .line 496
    .local v0, "e":Ljava/io/IOException;
    if-nez v1, :cond_7a

    move-object v1, v0

    .line 501
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7a
    :goto_7a
    :try_start_7a
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7f} :catch_80

    .line 504
    goto :goto_82

    .line 502
    :catch_80
    move-exception v0

    .line 503
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v0

    .line 506
    .end local v0    # "e":Ljava/io/IOException;
    :goto_82
    if-nez v1, :cond_85

    .line 507
    return-void

    .line 506
    :cond_85
    throw v1

    .line 474
    :catchall_86
    move-exception v0

    :try_start_87
    monitor-exit p0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v0
.end method

.method private newStream(ILjava/util/List;ZZ)Lcom/squareup/okhttp/internal/framed/FramedStream;
    .registers 20
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .param p4, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;ZZ)",
            "Lcom/squareup/okhttp/internal/framed/FramedStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    move-object v7, p0

    move/from16 v14, p1

    xor-int/lit8 v4, p3, 0x1

    .line 255
    .local v4, "outFinished":Z
    xor-int/lit8 v5, p4, 0x1

    .line 259
    .local v5, "inFinished":Z
    iget-object v13, v7, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    monitor-enter v13

    .line 260
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_c
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_a4

    .line 261
    :try_start_d
    iget-boolean v0, v7, Lcom/squareup/okhttp/internal/framed/FramedConnection;->shutdown:Z

    if-nez v0, :cond_91

    .line 264
    iget v0, v7, Lcom/squareup/okhttp/internal/framed/FramedConnection;->nextStreamId:I
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_9c

    move v12, v0

    .line 265
    .local v12, "streamId":I
    :try_start_14
    iget v0, v7, Lcom/squareup/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v7, Lcom/squareup/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    .line 266
    new-instance v0, Lcom/squareup/okhttp/internal/framed/FramedStream;

    move-object v1, v0

    move v2, v12

    move-object v3, p0

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/framed/FramedStream;-><init>(ILcom/squareup/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_8a

    move-object v1, v0

    .line 267
    .local v1, "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :try_start_25
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream;->isOpen()Z

    move-result v0
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_83

    if-eqz v0, :cond_3f

    .line 268
    :try_start_2b
    iget-object v0, v7, Lcom/squareup/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-direct {p0, v8}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->setIdle(Z)V
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_38

    goto :goto_3f

    .line 271
    :catchall_38
    move-exception v0

    move-object/from16 v6, p2

    move-object v9, v1

    move v8, v12

    goto/16 :goto_9f

    :cond_3f
    :goto_3f
    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_83

    .line 272
    if-nez v14, :cond_5b

    .line 273
    :try_start_42
    iget-object v8, v7, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_53

    move v9, v4

    move v10, v5

    move v11, v12

    move v2, v12

    .end local v12    # "streamId":I
    .local v2, "streamId":I
    move/from16 v12, p1

    move-object v3, v13

    move-object/from16 v13, p2

    :try_start_4d
    invoke-interface/range {v8 .. v13}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->synStream(ZZIILjava/util/List;)V

    .line 280
    move-object/from16 v6, p2

    goto :goto_68

    .end local v2    # "streamId":I
    .restart local v12    # "streamId":I
    :catchall_53
    move-exception v0

    move v2, v12

    move-object v3, v13

    move-object/from16 v6, p2

    move-object v9, v1

    move v8, v2

    .end local v12    # "streamId":I
    .restart local v2    # "streamId":I
    goto :goto_a8

    .line 275
    .end local v2    # "streamId":I
    .restart local v12    # "streamId":I
    :cond_5b
    move v2, v12

    move-object v3, v13

    .end local v12    # "streamId":I
    .restart local v2    # "streamId":I
    iget-boolean v0, v7, Lcom/squareup/okhttp/internal/framed/FramedConnection;->client:Z

    if-nez v0, :cond_71

    .line 278
    iget-object v0, v7, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;
    :try_end_63
    .catchall {:try_start_4d .. :try_end_63} :catchall_7d

    move-object/from16 v6, p2

    :try_start_65
    invoke-interface {v0, v14, v2, v6}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->pushPromise(IILjava/util/List;)V

    .line 280
    :goto_68
    monitor-exit v3
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_7b

    .line 282
    if-nez p3, :cond_70

    .line 283
    iget-object v0, v7, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->flush()V

    .line 286
    :cond_70
    return-object v1

    .line 276
    :cond_71
    move-object/from16 v6, p2

    :try_start_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v8, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_7b

    .line 280
    :catchall_7b
    move-exception v0

    goto :goto_80

    :catchall_7d
    move-exception v0

    move-object/from16 v6, p2

    .end local v1    # "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    .end local v2    # "streamId":I
    .local v8, "streamId":I
    .local v9, "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :goto_80
    move-object v9, v1

    move v8, v2

    goto :goto_a8

    .line 271
    .end local v8    # "streamId":I
    .end local v9    # "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    .restart local v1    # "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    .restart local v12    # "streamId":I
    :catchall_83
    move-exception v0

    move-object/from16 v6, p2

    move v2, v12

    move-object v3, v13

    move-object v9, v1

    goto :goto_8f

    .end local v1    # "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :catchall_8a
    move-exception v0

    move-object/from16 v6, p2

    move v2, v12

    move-object v3, v13

    .restart local v8    # "streamId":I
    .restart local v9    # "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :goto_8f
    move v8, v2

    .end local v12    # "streamId":I
    .restart local v2    # "streamId":I
    goto :goto_a0

    .line 262
    .end local v2    # "streamId":I
    .end local v8    # "streamId":I
    .end local v9    # "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :cond_91
    move-object/from16 v6, p2

    move-object v3, v13

    :try_start_94
    new-instance v0, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :catchall_9c
    move-exception v0

    move-object/from16 v6, p2

    .restart local v8    # "streamId":I
    .restart local v9    # "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :goto_9f
    move-object v3, v13

    :goto_a0
    monitor-exit p0
    :try_end_a1
    .catchall {:try_start_94 .. :try_end_a1} :catchall_a2

    :try_start_a1
    throw v0

    :catchall_a2
    move-exception v0

    goto :goto_a0

    .line 280
    .end local v8    # "streamId":I
    .end local v9    # "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :catchall_a4
    move-exception v0

    move-object/from16 v6, p2

    move-object v3, v13

    .restart local v8    # "streamId":I
    .restart local v9    # "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :goto_a8
    monitor-exit v3
    :try_end_a9
    .catchall {:try_start_a1 .. :try_end_a9} :catchall_aa

    throw v0

    :catchall_aa
    move-exception v0

    goto :goto_a8
.end method

.method private pushDataLater(ILokio/BufferedSource;IZ)V
    .registers 16
    .param p1, "streamId"    # I
    .param p2, "source"    # Lokio/BufferedSource;
    .param p3, "byteCount"    # I
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 883
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 884
    .local v0, "buffer":Lokio/Buffer;
    int-to-long v1, p3

    invoke-interface {p2, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 885
    int-to-long v1, p3

    invoke-interface {p2, v0, v1, v2}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    .line 886
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v1

    int-to-long v3, p3

    cmp-long v5, v1, v3

    if-nez v5, :cond_38

    .line 887
    iget-object v9, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;

    const-string v3, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v10

    move-object v2, p0

    move v5, p1

    move-object v6, v0

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 901
    return-void

    .line 886
    :cond_38
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private pushHeadersLater(ILjava/util/List;Z)V
    .registers 13
    .param p1, "streamId"    # I
    .param p3, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    .line 861
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;

    const-string v3, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 875
    return-void
.end method

.method private pushRequestLater(ILjava/util/List;)V
    .registers 11
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .line 836
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    .line 837
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 838
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 839
    monitor-exit p0

    return-void

    .line 841
    :cond_14
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 842
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3e

    .line 843
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/squareup/okhttp/internal/framed/FramedConnection$4;

    const-string v3, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/framed/FramedConnection$4;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 857
    return-void

    .line 842
    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method

.method private pushResetLater(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .registers 11
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 904
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/squareup/okhttp/internal/framed/FramedConnection$7;

    const-string v3, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/framed/FramedConnection$7;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 912
    return-void
.end method

.method private pushedStream(I)Z
    .registers 4
    .param p1, "streamId"    # I

    .line 829
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_e

    if-eqz p1, :cond_e

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private declared-synchronized removePing(I)Lcom/squareup/okhttp/internal/framed/Ping;
    .registers 4
    .param p1, "id"    # I

    monitor-enter p0

    .line 416
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/framed/Ping;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    monitor-exit p0

    return-object v0

    .end local p1    # "id":I
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setIdle(Z)V
    .registers 4
    .param p1, "value"    # Z

    monitor-enter p0

    .line 204
    if-eqz p1, :cond_a

    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_f

    .line 203
    .end local p1    # "value":Z
    :catchall_8
    move-exception p1

    goto :goto_13

    .line 204
    .restart local p1    # "value":Z
    :cond_a
    const-wide v0, 0x7fffffffffffffffL

    :goto_f
    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->idleStartTimeNs:J
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_8

    .line 205
    monitor-exit p0

    return-void

    .line 203
    .end local p1    # "value":Z
    :goto_13
    monitor-exit p0

    throw p1
.end method

.method private writePing(ZIILcom/squareup/okhttp/internal/framed/Ping;)V
    .registers 7
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/squareup/okhttp/internal/framed/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    monitor-enter v0

    .line 410
    if-eqz p4, :cond_b

    :try_start_5
    invoke-virtual {p4}, Lcom/squareup/okhttp/internal/framed/Ping;->send()V

    goto :goto_b

    .line 412
    :catchall_9
    move-exception v1

    goto :goto_12

    .line 411
    :cond_b
    :goto_b
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {v1, p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->ping(ZII)V

    .line 412
    monitor-exit v0

    .line 413
    return-void

    .line 412
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_9

    throw v1
.end method

.method private writePingLater(ZIILcom/squareup/okhttp/internal/framed/Ping;)V
    .registers 15
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/squareup/okhttp/internal/framed/Ping;

    .line 396
    sget-object v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;

    const-string v3, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    .line 397
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    move-object v1, v9

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/squareup/okhttp/internal/framed/Ping;)V

    .line 396
    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 405
    return-void
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .registers 6
    .param p1, "delta"    # J

    .line 344
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 345
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 346
    :cond_e
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->close(Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 451
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->flush()V

    .line 421
    return-void
.end method

.method public declared-synchronized getIdleStartTimeNs()J
    .registers 3

    monitor-enter p0

    .line 221
    :try_start_1
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->idleStartTimeNs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProtocol()Lcom/squareup/okhttp/Protocol;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method declared-synchronized getStream(I)Lcom/squareup/okhttp/internal/framed/FramedStream;
    .registers 4
    .param p1, "id"    # I

    monitor-enter p0

    .line 191
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/framed/FramedStream;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .end local p1    # "id":I
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isIdle()Z
    .registers 6

    monitor-enter p0

    .line 209
    :try_start_1
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->idleStartTimeNs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    monitor-exit p0

    return v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized maxConcurrentStreams()I
    .registers 3

    monitor-enter p0

    .line 213
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/Settings;->getMaxConcurrentStreams(I)I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;ZZ)Lcom/squareup/okhttp/internal/framed/FramedStream;
    .registers 5
    .param p2, "out"    # Z
    .param p3, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;ZZ)",
            "Lcom/squareup/okhttp/internal/framed/FramedStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    .local p1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->newStream(ILjava/util/List;ZZ)Lcom/squareup/okhttp/internal/framed/FramedStream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized openStreamCount()I
    .registers 2

    monitor-enter p0

    .line 187
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ping()Lcom/squareup/okhttp/internal/framed/Ping;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    new-instance v0, Lcom/squareup/okhttp/internal/framed/Ping;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/framed/Ping;-><init>()V

    .line 381
    .local v0, "ping":Lcom/squareup/okhttp/internal/framed/Ping;
    monitor-enter p0

    .line 382
    const/4 v1, 0x0

    :try_start_7
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->shutdown:Z

    if-nez v2, :cond_2f

    .line 385
    iget v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->nextPingId:I
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_37

    .line 386
    .local v2, "pingId":I
    :try_start_d
    iget v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->nextPingId:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->nextPingId:I

    .line 387
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-nez v3, :cond_1e

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    .line 388
    :cond_1e
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_3c

    .line 390
    const v3, 0x4f4b6f6b

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->writePing(ZIILcom/squareup/okhttp/internal/framed/Ping;)V

    .line 391
    return-object v0

    .line 383
    .end local v2    # "pingId":I
    :cond_2f
    :try_start_2f
    new-instance v2, Ljava/io/IOException;

    const-string v3, "shutdown"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    .line 389
    :catchall_37
    move-exception v2

    move-object v1, v2

    const/4 v2, 0x0

    .restart local v2    # "pingId":I
    :goto_3a
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3c

    throw v1

    :catchall_3c
    move-exception v1

    goto :goto_3a
.end method

.method public pushStream(ILjava/util/List;Z)Lcom/squareup/okhttp/internal/framed/FramedStream;
    .registers 6
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;Z)",
            "Lcom/squareup/okhttp/internal/framed/FramedStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->client:Z

    if-nez v0, :cond_18

    .line 235
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_10

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->newStream(ILjava/util/List;ZZ)Lcom/squareup/okhttp/internal/framed/FramedStream;

    move-result-object v0

    return-object v0

    .line 235
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol != HTTP_2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client cannot push requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method declared-synchronized removeStream(I)Lcom/squareup/okhttp/internal/framed/FramedStream;
    .registers 4
    .param p1, "streamId"    # I

    monitor-enter p0

    .line 195
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 196
    .local v0, "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 197
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->setIdle(Z)V

    .line 199
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 200
    monitor-exit p0

    return-object v0

    .line 194
    .end local v0    # "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    .end local p1    # "streamId":I
    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendConnectionPreface()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->connectionPreface()V

    .line 515
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->settings(Lcom/squareup/okhttp/internal/framed/Settings;)V

    .line 516
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v0

    .line 517
    .local v0, "windowSize":I
    if-eq v0, v1, :cond_1f

    .line 518
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    const/4 v3, 0x0

    sub-int v1, v0, v1

    int-to-long v4, v1

    invoke-interface {v2, v3, v4, v5}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->windowUpdate(IJ)V

    .line 520
    :cond_1f
    return-void
.end method

.method public setSettings(Lcom/squareup/okhttp/internal/framed/Settings;)V
    .registers 5
    .param p1, "settings"    # Lcom/squareup/okhttp/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    monitor-enter v0

    .line 525
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_20

    .line 526
    :try_start_4
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->shutdown:Z

    if-nez v1, :cond_15

    .line 529
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/internal/framed/Settings;->merge(Lcom/squareup/okhttp/internal/framed/Settings;)V

    .line 530
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {v1, p1}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->settings(Lcom/squareup/okhttp/internal/framed/Settings;)V

    .line 531
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_1d

    .line 532
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_20

    .line 533
    return-void

    .line 527
    :cond_15
    :try_start_15
    new-instance v1, Ljava/io/IOException;

    const-string v2, "shutdown"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 531
    :catchall_1d
    move-exception v1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v1

    .line 532
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_20

    throw v1
.end method

.method public shutdown(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .registers 6
    .param p1, "statusCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    monitor-enter v0

    .line 432
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1f

    .line 433
    const/4 v1, 0x0

    :try_start_5
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v2, :cond_c

    .line 434
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1c

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_1f

    return-void

    .line 436
    :cond_c
    const/4 v2, 0x1

    :try_start_d
    iput-boolean v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->shutdown:Z

    .line 437
    iget v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I

    move v1, v2

    .line 438
    .local v1, "lastGoodStreamId":I
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_1c

    .line 440
    :try_start_13
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    sget-object v3, Lcom/squareup/okhttp/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-interface {v2, v1, p1, v3}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;[B)V

    .line 441
    .end local v1    # "lastGoodStreamId":I
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_1f

    .line 442
    return-void

    .line 438
    :catchall_1c
    move-exception v2

    .restart local v1    # "lastGoodStreamId":I
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v2

    .line 441
    .end local v1    # "lastGoodStreamId":I
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public writeData(IZLokio/Buffer;J)V
    .registers 14
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .param p3, "buffer"    # Lokio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_d

    .line 309
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {v1, p2, p1, p3, v0}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->data(ZILokio/Buffer;I)V

    .line 310
    return-void

    .line 313
    :cond_d
    const/4 v3, 0x0

    .local v3, "toWrite":I
    :goto_e
    cmp-long v4, p4, v1

    if-lez v4, :cond_67

    .line 315
    monitor-enter p0

    .line 317
    :goto_13
    :try_start_13
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    cmp-long v6, v4, v1

    if-gtz v6, :cond_31

    .line 320
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 323
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_13

    .line 321
    :cond_29
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_31} :catch_5e
    .catchall {:try_start_13 .. :try_end_31} :catchall_5c

    .line 327
    :cond_31
    nop

    .line 329
    :try_start_32
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .end local v3    # "toWrite":I
    long-to-int v3, v4

    .line 330
    .restart local v3    # "toWrite":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {v4}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->maxDataLength()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v4

    .line 331
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 332
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_32 .. :try_end_4b} :catchall_5c

    .line 334
    int-to-long v4, v3

    sub-long/2addr p4, v4

    .line 335
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    if-eqz p2, :cond_57

    cmp-long v5, p4, v1

    if-nez v5, :cond_57

    const/4 v5, 0x1

    goto :goto_58

    :cond_57
    const/4 v5, 0x0

    :goto_58
    invoke-interface {v4, v5, p1, p3, v3}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->data(ZILokio/Buffer;I)V

    .line 336
    .end local v3    # "toWrite":I
    goto :goto_e

    .line 332
    .restart local v3    # "toWrite":I
    :catchall_5c
    move-exception v0

    goto :goto_65

    .line 325
    :catch_5e
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5f
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    .line 332
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_5c

    throw v0

    .line 337
    .end local v3    # "toWrite":I
    :cond_67
    return-void
.end method

.method writeSynReply(IZLjava/util/List;)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    .local p3, "alternating":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p2, p1, p3}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->synReply(ZILjava/util/List;)V

    .line 292
    return-void
.end method

.method writeSynReset(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .registers 4
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 361
    return-void
.end method

.method writeSynResetLater(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .registers 11
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 349
    sget-object v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/squareup/okhttp/internal/framed/FramedConnection$1;

    const-string v3, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/framed/FramedConnection$1;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 357
    return-void
.end method

.method writeWindowUpdateLater(IJ)V
    .registers 13
    .param p1, "streamId"    # I
    .param p2, "unacknowledgedBytesRead"    # J

    .line 364
    sget-object v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/squareup/okhttp/internal/framed/FramedConnection$2;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/squareup/okhttp/internal/framed/FramedConnection$2;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

###### Class com.squareup.okhttp.internal.framed.FramedConnection.AnonymousClass1 (com.squareup.okhttp.internal.framed.FramedConnection$1)
.class Lcom/squareup/okhttp/internal/framed/FramedConnection$1;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

.field final synthetic val$errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .registers 6
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 349
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$1;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$1;->val$streamId:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$1;->val$errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 4

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$1;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$1;->val$streamId:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$1;->val$errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->writeSynReset(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 354
    goto :goto_b

    .line 353
    :catch_a
    move-exception v0

    .line 355
    :goto_b
    return-void
.end method

###### Class com.squareup.okhttp.internal.framed.FramedConnection.AnonymousClass2 (com.squareup.okhttp.internal.framed.FramedConnection$2)
.class Lcom/squareup/okhttp/internal/framed/FramedConnection$2;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/FramedConnection;->writeWindowUpdateLater(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

.field final synthetic val$streamId:I

.field final synthetic val$unacknowledgedBytesRead:J


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .registers 7
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 364
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$2;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$2;->val$streamId:I

    iput-wide p5, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$2;->val$unacknowledgedBytesRead:J

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$2;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$2;->val$streamId:I

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$2;->val$unacknowledgedBytesRead:J

    invoke-interface {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->windowUpdate(IJ)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 369
    goto :goto_d

    .line 368
    :catch_c
    move-exception v0

    .line 370
    :goto_d
    return-void
.end method

###### Class com.squareup.okhttp.internal.framed.FramedConnection.AnonymousClass3 (com.squareup.okhttp.internal.framed.FramedConnection$3)
.class Lcom/squareup/okhttp/internal/framed/FramedConnection$3;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/FramedConnection;->writePingLater(ZIILcom/squareup/okhttp/internal/framed/Ping;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

.field final synthetic val$payload1:I

.field final synthetic val$payload2:I

.field final synthetic val$ping:Lcom/squareup/okhttp/internal/framed/Ping;

.field final synthetic val$reply:Z


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/squareup/okhttp/internal/framed/Ping;)V
    .registers 8
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 397
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iput-boolean p4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;->val$reply:Z

    iput p5, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;->val$payload1:I

    iput p6, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;->val$payload2:I

    iput-object p7, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;->val$ping:Lcom/squareup/okhttp/internal/framed/Ping;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 6

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;->val$reply:Z

    iget v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;->val$payload1:I

    iget v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;->val$payload2:I

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$3;->val$ping:Lcom/squareup/okhttp/internal/framed/Ping;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$900(Lcom/squareup/okhttp/internal/framed/FramedConnection;ZIILcom/squareup/okhttp/internal/framed/Ping;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 402
    goto :goto_f

    .line 401
    :catch_e
    move-exception v0

    .line 403
    :goto_f
    return-void
.end method

###### Class com.squareup.okhttp.internal.framed.FramedConnection.AnonymousClass4 (com.squareup.okhttp.internal.framed.FramedConnection$4)
.class Lcom/squareup/okhttp/internal/framed/FramedConnection$4;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/FramedConnection;->pushRequestLater(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

.field final synthetic val$requestHeaders:Ljava/util/List;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .registers 6
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 843
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$4;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$4;->val$streamId:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$4;->val$requestHeaders:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5

    .line 845
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$4;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2700(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Lcom/squareup/okhttp/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$4;->val$streamId:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$4;->val$requestHeaders:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/framed/PushObserver;->onRequest(ILjava/util/List;)Z

    move-result v0

    .line 847
    .local v0, "cancel":Z
    if-eqz v0, :cond_34

    .line 848
    :try_start_10
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$4;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    iget v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$4;->val$streamId:I

    sget-object v3, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-interface {v1, v2, v3}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 849
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$4;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    monitor-enter v1
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1e} :catch_32

    .line 850
    :try_start_1e
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$4;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2800(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v2

    iget v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$4;->val$streamId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 851
    monitor-exit v1

    goto :goto_34

    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_2f

    :try_start_31
    throw v2
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_32} :catch_32

    .line 853
    :catch_32
    move-exception v1

    goto :goto_35

    .line 854
    :cond_34
    :goto_34
    nop

    .line 855
    :goto_35
    return-void
.end method

###### Class com.squareup.okhttp.internal.framed.FramedConnection.AnonymousClass5 (com.squareup.okhttp.internal.framed.FramedConnection$5)
.class Lcom/squareup/okhttp/internal/framed/FramedConnection$5;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/FramedConnection;->pushHeadersLater(ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

.field final synthetic val$inFinished:Z

.field final synthetic val$requestHeaders:Ljava/util/List;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .registers 7
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 861
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->val$streamId:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->val$requestHeaders:Ljava/util/List;

    iput-boolean p6, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->val$inFinished:Z

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5

    .line 863
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2700(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Lcom/squareup/okhttp/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->val$streamId:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->val$requestHeaders:Ljava/util/List;

    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->val$inFinished:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/framed/PushObserver;->onHeaders(ILjava/util/List;Z)Z

    move-result v0

    .line 865
    .local v0, "cancel":Z
    if-eqz v0, :cond_20

    :try_start_12
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    iget v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->val$streamId:I

    sget-object v3, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-interface {v1, v2, v3}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    goto :goto_20

    .line 871
    :catch_1e
    move-exception v1

    goto :goto_3d

    .line 866
    :cond_20
    :goto_20
    if-nez v0, :cond_26

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->val$inFinished:Z

    if-eqz v1, :cond_39

    .line 867
    :cond_26
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    monitor-enter v1
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_29} :catch_1e

    .line 868
    :try_start_29
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2800(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v2

    iget v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$5;->val$streamId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 869
    monitor-exit v1

    .line 872
    :cond_39
    goto :goto_3e

    .line 869
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v2
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3d} :catch_1e

    .line 871
    :goto_3d
    nop

    .line 873
    :goto_3e
    return-void
.end method

###### Class com.squareup.okhttp.internal.framed.FramedConnection.AnonymousClass6 (com.squareup.okhttp.internal.framed.FramedConnection$6)
.class Lcom/squareup/okhttp/internal/framed/FramedConnection$6;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/FramedConnection;->pushDataLater(ILokio/BufferedSource;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

.field final synthetic val$buffer:Lokio/Buffer;

.field final synthetic val$byteCount:I

.field final synthetic val$inFinished:Z

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V
    .registers 8
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 887
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;->val$streamId:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;->val$buffer:Lokio/Buffer;

    iput p6, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;->val$byteCount:I

    iput-boolean p7, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;->val$inFinished:Z

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 6

    .line 890
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2700(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Lcom/squareup/okhttp/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;->val$streamId:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;->val$buffer:Lokio/Buffer;

    iget v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;->val$byteCount:I

    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;->val$inFinished:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/PushObserver;->onData(ILokio/BufferedSource;IZ)Z

    move-result v0

    .line 891
    .local v0, "cancel":Z
    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    iget v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;->val$streamId:I

    sget-object v3, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-interface {v1, v2, v3}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 892
    :cond_1f
    if-nez v0, :cond_25

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;->val$inFinished:Z

    if-eqz v1, :cond_38

    .line 893
    :cond_25
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    monitor-enter v1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_3c

    .line 894
    :try_start_28
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2800(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v2

    iget v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$6;->val$streamId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 895
    monitor-exit v1

    .line 898
    .end local v0    # "cancel":Z
    :cond_38
    goto :goto_3d

    .line 895
    .restart local v0    # "cancel":Z
    :catchall_39
    move-exception v2

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_39

    :try_start_3b
    throw v2
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3c} :catch_3c

    .line 897
    .end local v0    # "cancel":Z
    :catch_3c
    move-exception v0

    .line 899
    :goto_3d
    return-void
.end method

###### Class com.squareup.okhttp.internal.framed.FramedConnection.AnonymousClass7 (com.squareup.okhttp.internal.framed.FramedConnection$7)
.class Lcom/squareup/okhttp/internal/framed/FramedConnection$7;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/FramedConnection;->pushResetLater(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

.field final synthetic val$errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .registers 6
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 904
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$7;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iput p4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$7;->val$streamId:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$7;->val$errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 4

    .line 906
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$7;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2700(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Lcom/squareup/okhttp/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$7;->val$streamId:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$7;->val$errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/framed/PushObserver;->onReset(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 907
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$7;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    monitor-enter v0

    .line 908
    :try_start_10
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$7;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2800(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$7;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 909
    monitor-exit v0

    .line 910
    return-void

    .line 909
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_21

    throw v1
.end method

###### Class com.squareup.okhttp.internal.framed.FramedConnection.Builder (com.squareup.okhttp.internal.framed.FramedConnection$Builder)
.class public Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;
.super Ljava/lang/Object;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private client:Z

.field private hostName:Ljava/lang/String;

.field private listener:Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;

.field private protocol:Lcom/squareup/okhttp/Protocol;

.field private pushObserver:Lcom/squareup/okhttp/internal/framed/PushObserver;

.field private sink:Lokio/BufferedSink;

.field private socket:Ljava/net/Socket;

.field private source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .param p1, "client"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    sget-object v0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;->REFUSE_INCOMING_STREAMS:Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->listener:Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;

    .line 541
    sget-object v0, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 542
    sget-object v0, Lcom/squareup/okhttp/internal/framed/PushObserver;->CANCEL:Lcom/squareup/okhttp/internal/framed/PushObserver;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->pushObserver:Lcom/squareup/okhttp/internal/framed/PushObserver;

    .line 550
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->client:Z

    .line 551
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)Lcom/squareup/okhttp/Protocol;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;

    .line 535
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->protocol:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)Lcom/squareup/okhttp/internal/framed/PushObserver;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;

    .line 535
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->pushObserver:Lcom/squareup/okhttp/internal/framed/PushObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;

    .line 535
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->client:Z

    return v0
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;

    .line 535
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->listener:Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;

    .line 535
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)Ljava/net/Socket;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;

    .line 535
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$600(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)Lokio/BufferedSink;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;

    .line 535
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->sink:Lokio/BufferedSink;

    return-object v0
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;)Lokio/BufferedSource;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;

    .line 535
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->source:Lokio/BufferedSource;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    new-instance v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;Lcom/squareup/okhttp/internal/framed/FramedConnection$1;)V

    return-object v0
.end method

.method public listener(Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;)Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;
    .registers 2
    .param p1, "listener"    # Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;

    .line 568
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->listener:Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;

    .line 569
    return-object p0
.end method

.method public protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;
    .registers 2
    .param p1, "protocol"    # Lcom/squareup/okhttp/Protocol;

    .line 573
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 574
    return-object p0
.end method

.method public pushObserver(Lcom/squareup/okhttp/internal/framed/PushObserver;)Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;
    .registers 2
    .param p1, "pushObserver"    # Lcom/squareup/okhttp/internal/framed/PushObserver;

    .line 578
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->pushObserver:Lcom/squareup/okhttp/internal/framed/PushObserver;

    .line 579
    return-object p0
.end method

.method public socket(Ljava/net/Socket;)Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;
    .registers 5
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 555
    invoke-static {p1}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    invoke-static {p1}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    .line 554
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public socket(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;
    .registers 5
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "source"    # Lokio/BufferedSource;
    .param p4, "sink"    # Lokio/BufferedSink;

    .line 560
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->socket:Ljava/net/Socket;

    .line 561
    iput-object p2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->hostName:Ljava/lang/String;

    .line 562
    iput-object p3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->source:Lokio/BufferedSource;

    .line 563
    iput-object p4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Builder;->sink:Lokio/BufferedSink;

    .line 564
    return-object p0
.end method

###### Class com.squareup.okhttp.internal.framed.FramedConnection.Listener (com.squareup.okhttp.internal.framed.FramedConnection$Listener)
.class public abstract Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;
.super Ljava/lang/Object;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# static fields
.field public static final REFUSE_INCOMING_STREAMS:Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 916
    new-instance v0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener$1;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener$1;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;->REFUSE_INCOMING_STREAMS:Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettings(Lcom/squareup/okhttp/internal/framed/FramedConnection;)V
    .registers 2
    .param p1, "connection"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 941
    return-void
.end method

.method public abstract onStream(Lcom/squareup/okhttp/internal/framed/FramedStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class com.squareup.okhttp.internal.framed.FramedConnection.Listener.AnonymousClass1 (com.squareup.okhttp.internal.framed.FramedConnection$Listener$1)
.class final Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener$1;
.super Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 916
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStream(Lcom/squareup/okhttp/internal/framed/FramedStream;)V
    .registers 3
    .param p1, "stream"    # Lcom/squareup/okhttp/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 918
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->close(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 919
    return-void
.end method

###### Class com.squareup.okhttp.internal.framed.FramedConnection.Reader (com.squareup.okhttp.internal.framed.FramedConnection$Reader)
.class Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Reader"
.end annotation


# instance fields
.field final frameReader:Lcom/squareup/okhttp/internal/framed/FrameReader;

.field final synthetic this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/FrameReader;)V
    .registers 7
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p2, "frameReader"    # Lcom/squareup/okhttp/internal/framed/FrameReader;

    .line 594
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 595
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1100(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    iput-object p2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/framed/FrameReader;

    .line 597
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/FrameReader;Lcom/squareup/okhttp/internal/framed/FramedConnection$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p2, "x1"    # Lcom/squareup/okhttp/internal/framed/FrameReader;
    .param p3, "x2"    # Lcom/squareup/okhttp/internal/framed/FramedConnection$1;

    .line 591
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/FrameReader;)V

    return-void
.end method

.method private ackSettingsLater(Lcom/squareup/okhttp/internal/framed/Settings;)V
    .registers 8
    .param p1, "peerSettings"    # Lcom/squareup/okhttp/internal/framed/Settings;

    .line 749
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$3;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1100(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$3;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/framed/Settings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 757
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .registers 1

    .line 761
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .registers 8
    .param p1, "streamId"    # I
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "protocol"    # Lokio/ByteString;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "maxAge"    # J

    .line 824
    return-void
.end method

.method public data(ZILokio/BufferedSource;I)V
    .registers 8
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lokio/BufferedSource;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1300(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 625
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0, p2, p3, p4, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1400(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILokio/BufferedSource;IZ)V

    .line 626
    return-void

    .line 628
    :cond_e
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->getStream(I)Lcom/squareup/okhttp/internal/framed/FramedStream;

    move-result-object v0

    .line 629
    .local v0, "dataStream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    if-nez v0, :cond_22

    .line 630
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    sget-object v2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, p2, v2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 631
    int-to-long v1, p4

    invoke-interface {p3, v1, v2}, Lokio/BufferedSource;->skip(J)V

    .line 632
    return-void

    .line 634
    :cond_22
    invoke-virtual {v0, p3, p4}, Lcom/squareup/okhttp/internal/framed/FramedStream;->receiveData(Lokio/BufferedSource;I)V

    .line 635
    if-eqz p1, :cond_2a

    .line 636
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->receiveFin()V

    .line 638
    :cond_2a
    return-void
.end method

.method protected execute()V
    .registers 5

    .line 600
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 601
    .local v0, "connectionErrorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 603
    .local v1, "streamErrorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_start_4
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-boolean v2, v2, Lcom/squareup/okhttp/internal/framed/FramedConnection;->client:Z

    if-nez v2, :cond_f

    .line 604
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/framed/FrameReader;

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/framed/FrameReader;->readConnectionPreface()V

    .line 606
    :cond_f
    :goto_f
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/framed/FrameReader;

    invoke-interface {v2, p0}, Lcom/squareup/okhttp/internal/framed/FrameReader;->nextFrame(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_f

    .line 608
    :cond_18
    sget-object v2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-object v0, v2

    .line 609
    sget-object v2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1d} :catch_28
    .catchall {:try_start_4 .. :try_end_1d} :catchall_26

    move-object v1, v2

    .line 615
    :try_start_1e
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v2, v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1200(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_34

    .line 616
    :catch_24
    move-exception v2

    goto :goto_36

    .line 614
    :catchall_26
    move-exception v2

    goto :goto_3d

    .line 610
    :catch_28
    move-exception v2

    .line 611
    .local v2, "e":Ljava/io/IOException;
    :try_start_29
    sget-object v3, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-object v0, v3

    .line 612
    sget-object v3, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_26

    move-object v1, v3

    .line 615
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_2f
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v2, v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1200(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_35

    .line 617
    :goto_34
    goto :goto_36

    .line 616
    :catch_35
    move-exception v2

    .line 618
    :goto_36
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/framed/FrameReader;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 619
    nop

    .line 620
    return-void

    .line 614
    :goto_3d
    nop

    .line 615
    :try_start_3e
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v3, v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1200(Lcom/squareup/okhttp/internal/framed/FramedConnection;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_44

    .line 617
    goto :goto_45

    .line 616
    :catch_44
    move-exception v3

    .line 618
    :goto_45
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/squareup/okhttp/internal/framed/FrameReader;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method public goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V
    .registers 10
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .param p3, "debugData"    # Lokio/ByteString;

    .line 776
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    .line 781
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    monitor-enter v0

    .line 782
    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1900(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1900(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/squareup/okhttp/internal/framed/FramedStream;

    move-object v1, v2

    .line 783
    .local v1, "streamsCopy":[Lcom/squareup/okhttp/internal/framed/FramedStream;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1602(Lcom/squareup/okhttp/internal/framed/FramedConnection;Z)Z

    .line 784
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_4f

    .line 787
    array-length v0, v1

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v0, :cond_4e

    aget-object v3, v1, v2

    .line 788
    .local v3, "framedStream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/framed/FramedStream;->getId()I

    move-result v4

    if-le v4, p1, :cond_4b

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/framed/FramedStream;->isLocallyInitiated()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 789
    sget-object v4, Lcom/squareup/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/framed/FramedStream;->receiveRstStream(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 790
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/framed/FramedStream;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 787
    .end local v3    # "framedStream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 793
    :cond_4e
    return-void

    .line 784
    .end local v1    # "streamsCopy":[Lcom/squareup/okhttp/internal/framed/FramedStream;
    :catchall_4f
    move-exception v2

    .restart local v1    # "streamsCopy":[Lcom/squareup/okhttp/internal/framed/FramedStream;
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v2
.end method

.method public headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V
    .registers 21
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .param p6, "headersMode"    # Lcom/squareup/okhttp/internal/framed/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;",
            "Lcom/squareup/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .line 642
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    move-object v1, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p5

    iget-object v0, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0, v9}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1300(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 643
    iget-object v0, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0, v9, v10, v8}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1500(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILjava/util/List;Z)V

    .line 644
    return-void

    .line 647
    :cond_15
    iget-object v11, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    monitor-enter v11

    .line 649
    const/4 v2, 0x0

    :try_start_19
    iget-object v0, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1600(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Z

    move-result v0

    if-eqz v0, :cond_23

    monitor-exit v11

    return-void

    .line 651
    :cond_23
    iget-object v0, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, v9}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->getStream(I)Lcom/squareup/okhttp/internal/framed/FramedStream;

    move-result-object v0
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_b8

    move-object v12, v0

    .line 653
    .local v12, "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    if-nez v12, :cond_9b

    .line 655
    :try_start_2c
    invoke-virtual/range {p6 .. p6}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfStreamAbsent()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 656
    iget-object v0, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    sget-object v2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v9, v2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 657
    monitor-exit v11

    return-void

    .line 661
    :cond_3b
    iget-object v0, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1700(Lcom/squareup/okhttp/internal/framed/FramedConnection;)I

    move-result v0

    if-gt v9, v0, :cond_45

    monitor-exit v11

    return-void

    .line 664
    :cond_45
    rem-int/lit8 v0, v9, 0x2

    iget-object v2, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1800(Lcom/squareup/okhttp/internal/framed/FramedConnection;)I

    move-result v2

    const/4 v13, 0x2

    rem-int/2addr v2, v13

    if-ne v0, v2, :cond_53

    monitor-exit v11

    return-void

    .line 668
    :cond_53
    new-instance v0, Lcom/squareup/okhttp/internal/framed/FramedStream;

    iget-object v4, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-object v2, v0

    move/from16 v3, p3

    move v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/squareup/okhttp/internal/framed/FramedStream;-><init>(ILcom/squareup/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V

    .line 670
    .local v0, "newStream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    iget-object v2, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v2, v9}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1702(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)I

    .line 671
    iget-object v2, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1900(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$1;

    const-string v4, "OkHttp %s stream %d"

    new-array v5, v13, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v7}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1100(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$1;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/framed/FramedStream;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 685
    monitor-exit v11

    return-void

    .line 687
    .end local v0    # "newStream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :catchall_96
    move-exception v0

    move-object/from16 v3, p6

    move-object v2, v12

    goto :goto_bb

    :cond_9b
    monitor-exit v11
    :try_end_9c
    .catchall {:try_start_2c .. :try_end_9c} :catchall_96

    .line 690
    invoke-virtual/range {p6 .. p6}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfStreamPresent()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 691
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v12, v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->closeLater(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 692
    iget-object v0, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, v9}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 693
    return-void

    .line 697
    :cond_ad
    move-object/from16 v3, p6

    invoke-virtual {v12, v10, v3}, Lcom/squareup/okhttp/internal/framed/FramedStream;->receiveHeaders(Ljava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    .line 698
    if-eqz v8, :cond_b7

    invoke-virtual {v12}, Lcom/squareup/okhttp/internal/framed/FramedStream;->receiveFin()V

    .line 699
    :cond_b7
    return-void

    .line 687
    .end local v12    # "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :catchall_b8
    move-exception v0

    move-object/from16 v3, p6

    .local v2, "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :goto_bb
    :try_start_bb
    monitor-exit v11
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_bd

    throw v0

    :catchall_bd
    move-exception v0

    goto :goto_bb
.end method

.method public ping(ZII)V
    .registers 7
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .line 764
    if-eqz p1, :cond_e

    .line 765
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2400(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)Lcom/squareup/okhttp/internal/framed/Ping;

    move-result-object v0

    .line 766
    .local v0, "ping":Lcom/squareup/okhttp/internal/framed/Ping;
    if-eqz v0, :cond_d

    .line 767
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/Ping;->receive()V

    .line 769
    .end local v0    # "ping":Lcom/squareup/okhttp/internal/framed/Ping;
    :cond_d
    goto :goto_15

    .line 771
    :cond_e
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, p3, v2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2500(Lcom/squareup/okhttp/internal/framed/FramedConnection;ZIILcom/squareup/okhttp/internal/framed/Ping;)V

    .line 773
    :goto_15
    return-void
.end method

.method public priority(IIIZ)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "streamDependency"    # I
    .param p3, "weight"    # I
    .param p4, "exclusive"    # Z

    .line 814
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .line 818
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0, p2, p3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2600(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILjava/util/List;)V

    .line 819
    return-void
.end method

.method public rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .registers 4
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 702
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1300(Lcom/squareup/okhttp/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 703
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2200(Lcom/squareup/okhttp/internal/framed/FramedConnection;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 704
    return-void

    .line 706
    :cond_e
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/squareup/okhttp/internal/framed/FramedStream;

    move-result-object v0

    .line 707
    .local v0, "rstStream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    if-eqz v0, :cond_19

    .line 708
    invoke-virtual {v0, p2}, Lcom/squareup/okhttp/internal/framed/FramedStream;->receiveRstStream(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 710
    :cond_19
    return-void
.end method

.method public settings(ZLcom/squareup/okhttp/internal/framed/Settings;)V
    .registers 15
    .param p1, "clearPrevious"    # Z
    .param p2, "newSettings"    # Lcom/squareup/okhttp/internal/framed/Settings;

    .line 713
    const-wide/16 v0, 0x0

    .line 714
    .local v0, "delta":J
    const/4 v2, 0x0

    .line 715
    .local v2, "streamsToNotify":[Lcom/squareup/okhttp/internal/framed/FramedStream;
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    monitor-enter v3

    .line 716
    :try_start_6
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    const/high16 v5, 0x10000

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v4

    .line 717
    .local v4, "priorWriteWindowSize":I
    if-eqz p1, :cond_19

    iget-object v6, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-object v6, v6, Lcom/squareup/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/framed/Settings;->clear()V

    .line 718
    :cond_19
    iget-object v6, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-object v6, v6, Lcom/squareup/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    invoke-virtual {v6, p2}, Lcom/squareup/okhttp/internal/framed/Settings;->merge(Lcom/squareup/okhttp/internal/framed/Settings;)V

    .line 719
    iget-object v6, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->getProtocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v6

    sget-object v7, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v6, v7, :cond_2d

    .line 720
    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->ackSettingsLater(Lcom/squareup/okhttp/internal/framed/Settings;)V

    .line 722
    :cond_2d
    iget-object v6, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-object v6, v6, Lcom/squareup/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    invoke-virtual {v6, v5}, Lcom/squareup/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v5

    .line 723
    .local v5, "peerInitialWindowSize":I
    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v5, v6, :cond_79

    if-eq v5, v4, :cond_79

    .line 724
    sub-int v6, v5, v4

    int-to-long v0, v6

    .line 725
    iget-object v6, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v6}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2300(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 726
    iget-object v6, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v6, v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->addBytesToWriteWindow(J)V

    .line 727
    iget-object v6, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v6, v7}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2302(Lcom/squareup/okhttp/internal/framed/FramedConnection;Z)Z

    .line 729
    :cond_50
    iget-object v6, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v6}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1900(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_79

    .line 730
    iget-object v6, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v6}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1900(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    iget-object v8, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v8}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1900(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    new-array v8, v8, [Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/squareup/okhttp/internal/framed/FramedStream;

    move-object v2, v6

    .line 733
    :cond_79
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v8, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$2;

    const-string v9, "OkHttp %s settings"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v10}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1100(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v7, v11

    invoke-direct {v8, p0, v9, v7}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$2;-><init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v6, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 738
    .end local v4    # "priorWriteWindowSize":I
    .end local v5    # "peerInitialWindowSize":I
    monitor-exit v3
    :try_end_93
    .catchall {:try_start_6 .. :try_end_93} :catchall_ac

    .line 739
    if-eqz v2, :cond_ab

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_ab

    .line 740
    array-length v3, v2

    :goto_9c
    if-ge v11, v3, :cond_ab

    aget-object v4, v2, v11

    .line 741
    .local v4, "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    monitor-enter v4

    .line 742
    :try_start_a1
    invoke-virtual {v4, v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedStream;->addBytesToWriteWindow(J)V

    .line 743
    monitor-exit v4

    .line 740
    .end local v4    # "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    add-int/lit8 v11, v11, 0x1

    goto :goto_9c

    .line 743
    .restart local v4    # "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :catchall_a8
    move-exception v3

    monitor-exit v4
    :try_end_aa
    .catchall {:try_start_a1 .. :try_end_aa} :catchall_a8

    throw v3

    .line 746
    .end local v4    # "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :cond_ab
    return-void

    .line 738
    :catchall_ac
    move-exception v4

    :try_start_ad
    monitor-exit v3
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v4
.end method

.method public windowUpdate(IJ)V
    .registers 9
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    .line 796
    if-nez p1, :cond_17

    .line 797
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    monitor-enter v0

    .line 798
    :try_start_5
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-wide v2, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    const/4 v4, 0x0

    add-long/2addr v2, p2

    iput-wide v2, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 799
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 800
    monitor-exit v0

    goto :goto_28

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 802
    :cond_17
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->getStream(I)Lcom/squareup/okhttp/internal/framed/FramedStream;

    move-result-object v0

    .line 803
    .local v0, "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    if-eqz v0, :cond_28

    .line 804
    monitor-enter v0

    .line 805
    :try_start_20
    invoke-virtual {v0, p2, p3}, Lcom/squareup/okhttp/internal/framed/FramedStream;->addBytesToWriteWindow(J)V

    .line 806
    monitor-exit v0

    goto :goto_28

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_25

    throw v1

    .line 809
    .end local v0    # "stream":Lcom/squareup/okhttp/internal/framed/FramedStream;
    :cond_28
    :goto_28
    return-void
.end method

###### Class com.squareup.okhttp.internal.framed.FramedConnection.Reader.AnonymousClass1 (com.squareup.okhttp.internal.framed.FramedConnection$Reader$1)
.class Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$1;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;

.field final synthetic val$newStream:Lcom/squareup/okhttp/internal/framed/FramedStream;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/framed/FramedStream;)V
    .registers 5
    .param p1, "this$1"    # Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 672
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$1;->this$1:Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$1;->val$newStream:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 6

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$1;->this$1:Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2000(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$1;->val$newStream:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;->onStream(Lcom/squareup/okhttp/internal/framed/FramedStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 682
    goto :goto_38

    .line 676
    :catch_e
    move-exception v0

    .line 677
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/squareup/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FramedConnection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$1;->this$1:Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$1100(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 679
    :try_start_2f
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$1;->val$newStream:Lcom/squareup/okhttp/internal/framed/FramedStream;

    sget-object v2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/framed/FramedStream;->close(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_36} :catch_37

    .line 681
    goto :goto_38

    .line 680
    :catch_37
    move-exception v1

    .line 683
    .end local v0    # "e":Ljava/io/IOException;
    :goto_38
    return-void
.end method

###### Class com.squareup.okhttp.internal.framed.FramedConnection.Reader.AnonymousClass2 (com.squareup.okhttp.internal.framed.FramedConnection$Reader$2)
.class Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$2;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->settings(ZLcom/squareup/okhttp/internal/framed/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "this$1"    # Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 733
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$2;->this$1:Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 3

    .line 735
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$2;->this$1:Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->access$2000(Lcom/squareup/okhttp/internal/framed/FramedConnection;)Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$2;->this$1:Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection$Listener;->onSettings(Lcom/squareup/okhttp/internal/framed/FramedConnection;)V

    .line 736
    return-void
.end method

###### Class com.squareup.okhttp.internal.framed.FramedConnection.Reader.AnonymousClass3 (com.squareup.okhttp.internal.framed.FramedConnection$Reader$3)
.class Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$3;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->ackSettingsLater(Lcom/squareup/okhttp/internal/framed/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;

.field final synthetic val$peerSettings:Lcom/squareup/okhttp/internal/framed/Settings;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/framed/Settings;)V
    .registers 5
    .param p1, "this$1"    # Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 749
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$3;->this$1:Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$3;->val$peerSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 3

    .line 752
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$3;->this$1:Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedConnection$Reader$3;->val$peerSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->ackSettings(Lcom/squareup/okhttp/internal/framed/Settings;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 754
    goto :goto_d

    .line 753
    :catch_c
    move-exception v0

    .line 755
    :goto_d
    return-void
.end method
