###### Class com.digikala.dms.helper.webservice.OkHttpStack (com.digikala.dms.helper.webservice.OkHttpStack)
.class public Lcom/digikala/dms/helper/webservice/OkHttpStack;
.super Lcom/android/volley/toolbox/HurlStack;
.source "OkHttpStack.java"


# instance fields
.field private final client:Lcom/squareup/okhttp/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    invoke-direct {p0, v0}, Lcom/digikala/dms/helper/webservice/OkHttpStack;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/OkHttpClient;)V
    .registers 4
    .param p1, "client"    # Lcom/squareup/okhttp/OkHttpClient;

    .line 22
    invoke-direct {p0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    .line 23
    if-eqz p1, :cond_8

    .line 26
    iput-object p1, p0, Lcom/digikala/dms/helper/webservice/OkHttpStack;->client:Lcom/squareup/okhttp/OkHttpClient;

    .line 27
    return-void

    .line 24
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Client must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 4
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/squareup/okhttp/OkUrlFactory;

    iget-object v1, p0, Lcom/digikala/dms/helper/webservice/OkHttpStack;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/OkUrlFactory;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method
