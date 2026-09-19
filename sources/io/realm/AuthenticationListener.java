package io.realm;

/* JADX INFO: loaded from: classes2.dex */
public interface AuthenticationListener {
    void loggedIn(SyncUser syncUser);

    void loggedOut(SyncUser syncUser);
}
