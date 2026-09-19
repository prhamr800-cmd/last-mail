###### Class io.realm.SyncUserInfo (io.realm.SyncUserInfo)
.class public Lio/realm/SyncUserInfo;
.super Ljava/lang/Object;
.source "SyncUserInfo.java"


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

.field private final identity:Ljava/lang/String;

.field private final isAdmin:Z

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


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)V
    .registers 6
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "isAdmin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "accounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/realm/SyncUserInfo;->identity:Ljava/lang/String;

    .line 37
    iput-boolean p2, p0, Lio/realm/SyncUserInfo;->isAdmin:Z

    .line 38
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/realm/SyncUserInfo;->metadata:Ljava/util/Map;

    .line 39
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/realm/SyncUserInfo;->accounts:Ljava/util/Map;

    .line 40
    return-void
.end method

.method static fromLookupUserIdResponse(Lio/realm/internal/network/LookupUserIdResponse;)Lio/realm/SyncUserInfo;
    .registers 6
    .param p0, "response"    # Lio/realm/internal/network/LookupUserIdResponse;

    .line 43
    new-instance v0, Lio/realm/SyncUserInfo;

    invoke-virtual {p0}, Lio/realm/internal/network/LookupUserIdResponse;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/internal/network/LookupUserIdResponse;->isAdmin()Z

    move-result v2

    invoke-virtual {p0}, Lio/realm/internal/network/LookupUserIdResponse;->getMetadata()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0}, Lio/realm/internal/network/LookupUserIdResponse;->getAccounts()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/realm/SyncUserInfo;-><init>(Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 85
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 86
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_30

    .line 88
    :cond_12
    move-object v1, p1

    check-cast v1, Lio/realm/SyncUserInfo;

    .line 90
    .local v1, "that":Lio/realm/SyncUserInfo;
    iget-boolean v2, p0, Lio/realm/SyncUserInfo;->isAdmin:Z

    iget-boolean v3, v1, Lio/realm/SyncUserInfo;->isAdmin:Z

    if-eq v2, v3, :cond_1c

    return v0

    .line 91
    :cond_1c
    iget-object v2, p0, Lio/realm/SyncUserInfo;->identity:Ljava/lang/String;

    iget-object v3, v1, Lio/realm/SyncUserInfo;->identity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    return v0

    .line 92
    :cond_27
    iget-object v0, p0, Lio/realm/SyncUserInfo;->metadata:Ljava/util/Map;

    iget-object v2, v1, Lio/realm/SyncUserInfo;->metadata:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 86
    .end local v1    # "that":Lio/realm/SyncUserInfo;
    :cond_30
    :goto_30
    return v0
.end method

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

    .line 81
    iget-object v0, p0, Lio/realm/SyncUserInfo;->accounts:Ljava/util/Map;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lio/realm/SyncUserInfo;->identity:Ljava/lang/String;

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

    .line 67
    iget-object v0, p0, Lio/realm/SyncUserInfo;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 97
    iget-object v0, p0, Lio/realm/SyncUserInfo;->identity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 98
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lio/realm/SyncUserInfo;->isAdmin:Z

    add-int/2addr v1, v2

    .line 99
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/realm/SyncUserInfo;->metadata:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 100
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isAdmin()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Lio/realm/SyncUserInfo;->isAdmin:Z

    return v0
.end method
