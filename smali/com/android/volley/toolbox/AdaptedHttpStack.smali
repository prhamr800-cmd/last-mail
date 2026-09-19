###### Class com.android.volley.toolbox.AdaptedHttpStack (com.android.volley.toolbox.AdaptedHttpStack)
.class Lcom/android/volley/toolbox/AdaptedHttpStack;
.super Lcom/android/volley/toolbox/BaseHttpStack;
.source "AdaptedHttpStack.java"


# instance fields
.field private final mHttpStack:Lcom/android/volley/toolbox/HttpStack;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/HttpStack;)V
    .registers 2
    .param p1, "httpStack"    # Lcom/android/volley/toolbox/HttpStack;

    .line 41
    invoke-direct {p0}, Lcom/android/volley/toolbox/BaseHttpStack;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/volley/toolbox/AdaptedHttpStack;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    .line 43
    return-void
.end method


# virtual methods
.method public executeRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lcom/android/volley/toolbox/HttpResponse;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/volley/toolbox/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 51
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/toolbox/AdaptedHttpStack;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    invoke-interface {v0, p1, p2}, Lcom/android/volley/toolbox/HttpStack;->performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0
    :try_end_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_6} :catch_7b

    .line 56
    .local v0, "apacheResp":Lorg/apache/http/HttpResponse;
    nop

    .line 55
    nop

    .line 58
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 60
    .local v1, "statusCode":I
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    .line 61
    .local v2, "headers":[Lorg/apache/http/Header;
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .local v3, "headerList":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    array-length v4, v2

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v4, :cond_33

    aget-object v6, v2, v5

    .line 63
    .local v6, "header":Lorg/apache/http/Header;
    new-instance v7, Lcom/android/volley/Header;

    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v6    # "header":Lorg/apache/http/Header;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 66
    :cond_33
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    if-nez v4, :cond_3f

    .line 67
    new-instance v4, Lcom/android/volley/toolbox/HttpResponse;

    invoke-direct {v4, v1, v3}, Lcom/android/volley/toolbox/HttpResponse;-><init>(ILjava/util/List;)V

    return-object v4

    .line 70
    :cond_3f
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    .line 71
    .local v4, "contentLength":J
    long-to-int v6, v4

    int-to-long v6, v6

    cmp-long v8, v6, v4

    if-nez v8, :cond_64

    .line 75
    new-instance v6, Lcom/android/volley/toolbox/HttpResponse;

    .line 78
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    long-to-int v7, v7

    .line 79
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v6, v1, v3, v7, v8}, Lcom/android/volley/toolbox/HttpResponse;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    .line 75
    return-object v6

    .line 72
    :cond_64
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response too large: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 52
    .end local v0    # "apacheResp":Lorg/apache/http/HttpResponse;
    .end local v1    # "statusCode":I
    .end local v2    # "headers":[Lorg/apache/http/Header;
    .end local v3    # "headerList":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .end local v4    # "contentLength":J
    :catch_7b
    move-exception v0

    .line 55
    .local v0, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    new-instance v1, Ljava/net/SocketTimeoutException;

    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
