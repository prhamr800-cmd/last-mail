package io.realm.internal.network;

import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.realm.ErrorCode;
import io.realm.ObjectServerError;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AuthServerResponse {
    protected ObjectServerError error;

    public boolean isValid() {
        return this.error == null;
    }

    public ObjectServerError getError() {
        return this.error;
    }

    protected void setError(ObjectServerError error) {
        this.error = error;
    }

    public static ObjectServerError createError(String response, int httpErrorCode) {
        ErrorCode errorCode;
        try {
            JSONObject obj = new JSONObject(response);
            String title = obj.optString(SettingsJsonConstants.PROMPT_TITLE_KEY, null);
            String hint = obj.optString("hint", null);
            if (obj.has("code")) {
                errorCode = ErrorCode.fromInt(obj.getInt("code"));
            } else if (obj.has("status")) {
                errorCode = ErrorCode.fromInt(obj.getInt("status"));
            } else {
                errorCode = ErrorCode.UNKNOWN;
            }
            return new ObjectServerError(errorCode, title, hint);
        } catch (JSONException e) {
            return new ObjectServerError(ErrorCode.JSON_EXCEPTION, "Server failed with " + httpErrorCode + ", but could not parse error.", e);
        }
    }
}
