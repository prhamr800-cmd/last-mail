###### Class io.realm.SyncUser (io.realm.SyncUser)
.class public Lio/realm/SyncUser;
.super Ljava/lang/Object;
.source "SyncUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/SyncUser$Callback;,
        Lio/realm/SyncUser$Request;
    }
.end annotation


# instance fields
.field private final authenticationUrl:Ljava/net/URL;

.field private final identity:Ljava/lang/String;

.field private final realms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/realm/SyncConfiguration;",
            "Lio/realm/internal/objectserver/Token;",
            ">;"
        }
    .end annotation
.end field

.field private refreshToken:Lio/realm/internal/objectserver/Token;


# direct methods
.method constructor <init>(Lio/realm/internal/objectserver/Token;Ljava/net/URL;)V
    .registers 4
    .param p1, "refreshToken"    # Lio/realm/internal/objectserver/Token;
    .param p2, "authenticationUrl"    # Ljava/net/URL;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/SyncUser;->realms:Ljava/util/Map;

    .line 71
    invoke-virtual {p1}, Lio/realm/internal/objectserver/Token;->identity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/realm/SyncUser;->identity:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lio/realm/SyncUser;->authenticationUrl:Ljava/net/URL;

    .line 73
    iput-object p1, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    .line 74
    return-void
.end method

.method public static all()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/realm/SyncUser;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-static {}, Lio/realm/SyncManager;->getUserStore()Lio/realm/UserStore;

    move-result-object v0

    .line 100
    .local v0, "userStore":Lio/realm/UserStore;
    invoke-interface {v0}, Lio/realm/UserStore;->allUsers()Ljava/util/Collection;

    move-result-object v1

    .line 101
    .local v1, "storedUsers":Ljava/util/Collection;, "Ljava/util/Collection<Lio/realm/SyncUser;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/realm/SyncUser;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/realm/SyncUser;

    .line 103
    .local v4, "user":Lio/realm/SyncUser;
    invoke-virtual {v4}, Lio/realm/SyncUser;->isValid()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 104
    invoke-virtual {v4}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .end local v4    # "user":Lio/realm/SyncUser;
    :cond_2a
    goto :goto_11

    .line 107
    :cond_2b
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    return-object v3
.end method

