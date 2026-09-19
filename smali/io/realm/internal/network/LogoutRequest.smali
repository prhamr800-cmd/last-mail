###### Class io.realm.internal.network.LogoutRequest (io.realm.internal.network.LogoutRequest)
.class public Lio/realm/internal/network/LogoutRequest;
.super Ljava/lang/Object;
.source "LogoutRequest.java"


# instance fields
.field private final token:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "token"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lio/realm/internal/network/LogoutRequest;->token:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static create(Lio/realm/internal/objectserver/Token;)Lio/realm/internal/network/LogoutRequest;
    .registers 3
    .param p0, "userToken"    # Lio/realm/internal/objectserver/Token;

    .line 33
    new-instance v0, Lio/realm/internal/network/LogoutRequest;

    invoke-virtual {p0}, Lio/realm/internal/objectserver/Token;->value()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/realm/internal/network/LogoutRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .registers 4

    .line 45
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    .local v0, "request":Lorg/json/JSONObject;
    const-string/jumbo v1, "token"

    iget-object v2, p0, Lio/realm/internal/network/LogoutRequest;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 48
    .end local v0    # "request":Lorg/json/JSONObject;
    :catch_12
    move-exception v0

    .line 49
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
