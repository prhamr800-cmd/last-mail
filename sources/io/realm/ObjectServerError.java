package io.realm;

import io.realm.ErrorCode;
import io.realm.internal.Util;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class ObjectServerError extends RuntimeException {
    private final ErrorCode error;
    private final String errorMessage;
    private final Throwable exception;

    public ObjectServerError(ErrorCode errorCode, String errorMessage) {
        this(errorCode, errorMessage, (Throwable) null);
    }

    public ObjectServerError(ErrorCode errorCode, Throwable exception) {
        this(errorCode, (String) null, exception);
    }

    public ObjectServerError(ErrorCode errorCode, @Nullable String errorMessage, @Nullable Throwable exception) {
        this.error = errorCode;
        this.errorMessage = errorMessage;
        this.exception = exception;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ObjectServerError(ErrorCode errorCode, String title, @Nullable String hint) {
        String str;
        if (hint != null) {
            str = title + " : " + hint;
        } else {
            str = title;
        }
        this(errorCode, str, (Throwable) null);
    }

    public ErrorCode getErrorCode() {
        return this.error;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public Throwable getException() {
        return this.exception;
    }

    public ErrorCode.Category getCategory() {
        return this.error.getCategory();
    }

    @Override // java.lang.Throwable
    public String toString() {
        StringBuilder sb = new StringBuilder(getErrorCode().toString());
        if (this.errorMessage != null) {
            sb.append('\n');
            sb.append(this.errorMessage);
        }
        if (this.exception != null) {
            sb.append('\n');
            sb.append(Util.getStackTrace(this.exception));
        }
        return sb.toString();
    }
}
