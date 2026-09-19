package io.realm.internal;

import io.realm.ProxyState;
import io.realm.RealmModel;

/* JADX INFO: loaded from: classes2.dex */
public interface RealmObjectProxy extends RealmModel {
    void realm$injectObjectContext();

    ProxyState realmGet$proxyState();

    public static class CacheData<E extends RealmModel> {
        public int minDepth;
        public final E object;

        public CacheData(int minDepth, E object) {
            this.minDepth = minDepth;
            this.object = object;
        }
    }
}
