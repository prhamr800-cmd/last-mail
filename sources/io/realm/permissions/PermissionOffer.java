package io.realm.permissions;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import io.realm.annotations.Index;
import io.realm.annotations.PrimaryKey;
import io.realm.annotations.RealmClass;
import io.realm.annotations.Required;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Util;
import io.realm.internal.permissions.BasePermissionApi;
import io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Date;
import java.util.UUID;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@RealmClass
public class PermissionOffer implements BasePermissionApi, io_realm_permissions_PermissionOfferRealmProxyInterface {

    @Required
    private Date createdAt;
    private Date expiresAt;

    @PrimaryKey
    @Required
    private String id;
    private boolean mayManage;
    private boolean mayRead;
    private boolean mayWrite;

    @Required
    private String realmUrl;
    private Integer statusCode;
    private String statusMessage;

    @Index
    private String token;

    @Required
    private Date updatedAt;

    public Date realmGet$createdAt() {
        return this.createdAt;
    }

    public Date realmGet$expiresAt() {
        return this.expiresAt;
    }

    public String realmGet$id() {
        return this.id;
    }

    public boolean realmGet$mayManage() {
        return this.mayManage;
    }

    public boolean realmGet$mayRead() {
        return this.mayRead;
    }

    public boolean realmGet$mayWrite() {
        return this.mayWrite;
    }

    public String realmGet$realmUrl() {
        return this.realmUrl;
    }

    public Integer realmGet$statusCode() {
        return this.statusCode;
    }

    public String realmGet$statusMessage() {
        return this.statusMessage;
    }

    public String realmGet$token() {
        return this.token;
    }

    public Date realmGet$updatedAt() {
        return this.updatedAt;
    }

    public void realmSet$createdAt(Date date) {
        this.createdAt = date;
    }

    public void realmSet$expiresAt(Date date) {
        this.expiresAt = date;
    }

    public void realmSet$id(String str) {
        this.id = str;
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

    public void realmSet$realmUrl(String str) {
        this.realmUrl = str;
    }

    public void realmSet$statusCode(Integer num) {
        this.statusCode = num;
    }

    public void realmSet$statusMessage(String str) {
        this.statusMessage = str;
    }

    public void realmSet$token(String str) {
        this.token = str;
    }

    public void realmSet$updatedAt(Date date) {
        this.updatedAt = date;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PermissionOffer() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(UUID.randomUUID().toString());
        realmSet$createdAt(new Date());
        realmSet$updatedAt(new Date());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressFBWarnings({"EI_EXPOSE_REP2"})
    public PermissionOffer(String url, AccessLevel accessLevel) {
        this(url, accessLevel, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressFBWarnings({"EI_EXPOSE_REP2"})
    public PermissionOffer(String url, AccessLevel accessLevel, @Nullable Date expiresAt) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(UUID.randomUUID().toString());
        realmSet$createdAt(new Date());
        realmSet$updatedAt(new Date());
        validateUrl(url);
        validateAccessLevel(accessLevel);
        realmSet$mayRead(accessLevel.mayRead());
        realmSet$mayWrite(accessLevel.mayWrite());
        realmSet$mayManage(accessLevel.mayManage());
        realmSet$realmUrl(url);
        realmSet$expiresAt(expiresAt != null ? (Date) expiresAt.clone() : null);
    }

    private void validateUrl(String url) {
        if (Util.isEmptyString(url)) {
            throw new IllegalArgumentException("Non-empty 'realmUrl' required.");
        }
        try {
            new URI(url);
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("Invalid 'realmUrl'.", e);
        }
    }

    private void validateAccessLevel(AccessLevel accessLevel) {
        if (accessLevel == null) {
            throw new IllegalArgumentException("Non-null 'accessLevel' required.");
        }
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

    public boolean isOfferCreated() {
        return !Util.isEmptyString(realmGet$token());
    }

    @Nullable
    public String getToken() {
        return realmGet$token();
    }

    public String getRealmUrl() {
        return realmGet$realmUrl();
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
    @Nullable
    public Date getExpiresAt() {
        return realmGet$expiresAt();
    }

    public String toString() {
        return "PermissionOffer{id='" + realmGet$id() + "', createdAt=" + realmGet$createdAt() + ", updatedAt=" + realmGet$updatedAt() + ", statusCode=" + realmGet$statusCode() + ", statusMessage='" + realmGet$statusMessage() + "', token='" + realmGet$token() + "', realmUrl='" + realmGet$realmUrl() + "', mayRead=" + realmGet$mayRead() + ", mayWrite=" + realmGet$mayWrite() + ", mayManage=" + realmGet$mayManage() + ", expiresAt=" + realmGet$expiresAt() + '}';
    }
}
