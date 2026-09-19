package io.realm.permissions;

import io.realm.internal.Util;

/* JADX INFO: loaded from: classes2.dex */
public final class UserCondition {
    private final String key;
    private final MatcherType type;
    private final String value;

    public enum MatcherType {
        USER_ID,
        METADATA
    }

    public static UserCondition username(String username) {
        if (Util.isEmptyString(username)) {
            throw new IllegalArgumentException("Non-empty 'username' required.");
        }
        return new UserCondition(MatcherType.METADATA, "email", username);
    }

    public static UserCondition userId(String userId) {
        if (Util.isEmptyString(userId)) {
            throw new IllegalArgumentException("Non-empty 'userId' required.");
        }
        return new UserCondition(MatcherType.USER_ID, "", userId);
    }

    public static UserCondition noExistingPermissions() {
        return userId("*");
    }

    public static UserCondition keyValue(String key, String value) {
        if (Util.isEmptyString(key)) {
            throw new IllegalArgumentException("Non-empty 'key' required.");
        }
        if (value == null) {
            throw new IllegalArgumentException("Non-null 'value' required.");
        }
        return new UserCondition(MatcherType.METADATA, key, value);
    }

    private UserCondition(MatcherType type, String key, String value) {
        this.type = type;
        this.key = key;
        this.value = value;
    }

    public String getKey() {
        return this.key;
    }

    public String getValue() {
        return this.value;
    }

    public MatcherType getType() {
        return this.type;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        UserCondition that = (UserCondition) o;
        if (!this.key.equals(that.key)) {
            return false;
        }
        return this.value.equals(that.value);
    }

    public int hashCode() {
        int result = this.key.hashCode();
        return (result * 31) + this.value.hashCode();
    }

    public String toString() {
        return "UserCondition{key='" + this.key + "', value='" + this.value + "'}";
    }
}
