package io.realm.sync.permissions;

import io.realm.RealmObject;
import io.realm.RealmResults;
import io.realm.annotations.LinkingObjects;
import io.realm.annotations.PrimaryKey;
import io.realm.annotations.RealmClass;
import io.realm.annotations.Required;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.annotations.ObjectServer;
import io.realm.io_realm_sync_permissions_PermissionUserRealmProxy;
import io.realm.io_realm_sync_permissions_PermissionUserRealmProxyInterface;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@RealmClass(name = io_realm_sync_permissions_PermissionUserRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME)
@ObjectServer
public class PermissionUser extends RealmObject implements io_realm_sync_permissions_PermissionUserRealmProxyInterface {

    @PrimaryKey
    @Required
    private String id;
    private Role role;

    @LinkingObjects("members")
    final RealmResults<Role> roles;

    public String realmGet$id() {
        return this.id;
    }

    public Role realmGet$role() {
        return this.role;
    }

    public RealmResults realmGet$roles() {
        return this.roles;
    }

    public void realmSet$id(String str) {
        this.id = str;
    }

    public void realmSet$role(Role role) {
        this.role = role;
    }

    public void realmSet$roles(RealmResults realmResults) {
        this.roles = realmResults;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PermissionUser() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$roles(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PermissionUser(String id) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$roles(null);
        realmSet$id(id);
    }

    public String getId() {
        return realmGet$id();
    }

    @Nullable
    public RealmResults<Role> getRoles() {
        return realmGet$roles();
    }

    public Role getPrivateRole() {
        return realmGet$role();
    }
}
