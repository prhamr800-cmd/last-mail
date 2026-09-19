###### Class com.huxq17.download.DownloadProvider (com.huxq17.download.DownloadProvider)
.class public Lcom/huxq17/download/DownloadProvider;
.super Landroid/content/ContentProvider;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huxq17/download/DownloadProvider$CacheBean;,
        Lcom/huxq17/download/DownloadProvider$CacheTable;,
        Lcom/huxq17/download/DownloadProvider$DownloadTable;
    }
.end annotation


# static fields
.field public static final AUTHORITY_URI:Ljava/lang/String; = "content://%s.huxq17.download-provider"

.field public static CONTENT_URI:Landroid/net/Uri;

.field public static context:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 33
    sget-object v0, Lcom/huxq17/download/DownloadProvider;->CONTENT_URI:Landroid/net/Uri;

    if-nez v0, :cond_1a

    .line 34
    const-string v0, "content://%s.huxq17.download-provider"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huxq17/download/DownloadProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 36
    :cond_1a
    sget-object v0, Lcom/huxq17/download/DownloadProvider;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "selection"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selectionArgs"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 111
    new-instance v0, Landroid/database/SQLException;

    const-string v1, "Not support to delete."

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 5

    .line 41
    invoke-virtual {p0}, Lcom/huxq17/download/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/huxq17/download/DownloadProvider;->context:Landroid/content/Context;

    .line 42
    sget-object v0, Lcom/huxq17/download/DownloadProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/huxq17/download/db/DBService;->init(Landroid/content/Context;)V

    .line 43
    const-class v0, Lcom/huxq17/download/core/DownloadManager;

    invoke-static {v0}, Lcom/huxq17/download/utils/ReflectUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/DownloadManager;

    .line 44
    .local v0, "downloadManager":Lcom/huxq17/download/core/DownloadManager;
    sget-object v1, Lcom/huxq17/download/DownloadProvider;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huxq17/download/core/DownloadManager;->start(Landroid/content/Context;)V

    .line 45
    const-class v1, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-static {v1, v0}, Lcom/huxq17/download/PumpFactory;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 46
    const-class v1, Lcom/huxq17/download/core/MessageCenter;

    invoke-static {v1}, Lcom/huxq17/download/utils/ReflectUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huxq17/download/core/MessageCenter;

    .line 47
    .local v1, "messageCenter":Lcom/huxq17/download/core/MessageCenter;
    sget-object v2, Lcom/huxq17/download/DownloadProvider;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/huxq17/download/core/MessageCenter;->start(Landroid/content/Context;)V

    .line 48
    const-class v2, Lcom/huxq17/download/core/service/IMessageCenter;

    invoke-static {v2, v1}, Lcom/huxq17/download/PumpFactory;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 49
    const-class v2, Lcom/huxq17/download/config/DownloadConfigService;

    invoke-static {v2}, Lcom/huxq17/download/utils/ReflectUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huxq17/download/core/service/IDownloadConfigService;

    .line 50
    .local v2, "downloadConfig":Lcom/huxq17/download/core/service/IDownloadConfigService;
    const-class v3, Lcom/huxq17/download/core/service/IDownloadConfigService;

    invoke-static {v3, v2}, Lcom/huxq17/download/PumpFactory;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 51
    sget-object v3, Lcom/huxq17/download/DownloadProvider;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/huxq17/download/utils/OKHttpUtil;->init(Landroid/content/Context;)V

    .line 52
    const/4 v3, 0x1

    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "projection"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selection"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "selectionArgs"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "sortOrder"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 94
    new-instance v0, Landroid/database/SQLException;

    const-string v1, "Not support to query."

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selection"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "selectionArgs"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 116
    new-instance v0, Landroid/database/SQLException;

    const-string v1, "Not support to update."

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.huxq17.download.DownloadProvider.CacheBean (com.huxq17.download.DownloadProvider$CacheBean)
.class public final Lcom/huxq17/download/DownloadProvider$CacheBean;
.super Ljava/lang/Object;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huxq17/download/DownloadProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheBean"
.end annotation


# instance fields
.field public eTag:Ljava/lang/String;

.field public lastModified:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "lastModified"    # Ljava/lang/String;
    .param p3, "eTag"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/huxq17/download/DownloadProvider$CacheBean;->lastModified:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/huxq17/download/DownloadProvider$CacheBean;->eTag:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/huxq17/download/DownloadProvider$CacheBean;->url:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public getIfRangeField()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/huxq17/download/DownloadProvider$CacheBean;->eTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/huxq17/download/DownloadProvider$CacheBean;->lastModified:Ljava/lang/String;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/huxq17/download/DownloadProvider$CacheBean;->eTag:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

###### Class com.huxq17.download.DownloadProvider.CacheTable (com.huxq17.download.DownloadProvider$CacheTable)
.class public final Lcom/huxq17/download/DownloadProvider$CacheTable;
.super Ljava/lang/Object;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huxq17/download/DownloadProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheTable"
.end annotation


# static fields
.field public static final ETAG:Ljava/lang/String; = "eTag"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "Last_modified"

.field public static final TABLE_NAME:Ljava/lang/String; = "download_cache"

.field public static final URL:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.huxq17.download.DownloadProvider.DownloadTable (com.huxq17.download.DownloadProvider$DownloadTable)
.class public final Lcom/huxq17/download/DownloadProvider$DownloadTable;
.super Ljava/lang/Object;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huxq17/download/DownloadProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadTable"
.end annotation


# static fields
.field public static final CREATE_TIME:Ljava/lang/String; = "create_time"

.field public static final FILE_LENGTH:Ljava/lang/String; = "file_length"

.field public static final FINISHED:Ljava/lang/String; = "finished"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final TABLE_NAME:Ljava/lang/String; = "download_info"

.field public static final TAG:Ljava/lang/String; = "tag"

.field public static final THREAD_NUM:Ljava/lang/String; = "thread_num"

.field public static final URL:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
