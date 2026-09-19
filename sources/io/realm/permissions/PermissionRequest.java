package io.realm.permissions;

import io.realm.internal.Util;
import java.net.URI;
import java.net.URISyntaxException;

/* JADX INFO: loaded from: classes2.dex */
public final class PermissionRequest {
    private final AccessLevel accessLevel;
    private final UserCondition condition;
    private final String url;

    public PermissionRequest(UserCondition condition, String realmUrl, AccessLevel accessLevel) {
        checkCondition(condition);
        checkUrl(realmUrl);
        checkAccessLevel(accessLevel);
        this.condition = condition;
        this.accessLevel = accessLevel;
        this.url = realmUrl;
    }

    private void checkUrl(String url) {
        if (Util.isEmptyString(url)) {
            throw new IllegalArgumentException("Non-empty 'realmUrl' required.");
        }
        if (url.equals("*")) {
            return;
        }
        try {
            new URI(url);
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("Invalid 'realmUrl'.", e);
        }
    }

    private void checkCondition(UserCondition condition) {
        if (condition == null) {
            throw new IllegalArgumentException("Non-null 'condition' required.");
        }
    }

    private void checkAccessLevel(AccessLevel accessLevel) {
        if (accessLevel == null) {
            throw new IllegalArgumentException("Non-null 'accessLevel' required.");
        }
    }

    public AccessLevel getAccessLevel() {
        return this.accessLevel;
    }

    public UserCondition getCondition() {
        return this.condition;
    }

    public String getUrl() {
        return this.url;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        PermissionRequest that = (PermissionRequest) o;
        if (this.accessLevel != that.accessLevel || !this.condition.equals(that.condition)) {
            return false;
        }
        return this.url.equals(that.url);
    }

    public int hashCode() {
        int result = this.accessLevel.hashCode();
        return (((result * 31) + this.condition.hashCode()) * 31) + this.url.hashCode();
    }

    public String toString() {
        return "PermissionRequest{accessLevel=" + this.accessLevel + ", condition=" + this.condition + ", url='" + this.url + "'}";
    }
}
