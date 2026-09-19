package io.realm.internal.network;

import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import io.realm.internal.Util;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class UpdateAccountRequest {
    private static final Map<String, String> NO_DATA = new HashMap();
    private final String action;
    private final Map<String, String> data;
    private final String providerId;

    public static UpdateAccountRequest requestPasswordReset(String email) {
        return new UpdateAccountRequest("reset_password", NO_DATA, email);
    }

    public static UpdateAccountRequest completePasswordReset(String resetPasswordToken, String newPassword) {
        Map<String, String> data = new HashMap<>();
        data.put("token", resetPasswordToken);
        data.put("new_password", newPassword);
        return new UpdateAccountRequest("complete_reset", data, null);
    }

    public static UpdateAccountRequest requestEmailConfirmation(String email) {
        return new UpdateAccountRequest("request_email_confirmation", NO_DATA, email);
    }

    public static UpdateAccountRequest completeEmailConfirmation(String confirmEmailToken) {
        Map<String, String> data = new HashMap<>();
        data.put("token", confirmEmailToken);
        return new UpdateAccountRequest("confirm_email", data, null);
    }

    private UpdateAccountRequest(String action, Map<String, String> data, String providerId) {
        this.action = action;
        this.data = data;
        this.providerId = providerId;
    }

    public String toJson() {
        Map<String, Object> payload = new HashMap<String, Object>() { // from class: io.realm.internal.network.UpdateAccountRequest.1
            {
                if (!Util.isEmptyString(UpdateAccountRequest.this.providerId)) {
                    put("provider_id", UpdateAccountRequest.this.providerId);
                }
                UpdateAccountRequest.this.data.put("action", UpdateAccountRequest.this.action);
                put(Parameters.DATA, UpdateAccountRequest.this.data);
            }
        };
        return new JSONObject(payload).toString();
    }
}
