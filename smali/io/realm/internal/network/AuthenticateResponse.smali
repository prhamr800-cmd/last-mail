###### Class io.realm.internal.network.AuthenticateResponse (io.realm.internal.network.AuthenticateResponse)
.class public Lio/realm/internal/network/AuthenticateResponse;
.super Lio/realm/internal/network/AuthServerResponse;
.source "AuthenticateResponse.java"


# static fields
.field private static final JSON_FIELD_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final JSON_FIELD_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"


# instance fields
.field private final accessToken:Lio/realm/internal/objectserver/Token;

.field private final refreshToken:Lio/realm/internal/objectserver/Token;


# direct methods
.method private constructor <init>(Lio/realm/ObjectServerError;)V
    .registers 4
    .param p1, "error"    # Lio/realm/ObjectServerError;

    .line 108
    invoke-direct {p0}, Lio/realm/internal/network/AuthServerResponse;-><init>()V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthenticateResponse - Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0, p1}, Lio/realm/internal/network/AuthenticateResponse;->setError(Lio/realm/ObjectServerError;)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/network/AuthenticateResponse;->accessToken:Lio/realm/internal/objectserver/Token;

    .line 112
    iput-object v0, p0, Lio/realm/internal/network/AuthenticateResponse;->refreshToken:Lio/realm/internal/objectserver/Token;

    .line 113
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 12
    .param p1, "serverResponse"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Lio/realm/internal/network/AuthServerResponse;-><init>()V

    .line 127
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "access_token"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1e

    .line 129
    const-string v3, "access_token"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lio/realm/internal/objectserver/Token;->from(Lorg/json/JSONObject;)Lio/realm/internal/objectserver/Token;

    move-result-object v3

    goto :goto_1f

    :cond_1e
    move-object v3, v4

    .line 130
    .local v3, "accessToken":Lio/realm/internal/objectserver/Token;
    :goto_1f
    const-string v5, "refresh_token"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 131
    const-string v4, "refresh_token"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lio/realm/internal/objectserver/Token;->from(Lorg/json/JSONObject;)Lio/realm/internal/objectserver/Token;

    move-result-object v4

    nop

    .line 132
    .local v4, "refreshToken":Lio/realm/internal/objectserver/Token;
    :cond_32
    const/4 v5, 0x0

    .line 133
    .local v5, "error":Lio/realm/ObjectServerError;
    if-nez v3, :cond_39

    .line 134
    const-string v6, "accessToken = null"

    move-object v0, v6

    goto :goto_51

    .line 136
    :cond_39
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Identity %s; Path %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lio/realm/internal/objectserver/Token;->identity()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v3}, Lio/realm/internal/objectserver/Token;->path()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_50} :catch_52

    move-object v0, v6

    .line 144
    .end local v2    # "obj":Lorg/json/JSONObject;
    .local v0, "message":Ljava/lang/String;
    :goto_51
    goto :goto_6c

    .line 138
    .end local v0    # "message":Ljava/lang/String;
    .end local v3    # "accessToken":Lio/realm/internal/objectserver/Token;
    .end local v4    # "refreshToken":Lio/realm/internal/objectserver/Token;
    .end local v5    # "error":Lio/realm/ObjectServerError;
    :catch_52
    move-exception v2

    .line 139
    .local v2, "ex":Lorg/json/JSONException;
    const/4 v3, 0x0

    .line 140
    .restart local v3    # "accessToken":Lio/realm/internal/objectserver/Token;
    const/4 v4, 0x0

    .line 142
    .restart local v4    # "refreshToken":Lio/realm/internal/objectserver/Token;
    new-instance v5, Lio/realm/ObjectServerError;

    sget-object v6, Lio/realm/ErrorCode;->JSON_EXCEPTION:Lio/realm/ErrorCode;

    invoke-direct {v5, v6, v2}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    .line 143
    .restart local v5    # "error":Lio/realm/ObjectServerError;
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Error %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v5}, Lio/realm/ObjectServerError;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v1

    invoke-static {v6, v7, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .end local v2    # "ex":Lorg/json/JSONException;
    .restart local v0    # "message":Ljava/lang/String;
    :goto_6c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AuthenticateResponse. "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p0, v5}, Lio/realm/internal/network/AuthenticateResponse;->setError(Lio/realm/ObjectServerError;)V

    .line 147
    iput-object v3, p0, Lio/realm/internal/network/AuthenticateResponse;->accessToken:Lio/realm/internal/objectserver/Token;

    .line 148
    iput-object v4, p0, Lio/realm/internal/network/AuthenticateResponse;->refreshToken:Lio/realm/internal/objectserver/Token;

    .line 149
    return-void
.end method

.method public static createValidResponseWithUser(Ljava/lang/String;Ljava/lang/String;Z)Lio/realm/internal/network/AuthenticateResponse;
    .registers 14
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "refreshToken"    # Ljava/lang/String;
    .param p2, "isAdmin"    # Z

    .line 94
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 95
    .local v0, "response":Lorg/json/JSONObject;
    const-string v1, "refresh_token"

    new-instance v10, Lio/realm/internal/objectserver/Token;

    const/4 v5, 0x0

    const-wide v6, 0x7fffffffffffffffL

    sget-object v8, Lio/realm/internal/objectserver/Token$Permission;->ALL:[Lio/realm/internal/objectserver/Token$Permission;

    move-object v2, v10

    move-object v3, p1

    move-object v4, p0

    move v9, p2

    invoke-direct/range {v2 .. v9}, Lio/realm/internal/objectserver/Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Lio/realm/internal/objectserver/Token$Permission;Z)V

    invoke-virtual {v10}, Lio/realm/internal/objectserver/Token;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    new-instance v1, Lio/realm/internal/network/AuthenticateResponse;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/realm/internal/network/AuthenticateResponse;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_28} :catch_29

    return-object v1

    .line 97
    .end local v0    # "response":Lorg/json/JSONObject;
    :catch_29
    move-exception v0

    .line 98
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static from(Lio/realm/ObjectServerError;)Lio/realm/internal/network/AuthenticateResponse;
    .registers 2
    .param p0, "error"    # Lio/realm/ObjectServerError;

    .line 75
    new-instance v0, Lio/realm/internal/network/AuthenticateResponse;

    invoke-direct {v0, p0}, Lio/realm/internal/network/AuthenticateResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object v0
