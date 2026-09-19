###### Class io.realm.internal.network.OkHttpAuthenticationServer (io.realm.internal.network.OkHttpAuthenticationServer)
.class public Lio/realm/internal/network/OkHttpAuthenticationServer;
.super Ljava/lang/Object;
.source "OkHttpAuthenticationServer.java"

# interfaces
.implements Lio/realm/internal/network/AuthenticationServer;


# static fields
.field private static final ACTION_CHANGE_PASSWORD:Ljava/lang/String; = "password"

.field private static final ACTION_LOGOUT:Ljava/lang/String; = "revoke"

.field private static final ACTION_LOOKUP_USER_ID:Ljava/lang/String; = "users/:provider:/:providerId:"

.field private static final ACTION_UPDATE_ACCOUNT:Ljava/lang/String; = "password/updateAccount"

.field public static final JSON:Lokhttp3/MediaType;


# instance fields
.field private final client:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lio/realm/internal/network/OkHttpAuthenticationServer;->JSON:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 45
    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 47
    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lokhttp3/ConnectionPool;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x5

    const-wide/16 v4, 0x5

    invoke-direct {v1, v3, v4, v5, v2}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 51
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lio/realm/internal/network/OkHttpAuthenticationServer;->client:Lokhttp3/OkHttpClient;

    .line 44
    return-void
.end method

