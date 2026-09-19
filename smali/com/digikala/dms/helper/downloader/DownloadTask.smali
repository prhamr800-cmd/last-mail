###### Class com.digikala.dms.helper.downloader.DownloadTask (com.digikala.dms.helper.downloader.DownloadTask)
.class public Lcom/digikala/dms/helper/downloader/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private listener:Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;

.field private localPath:Ljava/lang/String;

.field private remoteUrl:Ljava/lang/String;

.field private task:Lcom/digikala/dms/helper/downloader/DownloadTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/digikala/dms/helper/downloader/DownloadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/helper/downloader/DownloadTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "remoteUrl"    # Ljava/lang/String;
    .param p2, "localPath"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/digikala/dms/helper/downloader/DownloadTask;->localPath:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/digikala/dms/helper/downloader/DownloadTask;->remoteUrl:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/helper/downloader/DownloadTask;Ljava/net/URL;)J
    .registers 4
    .param p0, "x0"    # Lcom/digikala/dms/helper/downloader/DownloadTask;
    .param p1, "x1"    # Ljava/net/URL;

    .line 28
    invoke-direct {p0, p1}, Lcom/digikala/dms/helper/downloader/DownloadTask;->getFileSizeAtURL(Ljava/net/URL;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/digikala/dms/helper/downloader/DownloadTask;)Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/helper/downloader/DownloadTask;

    .line 28
    iget-object v0, p0, Lcom/digikala/dms/helper/downloader/DownloadTask;->listener:Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;

    return-object v0
.end method

