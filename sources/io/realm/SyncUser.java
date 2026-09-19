package io.realm;

import io.realm.SyncCredentials;
import io.realm.internal.RealmNotifier;
import io.realm.internal.Util;
import io.realm.internal.android.AndroidCapabilities;
import io.realm.internal.android.AndroidRealmNotifier;
import io.realm.internal.async.RealmAsyncTaskImpl;
import io.realm.internal.network.AuthenticateResponse;
import io.realm.internal.network.AuthenticationServer;
import io.realm.internal.network.ChangePasswordResponse;
import io.realm.internal.network.ExponentialBackoffTask;
import io.realm.internal.network.LogoutResponse;
import io.realm.internal.network.LookupUserIdResponse;
import io.realm.internal.network.UpdateAccountResponse;
import io.realm.internal.objectserver.Token;
import io.realm.log.RealmLog;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class SyncUser {
    private final URL authenticationUrl;
    private final String identity;
    private final Map<SyncConfiguration, Token> realms = new HashMap();
    private Token refreshToken;

    public interface Callback<T> {
        void onError(ObjectServerError objectServerError);

        void onSuccess(T t);
    }

    SyncUser(Token refreshToken, URL authenticationUrl) {
        this.identity = refreshToken.identity();
        this.authenticationUrl = authenticationUrl;
        this.refreshToken = refreshToken;
    }

    public static SyncUser current() {
        SyncUser user = SyncManager.getUserStore().getCurrent();
        if (user != null && user.isValid()) {
            return user;
        }
        return null;
    }

    public static Map<String, SyncUser> all() {
        UserStore userStore = SyncManager.getUserStore();
        Collection<SyncUser> storedUsers = userStore.allUsers();
        Map<String, SyncUser> map = new HashMap<>();
        for (SyncUser user : storedUsers) {
            if (user.isValid()) {
                map.put(user.getIdentity(), user);
            }
        }
        return Collections.unmodifiableMap(map);
    }

    public static SyncUser fromJson(String user) {
        try {
            JSONObject obj = new JSONObject(user);
            URL authUrl = new URL(obj.getString("authUrl"));
            Token userToken = Token.from(obj.getJSONObject("userToken"));
            return new SyncUser(userToken, authUrl);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("URL in JSON not valid: " + user, e);
        } catch (JSONException e2) {
            throw new IllegalArgumentException("Could not parse user json: " + user, e2);
        }
    }

    public static SyncUser logIn(SyncCredentials credentials, String authenticationUrl) throws ObjectServerError {
        AuthenticateResponse result;
        URL authUrl = getUrl(authenticationUrl);
        try {
            if (credentials.getIdentityProvider().equals(SyncCredentials.IdentityProvider.ACCESS_TOKEN)) {
                String userIdentifier = credentials.getUserIdentifier();
                String token = (String) credentials.getUserInfo().get("_token");
                boolean isAdmin = ((Boolean) credentials.getUserInfo().get("_isAdmin")).booleanValue();
                result = AuthenticateResponse.createValidResponseWithUser(userIdentifier, token, isAdmin);
            } else {
                AuthenticationServer server = SyncManager.getAuthServer();
                result = server.loginUser(credentials, authUrl);
            }
            if (result.isValid()) {
                SyncUser user = new SyncUser(result.getRefreshToken(), authUrl);
                RealmLog.info("Succeeded authenticating user.\n%s", user);
                SyncManager.getUserStore().put(user);
                SyncManager.notifyUserLoggedIn(user);
                return user;
            }
            RealmLog.info("Failed authenticating user.\n%s", result.getError());
            ObjectServerError error = result.getError();
            throw error;
        } catch (Throwable e) {
            throw new ObjectServerError(ErrorCode.UNKNOWN, e);
        }
    }

    private static URL getUrl(String authenticationUrl) {
        try {
            URL authUrl = new URL(authenticationUrl);
            if (authUrl.getPath().equals("")) {
                return new URL(authUrl.toString() + "/auth");
            }
            return authUrl;
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("Invalid URL " + authenticationUrl + ".", e);
        }
    }

    public static RealmAsyncTask logInAsync(final SyncCredentials credentials, final String authenticationUrl, Callback<SyncUser> callback) {
        checkLooperThread("Asynchronous login is only possible from looper threads.");
        return new Request<SyncUser>(SyncManager.NETWORK_POOL_EXECUTOR, callback) { // from class: io.realm.SyncUser.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.realm.SyncUser.Request
            public SyncUser run() throws ObjectServerError {
                return SyncUser.logIn(credentials, authenticationUrl);
            }
        }.start();
    }

    public void logOut() {
        synchronized (Realm.class) {
            if (SyncManager.getUserStore().isActive(this.identity, this.authenticationUrl.toString())) {
                SyncManager.getUserStore().remove(this.identity, this.authenticationUrl.toString());
                for (SyncConfiguration syncConfiguration : this.realms.keySet()) {
                    try {
                        SyncSession session = SyncManager.getSession(syncConfiguration);
                        session.clearScheduledAccessTokenRefresh();
                    } catch (IllegalStateException e) {
                        if (!e.getMessage().contains("No SyncSession found")) {
                            throw e;
                        }
                    }
                }
                this.realms.clear();
                final AuthenticationServer server = SyncManager.getAuthServer();
                final Token refreshTokenToBeRevoked = this.refreshToken;
                ThreadPoolExecutor networkPoolExecutor = SyncManager.NETWORK_POOL_EXECUTOR;
                networkPoolExecutor.submit(new ExponentialBackoffTask<LogoutResponse>(3) { // from class: io.realm.SyncUser.2
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // io.realm.internal.network.ExponentialBackoffTask
                    public LogoutResponse execute() {
                        return server.logout(refreshTokenToBeRevoked, SyncUser.this.getAuthenticationUrl());
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // io.realm.internal.network.ExponentialBackoffTask
                    public void onSuccess(LogoutResponse response) {
                        SyncManager.notifyUserLoggedOut(SyncUser.this);
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // io.realm.internal.network.ExponentialBackoffTask
                    public void onError(LogoutResponse response) {
                        RealmLog.error("Failed to log user out.\n" + response.getError().toString(), new Object[0]);
                    }
                });
            }
        }
    }

    public void changePassword(String newPassword) throws ObjectServerError {
        if (newPassword == null) {
            throw new IllegalArgumentException("Not-null 'newPassword' required.");
        }
        AuthenticationServer authServer = SyncManager.getAuthServer();
        ChangePasswordResponse response = authServer.changePassword(this.refreshToken, newPassword, getAuthenticationUrl());
        if (!response.isValid()) {
            throw response.getError();
        }
    }

    public void changePassword(String userId, String newPassword) throws ObjectServerError {
        if (newPassword == null) {
            throw new IllegalArgumentException("Not-null 'newPassword' required.");
        }
        if (Util.isEmptyString(userId)) {
            throw new IllegalArgumentException("None empty 'userId' required.");
        }
        if (userId.equals(getIdentity())) {
            changePassword(newPassword);
        } else {
            if (!isAdmin()) {
                throw new IllegalStateException("User need to be admin in order to change another user's password.");
            }
            AuthenticationServer authServer = SyncManager.getAuthServer();
            ChangePasswordResponse response = authServer.changePassword(this.refreshToken, userId, newPassword, getAuthenticationUrl());
            if (!response.isValid()) {
                throw response.getError();
            }
        }
    }

    public RealmAsyncTask changePasswordAsync(final String newPassword, Callback<SyncUser> callback) {
        checkLooperThread("Asynchronous changing password is only possible from looper threads.");
        if (callback == null) {
            throw new IllegalArgumentException("Non-null 'callback' required.");
        }
        return new Request<SyncUser>(SyncManager.NETWORK_POOL_EXECUTOR, callback) { // from class: io.realm.SyncUser.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.realm.SyncUser.Request
            public SyncUser run() {
                SyncUser.this.changePassword(newPassword);
                return SyncUser.this;
            }
        }.start();
    }

    public RealmAsyncTask changePasswordAsync(final String userId, final String newPassword, Callback<SyncUser> callback) {
        checkLooperThread("Asynchronous changing password is only possible from looper threads.");
        if (callback == null) {
            throw new IllegalArgumentException("Non-null 'callback' required.");
        }
        return new Request<SyncUser>(SyncManager.NETWORK_POOL_EXECUTOR, callback) { // from class: io.realm.SyncUser.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.realm.SyncUser.Request
            public SyncUser run() {
                SyncUser.this.changePassword(userId, newPassword);
                return SyncUser.this;
            }
        }.start();
    }

    public static void requestPasswordReset(String email, String authenticationUrl) throws ObjectServerError {
        if (Util.isEmptyString(email)) {
            throw new IllegalArgumentException("Not-null 'email' required.");
        }
        URL authUrl = getUrl(authenticationUrl);
        AuthenticationServer authServer = SyncManager.getAuthServer();
        UpdateAccountResponse response = authServer.requestPasswordReset(email, authUrl);
        if (!response.isValid()) {
            throw response.getError();
        }
    }

    public static RealmAsyncTask requestPasswordResetAsync(final String email, final String authenticationUrl, Callback<Void> callback) {
        checkLooperThread("Asynchronous requesting a password reset is only possible from looper threads.");
        if (callback == null) {
            throw new IllegalArgumentException("Non-null 'callback' required.");
        }
        return new Request<Void>(SyncManager.NETWORK_POOL_EXECUTOR, callback) { // from class: io.realm.SyncUser.5
            @Override // io.realm.SyncUser.Request
            public Void run() {
                SyncUser.requestPasswordReset(email, authenticationUrl);
                return null;
            }
        }.start();
    }

    public static void completePasswordReset(String resetToken, String newPassword, String authenticationUrl) {
        if (Util.isEmptyString(resetToken)) {
            throw new IllegalArgumentException("Not-null 'token' required.");
        }
        if (Util.isEmptyString(newPassword)) {
            throw new IllegalArgumentException("Not-null 'newPassword' required.");
        }
        URL authUrl = getUrl(authenticationUrl);
        AuthenticationServer authServer = SyncManager.getAuthServer();
        UpdateAccountResponse response = authServer.completePasswordReset(resetToken, newPassword, authUrl);
        if (!response.isValid()) {
            throw response.getError();
        }
    }

    public static RealmAsyncTask completePasswordResetAsync(final String resetToken, final String newPassword, final String authenticationUrl, Callback<Void> callback) throws ObjectServerError {
        checkLooperThread("Asynchronously completing a password reset is only possible from looper threads.");
        if (callback == null) {
            throw new IllegalArgumentException("Non-null 'callback' required.");
        }
        return new Request<Void>(SyncManager.NETWORK_POOL_EXECUTOR, callback) { // from class: io.realm.SyncUser.6
            @Override // io.realm.SyncUser.Request
            public Void run() {
                SyncUser.completePasswordReset(resetToken, newPassword, authenticationUrl);
                return null;
            }
        }.start();
    }

    public static void requestEmailConfirmation(String email, String authenticationUrl) throws ObjectServerError {
        if (Util.isEmptyString(email)) {
            throw new IllegalArgumentException("Not-null 'email' required.");
        }
        URL authUrl = getUrl(authenticationUrl);
        AuthenticationServer authServer = SyncManager.getAuthServer();
        UpdateAccountResponse response = authServer.requestEmailConfirmation(email, authUrl);
        if (!response.isValid()) {
            throw response.getError();
        }
    }

    public static RealmAsyncTask requestEmailConfirmationAsync(final String email, final String authenticationUrl, Callback<Void> callback) {
        checkLooperThread("Asynchronously requesting an email confirmation is only possible from looper threads.");
        if (callback == null) {
            throw new IllegalArgumentException("Non-null 'callback' required.");
        }
        return new Request<Void>(SyncManager.NETWORK_POOL_EXECUTOR, callback) { // from class: io.realm.SyncUser.7
            @Override // io.realm.SyncUser.Request
            public Void run() {
                SyncUser.requestEmailConfirmation(email, authenticationUrl);
                return null;
            }
        }.start();
    }

    public static void confirmEmail(String confirmationToken, String authenticationUrl) throws ObjectServerError {
        if (Util.isEmptyString(confirmationToken)) {
            throw new IllegalArgumentException("Not-null 'confirmationToken' required.");
        }
        URL authUrl = getUrl(authenticationUrl);
        AuthenticationServer authServer = SyncManager.getAuthServer();
        UpdateAccountResponse response = authServer.confirmEmail(confirmationToken, authUrl);
        if (!response.isValid()) {
            throw response.getError();
        }
    }

    public static RealmAsyncTask confirmEmailAsync(final String confirmationToken, final String authenticationUrl, Callback<Void> callback) {
        checkLooperThread("Asynchronously confirming an email is only possible from looper threads.");
        if (callback == null) {
            throw new IllegalArgumentException("Non-null 'callback' required.");
        }
        return new Request<Void>(SyncManager.NETWORK_POOL_EXECUTOR, callback) { // from class: io.realm.SyncUser.8
            @Override // io.realm.SyncUser.Request
            public Void run() {
                SyncUser.confirmEmail(confirmationToken, authenticationUrl);
                return null;
            }
        }.start();
    }

    public SyncUserInfo retrieveInfoForUser(String providerUserIdentity, String provider) throws ObjectServerError {
        if (Util.isEmptyString(providerUserIdentity)) {
            throw new IllegalArgumentException("'providerUserIdentity' cannot be empty.");
        }
        if (Util.isEmptyString(provider)) {
            throw new IllegalArgumentException("'provider' cannot be empty.");
        }
        if (!isAdmin()) {
            throw new IllegalArgumentException("SyncUser needs to be admin in order to lookup other users ID.");
        }
        AuthenticationServer authServer = SyncManager.getAuthServer();
        LookupUserIdResponse response = authServer.retrieveUser(this.refreshToken, provider, providerUserIdentity, getAuthenticationUrl());
        if (!response.isValid()) {
            if (response.getError().getErrorCode() == ErrorCode.UNKNOWN_ACCOUNT) {
                return null;
            }
            throw response.getError();
        }
        return SyncUserInfo.fromLookupUserIdResponse(response);
    }

    public RealmAsyncTask retrieveInfoForUserAsync(final String providerUserIdentity, final String provider, Callback<SyncUserInfo> callback) {
        checkLooperThread("Asynchronously retrieving user is only possible from looper threads.");
        if (callback == null) {
            throw new IllegalArgumentException("Non-null 'callback' required.");
        }
        return new Request<SyncUserInfo>(SyncManager.NETWORK_POOL_EXECUTOR, callback) { // from class: io.realm.SyncUser.9
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.realm.SyncUser.Request
            public SyncUserInfo run() throws ObjectServerError {
                return SyncUser.this.retrieveInfoForUser(providerUserIdentity, provider);
            }
        }.start();
    }

    private static void checkLooperThread(String errorMessage) {
        AndroidCapabilities capabilities = new AndroidCapabilities();
        capabilities.checkCanDeliverNotification(errorMessage);
    }

    public String toJson() {
        JSONObject obj = new JSONObject();
        try {
            obj.put("authUrl", this.authenticationUrl);
            obj.put("userToken", this.refreshToken.toJson());
            return obj.toString();
        } catch (JSONException e) {
            throw new RuntimeException("Could not convert SyncUser to JSON", e);
        }
    }

    public boolean isValid() {
        return this.refreshToken != null && this.refreshToken.expiresMs() > System.currentTimeMillis() && SyncManager.getUserStore().isActive(this.identity, this.authenticationUrl.toString());
    }

    public boolean isAdmin() {
        return this.refreshToken.isAdmin();
    }

    public String getIdentity() {
        return this.identity;
    }

    Token getRefreshToken() {
        return this.refreshToken;
    }

    void setRefreshToken(Token refreshToken) {
        this.refreshToken = refreshToken;
    }

    public List<SyncSession> allSessions() {
        return SyncManager.getAllSessions(this);
    }

    boolean isRealmAuthenticated(SyncConfiguration configuration) {
        Token token = this.realms.get(configuration);
        return token != null && token.expiresMs() > System.currentTimeMillis();
    }

    Token getAccessToken(SyncConfiguration configuration) {
        return this.realms.get(configuration);
    }

    void addRealm(SyncConfiguration syncConfiguration, Token accessToken) {
        this.realms.put(syncConfiguration, accessToken);
    }

    public URL getAuthenticationUrl() {
        return this.authenticationUrl;
    }

    private static String getManagementRealmUrl(URL authUrl) {
        String scheme = "realm";
        if (authUrl.getProtocol().equalsIgnoreCase("https")) {
            scheme = "realms";
        }
        try {
            return new URI(scheme, authUrl.getUserInfo(), authUrl.getHost(), authUrl.getPort(), "/~/__management", null, null).toString();
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("Could not create URL to the management Realm", e);
        }
    }

    public PermissionManager getPermissionManager() {
        if (!new AndroidCapabilities().isMainThread()) {
            throw new IllegalStateException("The PermissionManager can only be opened from the main thread.");
        }
        return PermissionManager.getInstance(this);
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        SyncUser syncUser = (SyncUser) o;
        if (!this.identity.equals(syncUser.identity)) {
            return false;
        }
        return this.authenticationUrl.toExternalForm().equals(syncUser.authenticationUrl.toExternalForm());
    }

    public int hashCode() {
        int result = this.identity.hashCode();
        return (result * 31) + this.authenticationUrl.toExternalForm().hashCode();
    }

    public String toString() {
        return "{UserId: " + this.identity + ", AuthUrl: " + getAuthenticationUrl() + "}";
    }

    private static abstract class Request<T> {

        @Nullable
        private final Callback<T> callback;
        private final RealmNotifier handler = new AndroidRealmNotifier(null, new AndroidCapabilities());
        private final ThreadPoolExecutor networkPoolExecutor;

        public abstract T run() throws ObjectServerError;

        Request(ThreadPoolExecutor networkPoolExecutor, @Nullable Callback<T> callback) {
            this.callback = callback;
            this.networkPoolExecutor = networkPoolExecutor;
        }

        public RealmAsyncTask start() {
            Future<?> authenticateRequest = this.networkPoolExecutor.submit(new Runnable() { // from class: io.realm.SyncUser.Request.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Request.this.postSuccess(Request.this.run());
                    } catch (ObjectServerError e) {
                        Request.this.postError(e);
                    } catch (Throwable e2) {
                        Request.this.postError(new ObjectServerError(ErrorCode.UNKNOWN, "Unexpected error", e2));
                    }
                }
            });
            return new RealmAsyncTaskImpl(authenticateRequest, this.networkPoolExecutor);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void postError(final ObjectServerError error) {
            boolean errorHandled = false;
            if (this.callback != null) {
                Runnable action = new Runnable() { // from class: io.realm.SyncUser.Request.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Request.this.callback.onError(error);
                    }
                };
                errorHandled = this.handler.post(action);
            }
            if (!errorHandled) {
                RealmLog.error(error, "An error was thrown, but could not be handled.", new Object[0]);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void postSuccess(final T result) {
            if (this.callback != null) {
                this.handler.post(new Runnable() { // from class: io.realm.SyncUser.Request.3
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.lang.Runnable
                    public void run() {
                        Request.this.callback.onSuccess(result);
                    }
                });
            }
        }
    }
}
