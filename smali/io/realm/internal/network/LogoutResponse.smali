###### Class io.realm.internal.network.LogoutResponse (io.realm.internal.network.LogoutResponse)
.class public Lio/realm/internal/network/LogoutResponse;
.super Lio/realm/internal/network/AuthServerResponse;
.source "LogoutResponse.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 80
    invoke-direct {p0}, Lio/realm/internal/network/AuthServerResponse;-><init>()V

    .line 81
    const-string v0, "Logout response - Success"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/realm/internal/network/LogoutResponse;->setError(Lio/realm/ObjectServerError;)V

    .line 83
    return-void
.end method

.method private constructor <init>(Lio/realm/ObjectServerError;)V
    .registers 4
    .param p1, "error"    # Lio/realm/ObjectServerError;

    .line 72
    invoke-direct {p0}, Lio/realm/internal/network/AuthServerResponse;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logout response - Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/realm/ObjectServerError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0, p1}, Lio/realm/internal/network/LogoutResponse;->setError(Lio/realm/ObjectServerError;)V

    .line 75
    return-void
.end method

.method public static from(Lio/realm/ObjectServerError;)Lio/realm/internal/network/LogoutResponse;
    .registers 2
    .param p0, "error"    # Lio/realm/ObjectServerError;

    .line 56
    new-instance v0, Lio/realm/internal/network/LogoutResponse;

    invoke-direct {v0, p0}, Lio/realm/internal/network/LogoutResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object v0
.end method

.method public static from(Ljava/lang/Exception;)Lio/realm/internal/network/LogoutResponse;
    .registers 3
    .param p0, "exception"    # Ljava/lang/Exception;

    .line 63
    new-instance v0, Lio/realm/ObjectServerError;

    invoke-static {p0}, Lio/realm/ErrorCode;->fromException(Ljava/lang/Exception;)Lio/realm/ErrorCode;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/realm/internal/network/LogoutResponse;->from(Lio/realm/ObjectServerError;)Lio/realm/internal/network/LogoutResponse;

    move-result-object v0

    return-object v0
.end method

.method static from(Lokhttp3/Response;)Lio/realm/internal/network/LogoutResponse;
    .registers 4
    .param p0, "response"    # Lokhttp3/Response;

    .line 39
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 41
    new-instance v0, Lio/realm/internal/network/LogoutResponse;

    invoke-direct {v0}, Lio/realm/internal/network/LogoutResponse;-><init>()V

    return-object v0

    .line 44
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "serverResponse":Ljava/lang/String;
    new-instance v1, Lio/realm/internal/network/LogoutResponse;

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-static {v0, v2}, Lio/realm/internal/network/AuthServerResponse;->createError(Ljava/lang/String;I)Lio/realm/ObjectServerError;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/realm/internal/network/LogoutResponse;-><init>(Lio/realm/ObjectServerError;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_21} :catch_22

    return-object v1

    .line 46
    .end local v0    # "serverResponse":Ljava/lang/String;
    :catch_22
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/realm/ObjectServerError;

    sget-object v2, Lio/realm/ErrorCode;->IO_EXCEPTION:Lio/realm/ErrorCode;

    invoke-direct {v1, v2, v0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    .line 48
    .local v1, "error":Lio/realm/ObjectServerError;
    new-instance v2, Lio/realm/internal/network/LogoutResponse;

    invoke-direct {v2, v1}, Lio/realm/internal/network/LogoutResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object v2
.end method


# virtual methods
.method public isValid()Z
    .registers 3

    .line 92
    iget-object v0, p0, Lio/realm/internal/network/LogoutResponse;->error:Lio/realm/ObjectServerError;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lio/realm/internal/network/LogoutResponse;->error:Lio/realm/ObjectServerError;

    invoke-virtual {v0}, Lio/realm/ObjectServerError;->getErrorCode()Lio/realm/ErrorCode;

    move-result-object v0

    sget-object v1, Lio/realm/ErrorCode;->EXPIRED_REFRESH_TOKEN:Lio/realm/ErrorCode;

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method