.method private static checkLooperThread(Ljava/lang/String;)V
    .registers 2
    .param p0, "errorMessage"    # Ljava/lang/String;

    .line 730
    new-instance v0, Lio/realm/internal/android/AndroidCapabilities;

    invoke-direct {v0}, Lio/realm/internal/android/AndroidCapabilities;-><init>()V

    .line 731
    .local v0, "capabilities":Lio/realm/internal/android/AndroidCapabilities;
    invoke-virtual {v0, p0}, Lio/realm/internal/android/AndroidCapabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method public static completePasswordReset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "resetToken"    # Ljava/lang/String;
    .param p1, "newPassword"    # Ljava/lang/String;
    .param p2, "authenticationUrl"    # Ljava/lang/String;

    .line 486
    invoke-static {p0}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 489
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 492
    invoke-static {p2}, Lio/realm/SyncUser;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 493
    .local v0, "authUrl":Ljava/net/URL;
    invoke-static {}, Lio/realm/SyncManager;->getAuthServer()Lio/realm/internal/network/AuthenticationServer;

    move-result-object v1

    .line 494
    .local v1, "authServer":Lio/realm/internal/network/AuthenticationServer;
    invoke-interface {v1, p0, p1, v0}, Lio/realm/internal/network/AuthenticationServer;->completePasswordReset(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/UpdateAccountResponse;

    move-result-object v2

    .line 495
    .local v2, "response":Lio/realm/internal/network/UpdateAccountResponse;
    invoke-virtual {v2}, Lio/realm/internal/network/UpdateAccountResponse;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 498
    return-void

    .line 496
    :cond_1f
    invoke-virtual {v2}, Lio/realm/internal/network/UpdateAccountResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object v3

    throw v3

    .line 490
    .end local v0    # "authUrl":Ljava/net/URL;
    .end local v1    # "authServer":Lio/realm/internal/network/AuthenticationServer;
    .end local v2    # "response":Lio/realm/internal/network/UpdateAccountResponse;
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not-null \'newPassword\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not-null \'token\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static completePasswordResetAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
    .registers 11
    .param p0, "resetToken"    # Ljava/lang/String;
    .param p1, "newPassword"    # Ljava/lang/String;
    .param p2, "authenticationUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/SyncUser$Callback<",
            "Ljava/lang/Void;",
            ">;)",
            "Lio/realm/RealmAsyncTask;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/ObjectServerError;
        }
    .end annotation

    .line 525
    .local p3, "callback":Lio/realm/SyncUser$Callback;, "Lio/realm/SyncUser$Callback<Ljava/lang/Void;>;"
    const-string v0, "Asynchronously completing a password reset is only possible from looper threads."

    invoke-static {v0}, Lio/realm/SyncUser;->checkLooperThread(Ljava/lang/String;)V

    .line 527
    if-eqz p3, :cond_18

    .line 531
    new-instance v0, Lio/realm/SyncUser$6;

    sget-object v2, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v1, v0

    move-object v3, p3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/SyncUser$6;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual {v0}, Lio/realm/SyncUser$6;->start()Lio/realm/RealmAsyncTask;

    move-result-object v0

    .line 531
    return-object v0

    .line 528
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'callback\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static confirmEmail(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "confirmationToken"    # Ljava/lang/String;
    .param p1, "authenticationUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/ObjectServerError;
        }
    .end annotation

    .line 615
    invoke-static {p0}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 618
    invoke-static {p1}, Lio/realm/SyncUser;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 619
    .local v0, "authUrl":Ljava/net/URL;
    invoke-static {}, Lio/realm/SyncManager;->getAuthServer()Lio/realm/internal/network/AuthenticationServer;

    move-result-object v1

    .line 620
    .local v1, "authServer":Lio/realm/internal/network/AuthenticationServer;
    invoke-interface {v1, p0, v0}, Lio/realm/internal/network/AuthenticationServer;->confirmEmail(Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/UpdateAccountResponse;

    move-result-object v2

    .line 621
    .local v2, "response":Lio/realm/internal/network/UpdateAccountResponse;
    invoke-virtual {v2}, Lio/realm/internal/network/UpdateAccountResponse;->isValid()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 624
    return-void

    .line 622
    :cond_19
    invoke-virtual {v2}, Lio/realm/internal/network/UpdateAccountResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object v3

    throw v3

    .line 616
    .end local v0    # "authUrl":Ljava/net/URL;
    .end local v1    # "authServer":Lio/realm/internal/network/AuthenticationServer;
    .end local v2    # "response":Lio/realm/internal/network/UpdateAccountResponse;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not-null \'confirmationToken\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static confirmEmailAsync(Ljava/lang/String;Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
    .registers 5
    .param p0, "confirmationToken"    # Ljava/lang/String;
    .param p1, "authenticationUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/SyncUser$Callback<",
            "Ljava/lang/Void;",
            ">;)",
            "Lio/realm/RealmAsyncTask;"
        }
    .end annotation

    .line 649
    .local p2, "callback":Lio/realm/SyncUser$Callback;, "Lio/realm/SyncUser$Callback<Ljava/lang/Void;>;"
    const-string v0, "Asynchronously confirming an email is only possible from looper threads."

    invoke-static {v0}, Lio/realm/SyncUser;->checkLooperThread(Ljava/lang/String;)V

    .line 651
    if-eqz p2, :cond_13

    .line 655
    new-instance v0, Lio/realm/SyncUser$8;

    sget-object v1, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, v1, p2, p0, p1}, Lio/realm/SyncUser$8;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-virtual {v0}, Lio/realm/SyncUser$8;->start()Lio/realm/RealmAsyncTask;

    move-result-object v0

    .line 655
    return-object v0

    .line 652
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'callback\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static current()Lio/realm/SyncUser;
    .registers 2

    .line 85
    invoke-static {}, Lio/realm/SyncManager;->getUserStore()Lio/realm/UserStore;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/UserStore;->getCurrent()Lio/realm/SyncUser;

    move-result-object v0

    .line 86
    .local v0, "user":Lio/realm/SyncUser;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lio/realm/SyncUser;->isValid()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 87
    return-object v0

    .line 89
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method public static fromJson(Ljava/lang/String;)Lio/realm/SyncUser;
    .registers 5
    .param p0, "user"    # Ljava/lang/String;

    .line 119
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "obj":Lorg/json/JSONObject;
    new-instance v1, Ljava/net/URL;

    const-string v2, "authUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "authUrl":Ljava/net/URL;
    const-string/jumbo v2, "userToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lio/realm/internal/objectserver/Token;->from(Lorg/json/JSONObject;)Lio/realm/internal/objectserver/Token;

    move-result-object v2

    .line 122
    .local v2, "userToken":Lio/realm/internal/objectserver/Token;
    new-instance v3, Lio/realm/SyncUser;

    invoke-direct {v3, v2, v1}, Lio/realm/SyncUser;-><init>(Lio/realm/internal/objectserver/Token;Ljava/net/URL;)V
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_20} :catch_39
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_20} :catch_21

    return-object v3

    .line 125
    .end local v0    # "obj":Lorg/json/JSONObject;
    .end local v1    # "authUrl":Ljava/net/URL;
    .end local v2    # "userToken":Lio/realm/internal/objectserver/Token;
    :catch_21
    move-exception v0

    .line 126
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL in JSON not valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 123
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_39
    move-exception v0

    .line 124
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse user json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getManagementRealmUrl(Ljava/net/URL;)Ljava/lang/String;
    .registers 11
    .param p0, "authUrl"    # Ljava/net/URL;

    .line 844
    const-string v0, "realm"

    .line 845
    .local v0, "scheme":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 846
    const-string v0, "realms"

    .line 849
    :cond_10
    :try_start_10
    new-instance v9, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v5

    const-string v6, "/~/__management"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2b
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_2b} :catch_2c

    .line 849
    return-object v1

    .line 851
    :catch_2c
    move-exception v1

    .line 852
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not create URL to the management Realm"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getUrl(Ljava/lang/String;)Ljava/net/URL;
    .registers 5
    .param p0, "authenticationUrl"    # Ljava/lang/String;

    .line 183
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "authUrl":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 186
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/auth"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_2b} :catch_2d

    move-object v0, v1

    .line 188
    :cond_2c
    return-object v0

    .line 189
    .end local v0    # "authUrl":Ljava/net/URL;
    :catch_2d
    move-exception v0

    .line 190
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static logIn(Lio/realm/SyncCredentials;Ljava/lang/String;)Lio/realm/SyncUser;
    .registers 8
    .param p0, "credentials"    # Lio/realm/SyncCredentials;
    .param p1, "authenticationUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/ObjectServerError;
        }
    .end annotation

    .line 140
    invoke-static {p1}, Lio/realm/SyncUser;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 145
    .local v0, "authUrl":Ljava/net/URL;
    :try_start_4
    invoke-virtual {p0}, Lio/realm/SyncCredentials;->getIdentityProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_access_token"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 149
    invoke-virtual {p0}, Lio/realm/SyncCredentials;->getUserIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "userIdentifier":Ljava/lang/String;
    invoke-virtual {p0}, Lio/realm/SyncCredentials;->getUserInfo()Ljava/util/Map;

    move-result-object v2

    const-string v3, "_token"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    .local v2, "token":Ljava/lang/String;
    invoke-virtual {p0}, Lio/realm/SyncCredentials;->getUserInfo()Ljava/util/Map;

    move-result-object v3

    const-string v4, "_isAdmin"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 152
    .local v3, "isAdmin":Z
    invoke-static {v1, v2, v3}, Lio/realm/internal/network/AuthenticateResponse;->createValidResponseWithUser(Ljava/lang/String;Ljava/lang/String;Z)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object v4

    move-object v1, v4

    .line 153
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "isAdmin":Z
    .local v1, "result":Lio/realm/internal/network/AuthenticateResponse;
    goto :goto_3f

    .line 154
    .end local v1    # "result":Lio/realm/internal/network/AuthenticateResponse;
    :cond_36
    invoke-static {}, Lio/realm/SyncManager;->getAuthServer()Lio/realm/internal/network/AuthenticationServer;

    move-result-object v1

    .line 155
    .local v1, "server":Lio/realm/internal/network/AuthenticationServer;
    invoke-interface {v1, p0, v0}, Lio/realm/internal/network/AuthenticationServer;->loginUser(Lio/realm/SyncCredentials;Ljava/net/URL;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object v2

    move-object v1, v2

    .line 157
    .local v1, "result":Lio/realm/internal/network/AuthenticateResponse;
    :goto_3f
    invoke-virtual {v1}, Lio/realm/internal/network/AuthenticateResponse;->isValid()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_64

    .line 158
    new-instance v2, Lio/realm/SyncUser;

    invoke-virtual {v1}, Lio/realm/internal/network/AuthenticateResponse;->getRefreshToken()Lio/realm/internal/objectserver/Token;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lio/realm/SyncUser;-><init>(Lio/realm/internal/objectserver/Token;Ljava/net/URL;)V

    .line 159
    .local v2, "user":Lio/realm/SyncUser;
    const-string v5, "Succeeded authenticating user.\n%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    invoke-static {v5, v4}, Lio/realm/log/RealmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    invoke-static {}, Lio/realm/SyncManager;->getUserStore()Lio/realm/UserStore;

    move-result-object v3

    invoke-interface {v3, v2}, Lio/realm/UserStore;->put(Lio/realm/SyncUser;)V

    .line 161
    invoke-static {v2}, Lio/realm/SyncManager;->notifyUserLoggedIn(Lio/realm/SyncUser;)V

    .line 162
    return-object v2

    .line 164
    .end local v2    # "user":Lio/realm/SyncUser;
    :cond_64
    const-string v2, "Failed authenticating user.\n%s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lio/realm/internal/network/AuthenticateResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Lio/realm/log/RealmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    invoke-virtual {v1}, Lio/realm/internal/network/AuthenticateResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object v2
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_75} :catch_79

    move-object v1, v2

    .line 169
    .local v1, "error":Lio/realm/ObjectServerError;
    nop

    .line 168
    nop

    .line 170
    throw v1

    .line 167
    .end local v1    # "error":Lio/realm/ObjectServerError;
    :catch_79
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Lio/realm/ObjectServerError;

    sget-object v3, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    invoke-direct {v2, v3, v1}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static logInAsync(Lio/realm/SyncCredentials;Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
    .registers 5
    .param p0, "credentials"    # Lio/realm/SyncCredentials;
    .param p1, "authenticationUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/SyncCredentials;",
            "Ljava/lang/String;",
            "Lio/realm/SyncUser$Callback<",
            "Lio/realm/SyncUser;",
            ">;)",
            "Lio/realm/RealmAsyncTask;"
        }
    .end annotation

    .line 206
    .local p2, "callback":Lio/realm/SyncUser$Callback;, "Lio/realm/SyncUser$Callback<Lio/realm/SyncUser;>;"
    const-string v0, "Asynchronous login is only possible from looper threads."

    invoke-static {v0}, Lio/realm/SyncUser;->checkLooperThread(Ljava/lang/String;)V

    .line 207
    new-instance v0, Lio/realm/SyncUser$1;

    sget-object v1, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, v1, p2, p0, p1}, Lio/realm/SyncUser$1;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Lio/realm/SyncCredentials;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Lio/realm/SyncUser$1;->start()Lio/realm/RealmAsyncTask;

    move-result-object v0

    .line 207
    return-object v0
.end method

