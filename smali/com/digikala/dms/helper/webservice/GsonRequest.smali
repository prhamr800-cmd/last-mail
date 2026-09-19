###### Class com.digikala.dms.helper.webservice.GsonRequest (com.digikala.dms.helper.webservice.GsonRequest)
.class public Lcom/digikala/dms/helper/webservice/GsonRequest;
.super Lcom/android/volley/Request;
.source "GsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG_DEBUG:Ljava/lang/String;

.field private static sGson:Lcom/google/gson/Gson;


# instance fields
.field private final mParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResponseListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mResponseType:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Lcom/digikala/dms/helper/webservice/GsonRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/helper/webservice/GsonRequest;->TAG_DEBUG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/reflect/Type;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 7
    .param p1, "method"    # I
    .param p2, "responseType"    # Ljava/lang/reflect/Type;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "responseListener"    # Lcom/android/volley/Response$Listener;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .line 45
    .local p0, "this":Lcom/digikala/dms/helper/webservice/GsonRequest;, "Lcom/digikala/dms/helper/webservice/GsonRequest<TT;>;"
    invoke-direct {p0, p1, p3, p5}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 47
    iput-object p2, p0, Lcom/digikala/dms/helper/webservice/GsonRequest;->mResponseType:Ljava/lang/reflect/Type;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/digikala/dms/helper/webservice/GsonRequest;->mParams:Ljava/util/HashMap;

    .line 49
    iput-object p4, p0, Lcom/digikala/dms/helper/webservice/GsonRequest;->mResponseListener:Lcom/android/volley/Response$Listener;

    .line 51
    invoke-direct {p0}, Lcom/digikala/dms/helper/webservice/GsonRequest;->initRealmCompatibleGson()V

    .line 52
    invoke-direct {p0, p1}, Lcom/digikala/dms/helper/webservice/GsonRequest;->setRetryPolicies(I)V

    .line 53
    return-void
.end method

.method public constructor <init>(ILjava/lang/reflect/Type;Ljava/lang/String;Ljava/util/HashMap;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 7
    .param p1, "method"    # I
    .param p2, "responseType"    # Ljava/lang/reflect/Type;
    .param p3, "url"    # Ljava/lang/String;
    .param p5, "responseListener"    # Lcom/android/volley/Response$Listener;
    .param p6, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/digikala/dms/helper/webservice/GsonRequest;, "Lcom/digikala/dms/helper/webservice/GsonRequest<TT;>;"
    .local p4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p3, p6}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 58
    iput-object p2, p0, Lcom/digikala/dms/helper/webservice/GsonRequest;->mResponseType:Ljava/lang/reflect/Type;

    .line 59
    iput-object p4, p0, Lcom/digikala/dms/helper/webservice/GsonRequest;->mParams:Ljava/util/HashMap;

    .line 60
    iput-object p5, p0, Lcom/digikala/dms/helper/webservice/GsonRequest;->mResponseListener:Lcom/android/volley/Response$Listener;

    .line 62
    invoke-direct {p0}, Lcom/digikala/dms/helper/webservice/GsonRequest;->initRealmCompatibleGson()V

    .line 63
    invoke-direct {p0, p1}, Lcom/digikala/dms/helper/webservice/GsonRequest;->setRetryPolicies(I)V

    .line 64
    return-void
.end method

