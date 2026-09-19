package io.realm.internal;

import io.realm.RealmConfiguration;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class OsObjectStore {
    public static final long SCHEMA_NOT_VERSIONED = -1;

    private static native boolean nativeCallWithLock(String str, Runnable runnable);

    private static native boolean nativeDeleteTableForObject(long j, String str);

    @Nullable
    private static native String nativeGetPrimaryKeyForObject(long j, String str);

    private static native long nativeGetSchemaVersion(long j);

    private static native void nativeSetPrimaryKeyForObject(long j, String str, @Nullable String str2);

    private static native void nativeSetSchemaVersion(long j, long j2);

    public static void setPrimaryKeyForObject(OsSharedRealm sharedRealm, String className, @Nullable String primaryKeyFieldName) {
        nativeSetPrimaryKeyForObject(sharedRealm.getNativePtr(), className, primaryKeyFieldName);
    }

    @Nullable
    public static String getPrimaryKeyForObject(OsSharedRealm sharedRealm, String className) {
        return nativeGetPrimaryKeyForObject(sharedRealm.getNativePtr(), className);
    }

    public static void setSchemaVersion(OsSharedRealm sharedRealm, long schemaVersion) {
        nativeSetSchemaVersion(sharedRealm.getNativePtr(), schemaVersion);
    }

    public static long getSchemaVersion(OsSharedRealm sharedRealm) {
        return nativeGetSchemaVersion(sharedRealm.getNativePtr());
    }

    public static boolean deleteTableForObject(OsSharedRealm sharedRealm, String className) {
        return nativeDeleteTableForObject(sharedRealm.getNativePtr(), className);
    }

    public static boolean callWithLock(RealmConfiguration configuration, Runnable runnable) {
        return nativeCallWithLock(configuration.getPath(), runnable);
    }
}
