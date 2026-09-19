###### Class io.realm.UserStore (io.realm.UserStore)
.class public interface abstract Lio/realm/UserStore;
.super Ljava/lang/Object;
.source "UserStore.java"


# virtual methods
.method public abstract allUsers()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/realm/SyncUser;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;Ljava/lang/String;)Lio/realm/SyncUser;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getCurrent()Lio/realm/SyncUser;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract isActive(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract put(Lio/realm/SyncUser;)V
.end method

.method public abstract remove(Ljava/lang/String;Ljava/lang/String;)V
.end method