.method private initRealmCompatibleGson()V
    .registers 5

    .line 113
    .local p0, "this":Lcom/digikala/dms/helper/webservice/GsonRequest;, "Lcom/digikala/dms/helper/webservice/GsonRequest<TT;>;"
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/gson/ExclusionStrategy;

    new-instance v2, Lcom/digikala/dms/helper/webservice/GsonRequest$1;

    invoke-direct {v2, p0}, Lcom/digikala/dms/helper/webservice/GsonRequest$1;-><init>(Lcom/digikala/dms/helper/webservice/GsonRequest;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 114
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setExclusionStrategies([Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/helper/webservice/GsonRequest;->sGson:Lcom/google/gson/Gson;

    .line 126
    return-void
.end method

.method private setRetryPolicies(I)V
    .registers 6
    .param p1, "method"    # I

    .line 134
    .local p0, "this":Lcom/digikala/dms/helper/webservice/GsonRequest;, "Lcom/digikala/dms/helper/webservice/GsonRequest<TT;>;"
    const/16 v0, 0x9c4

    .line 135
    .local v0, "initialTimeoutMs":I
    const/4 v1, 0x1

    .line 136
    .local v1, "maxNumRetries":I
    const/high16 v2, 0x3f800000    # 1.0f

    .line 137
    .local v2, "backoffMultiplier":F
    if-nez p1, :cond_d

    .line 138
    const/16 v0, 0x1388

    .line 139
    const/4 v1, 0x3

    .line 140
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_15

    .line 141
    :cond_d
    const/4 v3, 0x1

    if-ne p1, v3, :cond_15

    .line 142
    const/16 v0, 0x3a98

    .line 143
    const/4 v1, 0x1

    .line 144
    const/high16 v2, 0x3f800000    # 1.0f

    .line 146
    :cond_15
    :goto_15
    new-instance v3, Lcom/android/volley/DefaultRetryPolicy;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v3}, Lcom/digikala/dms/helper/webservice/GsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 147
    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/digikala/dms/helper/webservice/GsonRequest;, "Lcom/digikala/dms/helper/webservice/GsonRequest<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/GsonRequest;->mResponseListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_6

    .line 89
    goto :goto_1d

    .line 87
    :catch_6
    move-exception v0

    .line 88
    .local v0, "npe":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/digikala/dms/helper/webservice/GsonRequest;->TAG_DEBUG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseListener is not initialized. exception message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :goto_1d
    return-void
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/digikala/dms/helper/webservice/GsonRequest;, "Lcom/digikala/dms/helper/webservice/GsonRequest<TT;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/digikala/dms/helper/webservice/GsonRequest;->TAG_DEBUG:Ljava/lang/String;

    const-string/jumbo v2, "syncError getHeaders: call "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v1, Lcom/digikala/dms/helper/webservice/GsonRequest;->TAG_DEBUG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syncError getHeaders: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/digikala/dms/util/Util;->getDeliveryAuthToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v1, "AuthToken"

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getDeliveryAuthToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "AppVersion"

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getAppVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "Authorization"

    const-string v2, " Basic c3VwZXJub3ZhOnN1bW1lcmlzZ3JlYXQ="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/digikala/dms/helper/webservice/GsonRequest;, "Lcom/digikala/dms/helper/webservice/GsonRequest<TT;>;"
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/GsonRequest;->mParams:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/GsonRequest;->mParams:Ljava/util/HashMap;

    goto :goto_b

    :cond_7
    invoke-super {p0}, Lcom/android/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .registers 5
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "TT;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/digikala/dms/helper/webservice/GsonRequest;, "Lcom/digikala/dms/helper/webservice/GsonRequest<TT;>;"
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 72
    .local v0, "responseJsonStr":Ljava/lang/String;
    sget-object v1, Lcom/digikala/dms/helper/webservice/GsonRequest;->sGson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/digikala/dms/helper/webservice/GsonRequest;->mResponseType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 73
    .local v1, "result":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v2
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_19} :catch_28
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v2

    .line 77
    .end local v0    # "responseJsonStr":Ljava/lang/String;
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :catch_1a
    move-exception v0

    .line 78
    .local v0, "jse":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 79
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v1

    return-object v1

    .line 74
    .end local v0    # "jse":Lcom/google/gson/JsonSyntaxException;
    :catch_28
    move-exception v0

    .line 75
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 76
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v1

    return-object v1
.end method

###### Class com.digikala.dms.helper.webservice.GsonRequest.AnonymousClass1 (com.digikala.dms.helper.webservice.GsonRequest$1)
.class Lcom/digikala/dms/helper/webservice/GsonRequest$1;
.super Ljava/lang/Object;
.source "GsonRequest.java"

# interfaces
.implements Lcom/google/gson/ExclusionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/GsonRequest;->initRealmCompatibleGson()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/helper/webservice/GsonRequest;


# direct methods
.method constructor <init>(Lcom/digikala/dms/helper/webservice/GsonRequest;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/helper/webservice/GsonRequest;

    .line 114
    .local p0, "this":Lcom/digikala/dms/helper/webservice/GsonRequest$1;, "Lcom/digikala/dms/helper/webservice/GsonRequest$1;"
    iput-object p1, p0, Lcom/digikala/dms/helper/webservice/GsonRequest$1;->this$0:Lcom/digikala/dms/helper/webservice/GsonRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldSkipClass(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/digikala/dms/helper/webservice/GsonRequest$1;, "Lcom/digikala/dms/helper/webservice/GsonRequest$1;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipField(Lcom/google/gson/FieldAttributes;)Z
    .registers 4
    .param p1, "f"    # Lcom/google/gson/FieldAttributes;

    .line 117
    .local p0, "this":Lcom/digikala/dms/helper/webservice/GsonRequest$1;, "Lcom/digikala/dms/helper/webservice/GsonRequest$1;"
    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/realm/RealmObject;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
