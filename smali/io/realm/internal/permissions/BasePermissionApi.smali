###### Class io.realm.internal.permissions.BasePermissionApi (io.realm.internal.permissions.BasePermissionApi)
.class public interface abstract Lio/realm/internal/permissions/BasePermissionApi;
.super Ljava/lang/Object;
.source "BasePermissionApi.java"

# interfaces
.implements Lio/realm/RealmModel;


# virtual methods
.method public abstract getCreatedAt()Ljava/util/Date;
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "EI_EXPOSE_REP"
        }
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getStatusCode()Ljava/lang/Integer;
.end method

.method public abstract getStatusMessage()Ljava/lang/String;
.end method

.method public abstract getUpdatedAt()Ljava/util/Date;
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "EI_EXPOSE_REP"
        }
    .end annotation
.end method