.method private authenticate(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/AuthenticateResponse;
    .registers 7
    .param p1, "authenticationUrl"    # Ljava/net/URL;
    .param p2, "requestBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network request (authenticate): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-direct {p0, p1}, Lio/realm/internal/network/OkHttpAuthenticationServer;->newAuthRequest(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v1, Lio/realm/internal/network/OkHttpAuthenticationServer;->JSON:Lokhttp3/MediaType;

    .line 183
    invoke-static {v1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 185
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lio/realm/internal/network/OkHttpAuthenticationServer;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    .line 186
    .local v1, "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    .line 187
    .local v2, "response":Lokhttp3/Response;
    invoke-static {v2}, Lio/realm/internal/network/AuthenticateResponse;->from(Lokhttp3/Response;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object v3

    return-object v3
.end method

.method private static buildActionUrl(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .registers 6
    .param p0, "authenticationUrl"    # Ljava/net/URL;
    .param p1, "action"    # Ljava/lang/String;

    .line 171
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "baseUrlString":Ljava/lang/String;
    :try_start_4
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, ""

    goto :goto_11

    :cond_f
    const-string v1, "/"

    .line 174
    .local v1, "separator":Ljava/lang/String;
    :goto_11
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_28} :catch_29

    return-object v2

    .line 175
    .end local v1    # "separator":Ljava/lang/String;
    :catch_29
    move-exception v1

    .line 176
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private changePassword(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Lio/realm/internal/network/ChangePasswordResponse;
    .registers 8
    .param p1, "changePasswordUrl"    # Ljava/net/URL;
    .param p2, "authToken"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network request (changePassword): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    invoke-direct {p0, p1, p2}, Lio/realm/internal/network/OkHttpAuthenticationServer;->newAuthRequest(Ljava/net/URL;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v1, Lio/realm/internal/network/OkHttpAuthenticationServer;->JSON:Lokhttp3/MediaType;

    .line 203
    invoke-static {v1, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 205
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lio/realm/internal/network/OkHttpAuthenticationServer;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    .line 206
    .local v1, "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    .line 207
    .local v2, "response":Lokhttp3/Response;
    invoke-static {v2}, Lio/realm/internal/network/ChangePasswordResponse;->from(Lokhttp3/Response;)Lio/realm/internal/network/ChangePasswordResponse;

    move-result-object v3

    return-object v3
.end method

.method private logout(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Lio/realm/internal/network/LogoutResponse;
    .registers 8
    .param p1, "logoutUrl"    # Ljava/net/URL;
    .param p2, "authToken"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network request (logout): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-direct {p0, p1, p2}, Lio/realm/internal/network/OkHttpAuthenticationServer;->newAuthRequest(Ljava/net/URL;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v1, Lio/realm/internal/network/OkHttpAuthenticationServer;->JSON:Lokhttp3/MediaType;

    .line 193
    invoke-static {v1, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 195
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lio/realm/internal/network/OkHttpAuthenticationServer;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    .line 196
    .local v1, "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    .line 197
    .local v2, "response":Lokhttp3/Response;
    invoke-static {v2}, Lio/realm/internal/network/LogoutResponse;->from(Lokhttp3/Response;)Lio/realm/internal/network/LogoutResponse;

    move-result-object v3

    return-object v3
.end method

.method private lookupUserId(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/LookupUserIdResponse;
    .registers 7
    .param p1, "lookupUserIdUrl"    # Ljava/net/URL;
    .param p2, "authToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network request (lookupUserId): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-direct {p0, p1, p2}, Lio/realm/internal/network/OkHttpAuthenticationServer;->newAuthRequest(Ljava/net/URL;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 215
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lio/realm/internal/network/OkHttpAuthenticationServer;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    .line 216
    .local v1, "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    .line 217
    .local v2, "response":Lokhttp3/Response;
    invoke-static {v2}, Lio/realm/internal/network/LookupUserIdResponse;->from(Lokhttp3/Response;)Lio/realm/internal/network/LookupUserIdResponse;

    move-result-object v3

    return-object v3
.end method

.method private newAuthRequest(Ljava/net/URL;)Lokhttp3/Request$Builder;
    .registers 3
    .param p1, "url"    # Ljava/net/URL;

    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/realm/internal/network/OkHttpAuthenticationServer;->newAuthRequest(Ljava/net/URL;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method private newAuthRequest(Ljava/net/URL;Ljava/lang/String;)Lokhttp3/Request$Builder;
    .registers 6
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "authToken"    # Ljava/lang/String;

    .line 235
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 236
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 237
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Accept"

    const-string v2, "application/json"

    .line 238
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 241
    .local v0, "builder":Lokhttp3/Request$Builder;
    invoke-static {p2}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 242
    const-string v1, "Authorization"

    invoke-virtual {v0, v1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 245
    :cond_24
    return-object v0
.end method

.method private updateAccount(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/UpdateAccountResponse;
    .registers 7
    .param p1, "updateAccountUrl"    # Ljava/net/URL;
    .param p2, "requestBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network request (updateAccount): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-direct {p0, p1}, Lio/realm/internal/network/OkHttpAuthenticationServer;->newAuthRequest(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v1, Lio/realm/internal/network/OkHttpAuthenticationServer;->JSON:Lokhttp3/MediaType;

    .line 223
    invoke-static {v1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 225
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lio/realm/internal/network/OkHttpAuthenticationServer;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    .line 226
    .local v1, "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    .line 227
    .local v2, "response":Lokhttp3/Response;
    invoke-static {v2}, Lio/realm/internal/network/UpdateAccountResponse;->from(Lokhttp3/Response;)Lio/realm/internal/network/UpdateAccountResponse;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public changePassword(Lio/realm/internal/objectserver/Token;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/ChangePasswordResponse;
    .registers 8
    .param p1, "adminToken"    # Lio/realm/internal/objectserver/Token;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "authenticationUrl"    # Ljava/net/URL;

    .line 110
    :try_start_0
    invoke-static {p1, p2, p3}, Lio/realm/internal/network/ChangePasswordRequest;->create(Lio/realm/internal/objectserver/Token;Ljava/lang/String;Ljava/lang/String;)Lio/realm/internal/network/ChangePasswordRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/network/ChangePasswordRequest;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "requestBody":Ljava/lang/String;
    const-string v1, "password"

    invoke-static {p4, v1}, Lio/realm/internal/network/OkHttpAuthenticationServer;->buildActionUrl(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/objectserver/Token;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lio/realm/internal/network/OkHttpAuthenticationServer;->changePassword(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Lio/realm/internal/network/ChangePasswordResponse;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-object v1

    .line 112
    .end local v0    # "requestBody":Ljava/lang/String;
    :catch_17
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lio/realm/internal/network/ChangePasswordResponse;->from(Ljava/lang/Exception;)Lio/realm/internal/network/ChangePasswordResponse;

    move-result-object v1

    return-object v1
.end method

.method public changePassword(Lio/realm/internal/objectserver/Token;Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/ChangePasswordResponse;
    .registers 7
    .param p1, "userToken"    # Lio/realm/internal/objectserver/Token;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "authenticationUrl"    # Ljava/net/URL;

    .line 100
    :try_start_0
    invoke-static {p1, p2}, Lio/realm/internal/network/ChangePasswordRequest;->create(Lio/realm/internal/objectserver/Token;Ljava/lang/String;)Lio/realm/internal/network/ChangePasswordRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/network/ChangePasswordRequest;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "requestBody":Ljava/lang/String;
    const-string v1, "password"

    invoke-static {p3, v1}, Lio/realm/internal/network/OkHttpAuthenticationServer;->buildActionUrl(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/objectserver/Token;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lio/realm/internal/network/OkHttpAuthenticationServer;->changePassword(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Lio/realm/internal/network/ChangePasswordResponse;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-object v1

    .line 102
    .end local v0    # "requestBody":Ljava/lang/String;
    :catch_17
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lio/realm/internal/network/ChangePasswordResponse;->from(Ljava/lang/Exception;)Lio/realm/internal/network/ChangePasswordResponse;

    move-result-object v1

    return-object v1
.end method

.method public completePasswordReset(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/UpdateAccountResponse;
    .registers 6
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "authenticationUrl"    # Ljava/net/URL;

    .line 142
    :try_start_0
    invoke-static {p1, p2}, Lio/realm/internal/network/UpdateAccountRequest;->completePasswordReset(Ljava/lang/String;Ljava/lang/String;)Lio/realm/internal/network/UpdateAccountRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/network/UpdateAccountRequest;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "requestBody":Ljava/lang/String;
    const-string v1, "password/updateAccount"

    invoke-static {p3, v1}, Lio/realm/internal/network/OkHttpAuthenticationServer;->buildActionUrl(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lio/realm/internal/network/OkHttpAuthenticationServer;->updateAccount(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/UpdateAccountResponse;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object v1

    .line 144
    .end local v0    # "requestBody":Ljava/lang/String;
    :catch_13
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lio/realm/internal/network/UpdateAccountResponse;->from(Ljava/lang/Exception;)Lio/realm/internal/network/UpdateAccountResponse;

    move-result-object v1

    return-object v1
.end method

.method public confirmEmail(Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/UpdateAccountResponse;
    .registers 5
    .param p1, "confirmationToken"    # Ljava/lang/String;
    .param p2, "authenticationUrl"    # Ljava/net/URL;

    .line 162
    :try_start_0
    invoke-static {p1}, Lio/realm/internal/network/UpdateAccountRequest;->completeEmailConfirmation(Ljava/lang/String;)Lio/realm/internal/network/UpdateAccountRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/network/UpdateAccountRequest;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "requestBody":Ljava/lang/String;
    const-string v1, "password/updateAccount"

    invoke-static {p2, v1}, Lio/realm/internal/network/OkHttpAuthenticationServer;->buildActionUrl(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lio/realm/internal/network/OkHttpAuthenticationServer;->updateAccount(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/UpdateAccountResponse;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object v1

    .line 164
    .end local v0    # "requestBody":Ljava/lang/String;
    :catch_13
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lio/realm/internal/network/UpdateAccountResponse;->from(Ljava/lang/Exception;)Lio/realm/internal/network/UpdateAccountResponse;

    move-result-object v1

    return-object v1
.end method

.method public loginToRealm(Lio/realm/internal/objectserver/Token;Ljava/net/URI;Ljava/net/URL;)Lio/realm/internal/network/AuthenticateResponse;
    .registers 6
    .param p1, "refreshToken"    # Lio/realm/internal/objectserver/Token;
    .param p2, "serverUrl"    # Ljava/net/URI;
    .param p3, "authenticationUrl"    # Ljava/net/URL;

    .line 70
    :try_start_0
    invoke-virtual {p2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/realm/internal/network/AuthenticateRequest;->realmLogin(Lio/realm/internal/objectserver/Token;Ljava/lang/String;)Lio/realm/internal/network/AuthenticateRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/network/AuthenticateRequest;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "requestBody":Ljava/lang/String;
    invoke-direct {p0, p3, v0}, Lio/realm/internal/network/OkHttpAuthenticationServer;->authenticate(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object v1

    .line 72
    .end local v0    # "requestBody":Ljava/lang/String;
    :catch_11
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lio/realm/internal/network/AuthenticateResponse;->from(Ljava/lang/Exception;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object v1

    return-object v1
.end method

.method public loginUser(Lio/realm/SyncCredentials;Ljava/net/URL;)Lio/realm/internal/network/AuthenticateResponse;
    .registers 5
    .param p1, "credentials"    # Lio/realm/SyncCredentials;
    .param p2, "authenticationUrl"    # Ljava/net/URL;

    .line 60
    :try_start_0
    invoke-static {p1}, Lio/realm/internal/network/AuthenticateRequest;->userLogin(Lio/realm/SyncCredentials;)Lio/realm/internal/network/AuthenticateRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/network/AuthenticateRequest;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "requestBody":Ljava/lang/String;
    invoke-direct {p0, p2, v0}, Lio/realm/internal/network/OkHttpAuthenticationServer;->authenticate(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v1

    .line 62
    .end local v0    # "requestBody":Ljava/lang/String;
    :catch_d
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lio/realm/internal/network/AuthenticateResponse;->from(Ljava/lang/Exception;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object v1

    return-object v1
.end method

.method public logout(Lio/realm/internal/objectserver/Token;Ljava/net/URL;)Lio/realm/internal/network/LogoutResponse;
    .registers 6
    .param p1, "userToken"    # Lio/realm/internal/objectserver/Token;
    .param p2, "authenticationUrl"    # Ljava/net/URL;

    .line 90
    :try_start_0
    invoke-static {p1}, Lio/realm/internal/network/LogoutRequest;->create(Lio/realm/internal/objectserver/Token;)Lio/realm/internal/network/LogoutRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/network/LogoutRequest;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "requestBody":Ljava/lang/String;
    const-string v1, "revoke"

    invoke-static {p2, v1}, Lio/realm/internal/network/OkHttpAuthenticationServer;->buildActionUrl(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/objectserver/Token;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lio/realm/internal/network/OkHttpAuthenticationServer;->logout(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Lio/realm/internal/network/LogoutResponse;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-object v1

    .line 92
    .end local v0    # "requestBody":Ljava/lang/String;
    :catch_17
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lio/realm/internal/network/LogoutResponse;->from(Ljava/lang/Exception;)Lio/realm/internal/network/LogoutResponse;

    move-result-object v1

    return-object v1
.end method

.method public refreshUser(Lio/realm/internal/objectserver/Token;Ljava/net/URI;Ljava/net/URL;)Lio/realm/internal/network/AuthenticateResponse;
    .registers 6
    .param p1, "userToken"    # Lio/realm/internal/objectserver/Token;
    .param p2, "serverUrl"    # Ljava/net/URI;
    .param p3, "authenticationUrl"    # Ljava/net/URL;

    .line 80
    :try_start_0
    invoke-virtual {p2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/realm/internal/network/AuthenticateRequest;->userRefresh(Lio/realm/internal/objectserver/Token;Ljava/lang/String;)Lio/realm/internal/network/AuthenticateRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/network/AuthenticateRequest;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "requestBody":Ljava/lang/String;
    invoke-direct {p0, p3, v0}, Lio/realm/internal/network/OkHttpAuthenticationServer;->authenticate(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object v1

    .line 82
    .end local v0    # "requestBody":Ljava/lang/String;
    :catch_11
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lio/realm/internal/network/AuthenticateResponse;->from(Ljava/lang/Exception;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object v1

    return-object v1
.end method

.method public requestEmailConfirmation(Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/UpdateAccountResponse;
    .registers 5
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "authenticationUrl"    # Ljava/net/URL;

    .line 152
    :try_start_0
    invoke-static {p1}, Lio/realm/internal/network/UpdateAccountRequest;->requestEmailConfirmation(Ljava/lang/String;)Lio/realm/internal/network/UpdateAccountRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/network/UpdateAccountRequest;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "requestBody":Ljava/lang/String;
    const-string v1, "password/updateAccount"

    invoke-static {p2, v1}, Lio/realm/internal/network/OkHttpAuthenticationServer;->buildActionUrl(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lio/realm/internal/network/OkHttpAuthenticationServer;->updateAccount(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/UpdateAccountResponse;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object v1

    .line 154
    .end local v0    # "requestBody":Ljava/lang/String;
    :catch_13
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lio/realm/internal/network/UpdateAccountResponse;->from(Ljava/lang/Exception;)Lio/realm/internal/network/UpdateAccountResponse;

    move-result-object v1

    return-object v1
.end method

.method public requestPasswordReset(Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/UpdateAccountResponse;
    .registers 5
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "authenticationUrl"    # Ljava/net/URL;

    .line 132
    :try_start_0
    invoke-static {p1}, Lio/realm/internal/network/UpdateAccountRequest;->requestPasswordReset(Ljava/lang/String;)Lio/realm/internal/network/UpdateAccountRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/network/UpdateAccountRequest;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "requestBody":Ljava/lang/String;
    const-string v1, "password/updateAccount"

    invoke-static {p2, v1}, Lio/realm/internal/network/OkHttpAuthenticationServer;->buildActionUrl(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lio/realm/internal/network/OkHttpAuthenticationServer;->updateAccount(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/UpdateAccountResponse;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object v1

    .line 134
    .end local v0    # "requestBody":Ljava/lang/String;
    :catch_13
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lio/realm/internal/network/UpdateAccountResponse;->from(Ljava/lang/Exception;)Lio/realm/internal/network/UpdateAccountResponse;

    move-result-object v1

    return-object v1
.end method

.method public retrieveUser(Lio/realm/internal/objectserver/Token;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/LookupUserIdResponse;
    .registers 8
    .param p1, "adminToken"    # Lio/realm/internal/objectserver/Token;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "providerId"    # Ljava/lang/String;
    .param p4, "authenticationUrl"    # Ljava/net/URL;

    .line 120
    :try_start_0
    const-string/jumbo v0, "users/:provider:/:providerId:"

    const-string v1, ":provider:"

    .line 121
    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":providerId:"

    .line 122
    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "action":Ljava/lang/String;
    invoke-static {p4, v0}, Lio/realm/internal/network/OkHttpAuthenticationServer;->buildActionUrl(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/objectserver/Token;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/realm/internal/network/OkHttpAuthenticationServer;->lookupUserId(Ljava/net/URL;Ljava/lang/String;)Lio/realm/internal/network/LookupUserIdResponse;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object v1

    .line 124
    .end local v0    # "action":Ljava/lang/String;
    :catch_1c
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lio/realm/internal/network/LookupUserIdResponse;->from(Ljava/lang/Exception;)Lio/realm/internal/network/LookupUserIdResponse;

    move-result-object v1

    return-object v1
.end method
