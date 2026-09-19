package io.realm.permissions;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import io.realm.RealmObject;
import io.realm.annotations.Required;
import io.realm.internal.RealmObjectProxy;
import io.realm.io_realm_permissions_PermissionRealmProxyInterface;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class Permission extends RealmObject implements io_realm_permissions_PermissionRealmProxyInterface {
    private boolean mayManage;
    private boolean mayRead;
    private boolean mayWrite;

    @Required
    private String path;

    @Required
    private Date updatedAt;

    @Required
    private String userId;

    public boolean realmGet$mayManage() {
        return this.mayManage;
    }

    public boolean realmGet$mayRead() {
        return this.mayRead;
    }

    public boolean realmGet$mayWrite() {
        return this.mayWrite;
    }

    public String realmGet$path() {
        return this.path;
    }

    public Date realmGet$updatedAt() {
        return this.updatedAt;
    }

    public String realmGet$userId() {
        return this.userId;
    }

    public void realmSet$mayManage(boolean z) {
        this.mayManage = z;
    }

    public void realmSet$mayRead(boolean z) {
        this.mayRead = z;
    }

    public void realmSet$mayWrite(boolean z) {
        this.mayWrite = z;
    }

    public void realmSet$path(String str) {
        this.path = str;
    }

    public void realmSet$updatedAt(Date date) {
        this.updatedAt = date;
    }

    public void realmSet$userId(String str) {
        this.userId = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Permission() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public String getUserId() {
        return realmGet$userId();
    }

    public String getPath() {
        return realmGet$path();
    }

    public boolean mayRead() {
        return realmGet$mayRead();
    }

    public boolean mayWrite() {
        return realmGet$mayWrite();
    }

    public boolean mayManage() {
        return realmGet$mayManage();
    }

    @SuppressFBWarnings({"EI_EXPOSE_REP"})
    public Date getUpdatedAt() {
        return realmGet$updatedAt();
    }

    public String toString() {
        return "Permission{userId='" + realmGet$userId() + "', path='" + realmGet$path() + "', mayRead=" + realmGet$mayRead() + ", mayWrite=" + realmGet$mayWrite() + ", mayManage=" + realmGet$mayManage() + ", updatedAt=" + realmGet$updatedAt() + '}';
    }
}
