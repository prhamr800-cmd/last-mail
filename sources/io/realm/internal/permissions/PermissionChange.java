package io.realm.internal.permissions;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import io.realm.annotations.PrimaryKey;
import io.realm.annotations.RealmClass;
import io.realm.annotations.Required;
import io.realm.internal.RealmObjectProxy;
import io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface;
import io.realm.permissions.AccessLevel;
import io.realm.permissions.PermissionRequest;
import io.realm.permissions.UserCondition;
import java.util.Date;
import java.util.UUID;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@RealmClass
public class PermissionChange implements BasePermissionApi, io_realm_internal_permissions_PermissionChangeRealmProxyInterface {

    @Required
    private Date createdAt;

    @PrimaryKey
    @Required
    private String id;
    private Boolean mayManage;
    private Boolean mayRead;
    private Boolean mayWrite;
    private String metadataKey;
    private String metadataNameSpace;
    private String metadataValue;

    @Required
    private String realmUrl;
    private Integer statusCode;
    private String statusMessage;

    @Required
    private Date updatedAt;

    @Required
    private String userId;

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public Date realmGet$createdAt() {
        return this.createdAt;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public String realmGet$id() {
        return this.id;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public Boolean realmGet$mayManage() {
        return this.mayManage;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public Boolean realmGet$mayRead() {
        return this.mayRead;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public Boolean realmGet$mayWrite() {
        return this.mayWrite;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public String realmGet$metadataKey() {
        return this.metadataKey;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public String realmGet$metadataNameSpace() {
        return this.metadataNameSpace;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public String realmGet$metadataValue() {
        return this.metadataValue;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public String realmGet$realmUrl() {
        return this.realmUrl;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public Integer realmGet$statusCode() {
        return this.statusCode;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public String realmGet$statusMessage() {
        return this.statusMessage;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public Date realmGet$updatedAt() {
        return this.updatedAt;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public String realmGet$userId() {
        return this.userId;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public void realmSet$createdAt(Date date) {
        this.createdAt = date;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public void realmSet$id(String str) {
        this.id = str;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public void realmSet$mayManage(Boolean bool) {
        this.mayManage = bool;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public void realmSet$mayRead(Boolean bool) {
        this.mayRead = bool;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public void realmSet$mayWrite(Boolean bool) {
        this.mayWrite = bool;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public void realmSet$metadataKey(String str) {
        this.metadataKey = str;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public void realmSet$metadataNameSpace(String str) {
        this.metadataNameSpace = str;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public void realmSet$metadataValue(String str) {
        this.metadataValue = str;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public void realmSet$realmUrl(String str) {
        this.realmUrl = str;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public void realmSet$statusCode(Integer num) {
        this.statusCode = num;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public void realmSet$statusMessage(String str) {
        this.statusMessage = str;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public void realmSet$updatedAt(Date date) {
        this.updatedAt = date;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public void realmSet$userId(String str) {
        this.userId = str;
    }

    public static PermissionChange fromRequest(PermissionRequest request) {
        UserCondition condition = request.getCondition();
        AccessLevel level = request.getAccessLevel();
        String realmUrl = request.getUrl();
        String userId = "";
        String metadataKey = null;
        String metadataValue = null;
        switch (condition.getType()) {
            case USER_ID:
                userId = condition.getValue();
                break;
            case METADATA:
                metadataKey = condition.getKey();
                metadataValue = condition.getValue();
                break;
        }
        return new PermissionChange(realmUrl, userId, metadataKey, metadataValue, Boolean.valueOf(level.mayRead()), Boolean.valueOf(level.mayWrite()), Boolean.valueOf(level.mayManage()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PermissionChange() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(UUID.randomUUID().toString());
        realmSet$createdAt(new Date());
        realmSet$updatedAt(new Date());
        realmSet$statusCode(null);
        realmSet$mayRead(false);
        realmSet$mayWrite(false);
        realmSet$mayManage(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PermissionChange(String realmUrl, String userId, @Nullable Boolean mayRead, @Nullable Boolean mayWrite, @Nullable Boolean mayManage) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(UUID.randomUUID().toString());
        realmSet$createdAt(new Date());
        realmSet$updatedAt(new Date());
        realmSet$statusCode(null);
        realmSet$mayRead(false);
        realmSet$mayWrite(false);
        realmSet$mayManage(false);
        realmSet$realmUrl(realmUrl);
        realmSet$userId(userId);
        realmSet$mayRead(mayRead);
        realmSet$mayWrite(mayWrite);
        realmSet$mayManage(mayManage);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PermissionChange(String realmUrl, String userId, String metadataKey, String metadataValue, Boolean mayRead, Boolean mayWrite, Boolean mayManage) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(UUID.randomUUID().toString());
        realmSet$createdAt(new Date());
        realmSet$updatedAt(new Date());
        realmSet$statusCode(null);
        realmSet$mayRead(false);
        realmSet$mayWrite(false);
        realmSet$mayManage(false);
        realmSet$realmUrl(realmUrl);
        realmSet$userId(userId);
        realmSet$metadataKey(metadataKey);
        realmSet$metadataValue(metadataValue);
        realmSet$mayRead(mayRead);
        realmSet$mayWrite(mayWrite);
        realmSet$mayManage(mayManage);
    }

    @Override // io.realm.internal.permissions.BasePermissionApi
    public String getId() {
        return realmGet$id();
    }

    @Override // io.realm.internal.permissions.BasePermissionApi
    @SuppressFBWarnings({"EI_EXPOSE_REP"})
    public Date getCreatedAt() {
        return realmGet$createdAt();
    }

    @Override // io.realm.internal.permissions.BasePermissionApi
    @SuppressFBWarnings({"EI_EXPOSE_REP"})
    public Date getUpdatedAt() {
        return realmGet$updatedAt();
    }

    @Override // io.realm.internal.permissions.BasePermissionApi
    @Nullable
    public Integer getStatusCode() {
        return realmGet$statusCode();
    }

    @Override // io.realm.internal.permissions.BasePermissionApi
    @Nullable
    public String getStatusMessage() {
        return realmGet$statusMessage();
    }

    public String getRealmUrl() {
        return realmGet$realmUrl();
    }

    public String getUserId() {
        return realmGet$userId();
    }

    @Nullable
    public Boolean mayRead() {
        return realmGet$mayRead();
    }

    @Nullable
    public Boolean mayWrite() {
        return realmGet$mayWrite();
    }

    @Nullable
    public Boolean mayManage() {
        return realmGet$mayManage();
    }

    public String getMetadataKey() {
        return realmGet$metadataKey();
    }

    public String getMetadataValue() {
        return realmGet$metadataValue();
    }
}
