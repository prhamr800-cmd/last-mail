package io.realm.internal.network;

import io.realm.ErrorCode;
import io.realm.ObjectServerError;
import io.realm.internal.objectserver.Token;
import io.realm.log.RealmLog;
import java.io.IOException;
import java.util.Locale;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.Response;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AuthenticateResponse extends AuthServerResponse {
    private static final String JSON_FIELD_ACCESS_TOKEN = "access_token";
    private static final String JSON_FIELD_REFRESH_TOKEN = "refresh_token";
    private final Token accessToken;
    private final Token refreshToken;

    public static AuthenticateResponse from(Response response) {
        try {
            String serverResponse = response.body().string();
            if (!response.isSuccessful()) {
                return new AuthenticateResponse(AuthServerResponse.createError(serverResponse, response.code()));
            }
            return new AuthenticateResponse(serverResponse);
        } catch (IOException e) {
            ObjectServerError error = new ObjectServerError(ErrorCode.IO_EXCEPTION, e);
            return new AuthenticateResponse(error);
        }
    }

    public static AuthenticateResponse from(String json) {
        return new AuthenticateResponse(json);
    }

    public static AuthenticateResponse from(ObjectServerError error) {
        return new AuthenticateResponse(error);
    }

    public static AuthenticateResponse from(Exception exception) {
        return from(new ObjectServerError(ErrorCode.fromException(exception), exception));
    }

    public static AuthenticateResponse createValidResponseWithUser(String identifier, String refreshToken, boolean isAdmin) {
        try {
            JSONObject response = new JSONObject();
            response.put(JSON_FIELD_REFRESH_TOKEN, new Token(refreshToken, identifier, null, LongCompanionObject.MAX_VALUE, Token.Permission.ALL, isAdmin).toJson());
            return new AuthenticateResponse(response.toString());
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    private AuthenticateResponse(ObjectServerError error) {
        RealmLog.debug("AuthenticateResponse - Error: " + error, new Object[0]);
        setError(error);
        this.accessToken = null;
        this.refreshToken = null;
    }

    private AuthenticateResponse(String serverResponse) {
        Token accessToken;
        Token refreshToken;
        ObjectServerError error;
        String message;
        try {
            JSONObject obj = new JSONObject(serverResponse);
            accessToken = obj.has(JSON_FIELD_ACCESS_TOKEN) ? Token.from(obj.getJSONObject(JSON_FIELD_ACCESS_TOKEN)) : null;
            refreshToken = obj.has(JSON_FIELD_REFRESH_TOKEN) ? Token.from(obj.getJSONObject(JSON_FIELD_REFRESH_TOKEN)) : null;
            error = null;
            if (accessToken == null) {
                message = "accessToken = null";
            } else {
                message = String.format(Locale.US, "Identity %s; Path %s", accessToken.identity(), accessToken.path());
            }
        } catch (JSONException ex) {
            accessToken = null;
            refreshToken = null;
            error = new ObjectServerError(ErrorCode.JSON_EXCEPTION, ex);
            message = String.format(Locale.US, "Error %s", error.getErrorMessage());
        }
        RealmLog.debug("AuthenticateResponse. " + message, new Object[0]);
        setError(error);
        this.accessToken = accessToken;
        this.refreshToken = refreshToken;
    }

    public Token getAccessToken() {
        return this.accessToken;
    }

    public Token getRefreshToken() {
        return this.refreshToken;
    }
}