.method public static requestEmailConfirmation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "authenticationUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/ObjectServerError;
        }
    .end annotation

    .line 554
    invoke-static {p0}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 557
    invoke-static {p1}, Lio/realm/SyncUser;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 558
    .local v0, "authUrl":Ljava/net/URL;
    invoke-static {}, Lio/realm/SyncManager;->getAuthServer()Lio/realm/internal/network/AuthenticationServer;

    move-result-object v1

    .line 559
    .local v1, "authServer":Lio/realm/internal/network/AuthenticationServer;
    invoke-interface {v1, p0, v0}, Lio/realm/internal/network/AuthenticationServer;->requestEmailConfirmation(Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/UpdateAccountResponse;

    move-result-object v2

    .line 560
    .local v2, "response":Lio/realm/internal/network/UpdateAccountResponse;
    invoke-virtual {v2}, Lio/realm/internal/network/UpdateAccountResponse;->isValid()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 563
    return-void

    .line 561
    :cond_19
    invoke-virtual {v2}, Lio/realm/internal/network/UpdateAccountResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object v3

    throw v3

    .line 555
    .end local v0    # "authUrl":Ljava/net/URL;
    .end local v1    # "authServer":Lio/realm/internal/network/AuthenticationServer;
    .end local v2    # "response":Lio/realm/internal/network/UpdateAccountResponse;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not-null \'email\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestEmailConfirmationAsync(Ljava/lang/String;Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
    .registers 5
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "authenticationUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/SyncUser$Callback<",
            "Ljava/lang/Void;",
            ">;)",
            "Lio/realm/RealmAsyncTask;"
        }
    .end annotation

    .line 581
    .local p2, "callback":Lio/realm/SyncUser$Callback;, "Lio/realm/SyncUser$Callback<Ljava/lang/Void;>;"
    const-string v0, "Asynchronously requesting an email confirmation is only possible from looper threads."

    invoke-static {v0}, Lio/realm/SyncUser;->checkLooperThread(Ljava/lang/String;)V

    .line 583
    if-eqz p2, :cond_13

    .line 587
    new-instance v0, Lio/realm/SyncUser$7;

    sget-object v1, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, v1, p2, p0, p1}, Lio/realm/SyncUser$7;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-virtual {v0}, Lio/realm/SyncUser$7;->start()Lio/realm/RealmAsyncTask;

    move-result-object v0

    .line 587
    return-object v0

    .line 584
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'callback\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestPasswordReset(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "authenticationUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/ObjectServerError;
        }
    .end annotation

    .line 424
    invoke-static {p0}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 427
    invoke-static {p1}, Lio/realm/SyncUser;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 428
    .local v0, "authUrl":Ljava/net/URL;
    invoke-static {}, Lio/realm/SyncManager;->getAuthServer()Lio/realm/internal/network/AuthenticationServer;

    move-result-object v1

    .line 429
    .local v1, "authServer":Lio/realm/internal/network/AuthenticationServer;
    invoke-interface {v1, p0, v0}, Lio/realm/internal/network/AuthenticationServer;->requestPasswordReset(Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/UpdateAccountResponse;

    move-result-object v2

    .line 430
    .local v2, "response":Lio/realm/internal/network/UpdateAccountResponse;
    invoke-virtual {v2}, Lio/realm/internal/network/UpdateAccountResponse;->isValid()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 433
    return-void

    .line 431
    :cond_19
    invoke-virtual {v2}, Lio/realm/internal/network/UpdateAccountResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object v3

    throw v3

    .line 425
    .end local v0    # "authUrl":Ljava/net/URL;
    .end local v1    # "authServer":Lio/realm/internal/network/AuthenticationServer;
    .end local v2    # "response":Lio/realm/internal/network/UpdateAccountResponse;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not-null \'email\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requestPasswordResetAsync(Ljava/lang/String;Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
    .registers 5
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "authenticationUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/SyncUser$Callback<",
            "Ljava/lang/Void;",
            ">;)",
            "Lio/realm/RealmAsyncTask;"
        }
    .end annotation

    .line 451
    .local p2, "callback":Lio/realm/SyncUser$Callback;, "Lio/realm/SyncUser$Callback<Ljava/lang/Void;>;"
    const-string v0, "Asynchronous requesting a password reset is only possible from looper threads."

    invoke-static {v0}, Lio/realm/SyncUser;->checkLooperThread(Ljava/lang/String;)V

    .line 453
    if-eqz p2, :cond_13

    .line 457
    new-instance v0, Lio/realm/SyncUser$5;

    sget-object v1, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, v1, p2, p0, p1}, Lio/realm/SyncUser$5;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0}, Lio/realm/SyncUser$5;->start()Lio/realm/RealmAsyncTask;

    move-result-object v0

    .line 457
    return-object v0

    .line 454
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'callback\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method addRealm(Lio/realm/SyncConfiguration;Lio/realm/internal/objectserver/Token;)V
    .registers 4
    .param p1, "syncConfiguration"    # Lio/realm/SyncConfiguration;
    .param p2, "accessToken"    # Lio/realm/internal/objectserver/Token;

    .line 831
    iget-object v0, p0, Lio/realm/SyncUser;->realms:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    return-void
.end method

.method public allSessions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/realm/SyncSession;",
            ">;"
        }
    .end annotation

    .line 812
    invoke-static {p0}, Lio/realm/SyncManager;->getAllSessions(Lio/realm/SyncUser;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public changePassword(Ljava/lang/String;)V
    .registers 5
    .param p1, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/ObjectServerError;
        }
    .end annotation

    .line 302
    if-eqz p1, :cond_1c

    .line 305
    invoke-static {}, Lio/realm/SyncManager;->getAuthServer()Lio/realm/internal/network/AuthenticationServer;

    move-result-object v0

    .line 306
    .local v0, "authServer":Lio/realm/internal/network/AuthenticationServer;
    iget-object v1, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    invoke-virtual {p0}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lio/realm/internal/network/AuthenticationServer;->changePassword(Lio/realm/internal/objectserver/Token;Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/ChangePasswordResponse;

    move-result-object v1

    .line 307
    .local v1, "response":Lio/realm/internal/network/ChangePasswordResponse;
    invoke-virtual {v1}, Lio/realm/internal/network/ChangePasswordResponse;->isValid()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 310
    return-void

    .line 308
    :cond_17
    invoke-virtual {v1}, Lio/realm/internal/network/ChangePasswordResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object v2

    throw v2

    .line 303
    .end local v0    # "authServer":Lio/realm/internal/network/AuthenticationServer;
    .end local v1    # "response":Lio/realm/internal/network/ChangePasswordResponse;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not-null \'newPassword\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public changePassword(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/ObjectServerError;
        }
    .end annotation

    .line 327
    if-eqz p2, :cond_46

    .line 331
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 335
    invoke-virtual {p0}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 336
    invoke-virtual {p0, p2}, Lio/realm/SyncUser;->changePassword(Ljava/lang/String;)V

    goto :goto_30

    .line 339
    :cond_16
    invoke-virtual {p0}, Lio/realm/SyncUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 343
    invoke-static {}, Lio/realm/SyncManager;->getAuthServer()Lio/realm/internal/network/AuthenticationServer;

    move-result-object v0

    .line 344
    .local v0, "authServer":Lio/realm/internal/network/AuthenticationServer;
    iget-object v1, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    invoke-virtual {p0}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lio/realm/internal/network/AuthenticationServer;->changePassword(Lio/realm/internal/objectserver/Token;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/ChangePasswordResponse;

    move-result-object v1

    .line 345
    .local v1, "response":Lio/realm/internal/network/ChangePasswordResponse;
    invoke-virtual {v1}, Lio/realm/internal/network/ChangePasswordResponse;->isValid()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 349
    .end local v0    # "authServer":Lio/realm/internal/network/AuthenticationServer;
    .end local v1    # "response":Lio/realm/internal/network/ChangePasswordResponse;
    :goto_30
    return-void

    .line 346
    .restart local v0    # "authServer":Lio/realm/internal/network/AuthenticationServer;
    .restart local v1    # "response":Lio/realm/internal/network/ChangePasswordResponse;
    :cond_31
    invoke-virtual {v1}, Lio/realm/internal/network/ChangePasswordResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object v2

    throw v2

    .line 340
    .end local v0    # "authServer":Lio/realm/internal/network/AuthenticationServer;
    .end local v1    # "response":Lio/realm/internal/network/ChangePasswordResponse;
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "User need to be admin in order to change another user\'s password."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "None empty \'userId\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not-null \'newPassword\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public changePasswordAsync(Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
    .registers 5
    .param p1, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/SyncUser$Callback<",
            "Lio/realm/SyncUser;",
            ">;)",
            "Lio/realm/RealmAsyncTask;"
        }
    .end annotation

    .line 364
    .local p2, "callback":Lio/realm/SyncUser$Callback;, "Lio/realm/SyncUser$Callback<Lio/realm/SyncUser;>;"
    const-string v0, "Asynchronous changing password is only possible from looper threads."

    invoke-static {v0}, Lio/realm/SyncUser;->checkLooperThread(Ljava/lang/String;)V

    .line 366
    if-eqz p2, :cond_13

    .line 369
    new-instance v0, Lio/realm/SyncUser$3;

    sget-object v1, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, p0, v1, p2, p1}, Lio/realm/SyncUser$3;-><init>(Lio/realm/SyncUser;Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0}, Lio/realm/SyncUser$3;->start()Lio/realm/RealmAsyncTask;

    move-result-object v0

    .line 369
    return-object v0

    .line 367
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'callback\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public changePasswordAsync(Ljava/lang/String;Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
    .registers 11
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/SyncUser$Callback<",
            "Lio/realm/SyncUser;",
            ">;)",
            "Lio/realm/RealmAsyncTask;"
        }
    .end annotation

    .line 394
    .local p3, "callback":Lio/realm/SyncUser$Callback;, "Lio/realm/SyncUser$Callback<Lio/realm/SyncUser;>;"
    const-string v0, "Asynchronous changing password is only possible from looper threads."

    invoke-static {v0}, Lio/realm/SyncUser;->checkLooperThread(Ljava/lang/String;)V

    .line 396
    if-eqz p3, :cond_18

    .line 400
    new-instance v0, Lio/realm/SyncUser$4;

    sget-object v3, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/SyncUser$4;-><init>(Lio/realm/SyncUser;Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0}, Lio/realm/SyncUser$4;->start()Lio/realm/RealmAsyncTask;

    move-result-object v0

    .line 400
    return-object v0

    .line 397
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'callback\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 883
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 884
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_31

    .line 886
    :cond_12
    move-object v1, p1

    check-cast v1, Lio/realm/SyncUser;

    .line 888
    .local v1, "syncUser":Lio/realm/SyncUser;
    iget-object v2, p0, Lio/realm/SyncUser;->identity:Ljava/lang/String;

    iget-object v3, v1, Lio/realm/SyncUser;->identity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    return v0

    .line 889
    :cond_20
    iget-object v0, p0, Lio/realm/SyncUser;->authenticationUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lio/realm/SyncUser;->authenticationUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 884
    .end local v1    # "syncUser":Lio/realm/SyncUser;
    :cond_31
    :goto_31
    return v0
