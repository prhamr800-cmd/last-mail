###### Class io.realm.internal.permissions.PermissionOfferResponse (io.realm.internal.permissions.PermissionOfferResponse)
.class public Lio/realm/internal/permissions/PermissionOfferResponse;
.super Ljava/lang/Object;
.source "PermissionOfferResponse.java"

# interfaces
.implements Lio/realm/internal/permissions/BasePermissionApi;
.implements Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;


# annotations
.annotation runtime Lio/realm/annotations/RealmClass;
.end annotation


# instance fields
.field private createdAt:Ljava/util/Date;
    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/PrimaryKey;
    .end annotation

    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field private realmUrl:Ljava/lang/String;

.field private statusCode:Ljava/lang/Integer;

.field private statusMessage:Ljava/lang/String;

.field private token:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field private updatedAt:Ljava/util/Date;
    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 46
    :cond_d
    nop

    .line 48
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmSet$id(Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmSet$createdAt(Ljava/util/Date;)V

    .line 51
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "token"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 46
    :cond_d
    nop

    .line 48
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmSet$id(Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmSet$createdAt(Ljava/util/Date;)V

    .line 51
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 75
    if-eqz p1, :cond_2f

    .line 78
    invoke-virtual {p0, p1}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmSet$token(Ljava/lang/String;)V

    .line 79
    return-void

    .line 76
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'token\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCreatedAt()Ljava/util/Date;
    .registers 2
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "EI_EXPOSE_REP"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 87
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 3

    .line 140
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 141
    :catch_e
    move-exception v0

    .line 142
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRealmUrl()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 135
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 110
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 126
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 130
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmGet$token()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .registers 2
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "EI_EXPOSE_REP"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public isSuccessful()Z
    .registers 2

    .line 120
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public realmGet$createdAt()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$realmUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->realmUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$statusCode()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->statusCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public realmGet$statusMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$token()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$updatedAt()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->updatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public realmSet$createdAt(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->createdAt:Ljava/util/Date;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$realmUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->realmUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$statusCode(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->statusCode:Ljava/lang/Integer;

    return-void
.end method

.method public realmSet$statusMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->statusMessage:Ljava/lang/String;

    return-void
.end method

.method public realmSet$token(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->token:Ljava/lang/String;

    return-void
.end method

.method public realmSet$updatedAt(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionOfferResponse;->updatedAt:Ljava/util/Date;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2
    .param p1, "token"    # Ljava/lang/String;

    .line 82
    invoke-virtual {p0, p1}, Lio/realm/internal/permissions/PermissionOfferResponse;->realmSet$token(Ljava/lang/String;)V

    .line 83
    return-void
.end method
