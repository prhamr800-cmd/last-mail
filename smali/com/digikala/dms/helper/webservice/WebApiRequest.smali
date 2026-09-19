###### Class com.digikala.dms.helper.webservice.WebApiRequest (com.digikala.dms.helper.webservice.WebApiRequest)
.class public Lcom/digikala/dms/helper/webservice/WebApiRequest;
.super Ljava/lang/Object;
.source "WebApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;,
        Lcom/digikala/dms/helper/webservice/WebApiRequest$OnForceUpdateListener;,
        Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;,
        Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;,
        Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static mForceUpdateListener:Lcom/digikala/dms/helper/webservice/WebApiRequest$OnForceUpdateListener;


# instance fields
.field private final mGsonRequest:Lcom/digikala/dms/helper/webservice/GsonRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/digikala/dms/helper/webservice/GsonRequest<",
            "*>;"
        }
    .end annotation
.end field

.field private final mLoadRequestsInterface:Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;

.field private mStatus:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)V
    .registers 22
    .param p1, "httpMethod"    # I
    .param p2, "query"    # Ljava/lang/String;
    .param p4, "responseType"    # Ljava/lang/reflect/Type;
    .param p5, "requestTag"    # Ljava/lang/String;
    .param p6, "webApiListener"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;
    .param p7, "loadRequestsInterface"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;",
            ")V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/digikala/dms/helper/webservice/WebApiRequest;, "Lcom/digikala/dms/helper/webservice/WebApiRequest<TT;>;"
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v3, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;->READY:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    iput-object v3, v0, Lcom/digikala/dms/helper/webservice/WebApiRequest;->mStatus:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    .line 44
    move-object/from16 v3, p5

    iput-object v3, v0, Lcom/digikala/dms/helper/webservice/WebApiRequest;->mTag:Ljava/lang/String;

    .line 45
    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/digikala/dms/helper/webservice/WebApiRequest;->mLoadRequestsInterface:Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;

    .line 47
    new-instance v10, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;

    invoke-direct {v10, p0, v1, v2}, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;-><init>(Lcom/digikala/dms/helper/webservice/WebApiRequest;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;)V

    .line 87
    .local v10, "responseListener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse<TT;>;>;"
    new-instance v11, Lcom/digikala/dms/helper/webservice/WebApiRequest$2;

    invoke-direct {v11, p0, v2}, Lcom/digikala/dms/helper/webservice/WebApiRequest$2;-><init>(Lcom/digikala/dms/helper/webservice/WebApiRequest;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;)V

    .line 99
    .local v11, "errorListener":Lcom/android/volley/Response$ErrorListener;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://lg.digikala.com/dms-api/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 100
    .local v12, "url":Ljava/lang/String;
    new-instance v13, Lcom/digikala/dms/helper/webservice/GsonRequest;

    move-object v5, v13

    move v6, p1

    move-object/from16 v7, p4

    move-object v8, v12

    move-object/from16 v9, p3

    invoke-direct/range {v5 .. v11}, Lcom/digikala/dms/helper/webservice/GsonRequest;-><init>(ILjava/lang/reflect/Type;Ljava/lang/String;Ljava/util/HashMap;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iput-object v13, v0, Lcom/digikala/dms/helper/webservice/WebApiRequest;->mGsonRequest:Lcom/digikala/dms/helper/webservice/GsonRequest;

    .line 101
    return-void
.end method

.method static synthetic access$100()Lcom/digikala/dms/helper/webservice/WebApiRequest$OnForceUpdateListener;
    .registers 1

    .line 34
    sget-object v0, Lcom/digikala/dms/helper/webservice/WebApiRequest;->mForceUpdateListener:Lcom/digikala/dms/helper/webservice/WebApiRequest$OnForceUpdateListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/digikala/dms/helper/webservice/WebApiRequest;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/helper/webservice/WebApiRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->startDownloadAPK(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/digikala/dms/helper/webservice/WebApiRequest;Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;)Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/helper/webservice/WebApiRequest;
    .param p1, "x1"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    .line 34
    iput-object p1, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest;->mStatus:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    return-object p1
.end method

.method static synthetic access$600(Lcom/digikala/dms/helper/webservice/WebApiRequest;)Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/helper/webservice/WebApiRequest;

    .line 34
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest;->mLoadRequestsInterface:Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;

    return-object v0
.end method

.method public static setOnForceUpdateReceived(Lcom/digikala/dms/helper/webservice/WebApiRequest$OnForceUpdateListener;)V
    .registers 1
    .param p0, "onForceUpdateListener"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$OnForceUpdateListener;

    .line 129
    sput-object p0, Lcom/digikala/dms/helper/webservice/WebApiRequest;->mForceUpdateListener:Lcom/digikala/dms/helper/webservice/WebApiRequest$OnForceUpdateListener;

    .line 130
    return-void
.end method

.method private startDownloadAPK(Ljava/lang/String;)V
    .registers 2
    .param p1, "linkUrl"    # Ljava/lang/String;

    .line 104
    .local p0, "this":Lcom/digikala/dms/helper/webservice/WebApiRequest;, "Lcom/digikala/dms/helper/webservice/WebApiRequest<TT;>;"
    invoke-static {p1}, Lcom/digikala/dms/util/DownloadManager;->download(Ljava/lang/String;)V

    .line 105
    return-void
.end method


# virtual methods
.method public attach()V
    .registers 3

    .line 116
    .local p0, "this":Lcom/digikala/dms/helper/webservice/WebApiRequest;, "Lcom/digikala/dms/helper/webservice/WebApiRequest<TT;>;"
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest;->mLoadRequestsInterface:Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;->addRequestToLoadList(Lcom/digikala/dms/helper/webservice/WebApiRequest;Z)V

    .line 117
    return-void
.end method

.method public attach(Z)V
    .registers 3
    .param p1, "loadDataOnResume"    # Z

    .line 120
    .local p0, "this":Lcom/digikala/dms/helper/webservice/WebApiRequest;, "Lcom/digikala/dms/helper/webservice/WebApiRequest<TT;>;"
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest;->mLoadRequestsInterface:Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;

    invoke-interface {v0, p0, p1}, Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;->addRequestToLoadList(Lcom/digikala/dms/helper/webservice/WebApiRequest;Z)V

    .line 121
    return-void
.end method

.method public getStatus()Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;
    .registers 2

    .line 108
    .local p0, "this":Lcom/digikala/dms/helper/webservice/WebApiRequest;, "Lcom/digikala/dms/helper/webservice/WebApiRequest<TT;>;"
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest;->mStatus:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    return-object v0
.end method

.method public send()V
    .registers 3

    .line 124
    .local p0, "this":Lcom/digikala/dms/helper/webservice/WebApiRequest;, "Lcom/digikala/dms/helper/webservice/WebApiRequest<TT;>;"
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest;->mGsonRequest:Lcom/digikala/dms/helper/webservice/GsonRequest;

    iget-object v1, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest;->mTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/webservice/VolleyHelper;->addToRequestQueue(Lcom/android/volley/Request;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;->SENT:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    iput-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest;->mStatus:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    .line 126
    return-void
.end method

.method public setStatus(Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;)V
    .registers 2
    .param p1, "status"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    .line 112
    .local p0, "this":Lcom/digikala/dms/helper/webservice/WebApiRequest;, "Lcom/digikala/dms/helper/webservice/WebApiRequest<TT;>;"
    iput-object p1, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest;->mStatus:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    .line 113
    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApiRequest.AnonymousClass1 (com.digikala.dms.helper.webservice.WebApiRequest$1)
.class Lcom/digikala/dms/helper/webservice/WebApiRequest$1;
.super Ljava/lang/Object;
.source "WebApiRequest.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApiRequest;-><init>(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/helper/webservice/WebApiRequest;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$webApiListener:Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# direct methods
.method constructor <init>(Lcom/digikala/dms/helper/webservice/WebApiRequest;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/digikala/dms/helper/webservice/WebApiRequest;

    .line 47
    .local p0, "this":Lcom/digikala/dms/helper/webservice/WebApiRequest$1;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$1;"
    iput-object p1, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;->this$0:Lcom/digikala/dms/helper/webservice/WebApiRequest;

    iput-object p2, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;->val$query:Ljava/lang/String;

    iput-object p3, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;->val$webApiListener:Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/digikala/dms/helper/webservice/WebApiRequest$1;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$1;"
    .local p1, "response":Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse<TT;>;"
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;->access$000(Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    if-eqz p1, :cond_97

    invoke-static {p1}, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;->access$000(Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_97

    invoke-static {p1}, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;->access$000(Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForceUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 54
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;->val$query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Driver/DriverConfirm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;->access$000(Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;->val$query:Ljava/lang/String;

    const-string v1, "Account/Login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;->val$query:Ljava/lang/String;

    const-string v1, "Driver/DriverConfirm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6c

    goto :goto_7e

    .line 60
    :cond_6c
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;->val$webApiListener:Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;

    invoke-static {p1}, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;->access$400(Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;->onResponse(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;->this$0:Lcom/digikala/dms/helper/webservice/WebApiRequest;

    sget-object v1, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;->SUCCESS:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->access$502(Lcom/digikala/dms/helper/webservice/WebApiRequest;Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;)Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    goto/16 :goto_11c

    .line 56
    :cond_7e
    :goto_7e
    invoke-static {}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->access$100()Lcom/digikala/dms/helper/webservice/WebApiRequest$OnForceUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/digikala/dms/helper/webservice/WebApiRequest$OnForceUpdateListener;->checkPermission()V

    .line 57
    invoke-static {}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->access$100()Lcom/digikala/dms/helper/webservice/WebApiRequest$OnForceUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/digikala/dms/helper/webservice/WebApiRequest$OnForceUpdateListener;->forceUpdate()V

    .line 58
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;->this$0:Lcom/digikala/dms/helper/webservice/WebApiRequest;

    invoke-static {p1}, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;->access$200(Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->access$300(Lcom/digikala/dms/helper/webservice/WebApiRequest;Ljava/lang/String;)V

    goto/16 :goto_11c

    .line 64
    :cond_97
    if-eqz p1, :cond_d7

    invoke-static {p1}, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;->access$000(Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptionalUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 65
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;->val$query:Ljava/lang/String;

    const-string v1, "Account/Login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 66
    invoke-static {}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->access$100()Lcom/digikala/dms/helper/webservice/WebApiRequest$OnForceUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/digikala/dms/helper/webservice/WebApiRequest$OnForceUpdateListener;->optionalUpdate()V

    .line 67
    invoke-static {}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->access$100()Lcom/digikala/dms/helper/webservice/WebApiRequest$OnForceUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/digikala/dms/helper/webservice/WebApiRequest$OnForceUpdateListener;->checkPermission()V

    .line 68
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;->this$0:Lcom/digikala/dms/helper/webservice/WebApiRequest;

    invoke-static {p1}, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;->access$200(Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->access$300(Lcom/digikala/dms/helper/webservice/WebApiRequest;Ljava/lang/String;)V

    .line 70
    :cond_c6
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;->val$webApiListener:Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;

    invoke-static {p1}, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;->access$400(Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;->onResponse(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;->this$0:Lcom/digikala/dms/helper/webservice/WebApiRequest;

    sget-object v1, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;->SUCCESS:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->access$502(Lcom/digikala/dms/helper/webservice/WebApiRequest;Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;)Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    goto :goto_11c

    .line 73
    :cond_d7
    if-eqz p1, :cond_f6

    invoke-static {p1}, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;->access$000(Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 74
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;->val$webApiListener:Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;

    invoke-static {p1}, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;->access$400(Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;->onResponse(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;->this$0:Lcom/digikala/dms/helper/webservice/WebApiRequest;

    sget-object v1, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;->SUCCESS:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->access$502(Lcom/digikala/dms/helper/webservice/WebApiRequest;Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;)Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    goto :goto_11c

    .line 77
    :cond_f6
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;->this$0:Lcom/digikala/dms/helper/webservice/WebApiRequest;

    sget-object v1, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;->ERROR:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->access$502(Lcom/digikala/dms/helper/webservice/WebApiRequest;Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;)Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    .line 78
    if-eqz p1, :cond_104

    invoke-static {p1}, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;->access$200(Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;)Ljava/lang/String;

    move-result-object v0

    goto :goto_106

    :cond_104
    const-string v0, "Volley Response is Null"

    .line 79
    .local v0, "errorMsg":Ljava/lang/String;
    :goto_106
    iget-object v1, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;->val$webApiListener:Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;

    invoke-interface {v1, v0}, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;->onErrorResponse(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;->this$0:Lcom/digikala/dms/helper/webservice/WebApiRequest;

    invoke-static {v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->access$600(Lcom/digikala/dms/helper/webservice/WebApiRequest;)Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;

    move-result-object v1

    if-eqz v1, :cond_11c

    .line 81
    iget-object v1, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;->this$0:Lcom/digikala/dms/helper/webservice/WebApiRequest;

    invoke-static {v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->access$600(Lcom/digikala/dms/helper/webservice/WebApiRequest;)Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;

    move-result-object v1

    invoke-interface {v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;->reloadRequests()V

    .line 84
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_11c
    :goto_11c
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 47
    .local p0, "this":Lcom/digikala/dms/helper/webservice/WebApiRequest$1;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$1;"
    check-cast p1, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/helper/webservice/WebApiRequest$1;->onResponse(Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;)V

    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApiRequest.AnonymousClass2 (com.digikala.dms.helper.webservice.WebApiRequest$2)
.class Lcom/digikala/dms/helper/webservice/WebApiRequest$2;
.super Ljava/lang/Object;
.source "WebApiRequest.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApiRequest;-><init>(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/helper/webservice/WebApiRequest;

.field final synthetic val$webApiListener:Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# direct methods
.method constructor <init>(Lcom/digikala/dms/helper/webservice/WebApiRequest;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/digikala/dms/helper/webservice/WebApiRequest;

    .line 87
    .local p0, "this":Lcom/digikala/dms/helper/webservice/WebApiRequest$2;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$2;"
    iput-object p1, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$2;->this$0:Lcom/digikala/dms/helper/webservice/WebApiRequest;

    iput-object p2, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$2;->val$webApiListener:Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 90
    .local p0, "this":Lcom/digikala/dms/helper/webservice/WebApiRequest$2;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$2;"
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$2;->this$0:Lcom/digikala/dms/helper/webservice/WebApiRequest;

    sget-object v1, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;->ERROR:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->access$502(Lcom/digikala/dms/helper/webservice/WebApiRequest;Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;)Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    .line 91
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/digikala/dms/util/Util;->getErrorMessage(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$2;->val$webApiListener:Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;

    invoke-interface {v1, v0}, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;->onErrorResponse(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$2;->this$0:Lcom/digikala/dms/helper/webservice/WebApiRequest;

    invoke-static {v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->access$600(Lcom/digikala/dms/helper/webservice/WebApiRequest;)Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 94
    iget-object v1, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$2;->this$0:Lcom/digikala/dms/helper/webservice/WebApiRequest;

    invoke-static {v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->access$600(Lcom/digikala/dms/helper/webservice/WebApiRequest;)Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;

    move-result-object v1

    invoke-interface {v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;->reloadRequests()V

    .line 96
    :cond_25
    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApiRequest.LoadRequests (com.digikala.dms.helper.webservice.WebApiRequest$LoadRequests)
.class public interface abstract Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;
.super Ljava/lang/Object;
.source "WebApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/helper/webservice/WebApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadRequests"
.end annotation


# virtual methods
.method public abstract addRequestToLoadList(Lcom/digikala/dms/helper/webservice/WebApiRequest;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest<",
            "*>;Z)V"
        }
    .end annotation
.end method

.method public abstract reloadRequests()V
.end method

###### Class com.digikala.dms.helper.webservice.WebApiRequest.OnForceUpdateListener (com.digikala.dms.helper.webservice.WebApiRequest$OnForceUpdateListener)
.class public interface abstract Lcom/digikala/dms/helper/webservice/WebApiRequest$OnForceUpdateListener;
.super Ljava/lang/Object;
.source "WebApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/helper/webservice/WebApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnForceUpdateListener"
.end annotation


# virtual methods
.method public abstract checkPermission()V
.end method

.method public abstract downloadComplete(Ljava/lang/String;)V
.end method

.method public abstract forceUpdate()V
.end method

.method public abstract optionalUpdate()V
.end method

###### Class com.digikala.dms.helper.webservice.WebApiRequest.RequestStatus (com.digikala.dms.helper.webservice.WebApiRequest$RequestStatus)
.class public final enum Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;
.super Ljava/lang/Enum;
.source "WebApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/helper/webservice/WebApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

.field public static final enum ERROR:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

.field public static final enum READY:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

.field public static final enum SENT:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

.field public static final enum SUCCESS:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 133
    new-instance v0, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;->READY:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    new-instance v0, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    const-string v1, "SENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;->SENT:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    new-instance v0, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    const-string v1, "SUCCESS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;->SUCCESS:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    new-instance v0, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    const-string v1, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;->ERROR:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    .line 132
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    sget-object v1, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;->READY:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;->SENT:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;->SUCCESS:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;->ERROR:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;->$VALUES:[Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 132
    const-class v0, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    return-object v0
.end method

.method public static values()[Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;
    .registers 1

    .line 132
    sget-object v0, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;->$VALUES:[Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    invoke-virtual {v0}, [Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    return-object v0
.end method

###### Class com.digikala.dms.helper.webservice.WebApiRequest.WebApiListener (com.digikala.dms.helper.webservice.WebApiRequest$WebApiListener)
.class public interface abstract Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;
.super Ljava/lang/Object;
.source "WebApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/helper/webservice/WebApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebApiListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onErrorResponse(Ljava/lang/String;)V
.end method

.method public abstract onResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation
.end method

###### Class com.digikala.dms.helper.webservice.WebApiRequest.WebApiResponse (com.digikala.dms.helper.webservice.WebApiRequest$WebApiResponse)
.class public Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;
.super Ljava/lang/Object;
.source "WebApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/helper/webservice/WebApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebApiResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final STATUS_ERROR:Ljava/lang/String; = "Error"

.field private static final STATUS_FAIL:Ljava/lang/String; = "Fail"

.field private static final STATUS_FORCE_UPDATE:Ljava/lang/String; = "ForceUpdate"

.field private static final STATUS_OPTIONAL_UPDATE:Ljava/lang/String; = "OptionalUpdate"

.field private static final STATUS_SUCCESS:Ljava/lang/String; = "Success"


# instance fields
.field private data:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Message"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 144
    .local p0, "this":Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;

    .line 144
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;

    .line 144
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;

    .line 144
    iget-object v0, p0, Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse;->data:Ljava/lang/Object;

    return-object v0
.end method
