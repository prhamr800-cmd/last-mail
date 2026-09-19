###### Class com.digikala.dms.helper.webservice.VolleyHelper (com.digikala.dms.helper.webservice.VolleyHelper)
.class public Lcom/digikala/dms/helper/webservice/VolleyHelper;
.super Ljava/lang/Object;
.source "VolleyHelper.java"


# static fields
.field private static final TAG_DEBUG:Ljava/lang/String;

.field private static final TAG_REQUEST:Ljava/lang/String; = "NO TAG"

.field private static sContext:Landroid/content/Context;

.field private static sImageLoaderWithMemoryCache:Lcom/android/volley/toolbox/ImageLoader;

.field private static sInitialized:Z

.field private static sRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->TAG_DEBUG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 17
    sget-object v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->TAG_DEBUG:Ljava/lang/String;

    return-object v0
.end method

.method public static addToRequestQueue(Lcom/android/volley/Request;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "req":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    sget-boolean v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->sInitialized:Z

    if-eqz v0, :cond_84

    .line 41
    const-string v0, "NO TAG"

    invoke-virtual {p0, v0}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 42
    sget-object v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->sRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 46
    :try_start_e
    sget-object v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->TAG_DEBUG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enqueued Request:\nTag: NO TAG\nMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Lcom/android/volley/Request;->getMethod()I

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "GET"

    goto :goto_25

    :cond_23
    const-string v2, "POST"

    :goto_25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nURL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nHeaders: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p0}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nBody: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBody()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nContentType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_68} :catch_69

    .line 58
    goto :goto_84

    .line 56
    :catch_69
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/digikala/dms/helper/webservice/VolleyHelper;->TAG_DEBUG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_84
    :goto_84
    return-void
.end method

.method public static addToRequestQueue(Lcom/android/volley/Request;Ljava/lang/String;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 66
    .local p0, "req":Lcom/android/volley/Request;, "Lcom/android/volley/Request<TT;>;"
    sget-boolean v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->sInitialized:Z

    if-eqz v0, :cond_9d

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "NO TAG"

    goto :goto_e

    :cond_d
    move-object v0, p1

    :goto_e
    invoke-virtual {p0, v0}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 68
    const-string v0, "Adding request to queue: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const v1, 0xc350

    const v2, 0x459c4000    # 5000.0f

    invoke-direct {v0, v1, v3, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 70
    sget-object v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->sRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 72
    :try_start_33
    sget-object v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->TAG_DEBUG:Ljava/lang/String;

    const-string v1, "addToRequestQueue: 70"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->TAG_DEBUG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToRequestQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->TAG_DEBUG:Ljava/lang/String;

    const-string v1, "addToRequestQueue: 72"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->TAG_DEBUG:Ljava/lang/String;

    const-string v1, "addToRequestQueue: 74"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->TAG_DEBUG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToRequestQueue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_80} :catch_81

    goto :goto_9c

    .line 88
    :catch_81
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/digikala/dms/helper/webservice/VolleyHelper;->TAG_DEBUG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9c
    goto :goto_a4

    .line 93
    :cond_9d
    sget-object v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->TAG_DEBUG:Ljava/lang/String;

    const-string v1, "Not init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_a4
    return-void
.end method

.method public static cancelPendingRequests(Ljava/lang/Object;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/Object;

    .line 98
    sget-boolean v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->sInitialized:Z

    if-eqz v0, :cond_9

    .line 99
    sget-object v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->sRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 103
    :cond_9
    return-void
.end method

.method public static clearRequestQueue()V
    .registers 2

    .line 106
    sget-boolean v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->sInitialized:Z

    if-eqz v0, :cond_1b

    .line 107
    sget-object v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->sRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/digikala/dms/helper/webservice/VolleyHelper$1;

    invoke-direct {v1}, Lcom/digikala/dms/helper/webservice/VolleyHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    .line 128
    sget-object v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->sContext:Landroid/content/Context;

    new-instance v1, Lcom/digikala/dms/helper/webservice/OkHttpStack;

    invoke-direct {v1}, Lcom/digikala/dms/helper/webservice/OkHttpStack;-><init>()V

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/BaseHttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->sRequestQueue:Lcom/android/volley/RequestQueue;

    .line 132
    :cond_1b
    return-void
.end method

.method public static downloadAndMemoryCacheBitmap(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V
    .registers 3
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    .line 135
    sget-object v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->sImageLoaderWithMemoryCache:Lcom/android/volley/toolbox/ImageLoader;

    invoke-virtual {v0, p0, p1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 136
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;

    .line 32
    sput-object p0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->sContext:Landroid/content/Context;

    .line 33
    sget-object v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->sContext:Landroid/content/Context;

    new-instance v1, Lcom/digikala/dms/helper/webservice/OkHttpStack;

    invoke-direct {v1}, Lcom/digikala/dms/helper/webservice/OkHttpStack;-><init>()V

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/BaseHttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->sRequestQueue:Lcom/android/volley/RequestQueue;

    .line 34
    new-instance v0, Lcom/android/volley/toolbox/ImageLoader;

    sget-object v1, Lcom/digikala/dms/helper/webservice/VolleyHelper;->sRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/digikala/dms/helper/webservice/MemoryBitmapCache;

    invoke-direct {v2}, Lcom/digikala/dms/helper/webservice/MemoryBitmapCache;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    sput-object v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->sImageLoaderWithMemoryCache:Lcom/android/volley/toolbox/ImageLoader;

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/digikala/dms/helper/webservice/VolleyHelper;->sInitialized:Z

    .line 37
    return-void
.end method

###### Class com.digikala.dms.helper.webservice.VolleyHelper.AnonymousClass1 (com.digikala.dms.helper.webservice.VolleyHelper$1)
.class final Lcom/digikala/dms/helper/webservice/VolleyHelper$1;
.super Ljava/lang/Object;
.source "VolleyHelper.java"

# interfaces
.implements Lcom/android/volley/RequestQueue$RequestFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/VolleyHelper;->clearRequestQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/volley/Request;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)Z"
        }
    .end annotation

    .line 111
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :try_start_0
    invoke-static {}, Lcom/digikala/dms/helper/webservice/VolleyHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dequeued Request:\nTag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p1}, Lcom/android/volley/Request;->getMethod()I

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "GET"

    goto :goto_25

    :cond_23
    const-string v2, "POST"

    :goto_25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nURL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nHeaders: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nBody: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p1}, Lcom/android/volley/Request;->getBody()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nContentType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p1}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_68} :catch_69

    .line 123
    goto :goto_6d

    .line 121
    :catch_69
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6d
    const/4 v0, 0x1

    return v0
.end method
