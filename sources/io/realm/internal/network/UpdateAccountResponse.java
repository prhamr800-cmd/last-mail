package io.realm.internal.network;

import io.realm.ErrorCode;
import io.realm.ObjectServerError;
import java.io.IOException;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public class UpdateAccountResponse extends AuthServerResponse {
    public static UpdateAccountResponse from(Exception exception) {
        return new UpdateAccountResponse(new ObjectServerError(ErrorCode.fromException(exception), exception));
    }

    public static UpdateAccountResponse from(Response response) {
        if (response.isSuccessful()) {
            return new UpdateAccountResponse();
        }
        try {
            String serverResponse = response.body().string();
            return new UpdateAccountResponse(AuthServerResponse.createError(serverResponse, response.code()));
        } catch (IOException e) {
            ObjectServerError error = new ObjectServerError(ErrorCode.IO_EXCEPTION, e);
            return new UpdateAccountResponse(error);
        }
    }

    public UpdateAccountResponse(ObjectServerError error) {
        this.error = error;
    }

    public UpdateAccountResponse() {
    }
}
