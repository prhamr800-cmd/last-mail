package io.realm.internal.network;

import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import io.realm.internal.objectserver.Token;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ChangePasswordRequest {
    private final String newPassword;
    private final String token;
    private String userID;

    public static ChangePasswordRequest create(Token userToken, String newPassword) {
        return new ChangePasswordRequest(userToken.value(), newPassword);
    }

    public static ChangePasswordRequest create(Token adminToken, String userID, String newPassword) {
        return new ChangePasswordRequest(adminToken.value(), newPassword, userID);
    }

    private ChangePasswordRequest(String token, String newPassword) {
        this.token = token;
        this.newPassword = newPassword;
    }

    private ChangePasswordRequest(String token, String newPassword, String userID) {
        this.token = token;
        this.newPassword = newPassword;
        this.userID = userID;
    }

    public String toJson() {
        try {
            JSONObject request = new JSONObject();
            if (this.userID != null) {
                request.put("user_id", this.userID);
            }
            JSONObject data = new JSONObject();
            data.put("new_password", this.newPassword);
            request.put(Parameters.DATA, data);
            return request.toString();
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }
}
