###### Class io.realm.permissions.PermissionOffer (io.realm.permissions.PermissionOffer)
.class public Lio/realm/permissions/PermissionOffer;
.super Ljava/lang/Object;
.source "PermissionOffer.java"

# interfaces
.implements Lio/realm/internal/permissions/BasePermissionApi;
.implements Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;


# annotations
.annotation runtime Lio/realm/annotations/RealmClass;
.end annotation


# instance fields
.field private createdAt:Ljava/util/Date;
    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field private expiresAt:Ljava/util/Date;

.field private id:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/PrimaryKey;
    .end annotation

    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field private mayManage:Z

.field private mayRead:Z

.field private mayWrite:Z

.field private realmUrl:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field private statusCode:Ljava/lang/Integer;

.field private statusMessage:Ljava/lang/String;

.field private token:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/Index;
    .end annotation
.end field

.field private updatedAt:Ljava/util/Date;
    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 53
    :cond_d
    nop

    .line 55
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/permissions/PermissionOffer;->realmSet$id(Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/permissions/PermissionOffer;->realmSet$createdAt(Ljava/util/Date;)V

    .line 58
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/permissions/PermissionOffer;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/realm/permissions/AccessLevel;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "accessLevel"    # Lio/realm/permissions/AccessLevel;
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "EI_EXPOSE_REP2"
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/realm/permissions/PermissionOffer;-><init>(Ljava/lang/String;Lio/realm/permissions/AccessLevel;Ljava/util/Date;)V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_e

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 92
    :cond_e
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/realm/permissions/AccessLevel;Ljava/util/Date;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "accessLevel"    # Lio/realm/permissions/AccessLevel;
    .param p3, "expiresAt"    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "EI_EXPOSE_REP2"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 53
    :cond_d
    nop

    .line 55
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/permissions/PermissionOffer;->realmSet$id(Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/permissions/PermissionOffer;->realmSet$createdAt(Ljava/util/Date;)V

    .line 58
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/permissions/PermissionOffer;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 106
    invoke-direct {p0, p1}, Lio/realm/permissions/PermissionOffer;->validateUrl(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p2}, Lio/realm/permissions/PermissionOffer;->validateAccessLevel(Lio/realm/permissions/AccessLevel;)V

    .line 108
    invoke-virtual {p2}, Lio/realm/permissions/AccessLevel;->mayRead()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/realm/permissions/PermissionOffer;->realmSet$mayRead(Z)V

    .line 109
    invoke-virtual {p2}, Lio/realm/permissions/AccessLevel;->mayWrite()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/realm/permissions/PermissionOffer;->realmSet$mayWrite(Z)V

    .line 110
    invoke-virtual {p2}, Lio/realm/permissions/AccessLevel;->mayManage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/realm/permissions/PermissionOffer;->realmSet$mayManage(Z)V

    .line 111
    invoke-virtual {p0, p1}, Lio/realm/permissions/PermissionOffer;->realmSet$realmUrl(Ljava/lang/String;)V

    .line 113
    if-eqz p3, :cond_50

    invoke-virtual {p3}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    :goto_51
    invoke-virtual {p0, v0}, Lio/realm/permissions/PermissionOffer;->realmSet$expiresAt(Ljava/util/Date;)V

    .line 114
    return-void
.end method

.method private validateAccessLevel(Lio/realm/permissions/AccessLevel;)V
    .registers 4
    .param p1, "accessLevel"    # Lio/realm/permissions/AccessLevel;

    .line 130
    if-eqz p1, :cond_3

    .line 133
    return-void

    .line 131
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'accessLevel\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateUrl(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .line 117
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 123
    :try_start_6
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_b} :catch_d

    .line 126
    nop

    .line 127
    return-void

    .line 124
    :catch_d
    move-exception v0

    .line 125
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid \'realmUrl\'."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 118
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-empty \'realmUrl\' required."

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

    .line 153
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getExpiresAt()Ljava/util/Date;
    .registers 2
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "EI_EXPOSE_REP"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 256
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$expiresAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 142
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealmUrl()Ljava/lang/String;
    .registers 2

    .line 217
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 177
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 188
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 208
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$token()Ljava/lang/String;

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

    .line 164
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public isOfferCreated()Z
    .registers 2

    .line 198
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$token()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public mayManage()Z
    .registers 2

    .line 245
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$mayManage()Z

    move-result v0

    return v0
.end method

.method public mayRead()Z
    .registers 2

    .line 226
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$mayRead()Z

    move-result v0

    return v0
.end method

.method public mayWrite()Z
    .registers 2

    .line 235
    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$mayWrite()Z

    move-result v0

    return v0
.end method

.method public realmGet$createdAt()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lio/realm/permissions/PermissionOffer;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$expiresAt()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lio/realm/permissions/PermissionOffer;->expiresAt:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/permissions/PermissionOffer;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mayManage()Z
    .registers 2

    iget-boolean v0, p0, Lio/realm/permissions/PermissionOffer;->mayManage:Z

    return v0
.end method

.method public realmGet$mayRead()Z
    .registers 2

    iget-boolean v0, p0, Lio/realm/permissions/PermissionOffer;->mayRead:Z

    return v0
.end method

.method public realmGet$mayWrite()Z
    .registers 2

    iget-boolean v0, p0, Lio/realm/permissions/PermissionOffer;->mayWrite:Z

    return v0
.end method

.method public realmGet$realmUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/permissions/PermissionOffer;->realmUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$statusCode()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lio/realm/permissions/PermissionOffer;->statusCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public realmGet$statusMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/permissions/PermissionOffer;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$token()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/permissions/PermissionOffer;->token:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$updatedAt()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lio/realm/permissions/PermissionOffer;->updatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public realmSet$createdAt(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lio/realm/permissions/PermissionOffer;->createdAt:Ljava/util/Date;

    return-void
.end method

.method public realmSet$expiresAt(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lio/realm/permissions/PermissionOffer;->expiresAt:Ljava/util/Date;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/realm/permissions/PermissionOffer;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mayManage(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/realm/permissions/PermissionOffer;->mayManage:Z

    return-void
.end method

.method public realmSet$mayRead(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/realm/permissions/PermissionOffer;->mayRead:Z

    return-void
.end method

.method public realmSet$mayWrite(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/realm/permissions/PermissionOffer;->mayWrite:Z

    return-void
.end method

.method public realmSet$realmUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/realm/permissions/PermissionOffer;->realmUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$statusCode(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lio/realm/permissions/PermissionOffer;->statusCode:Ljava/lang/Integer;

    return-void
.end method

.method public realmSet$statusMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/realm/permissions/PermissionOffer;->statusMessage:Ljava/lang/String;

    return-void
.end method

.method public realmSet$token(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/realm/permissions/PermissionOffer;->token:Ljava/lang/String;

    return-void
.end method

.method public realmSet$updatedAt(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lio/realm/permissions/PermissionOffer;->updatedAt:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionOffer{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", createdAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", updatedAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", statusCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", statusMessage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", token=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$token()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", realmUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mayRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$mayRead()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mayWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$mayWrite()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mayManage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$mayManage()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", expiresAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/permissions/PermissionOffer;->realmGet$expiresAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
