package io.realm.sync.permissions;

import io.realm.RealmList;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.annotations.RealmClass;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.annotations.ObjectServer;
import io.realm.io_realm_sync_permissions_RealmPermissionsRealmProxy;
import io.realm.io_realm_sync_permissions_RealmPermissionsRealmProxyInterface;

/* JADX INFO: loaded from: classes.dex */
@RealmClass(name = io_realm_sync_permissions_RealmPermissionsRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME)
@ObjectServer
public class RealmPermissions extends RealmObject implements io_realm_sync_permissions_RealmPermissionsRealmProxyInterface {

    @PrimaryKey
    private int id;
    private RealmList<Permission> permissions;

    public int realmGet$id() {
        return this.id;
    }

    public RealmList realmGet$permissions() {
        return this.permissions;
    }

    public void realmSet$id(int i) {
        this.id = i;
    }

    public void realmSet$permissions(RealmList realmList) {
        this.permissions = realmList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RealmPermissions() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(0);
        realmSet$permissions(new RealmList());
    }

    public RealmList<Permission> getPermissions() {
        return realmGet$permissions();
    }
}
