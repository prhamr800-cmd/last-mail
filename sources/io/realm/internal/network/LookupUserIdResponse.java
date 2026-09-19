package io.realm.internal.network;

import com.google.firebase.analytics.FirebaseAnalytics;
import io.realm.ErrorCode;
import io.realm.ObjectServerError;
import io.realm.log.RealmLog;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import okhttp3.Response;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class LookupUserIdResponse extends AuthServerResponse {
    private static final String JSON_FIELD_ACCOUNTS = "accounts";
    private static final String JSON_FIELD_METADATA = "metadata";
    private static final String JSON_FIELD_USER_ID = "user_id";
    private static final String JSON_FIELD_USER_IS_ADMIN = "is_admin";
    private final Map<String, String> accounts;
    private final Boolean isAdmin;
    private final Map<String, String> metadata;
    private final String userId;

    static LookupUserIdResponse from(Response response) {
        try {
            String serverResponse = response.body().string();
            if (!response.isSuccessful()) {
                return new LookupUserIdResponse(AuthServerResponse.createError(serverResponse, response.code()));
            }
            return new LookupUserIdResponse(serverResponse);
        } catch (IOException e) {
            ObjectServerError error = new ObjectServerError(ErrorCode.IO_EXCEPTION, e);
            return new LookupUserIdResponse(error);
        }
    }

    public static LookupUserIdResponse from(ObjectServerError objectServerError) {
        return new LookupUserIdResponse(objectServerError);
    }

    public static LookupUserIdResponse from(Exception exception) {
        return from(new ObjectServerError(ErrorCode.fromException(exception), exception));
    }

    private LookupUserIdResponse(ObjectServerError error) {
        RealmLog.debug("LookupUserIdResponse - Error: " + error, new Object[0]);
        setError(error);
        this.error = error;
        this.userId = null;
        this.isAdmin = null;
        this.metadata = new HashMap();
        this.accounts = new HashMap();
    }

    private LookupUserIdResponse(String serverResponse) {
        String userId;
        Boolean isAdmin;
        Map<String, String> metadata;
        Map<String, String> accounts;
        ObjectServerError error;
        String message;
        try {
            JSONObject obj = new JSONObject(serverResponse);
            userId = obj.getString(JSON_FIELD_USER_ID);
            isAdmin = Boolean.valueOf(obj.getBoolean(JSON_FIELD_USER_IS_ADMIN));
            metadata = jsonToMap(obj.getJSONArray(JSON_FIELD_METADATA), "key", FirebaseAnalytics.Param.VALUE);
            accounts = jsonToMap(obj.getJSONArray(JSON_FIELD_ACCOUNTS), "provider", "provider_id");
            error = null;
            message = String.format(Locale.US, "Identity %s; Path %b", userId, isAdmin);
        } catch (JSONException e) {
            userId = null;
            isAdmin = null;
            metadata = new HashMap<>();
            accounts = new HashMap<>();
            error = new ObjectServerError(ErrorCode.JSON_EXCEPTION, e);
            message = String.format(Locale.US, "Error %s", error.getErrorMessage());
        }
        RealmLog.debug("LookupUserIdResponse. " + message, new Object[0]);
        setError(error);
        this.userId = userId;
        this.isAdmin = isAdmin;
        this.metadata = metadata;
        this.accounts = accounts;
    }

    public String getUserId() {
        return this.userId;
    }

    public boolean isAdmin() {
        return this.isAdmin.booleanValue();
    }

    public Map<String, String> getMetadata() {
        return this.metadata;
    }

    public Map<String, String> getAccounts() {
        return this.accounts;
    }

    private static Map<String, String> jsonToMap(JSONArray array, String keyName, String valueName) throws JSONException {
        Map<String, String> map = new HashMap<>();
        if (array == null) {
            return map;
        }
        for (int i = 0; i < array.length(); i++) {
            JSONObject obj = array.getJSONObject(i);
            if (obj.length() != 2) {
                throw new IllegalStateException("Array object not a key/value object. Has " + obj.length() + " fields");
            }
            map.put(obj.getString(keyName), obj.getString(valueName));
        }
        return map;
    }
}
