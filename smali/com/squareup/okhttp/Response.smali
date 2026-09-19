###### Class com.squareup.okhttp.Response (com.squareup.okhttp.Response)
.class public final Lcom/squareup/okhttp/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/Response$Builder;
    }
.end annotation


# instance fields
.field private final body:Lcom/squareup/okhttp/ResponseBody;

.field private volatile cacheControl:Lcom/squareup/okhttp/CacheControl;

.field private cacheResponse:Lcom/squareup/okhttp/Response;

.field private final code:I

.field private final handshake:Lcom/squareup/okhttp/Handshake;

.field private final headers:Lcom/squareup/okhttp/Headers;

.field private final message:Ljava/lang/String;

.field private networkResponse:Lcom/squareup/okhttp/Response;

.field private final priorResponse:Lcom/squareup/okhttp/Response;

.field private final protocol:Lcom/squareup/okhttp/Protocol;

.field private final request:Lcom/squareup/okhttp/Request;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/Response$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/squareup/okhttp/Response$Builder;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->access$000(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->request:Lcom/squareup/okhttp/Request;

    .line 52
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->access$100(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 53
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->access$200(Lcom/squareup/okhttp/Response$Builder;)I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/Response;->code:I

    .line 54
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->access$300(Lcom/squareup/okhttp/Response$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->message:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->access$400(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->handshake:Lcom/squareup/okhttp/Handshake;

    .line 56
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->access$500(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->headers:Lcom/squareup/okhttp/Headers;

    .line 57
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->access$600(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->body:Lcom/squareup/okhttp/ResponseBody;

    .line 58
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->access$700(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->networkResponse:Lcom/squareup/okhttp/Response;

    .line 59
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->access$800(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->cacheResponse:Lcom/squareup/okhttp/Response;

    .line 60
    invoke-static {p1}, Lcom/squareup/okhttp/Response$Builder;->access$900(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response;->priorResponse:Lcom/squareup/okhttp/Response;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/Response$Builder;Lcom/squareup/okhttp/Response$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/squareup/okhttp/Response$Builder;
    .param p2, "x1"    # Lcom/squareup/okhttp/Response$1;

    .line 36
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Response;-><init>(Lcom/squareup/okhttp/Response$Builder;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Request;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Response;

    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->request:Lcom/squareup/okhttp/Request;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Protocol;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Response;

    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->protocol:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/squareup/okhttp/Response;)I
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Response;

    .line 36
    iget v0, p0, Lcom/squareup/okhttp/Response;->code:I

    return v0
.end method

.method static synthetic access$1400(Lcom/squareup/okhttp/Response;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Response;

    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Handshake;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Response;

    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->handshake:Lcom/squareup/okhttp/Handshake;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Headers;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Response;

    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->headers:Lcom/squareup/okhttp/Headers;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/ResponseBody;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Response;

    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->body:Lcom/squareup/okhttp/ResponseBody;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Response;

    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->networkResponse:Lcom/squareup/okhttp/Response;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Response;

    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->cacheResponse:Lcom/squareup/okhttp/Response;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Response;

    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->priorResponse:Lcom/squareup/okhttp/Response;

    return-object v0
.end method


# virtual methods
.method public body()Lcom/squareup/okhttp/ResponseBody;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->body:Lcom/squareup/okhttp/ResponseBody;

    return-object v0
.end method

.method public cacheControl()Lcom/squareup/okhttp/CacheControl;
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->cacheControl:Lcom/squareup/okhttp/CacheControl;

    .line 206
    .local v0, "result":Lcom/squareup/okhttp/CacheControl;
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_e

    :cond_6
    iget-object v1, p0, Lcom/squareup/okhttp/Response;->headers:Lcom/squareup/okhttp/Headers;

    invoke-static {v1}, Lcom/squareup/okhttp/CacheControl;->parse(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/CacheControl;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/Response;->cacheControl:Lcom/squareup/okhttp/CacheControl;

    :goto_e
    return-object v1
.end method

.method public cacheResponse()Lcom/squareup/okhttp/Response;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->cacheResponse:Lcom/squareup/okhttp/Response;

    return-object v0
.end method

.method public challenges()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Challenge;",
            ">;"
        }
    .end annotation

    .line 190
    iget v0, p0, Lcom/squareup/okhttp/Response;->code:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_9

    .line 191
    const-string v0, "WWW-Authenticate"

    goto :goto_11

    .line 192
    :cond_9
    iget v0, p0, Lcom/squareup/okhttp/Response;->code:I

    const/16 v1, 0x197

    if-ne v0, v1, :cond_1b

    .line 193
    const-string v0, "Proxy-Authenticate"

    .line 195
    .local v0, "responseField":Ljava/lang/String;
    :goto_11
    nop

    .line 197
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->parseChallenges(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 195
    .end local v0    # "responseField":Ljava/lang/String;
    :cond_1b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public code()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/squareup/okhttp/Response;->code:I

    return v0
.end method

.method public handshake()Lcom/squareup/okhttp/Handshake;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->handshake:Lcom/squareup/okhttp/Handshake;

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->headers:Lcom/squareup/okhttp/Headers;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_b

    :cond_a
    move-object v1, p2

    :goto_b
    return-object v1
.end method

.method public headers()Lcom/squareup/okhttp/Headers;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->headers:Lcom/squareup/okhttp/Headers;

    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->headers:Lcom/squareup/okhttp/Headers;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isRedirect()Z
    .registers 2

    .line 139
    iget v0, p0, Lcom/squareup/okhttp/Response;->code:I

    packed-switch v0, :pswitch_data_a

    .line 148
    :pswitch_5
    const/4 v0, 0x0

    return v0

    .line 146
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x12c
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public isSuccessful()Z
    .registers 3

    .line 96
    iget v0, p0, Lcom/squareup/okhttp/Response;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_e

    iget v0, p0, Lcom/squareup/okhttp/Response;->code:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public message()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public networkResponse()Lcom/squareup/okhttp/Response;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->networkResponse:Lcom/squareup/okhttp/Response;

    return-object v0
.end method

.method public newBuilder()Lcom/squareup/okhttp/Response$Builder;
    .registers 3

    .line 134
    new-instance v0, Lcom/squareup/okhttp/Response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/Response$Builder;-><init>(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response$1;)V

    return-object v0
.end method

.method public priorResponse()Lcom/squareup/okhttp/Response;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->priorResponse:Lcom/squareup/okhttp/Response;

    return-object v0
.end method

.method public protocol()Lcom/squareup/okhttp/Protocol;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->protocol:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method public request()Lcom/squareup/okhttp/Request;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/squareup/okhttp/Response;->request:Lcom/squareup/okhttp/Request;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/Response;->protocol:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/okhttp/Response;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/Response;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/Response;->request:Lcom/squareup/okhttp/Request;

    .line 217
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.squareup.okhttp.Response.AnonymousClass1 (com.squareup.okhttp.Response$1)
.class synthetic Lcom/squareup/okhttp/Response$1;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.squareup.okhttp.Response.Builder (com.squareup.okhttp.Response$Builder)
.class public Lcom/squareup/okhttp/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lcom/squareup/okhttp/ResponseBody;

.field private cacheResponse:Lcom/squareup/okhttp/Response;

.field private code:I

.field private handshake:Lcom/squareup/okhttp/Handshake;

.field private headers:Lcom/squareup/okhttp/Headers$Builder;

.field private message:Ljava/lang/String;

.field private networkResponse:Lcom/squareup/okhttp/Response;

.field private priorResponse:Lcom/squareup/okhttp/Response;

.field private protocol:Lcom/squareup/okhttp/Protocol;

.field private request:Lcom/squareup/okhttp/Request;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/Response$Builder;->code:I

    .line 234
    new-instance v0, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->headers:Lcom/squareup/okhttp/Headers$Builder;

    .line 235
    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/Response;)V
    .registers 3
    .param p1, "response"    # Lcom/squareup/okhttp/Response;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/Response$Builder;->code:I

    .line 238
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->access$1100(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->request:Lcom/squareup/okhttp/Request;

    .line 239
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->access$1200(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 240
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->access$1300(Lcom/squareup/okhttp/Response;)I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/Response$Builder;->code:I

    .line 241
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->access$1400(Lcom/squareup/okhttp/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->message:Ljava/lang/String;

    .line 242
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->access$1500(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->handshake:Lcom/squareup/okhttp/Handshake;

    .line 243
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->access$1600(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers;->newBuilder()Lcom/squareup/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->headers:Lcom/squareup/okhttp/Headers$Builder;

    .line 244
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->access$1700(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->body:Lcom/squareup/okhttp/ResponseBody;

    .line 245
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->access$1800(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->networkResponse:Lcom/squareup/okhttp/Response;

    .line 246
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->access$1900(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->cacheResponse:Lcom/squareup/okhttp/Response;

    .line 247
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->access$2000(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->priorResponse:Lcom/squareup/okhttp/Response;

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/squareup/okhttp/Response;
    .param p2, "x1"    # Lcom/squareup/okhttp/Response$1;

    .line 221
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Response$Builder;-><init>(Lcom/squareup/okhttp/Response;)V

    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Request;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Response$Builder;

    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->request:Lcom/squareup/okhttp/Request;

    return-object v0
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Protocol;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Response$Builder;

    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->protocol:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/Response$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Response$Builder;

    .line 221
    iget v0, p0, Lcom/squareup/okhttp/Response$Builder;->code:I

    return v0
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/Response$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Response$Builder;

    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Handshake;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Response$Builder;

    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->handshake:Lcom/squareup/okhttp/Handshake;

    return-object v0
.end method

.method static synthetic access$500(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Headers$Builder;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Response$Builder;

    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->headers:Lcom/squareup/okhttp/Headers$Builder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/ResponseBody;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Response$Builder;

    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->body:Lcom/squareup/okhttp/ResponseBody;

    return-object v0
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Response$Builder;

    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->networkResponse:Lcom/squareup/okhttp/Response;

    return-object v0
.end method

.method static synthetic access$800(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Response$Builder;

    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->cacheResponse:Lcom/squareup/okhttp/Response;

    return-object v0
.end method

.method static synthetic access$900(Lcom/squareup/okhttp/Response$Builder;)Lcom/squareup/okhttp/Response;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Response$Builder;

    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->priorResponse:Lcom/squareup/okhttp/Response;

    return-object v0
.end method

.method private checkPriorResponse(Lcom/squareup/okhttp/Response;)V
    .registers 4
    .param p1, "response"    # Lcom/squareup/okhttp/Response;

    .line 340
    invoke-static {p1}, Lcom/squareup/okhttp/Response;->access$1700(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_7

    .line 343
    return-void

    .line 341
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkSupportResponse(Ljava/lang/String;Lcom/squareup/okhttp/Response;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/squareup/okhttp/Response;

    .line 322
    invoke-static {p2}, Lcom/squareup/okhttp/Response;->access$1700(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_5e

    .line 324
    invoke-static {p2}, Lcom/squareup/okhttp/Response;->access$1800(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    if-nez v0, :cond_47

    .line 326
    invoke-static {p2}, Lcom/squareup/okhttp/Response;->access$1900(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    if-nez v0, :cond_30

    .line 328
    invoke-static {p2}, Lcom/squareup/okhttp/Response;->access$2000(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    if-nez v0, :cond_19

    .line 331
    return-void

    .line 329
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->headers:Lcom/squareup/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 290
    return-object p0
.end method

.method public body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;
    .registers 2
    .param p1, "body"    # Lcom/squareup/okhttp/ResponseBody;

    .line 305
    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->body:Lcom/squareup/okhttp/ResponseBody;

    .line 306
    return-object p0
.end method

.method public build()Lcom/squareup/okhttp/Response;
    .registers 4

    .line 346
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->request:Lcom/squareup/okhttp/Request;

    if-eqz v0, :cond_34

    .line 347
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->protocol:Lcom/squareup/okhttp/Protocol;

    if-eqz v0, :cond_2c

    .line 348
    iget v0, p0, Lcom/squareup/okhttp/Response$Builder;->code:I

    if-ltz v0, :cond_13

    .line 349
    new-instance v0, Lcom/squareup/okhttp/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/Response;-><init>(Lcom/squareup/okhttp/Response$Builder;Lcom/squareup/okhttp/Response$1;)V

    return-object v0

    .line 348
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/squareup/okhttp/Response$Builder;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cacheResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;
    .registers 3
    .param p1, "cacheResponse"    # Lcom/squareup/okhttp/Response;

    .line 316
    if-eqz p1, :cond_7

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lcom/squareup/okhttp/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lcom/squareup/okhttp/Response;)V

    .line 317
    :cond_7
    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->cacheResponse:Lcom/squareup/okhttp/Response;

    .line 318
    return-object p0
.end method

.method public code(I)Lcom/squareup/okhttp/Response$Builder;
    .registers 2
    .param p1, "code"    # I

    .line 261
    iput p1, p0, Lcom/squareup/okhttp/Response$Builder;->code:I

    .line 262
    return-object p0
.end method

.method public handshake(Lcom/squareup/okhttp/Handshake;)Lcom/squareup/okhttp/Response$Builder;
    .registers 2
    .param p1, "handshake"    # Lcom/squareup/okhttp/Handshake;

    .line 271
    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->handshake:Lcom/squareup/okhttp/Handshake;

    .line 272
    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->headers:Lcom/squareup/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 281
    return-object p0
.end method

.method public headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;
    .registers 3
    .param p1, "headers"    # Lcom/squareup/okhttp/Headers;

    .line 300
    invoke-virtual {p1}, Lcom/squareup/okhttp/Headers;->newBuilder()Lcom/squareup/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->headers:Lcom/squareup/okhttp/Headers$Builder;

    .line 301
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 266
    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->message:Ljava/lang/String;

    .line 267
    return-object p0
.end method

.method public networkResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;
    .registers 3
    .param p1, "networkResponse"    # Lcom/squareup/okhttp/Response;

    .line 310
    if-eqz p1, :cond_7

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lcom/squareup/okhttp/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lcom/squareup/okhttp/Response;)V

    .line 311
    :cond_7
    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->networkResponse:Lcom/squareup/okhttp/Response;

    .line 312
    return-object p0
.end method

.method public priorResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;
    .registers 2
    .param p1, "priorResponse"    # Lcom/squareup/okhttp/Response;

    .line 334
    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Response$Builder;->checkPriorResponse(Lcom/squareup/okhttp/Response;)V

    .line 335
    :cond_5
    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->priorResponse:Lcom/squareup/okhttp/Response;

    .line 336
    return-object p0
.end method

.method public protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;
    .registers 2
    .param p1, "protocol"    # Lcom/squareup/okhttp/Protocol;

    .line 256
    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 257
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/squareup/okhttp/Response$Builder;->headers:Lcom/squareup/okhttp/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 295
    return-object p0
.end method

.method public request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;
    .registers 2
    .param p1, "request"    # Lcom/squareup/okhttp/Request;

    .line 251
    iput-object p1, p0, Lcom/squareup/okhttp/Response$Builder;->request:Lcom/squareup/okhttp/Request;

    .line 252
    return-object p0
.end method
