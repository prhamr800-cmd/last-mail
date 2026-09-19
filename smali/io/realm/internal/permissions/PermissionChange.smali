###### Class io.realm.internal.permissions.PermissionChange (io.realm.internal.permissions.PermissionChange)
.class public Lio/realm/internal/permissions/PermissionChange;
.super Ljava/lang/Object;
.source "PermissionChange.java"

# interfaces
.implements Lio/realm/internal/permissions/BasePermissionApi;
.implements Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;


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

.field private mayManage:Ljava/lang/Boolean;

.field private mayRead:Ljava/lang/Boolean;

.field private mayWrite:Ljava/lang/Boolean;

.field private metadataKey:Ljava/lang/String;

.field private metadataNameSpace:Ljava/lang/String;

.field private metadataValue:Ljava/lang/String;

.field private realmUrl:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field private statusCode:Ljava/lang/Integer;

.field private statusMessage:Ljava/lang/String;

.field private updatedAt:Ljava/util/Date;
    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 42
    :cond_d
    nop

    .line 44
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$id(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$createdAt(Ljava/util/Date;)V

    .line 47
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$statusCode(Ljava/lang/Integer;)V

    .line 60
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayRead(Ljava/lang/Boolean;)V

    .line 61
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    .line 62
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayManage(Ljava/lang/Boolean;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 8
    .param p1, "realmUrl"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "mayRead"    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "mayWrite"    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "mayManage"    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 42
    :cond_d
    nop

    .line 44
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$id(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$createdAt(Ljava/util/Date;)V

    .line 47
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$statusCode(Ljava/lang/Integer;)V

    .line 60
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayRead(Ljava/lang/Boolean;)V

    .line 61
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    .line 62
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayManage(Ljava/lang/Boolean;)V

    .line 112
    invoke-virtual {p0, p1}, Lio/realm/internal/permissions/PermissionChange;->realmSet$realmUrl(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p2}, Lio/realm/internal/permissions/PermissionChange;->realmSet$userId(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p3}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayRead(Ljava/lang/Boolean;)V

    .line 115
    invoke-virtual {p0, p4}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    .line 116
    invoke-virtual {p0, p5}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayManage(Ljava/lang/Boolean;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 10
    .param p1, "realmUrl"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "metadataKey"    # Ljava/lang/String;
    .param p4, "metadataValue"    # Ljava/lang/String;
    .param p5, "mayRead"    # Ljava/lang/Boolean;
    .param p6, "mayWrite"    # Ljava/lang/Boolean;
    .param p7, "mayManage"    # Ljava/lang/Boolean;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 42
    :cond_d
    nop

    .line 44
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$id(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$createdAt(Ljava/util/Date;)V

    .line 47
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$statusCode(Ljava/lang/Integer;)V

    .line 60
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayRead(Ljava/lang/Boolean;)V

    .line 61
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    .line 62
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayManage(Ljava/lang/Boolean;)V

    .line 121
    invoke-virtual {p0, p1}, Lio/realm/internal/permissions/PermissionChange;->realmSet$realmUrl(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, p2}, Lio/realm/internal/permissions/PermissionChange;->realmSet$userId(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p3}, Lio/realm/internal/permissions/PermissionChange;->realmSet$metadataKey(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, p4}, Lio/realm/internal/permissions/PermissionChange;->realmSet$metadataValue(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p5}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayRead(Ljava/lang/Boolean;)V

    .line 126
    invoke-virtual {p0, p6}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    .line 127
    invoke-virtual {p0, p7}, Lio/realm/internal/permissions/PermissionChange;->realmSet$mayManage(Ljava/lang/Boolean;)V

    .line 128
    return-void
.end method

.method public static fromRequest(Lio/realm/permissions/PermissionRequest;)Lio/realm/internal/permissions/PermissionChange;
    .registers 16
    .param p0, "request"    # Lio/realm/permissions/PermissionRequest;

    .line 71
    invoke-virtual {p0}, Lio/realm/permissions/PermissionRequest;->getCondition()Lio/realm/permissions/UserCondition;

    move-result-object v0

    .line 72
    .local v0, "condition":Lio/realm/permissions/UserCondition;
    invoke-virtual {p0}, Lio/realm/permissions/PermissionRequest;->getAccessLevel()Lio/realm/permissions/AccessLevel;

    move-result-object v1

    .line 73
    .local v1, "level":Lio/realm/permissions/AccessLevel;
    invoke-virtual {p0}, Lio/realm/permissions/PermissionRequest;->getUrl()Ljava/lang/String;

    move-result-object v10

    .line 75
    .local v10, "realmUrl":Ljava/lang/String;
    const-string v2, ""

    .line 76
    .local v2, "userId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 77
    .local v3, "metadataKey":Ljava/lang/String;
    const/4 v4, 0x0

    .line 78
    .local v4, "metadataValue":Ljava/lang/String;
    sget-object v5, Lio/realm/internal/permissions/PermissionChange$1;->$SwitchMap$io$realm$permissions$UserCondition$MatcherType:[I

    invoke-virtual {v0}, Lio/realm/permissions/UserCondition;->getType()Lio/realm/permissions/UserCondition$MatcherType;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/permissions/UserCondition$MatcherType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_54

    .line 88
    .end local v2    # "userId":Ljava/lang/String;
    .end local v3    # "metadataKey":Ljava/lang/String;
    .end local v4    # "metadataValue":Ljava/lang/String;
    .local v11, "userId":Ljava/lang/String;
    .local v12, "metadataKey":Ljava/lang/String;
    .local v13, "metadataValue":Ljava/lang/String;
    :goto_1f
    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    goto :goto_31

    .line 83
    .end local v11    # "userId":Ljava/lang/String;
    .end local v12    # "metadataKey":Ljava/lang/String;
    .end local v13    # "metadataValue":Ljava/lang/String;
    .restart local v2    # "userId":Ljava/lang/String;
    .restart local v3    # "metadataKey":Ljava/lang/String;
    .restart local v4    # "metadataValue":Ljava/lang/String;
    :pswitch_23
    invoke-virtual {v0}, Lio/realm/permissions/UserCondition;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {v0}, Lio/realm/permissions/UserCondition;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_1f

    .line 80
    :pswitch_2c
    invoke-virtual {v0}, Lio/realm/permissions/UserCondition;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 81
    goto :goto_1f

    .line 88
    .end local v2    # "userId":Ljava/lang/String;
    .end local v3    # "metadataKey":Ljava/lang/String;
    .end local v4    # "metadataValue":Ljava/lang/String;
    .restart local v11    # "userId":Ljava/lang/String;
    .restart local v12    # "metadataKey":Ljava/lang/String;
    .restart local v13    # "metadataValue":Ljava/lang/String;
    :goto_31
    new-instance v14, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v1}, Lio/realm/permissions/AccessLevel;->mayRead()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1}, Lio/realm/permissions/AccessLevel;->mayWrite()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 89
    invoke-virtual {v1}, Lio/realm/permissions/AccessLevel;->mayManage()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v2, v14

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v2 .. v9}, Lio/realm/internal/permissions/PermissionChange;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 88
    return-object v14

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public getCreatedAt()Ljava/util/Date;
    .registers 2
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "EI_EXPOSE_REP"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 132
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataKey()Ljava/lang/String;
    .registers 2

    .line 188
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$metadataKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataValue()Ljava/lang/String;
    .registers 2

    .line 192
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$metadataValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealmUrl()Ljava/lang/String;
    .registers 2

    .line 165
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 155
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 161
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$statusMessage()Ljava/lang/String;

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

    .line 144
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 169
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$userId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mayManage()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 184
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$mayManage()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public mayRead()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 174
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$mayRead()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public mayWrite()Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 179
    invoke-virtual {p0}, Lio/realm/internal/permissions/PermissionChange;->realmGet$mayWrite()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$createdAt()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$mayManage()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->mayManage:Ljava/lang/Boolean;

    return-object v0
.end method

.method public realmGet$mayRead()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->mayRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public realmGet$mayWrite()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->mayWrite:Ljava/lang/Boolean;

    return-object v0
.end method

.method public realmGet$metadataKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->metadataKey:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$metadataNameSpace()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->metadataNameSpace:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$metadataValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->metadataValue:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$realmUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->realmUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$statusCode()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->statusCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public realmGet$statusMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$updatedAt()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->updatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$userId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/internal/permissions/PermissionChange;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$createdAt(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->createdAt:Ljava/util/Date;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$mayManage(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->mayManage:Ljava/lang/Boolean;

    return-void
.end method

.method public realmSet$mayRead(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->mayRead:Ljava/lang/Boolean;

    return-void
.end method

.method public realmSet$mayWrite(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->mayWrite:Ljava/lang/Boolean;

    return-void
.end method

.method public realmSet$metadataKey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->metadataKey:Ljava/lang/String;

    return-void
.end method

.method public realmSet$metadataNameSpace(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->metadataNameSpace:Ljava/lang/String;

    return-void
.end method

.method public realmSet$metadataValue(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->metadataValue:Ljava/lang/String;

    return-void
.end method

.method public realmSet$realmUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->realmUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$statusCode(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->statusCode:Ljava/lang/Integer;

    return-void
.end method

.method public realmSet$statusMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->statusMessage:Ljava/lang/String;

    return-void
.end method

.method public realmSet$updatedAt(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->updatedAt:Ljava/util/Date;

    return-void
.end method

.method public realmSet$userId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/permissions/PermissionChange;->userId:Ljava/lang/String;

    return-void
.end method

###### Class io.realm.internal.permissions.PermissionChange.AnonymousClass1 (io.realm.internal.permissions.PermissionChange$1)
.class synthetic Lio/realm/internal/permissions/PermissionChange$1;
.super Ljava/lang/Object;
.source "PermissionChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/permissions/PermissionChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$realm$permissions$UserCondition$MatcherType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 78
    invoke-static {}, Lio/realm/permissions/UserCondition$MatcherType;->values()[Lio/realm/permissions/UserCondition$MatcherType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/realm/internal/permissions/PermissionChange$1;->$SwitchMap$io$realm$permissions$UserCondition$MatcherType:[I

    :try_start_9
    sget-object v0, Lio/realm/internal/permissions/PermissionChange$1;->$SwitchMap$io$realm$permissions$UserCondition$MatcherType:[I

    sget-object v1, Lio/realm/permissions/UserCondition$MatcherType;->USER_ID:Lio/realm/permissions/UserCondition$MatcherType;

    invoke-virtual {v1}, Lio/realm/permissions/UserCondition$MatcherType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Lio/realm/internal/permissions/PermissionChange$1;->$SwitchMap$io$realm$permissions$UserCondition$MatcherType:[I

    sget-object v1, Lio/realm/permissions/UserCondition$MatcherType;->METADATA:Lio/realm/permissions/UserCondition$MatcherType;

    invoke-virtual {v1}, Lio/realm/permissions/UserCondition$MatcherType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    return-void
.end method
