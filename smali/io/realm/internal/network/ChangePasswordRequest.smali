###### Class io.realm.internal.network.ChangePasswordRequest (io.realm.internal.network.ChangePasswordRequest)
.class public Lio/realm/internal/network/ChangePasswordRequest;
.super Ljava/lang/Object;
.source "ChangePasswordRequest.java"


# instance fields
.field private final newPassword:Ljava/lang/String;

.field private final token:Ljava/lang/String;

.field private userID:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lio/realm/internal/network/ChangePasswordRequest;->token:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lio/realm/internal/network/ChangePasswordRequest;->newPassword:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "userID"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lio/realm/internal/network/ChangePasswordRequest;->token:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lio/realm/internal/network/ChangePasswordRequest;->newPassword:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lio/realm/internal/network/ChangePasswordRequest;->userID:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static create(Lio/realm/internal/objectserver/Token;Ljava/lang/String;)Lio/realm/internal/network/ChangePasswordRequest;
    .registers 4
    .param p0, "userToken"    # Lio/realm/internal/objectserver/Token;
    .param p1, "newPassword"    # Ljava/lang/String;

    .line 35
    new-instance v0, Lio/realm/internal/network/ChangePasswordRequest;

    invoke-virtual {p0}, Lio/realm/internal/objectserver/Token;->value()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lio/realm/internal/network/ChangePasswordRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Lio/realm/internal/objectserver/Token;Ljava/lang/String;Ljava/lang/String;)Lio/realm/internal/network/ChangePasswordRequest;
    .registers 5
    .param p0, "adminToken"    # Lio/realm/internal/objectserver/Token;
    .param p1, "userID"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;

    .line 39
    new-instance v0, Lio/realm/internal/network/ChangePasswordRequest;

    invoke-virtual {p0}, Lio/realm/internal/objectserver/Token;->value()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Lio/realm/internal/network/ChangePasswordRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .registers 5

    .line 58
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 59
    .local v0, "request":Lorg/json/JSONObject;
    iget-object v1, p0, Lio/realm/internal/network/ChangePasswordRequest;->userID:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 60
    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Lio/realm/internal/network/ChangePasswordRequest;->userID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    :cond_11
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .local v1, "data":Lorg/json/JSONObject;
    const-string v2, "new_password"

    iget-object v3, p0, Lio/realm/internal/network/ChangePasswordRequest;->newPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_26} :catch_27

    return-object v2

    .line 66
    .end local v0    # "request":Lorg/json/JSONObject;
    .end local v1    # "data":Lorg/json/JSONObject;
    :catch_27
    move-exception v0

    .line 67
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
