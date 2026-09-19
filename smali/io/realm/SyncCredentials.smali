###### Class io.realm.SyncCredentials (io.realm.SyncCredentials)
.class public Lio/realm/SyncCredentials;
.super Ljava/lang/Object;
.source "SyncCredentials.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/SyncCredentials$IdentityProvider;
    }
.end annotation


# instance fields
.field private final identityProvider:Ljava/lang/String;

.field private final userIdentifier:Ljava/lang/String;

.field private final userInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "identityProvider"    # Ljava/lang/String;
    .param p3    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 249
    .local p3, "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p2, p0, Lio/realm/SyncCredentials;->identityProvider:Ljava/lang/String;

    .line 251
    iput-object p1, p0, Lio/realm/SyncCredentials;->userIdentifier:Ljava/lang/String;

    .line 252
    if-nez p3, :cond_f

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_10

    :cond_f
    move-object v0, p3

    :goto_10
    iput-object v0, p0, Lio/realm/SyncCredentials;->userInfo:Ljava/util/Map;

    .line 253
    return-void
.end method

.method public static accessToken(Ljava/lang/String;Ljava/lang/String;)Lio/realm/SyncCredentials;
    .registers 3
    .param p0, "accessToken"    # Ljava/lang/String;
    .param p1, "identifier"    # Ljava/lang/String;

    .line 218
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/realm/SyncCredentials;->accessToken(Ljava/lang/String;Ljava/lang/String;Z)Lio/realm/SyncCredentials;

    move-result-object v0

    return-object v0
.end method

.method public static accessToken(Ljava/lang/String;Ljava/lang/String;Z)Lio/realm/SyncCredentials;
    .registers 6
    .param p0, "accessToken"    # Ljava/lang/String;
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "isAdmin"    # Z

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 237
    .local v0, "userInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v1, "_isAdmin"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v1, Lio/realm/SyncCredentials;

    const-string v2, "_access_token"

    invoke-direct {v1, p1, v2, v0}, Lio/realm/SyncCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public static anonymous()Lio/realm/SyncCredentials;
    .registers 4

    .line 125
    new-instance v0, Lio/realm/SyncCredentials;

    const-string v1, ""

    const-string v2, "anonymous"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/SyncCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method private static assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 244
    invoke-static {p0}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 247
    return-void

    .line 245
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-null \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' required."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static custom(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/realm/SyncCredentials;
    .registers 4
    .param p0, "userIdentifier"    # Ljava/lang/String;
    .param p1, "identityProvider"    # Ljava/lang/String;
    .param p2    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/realm/SyncCredentials;"
        }
    .end annotation

    .line 196
    .local p2, "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "userIdentifier"

    invoke-static {p0, v0}, Lio/realm/SyncCredentials;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "identityProvider"

    invoke-static {p1, v0}, Lio/realm/SyncCredentials;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    if-nez p2, :cond_13

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p2, v0

    .line 201
    :cond_13
    new-instance v0, Lio/realm/SyncCredentials;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/SyncCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static facebook(Ljava/lang/String;)Lio/realm/SyncCredentials;
    .registers 4
    .param p0, "facebookToken"    # Ljava/lang/String;

    .line 85
    const-string v0, "facebookToken"

    invoke-static {p0, v0}, Lio/realm/SyncCredentials;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lio/realm/SyncCredentials;

    const-string v1, "facebook"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/realm/SyncCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static google(Ljava/lang/String;)Lio/realm/SyncCredentials;
    .registers 4
    .param p0, "googleToken"    # Ljava/lang/String;

    .line 98
    const-string v0, "googleToken"

    invoke-static {p0, v0}, Lio/realm/SyncCredentials;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lio/realm/SyncCredentials;

    const-string v1, "google"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/realm/SyncCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static jwt(Ljava/lang/String;)Lio/realm/SyncCredentials;
    .registers 4
    .param p0, "jwtToken"    # Ljava/lang/String;

    .line 111
    const-string v0, "jwtToken"

    invoke-static {p0, v0}, Lio/realm/SyncCredentials;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lio/realm/SyncCredentials;

    const-string v1, "jwt"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/realm/SyncCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static nickname(Ljava/lang/String;Z)Lio/realm/SyncCredentials;
    .registers 5
    .param p0, "nickname"    # Ljava/lang/String;
    .param p1, "isAdmin"    # Z

    .line 141
    const-string v0, "nickname"

    invoke-static {p0, v0}, Lio/realm/SyncCredentials;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v0, "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "is_admin"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v1, Lio/realm/SyncCredentials;

    const-string v2, "nickname"

    invoke-direct {v1, p0, v2, v0}, Lio/realm/SyncCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public static usernamePassword(Ljava/lang/String;Ljava/lang/String;)Lio/realm/SyncCredentials;
    .registers 3
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .line 179
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/realm/SyncCredentials;->usernamePassword(Ljava/lang/String;Ljava/lang/String;Z)Lio/realm/SyncCredentials;

    move-result-object v0

    return-object v0
.end method

.method public static usernamePassword(Ljava/lang/String;Ljava/lang/String;Z)Lio/realm/SyncCredentials;
    .registers 6
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "createUser"    # Z

    .line 161
    const-string/jumbo v0, "username"

    invoke-static {p0, v0}, Lio/realm/SyncCredentials;->assertStringNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v0, "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "register"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v1, "password"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v1, Lio/realm/SyncCredentials;

    const-string v2, "password"

    invoke-direct {v1, p0, v2, v0}, Lio/realm/SyncCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method


# virtual methods
.method public getIdentityProvider()Ljava/lang/String;
    .registers 2

    .line 261
    iget-object v0, p0, Lio/realm/SyncCredentials;->identityProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIdentifier()Ljava/lang/String;
    .registers 2

    .line 270
    iget-object v0, p0, Lio/realm/SyncCredentials;->userIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lio/realm/SyncCredentials;->userInfo:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

###### Class io.realm.SyncCredentials.IdentityProvider (io.realm.SyncCredentials$IdentityProvider)
.class public final Lio/realm/SyncCredentials$IdentityProvider;
.super Ljava/lang/Object;
.source "SyncCredentials.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SyncCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IdentityProvider"
.end annotation


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "_access_token"

.field public static final ANONYMOUS:Ljava/lang/String; = "anonymous"

.field public static final DEBUG:Ljava/lang/String; = "debug"

.field public static final FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final GOOGLE:Ljava/lang/String; = "google"

.field public static final JWT:Ljava/lang/String; = "jwt"

.field public static final NICKNAME:Ljava/lang/String; = "nickname"

.field public static final USERNAME_PASSWORD:Ljava/lang/String; = "password"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