.end method

.method public static from(Ljava/lang/Exception;)Lio/realm/internal/network/AuthenticateResponse;
    .registers 3
    .param p0, "exception"    # Ljava/lang/Exception;

    .line 82
    new-instance v0, Lio/realm/ObjectServerError;

    invoke-static {p0}, Lio/realm/ErrorCode;->fromException(Ljava/lang/Exception;)Lio/realm/ErrorCode;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/realm/internal/network/AuthenticateResponse;->from(Lio/realm/ObjectServerError;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lio/realm/internal/network/AuthenticateResponse;
    .registers 2
    .param p0, "json"    # Ljava/lang/String;

    .line 68
    new-instance v0, Lio/realm/internal/network/AuthenticateResponse;

    invoke-direct {v0, p0}, Lio/realm/internal/network/AuthenticateResponse;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static from(Lokhttp3/Response;)Lio/realm/internal/network/AuthenticateResponse;
    .registers 4
    .param p0, "response"    # Lokhttp3/Response;

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_24

    .line 56
    .local v0, "serverResponse":Ljava/lang/String;
    nop

    .line 55
    nop

    .line 57
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 58
    new-instance v1, Lio/realm/internal/network/AuthenticateResponse;

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-static {v0, v2}, Lio/realm/internal/network/AuthServerResponse;->createError(Ljava/lang/String;I)Lio/realm/ObjectServerError;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/realm/internal/network/AuthenticateResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object v1

    .line 60
    :cond_1e
    new-instance v1, Lio/realm/internal/network/AuthenticateResponse;

    invoke-direct {v1, v0}, Lio/realm/internal/network/AuthenticateResponse;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 53
    .end local v0    # "serverResponse":Ljava/lang/String;
    :catch_24
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/realm/ObjectServerError;

    sget-object v2, Lio/realm/ErrorCode;->IO_EXCEPTION:Lio/realm/ErrorCode;

    invoke-direct {v1, v2, v0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    .line 55
    .local v1, "error":Lio/realm/ObjectServerError;
    new-instance v2, Lio/realm/internal/network/AuthenticateResponse;

    invoke-direct {v2, v1}, Lio/realm/internal/network/AuthenticateResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object v2
.end method


# virtual methods
.method public getAccessToken()Lio/realm/internal/objectserver/Token;
    .registers 2

    .line 152
    iget-object v0, p0, Lio/realm/internal/network/AuthenticateResponse;->accessToken:Lio/realm/internal/objectserver/Token;

    return-object v0
.end method

.method public getRefreshToken()Lio/realm/internal/objectserver/Token;
    .registers 2

    .line 156
    iget-object v0, p0, Lio/realm/internal/network/AuthenticateResponse;->refreshToken:Lio/realm/internal/objectserver/Token;

    return-object v0
.end method