.method private getDownloadObservable(Lcom/digikala/dms/helper/downloader/DownloadTask;)Lrx/Observable;
    .registers 3
    .param p1, "task"    # Lcom/digikala/dms/helper/downloader/DownloadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/helper/downloader/DownloadTask;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/digikala/dms/helper/downloader/DownloadTask$2;

    invoke-direct {v0, p0, p1}, Lcom/digikala/dms/helper/downloader/DownloadTask$2;-><init>(Lcom/digikala/dms/helper/downloader/DownloadTask;Lcom/digikala/dms/helper/downloader/DownloadTask;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 172
    .local v0, "downloadObservable":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Double;>;"
    return-object v0
.end method

.method private getFileSizeAtURL(Ljava/net/URL;)J
    .registers 6
    .param p1, "url"    # Ljava/net/URL;

    .line 176
    const-wide/16 v0, -0x1

    .line 179
    .local v0, "fileSize":J
    :try_start_2
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 180
    .local v2, "http":Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v0, v3

    .line 181
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    .line 184
    .end local v2    # "http":Ljava/net/HttpURLConnection;
    goto :goto_15

    .line 182
    :catch_11
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_15
    return-wide v0
.end method


# virtual methods
.method public getLocalPath()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/digikala/dms/helper/downloader/DownloadTask;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteUrl()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/digikala/dms/helper/downloader/DownloadTask;->remoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "localPath"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/digikala/dms/helper/downloader/DownloadTask;->localPath:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setRemoteUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "remoteUrl"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/digikala/dms/helper/downloader/DownloadTask;->remoteUrl:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public start(Lcom/digikala/dms/helper/downloader/DownloadTask;Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;)V
    .registers 6
    .param p1, "task"    # Lcom/digikala/dms/helper/downloader/DownloadTask;
    .param p2, "listener"    # Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;

    .line 69
    iput-object p1, p0, Lcom/digikala/dms/helper/downloader/DownloadTask;->task:Lcom/digikala/dms/helper/downloader/DownloadTask;

    .line 70
    iput-object p2, p0, Lcom/digikala/dms/helper/downloader/DownloadTask;->listener:Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;

    .line 72
    sget-object v0, Lcom/digikala/dms/helper/downloader/DownloadTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "task start with url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/digikala/dms/helper/downloader/DownloadTask;->getRemoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p1}, Lcom/digikala/dms/helper/downloader/DownloadTask;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    invoke-virtual {p1}, Lcom/digikala/dms/helper/downloader/DownloadTask;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_4f

    .line 77
    :cond_32
    invoke-direct {p0, p1}, Lcom/digikala/dms/helper/downloader/DownloadTask;->getDownloadObservable(Lcom/digikala/dms/helper/downloader/DownloadTask;)Lrx/Observable;

    move-result-object v0

    .line 78
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 79
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/digikala/dms/helper/downloader/DownloadTask$1;

    invoke-direct {v1, p0}, Lcom/digikala/dms/helper/downloader/DownloadTask$1;-><init>(Lcom/digikala/dms/helper/downloader/DownloadTask;)V

    .line 80
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    .line 94
    return-void

    .line 75
    :cond_4f
    :goto_4f
    return-void
.end method

###### Class com.digikala.dms.helper.downloader.DownloadTask.AnonymousClass1 (com.digikala.dms.helper.downloader.DownloadTask$1)
.class Lcom/digikala/dms/helper/downloader/DownloadTask$1;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/downloader/DownloadTask;->start(Lcom/digikala/dms/helper/downloader/DownloadTask;Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observer<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/helper/downloader/DownloadTask;


# direct methods
.method constructor <init>(Lcom/digikala/dms/helper/downloader/DownloadTask;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/helper/downloader/DownloadTask;

    .line 80
    iput-object p1, p0, Lcom/digikala/dms/helper/downloader/DownloadTask$1;->this$0:Lcom/digikala/dms/helper/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .line 83
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 87
    return-void
.end method

.method public onNext(Ljava/lang/Double;)V
    .registers 2
    .param p1, "percentage"    # Ljava/lang/Double;

    .line 91
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 80
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/helper/downloader/DownloadTask$1;->onNext(Ljava/lang/Double;)V

    return-void
.end method

###### Class com.digikala.dms.helper.downloader.DownloadTask.AnonymousClass2 (com.digikala.dms.helper.downloader.DownloadTask$2)
.class Lcom/digikala/dms/helper/downloader/DownloadTask$2;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/downloader/DownloadTask;->getDownloadObservable(Lcom/digikala/dms/helper/downloader/DownloadTask;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/helper/downloader/DownloadTask;

.field final synthetic val$task:Lcom/digikala/dms/helper/downloader/DownloadTask;


# direct methods
.method constructor <init>(Lcom/digikala/dms/helper/downloader/DownloadTask;Lcom/digikala/dms/helper/downloader/DownloadTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/digikala/dms/helper/downloader/DownloadTask;

    .line 98
    iput-object p1, p0, Lcom/digikala/dms/helper/downloader/DownloadTask$2;->this$0:Lcom/digikala/dms/helper/downloader/DownloadTask;

    iput-object p2, p0, Lcom/digikala/dms/helper/downloader/DownloadTask$2;->val$task:Lcom/digikala/dms/helper/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 98
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/helper/downloader/DownloadTask$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Double;>;"
    move-object/from16 v1, p0

    :try_start_2
    new-instance v0, Ljava/net/URL;

    iget-object v2, v1, Lcom/digikala/dms/helper/downloader/DownloadTask$2;->val$task:Lcom/digikala/dms/helper/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/digikala/dms/helper/downloader/DownloadTask;->getRemoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "url":Ljava/net/URL;
    iget-object v2, v1, Lcom/digikala/dms/helper/downloader/DownloadTask$2;->this$0:Lcom/digikala/dms/helper/downloader/DownloadTask;

    invoke-static {v2, v0}, Lcom/digikala/dms/helper/downloader/DownloadTask;->access$000(Lcom/digikala/dms/helper/downloader/DownloadTask;Ljava/net/URL;)J

    move-result-wide v2

    .line 106
    .local v2, "fileSize":J
    const-wide/16 v4, 0x0

    .line 107
    .local v4, "totalBytesRead":J
    const/4 v6, 0x0

    .line 108
    .local v6, "bytesRead":I
    const/16 v7, 0x400

    new-array v7, v7, [B

    .line 109
    .local v7, "bytes":[B
    const/4 v8, -0x1

    .line 110
    .local v8, "percentDone":I
    const/4 v9, 0x0

    .line 111
    .local v9, "latestPercentDone":F
    const/4 v10, 0x0

    .line 113
    .local v10, "latestPercentDoneInt":I
    const-wide/16 v11, 0x0

    cmp-long v13, v2, v11

    if-lez v13, :cond_d9

    .line 114
    const/4 v11, 0x0

    .line 116
    .local v11, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v12

    const-string v13, "http"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_38

    .line 117
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    check-cast v12, Ljava/net/HttpURLConnection;

    move-object v11, v12

    goto :goto_4b

    .line 118
    :cond_38
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v12

    const-string v13, "https"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d6

    .line 119
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;

    move-object v11, v12

    .line 124
    :goto_4b
    const v12, 0x186a0

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 125
    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 127
    new-instance v12, Ljava/io/BufferedInputStream;

    .line 128
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 130
    .local v12, "bufferedInputStream":Ljava/io/BufferedInputStream;
    new-instance v13, Ljava/io/FileOutputStream;

    new-instance v14, Ljava/io/File;

    iget-object v15, v1, Lcom/digikala/dms/helper/downloader/DownloadTask$2;->val$task:Lcom/digikala/dms/helper/downloader/DownloadTask;

    invoke-virtual {v15}, Lcom/digikala/dms/helper/downloader/DownloadTask;->getLocalPath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 132
    .local v13, "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_6d
    invoke-virtual {v12, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v14

    move v6, v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_c1

    .line 133
    int-to-long v14, v6

    add-long/2addr v4, v14

    .line 134
    long-to-float v14, v4

    long-to-float v15, v2

    div-float/2addr v14, v15

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float v9, v14, v15

    .line 135
    float-to-int v10, v9

    .line 136
    sget-object v14, Lcom/digikala/dms/helper/downloader/DownloadTask;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "url":Ljava/net/URL;
    .local v16, "url":Ljava/net/URL;
    const-string v0, "before block percentDone is:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-eq v8, v10, :cond_ba

    .line 138
    move v0, v10

    .line 139
    .end local v8    # "percentDone":I
    .local v0, "percentDone":I
    iget-object v8, v1, Lcom/digikala/dms/helper/downloader/DownloadTask$2;->this$0:Lcom/digikala/dms/helper/downloader/DownloadTask;

    invoke-static {v8}, Lcom/digikala/dms/helper/downloader/DownloadTask;->access$100(Lcom/digikala/dms/helper/downloader/DownloadTask;)Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;

    move-result-object v8

    invoke-interface {v8, v0}, Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;->onContinue(I)V

    .line 140
    sget-object v8, Lcom/digikala/dms/helper/downloader/DownloadTask;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "in block percentDone is:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    move v8, v0

    .end local v0    # "percentDone":I
    .restart local v8    # "percentDone":I
    :cond_ba
    const/4 v0, 0x0

    invoke-virtual {v13, v7, v0, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 130
    move-object/from16 v0, v16

    goto :goto_6d

    .line 146
    .end local v16    # "url":Ljava/net/URL;
    .local v0, "url":Ljava/net/URL;
    :cond_c1
    move-object/from16 v16, v0

    .end local v0    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 147
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 149
    invoke-virtual/range {p1 .. p1}, Lrx/Subscriber;->onCompleted()V

    .line 150
    iget-object v0, v1, Lcom/digikala/dms/helper/downloader/DownloadTask$2;->this$0:Lcom/digikala/dms/helper/downloader/DownloadTask;

    invoke-static {v0}, Lcom/digikala/dms/helper/downloader/DownloadTask;->access$100(Lcom/digikala/dms/helper/downloader/DownloadTask;)Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;->onComplete()V

    .line 152
    .end local v11    # "connection":Ljava/net/HttpURLConnection;
    .end local v12    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v13    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_e6

    .line 121
    .end local v16    # "url":Ljava/net/URL;
    .restart local v0    # "url":Ljava/net/URL;
    .restart local v11    # "connection":Ljava/net/HttpURLConnection;
    :cond_d6
    move-object/from16 v16, v0

    .end local v0    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    return-void

    .line 153
    .end local v11    # "connection":Ljava/net/HttpURLConnection;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v0    # "url":Ljava/net/URL;
    :cond_d9
    move-object/from16 v16, v0

    .end local v0    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    iget-object v0, v1, Lcom/digikala/dms/helper/downloader/DownloadTask$2;->this$0:Lcom/digikala/dms/helper/downloader/DownloadTask;

    invoke-static {v0}, Lcom/digikala/dms/helper/downloader/DownloadTask;->access$100(Lcom/digikala/dms/helper/downloader/DownloadTask;)Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;

    move-result-object v0

    const-string v11, "file size is 0"

    invoke-interface {v0, v11}, Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;->onError(Ljava/lang/String;)V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e6} :catch_ea

    .line 167
    .end local v2    # "fileSize":J
    .end local v4    # "totalBytesRead":J
    .end local v6    # "bytesRead":I
    .end local v7    # "bytes":[B
    .end local v8    # "percentDone":I
    .end local v9    # "latestPercentDone":F
    .end local v10    # "latestPercentDoneInt":I
    .end local v16    # "url":Ljava/net/URL;
    :goto_e6
    nop

    .line 169
    move-object/from16 v4, p1

    goto :goto_11f

    .line 155
    :catch_ea
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/digikala/dms/helper/downloader/DownloadTask$2;->val$task:Lcom/digikala/dms/helper/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/digikala/dms/helper/downloader/DownloadTask;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    .line 160
    .local v3, "deleted":Z
    if-nez v3, :cond_10d

    .line 161
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/digikala/dms/helper/downloader/DownloadTask$2;->val$task:Lcom/digikala/dms/helper/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/digikala/dms/helper/downloader/DownloadTask;->getLocalPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v4, "file1":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 165
    .end local v4    # "file1":Ljava/io/File;
    :cond_10d
    move-object/from16 v4, p1

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 166
    iget-object v5, v1, Lcom/digikala/dms/helper/downloader/DownloadTask$2;->this$0:Lcom/digikala/dms/helper/downloader/DownloadTask;

    invoke-static {v5}, Lcom/digikala/dms/helper/downloader/DownloadTask;->access$100(Lcom/digikala/dms/helper/downloader/DownloadTask;)Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;->onError(Ljava/lang/String;)V

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "deleted":Z
    :goto_11f
    return-void
.end method
