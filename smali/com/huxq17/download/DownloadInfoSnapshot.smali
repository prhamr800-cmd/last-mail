###### Class com.huxq17.download.DownloadInfoSnapshot (com.huxq17.download.DownloadInfoSnapshot)
.class public Lcom/huxq17/download/DownloadInfoSnapshot;
.super Ljava/lang/Object;
.source "DownloadInfoSnapshot.java"


# static fields
.field private static sPool:Lcom/huxq17/download/DownloadInfoSnapshot;

.field private static sPoolSize:I


# instance fields
.field public completedSize:J

.field public downloadInfo:Lcom/huxq17/download/core/DownloadInfo;

.field private next:Lcom/huxq17/download/DownloadInfoSnapshot;

.field public status:Lcom/huxq17/download/core/DownloadInfo$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const/4 v0, 0x0

    sput v0, Lcom/huxq17/download/DownloadInfoSnapshot;->sPoolSize:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPoolSize()I
    .registers 1

    .line 50
    sget v0, Lcom/huxq17/download/DownloadInfoSnapshot;->sPoolSize:I

    return v0
.end method

.method public static obtain()Lcom/huxq17/download/DownloadInfoSnapshot;
    .registers 3

    .line 15
    const-class v0, Lcom/huxq17/download/DownloadInfoSnapshot;

    monitor-enter v0

    .line 16
    :try_start_3
    sget-object v1, Lcom/huxq17/download/DownloadInfoSnapshot;->sPool:Lcom/huxq17/download/DownloadInfoSnapshot;

    if-eqz v1, :cond_18

    .line 17
    sget-object v1, Lcom/huxq17/download/DownloadInfoSnapshot;->sPool:Lcom/huxq17/download/DownloadInfoSnapshot;

    .line 18
    .local v1, "snapshot":Lcom/huxq17/download/DownloadInfoSnapshot;
    iget-object v2, v1, Lcom/huxq17/download/DownloadInfoSnapshot;->next:Lcom/huxq17/download/DownloadInfoSnapshot;

    sput-object v2, Lcom/huxq17/download/DownloadInfoSnapshot;->sPool:Lcom/huxq17/download/DownloadInfoSnapshot;

    .line 19
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/huxq17/download/DownloadInfoSnapshot;->next:Lcom/huxq17/download/DownloadInfoSnapshot;

    .line 20
    sget v2, Lcom/huxq17/download/DownloadInfoSnapshot;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/huxq17/download/DownloadInfoSnapshot;->sPoolSize:I

    .line 21
    monitor-exit v0

    return-object v1

    .line 23
    .end local v1    # "snapshot":Lcom/huxq17/download/DownloadInfoSnapshot;
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1f

    .line 24
    new-instance v0, Lcom/huxq17/download/DownloadInfoSnapshot;

    invoke-direct {v0}, Lcom/huxq17/download/DownloadInfoSnapshot;-><init>()V

    return-object v0

    .line 23
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public static release()V
    .registers 3

    .line 39
    const-class v0, Lcom/huxq17/download/DownloadInfoSnapshot;

    monitor-enter v0

    .line 40
    :goto_3
    :try_start_3
    sget-object v1, Lcom/huxq17/download/DownloadInfoSnapshot;->sPool:Lcom/huxq17/download/DownloadInfoSnapshot;

    if-eqz v1, :cond_17

    .line 41
    sget-object v1, Lcom/huxq17/download/DownloadInfoSnapshot;->sPool:Lcom/huxq17/download/DownloadInfoSnapshot;

    .line 42
    .local v1, "snapshot":Lcom/huxq17/download/DownloadInfoSnapshot;
    iget-object v2, v1, Lcom/huxq17/download/DownloadInfoSnapshot;->next:Lcom/huxq17/download/DownloadInfoSnapshot;

    sput-object v2, Lcom/huxq17/download/DownloadInfoSnapshot;->sPool:Lcom/huxq17/download/DownloadInfoSnapshot;

    .line 43
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/huxq17/download/DownloadInfoSnapshot;->next:Lcom/huxq17/download/DownloadInfoSnapshot;

    .line 44
    sget v2, Lcom/huxq17/download/DownloadInfoSnapshot;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/huxq17/download/DownloadInfoSnapshot;->sPoolSize:I

    .line 45
    .end local v1    # "snapshot":Lcom/huxq17/download/DownloadInfoSnapshot;
    goto :goto_3

    .line 46
    :cond_17
    monitor-exit v0

    .line 47
    return-void

    .line 46
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method


# virtual methods
.method public recycle()V
    .registers 3

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huxq17/download/DownloadInfoSnapshot;->completedSize:J

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huxq17/download/DownloadInfoSnapshot;->status:Lcom/huxq17/download/core/DownloadInfo$Status;

    .line 30
    iput-object v0, p0, Lcom/huxq17/download/DownloadInfoSnapshot;->downloadInfo:Lcom/huxq17/download/core/DownloadInfo;

    .line 31
    const-class v0, Lcom/huxq17/download/DownloadInfoSnapshot;

    monitor-enter v0

    .line 32
    :try_start_c
    sget-object v1, Lcom/huxq17/download/DownloadInfoSnapshot;->sPool:Lcom/huxq17/download/DownloadInfoSnapshot;

    iput-object v1, p0, Lcom/huxq17/download/DownloadInfoSnapshot;->next:Lcom/huxq17/download/DownloadInfoSnapshot;

    .line 33
    sput-object p0, Lcom/huxq17/download/DownloadInfoSnapshot;->sPool:Lcom/huxq17/download/DownloadInfoSnapshot;

    .line 34
    sget v1, Lcom/huxq17/download/DownloadInfoSnapshot;->sPoolSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/huxq17/download/DownloadInfoSnapshot;->sPoolSize:I

    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 35
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_1a

    throw v1
.end method
