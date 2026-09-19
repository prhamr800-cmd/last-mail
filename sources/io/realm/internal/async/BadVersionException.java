package io.realm.internal.async;

import io.realm.internal.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class BadVersionException extends Exception {
    public BadVersionException(String detailMessage) {
        super(detailMessage);
    }

    public BadVersionException(String detailMessage, Throwable exception) {
        super(detailMessage, exception);
    }
}
