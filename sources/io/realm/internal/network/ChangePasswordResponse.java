package io.realm.internal.network;

import io.realm.ErrorCode;
import io.realm.ObjectServerError;
import java.io.IOException;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public class ChangePasswordResponse extends AuthServerResponse {
    static ChangePasswordResponse from(Response response) {
        if (response.isSuccessful()) {
            return new ChangePasswordResponse();
        }
        try {
            String serverResponse = response.body().string();
            return new ChangePasswordResponse(AuthServerResponse.createError(serverResponse, response.code()));
        } catch (IOException e) {
            ObjectServerError error = new ObjectServerError(ErrorCode.IO_EXCEPTION, e);
            return new ChangePasswordResponse(error);
        }
    }

    public static ChangePasswordResponse from(ObjectServerError objectServerError) {
        return new ChangePasswordResponse(objectServerError);
    }

    public static ChangePasswordResponse from(Exception exception) {
        return from(new ObjectServerError(ErrorCode.fromException(exception), exception));
    }

    private ChangePasswordResponse() {
        this.error = null;
    }

    private ChangePasswordResponse(ObjectServerError error) {
        this.error = error;
    }
}
