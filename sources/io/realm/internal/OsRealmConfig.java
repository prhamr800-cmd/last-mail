package io.realm.internal;

import io.realm.CompactOnLaunchCallback;
import io.realm.RealmConfiguration;
import io.realm.internal.OsSharedRealm;
import io.realm.log.RealmLog;
import java.net.URI;
import java.net.URISyntaxException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class OsRealmConfig implements NativeObject {
    private static final byte SCHEMA_MODE_VALUE_ADDITIVE = 4;
    private static final byte SCHEMA_MODE_VALUE_AUTOMATIC = 0;
    private static final byte SCHEMA_MODE_VALUE_IMMUTABLE = 1;
    private static final byte SCHEMA_MODE_VALUE_MANUAL = 5;
    private static final byte SCHEMA_MODE_VALUE_READONLY = 2;
    private static final byte SCHEMA_MODE_VALUE_RESET_FILE = 3;
    private static final byte SYNCSESSION_STOP_POLICY_VALUE_AFTER_CHANGES_UPLOADED = 2;
    private static final byte SYNCSESSION_STOP_POLICY_VALUE_IMMEDIATELY = 0;
    private static final byte SYNCSESSION_STOP_POLICY_VALUE_LIVE_INDEFINETELY = 1;
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private final CompactOnLaunchCallback compactOnLaunchCallback;
    private final NativeContext context;
    private final OsSharedRealm.InitializationCallback initializationCallback;
    private final OsSharedRealm.MigrationCallback migrationCallback;
    private final long nativePtr;
    private final RealmConfiguration realmConfiguration;
    private final URI resolvedRealmURI;

    private static native long nativeCreate(String str, boolean z, boolean z2);

    private static native String nativeCreateAndSetSyncConfig(long j, String str, String str2, String str3, String str4, boolean z, byte b);

    private static native void nativeEnableChangeNotification(long j, boolean z);

    private static native long nativeGetFinalizerPtr();

    private static native void nativeSetCompactOnLaunchCallback(long j, CompactOnLaunchCallback compactOnLaunchCallback);

    private static native void nativeSetEncryptionKey(long j, byte[] bArr);

    private static native void nativeSetInMemory(long j, boolean z);

    private native void nativeSetInitializationCallback(long j, OsSharedRealm.InitializationCallback initializationCallback);

    private native void nativeSetSchemaConfig(long j, byte b, long j2, long j3, @Nullable OsSharedRealm.MigrationCallback migrationCallback);

    private static native void nativeSetSyncConfigSslSettings(long j, boolean z, String str);

    public enum Durability {
        FULL(0),
        MEM_ONLY(1);

        final int value;

        Durability(int value) {
            this.value = value;
        }
    }

    public enum SchemaMode {
        SCHEMA_MODE_AUTOMATIC((byte) 0),
        SCHEMA_MODE_IMMUTABLE((byte) 1),
        SCHEMA_MODE_READONLY((byte) 2),
        SCHEMA_MODE_RESET_FILE((byte) 3),
        SCHEMA_MODE_ADDITIVE((byte) 4),
        SCHEMA_MODE_MANUAL((byte) 5);

        final byte value;

        SchemaMode(byte value) {
            this.value = value;
        }

        public byte getNativeValue() {
            return this.value;
        }
    }

    public enum SyncSessionStopPolicy {
        IMMEDIATELY((byte) 0),
        LIVE_INDEFINITELY((byte) 1),
        AFTER_CHANGES_UPLOADED((byte) 2);

        final byte value;

        SyncSessionStopPolicy(byte value) {
            this.value = value;
        }

        public byte getNativeValue() {
            return this.value;
        }
    }

    public static class Builder {
        private RealmConfiguration configuration;
        private OsSchemaInfo schemaInfo = null;
        private OsSharedRealm.MigrationCallback migrationCallback = null;
        private OsSharedRealm.InitializationCallback initializationCallback = null;
        private boolean autoUpdateNotification = false;

        public Builder(RealmConfiguration configuration) {
            this.configuration = configuration;
        }

        public Builder schemaInfo(@Nullable OsSchemaInfo schemaInfo) {
            this.schemaInfo = schemaInfo;
            return this;
        }

        public Builder migrationCallback(@Nullable OsSharedRealm.MigrationCallback migrationCallback) {
            this.migrationCallback = migrationCallback;
            return this;
        }

        public Builder initializationCallback(@Nullable OsSharedRealm.InitializationCallback initializationCallback) {
            this.initializationCallback = initializationCallback;
            return this;
        }

        public Builder autoUpdateNotification(boolean autoUpdateNotification) {
            this.autoUpdateNotification = autoUpdateNotification;
            return this;
        }

        OsRealmConfig build() {
            return new OsRealmConfig(this.configuration, this.autoUpdateNotification, this.schemaInfo, this.migrationCallback, this.initializationCallback);
        }
    }

    private OsRealmConfig(RealmConfiguration config, boolean autoUpdateNotification, @Nullable OsSchemaInfo schemaInfo, @Nullable OsSharedRealm.MigrationCallback migrationCallback, @Nullable OsSharedRealm.InitializationCallback initializationCallback) {
        this.context = new NativeContext();
        this.realmConfiguration = config;
        this.nativePtr = nativeCreate(config.getPath(), false, true);
        NativeContext.dummyContext.addReference(this);
        Object[] syncConfigurationOptions = ObjectServerFacade.getSyncFacadeIfPossible().getUserAndServerUrl(this.realmConfiguration);
        String syncUserIdentifier = (String) syncConfigurationOptions[0];
        String syncRealmUrl = (String) syncConfigurationOptions[1];
        String syncRealmAuthUrl = (String) syncConfigurationOptions[2];
        String syncRefreshToken = (String) syncConfigurationOptions[3];
        boolean syncClientValidateSsl = Boolean.TRUE.equals(syncConfigurationOptions[4]);
        String syncSslTrustCertificatePath = (String) syncConfigurationOptions[5];
        Byte sessionStopPolicy = (Byte) syncConfigurationOptions[6];
        boolean isPartial = Boolean.TRUE.equals(syncConfigurationOptions[7]);
        byte[] key = config.getEncryptionKey();
        if (key != null) {
            nativeSetEncryptionKey(this.nativePtr, key);
        }
        nativeSetInMemory(this.nativePtr, config.getDurability() == Durability.MEM_ONLY);
        nativeEnableChangeNotification(this.nativePtr, autoUpdateNotification);
        SchemaMode schemaMode = SchemaMode.SCHEMA_MODE_MANUAL;
        if (config.isRecoveryConfiguration()) {
            schemaMode = SchemaMode.SCHEMA_MODE_IMMUTABLE;
        } else if (config.isReadOnly()) {
            schemaMode = SchemaMode.SCHEMA_MODE_READONLY;
        } else if (syncRealmUrl != null) {
            schemaMode = SchemaMode.SCHEMA_MODE_ADDITIVE;
        } else if (config.shouldDeleteRealmIfMigrationNeeded()) {
            schemaMode = SchemaMode.SCHEMA_MODE_RESET_FILE;
        }
        SchemaMode schemaMode2 = schemaMode;
        long schemaVersion = config.getSchemaVersion();
        long nativeSchemaPtr = schemaInfo == null ? 0L : schemaInfo.getNativePtr();
        this.migrationCallback = migrationCallback;
        nativeSetSchemaConfig(this.nativePtr, schemaMode2.getNativeValue(), schemaVersion, nativeSchemaPtr, migrationCallback);
        this.compactOnLaunchCallback = config.getCompactOnLaunchCallback();
        if (this.compactOnLaunchCallback != null) {
            nativeSetCompactOnLaunchCallback(this.nativePtr, this.compactOnLaunchCallback);
        }
        this.initializationCallback = initializationCallback;
        if (initializationCallback != null) {
            nativeSetInitializationCallback(this.nativePtr, initializationCallback);
        }
        URI resolvedRealmURI = null;
        if (syncRealmUrl != null) {
            String resolvedSyncRealmUrl = nativeCreateAndSetSyncConfig(this.nativePtr, syncRealmUrl, syncRealmAuthUrl, syncUserIdentifier, syncRefreshToken, isPartial, sessionStopPolicy.byteValue());
            try {
                resolvedRealmURI = new URI(resolvedSyncRealmUrl);
            } catch (URISyntaxException e) {
                RealmLog.error(e, "Cannot create a URI from the Realm URL address", new Object[0]);
            }
            nativeSetSyncConfigSslSettings(this.nativePtr, syncClientValidateSsl, syncSslTrustCertificatePath);
        }
        this.resolvedRealmURI = resolvedRealmURI;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    public RealmConfiguration getRealmConfiguration() {
        return this.realmConfiguration;
    }

    public URI getResolvedRealmURI() {
        return this.resolvedRealmURI;
    }

    NativeContext getContext() {
        return this.context;
    }
}
