###### Class io.realm.internal.network.AuthenticateRequest (io.realm.internal.network.AuthenticateRequest)
.class public Lio/realm/internal/network/AuthenticateRequest;
.super Ljava/lang/Object;
.source "AuthenticateRequest.java"


# instance fields
.field private final appId:Ljava/lang/String;

.field private final data:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final provider:Ljava/lang/String;

.field private final userInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p5, "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lio/realm/internal/network/AuthenticateRequest;->provider:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lio/realm/internal/network/AuthenticateRequest;->data:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lio/realm/internal/network/AuthenticateRequest;->appId:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lio/realm/internal/network/AuthenticateRequest;->path:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lio/realm/internal/network/AuthenticateRequest;->userInfo:Ljava/util/Map;

    .line 87
    return-void
.end method

.method public static realmLogin(Lio/realm/internal/objectserver/Token;Ljava/lang/String;)Lio/realm/internal/network/AuthenticateRequest;
    .registers 9
    .param p0, "userToken"    # Lio/realm/internal/objectserver/Token;
    .param p1, "serverUrl"    # Ljava/lang/String;

    .line 73
    new-instance v6, Lio/realm/internal/network/AuthenticateRequest;

    const-string v1, "realm"

    .line 74
    invoke-virtual {p0}, Lio/realm/internal/objectserver/Token;->value()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/realm/SyncManager;->APP_ID:Ljava/lang/String;

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/network/AuthenticateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 73
    return-object v6
.end method

.method public static userLogin(Lio/realm/SyncCredentials;)Lio/realm/internal/network/AuthenticateRequest;
    .registers 12
    .param p0, "credentials"    # Lio/realm/SyncCredentials;

    .line 46
    if-eqz p0, :cond_1c

    .line 49
    invoke-virtual {p0}, Lio/realm/SyncCredentials;->getIdentityProvider()Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, "provider":Ljava/lang/String;
    invoke-virtual {p0}, Lio/realm/SyncCredentials;->getUserIdentifier()Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, "data":Ljava/lang/String;
    invoke-virtual {p0}, Lio/realm/SyncCredentials;->getUserInfo()Ljava/util/Map;

    move-result-object v8

    .line 52
    .local v8, "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v9, Lio/realm/SyncManager;->APP_ID:Ljava/lang/String;

    .line 53
    .local v9, "appId":Ljava/lang/String;
    new-instance v10, Lio/realm/internal/network/AuthenticateRequest;

    const/4 v4, 0x0

    move-object v0, v10

    move-object v1, v6

    move-object v2, v7

    move-object v3, v9

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/network/AuthenticateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v10

    .line 47
    .end local v6    # "provider":Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    .end local v8    # "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "appId":Ljava/lang/String;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null credentials required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static userRefresh(Lio/realm/internal/objectserver/Token;Ljava/lang/String;)Lio/realm/internal/network/AuthenticateRequest;
    .registers 9
    .param p0, "userToken"    # Lio/realm/internal/objectserver/Token;
    .param p1, "serverUrl"    # Ljava/lang/String;

    .line 60
    new-instance v6, Lio/realm/internal/network/AuthenticateRequest;

    const-string v1, "realm"

    .line 61
    invoke-virtual {p0}, Lio/realm/internal/objectserver/Token;->value()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/realm/SyncManager;->APP_ID:Ljava/lang/String;

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/network/AuthenticateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 60
    return-object v6
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .registers 5

    .line 93
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 95
    .local v0, "request":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "provider"

    iget-object v2, p0, Lio/realm/internal/network/AuthenticateRequest;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v1, "data"

    iget-object v2, p0, Lio/realm/internal/network/AuthenticateRequest;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v1, "app_id"

    iget-object v2, p0, Lio/realm/internal/network/AuthenticateRequest;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    iget-object v1, p0, Lio/realm/internal/network/AuthenticateRequest;->path:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 99
    const-string v1, "path"

    iget-object v2, p0, Lio/realm/internal/network/AuthenticateRequest;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :cond_25
    const-string/jumbo v1, "user_info"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lio/realm/internal/network/AuthenticateRequest;->userInfo:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_32} :catch_38

    .line 104
    nop

    .line 106
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 102
    :catch_38
    move-exception v1

    .line 103
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
