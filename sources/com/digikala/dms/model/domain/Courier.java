package com.digikala.dms.model.domain;

import com.google.gson.annotations.SerializedName;
import io.realm.RealmObject;
import io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* JADX INFO: loaded from: classes2.dex */
public class Courier extends RealmObject implements com_digikala_dms_model_domain_CourierRealmProxyInterface {
    public static final String COLUMN_AVATAR_URL = "avatarUrl";
    public static final String COLUMN_ID = "id";
    public static final String COLUMN_IS_LOGGED_IN = "isLoggedIn";
    public static final String COLUMN_NAME = "name";
    public static final String COLUMN_NOTIFICATION_TOKEN = "notificationToken";
    public static final String COLUMN_SHIPMENTS = "shipments";

    @SerializedName("AvatarUrl")
    private String avatarUrl;
    private Batch batch;

    @SerializedName("Dc")
    private DistributionCenter distributionCenter;

    @SerializedName("Id")
    private String id;
    private boolean isBatchFinalized;
    private boolean isLoggedIn;

    @SerializedName("Name")
    private String name;
    private String notificationToken;

    @SerializedName("Username")
    private String userName;

    @Override // io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public String realmGet$avatarUrl() {
        return this.avatarUrl;
    }

    @Override // io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public Batch realmGet$batch() {
        return this.batch;
    }

    @Override // io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public DistributionCenter realmGet$distributionCenter() {
        return this.distributionCenter;
    }

    @Override // io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public String realmGet$id() {
        return this.id;
    }

    @Override // io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public boolean realmGet$isBatchFinalized() {
        return this.isBatchFinalized;
    }

    @Override // io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public boolean realmGet$isLoggedIn() {
        return this.isLoggedIn;
    }

    @Override // io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public String realmGet$name() {
        return this.name;
    }

    @Override // io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public String realmGet$notificationToken() {
        return this.notificationToken;
    }

    @Override // io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public String realmGet$userName() {
        return this.userName;
    }

    @Override // io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public void realmSet$avatarUrl(String str) {
        this.avatarUrl = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public void realmSet$batch(Batch batch) {
        this.batch = batch;
    }

    @Override // io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public void realmSet$distributionCenter(DistributionCenter distributionCenter) {
        this.distributionCenter = distributionCenter;
    }

    @Override // io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public void realmSet$id(String str) {
        this.id = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public void realmSet$isBatchFinalized(boolean z) {
        this.isBatchFinalized = z;
    }

    @Override // io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public void realmSet$isLoggedIn(boolean z) {
        this.isLoggedIn = z;
    }

    @Override // io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public void realmSet$notificationToken(String str) {
        this.notificationToken = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_CourierRealmProxyInterface
    public void realmSet$userName(String str) {
        this.userName = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Courier() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$batch(new Batch());
    }

    public String getId() {
        return realmGet$id();
    }

    public void setId(String id) {
        realmSet$id(id);
    }

    public String getName() {
        return realmGet$name();
    }

    public void setName(String name) {
        realmSet$name(name);
    }

    public String getAvatarUrl() {
        return realmGet$avatarUrl();
    }

    public void setAvatarUrl(String avatarUrl) {
        realmSet$avatarUrl(avatarUrl);
    }

    public DistributionCenter getDistributionCenter() {
        return realmGet$distributionCenter();
    }

    public void setDistributionCenter(DistributionCenter distributionCenter) {
        realmSet$distributionCenter(distributionCenter);
    }

    public Batch getBatch() {
        return realmGet$batch();
    }

    public void setBatch(Batch batch) {
        realmSet$batch(batch);
    }

    public boolean isLoggedIn() {
        return realmGet$isLoggedIn();
    }

    public void setIsLoggedIn(boolean isLoggedIn) {
        realmSet$isLoggedIn(isLoggedIn);
    }

    public boolean isBatchFinalized() {
        return realmGet$isBatchFinalized();
    }

    public void setBatchFinalized(boolean synced) {
        realmSet$isBatchFinalized(synced);
    }

    public String getNotificationToken() {
        return realmGet$notificationToken();
    }

    public void setNotificationToken(String notificationToken) {
        realmSet$notificationToken(notificationToken);
    }

    public String getUserName() {
        return realmGet$userName();
    }

    public void setUserName(String userName) {
        realmSet$userName(userName);
    }
}
