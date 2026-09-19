package io.realm.exceptions;

import io.realm.internal.Keep;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class RealmMigrationNeededException extends RuntimeException {
    private final String canonicalRealmPath;

    public RealmMigrationNeededException(String canonicalRealmPath, String detailMessage) {
        super(detailMessage);
        this.canonicalRealmPath = canonicalRealmPath;
    }

    public String getPath() {
        return this.canonicalRealmPath;
    }
}
