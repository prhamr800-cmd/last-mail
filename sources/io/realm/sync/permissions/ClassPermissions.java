package io.realm.sync.permissions;

import io.realm.RealmList;
import io.realm.RealmModel;
import io.realm.RealmObject;
import io.realm.annotations.Ignore;
import io.realm.annotations.PrimaryKey;
import io.realm.annotations.RealmClass;
import io.realm.annotations.Required;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.annotations.ObjectServer;
import io.realm.io_realm_sync_permissions_ClassPermissionsRealmProxy;
import io.realm.io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;

/* JADX INFO: loaded from: classes.dex */
@RealmClass(name = io_realm_sync_permissions_ClassPermissionsRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME)
@ObjectServer
public class ClassPermissions extends RealmObject implements io_realm_sync_permissions_ClassPermissionsRealmProxyInterface {

    @Ignore
    Class<? extends RealmModel> modelClassRef;

    @PrimaryKey
    @Required
    private String name;
    private RealmList<Permission> permissions;

    public String realmGet$name() {
        return this.name;
    }

    public RealmList realmGet$permissions() {
        return this.permissions;
    }

    public void realmSet$name(String str) {
        this.name = str;
    }

    public void realmSet$permissions(RealmList realmList) {
        this.permissions = realmList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ClassPermissions() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$permissions(new RealmList());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ClassPermissions(Class<? extends RealmModel> clazz) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$permissions(new RealmList());
        if (clazz == null) {
            throw new IllegalArgumentException("Non-null 'clazz' required.");
        }
        this.modelClassRef = clazz;
        realmSet$name(clazz.getSimpleName());
    }

    public String getName() {
        return realmGet$name();
    }

    public RealmList<Permission> getPermissions() {
        return realmGet$permissions();
    }
}
