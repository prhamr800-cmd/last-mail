###### Class io.realm.sync.permissions.RealmPrivileges (io.realm.sync.permissions.RealmPrivileges)
.class public final Lio/realm/sync/permissions/RealmPrivileges;
.super Ljava/lang/Object;
.source "RealmPrivileges.java"


# annotations
.annotation build Lio/realm/internal/annotations/ObjectServer;
.end annotation


# instance fields
.field private canCreate:Z

.field private canDelete:Z

.field private canModifySchema:Z

.field private canQuery:Z

.field private canRead:Z

.field private canSetPermissions:Z

.field private canUpdate:Z


# direct methods
.method public constructor <init>(J)V
    .registers 10
    .param p1, "privileges"    # J

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/16 v0, 0x1

    and-long/2addr v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iput-boolean v0, p0, Lio/realm/sync/permissions/RealmPrivileges;->canRead:Z

    .line 48
    const-wide/16 v0, 0x2

    and-long/2addr v0, p1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iput-boolean v0, p0, Lio/realm/sync/permissions/RealmPrivileges;->canUpdate:Z

    .line 49
    const-wide/16 v0, 0x4

    and-long/2addr v0, p1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    iput-boolean v0, p0, Lio/realm/sync/permissions/RealmPrivileges;->canDelete:Z

    .line 50
    const-wide/16 v0, 0x8

    and-long/2addr v0, p1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    iput-boolean v0, p0, Lio/realm/sync/permissions/RealmPrivileges;->canSetPermissions:Z

    .line 51
    const-wide/16 v0, 0x10

    and-long/2addr v0, p1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_40

    const/4 v0, 0x1

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    :goto_41
    iput-boolean v0, p0, Lio/realm/sync/permissions/RealmPrivileges;->canQuery:Z

    .line 52
    const-wide/16 v0, 0x20

    and-long/2addr v0, p1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_4c

    const/4 v0, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    iput-boolean v0, p0, Lio/realm/sync/permissions/RealmPrivileges;->canCreate:Z

    .line 53
    const-wide/16 v0, 0x40

    and-long/2addr v0, p1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_58

    const/4 v2, 0x1

    nop

    :cond_58
    iput-boolean v2, p0, Lio/realm/sync/permissions/RealmPrivileges;->canModifySchema:Z

    .line 54
    return-void
.end method


# virtual methods
.method public canModifySchema()Z
    .registers 2

    .line 116
    iget-boolean v0, p0, Lio/realm/sync/permissions/RealmPrivileges;->canModifySchema:Z

    return v0
.end method

.method public canRead()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Lio/realm/sync/permissions/RealmPrivileges;->canRead:Z

    return v0
.end method

.method public canSetPermissions()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lio/realm/sync/permissions/RealmPrivileges;->canSetPermissions:Z

    return v0
.end method

.method public canUpdate()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Lio/realm/sync/permissions/RealmPrivileges;->canUpdate:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 121
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 122
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_48

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_48

    .line 124
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/sync/permissions/RealmPrivileges;

    .line 126
    .local v2, "that":Lio/realm/sync/permissions/RealmPrivileges;
    iget-boolean v3, p0, Lio/realm/sync/permissions/RealmPrivileges;->canRead:Z

    iget-boolean v4, v2, Lio/realm/sync/permissions/RealmPrivileges;->canRead:Z

    if-eq v3, v4, :cond_1c

    return v1

    .line 127
    :cond_1c
    iget-boolean v3, p0, Lio/realm/sync/permissions/RealmPrivileges;->canUpdate:Z

    iget-boolean v4, v2, Lio/realm/sync/permissions/RealmPrivileges;->canUpdate:Z

    if-eq v3, v4, :cond_23

    return v1

    .line 128
    :cond_23
    iget-boolean v3, p0, Lio/realm/sync/permissions/RealmPrivileges;->canDelete:Z

    iget-boolean v4, v2, Lio/realm/sync/permissions/RealmPrivileges;->canDelete:Z

    if-eq v3, v4, :cond_2a

    return v1

    .line 129
    :cond_2a
    iget-boolean v3, p0, Lio/realm/sync/permissions/RealmPrivileges;->canSetPermissions:Z

    iget-boolean v4, v2, Lio/realm/sync/permissions/RealmPrivileges;->canSetPermissions:Z

    if-eq v3, v4, :cond_31

    return v1

    .line 130
    :cond_31
    iget-boolean v3, p0, Lio/realm/sync/permissions/RealmPrivileges;->canQuery:Z

    iget-boolean v4, v2, Lio/realm/sync/permissions/RealmPrivileges;->canQuery:Z

    if-eq v3, v4, :cond_38

    return v1

    .line 131
    :cond_38
    iget-boolean v3, p0, Lio/realm/sync/permissions/RealmPrivileges;->canCreate:Z

    iget-boolean v4, v2, Lio/realm/sync/permissions/RealmPrivileges;->canCreate:Z

    if-eq v3, v4, :cond_3f

    return v1

    .line 132
    :cond_3f
    iget-boolean v3, p0, Lio/realm/sync/permissions/RealmPrivileges;->canModifySchema:Z

    iget-boolean v4, v2, Lio/realm/sync/permissions/RealmPrivileges;->canModifySchema:Z

    if-ne v3, v4, :cond_46

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    :goto_47
    return v0

    .line 122
    .end local v2    # "that":Lio/realm/sync/permissions/RealmPrivileges;
    :cond_48
    :goto_48
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 137
    iget-boolean v0, p0, Lio/realm/sync/permissions/RealmPrivileges;->canRead:Z

    .line 138
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lio/realm/sync/permissions/RealmPrivileges;->canUpdate:Z

    add-int/2addr v1, v2

    .line 139
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lio/realm/sync/permissions/RealmPrivileges;->canDelete:Z

    add-int/2addr v0, v2

    .line 140
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lio/realm/sync/permissions/RealmPrivileges;->canSetPermissions:Z

    add-int/2addr v1, v2

    .line 141
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lio/realm/sync/permissions/RealmPrivileges;->canQuery:Z

    add-int/2addr v0, v2

    .line 142
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lio/realm/sync/permissions/RealmPrivileges;->canCreate:Z

    add-int/2addr v1, v2

    .line 143
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lio/realm/sync/permissions/RealmPrivileges;->canModifySchema:Z

    add-int/2addr v0, v2

    .line 144
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RealmPrivileges{canRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/realm/sync/permissions/RealmPrivileges;->canRead:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/realm/sync/permissions/RealmPrivileges;->canUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canDelete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/realm/sync/permissions/RealmPrivileges;->canDelete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canSetPermissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/realm/sync/permissions/RealmPrivileges;->canSetPermissions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canQuery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/realm/sync/permissions/RealmPrivileges;->canQuery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canCreate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/realm/sync/permissions/RealmPrivileges;->canCreate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canModifySchema="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/realm/sync/permissions/RealmPrivileges;->canModifySchema:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
