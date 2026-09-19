package io.realm;

import java.util.Collection;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public interface UserStore {
    Collection<SyncUser> allUsers();

    @Nullable
    SyncUser get(String str, String str2);

    @Nullable
    SyncUser getCurrent();

    boolean isActive(String str, String str2);

    void put(SyncUser syncUser);

    void remove(String str, String str2);
}
