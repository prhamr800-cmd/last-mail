package io.realm.internal.network;

import com.snowplowanalytics.snowplow.tracker.constants.TrackerConstants;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.realm.SyncCredentials;
import io.realm.internal.Util;
import io.realm.internal.objectserver.Token;
import io.realm.log.RealmLog;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.ConnectionPool;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public class OkHttpAuthenticationServer implements AuthenticationServer {
    private static final String ACTION_CHANGE_PASSWORD = "password";
    private static final String ACTION_LOGOUT = "revoke";
    private static final String ACTION_LOOKUP_USER_ID = "users/:provider:/:providerId:";
    private static final String ACTION_UPDATE_ACCOUNT = "password/updateAccount";
    public static final MediaType JSON = MediaType.parse(TrackerConstants.POST_CONTENT_TYPE);
    private final OkHttpClient client = new OkHttpClient.Builder().connectTimeout(15, TimeUnit.SECONDS).writeTimeout(15, TimeUnit.SECONDS).readTimeout(30, TimeUnit.SECONDS).connectionPool(new ConnectionPool(5, 5, TimeUnit.SECONDS)).build();

    @Override // io.realm.internal.network.AuthenticationServer
    public AuthenticateResponse loginUser(SyncCredentials credentials, URL authenticationUrl) {
        try {
            String requestBody = AuthenticateRequest.userLogin(credentials).toJson();
            return authenticate(authenticationUrl, requestBody);
        } catch (Exception e) {
            return AuthenticateResponse.from(e);
        }
    }

    @Override // io.realm.internal.network.AuthenticationServer
    public AuthenticateResponse loginToRealm(Token refreshToken, URI serverUrl, URL authenticationUrl) {
        try {
            String requestBody = AuthenticateRequest.realmLogin(refreshToken, serverUrl.getPath()).toJson();
            return authenticate(authenticationUrl, requestBody);
        } catch (Exception e) {
            return AuthenticateResponse.from(e);
        }
    }

    @Override // io.realm.internal.network.AuthenticationServer
    public AuthenticateResponse refreshUser(Token userToken, URI serverUrl, URL authenticationUrl) {
        try {
            String requestBody = AuthenticateRequest.userRefresh(userToken, serverUrl.getPath()).toJson();
            return authenticate(authenticationUrl, requestBody);
        } catch (Exception e) {
            return AuthenticateResponse.from(e);
        }
    }

    @Override // io.realm.internal.network.AuthenticationServer
    public LogoutResponse logout(Token userToken, URL authenticationUrl) {
        try {
            String requestBody = LogoutRequest.create(userToken).toJson();
            return logout(buildActionUrl(authenticationUrl, ACTION_LOGOUT), userToken.value(), requestBody);
        } catch (Exception e) {
            return LogoutResponse.from(e);
        }
    }

    @Override // io.realm.internal.network.AuthenticationServer
    public ChangePasswordResponse changePassword(Token userToken, String newPassword, URL authenticationUrl) {
        try {
            String requestBody = ChangePasswordRequest.create(userToken, newPassword).toJson();
            return changePassword(buildActionUrl(authenticationUrl, "password"), userToken.value(), requestBody);
        } catch (Exception e) {
            return ChangePasswordResponse.from(e);
        }
    }

    @Override // io.realm.internal.network.AuthenticationServer
    public ChangePasswordResponse changePassword(Token adminToken, String userId, String newPassword, URL authenticationUrl) {
        try {
            String requestBody = ChangePasswordRequest.create(adminToken, userId, newPassword).toJson();
            return changePassword(buildActionUrl(authenticationUrl, "password"), adminToken.value(), requestBody);
        } catch (Exception e) {
            return ChangePasswordResponse.from(e);
        }
    }

    @Override // io.realm.internal.network.AuthenticationServer
    public LookupUserIdResponse retrieveUser(Token adminToken, String provider, String providerId, URL authenticationUrl) {
        try {
            String action = ACTION_LOOKUP_USER_ID.replace(":provider:", provider).replace(":providerId:", providerId);
            return lookupUserId(buildActionUrl(authenticationUrl, action), adminToken.value());
        } catch (Exception e) {
            return LookupUserIdResponse.from(e);
        }
    }

    @Override // io.realm.internal.network.AuthenticationServer
    public UpdateAccountResponse requestPasswordReset(String email, URL authenticationUrl) {
        try {
            String requestBody = UpdateAccountRequest.requestPasswordReset(email).toJson();
            return updateAccount(buildActionUrl(authenticationUrl, ACTION_UPDATE_ACCOUNT), requestBody);
        } catch (Exception e) {
            return UpdateAccountResponse.from(e);
        }
    }

    @Override // io.realm.internal.network.AuthenticationServer
    public UpdateAccountResponse completePasswordReset(String token, String newPassword, URL authenticationUrl) {
        try {
            String requestBody = UpdateAccountRequest.completePasswordReset(token, newPassword).toJson();
            return updateAccount(buildActionUrl(authenticationUrl, ACTION_UPDATE_ACCOUNT), requestBody);
        } catch (Exception e) {
            return UpdateAccountResponse.from(e);
        }
    }

    @Override // io.realm.internal.network.AuthenticationServer
    public UpdateAccountResponse requestEmailConfirmation(String email, URL authenticationUrl) {
        try {
            String requestBody = UpdateAccountRequest.requestEmailConfirmation(email).toJson();
            return updateAccount(buildActionUrl(authenticationUrl, ACTION_UPDATE_ACCOUNT), requestBody);
        } catch (Exception e) {
            return UpdateAccountResponse.from(e);
        }
    }

    @Override // io.realm.internal.network.AuthenticationServer
    public UpdateAccountResponse confirmEmail(String confirmationToken, URL authenticationUrl) {
        try {
            String requestBody = UpdateAccountRequest.completeEmailConfirmation(confirmationToken).toJson();
            return updateAccount(buildActionUrl(authenticationUrl, ACTION_UPDATE_ACCOUNT), requestBody);
        } catch (Exception e) {
            return UpdateAccountResponse.from(e);
        }
    }

    private static URL buildActionUrl(URL authenticationUrl, String action) {
        String baseUrlString = authenticationUrl.toExternalForm();
        try {
            String separator = baseUrlString.endsWith("/") ? "" : "/";
            return new URL(baseUrlString + separator + action);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    private AuthenticateResponse authenticate(URL authenticationUrl, String requestBody) throws Exception {
        RealmLog.debug("Network request (authenticate): " + authenticationUrl, new Object[0]);
        Request request = newAuthRequest(authenticationUrl).post(RequestBody.create(JSON, requestBody)).build();
        Call call = this.client.newCall(request);
        Response response = call.execute();
        return AuthenticateResponse.from(response);
    }

    private LogoutResponse logout(URL logoutUrl, String authToken, String requestBody) throws Exception {
        RealmLog.debug("Network request (logout): " + logoutUrl, new Object[0]);
        Request request = newAuthRequest(logoutUrl, authToken).post(RequestBody.create(JSON, requestBody)).build();
        Call call = this.client.newCall(request);
        Response response = call.execute();
        return LogoutResponse.from(response);
    }

    private ChangePasswordResponse changePassword(URL changePasswordUrl, String authToken, String requestBody) throws Exception {
        RealmLog.debug("Network request (changePassword): " + changePasswordUrl, new Object[0]);
        Request request = newAuthRequest(changePasswordUrl, authToken).put(RequestBody.create(JSON, requestBody)).build();
        Call call = this.client.newCall(request);
        Response response = call.execute();
        return ChangePasswordResponse.from(response);
    }

    private LookupUserIdResponse lookupUserId(URL lookupUserIdUrl, String authToken) throws Exception {
        RealmLog.debug("Network request (lookupUserId): " + lookupUserIdUrl, new Object[0]);
        Request request = newAuthRequest(lookupUserIdUrl, authToken).get().build();
        Call call = this.client.newCall(request);
        Response response = call.execute();
        return LookupUserIdResponse.from(response);
    }

    private UpdateAccountResponse updateAccount(URL updateAccountUrl, String requestBody) throws Exception {
        RealmLog.debug("Network request (updateAccount): " + updateAccountUrl, new Object[0]);
        Request request = newAuthRequest(updateAccountUrl).post(RequestBody.create(JSON, requestBody)).build();
        Call call = this.client.newCall(request);
        Response response = call.execute();
        return UpdateAccountResponse.from(response);
    }

    private Request.Builder newAuthRequest(URL url) {
        return newAuthRequest(url, null);
    }

    private Request.Builder newAuthRequest(URL url, String authToken) {
        Request.Builder builder = new Request.Builder().url(url).addHeader(HttpRequest.HEADER_CONTENT_TYPE, "application/json").addHeader("Accept", "application/json");
        if (!Util.isEmptyString(authToken)) {
            builder.addHeader(HttpRequest.HEADER_AUTHORIZATION, authToken);
        }
        return builder;
    }
}