.end method

.method getAccessToken(Lio/realm/SyncConfiguration;)Lio/realm/internal/objectserver/Token;
    .registers 3
    .param p1, "configuration"    # Lio/realm/SyncConfiguration;

    .line 827
    iget-object v0, p0, Lio/realm/SyncUser;->realms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/objectserver/Token;

    return-object v0
.end method

.method public getAuthenticationUrl()Ljava/net/URL;
    .registers 2

    .line 839
    iget-object v0, p0, Lio/realm/SyncUser;->authenticationUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .registers 2

    .line 789
    iget-object v0, p0, Lio/realm/SyncUser;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionManager()Lio/realm/PermissionManager;
    .registers 3

    .line 870
    new-instance v0, Lio/realm/internal/android/AndroidCapabilities;

    invoke-direct {v0}, Lio/realm/internal/android/AndroidCapabilities;-><init>()V

    invoke-virtual {v0}, Lio/realm/internal/android/AndroidCapabilities;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 873
    invoke-static {p0}, Lio/realm/PermissionManager;->getInstance(Lio/realm/SyncUser;)Lio/realm/PermissionManager;

    move-result-object v0

    return-object v0

    .line 871
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The PermissionManager can only be opened from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getRefreshToken()Lio/realm/internal/objectserver/Token;
    .registers 2

    .line 799
    iget-object v0, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 894
    iget-object v0, p0, Lio/realm/SyncUser;->identity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 895
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/realm/SyncUser;->authenticationUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 896
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public isAdmin()Z
    .registers 2

    .line 778
    iget-object v0, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    invoke-virtual {v0}, Lio/realm/internal/objectserver/Token;->isAdmin()Z

    move-result v0

    return v0
.end method

.method isRealmAuthenticated(Lio/realm/SyncConfiguration;)Z
    .registers 8
    .param p1, "configuration"    # Lio/realm/SyncConfiguration;

    .line 822
    iget-object v0, p0, Lio/realm/SyncUser;->realms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/objectserver/Token;

    .line 823
    .local v0, "token":Lio/realm/internal/objectserver/Token;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lio/realm/internal/objectserver/Token;->expiresMs()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public isValid()Z
    .registers 6

    .line 767
    iget-object v0, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    invoke-virtual {v0}, Lio/realm/internal/objectserver/Token;->expiresMs()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_26

    invoke-static {}, Lio/realm/SyncManager;->getUserStore()Lio/realm/UserStore;

    move-result-object v0

    iget-object v1, p0, Lio/realm/SyncUser;->identity:Ljava/lang/String;

    iget-object v2, p0, Lio/realm/SyncUser;->authenticationUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/realm/UserStore;->isActive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method public logOut()V
    .registers 7

    .line 236
    const-class v0, Lio/realm/Realm;

    monitor-enter v0

    .line 237
    :try_start_3
    invoke-static {}, Lio/realm/SyncManager;->getUserStore()Lio/realm/UserStore;

    move-result-object v1

    iget-object v2, p0, Lio/realm/SyncUser;->identity:Ljava/lang/String;

    iget-object v3, p0, Lio/realm/SyncUser;->authenticationUrl:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/realm/UserStore;->isActive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 238
    monitor-exit v0

    return-void

    .line 242
    :cond_17
    invoke-static {}, Lio/realm/SyncManager;->getUserStore()Lio/realm/UserStore;

    move-result-object v1

    iget-object v2, p0, Lio/realm/SyncUser;->identity:Ljava/lang/String;

    iget-object v3, p0, Lio/realm/SyncUser;->authenticationUrl:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/realm/UserStore;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lio/realm/SyncUser;->realms:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/SyncConfiguration;
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_6b

    .line 247
    .local v2, "syncConfiguration":Lio/realm/SyncConfiguration;
    :try_start_3c
    invoke-static {v2}, Lio/realm/SyncManager;->getSession(Lio/realm/SyncConfiguration;)Lio/realm/SyncSession;

    move-result-object v3

    .line 248
    .local v3, "session":Lio/realm/SyncSession;
    invoke-virtual {v3}, Lio/realm/SyncSession;->clearScheduledAccessTokenRefresh()V
    :try_end_43
    .catch Ljava/lang/IllegalStateException; {:try_start_3c .. :try_end_43} :catch_44
    .catchall {:try_start_3c .. :try_end_43} :catchall_6b

    .line 253
    .end local v3    # "session":Lio/realm/SyncSession;
    goto :goto_51

    .line 249
    :catch_44
    move-exception v3

    .line 250
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_45
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "No SyncSession found"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 254
    .end local v2    # "syncConfiguration":Lio/realm/SyncConfiguration;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_51
    goto :goto_30

    .line 251
    .restart local v2    # "syncConfiguration":Lio/realm/SyncConfiguration;
    .restart local v3    # "e":Ljava/lang/IllegalStateException;
    :cond_52
    throw v3

    .line 261
    .end local v2    # "syncConfiguration":Lio/realm/SyncConfiguration;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :cond_53
    iget-object v1, p0, Lio/realm/SyncUser;->realms:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 264
    invoke-static {}, Lio/realm/SyncManager;->getAuthServer()Lio/realm/internal/network/AuthenticationServer;

    move-result-object v1

    .line 267
    .local v1, "server":Lio/realm/internal/network/AuthenticationServer;
    iget-object v2, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    .line 269
    .local v2, "refreshTokenToBeRevoked":Lio/realm/internal/objectserver/Token;
    sget-object v3, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 270
    .local v3, "networkPoolExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    new-instance v4, Lio/realm/SyncUser$2;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5, v1, v2}, Lio/realm/SyncUser$2;-><init>(Lio/realm/SyncUser;ILio/realm/internal/network/AuthenticationServer;Lio/realm/internal/objectserver/Token;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 287
    .end local v1    # "server":Lio/realm/internal/network/AuthenticationServer;
    .end local v2    # "refreshTokenToBeRevoked":Lio/realm/internal/objectserver/Token;
    .end local v3    # "networkPoolExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_6b
    move-exception v1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_45 .. :try_end_6d} :catchall_6b

    throw v1
