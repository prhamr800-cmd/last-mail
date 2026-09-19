package io.realm;

import io.realm.internal.network.LookupUserIdResponse;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class SyncUserInfo {
    private final Map<String, String> accounts;
    private final String identity;
    private final boolean isAdmin;
    private final Map<String, String> metadata;

    private SyncUserInfo(String identity, boolean isAdmin, Map<String, String> metadata, Map<String, String> accounts) {
        this.identity = identity;
        this.isAdmin = isAdmin;
        this.metadata = Collections.unmodifiableMap(metadata);
        this.accounts = Collections.unmodifiableMap(accounts);
    }

    static SyncUserInfo fromLookupUserIdResponse(LookupUserIdResponse response) {
        return new SyncUserInfo(response.getUserId(), response.isAdmin(), response.getMetadata(), response.getAccounts());
    }

    public String getIdentity() {
        return this.identity;
    }

    public boolean isAdmin() {
        return this.isAdmin;
    }

    public Map<String, String> getMetadata() {
        return this.metadata;
    }

    public Map<String, String> getAccounts() {
        return this.accounts;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        SyncUserInfo that = (SyncUserInfo) o;
        if (this.isAdmin != that.isAdmin || !this.identity.equals(that.identity)) {
            return false;
        }
        return this.metadata.equals(that.metadata);
    }

    public int hashCode() {
        return (((this.identity.hashCode() * 31) + (this.isAdmin ? 1 : 0)) * 31) + this.metadata.hashCode();
    }
}
