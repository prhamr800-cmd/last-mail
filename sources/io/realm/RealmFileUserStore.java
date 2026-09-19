package io.realm;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class RealmFileUserStore implements UserStore {
    protected static native String[] nativeGetAllUsers();

    protected static native String nativeGetCurrentUser();

    @Nullable
    protected static native String nativeGetUser(String str, String str2);

    protected static native boolean nativeIsActive(String str, String str2);

    protected static native void nativeLogoutUser(String str, String str2);

    protected static native void nativeUpdateOrCreateUser(String str, String str2, String str3);

    @Override // io.realm.UserStore
    public void put(SyncUser user) {
        String userJson = user.toJson();
        nativeUpdateOrCreateUser(user.getIdentity(), userJson, user.getAuthenticationUrl().toString());
    }

    @Override // io.realm.UserStore
    @Nullable
    public SyncUser getCurrent() {
        String userJson = nativeGetCurrentUser();
        return toSyncUserOrNull(userJson);
    }

    @Override // io.realm.UserStore
    @Nullable
    public SyncUser get(String identity, String authUrl) {
        String userJson = nativeGetUser(identity, authUrl);
        return toSyncUserOrNull(userJson);
    }

    @Override // io.realm.UserStore
    public void remove(String identity, String authUrl) {
        nativeLogoutUser(identity, authUrl);
    }

    @Override // io.realm.UserStore
    public Collection<SyncUser> allUsers() {
        String[] allUsers = nativeGetAllUsers();
        if (allUsers != null && allUsers.length > 0) {
            ArrayList<SyncUser> users = new ArrayList<>(allUsers.length);
            for (String userJson : allUsers) {
                users.add(SyncUser.fromJson(userJson));
            }
            return users;
        }
        return Collections.emptyList();
    }

    @Override // io.realm.UserStore
    public boolean isActive(String identity, String authenticationUrl) {
        return nativeIsActive(identity, authenticationUrl);
    }

    @Nullable
    private static SyncUser toSyncUserOrNull(@Nullable String userJson) {
        if (userJson == null) {
            return null;
        }
        return SyncUser.fromJson(userJson);
    }
}