.end method

.method public retrieveInfoForUser(Ljava/lang/String;Ljava/lang/String;)Lio/realm/SyncUserInfo;
    .registers 7
    .param p1, "providerUserIdentity"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/ObjectServerError;
        }
    .end annotation

    .line 678
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 682
    invoke-static {p2}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 686
    invoke-virtual {p0}, Lio/realm/SyncUser;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 690
    invoke-static {}, Lio/realm/SyncManager;->getAuthServer()Lio/realm/internal/network/AuthenticationServer;

    move-result-object v0

    .line 691
    .local v0, "authServer":Lio/realm/internal/network/AuthenticationServer;
    iget-object v1, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    invoke-virtual {p0}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v2

    invoke-interface {v0, v1, p2, p1, v2}, Lio/realm/internal/network/AuthenticationServer;->retrieveUser(Lio/realm/internal/objectserver/Token;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Lio/realm/internal/network/LookupUserIdResponse;

    move-result-object v1

    .line 692
    .local v1, "response":Lio/realm/internal/network/LookupUserIdResponse;
    invoke-virtual {v1}, Lio/realm/internal/network/LookupUserIdResponse;->isValid()Z

    move-result v2

    if-nez v2, :cond_39

    .line 693
    invoke-virtual {v1}, Lio/realm/internal/network/LookupUserIdResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ObjectServerError;->getErrorCode()Lio/realm/ErrorCode;

    move-result-object v2

    sget-object v3, Lio/realm/ErrorCode;->UNKNOWN_ACCOUNT:Lio/realm/ErrorCode;

    if-ne v2, v3, :cond_34

    .line 694
    const/4 v2, 0x0

    return-object v2

    .line 696
    :cond_34
    invoke-virtual {v1}, Lio/realm/internal/network/LookupUserIdResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object v2

    throw v2

    .line 699
    :cond_39
    invoke-static {v1}, Lio/realm/SyncUserInfo;->fromLookupUserIdResponse(Lio/realm/internal/network/LookupUserIdResponse;)Lio/realm/SyncUserInfo;

    move-result-object v2

    return-object v2

    .line 687
    .end local v0    # "authServer":Lio/realm/internal/network/AuthenticationServer;
    .end local v1    # "response":Lio/realm/internal/network/LookupUserIdResponse;
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SyncUser needs to be admin in order to lookup other users ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'provider\' cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'providerUserIdentity\' cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retrieveInfoForUserAsync(Ljava/lang/String;Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
    .registers 11
    .param p1, "providerUserIdentity"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/SyncUser$Callback<",
            "Lio/realm/SyncUserInfo;",
            ">;)",
            "Lio/realm/RealmAsyncTask;"
        }
    .end annotation

    .line 715
    .local p3, "callback":Lio/realm/SyncUser$Callback;, "Lio/realm/SyncUser$Callback<Lio/realm/SyncUserInfo;>;"
    const-string v0, "Asynchronously retrieving user is only possible from looper threads."

    invoke-static {v0}, Lio/realm/SyncUser;->checkLooperThread(Ljava/lang/String;)V

    .line 717
    if-eqz p3, :cond_18

    .line 721
    new-instance v0, Lio/realm/SyncUser$9;

    sget-object v3, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/SyncUser$9;-><init>(Lio/realm/SyncUser;Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0}, Lio/realm/SyncUser$9;->start()Lio/realm/RealmAsyncTask;

    move-result-object v0

    .line 721
    return-object v0

    .line 718
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'callback\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setRefreshToken(Lio/realm/internal/objectserver/Token;)V
    .registers 2
    .param p1, "refreshToken"    # Lio/realm/internal/objectserver/Token;

    .line 803
    iput-object p1, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    .line 804
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .registers 5

    .line 745
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 747
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "authUrl"

    iget-object v2, p0, Lio/realm/SyncUser;->authenticationUrl:Ljava/net/URL;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 748
    const-string/jumbo v1, "userToken"

    iget-object v2, p0, Lio/realm/SyncUser;->refreshToken:Lio/realm/internal/objectserver/Token;

    invoke-virtual {v2}, Lio/realm/internal/objectserver/Token;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 749
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1c} :catch_1d

    return-object v1

    .line 750
    :catch_1d
    move-exception v1

    .line 751
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not convert SyncUser to JSON"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 902
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "UserId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/SyncUser;->identity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    const-string v1, ", AuthUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 904
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.SyncUser.AnonymousClass1 (io.realm.SyncUser$1)
.class Lio/realm/SyncUser$1;
.super Lio/realm/SyncUser$Request;
.source "SyncUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncUser;->logInAsync(Lio/realm/SyncCredentials;Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/SyncUser$Request<",
        "Lio/realm/SyncUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$authenticationUrl:Ljava/lang/String;

.field final synthetic val$credentials:Lio/realm/SyncCredentials;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Lio/realm/SyncCredentials;Ljava/lang/String;)V
    .registers 5
    .param p1, "networkPoolExecutor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .line 207
    .local p2, "callback":Lio/realm/SyncUser$Callback;, "Lio/realm/SyncUser$Callback<Lio/realm/SyncUser;>;"
    iput-object p3, p0, Lio/realm/SyncUser$1;->val$credentials:Lio/realm/SyncCredentials;

    iput-object p4, p0, Lio/realm/SyncUser$1;->val$authenticationUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lio/realm/SyncUser$Request;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;)V

    return-void
.end method


# virtual methods
.method public run()Lio/realm/SyncUser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/ObjectServerError;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lio/realm/SyncUser$1;->val$credentials:Lio/realm/SyncCredentials;

    iget-object v1, p0, Lio/realm/SyncUser$1;->val$authenticationUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/realm/SyncUser;->logIn(Lio/realm/SyncCredentials;Ljava/lang/String;)Lio/realm/SyncUser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/ObjectServerError;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lio/realm/SyncUser$1;->run()Lio/realm/SyncUser;

    move-result-object v0

    return-object v0
.end method

###### Class io.realm.SyncUser.AnonymousClass2 (io.realm.SyncUser$2)
.class Lio/realm/SyncUser$2;
.super Lio/realm/internal/network/ExponentialBackoffTask;
.source "SyncUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncUser;->logOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/internal/network/ExponentialBackoffTask<",
        "Lio/realm/internal/network/LogoutResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/SyncUser;

.field final synthetic val$refreshTokenToBeRevoked:Lio/realm/internal/objectserver/Token;

.field final synthetic val$server:Lio/realm/internal/network/AuthenticationServer;


# direct methods
.method constructor <init>(Lio/realm/SyncUser;ILio/realm/internal/network/AuthenticationServer;Lio/realm/internal/objectserver/Token;)V
    .registers 5
    .param p1, "this$0"    # Lio/realm/SyncUser;
    .param p2, "maxRetries"    # I

    .line 270
    iput-object p1, p0, Lio/realm/SyncUser$2;->this$0:Lio/realm/SyncUser;

    iput-object p3, p0, Lio/realm/SyncUser$2;->val$server:Lio/realm/internal/network/AuthenticationServer;

    iput-object p4, p0, Lio/realm/SyncUser$2;->val$refreshTokenToBeRevoked:Lio/realm/internal/objectserver/Token;

    invoke-direct {p0, p2}, Lio/realm/internal/network/ExponentialBackoffTask;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic execute()Lio/realm/internal/network/AuthServerResponse;
    .registers 2

    .line 270
    invoke-virtual {p0}, Lio/realm/SyncUser$2;->execute()Lio/realm/internal/network/LogoutResponse;

    move-result-object v0

    return-object v0
