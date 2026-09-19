###### Class com.huxq17.download.db.DBService (com.huxq17.download.db.DBService)
.class public Lcom/huxq17/download/db/DBService;
.super Ljava/lang/Object;
.source "DBService.java"


# static fields
.field private static instance:Lcom/huxq17/download/db/DBService;


# instance fields
.field private downloadInfoManager:Lcom/huxq17/download/core/DownloadInfoManager;

.field private helper:Lcom/huxq17/download/db/DBOpenHelper;

.field private mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/huxq17/download/db/DBService;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    new-instance v0, Lcom/huxq17/download/db/DBOpenHelper;

    invoke-direct {v0, p1}, Lcom/huxq17/download/db/DBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huxq17/download/db/DBService;->helper:Lcom/huxq17/download/db/DBOpenHelper;

    .line 29
    invoke-static {}, Lcom/huxq17/download/core/DownloadInfoManager;->getInstance()Lcom/huxq17/download/core/DownloadInfoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/db/DBService;->downloadInfoManager:Lcom/huxq17/download/core/DownloadInfoManager;

    .line 30
    return-void
.end method

.method private declared-synchronized closeDatabase()V
    .registers 2

    monitor-enter p0

    .line 136
    :try_start_1
    iget-object v0, p0, Lcom/huxq17/download/db/DBService;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_e

    .line 137
    iget-object v0, p0, Lcom/huxq17/download/db/DBService;->helper:Lcom/huxq17/download/db/DBOpenHelper;

    invoke-virtual {v0}, Lcom/huxq17/download/db/DBOpenHelper;->close()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 139
    :cond_e
    monitor-exit p0

    return-void

    .line 135
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    monitor-enter p0

    .line 131
    :try_start_1
    iget-object v0, p0, Lcom/huxq17/download/db/DBService;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 132
    iget-object v0, p0, Lcom/huxq17/download/db/DBService;->helper:Lcom/huxq17/download/db/DBOpenHelper;

    invoke-virtual {v0}, Lcom/huxq17/download/db/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    .line 130
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/huxq17/download/db/DBService;
    .registers 2

    const-class v0, Lcom/huxq17/download/db/DBService;

    monitor-enter v0

    .line 33
    :try_start_3
    sget-object v1, Lcom/huxq17/download/db/DBService;->instance:Lcom/huxq17/download/db/DBService;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 24
    new-instance v0, Lcom/huxq17/download/db/DBService;

    invoke-direct {v0, p0}, Lcom/huxq17/download/db/DBService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huxq17/download/db/DBService;->instance:Lcom/huxq17/download/db/DBService;

    .line 25
    return-void
.end method


# virtual methods
.method public deleteInfo(Ljava/lang/String;)V
    .registers 8
    .param p1, "id"    # Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Lcom/huxq17/download/db/DBService;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 125
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "download_info"

    const-string v2, "id=?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    const-string v1, "download_cache"

    const-string/jumbo v2, "url=?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    invoke-direct {p0}, Lcom/huxq17/download/db/DBService;->closeDatabase()V

    .line 128
    return-void
.end method

