package io.realm.sync.permissions;

import io.realm.RealmObject;
import io.realm.annotations.RealmClass;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.annotations.ObjectServer;
import io.realm.io_realm_sync_permissions_PermissionRealmProxy;
import io.realm.io_realm_sync_permissions_PermissionRealmProxyInterface;

/* JADX INFO: loaded from: classes.dex */
@RealmClass(name = io_realm_sync_permissions_PermissionRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME)
@ObjectServer
public class Permission extends RealmObject implements io_realm_sync_permissions_PermissionRealmProxyInterface {
    private boolean canCreate;
    private boolean canDelete;
    private boolean canModifySchema;
    private boolean canQuery;
    private boolean canRead;
    private boolean canSetPermissions;
    private boolean canUpdate;
    private Role role;

    public boolean realmGet$canCreate() {
        return this.canCreate;
    }

    public boolean realmGet$canDelete() {
        return this.canDelete;
    }

    public boolean realmGet$canModifySchema() {
        return this.canModifySchema;
    }

    public boolean realmGet$canQuery() {
        return this.canQuery;
    }

    public boolean realmGet$canRead() {
        return this.canRead;
    }

    public boolean realmGet$canSetPermissions() {
        return this.canSetPermissions;
    }

    public boolean realmGet$canUpdate() {
        return this.canUpdate;
    }

    public Role realmGet$role() {
        return this.role;
    }

    public void realmSet$canCreate(boolean z) {
        this.canCreate = z;
    }

    public void realmSet$canDelete(boolean z) {
        this.canDelete = z;
    }

    public void realmSet$canModifySchema(boolean z) {
        this.canModifySchema = z;
    }

    public void realmSet$canQuery(boolean z) {
        this.canQuery = z;
    }

    public void realmSet$canRead(boolean z) {
        this.canRead = z;
    }

    public void realmSet$canSetPermissions(boolean z) {
        this.canSetPermissions = z;
    }

    public void realmSet$canUpdate(boolean z) {
        this.canUpdate = z;
    }

    public void realmSet$role(Role role) {
        this.role = role;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ Permission(Role x0, boolean x1, boolean x2, boolean x3, boolean x4, boolean x5, boolean x6, boolean x7, AnonymousClass1 x8) {
        this(x0, x1, x2, x3, x4, x5, x6, x7);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static class Builder {
        private Role role;
        private boolean canRead = false;
        private boolean canUpdate = false;
        private boolean canDelete = false;
        private boolean canSetPermissions = false;
        private boolean canQuery = false;
        private boolean canCreate = false;
        private boolean canModifySchema = false;

        public Builder(Role role) {
            this.role = role;
        }

        public Builder allPrivileges() {
            this.canRead = true;
            this.canUpdate = true;
            this.canDelete = true;
            this.canSetPermissions = true;
            this.canQuery = true;
            this.canCreate = true;
            this.canModifySchema = true;
            return this;
        }

        public Builder noPrivileges() {
            this.canRead = false;
            this.canUpdate = false;
            this.canDelete = false;
            this.canSetPermissions = false;
            this.canQuery = false;
            this.canCreate = false;
            this.canModifySchema = false;
            return this;
        }

        public Builder canRead(boolean canRead) {
            this.canRead = canRead;
            return this;
        }

        public Builder canUpdate(boolean canUpdate) {
            this.canUpdate = canUpdate;
            return this;
        }

        public Builder canDelete(boolean canDelete) {
            this.canDelete = canDelete;
            return this;
        }

        public Builder canSetPermissions(boolean canSetPermissions) {
            this.canSetPermissions = canSetPermissions;
            return this;
        }

        public Builder canQuery(boolean canQuery) {
            this.canQuery = canQuery;
            return this;
        }

        public Builder canCreate(boolean canCreate) {
            this.canCreate = canCreate;
            return this;
        }

        public Builder canModifySchema(boolean canModifySchema) {
            this.canModifySchema = canModifySchema;
            return this;
        }

        public Permission build() {
            return new Permission(this.role, this.canRead, this.canUpdate, this.canDelete, this.canSetPermissions, this.canQuery, this.canCreate, this.canModifySchema, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Permission() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Permission(Role role) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$role(role);
    }

    private Permission(Role role, boolean canRead, boolean canUpdate, boolean canDelete, boolean canSetPermissions, boolean canQuery, boolean canCreate, boolean canModifySchema) {
        realmSet$role(role);
        realmSet$canRead(canRead);
        realmSet$canUpdate(canUpdate);
        realmSet$canDelete(canDelete);
        realmSet$canSetPermissions(canSetPermissions);
        realmSet$canQuery(canQuery);
        realmSet$canCreate(canCreate);
        realmSet$canModifySchema(canModifySchema);
    }

    public Role getRole() {
        return realmGet$role();
    }

    public boolean canRead() {
        return realmGet$canRead();
    }

    public void setCanRead(boolean canRead) {
        realmSet$canRead(canRead);
    }

    public boolean canUpdate() {
        return realmGet$canUpdate();
    }

    public void setCanUpdate(boolean canUpdate) {
        realmSet$canUpdate(canUpdate);
    }

    public boolean canDelete() {
        return realmGet$canDelete();
    }

    public void setCanDelete(boolean canDelete) {
        realmSet$canDelete(canDelete);
    }

    public boolean canSetPermissions() {
        return realmGet$canSetPermissions();
    }

    public void setCanSetPermissions(boolean canSetPermissions) {
        realmSet$canSetPermissions(canSetPermissions);
    }

    public boolean canQuery() {
        return realmGet$canQuery();
    }

    public void setCanQuery(boolean canQuery) {
        realmSet$canQuery(canQuery);
    }

    public boolean canCreate() {
        return realmGet$canCreate();
    }

    public void setCanCreate(boolean canCreate) {
        realmSet$canCreate(canCreate);
    }

    public boolean canModifySchema() {
        return realmGet$canModifySchema();
    }

    public void setCanModifySchema(boolean canModifySchema) {
        realmSet$canModifySchema(canModifySchema);
    }
}