.end method

.method protected execute()Lio/realm/internal/network/LogoutResponse;
    .registers 4

    .line 274
    iget-object v0, p0, Lio/realm/SyncUser$2;->val$server:Lio/realm/internal/network/AuthenticationServer;

    iget-object v1, p0, Lio/realm/SyncUser$2;->val$refreshTokenToBeRevoked:Lio/realm/internal/objectserver/Token;

    iget-object v2, p0, Lio/realm/SyncUser$2;->this$0:Lio/realm/SyncUser;

    invoke-virtual {v2}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/realm/internal/network/AuthenticationServer;->logout(Lio/realm/internal/objectserver/Token;Ljava/net/URL;)Lio/realm/internal/network/LogoutResponse;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onError(Lio/realm/internal/network/AuthServerResponse;)V
    .registers 2

    .line 270
    check-cast p1, Lio/realm/internal/network/LogoutResponse;

    invoke-virtual {p0, p1}, Lio/realm/SyncUser$2;->onError(Lio/realm/internal/network/LogoutResponse;)V

    return-void
.end method

.method protected onError(Lio/realm/internal/network/LogoutResponse;)V
    .registers 4
    .param p1, "response"    # Lio/realm/internal/network/LogoutResponse;

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to log user out.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/realm/internal/network/LogoutResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ObjectServerError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    return-void
.end method

.method protected bridge synthetic onSuccess(Lio/realm/internal/network/AuthServerResponse;)V
    .registers 2

    .line 270
    check-cast p1, Lio/realm/internal/network/LogoutResponse;

    invoke-virtual {p0, p1}, Lio/realm/SyncUser$2;->onSuccess(Lio/realm/internal/network/LogoutResponse;)V

    return-void
.end method

.method protected onSuccess(Lio/realm/internal/network/LogoutResponse;)V
    .registers 3
    .param p1, "response"    # Lio/realm/internal/network/LogoutResponse;

    .line 279
    iget-object v0, p0, Lio/realm/SyncUser$2;->this$0:Lio/realm/SyncUser;

    invoke-static {v0}, Lio/realm/SyncManager;->notifyUserLoggedOut(Lio/realm/SyncUser;)V

    .line 280
    return-void
.end method

###### Class io.realm.SyncUser.AnonymousClass3 (io.realm.SyncUser$3)
.class Lio/realm/SyncUser$3;
.super Lio/realm/SyncUser$Request;
.source "SyncUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncUser;->changePasswordAsync(Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/SyncUser$Request<",
        "Lio/realm/SyncUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/SyncUser;

.field final synthetic val$newPassword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/realm/SyncUser;Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lio/realm/SyncUser;
    .param p2, "networkPoolExecutor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .line 369
    .local p3, "callback":Lio/realm/SyncUser$Callback;, "Lio/realm/SyncUser$Callback<Lio/realm/SyncUser;>;"
    iput-object p1, p0, Lio/realm/SyncUser$3;->this$0:Lio/realm/SyncUser;

    iput-object p4, p0, Lio/realm/SyncUser$3;->val$newPassword:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lio/realm/SyncUser$Request;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;)V

    return-void
.end method


# virtual methods
.method public run()Lio/realm/SyncUser;
    .registers 3

    .line 372
    iget-object v0, p0, Lio/realm/SyncUser$3;->this$0:Lio/realm/SyncUser;

    iget-object v1, p0, Lio/realm/SyncUser$3;->val$newPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/realm/SyncUser;->changePassword(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lio/realm/SyncUser$3;->this$0:Lio/realm/SyncUser;

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/ObjectServerError;
        }
    .end annotation

    .line 369
    invoke-virtual {p0}, Lio/realm/SyncUser$3;->run()Lio/realm/SyncUser;

    move-result-object v0

    return-object v0
.end method

###### Class io.realm.SyncUser.AnonymousClass4 (io.realm.SyncUser$4)
.class Lio/realm/SyncUser$4;
.super Lio/realm/SyncUser$Request;
.source "SyncUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncUser;->changePasswordAsync(Ljava/lang/String;Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/SyncUser$Request<",
        "Lio/realm/SyncUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/SyncUser;

.field final synthetic val$newPassword:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/realm/SyncUser;Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lio/realm/SyncUser;
    .param p2, "networkPoolExecutor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .line 400
    .local p3, "callback":Lio/realm/SyncUser$Callback;, "Lio/realm/SyncUser$Callback<Lio/realm/SyncUser;>;"
    iput-object p1, p0, Lio/realm/SyncUser$4;->this$0:Lio/realm/SyncUser;

    iput-object p4, p0, Lio/realm/SyncUser$4;->val$userId:Ljava/lang/String;

    iput-object p5, p0, Lio/realm/SyncUser$4;->val$newPassword:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lio/realm/SyncUser$Request;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;)V

    return-void
.end method


# virtual methods
.method public run()Lio/realm/SyncUser;
    .registers 4

    .line 403
    iget-object v0, p0, Lio/realm/SyncUser$4;->this$0:Lio/realm/SyncUser;

    iget-object v1, p0, Lio/realm/SyncUser$4;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lio/realm/SyncUser$4;->val$newPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/realm/SyncUser;->changePassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lio/realm/SyncUser$4;->this$0:Lio/realm/SyncUser;

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/ObjectServerError;
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Lio/realm/SyncUser$4;->run()Lio/realm/SyncUser;

    move-result-object v0

    return-object v0
.end method

###### Class io.realm.SyncUser.AnonymousClass5 (io.realm.SyncUser$5)
.class Lio/realm/SyncUser$5;
.super Lio/realm/SyncUser$Request;
.source "SyncUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncUser;->requestPasswordResetAsync(Ljava/lang/String;Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/SyncUser$Request<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$authenticationUrl:Ljava/lang/String;

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "networkPoolExecutor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .line 457
    .local p2, "callback":Lio/realm/SyncUser$Callback;, "Lio/realm/SyncUser$Callback<Ljava/lang/Void;>;"
    iput-object p3, p0, Lio/realm/SyncUser$5;->val$email:Ljava/lang/String;

    iput-object p4, p0, Lio/realm/SyncUser$5;->val$authenticationUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lio/realm/SyncUser$Request;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/ObjectServerError;
        }
    .end annotation

    .line 457
    invoke-virtual {p0}, Lio/realm/SyncUser$5;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 3

    .line 460
    iget-object v0, p0, Lio/realm/SyncUser$5;->val$email:Ljava/lang/String;

    iget-object v1, p0, Lio/realm/SyncUser$5;->val$authenticationUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/realm/SyncUser;->requestPasswordReset(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const/4 v0, 0x0

    return-object v0
.end method

###### Class io.realm.SyncUser.AnonymousClass6 (io.realm.SyncUser$6)
.class Lio/realm/SyncUser$6;
.super Lio/realm/SyncUser$Request;
.source "SyncUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncUser;->completePasswordResetAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/SyncUser$Request<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$authenticationUrl:Ljava/lang/String;

.field final synthetic val$newPassword:Ljava/lang/String;

.field final synthetic val$resetToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "networkPoolExecutor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .line 531
    .local p2, "callback":Lio/realm/SyncUser$Callback;, "Lio/realm/SyncUser$Callback<Ljava/lang/Void;>;"
    iput-object p3, p0, Lio/realm/SyncUser$6;->val$resetToken:Ljava/lang/String;

    iput-object p4, p0, Lio/realm/SyncUser$6;->val$newPassword:Ljava/lang/String;

    iput-object p5, p0, Lio/realm/SyncUser$6;->val$authenticationUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lio/realm/SyncUser$Request;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/ObjectServerError;
        }
    .end annotation

    .line 531
    invoke-virtual {p0}, Lio/realm/SyncUser$6;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 4

    .line 534
    iget-object v0, p0, Lio/realm/SyncUser$6;->val$resetToken:Ljava/lang/String;

    iget-object v1, p0, Lio/realm/SyncUser$6;->val$newPassword:Ljava/lang/String;

    iget-object v2, p0, Lio/realm/SyncUser$6;->val$authenticationUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/realm/SyncUser;->completePasswordReset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const/4 v0, 0x0

    return-object v0
