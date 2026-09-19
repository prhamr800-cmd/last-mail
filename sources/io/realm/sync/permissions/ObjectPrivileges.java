package io.realm.sync.permissions;

import io.realm.internal.annotations.ObjectServer;

/* JADX INFO: loaded from: classes2.dex */
@ObjectServer
public final class ObjectPrivileges {
    private boolean canCreate;
    private boolean canDelete;
    private boolean canModifySchema;
    private boolean canQuery;
    private boolean canRead;
    private boolean canSetPermissions;
    private boolean canUpdate;

    public ObjectPrivileges(long privileges) {
        this.canRead = (1 & privileges) != 0;
        this.canUpdate = (2 & privileges) != 0;
        this.canDelete = (4 & privileges) != 0;
        this.canSetPermissions = (8 & privileges) != 0;
        this.canQuery = (16 & privileges) != 0;
        this.canCreate = (32 & privileges) != 0;
        this.canModifySchema = (64 & privileges) != 0;
    }

    public boolean canRead() {
        return this.canRead;
    }

    public boolean canUpdate() {
        return this.canUpdate;
    }

    public boolean canDelete() {
        return this.canDelete;
    }

    public boolean canSetPermissions() {
        return this.canSetPermissions;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        ObjectPrivileges that = (ObjectPrivileges) o;
        return this.canRead == that.canRead && this.canUpdate == that.canUpdate && this.canDelete == that.canDelete && this.canSetPermissions == that.canSetPermissions && this.canQuery == that.canQuery && this.canCreate == that.canCreate && this.canModifySchema == that.canModifySchema;
    }

    public int hashCode() {
        return ((((((((((((this.canRead ? 1 : 0) * 31) + (this.canUpdate ? 1 : 0)) * 31) + (this.canDelete ? 1 : 0)) * 31) + (this.canSetPermissions ? 1 : 0)) * 31) + (this.canQuery ? 1 : 0)) * 31) + (this.canCreate ? 1 : 0)) * 31) + (this.canModifySchema ? 1 : 0);
    }

    public String toString() {
        return "RealmPrivileges{canRead=" + this.canRead + ", canUpdate=" + this.canUpdate + ", canDelete=" + this.canDelete + ", canSetPermissions=" + this.canSetPermissions + ", canQuery=" + this.canQuery + ", canCreate=" + this.canCreate + ", canModifySchema=" + this.canModifySchema + '}';
    }
}
