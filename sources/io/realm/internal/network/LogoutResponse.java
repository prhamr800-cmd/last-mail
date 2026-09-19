package io.realm.internal.network;

import io.realm.ErrorCode;
import io.realm.ObjectServerError;
import io.realm.log.RealmLog;
import java.io.IOException;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public class LogoutResponse extends AuthServerResponse {
    static LogoutResponse from(Response response) {
        if (response.isSuccessful()) {
            return new LogoutResponse();
        }
        try {
            String serverResponse = response.body().string();
            return new LogoutResponse(AuthServerResponse.createError(serverResponse, response.code()));
        } catch (IOException e) {
            ObjectServerError error = new ObjectServerError(ErrorCode.IO_EXCEPTION, e);
            return new LogoutResponse(error);
        }
    }

    public static LogoutResponse from(ObjectServerError error) {
        return new LogoutResponse(error);
    }

    public static LogoutResponse from(Exception exception) {
        return from(new ObjectServerError(ErrorCode.fromException(exception), exception));
    }

    private LogoutResponse(ObjectServerError error) {
        RealmLog.debug("Logout response - Error: " + error.getErrorMessage(), new Object[0]);
        setError(error);
    }

    private LogoutResponse() {
        RealmLog.debug("Logout response - Success", new Object[0]);
        setError(null);
    }

    @Override // io.realm.internal.network.AuthServerResponse
    public boolean isValid() {
        return this.error == null || this.error.getErrorCode() == ErrorCode.EXPIRED_REFRESH_TOKEN;
    }
}