.end method

###### Class io.realm.SyncUser.AnonymousClass7 (io.realm.SyncUser$7)
.class Lio/realm/SyncUser$7;
.super Lio/realm/SyncUser$Request;
.source "SyncUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncUser;->requestEmailConfirmationAsync(Ljava/lang/String;Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/SyncUser$Request<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$authenticationUrl:Ljava/lang/String;

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "networkPoolExecutor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .line 587
    .local p2, "callback":Lio/realm/SyncUser$Callback;, "Lio/realm/SyncUser$Callback<Ljava/lang/Void;>;"
    iput-object p3, p0, Lio/realm/SyncUser$7;->val$email:Ljava/lang/String;

    iput-object p4, p0, Lio/realm/SyncUser$7;->val$authenticationUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lio/realm/SyncUser$Request;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/ObjectServerError;
        }
    .end annotation

    .line 587
    invoke-virtual {p0}, Lio/realm/SyncUser$7;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 3

    .line 590
    iget-object v0, p0, Lio/realm/SyncUser$7;->val$email:Ljava/lang/String;

    iget-object v1, p0, Lio/realm/SyncUser$7;->val$authenticationUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/realm/SyncUser;->requestEmailConfirmation(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const/4 v0, 0x0

    return-object v0
.end method

###### Class io.realm.SyncUser.AnonymousClass8 (io.realm.SyncUser$8)
.class Lio/realm/SyncUser$8;
.super Lio/realm/SyncUser$Request;
.source "SyncUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncUser;->confirmEmailAsync(Ljava/lang/String;Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/SyncUser$Request<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$authenticationUrl:Ljava/lang/String;

.field final synthetic val$confirmationToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "networkPoolExecutor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .line 655
    .local p2, "callback":Lio/realm/SyncUser$Callback;, "Lio/realm/SyncUser$Callback<Ljava/lang/Void;>;"
    iput-object p3, p0, Lio/realm/SyncUser$8;->val$confirmationToken:Ljava/lang/String;

    iput-object p4, p0, Lio/realm/SyncUser$8;->val$authenticationUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lio/realm/SyncUser$Request;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/ObjectServerError;
        }
    .end annotation

    .line 655
    invoke-virtual {p0}, Lio/realm/SyncUser$8;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 3

    .line 658
    iget-object v0, p0, Lio/realm/SyncUser$8;->val$confirmationToken:Ljava/lang/String;

    iget-object v1, p0, Lio/realm/SyncUser$8;->val$authenticationUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/realm/SyncUser;->confirmEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const/4 v0, 0x0

    return-object v0
.end method

###### Class io.realm.SyncUser.AnonymousClass9 (io.realm.SyncUser$9)
.class Lio/realm/SyncUser$9;
.super Lio/realm/SyncUser$Request;
.source "SyncUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncUser;->retrieveInfoForUserAsync(Ljava/lang/String;Ljava/lang/String;Lio/realm/SyncUser$Callback;)Lio/realm/RealmAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/SyncUser$Request<",
        "Lio/realm/SyncUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/SyncUser;

.field final synthetic val$provider:Ljava/lang/String;

.field final synthetic val$providerUserIdentity:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/realm/SyncUser;Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lio/realm/SyncUser;
    .param p2, "networkPoolExecutor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .line 721
    .local p3, "callback":Lio/realm/SyncUser$Callback;, "Lio/realm/SyncUser$Callback<Lio/realm/SyncUserInfo;>;"
    iput-object p1, p0, Lio/realm/SyncUser$9;->this$0:Lio/realm/SyncUser;

    iput-object p4, p0, Lio/realm/SyncUser$9;->val$providerUserIdentity:Ljava/lang/String;

    iput-object p5, p0, Lio/realm/SyncUser$9;->val$provider:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lio/realm/SyncUser$Request;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;)V

    return-void
.end method


# virtual methods
.method public run()Lio/realm/SyncUserInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/ObjectServerError;
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lio/realm/SyncUser$9;->this$0:Lio/realm/SyncUser;

    iget-object v1, p0, Lio/realm/SyncUser$9;->val$providerUserIdentity:Ljava/lang/String;

    iget-object v2, p0, Lio/realm/SyncUser$9;->val$provider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/realm/SyncUser;->retrieveInfoForUser(Ljava/lang/String;Ljava/lang/String;)Lio/realm/SyncUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/ObjectServerError;
        }
    .end annotation

    .line 721
    invoke-virtual {p0}, Lio/realm/SyncUser$9;->run()Lio/realm/SyncUserInfo;

    move-result-object v0

    return-object v0
.end method

###### Class io.realm.SyncUser.Callback (io.realm.SyncUser$Callback)
.class public interface abstract Lio/realm/SyncUser$Callback;
.super Ljava/lang/Object;
.source "SyncUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SyncUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onError(Lio/realm/ObjectServerError;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

###### Class io.realm.SyncUser.Request (io.realm.SyncUser$Request)
.class abstract Lio/realm/SyncUser$Request;
.super Ljava/lang/Object;
.source "SyncUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SyncUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final callback:Lio/realm/SyncUser$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/SyncUser$Callback<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final handler:Lio/realm/internal/RealmNotifier;

.field private final networkPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Lio/realm/SyncUser$Callback;)V
    .registers 6
    .param p1, "networkPoolExecutor"    # Ljava/util/concurrent/ThreadPoolExecutor;
    .param p2    # Lio/realm/SyncUser$Callback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            "Lio/realm/SyncUser$Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 916
    .local p0, "this":Lio/realm/SyncUser$Request;, "Lio/realm/SyncUser$Request<TT;>;"
    .local p2, "callback":Lio/realm/SyncUser$Callback;, "Lio/realm/SyncUser$Callback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput-object p2, p0, Lio/realm/SyncUser$Request;->callback:Lio/realm/SyncUser$Callback;

    .line 918
    new-instance v0, Lio/realm/internal/android/AndroidRealmNotifier;

    new-instance v1, Lio/realm/internal/android/AndroidCapabilities;

    invoke-direct {v1}, Lio/realm/internal/android/AndroidCapabilities;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lio/realm/internal/android/AndroidRealmNotifier;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Capabilities;)V

    iput-object v0, p0, Lio/realm/SyncUser$Request;->handler:Lio/realm/internal/RealmNotifier;

    .line 919
    iput-object p1, p0, Lio/realm/SyncUser$Request;->networkPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 920
    return-void
.end method

.method static synthetic access$000(Lio/realm/SyncUser$Request;Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Lio/realm/SyncUser$Request;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 910
    invoke-direct {p0, p1}, Lio/realm/SyncUser$Request;->postSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lio/realm/SyncUser$Request;Lio/realm/ObjectServerError;)V
    .registers 2
    .param p0, "x0"    # Lio/realm/SyncUser$Request;
    .param p1, "x1"    # Lio/realm/ObjectServerError;

    .line 910
    invoke-direct {p0, p1}, Lio/realm/SyncUser$Request;->postError(Lio/realm/ObjectServerError;)V

    return-void
.end method

.method static synthetic access$200(Lio/realm/SyncUser$Request;)Lio/realm/SyncUser$Callback;
    .registers 2
    .param p0, "x0"    # Lio/realm/SyncUser$Request;

    .line 910
    iget-object v0, p0, Lio/realm/SyncUser$Request;->callback:Lio/realm/SyncUser$Callback;

    return-object v0
.end method

