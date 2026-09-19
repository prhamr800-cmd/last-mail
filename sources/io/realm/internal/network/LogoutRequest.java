package io.realm.internal.network;

import io.realm.internal.objectserver.Token;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class LogoutRequest {
    private final String token;

    public static LogoutRequest create(Token userToken) {
        return new LogoutRequest(userToken.value());
    }

    private LogoutRequest(String token) {
        this.token = token;
    }

    public String toJson() {
        try {
            JSONObject request = new JSONObject();
            request.put("token", this.token);
            return request.toString();
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }
}
