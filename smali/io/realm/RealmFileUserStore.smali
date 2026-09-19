###### Class io.realm.RealmFileUserStore (io.realm.RealmFileUserStore)
.class public Lio/realm/RealmFileUserStore;
.super Ljava/lang/Object;
.source "RealmFileUserStore.java"

# interfaces
.implements Lio/realm/UserStore;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static native nativeGetAllUsers()[Ljava/lang/String;
.end method

.method protected static native nativeGetCurrentUser()Ljava/lang/String;
.end method

.method protected static native nativeGetUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method protected static native nativeIsActive(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected static native nativeLogoutUser(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected static native nativeUpdateOrCreateUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static toSyncUserOrNull(Ljava/lang/String;)Lio/realm/SyncUser;
    .registers 2
    .param p0, "userJson"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 95
    if-nez p0, :cond_4

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_4
    invoke-static {p0}, Lio/realm/SyncUser;->fromJson(Ljava/lang/String;)Lio/realm/SyncUser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allUsers()Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/realm/SyncUser;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-static {}, Lio/realm/RealmFileUserStore;->nativeGetAllUsers()[Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "allUsers":[Ljava/lang/String;
    if-eqz v0, :cond_20

    array-length v1, v0

    if-lez v1, :cond_20

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/realm/SyncUser;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_1f

    aget-object v4, v0, v3

    .line 78
    .local v4, "userJson":Ljava/lang/String;
    invoke-static {v4}, Lio/realm/SyncUser;->fromJson(Ljava/lang/String;)Lio/realm/SyncUser;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v4    # "userJson":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 80
    :cond_1f
    return-object v1

    .line 82
    .end local v1    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/realm/SyncUser;>;"
    :cond_20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lio/realm/SyncUser;
    .registers 5
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "authUrl"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 57
    invoke-static {p1, p2}, Lio/realm/RealmFileUserStore;->nativeGetUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "userJson":Ljava/lang/String;
    invoke-static {v0}, Lio/realm/RealmFileUserStore;->toSyncUserOrNull(Ljava/lang/String;)Lio/realm/SyncUser;

    move-result-object v1

    return-object v1
.end method

.method public getCurrent()Lio/realm/SyncUser;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 47
    invoke-static {}, Lio/realm/RealmFileUserStore;->nativeGetCurrentUser()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "userJson":Ljava/lang/String;
    invoke-static {v0}, Lio/realm/RealmFileUserStore;->toSyncUserOrNull(Ljava/lang/String;)Lio/realm/SyncUser;

    move-result-object v1

    return-object v1
.end method

.method public isActive(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "authenticationUrl"    # Ljava/lang/String;

    .line 90
    invoke-static {p1, p2}, Lio/realm/RealmFileUserStore;->nativeIsActive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public put(Lio/realm/SyncUser;)V
    .registers 5
    .param p1, "user"    # Lio/realm/SyncUser;

    .line 36
    invoke-virtual {p1}, Lio/realm/SyncUser;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "userJson":Ljava/lang/String;
    invoke-virtual {p1}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lio/realm/RealmFileUserStore;->nativeUpdateOrCreateUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "authUrl"    # Ljava/lang/String;

    .line 66
    invoke-static {p1, p2}, Lio/realm/RealmFileUserStore;->nativeLogoutUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method