.method private postError(Lio/realm/ObjectServerError;)V
    .registers 5
    .param p1, "error"    # Lio/realm/ObjectServerError;

    .line 943
    .local p0, "this":Lio/realm/SyncUser$Request;, "Lio/realm/SyncUser$Request<TT;>;"
    const/4 v0, 0x0

    .line 944
    .local v0, "errorHandled":Z
    iget-object v1, p0, Lio/realm/SyncUser$Request;->callback:Lio/realm/SyncUser$Callback;

    if-eqz v1, :cond_10

    .line 945
    new-instance v1, Lio/realm/SyncUser$Request$2;

    invoke-direct {v1, p0, p1}, Lio/realm/SyncUser$Request$2;-><init>(Lio/realm/SyncUser$Request;Lio/realm/ObjectServerError;)V

    .line 951
    .local v1, "action":Ljava/lang/Runnable;
    iget-object v2, p0, Lio/realm/SyncUser$Request;->handler:Lio/realm/internal/RealmNotifier;

    invoke-virtual {v2, v1}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)Z

    move-result v0

    .line 954
    .end local v1    # "action":Ljava/lang/Runnable;
    :cond_10
    if-nez v0, :cond_1a

    .line 955
    const-string v1, "An error was thrown, but could not be handled."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 957
    :cond_1a
    return-void
.end method

.method private postSuccess(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 960
    .local p0, "this":Lio/realm/SyncUser$Request;, "Lio/realm/SyncUser$Request<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/realm/SyncUser$Request;->callback:Lio/realm/SyncUser$Callback;

    if-eqz v0, :cond_e

    .line 961
    iget-object v0, p0, Lio/realm/SyncUser$Request;->handler:Lio/realm/internal/RealmNotifier;

    new-instance v1, Lio/realm/SyncUser$Request$3;

    invoke-direct {v1, p0, p1}, Lio/realm/SyncUser$Request$3;-><init>(Lio/realm/SyncUser$Request;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)Z

    .line 968
    :cond_e
    return-void
.end method


# virtual methods
.method public abstract run()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/realm/ObjectServerError;
        }
    .end annotation
.end method

.method public start()Lio/realm/RealmAsyncTask;
    .registers 4

    .line 927
    .local p0, "this":Lio/realm/SyncUser$Request;, "Lio/realm/SyncUser$Request<TT;>;"
    iget-object v0, p0, Lio/realm/SyncUser$Request;->networkPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lio/realm/SyncUser$Request$1;

    invoke-direct {v1, p0}, Lio/realm/SyncUser$Request$1;-><init>(Lio/realm/SyncUser$Request;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 939
    .local v0, "authenticateRequest":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    new-instance v1, Lio/realm/internal/async/RealmAsyncTaskImpl;

    iget-object v2, p0, Lio/realm/SyncUser$Request;->networkPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v1, v0, v2}, Lio/realm/internal/async/RealmAsyncTaskImpl;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-object v1
.end method

###### Class io.realm.SyncUser.Request.AnonymousClass1 (io.realm.SyncUser$Request$1)
.class Lio/realm/SyncUser$Request$1;
.super Ljava/lang/Object;
.source "SyncUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncUser$Request;->start()Lio/realm/RealmAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/SyncUser$Request;


# direct methods
.method constructor <init>(Lio/realm/SyncUser$Request;)V
    .registers 2
    .param p1, "this$0"    # Lio/realm/SyncUser$Request;

    .line 927
    .local p0, "this":Lio/realm/SyncUser$Request$1;, "Lio/realm/SyncUser$Request$1;"
    iput-object p1, p0, Lio/realm/SyncUser$Request$1;->this$0:Lio/realm/SyncUser$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 931
    .local p0, "this":Lio/realm/SyncUser$Request$1;, "Lio/realm/SyncUser$Request$1;"
    :try_start_0
    iget-object v0, p0, Lio/realm/SyncUser$Request$1;->this$0:Lio/realm/SyncUser$Request;

    iget-object v1, p0, Lio/realm/SyncUser$Request$1;->this$0:Lio/realm/SyncUser$Request;

    invoke-virtual {v1}, Lio/realm/SyncUser$Request;->run()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lio/realm/SyncUser$Request;->access$000(Lio/realm/SyncUser$Request;Ljava/lang/Object;)V
    :try_end_b
    .catch Lio/realm/ObjectServerError; {:try_start_0 .. :try_end_b} :catch_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_22

    .line 934
    :catch_c
    move-exception v0

    .line 935
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/realm/SyncUser$Request$1;->this$0:Lio/realm/SyncUser$Request;

    new-instance v2, Lio/realm/ObjectServerError;

    sget-object v3, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    const-string v4, "Unexpected error"

    invoke-direct {v2, v3, v4, v0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lio/realm/SyncUser$Request;->access$100(Lio/realm/SyncUser$Request;Lio/realm/ObjectServerError;)V

    goto :goto_23

    .line 932
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v0

    .line 933
    .local v0, "e":Lio/realm/ObjectServerError;
    iget-object v1, p0, Lio/realm/SyncUser$Request$1;->this$0:Lio/realm/SyncUser$Request;

    invoke-static {v1, v0}, Lio/realm/SyncUser$Request;->access$100(Lio/realm/SyncUser$Request;Lio/realm/ObjectServerError;)V

    .line 936
    .end local v0    # "e":Lio/realm/ObjectServerError;
    :goto_22
    nop

    .line 937
    :goto_23
    return-void
.end method

###### Class io.realm.SyncUser.Request.AnonymousClass2 (io.realm.SyncUser$Request$2)
.class Lio/realm/SyncUser$Request$2;
.super Ljava/lang/Object;
.source "SyncUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncUser$Request;->postError(Lio/realm/ObjectServerError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/SyncUser$Request;

.field final synthetic val$error:Lio/realm/ObjectServerError;


# direct methods
.method constructor <init>(Lio/realm/SyncUser$Request;Lio/realm/ObjectServerError;)V
    .registers 3
    .param p1, "this$0"    # Lio/realm/SyncUser$Request;

    .line 945
    .local p0, "this":Lio/realm/SyncUser$Request$2;, "Lio/realm/SyncUser$Request$2;"
    iput-object p1, p0, Lio/realm/SyncUser$Request$2;->this$0:Lio/realm/SyncUser$Request;

    iput-object p2, p0, Lio/realm/SyncUser$Request$2;->val$error:Lio/realm/ObjectServerError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 948
    .local p0, "this":Lio/realm/SyncUser$Request$2;, "Lio/realm/SyncUser$Request$2;"
    iget-object v0, p0, Lio/realm/SyncUser$Request$2;->this$0:Lio/realm/SyncUser$Request;

    invoke-static {v0}, Lio/realm/SyncUser$Request;->access$200(Lio/realm/SyncUser$Request;)Lio/realm/SyncUser$Callback;

    move-result-object v0

    iget-object v1, p0, Lio/realm/SyncUser$Request$2;->val$error:Lio/realm/ObjectServerError;

    invoke-interface {v0, v1}, Lio/realm/SyncUser$Callback;->onError(Lio/realm/ObjectServerError;)V

    .line 949
    return-void
.end method

###### Class io.realm.SyncUser.Request.AnonymousClass3 (io.realm.SyncUser$Request$3)
.class Lio/realm/SyncUser$Request$3;
.super Ljava/lang/Object;
.source "SyncUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncUser$Request;->postSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/SyncUser$Request;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/realm/SyncUser$Request;Ljava/lang/Object;)V
    .registers 3
    .param p1, "this$0"    # Lio/realm/SyncUser$Request;

    .line 961
    .local p0, "this":Lio/realm/SyncUser$Request$3;, "Lio/realm/SyncUser$Request$3;"
    iput-object p1, p0, Lio/realm/SyncUser$Request$3;->this$0:Lio/realm/SyncUser$Request;

    iput-object p2, p0, Lio/realm/SyncUser$Request$3;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 964
    .local p0, "this":Lio/realm/SyncUser$Request$3;, "Lio/realm/SyncUser$Request$3;"
    iget-object v0, p0, Lio/realm/SyncUser$Request$3;->this$0:Lio/realm/SyncUser$Request;

    invoke-static {v0}, Lio/realm/SyncUser$Request;->access$200(Lio/realm/SyncUser$Request;)Lio/realm/SyncUser$Callback;

    move-result-object v0

    iget-object v1, p0, Lio/realm/SyncUser$Request$3;->val$result:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/realm/SyncUser$Callback;->onSuccess(Ljava/lang/Object;)V

    .line 965
    return-void
.end method