.method public getDownloadInfo(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadDetailsInfo;
    .registers 13
    .param p1, "id"    # Ljava/lang/String;

    .line 108
    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_34

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "info":Lcom/huxq17/download/core/DownloadDetailsInfo;
    invoke-direct {p0}, Lcom/huxq17/download/db/DBService;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 113
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "download_info"

    const/4 v3, 0x0

    const-string v4, "id=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 115
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 116
    iget-object v2, p0, Lcom/huxq17/download/db/DBService;->downloadInfoManager:Lcom/huxq17/download/core/DownloadInfoManager;

    invoke-virtual {v2, v1}, Lcom/huxq17/download/core/DownloadInfoManager;->createInfoByCursor(Landroid/database/Cursor;)Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v0

    .line 118
    :cond_2d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 119
    invoke-direct {p0}, Lcom/huxq17/download/db/DBService;->closeDatabase()V

    .line 120
    return-object v0

    .line 109
    .end local v0    # "info":Lcom/huxq17/download/core/DownloadDetailsInfo;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDownloadList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/DownloadDetailsInfo;",
            ">;"
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/huxq17/download/db/DBService;->getDownloadListByTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadListByTag(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/DownloadDetailsInfo;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/huxq17/download/core/DownloadDetailsInfo;>;"
    invoke-direct {p0}, Lcom/huxq17/download/db/DBService;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 89
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez p1, :cond_1b

    .line 90
    const-string v2, "download_info"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "create_time DESC"

    const/4 v9, 0x0

    move-object v1, v10

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_31

    .line 94
    :cond_1b
    const-string v2, "download_info"

    const/4 v3, 0x0

    const-string/jumbo v4, "tag = ?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "create_time DESC"

    const/4 v9, 0x0

    move-object v1, v10

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 98
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_31
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 99
    iget-object v2, p0, Lcom/huxq17/download/db/DBService;->downloadInfoManager:Lcom/huxq17/download/core/DownloadInfoManager;

    invoke-virtual {v2, v1}, Lcom/huxq17/download/core/DownloadInfoManager;->createInfoByCursor(Landroid/database/Cursor;)Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v2

    .line 100
    .local v2, "info":Lcom/huxq17/download/core/DownloadDetailsInfo;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v2    # "info":Lcom/huxq17/download/core/DownloadDetailsInfo;
    goto :goto_31

    .line 102
    :cond_41
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 103
    invoke-direct {p0}, Lcom/huxq17/download/db/DBService;->closeDatabase()V

    .line 104
    return-object v0
.end method

.method public queryCache(Ljava/lang/String;)Lcom/huxq17/download/DownloadProvider$CacheBean;
    .registers 9
    .param p1, "url"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lcom/huxq17/download/db/DBService;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 51
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "select * from download_cache where url=?"

    .line 52
    .local v1, "querySql":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 53
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 54
    .local v4, "cacheBean":Lcom/huxq17/download/DownloadProvider$CacheBean;
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 55
    new-instance v5, Lcom/huxq17/download/DownloadProvider$CacheBean;

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 56
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, p1, v6, v2}, Lcom/huxq17/download/DownloadProvider$CacheBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 58
    :cond_26
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 59
    invoke-direct {p0}, Lcom/huxq17/download/db/DBService;->closeDatabase()V

    .line 60
    return-object v4
.end method

.method public updateCache(Lcom/huxq17/download/DownloadProvider$CacheBean;)V
    .registers 6
    .param p1, "cacheBean"    # Lcom/huxq17/download/DownloadProvider$CacheBean;

    .line 37
    iget-object v0, p1, Lcom/huxq17/download/DownloadProvider$CacheBean;->lastModified:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/huxq17/download/DownloadProvider$CacheBean;->eTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 38
    return-void

    .line 40
    :cond_11
    invoke-direct {p0}, Lcom/huxq17/download/db/DBService;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 41
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 42
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "url"

    iget-object v3, p1, Lcom/huxq17/download/DownloadProvider$CacheBean;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v2, "Last_modified"

    iget-object v3, p1, Lcom/huxq17/download/DownloadProvider$CacheBean;->lastModified:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v2, "eTag"

    iget-object v3, p1, Lcom/huxq17/download/DownloadProvider$CacheBean;->eTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v2, "download_cache"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 46
    invoke-direct {p0}, Lcom/huxq17/download/db/DBService;->closeDatabase()V

    .line 47
    return-void
.end method

.method public updateInfo(Lcom/huxq17/download/core/DownloadDetailsInfo;)V
    .registers 7
    .param p1, "downloadInfo"    # Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 64
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 65
    return-void

    .line 67
    :cond_7
    invoke-direct {p0}, Lcom/huxq17/download/db/DBService;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 68
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "url"

    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v2, "path"

    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v2, "thread_num"

    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getThreadNum()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string v2, "file_length"

    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getContentLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    const-string v2, "finished"

    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getFinished()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const-string/jumbo v2, "tag"

    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "id"

    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "create_time"

    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getCreateTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 77
    const-string v2, "download_info"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 78
    invoke-direct {p0}, Lcom/huxq17/download/db/DBService;->closeDatabase()V

    .line 79
    return-void
.end method
