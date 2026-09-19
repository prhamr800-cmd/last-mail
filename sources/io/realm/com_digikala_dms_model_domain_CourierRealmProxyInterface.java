package io.realm;

import com.digikala.dms.model.domain.Batch;
import com.digikala.dms.model.domain.DistributionCenter;

/* JADX INFO: loaded from: classes2.dex */
public interface com_digikala_dms_model_domain_CourierRealmProxyInterface {
    String realmGet$avatarUrl();

    Batch realmGet$batch();

    DistributionCenter realmGet$distributionCenter();

    String realmGet$id();

    boolean realmGet$isBatchFinalized();

    boolean realmGet$isLoggedIn();

    String realmGet$name();

    String realmGet$notificationToken();

    String realmGet$userName();

    void realmSet$avatarUrl(String str);

    void realmSet$batch(Batch batch);

    void realmSet$distributionCenter(DistributionCenter distributionCenter);

    void realmSet$id(String str);

    void realmSet$isBatchFinalized(boolean z);

    void realmSet$isLoggedIn(boolean z);

    void realmSet$name(String str);

    void realmSet$notificationToken(String str);

    void realmSet$userName(String str);
}
