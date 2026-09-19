###### Class com.huxq17.download.core.DownloadInfoManager (com.huxq17.download.core.DownloadInfoManager)
.class public Lcom/huxq17/download/core/DownloadInfoManager;
.super Ljava/lang/Object;
.source "DownloadInfoManager.java"


# static fields
.field private static instance:Lcom/huxq17/download/core/DownloadInfoManager;


# instance fields
.field private downloadInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/huxq17/download/core/DownloadDetailsInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/huxq17/download/core/DownloadInfoManager;

    invoke-direct {v0}, Lcom/huxq17/download/core/DownloadInfoManager;-><init>()V

    sput-object v0, Lcom/huxq17/download/core/DownloadInfoManager;->instance:Lcom/huxq17/download/core/DownloadInfoManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadInfoManager;->downloadInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/huxq17/download/core/DownloadInfoManager;
    .registers 1

    .line 18
    sget-object v0, Lcom/huxq17/download/core/DownloadInfoManager;->instance:Lcom/huxq17/download/core/DownloadInfoManager;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfoManager;->downloadInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 35
    return-void
.end method

.method public createDownloadInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/huxq17/download/core/DownloadDetailsInfo;
    .registers 15
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;
    .param p5, "createTime"    # J

    .line 38
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/huxq17/download/core/DownloadInfoManager;->createDownloadInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v0

    return-object v0
.end method

.method public createDownloadInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Lcom/huxq17/download/core/DownloadDetailsInfo;
    .registers 19
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;
    .param p5, "createTime"    # J
    .param p7, "addInMap"    # Z

    .line 42
    move-object v0, p0

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_36

    .line 45
    if-eqz p4, :cond_14

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_12

    goto :goto_14

    .line 48
    :cond_12
    move-object v8, p4

    goto :goto_16

    .line 46
    :cond_14
    :goto_14
    move-object v1, p1

    .line 48
    move-object v8, v1

    .end local p4    # "id":Ljava/lang/String;
    .local v8, "id":Ljava/lang/String;
    :goto_16
    iget-object v1, v0, Lcom/huxq17/download/core/DownloadInfoManager;->downloadInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 49
    .local v9, "downloadInfo":Lcom/huxq17/download/core/DownloadDetailsInfo;
    if-eqz v9, :cond_22

    .line 50
    return-object v9

    .line 52
    :cond_22
    new-instance v10, Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v8

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/huxq17/download/core/DownloadDetailsInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 53
    .end local v9    # "downloadInfo":Lcom/huxq17/download/core/DownloadDetailsInfo;
    .local v1, "downloadInfo":Lcom/huxq17/download/core/DownloadDetailsInfo;
    if-eqz p7, :cond_35

    .line 54
    iget-object v3, v0, Lcom/huxq17/download/core/DownloadInfoManager;->downloadInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v8, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_35
    return-object v1

    .line 43
    .end local v1    # "downloadInfo":Lcom/huxq17/download/core/DownloadDetailsInfo;
    .end local v8    # "id":Ljava/lang/String;
    .restart local p4    # "id":Ljava/lang/String;
    :cond_36
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "url==null or url.length()==0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public createInfoByCursor(Landroid/database/Cursor;)Lcom/huxq17/download/core/DownloadDetailsInfo;
    .registers 12
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 61
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/huxq17/download/core/DownloadInfoManager;->downloadInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 63
    .local v8, "info":Lcom/huxq17/download/core/DownloadDetailsInfo;
    if-nez v8, :cond_4c

    .line 64
    new-instance v9, Lcom/huxq17/download/core/DownloadDetailsInfo;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x6

    .line 65
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object v1, v9

    move-object v5, v0

    invoke-direct/range {v1 .. v7}, Lcom/huxq17/download/core/DownloadDetailsInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v8, v9

    .line 66
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setThreadNum(I)V

    .line 67
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setContentLength(J)V

    .line 68
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    invoke-virtual {v8, v1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setFinished(I)V

    .line 69
    invoke-virtual {v8}, Lcom/huxq17/download/core/DownloadDetailsInfo;->calculateDownloadProgress()V

    .line 70
    iget-object v1, p0, Lcom/huxq17/download/core/DownloadInfoManager;->downloadInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_4c
    return-object v8
.end method

.method public get(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadDetailsInfo;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfoManager;->downloadInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/DownloadDetailsInfo;

    return-object v0
.end method

.method public getAll()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/huxq17/download/core/DownloadDetailsInfo;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfoManager;->downloadInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadDetailsInfo;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfoManager;->downloadInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/DownloadDetailsInfo;

    return-object v0
.end method
