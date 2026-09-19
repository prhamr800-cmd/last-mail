###### Class com.squareup.okhttp.internal.framed.FramedStream (com.squareup.okhttp.internal.framed.FramedStream)
.class public final Lcom/squareup/okhttp/internal/framed/FramedStream;
.super Ljava/lang/Object;
.source "FramedStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;,
        Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;,
        Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bytesLeftInWriteWindow:J

.field private final connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

.field private errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

.field private final id:I

.field private final readTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

.field private final requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field final sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

.field private final source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

.field unacknowledgedBytesRead:J

.field private final writeTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 35
    return-void
.end method

.method constructor <init>(ILcom/squareup/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V
    .registers 11
    .param p1, "id"    # I
    .param p2, "connection"    # Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .param p3, "outFinished"    # Z
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/squareup/okhttp/internal/framed/FramedConnection;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p5, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 66
    new-instance v0, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;-><init>(Lcom/squareup/okhttp/internal/framed/FramedStream;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    .line 67
    new-instance v0, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;-><init>(Lcom/squareup/okhttp/internal/framed/FramedStream;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 78
    if-eqz p2, :cond_55

    .line 79
    if-eqz p5, :cond_4d

    .line 80
    iput p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    .line 81
    iput-object p2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    .line 82
    iget-object v1, p2, Lcom/squareup/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    .line 83
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v1

    int-to-long v3, v1

    iput-wide v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    .line 84
    new-instance v1, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    iget-object v3, p2, Lcom/squareup/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    .line 85
    invoke-virtual {v3, v2}, Lcom/squareup/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;-><init>(Lcom/squareup/okhttp/internal/framed/FramedStream;JLcom/squareup/okhttp/internal/framed/FramedStream$1;)V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    .line 86
    new-instance v0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;-><init>(Lcom/squareup/okhttp/internal/framed/FramedStream;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    .line 87
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0, p4}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->access$102(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;Z)Z

    .line 88
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0, p3}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->access$202(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;Z)Z

    .line 89
    iput-object p5, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->requestHeaders:Ljava/util/List;

    .line 90
    return-void

    .line 79
    :cond_4d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1000(Lcom/squareup/okhttp/internal/framed/FramedStream;)V
    .registers 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->cancelStreamIfNecessary()V

    return-void
.end method

.method static synthetic access$1100(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 35
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/squareup/okhttp/internal/framed/FramedStream;)V
    .registers 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->checkOutNotClosed()V

    return-void
.end method

.method static synthetic access$500(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 35
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    return-object v0
.end method

.method static synthetic access$600(Lcom/squareup/okhttp/internal/framed/FramedStream;)I
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 35
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    return v0
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 35
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 35
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    return-object v0
.end method

.method static synthetic access$900(Lcom/squareup/okhttp/internal/framed/FramedStream;)V
    .registers 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->waitForIo()V

    return-void
.end method

.method private cancelStreamIfNecessary()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    nop

    .line 451
    monitor-enter p0

    .line 452
    const/4 v0, 0x0

    :try_start_3
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->access$100(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->access$300(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->access$200(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->access$400(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_43

    if-eqz v1, :cond_25

    :cond_23
    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    .line 453
    .local v1, "cancel":Z
    :goto_26
    :try_start_26
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->isOpen()Z

    move-result v2

    move v0, v2

    .line 454
    .local v0, "open":Z
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_3e

    .line 455
    if-eqz v1, :cond_34

    .line 460
    sget-object v2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/framed/FramedStream;->close(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    goto :goto_3d

    .line 461
    :cond_34
    if-nez v0, :cond_3d

    .line 462
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 464
    :cond_3d
    :goto_3d
    return-void

    .line 454
    .end local v0    # "open":Z
    :catchall_3e
    move-exception v2

    move-object v4, v2

    move v2, v1

    move-object v1, v4

    goto :goto_45

    .end local v1    # "cancel":Z
    :catchall_43
    move-exception v1

    const/4 v2, 0x0

    .restart local v0    # "open":Z
    .local v2, "cancel":Z
    :goto_45
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_47

    throw v1

    :catchall_47
    move-exception v1

    goto :goto_45
.end method

.method private checkOutNotClosed()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->access$400(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 575
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->access$200(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 577
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_15

    .line 580
    return-void

    .line 578
    :cond_15
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_2e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_36
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private closeInternal(Lcom/squareup/okhttp/internal/framed/ErrorCode;)Z
    .registers 4
    .param p1, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 238
    nop

    .line 239
    monitor-enter p0

    .line 240
    :try_start_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 241
    monitor-exit p0

    return v1

    .line 243
    :cond_9
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->access$100(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->access$200(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 244
    monitor-exit p0

    return v1

    .line 246
    :cond_1b
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 248
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_2a

    .line 249
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 250
    const/4 v0, 0x1

    return v0

    .line 248
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method private waitForIo()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 588
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_5

    .line 591
    nop

    .line 592
    return-void

    .line 589
    :catch_5
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .registers 6
    .param p1, "delta"    # J

    .line 568
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    .line 569
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 570
    :cond_e
    return-void
.end method

.method public close(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .registers 4
    .param p1, "rstStatusCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/FramedStream;->closeInternal(Lcom/squareup/okhttp/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 220
    return-void

    .line 222
    :cond_7
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->writeSynReset(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 223
    return-void
.end method

.method public closeLater(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .registers 4
    .param p1, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 230
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/FramedStream;->closeInternal(Lcom/squareup/okhttp/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 231
    return-void

    .line 233
    :cond_7
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 234
    return-void
.end method

.method public getConnection()Lcom/squareup/okhttp/internal/framed/FramedConnection;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    return-object v0
.end method

.method public declared-synchronized getErrorCode()Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .registers 2

    monitor-enter p0

    .line 154
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()I
    .registers 2

    .line 93
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    return v0
.end method

.method public getRequestHeaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->requestHeaders:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getResponseHeaders()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 137
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->enter()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_40

    .line 139
    :goto_6
    :try_start_6
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_12

    .line 140
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->waitForIo()V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_39

    goto :goto_6

    .line 143
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 144
    nop

    .line 145
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_40

    monitor-exit p0

    return-object v0

    .line 146
    :cond_20
    :try_start_20
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :catchall_39
    move-exception v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0
    :try_end_40
    .catchall {:try_start_20 .. :try_end_40} :catchall_40

    .line 136
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSink()Lokio/Sink;
    .registers 3

    .line 206
    monitor-enter p0

    .line 207
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_14

    .line 208
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_14
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    .line 211
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    return-object v0

    .line 210
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getSource()Lokio/Source;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    return-object v0
.end method

.method public isLocallyInitiated()Z
    .registers 5

    .line 120
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 121
    .local v0, "streamIsClient":Z
    :goto_a
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget-boolean v3, v3, Lcom/squareup/okhttp/internal/framed/FramedConnection;->client:Z

    if-ne v3, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public declared-synchronized isOpen()Z
    .registers 3

    monitor-enter p0

    .line 107
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_31

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 108
    monitor-exit p0

    return v1

    .line 110
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->access$100(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->access$300(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_18
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    .line 111
    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->access$200(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->access$400(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_28
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_31

    if-eqz v0, :cond_2e

    .line 113
    monitor-exit p0

    return v1

    .line 115
    :cond_2e
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 106
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readTimeout()Lokio/Timeout;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method receiveData(Lokio/BufferedSource;I)V
    .registers 6
    .param p1, "in"    # Lokio/BufferedSource;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    nop

    .line 286
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->receive(Lokio/BufferedSource;J)V

    .line 287
    return-void
.end method

.method receiveFin()V
    .registers 4

    .line 290
    nop

    .line 292
    monitor-enter p0

    .line 293
    const/4 v0, 0x0

    :try_start_3
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->source:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->access$102(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;Z)Z

    .line 294
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->isOpen()Z

    move-result v1

    move v0, v1

    .line 295
    .local v0, "open":Z
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 296
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1c

    .line 297
    if-nez v0, :cond_1b

    .line 298
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget v2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 300
    :cond_1b
    return-void

    .line 296
    .end local v0    # "open":Z
    :catchall_1c
    move-exception v1

    .restart local v0    # "open":Z
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method receiveHeaders(Ljava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V
    .registers 7
    .param p2, "headersMode"    # Lcom/squareup/okhttp/internal/framed/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;",
            "Lcom/squareup/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .line 254
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    nop

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    const/4 v1, 0x1

    .line 257
    .local v1, "open":Z
    monitor-enter p0

    .line 258
    :try_start_4
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v2, :cond_1d

    .line 259
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfHeadersAbsent()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 260
    sget-object v2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-object v0, v2

    goto :goto_36

    .line 262
    :cond_12
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    .line 263
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->isOpen()Z

    move-result v2

    move v1, v2

    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_36

    .line 267
    :cond_1d
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfHeadersPresent()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 268
    sget-object v2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->STREAM_IN_USE:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-object v0, v2

    goto :goto_36

    .line 270
    :cond_27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v2, "newHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 273
    iput-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    .line 276
    .end local v2    # "newHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    :goto_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_47

    .line 277
    if-eqz v0, :cond_3d

    .line 278
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->closeLater(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    goto :goto_46

    .line 279
    :cond_3d
    if-nez v1, :cond_46

    .line 280
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 282
    :cond_46
    :goto_46
    return-void

    .line 276
    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v2
.end method

.method declared-synchronized receiveRstStream(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .registers 3
    .param p1, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;

    monitor-enter p0

    .line 303
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_a

    .line 304
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 307
    :cond_a
    monitor-exit p0

    return-void

    .line 302
    .end local p1    # "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reply(Ljava/util/List;Z)V
    .registers 6
    .param p2, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    .local p1, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    nop

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "outFinished":Z
    monitor-enter p0

    .line 167
    if-eqz p1, :cond_2c

    .line 170
    :try_start_5
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v1, :cond_24

    .line 173
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    .line 174
    if-nez p2, :cond_14

    .line 175
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->access$202(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;Z)Z

    .line 176
    const/4 v0, 0x1

    .line 178
    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_34

    .line 179
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    iget v2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v1, v2, v0, p1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->writeSynReply(IZLjava/util/List;)V

    .line 181
    if-eqz v0, :cond_23

    .line 182
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->connection:Lcom/squareup/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->flush()V

    .line 184
    :cond_23
    return-void

    .line 171
    :cond_24
    :try_start_24
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "reply already sent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_2c
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "responseHeaders == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :catchall_34
    move-exception v1

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public writeTimeout()Lokio/Timeout;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

###### Class com.squareup.okhttp.internal.framed.FramedStream.AnonymousClass1 (com.squareup.okhttp.internal.framed.FramedStream$1)
.class synthetic Lcom/squareup/okhttp/internal/framed/FramedStream$1;
.super Ljava/lang/Object;
.source "FramedStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/FramedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.squareup.okhttp.internal.framed.FramedStream.FramedDataSink (com.squareup.okhttp.internal.framed.FramedStream$FramedDataSink)
.class final Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;
.super Ljava/lang/Object;
.source "FramedStream.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/FramedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FramedDataSink"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMIT_BUFFER_SIZE:J = 0x4000L


# instance fields
.field private closed:Z

.field private finished:Z

.field private final sendBuffer:Lokio/Buffer;

.field final synthetic this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 470
    const-class v0, Lcom/squareup/okhttp/internal/framed/FramedStream;

    return-void
.end method

.method constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedStream;)V
    .registers 3
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 470
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    return-void
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    .line 470
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z

    return v0
.end method

.method static synthetic access$202(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;
    .param p1, "x1"    # Z

    .line 470
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z

    return p1
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    .line 470
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z

    return v0
.end method

.method private emitDataFrame(Z)V
    .registers 13
    .param p1, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    monitor-enter v0

    .line 502
    const-wide/16 v1, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1100(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->enter()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_a0

    .line 504
    :goto_e
    :try_start_e
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    iget-wide v3, v3, Lcom/squareup/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_2c

    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z

    if-nez v3, :cond_2c

    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z

    if-nez v3, :cond_2c

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$800(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v3

    if-nez v3, :cond_2c

    .line 505
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$900(Lcom/squareup/okhttp/internal/framed/FramedStream;)V
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_95

    goto :goto_e

    .line 508
    :cond_2c
    :try_start_2c
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1100(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 509
    nop

    .line 511
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1200(Lcom/squareup/okhttp/internal/framed/FramedStream;)V

    .line 512
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    iget-wide v3, v3, Lcom/squareup/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    iget-object v5, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    move-wide v1, v3

    .line 513
    .local v1, "toWrite":J
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    iget-wide v4, v3, Lcom/squareup/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    const/4 v6, 0x0

    sub-long/2addr v4, v1

    iput-wide v4, v3, Lcom/squareup/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    .line 514
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_2c .. :try_end_53} :catchall_a0

    .line 516
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1100(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->enter()V

    .line 518
    :try_start_5c
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$500(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$600(Lcom/squareup/okhttp/internal/framed/FramedStream;)I

    move-result v6

    if-eqz p1, :cond_77

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-nez v0, :cond_77

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_79

    :cond_77
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_79
    iget-object v8, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    move-wide v9, v1

    invoke-virtual/range {v5 .. v10}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->writeData(IZLokio/Buffer;J)V
    :try_end_7f
    .catchall {:try_start_5c .. :try_end_7f} :catchall_8a

    .line 520
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1100(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 521
    nop

    .line 522
    return-void

    .line 520
    :catchall_8a
    move-exception v0

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1100(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0

    .line 508
    .end local v1    # "toWrite":J
    :catchall_95
    move-exception v3

    :try_start_96
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1100(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v3

    .line 514
    :catchall_a0
    move-exception v3

    .restart local v1    # "toWrite":J
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_96 .. :try_end_a2} :catchall_a0

    throw v3
.end method


# virtual methods
.method public close()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    nop

    .line 541
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    monitor-enter v0

    .line 542
    :try_start_4
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z

    if-eqz v1, :cond_a

    monitor-exit v0

    return-void

    .line 543
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_59

    .line 544
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/framed/FramedStream;->sink:Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;

    iget-boolean v0, v0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z

    const/4 v1, 0x1

    if-nez v0, :cond_41

    .line 546
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2e

    .line 547
    :goto_20
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_41

    .line 548
    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    goto :goto_20

    .line 552
    :cond_2e
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$500(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$600(Lcom/squareup/okhttp/internal/framed/FramedStream;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->writeData(IZLokio/Buffer;J)V

    .line 555
    :cond_41
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    monitor-enter v2

    .line 556
    :try_start_44
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z

    .line 557
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_56

    .line 558
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$500(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->flush()V

    .line 559
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1000(Lcom/squareup/okhttp/internal/framed/FramedStream;)V

    .line 560
    return-void

    .line 557
    :catchall_56
    move-exception v0

    :try_start_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v0

    .line 543
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public flush()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    nop

    .line 526
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    monitor-enter v0

    .line 527
    :try_start_4
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1200(Lcom/squareup/okhttp/internal/framed/FramedStream;)V

    .line 528
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_25

    .line 529
    :goto_a
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_24

    .line 530
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    .line 531
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$500(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->flush()V

    goto :goto_a

    .line 533
    :cond_24
    return-void

    .line 528
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 536
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1100(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 9
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    nop

    .line 489
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 490
    :goto_6
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->sendBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_17

    .line 491
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSink;->emitDataFrame(Z)V

    goto :goto_6

    .line 493
    :cond_17
    return-void
.end method

###### Class com.squareup.okhttp.internal.framed.FramedStream.FramedDataSource (com.squareup.okhttp.internal.framed.FramedStream$FramedDataSource)
.class final Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;
.super Ljava/lang/Object;
.source "FramedStream.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/FramedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FramedDataSource"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private closed:Z

.field private finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Lokio/Buffer;

.field private final receiveBuffer:Lokio/Buffer;

.field final synthetic this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 314
    const-class v0, Lcom/squareup/okhttp/internal/framed/FramedStream;

    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedStream;J)V
    .registers 4
    .param p2, "maxByteCount"    # J

    .line 333
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lokio/Buffer;

    .line 319
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    .line 334
    iput-wide p2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->maxByteCount:J

    .line 335
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedStream;JLcom/squareup/okhttp/internal/framed/FramedStream$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lcom/squareup/okhttp/internal/framed/FramedStream$1;

    .line 314
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;-><init>(Lcom/squareup/okhttp/internal/framed/FramedStream;J)V

    return-void
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    .line 314
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z

    return v0
.end method

.method static synthetic access$102(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;
    .param p1, "x1"    # Z

    .line 314
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z

    return p1
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;

    .line 314
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z

    return v0
.end method

.method private checkNotClosed()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z

    if-nez v0, :cond_2a

    .line 441
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$800(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_d

    .line 444
    return-void

    .line 442
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$800(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_2a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private waitUntilReadable()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$700(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->enter()V

    .line 376
    :goto_9
    :try_start_9
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2b

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$800(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 377
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$900(Lcom/squareup/okhttp/internal/framed/FramedStream;)V
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_36

    goto :goto_9

    .line 380
    :cond_2b
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$700(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 381
    nop

    .line 382
    return-void

    .line 380
    :catchall_36
    move-exception v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$700(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    monitor-enter v0

    .line 430
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z

    .line 431
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->clear()V

    .line 432
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 433
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_17

    .line 434
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$1000(Lcom/squareup/okhttp/internal/framed/FramedStream;)V

    .line 435
    return-void

    .line 433
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public read(Lokio/Buffer;J)J
    .registers 19
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    move-object v1, p0

    move-wide/from16 v2, p2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_c2

    .line 342
    iget-object v6, v1, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    monitor-enter v6

    .line 343
    :try_start_c
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->waitUntilReadable()V

    .line 344
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->checkNotClosed()V

    .line 345
    iget-object v0, v1, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v7

    cmp-long v0, v7, v4

    if-nez v0, :cond_20

    const-wide/16 v7, -0x1

    monitor-exit v6

    return-wide v7

    .line 348
    :cond_20
    iget-object v0, v1, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    iget-object v7, v1, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_bb

    move-object/from16 v9, p1

    :try_start_2e
    invoke-virtual {v0, v9, v7, v8}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v7
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_c0

    .line 351
    .local v7, "read":J
    :try_start_32
    iget-object v0, v1, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    iget-wide v10, v0, Lcom/squareup/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    const/4 v12, 0x0

    add-long/2addr v10, v7

    iput-wide v10, v0, Lcom/squareup/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 352
    iget-object v0, v1, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    iget-wide v10, v0, Lcom/squareup/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    iget-object v0, v1, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 353
    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$500(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    const/high16 v12, 0x10000

    invoke-virtual {v0, v12}, Lcom/squareup/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-long v13, v0

    cmp-long v0, v10, v13

    if-ltz v0, :cond_6a

    .line 354
    iget-object v0, v1, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$500(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    iget-object v10, v1, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v10}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$600(Lcom/squareup/okhttp/internal/framed/FramedStream;)I

    move-result v10

    iget-object v11, v1, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    iget-wide v13, v11, Lcom/squareup/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    invoke-virtual {v0, v10, v13, v14}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->writeWindowUpdateLater(IJ)V

    .line 355
    iget-object v0, v1, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    iput-wide v4, v0, Lcom/squareup/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 357
    :cond_6a
    monitor-exit v6
    :try_end_6b
    .catchall {:try_start_32 .. :try_end_6b} :catchall_b8

    .line 360
    iget-object v0, v1, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$500(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v10

    monitor-enter v10

    .line 361
    :try_start_72
    iget-object v0, v1, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$500(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    iget-wide v13, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    const/4 v6, 0x0

    add-long/2addr v13, v7

    iput-wide v13, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 362
    iget-object v0, v1, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$500(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    iget-wide v13, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    iget-object v0, v1, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 363
    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$500(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/squareup/okhttp/internal/framed/Settings;

    invoke-virtual {v0, v12}, Lcom/squareup/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-long v11, v0

    cmp-long v0, v13, v11

    if-ltz v0, :cond_b3

    .line 364
    iget-object v0, v1, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$500(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    const/4 v6, 0x0

    iget-object v11, v1, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v11}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$500(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v11

    iget-wide v11, v11, Lcom/squareup/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    invoke-virtual {v0, v6, v11, v12}, Lcom/squareup/okhttp/internal/framed/FramedConnection;->writeWindowUpdateLater(IJ)V

    .line 365
    iget-object v0, v1, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$500(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    iput-wide v4, v0, Lcom/squareup/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 367
    :cond_b3
    monitor-exit v10

    .line 369
    return-wide v7

    .line 367
    :catchall_b5
    move-exception v0

    monitor-exit v10
    :try_end_b7
    .catchall {:try_start_72 .. :try_end_b7} :catchall_b5

    throw v0

    .line 357
    :catchall_b8
    move-exception v0

    move-wide v4, v7

    goto :goto_be

    .end local v7    # "read":J
    :catchall_bb
    move-exception v0

    move-object/from16 v9, p1

    .local v4, "read":J
    :goto_be
    :try_start_be
    monitor-exit v6
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_c0

    throw v0

    :catchall_c0
    move-exception v0

    goto :goto_be

    .line 339
    .end local v4    # "read":J
    :cond_c2
    move-object/from16 v9, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteCount < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method receive(Lokio/BufferedSource;J)V
    .registers 16
    .param p1, "in"    # Lokio/BufferedSource;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    nop

    .line 387
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v1, "flowControlError":Z
    .local v2, "finished":Z
    :goto_4
    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-lez v5, :cond_76

    .line 390
    iget-object v5, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    monitor-enter v5

    .line 391
    :try_start_d
    iget-boolean v6, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z

    .end local v2    # "finished":Z
    move v2, v6

    .line 392
    .restart local v2    # "finished":Z
    iget-object v6, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    const/4 v8, 0x0

    add-long/2addr v6, p2

    iget-wide v8, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->maxByteCount:J
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_73

    .end local v1    # "flowControlError":Z
    const/4 v1, 0x1

    cmp-long v10, v6, v8

    if-lez v10, :cond_21

    const/4 v6, 0x1

    goto :goto_22

    :cond_21
    const/4 v6, 0x0

    .line 393
    .local v6, "flowControlError":Z
    :goto_22
    :try_start_22
    monitor-exit v5
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_70

    .line 396
    if-eqz v6, :cond_30

    .line 397
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    .line 398
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedStream;->closeLater(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 399
    return-void

    .line 403
    :cond_30
    if-eqz v2, :cond_36

    .line 404
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    .line 405
    return-void

    .line 409
    :cond_36
    iget-object v5, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lokio/Buffer;

    invoke-interface {p1, v5, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v7

    .line 410
    .local v7, "read":J
    const-wide/16 v9, -0x1

    cmp-long v5, v7, v9

    if-eqz v5, :cond_6a

    .line 411
    sub-long v9, p2, v7

    .line 414
    .end local p2    # "byteCount":J
    .local v9, "byteCount":J
    iget-object v5, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    monitor-enter v5

    .line 415
    :try_start_47
    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {p2}, Lokio/Buffer;->size()J

    move-result-wide p2

    cmp-long v11, p2, v3

    if-nez v11, :cond_52

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    :goto_53
    move p2, v1

    .line 416
    .local p2, "wasEmpty":Z
    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lokio/Buffer;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {p3, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 417
    if-eqz p2, :cond_62

    .line 418
    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 420
    .end local p2    # "wasEmpty":Z
    :cond_62
    monitor-exit v5

    .line 421
    .end local v7    # "read":J
    nop

    .line 387
    move v1, v6

    move-wide p2, v9

    goto :goto_4

    .line 420
    .restart local v7    # "read":J
    :catchall_67
    move-exception p2

    monitor-exit v5
    :try_end_69
    .catchall {:try_start_47 .. :try_end_69} :catchall_67

    throw p2

    .line 410
    .end local v9    # "byteCount":J
    .local p2, "byteCount":J
    :cond_6a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 393
    .end local v7    # "read":J
    :catchall_70
    move-exception v0

    move v1, v6

    goto :goto_74

    .end local v6    # "flowControlError":Z
    .restart local v1    # "flowControlError":Z
    :catchall_73
    move-exception v0

    :goto_74
    :try_start_74
    monitor-exit v5
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v0

    .line 422
    .end local v1    # "flowControlError":Z
    .end local v2    # "finished":Z
    :cond_76
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 425
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/FramedStream;->access$700(Lcom/squareup/okhttp/internal/framed/FramedStream;)Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    return-object v0
.end method

###### Class com.squareup.okhttp.internal.framed.FramedStream.StreamTimeout (com.squareup.okhttp.internal.framed.FramedStream$StreamTimeout)
.class Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;
.super Lokio/AsyncTimeout;
.source "FramedStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/FramedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamTimeout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/framed/FramedStream;)V
    .registers 2
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/framed/FramedStream;

    .line 599
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    invoke-direct {p0}, Lokio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method public exitAndThrowIfTimedOut()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_7

    .line 614
    return-void

    .line 613
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .param p1, "cause"    # Ljava/io/IOException;

    .line 605
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string/jumbo v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 606
    .local v0, "socketTimeoutException":Ljava/net/SocketTimeoutException;
    if-eqz p1, :cond_d

    .line 607
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 609
    :cond_d
    return-object v0
.end method

.method protected timedOut()V
    .registers 3

    .line 601
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/FramedStream$StreamTimeout;->this$0:Lcom/squareup/okhttp/internal/framed/FramedStream;

    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/FramedStream;->closeLater(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 602
    return-void
.end method
