###### Class io.realm.permissions.PermissionRequest (io.realm.permissions.PermissionRequest)
.class public final Lio/realm/permissions/PermissionRequest;
.super Ljava/lang/Object;
.source "PermissionRequest.java"


# instance fields
.field private final accessLevel:Lio/realm/permissions/AccessLevel;

.field private final condition:Lio/realm/permissions/UserCondition;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/realm/permissions/UserCondition;Ljava/lang/String;Lio/realm/permissions/AccessLevel;)V
    .registers 4
    .param p1, "condition"    # Lio/realm/permissions/UserCondition;
    .param p2, "realmUrl"    # Ljava/lang/String;
    .param p3, "accessLevel"    # Lio/realm/permissions/AccessLevel;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-direct {p0, p1}, Lio/realm/permissions/PermissionRequest;->checkCondition(Lio/realm/permissions/UserCondition;)V

    .line 57
    invoke-direct {p0, p2}, Lio/realm/permissions/PermissionRequest;->checkUrl(Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p3}, Lio/realm/permissions/PermissionRequest;->checkAccessLevel(Lio/realm/permissions/AccessLevel;)V

    .line 59
    iput-object p1, p0, Lio/realm/permissions/PermissionRequest;->condition:Lio/realm/permissions/UserCondition;

    .line 60
    iput-object p3, p0, Lio/realm/permissions/PermissionRequest;->accessLevel:Lio/realm/permissions/AccessLevel;

    .line 61
    iput-object p2, p0, Lio/realm/permissions/PermissionRequest;->url:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private checkAccessLevel(Lio/realm/permissions/AccessLevel;)V
    .registers 4
    .param p1, "accessLevel"    # Lio/realm/permissions/AccessLevel;

    .line 88
    if-eqz p1, :cond_3

    .line 91
    return-void

    .line 89
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'accessLevel\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCondition(Lio/realm/permissions/UserCondition;)V
    .registers 4
    .param p1, "condition"    # Lio/realm/permissions/UserCondition;

    .line 82
    if-eqz p1, :cond_3

    .line 85
    return-void

    .line 83
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'condition\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkUrl(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 69
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 70
    return-void

    .line 75
    :cond_f
    :try_start_f
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/net/URISyntaxException; {:try_start_f .. :try_end_14} :catch_16

    .line 78
    nop

    .line 79
    return-void

    .line 76
    :catch_16
    move-exception v0

    .line 77
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid \'realmUrl\'."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 66
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-empty \'realmUrl\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 125
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 126
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_30

    .line 128
    :cond_12
    move-object v1, p1

    check-cast v1, Lio/realm/permissions/PermissionRequest;

    .line 130
    .local v1, "that":Lio/realm/permissions/PermissionRequest;
    iget-object v2, p0, Lio/realm/permissions/PermissionRequest;->accessLevel:Lio/realm/permissions/AccessLevel;

    iget-object v3, v1, Lio/realm/permissions/PermissionRequest;->accessLevel:Lio/realm/permissions/AccessLevel;

    if-eq v2, v3, :cond_1c

    return v0

    .line 131
    :cond_1c
    iget-object v2, p0, Lio/realm/permissions/PermissionRequest;->condition:Lio/realm/permissions/UserCondition;

    iget-object v3, v1, Lio/realm/permissions/PermissionRequest;->condition:Lio/realm/permissions/UserCondition;

    invoke-virtual {v2, v3}, Lio/realm/permissions/UserCondition;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    return v0

    .line 132
    :cond_27
    iget-object v0, p0, Lio/realm/permissions/PermissionRequest;->url:Ljava/lang/String;

    iget-object v2, v1, Lio/realm/permissions/PermissionRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 126
    .end local v1    # "that":Lio/realm/permissions/PermissionRequest;
    :cond_30
    :goto_30
    return v0
.end method

.method public getAccessLevel()Lio/realm/permissions/AccessLevel;
    .registers 2

    .line 99
    iget-object v0, p0, Lio/realm/permissions/PermissionRequest;->accessLevel:Lio/realm/permissions/AccessLevel;

    return-object v0
.end method

.method public getCondition()Lio/realm/permissions/UserCondition;
    .registers 2

    .line 109
    iget-object v0, p0, Lio/realm/permissions/PermissionRequest;->condition:Lio/realm/permissions/UserCondition;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Lio/realm/permissions/PermissionRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 138
    iget-object v0, p0, Lio/realm/permissions/PermissionRequest;->accessLevel:Lio/realm/permissions/AccessLevel;

    invoke-virtual {v0}, Lio/realm/permissions/AccessLevel;->hashCode()I

    move-result v0

    .line 139
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/realm/permissions/PermissionRequest;->condition:Lio/realm/permissions/UserCondition;

    invoke-virtual {v2}, Lio/realm/permissions/UserCondition;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 140
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/realm/permissions/PermissionRequest;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 141
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionRequest{accessLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/permissions/PermissionRequest;->accessLevel:Lio/realm/permissions/AccessLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/permissions/PermissionRequest;->condition:Lio/realm/permissions/UserCondition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/permissions/PermissionRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
