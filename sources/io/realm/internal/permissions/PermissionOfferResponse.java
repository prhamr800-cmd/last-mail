package io.realm.internal.permissions;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import io.realm.annotations.PrimaryKey;
import io.realm.annotations.RealmClass;
import io.realm.annotations.Required;
import io.realm.internal.RealmObjectProxy;
import io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Date;
import java.util.UUID;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@RealmClass
public class PermissionOfferResponse implements BasePermissionApi, io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface {

    @Required
    private Date createdAt;

    @PrimaryKey
    @Required
    private String id;
    private String realmUrl;
    private Integer statusCode;
    private String statusMessage;

    @Required
    private String token;

    @Required
    private Date updatedAt;

    @Override // io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public Date realmGet$createdAt() {
        return this.createdAt;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public String realmGet$id() {
        return this.id;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public String realmGet$realmUrl() {
        return this.realmUrl;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public Integer realmGet$statusCode() {
        return this.statusCode;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public String realmGet$statusMessage() {
        return this.statusMessage;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public String realmGet$token() {
        return this.token;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public Date realmGet$updatedAt() {
        return this.updatedAt;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public void realmSet$createdAt(Date date) {
        this.createdAt = date;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public void realmSet$id(String str) {
        this.id = str;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public void realmSet$realmUrl(String str) {
        this.realmUrl = str;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public void realmSet$statusCode(Integer num) {
        this.statusCode = num;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public void realmSet$statusMessage(String str) {
        this.statusMessage = str;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public void realmSet$token(String str) {
        this.token = str;
    }

    @Override // io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public void realmSet$updatedAt(Date date) {
        this.updatedAt = date;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PermissionOfferResponse() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(UUID.randomUUID().toString());
        realmSet$createdAt(new Date());
        realmSet$updatedAt(new Date());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PermissionOfferResponse(String token) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(UUID.randomUUID().toString());
        realmSet$createdAt(new Date());
        realmSet$updatedAt(new Date());
        if (token == null) {
            throw new IllegalArgumentException("Non-null 'token' required.");
        }
        realmSet$token(token);
    }

    public void setToken(String token) {
        realmSet$token(token);
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

    public boolean isSuccessful() {
        return realmGet$statusCode() != null && realmGet$statusCode().intValue() == 0;
    }

    @Override // io.realm.internal.permissions.BasePermissionApi
    @Nullable
    public String getStatusMessage() {
        return realmGet$statusMessage();
    }

    public String getToken() {
        return realmGet$token();
    }

    @Nullable
    public String getRealmUrl() {
        return realmGet$realmUrl();
    }

    public String getPath() {
        try {
            return new URI(realmGet$realmUrl()).getPath();
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }
    }
}
