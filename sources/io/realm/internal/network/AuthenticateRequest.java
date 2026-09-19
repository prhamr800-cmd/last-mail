package io.realm.internal.network;

import com.huxq17.download.DownloadProvider;
import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import io.realm.SyncCredentials;
import io.realm.SyncManager;
import io.realm.internal.objectserver.Token;
import java.util.Collections;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AuthenticateRequest {
    private final String appId;
    private final String data;
    private final String path;
    private final String provider;
    private final Map<String, Object> userInfo;

    public static AuthenticateRequest userLogin(SyncCredentials credentials) {
        if (credentials == null) {
            throw new IllegalArgumentException("Non-null credentials required.");
        }
        String provider = credentials.getIdentityProvider();
        String data = credentials.getUserIdentifier();
        Map<String, Object> userInfo = credentials.getUserInfo();
        String appId = SyncManager.APP_ID;
        return new AuthenticateRequest(provider, data, appId, null, userInfo);
    }

    public static AuthenticateRequest userRefresh(Token userToken, String serverUrl) {
        return new AuthenticateRequest("realm", userToken.value(), SyncManager.APP_ID, serverUrl, Collections.emptyMap());
    }

    public static AuthenticateRequest realmLogin(Token userToken, String serverUrl) {
        return new AuthenticateRequest("realm", userToken.value(), SyncManager.APP_ID, serverUrl, Collections.emptyMap());
    }

    private AuthenticateRequest(String provider, String data, String appId, String path, Map<String, Object> userInfo) {
        this.provider = provider;
        this.data = data;
        this.appId = appId;
        this.path = path;
        this.userInfo = userInfo;
    }

    public String toJson() {
        JSONObject request = new JSONObject();
        try {
            request.put("provider", this.provider);
            request.put(Parameters.DATA, this.data);
            request.put("app_id", this.appId);
            if (this.path != null) {
                request.put(DownloadProvider.DownloadTable.PATH, this.path);
            }
            request.put("user_info", new JSONObject(this.userInfo));
            return request.toString();
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }
}
