###### Class io.realm.internal.network.AuthServerResponse (io.realm.internal.network.AuthServerResponse)
.class public abstract Lio/realm/internal/network/AuthServerResponse;
.super Ljava/lang/Object;
.source "AuthServerResponse.java"


# instance fields
.field protected error:Lio/realm/ObjectServerError;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createError(Ljava/lang/String;I)Lio/realm/ObjectServerError;
    .registers 7
    .param p0, "response"    # Ljava/lang/String;
    .param p1, "httpErrorCode"    # I

    .line 63
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "obj":Lorg/json/JSONObject;
    const-string/jumbo v1, "title"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "title":Ljava/lang/String;
    const-string v3, "hint"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "hint":Ljava/lang/String;
    const-string v3, "code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 68
    const-string v3, "code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lio/realm/ErrorCode;->fromInt(I)Lio/realm/ErrorCode;

    move-result-object v3

    goto :goto_3b

    .line 69
    :cond_26
    const-string v3, "status"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 70
    const-string v3, "status"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lio/realm/ErrorCode;->fromInt(I)Lio/realm/ErrorCode;

    move-result-object v3

    goto :goto_3b

    .line 72
    :cond_39
    sget-object v3, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    .line 74
    .local v3, "errorCode":Lio/realm/ErrorCode;
    :goto_3b
    new-instance v4, Lio/realm/ObjectServerError;

    invoke-direct {v4, v3, v1, v2}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_40} :catch_41

    return-object v4

    .line 75
    .end local v0    # "obj":Lorg/json/JSONObject;
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "hint":Ljava/lang/String;
    .end local v3    # "errorCode":Lio/realm/ErrorCode;
    :catch_41
    move-exception v0

    .line 76
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lio/realm/ObjectServerError;

    sget-object v2, Lio/realm/ErrorCode;->JSON_EXCEPTION:Lio/realm/ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", but could not parse error."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method


# virtual methods
.method public getError()Lio/realm/ObjectServerError;
    .registers 2

    .line 46
    iget-object v0, p0, Lio/realm/internal/network/AuthServerResponse;->error:Lio/realm/ObjectServerError;

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    .line 37
    iget-object v0, p0, Lio/realm/internal/network/AuthServerResponse;->error:Lio/realm/ObjectServerError;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected setError(Lio/realm/ObjectServerError;)V
    .registers 2
    .param p1, "error"    # Lio/realm/ObjectServerError;

    .line 50
    iput-object p1, p0, Lio/realm/internal/network/AuthServerResponse;->error:Lio/realm/ObjectServerError;

    .line 51
    return-void
.end method
