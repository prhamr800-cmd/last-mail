package io.realm;

import io.realm.internal.Util;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class SyncCredentials {
    private final String identityProvider;
    private final String userIdentifier;
    private final Map<String, Object> userInfo;

    public static final class IdentityProvider {
        public static final String ACCESS_TOKEN = "_access_token";
        public static final String ANONYMOUS = "anonymous";
        public static final String DEBUG = "debug";
        public static final String FACEBOOK = "facebook";
        public static final String GOOGLE = "google";
        public static final String JWT = "jwt";
        public static final String NICKNAME = "nickname";
        public static final String USERNAME_PASSWORD = "password";
    }

    public static SyncCredentials facebook(String facebookToken) {
        assertStringNotEmpty(facebookToken, "facebookToken");
        return new SyncCredentials(facebookToken, IdentityProvider.FACEBOOK, null);
    }

    public static SyncCredentials google(String googleToken) {
        assertStringNotEmpty(googleToken, "googleToken");
        return new SyncCredentials(googleToken, IdentityProvider.GOOGLE, null);
    }

    public static SyncCredentials jwt(String jwtToken) {
        assertStringNotEmpty(jwtToken, "jwtToken");
        return new SyncCredentials(jwtToken, IdentityProvider.JWT, null);
    }

    public static SyncCredentials anonymous() {
        return new SyncCredentials("", IdentityProvider.ANONYMOUS, null);
    }

    public static SyncCredentials nickname(String nickname, boolean isAdmin) {
        assertStringNotEmpty(nickname, IdentityProvider.NICKNAME);
        Map<String, Object> userInfo = new HashMap<>();
        userInfo.put("is_admin", Boolean.valueOf(isAdmin));
        return new SyncCredentials(nickname, IdentityProvider.NICKNAME, userInfo);
    }

    public static SyncCredentials usernamePassword(String username, String password, boolean createUser) {
        assertStringNotEmpty(username, "username");
        Map<String, Object> userInfo = new HashMap<>();
        userInfo.put("register", Boolean.valueOf(createUser));
        userInfo.put(IdentityProvider.USERNAME_PASSWORD, password);
        return new SyncCredentials(username, IdentityProvider.USERNAME_PASSWORD, userInfo);
    }

    public static SyncCredentials usernamePassword(String username, String password) {
        return usernamePassword(username, password, false);
    }

    public static SyncCredentials custom(String userIdentifier, String identityProvider, @Nullable Map<String, Object> userInfo) {
        assertStringNotEmpty(userIdentifier, "userIdentifier");
        assertStringNotEmpty(identityProvider, "identityProvider");
        if (userInfo == null) {
            userInfo = new HashMap();
        }
        return new SyncCredentials(userIdentifier, identityProvider, userInfo);
    }

    public static SyncCredentials accessToken(String accessToken, String identifier) {
        return accessToken(accessToken, identifier, false);
    }

    public static SyncCredentials accessToken(String accessToken, String identifier, boolean isAdmin) {
        HashMap<String, Object> userInfo = new HashMap<>();
        userInfo.put("_token", accessToken);
        userInfo.put("_isAdmin", Boolean.valueOf(isAdmin));
        return new SyncCredentials(identifier, IdentityProvider.ACCESS_TOKEN, userInfo);
    }

    private static void assertStringNotEmpty(String string, String message) {
        if (Util.isEmptyString(string)) {
            throw new IllegalArgumentException("Non-null '" + message + "' required.");
        }
    }

    private SyncCredentials(String token, String identityProvider, @Nullable Map<String, Object> userInfo) {
        this.identityProvider = identityProvider;
        this.userIdentifier = token;
        this.userInfo = userInfo == null ? new HashMap<>() : userInfo;
    }

    public String getIdentityProvider() {
        return this.identityProvider;
    }

    public String getUserIdentifier() {
        return this.userIdentifier;
    }

    public Map<String, Object> getUserInfo() {
        return Collections.unmodifiableMap(this.userInfo);
    }
}
