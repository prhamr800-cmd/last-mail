###### Class io.realm.internal.network.ChangePasswordResponse (io.realm.internal.network.ChangePasswordResponse)
.class public Lio/realm/internal/network/ChangePasswordResponse;
.super Lio/realm/internal/network/AuthServerResponse;
.source "ChangePasswordResponse.java"


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Lio/realm/internal/network/AuthServerResponse;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/network/ChangePasswordResponse;->error:Lio/realm/ObjectServerError;

    .line 65
    return-void
.end method

.method private constructor <init>(Lio/realm/ObjectServerError;)V
    .registers 2
    .param p1, "error"    # Lio/realm/ObjectServerError;

    .line 67
    invoke-direct {p0}, Lio/realm/internal/network/AuthServerResponse;-><init>()V

    .line 68
    iput-object p1, p0, Lio/realm/internal/network/ChangePasswordResponse;->error:Lio/realm/ObjectServerError;

    .line 69
    return-void
.end method

.method public static from(Lio/realm/ObjectServerError;)Lio/realm/internal/network/ChangePasswordResponse;
    .registers 2
    .param p0, "objectServerError"    # Lio/realm/ObjectServerError;

    .line 53
    new-instance v0, Lio/realm/internal/network/ChangePasswordResponse;

    invoke-direct {v0, p0}, Lio/realm/internal/network/ChangePasswordResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object v0
.end method

.method public static from(Ljava/lang/Exception;)Lio/realm/internal/network/ChangePasswordResponse;
    .registers 3
    .param p0, "exception"    # Ljava/lang/Exception;

    .line 60
    new-instance v0, Lio/realm/ObjectServerError;

    invoke-static {p0}, Lio/realm/ErrorCode;->fromException(Ljava/lang/Exception;)Lio/realm/ErrorCode;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/realm/internal/network/ChangePasswordResponse;->from(Lio/realm/ObjectServerError;)Lio/realm/internal/network/ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method static from(Lokhttp3/Response;)Lio/realm/internal/network/ChangePasswordResponse;
    .registers 4
    .param p0, "response"    # Lokhttp3/Response;

    .line 37
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 38
    new-instance v0, Lio/realm/internal/network/ChangePasswordResponse;

    invoke-direct {v0}, Lio/realm/internal/network/ChangePasswordResponse;-><init>()V

    return-object v0

    .line 41
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "serverResponse":Ljava/lang/String;
    new-instance v1, Lio/realm/internal/network/ChangePasswordResponse;

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-static {v0, v2}, Lio/realm/internal/network/AuthServerResponse;->createError(Ljava/lang/String;I)Lio/realm/ObjectServerError;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/realm/internal/network/ChangePasswordResponse;-><init>(Lio/realm/ObjectServerError;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_21} :catch_22

    return-object v1

    .line 43
    .end local v0    # "serverResponse":Ljava/lang/String;
    :catch_22
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/realm/ObjectServerError;

    sget-object v2, Lio/realm/ErrorCode;->IO_EXCEPTION:Lio/realm/ErrorCode;

    invoke-direct {v1, v2, v0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    .line 45
    .local v1, "error":Lio/realm/ObjectServerError;
    new-instance v2, Lio/realm/internal/network/ChangePasswordResponse;

    invoke-direct {v2, v1}, Lio/realm/internal/network/ChangePasswordResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object v2
.end method
