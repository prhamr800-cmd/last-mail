package io.realm.sync.permissions;

import io.realm.Realm;
import io.realm.RealmList;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.annotations.RealmClass;
import io.realm.annotations.Required;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Util;
import io.realm.internal.annotations.ObjectServer;
import io.realm.io_realm_sync_permissions_RoleRealmProxy;
import io.realm.io_realm_sync_permissions_RoleRealmProxyInterface;

/* JADX INFO: loaded from: classes.dex */
@RealmClass(name = io_realm_sync_permissions_RoleRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME)
@ObjectServer
public class Role extends RealmObject implements io_realm_sync_permissions_RoleRealmProxyInterface {
    private RealmList<PermissionUser> members;

    @PrimaryKey
    @Required
    private String name;

    public RealmList realmGet$members() {
        return this.members;
    }

    public String realmGet$name() {
        return this.name;
    }

    public void realmSet$members(RealmList realmList) {
        this.members = realmList;
    }

    public void realmSet$name(String str) {
        this.name = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Role() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$members(new RealmList());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Role(String name) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$members(new RealmList());
        realmSet$name(name);
    }

    public String getName() {
        return realmGet$name();
    }

    public void addMember(String userId) {
        if (isManaged()) {
            if (Util.isEmptyString(userId)) {
                throw new IllegalArgumentException("Non-empty 'userId' required");
            }
            Realm realm = getRealm();
            PermissionUser user = (PermissionUser) realm.where(PermissionUser.class).equalTo("id", userId).findFirst();
            if (user == null) {
                user = (PermissionUser) realm.createObject(PermissionUser.class, userId);
            }
            realmGet$members().add(user);
            return;
        }
        throw new IllegalStateException("Can not add a member to a non managed Role");
    }

    public boolean removeMember(String userId) {
        PermissionUser user = (PermissionUser) getRealm().where(PermissionUser.class).equalTo("id", userId).findFirst();
        if (user != null) {
            return realmGet$members().remove(user);
        }
        return false;
    }

    public boolean hasMember(String userId) {
        return realmGet$members().where().equalTo("id", userId).count() > 0;
    }

    public RealmList<PermissionUser> getMembers() {
        return realmGet$members();
    }
}
