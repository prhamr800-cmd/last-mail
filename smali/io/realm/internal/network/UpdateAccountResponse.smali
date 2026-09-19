###### Class io.realm.internal.network.UpdateAccountResponse (io.realm.internal.network.UpdateAccountResponse)
.class public Lio/realm/internal/network/UpdateAccountResponse;
.super Lio/realm/internal/network/AuthServerResponse;
.source "UpdateAccountResponse.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Lio/realm/internal/network/AuthServerResponse;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Lio/realm/ObjectServerError;)V
    .registers 2
    .param p1, "error"    # Lio/realm/ObjectServerError;

    .line 51
    invoke-direct {p0}, Lio/realm/internal/network/AuthServerResponse;-><init>()V

    .line 52
    iput-object p1, p0, Lio/realm/internal/network/UpdateAccountResponse;->error:Lio/realm/ObjectServerError;

    .line 53
    return-void
.end method

.method public static from(Ljava/lang/Exception;)Lio/realm/internal/network/UpdateAccountResponse;
    .registers 4
    .param p0, "exception"    # Ljava/lang/Exception;

    .line 31
    new-instance v0, Lio/realm/internal/network/UpdateAccountResponse;

    new-instance v1, Lio/realm/ObjectServerError;

    invoke-static {p0}, Lio/realm/ErrorCode;->fromException(Ljava/lang/Exception;)Lio/realm/ErrorCode;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lio/realm/internal/network/UpdateAccountResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object v0
.end method

.method public static from(Lokhttp3/Response;)Lio/realm/internal/network/UpdateAccountResponse;
    .registers 4
    .param p0, "response"    # Lokhttp3/Response;

    .line 35
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 36
    new-instance v0, Lio/realm/internal/network/UpdateAccountResponse;

    invoke-direct {v0}, Lio/realm/internal/network/UpdateAccountResponse;-><init>()V

    return-object v0

    .line 39
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "serverResponse":Ljava/lang/String;
    new-instance v1, Lio/realm/internal/network/UpdateAccountResponse;

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-static {v0, v2}, Lio/realm/internal/network/AuthServerResponse;->createError(Ljava/lang/String;I)Lio/realm/ObjectServerError;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/realm/internal/network/UpdateAccountResponse;-><init>(Lio/realm/ObjectServerError;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_21} :catch_22

    return-object v1

    .line 41
    .end local v0    # "serverResponse":Ljava/lang/String;
    :catch_22
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/realm/ObjectServerError;

    sget-object v2, Lio/realm/ErrorCode;->IO_EXCEPTION:Lio/realm/ErrorCode;

    invoke-direct {v1, v2, v0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    .line 43
    .local v1, "error":Lio/realm/ObjectServerError;
    new-instance v2, Lio/realm/internal/network/UpdateAccountResponse;

    invoke-direct {v2, v1}, Lio/realm/internal/network/UpdateAccountResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object v2
.end method
