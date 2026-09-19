###### Class io.realm.internal.network.LookupUserIdResponse (io.realm.internal.network.LookupUserIdResponse)
.class public Lio/realm/internal/network/LookupUserIdResponse;
.super Lio/realm/internal/network/AuthServerResponse;
.source "LookupUserIdResponse.java"


# static fields
.field private static final JSON_FIELD_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final JSON_FIELD_METADATA:Ljava/lang/String; = "metadata"

.field private static final JSON_FIELD_USER_ID:Ljava/lang/String; = "user_id"

.field private static final JSON_FIELD_USER_IS_ADMIN:Ljava/lang/String; = "is_admin"


# instance fields
.field private final accounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isAdmin:Ljava/lang/Boolean;

.field private final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final userId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/realm/ObjectServerError;)V
    .registers 4
    .param p1, "error"    # Lio/realm/ObjectServerError;

    .line 82
    invoke-direct {p0}, Lio/realm/internal/network/AuthServerResponse;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LookupUserIdResponse - Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0, p1}, Lio/realm/internal/network/LookupUserIdResponse;->setError(Lio/realm/ObjectServerError;)V

    .line 85
    iput-object p1, p0, Lio/realm/internal/network/LookupUserIdResponse;->error:Lio/realm/ObjectServerError;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/network/LookupUserIdResponse;->userId:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lio/realm/internal/network/LookupUserIdResponse;->isAdmin:Ljava/lang/Boolean;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/internal/network/LookupUserIdResponse;->metadata:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/internal/network/LookupUserIdResponse;->accounts:Ljava/util/Map;

    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 13
    .param p1, "serverResponse"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Lio/realm/internal/network/AuthServerResponse;-><init>()V

    .line 100
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    .local v2, "obj":Lorg/json/JSONObject;
    const-string/jumbo v3, "user_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "userId":Ljava/lang/String;
    const-string v4, "is_admin"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 103
    .local v4, "isAdmin":Ljava/lang/Boolean;
    const-string v5, "metadata"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v6, "key"

    const-string/jumbo v7, "value"

    invoke-static {v5, v6, v7}, Lio/realm/internal/network/LookupUserIdResponse;->jsonToMap(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 104
    .local v5, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "accounts"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "provider"

    const-string v8, "provider_id"

    invoke-static {v6, v7, v8}, Lio/realm/internal/network/LookupUserIdResponse;->jsonToMap(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 105
    .local v6, "accounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 107
    .local v7, "error":Lio/realm/ObjectServerError;
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Identity %s; Path %b"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v1

    aput-object v4, v10, v0

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_48} :catch_4a

    move-object v0, v8

    .line 116
    .end local v2    # "obj":Lorg/json/JSONObject;
    .local v0, "message":Ljava/lang/String;
    goto :goto_6e

    .line 109
    .end local v0    # "message":Ljava/lang/String;
    .end local v3    # "userId":Ljava/lang/String;
    .end local v4    # "isAdmin":Ljava/lang/Boolean;
    .end local v5    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "accounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "error":Lio/realm/ObjectServerError;
    :catch_4a
    move-exception v2

    .line 110
    .local v2, "e":Lorg/json/JSONException;
    const/4 v3, 0x0

    .line 111
    .restart local v3    # "userId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 112
    .restart local v4    # "isAdmin":Ljava/lang/Boolean;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 113
    .restart local v5    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 114
    .restart local v6    # "accounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Lio/realm/ObjectServerError;

    sget-object v8, Lio/realm/ErrorCode;->JSON_EXCEPTION:Lio/realm/ErrorCode;

    invoke-direct {v7, v8, v2}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    .line 115
    .restart local v7    # "error":Lio/realm/ObjectServerError;
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Error %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v7}, Lio/realm/ObjectServerError;->getErrorMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v1

    invoke-static {v8, v9, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "message":Ljava/lang/String;
    :goto_6e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LookupUserIdResponse. "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0, v7}, Lio/realm/internal/network/LookupUserIdResponse;->setError(Lio/realm/ObjectServerError;)V

    .line 120
    iput-object v3, p0, Lio/realm/internal/network/LookupUserIdResponse;->userId:Ljava/lang/String;

    .line 121
    iput-object v4, p0, Lio/realm/internal/network/LookupUserIdResponse;->isAdmin:Ljava/lang/Boolean;

    .line 122
    iput-object v5, p0, Lio/realm/internal/network/LookupUserIdResponse;->metadata:Ljava/util/Map;

    .line 123
    iput-object v6, p0, Lio/realm/internal/network/LookupUserIdResponse;->accounts:Ljava/util/Map;

    .line 124
    return-void
.end method

.method public static from(Lio/realm/ObjectServerError;)Lio/realm/internal/network/LookupUserIdResponse;
    .registers 2
    .param p0, "objectServerError"    # Lio/realm/ObjectServerError;

    .line 72
    new-instance v0, Lio/realm/internal/network/LookupUserIdResponse;

    invoke-direct {v0, p0}, Lio/realm/internal/network/LookupUserIdResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object v0
.end method

.method public static from(Ljava/lang/Exception;)Lio/realm/internal/network/LookupUserIdResponse;
    .registers 3
    .param p0, "exception"    # Ljava/lang/Exception;

    .line 79
    new-instance v0, Lio/realm/ObjectServerError;

    invoke-static {p0}, Lio/realm/ErrorCode;->fromException(Ljava/lang/Exception;)Lio/realm/ErrorCode;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/realm/internal/network/LookupUserIdResponse;->from(Lio/realm/ObjectServerError;)Lio/realm/internal/network/LookupUserIdResponse;

    move-result-object v0

    return-object v0
.end method

.method static from(Lokhttp3/Response;)Lio/realm/internal/network/LookupUserIdResponse;
    .registers 4
    .param p0, "response"    # Lokhttp3/Response;

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_24

    .line 60
    .local v0, "serverResponse":Ljava/lang/String;
    nop

    .line 59
    nop

    .line 61
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 62
    new-instance v1, Lio/realm/internal/network/LookupUserIdResponse;

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-static {v0, v2}, Lio/realm/internal/network/AuthServerResponse;->createError(Ljava/lang/String;I)Lio/realm/ObjectServerError;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/realm/internal/network/LookupUserIdResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object v1

    .line 64
    :cond_1e
    new-instance v1, Lio/realm/internal/network/LookupUserIdResponse;

    invoke-direct {v1, v0}, Lio/realm/internal/network/LookupUserIdResponse;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 57
    .end local v0    # "serverResponse":Ljava/lang/String;
    :catch_24
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lio/realm/ObjectServerError;

    sget-object v2, Lio/realm/ErrorCode;->IO_EXCEPTION:Lio/realm/ErrorCode;

    invoke-direct {v1, v2, v0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    .line 59
    .local v1, "error":Lio/realm/ObjectServerError;
    new-instance v2, Lio/realm/internal/network/LookupUserIdResponse;

    invoke-direct {v2, v1}, Lio/realm/internal/network/LookupUserIdResponse;-><init>(Lio/realm/ObjectServerError;)V

    return-object v2
.end method

.method private static jsonToMap(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .param p0, "array"    # Lorg/json/JSONArray;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "valueName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_8

    .line 143
    return-object v0

    .line 145
    :cond_8
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_48

    .line 146
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 147
    .local v2, "obj":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_28

    .line 150
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local v2    # "obj":Lorg/json/JSONObject;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 148
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :cond_28
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Array object not a key/value object. Has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " fields"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 152
    .end local v1    # "i":I
    .end local v2    # "obj":Lorg/json/JSONObject;
    :cond_48
    return-object v0
.end method


# virtual methods
.method public getAccounts()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lio/realm/internal/network/LookupUserIdResponse;->accounts:Ljava/util/Map;

    return-object v0
.end method

.method public getMetadata()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lio/realm/internal/network/LookupUserIdResponse;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Lio/realm/internal/network/LookupUserIdResponse;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isAdmin()Z
    .registers 2

    .line 131
    iget-object v0, p0, Lio/realm/internal/network/LookupUserIdResponse;->isAdmin:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
