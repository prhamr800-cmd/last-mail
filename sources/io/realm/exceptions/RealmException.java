package io.realm.exceptions;

import io.realm.internal.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class RealmException extends RuntimeException {
    public RealmException(String detailMessage) {
        super(detailMessage);
    }

    public RealmException(String detailMessage, Throwable exception) {
        super(detailMessage, exception);
    }
}
