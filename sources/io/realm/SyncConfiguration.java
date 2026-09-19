package io.realm;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.realm.Realm;
import io.realm.SyncSession;
import io.realm.annotations.RealmModule;
import io.realm.exceptions.RealmException;
import io.realm.internal.OsRealmConfig;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Util;
import io.realm.internal.sync.permissions.ObjectPermissionsModule;
import io.realm.log.RealmLog;
import io.realm.rx.RealmObservableFactory;
import io.realm.rx.RxObservableFactory;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes2.dex */
public class SyncConfiguration extends RealmConfiguration {
    private static final char[] INVALID_CHARS = {Typography.less, Typography.greater, ':', Typography.quote, '/', '\\', '|', '?', '*'};
    static final int MAX_FILE_NAME_LENGTH = 255;
    static final int MAX_FULL_PATH_LENGTH = 256;
    private final boolean deleteRealmOnLogout;
    private final SyncSession.ErrorHandler errorHandler;
    private final boolean isPartial;

    @Nullable
    private final String serverCertificateAssetName;

    @Nullable
    private final String serverCertificateFilePath;
    private final URI serverUrl;
    private final OsRealmConfig.SyncSessionStopPolicy sessionStopPolicy;
    private final boolean syncClientValidateSsl;
    private final SyncUser user;
    private final boolean waitForInitialData;

    private SyncConfiguration(File directory, String filename, String canonicalPath, @Nullable String assetFilePath, @Nullable byte[] key, long schemaVersion, @Nullable RealmMigration migration, boolean deleteRealmIfMigrationNeeded, OsRealmConfig.Durability durability, RealmProxyMediator schemaMediator, @Nullable RxObservableFactory rxFactory, @Nullable Realm.Transaction initialDataTransaction, boolean readOnly, SyncUser user, URI serverUrl, SyncSession.ErrorHandler errorHandler, boolean deleteRealmOnLogout, boolean syncClientValidateSsl, @Nullable String serverCertificateAssetName, @Nullable String serverCertificateFilePath, boolean waitForInitialData, OsRealmConfig.SyncSessionStopPolicy sessionStopPolicy, boolean isPartial) {
        super(directory, filename, canonicalPath, assetFilePath, key, schemaVersion, migration, deleteRealmIfMigrationNeeded, durability, schemaMediator, rxFactory, initialDataTransaction, readOnly, null, false);
        this.user = user;
        this.serverUrl = serverUrl;
        this.errorHandler = errorHandler;
        this.deleteRealmOnLogout = deleteRealmOnLogout;
        this.syncClientValidateSsl = syncClientValidateSsl;
        this.serverCertificateAssetName = serverCertificateAssetName;
        this.serverCertificateFilePath = serverCertificateFilePath;
        this.waitForInitialData = waitForInitialData;
        this.sessionStopPolicy = sessionStopPolicy;
        this.isPartial = isPartial;
    }

    public static RealmConfiguration forRecovery(String canonicalPath, @Nullable byte[] encryptionKey, @Nullable Object... modules) {
        HashSet<Object> validatedModules = new HashSet<>();
        if (modules != null && modules.length > 0) {
            for (Object module : modules) {
                if (!module.getClass().isAnnotationPresent(RealmModule.class)) {
                    throw new IllegalArgumentException(module.getClass().getCanonicalName() + " is not a RealmModule. Add @RealmModule to the class definition.");
                }
                validatedModules.add(module);
            }
        } else if (Realm.getDefaultModule() != null) {
            validatedModules.add(Realm.getDefaultModule());
        }
        RealmProxyMediator schemaMediator = createSchemaMediator(validatedModules, Collections.emptySet());
        return forRecovery(canonicalPath, encryptionKey, schemaMediator);
    }

    public static SyncConfiguration automatic() {
        SyncUser user = SyncUser.current();
        if (user == null) {
            throw new IllegalStateException("No user was logged in.");
        }
        return getDefaultConfig(user);
    }

    public static SyncConfiguration automatic(SyncUser user) {
        if (user == null) {
            throw new IllegalArgumentException("Non-null 'user' required.");
        }
        if (!user.isValid()) {
            throw new IllegalArgumentException("User is no logger valid.  Log the user in again.");
        }
        return getDefaultConfig(user);
    }

    private static SyncConfiguration getDefaultConfig(SyncUser user) {
        return new Builder(user, createUrl(user)).partialRealm().build();
    }

    private static String createUrl(SyncUser user) {
        String protocol;
        URL url = user.getAuthenticationUrl();
        String protocol2 = url.getProtocol();
        String host = url.getHost();
        int port = url.getPort();
        if (port != -1) {
            host = host + ":" + port;
        }
        if (protocol2.equalsIgnoreCase("https")) {
            protocol = "realms";
        } else {
            protocol = "realm";
        }
        return protocol + "://" + host + "/default";
    }

    public static RealmConfiguration forRecovery(String canonicalPath) {
        return forRecovery(canonicalPath, (byte[]) null, new Object[0]);
    }

    static RealmConfiguration forRecovery(String canonicalPath, @Nullable byte[] encryptionKey, RealmProxyMediator schemaMediator) {
        return new RealmConfiguration(null, null, canonicalPath, null, encryptionKey, 0L, null, false, OsRealmConfig.Durability.FULL, schemaMediator, null, null, true, null, true);
    }

    static URI resolveServerUrl(URI serverUrl, String userIdentifier) {
        try {
            return new URI(serverUrl.toString().replace("/~/", "/" + userIdentifier + "/"));
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("Could not replace '/~/' with a valid user ID.", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getServerPath(URI serverUrl) {
        String path = serverUrl.getPath();
        int endIndex = path.lastIndexOf("/");
        if (endIndex == -1) {
            return path;
        }
        if (endIndex == 0) {
            return path.substring(1);
        }
        return path.substring(1, endIndex);
    }

    @Override // io.realm.RealmConfiguration
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass() || !super.equals(o)) {
            return false;
        }
        SyncConfiguration that = (SyncConfiguration) o;
        if (this.deleteRealmOnLogout != that.deleteRealmOnLogout || this.syncClientValidateSsl != that.syncClientValidateSsl || !this.serverUrl.equals(that.serverUrl) || !this.user.equals(that.user) || !this.errorHandler.equals(that.errorHandler)) {
            return false;
        }
        if (this.serverCertificateAssetName == null ? that.serverCertificateAssetName != null : !this.serverCertificateAssetName.equals(that.serverCertificateAssetName)) {
            return false;
        }
        if (this.serverCertificateFilePath == null ? that.serverCertificateFilePath != null : !this.serverCertificateFilePath.equals(that.serverCertificateFilePath)) {
            return false;
        }
        if (this.waitForInitialData == that.waitForInitialData) {
            return true;
        }
        return false;
    }

    @Override // io.realm.RealmConfiguration
    public int hashCode() {
        return (((((((((((((((super.hashCode() * 31) + this.serverUrl.hashCode()) * 31) + this.user.hashCode()) * 31) + this.errorHandler.hashCode()) * 31) + (this.deleteRealmOnLogout ? 1 : 0)) * 31) + (this.syncClientValidateSsl ? 1 : 0)) * 31) + (this.serverCertificateAssetName != null ? this.serverCertificateAssetName.hashCode() : 0)) * 31) + (this.serverCertificateFilePath != null ? this.serverCertificateFilePath.hashCode() : 0)) * 31) + (this.waitForInitialData ? 1 : 0);
    }

    @Override // io.realm.RealmConfiguration
    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(super.toString());
        stringBuilder.append("\n");
        stringBuilder.append("serverUrl: " + this.serverUrl);
        stringBuilder.append("\n");
        stringBuilder.append("user: " + this.user);
        stringBuilder.append("\n");
        stringBuilder.append("errorHandler: " + this.errorHandler);
        stringBuilder.append("\n");
        stringBuilder.append("deleteRealmOnLogout: " + this.deleteRealmOnLogout);
        stringBuilder.append("\n");
        stringBuilder.append("waitForInitialRemoteData: " + this.waitForInitialData);
        return stringBuilder.toString();
    }

    public SyncUser getUser() {
        return this.user;
    }

    public URI getServerUrl() {
        return this.serverUrl;
    }

    public SyncSession.ErrorHandler getErrorHandler() {
        return this.errorHandler;
    }

    public boolean shouldDeleteRealmOnLogout() {
        return this.deleteRealmOnLogout;
    }

    @Nullable
    public String getServerCertificateAssetName() {
        return this.serverCertificateAssetName;
    }

    @Nullable
    public String getServerCertificateFilePath() {
        return this.serverCertificateFilePath;
    }

    public boolean syncClientValidateSsl() {
        return this.syncClientValidateSsl;
    }

    public boolean shouldWaitForInitialRemoteData() {
        return this.waitForInitialData;
    }

    @Override // io.realm.RealmConfiguration
    boolean isSyncConfiguration() {
        return true;
    }

    public OsRealmConfig.SyncSessionStopPolicy getSessionStopPolicy() {
        return this.sessionStopPolicy;
    }

    public boolean isPartialRealm() {
        return this.isPartial;
    }

    public static final class Builder {
        private HashSet<Class<? extends RealmModel>> debugSchema;
        private File defaultFolder;
        private String defaultLocalFileName;
        private boolean deleteRealmOnLogout;
        private File directory;
        private OsRealmConfig.Durability durability;
        private SyncSession.ErrorHandler errorHandler;
        private String fileName;

        @Nullable
        private Realm.Transaction initialDataTransaction;
        private boolean isPartial;

        @Nullable
        private byte[] key;
        private HashSet<Object> modules;
        private boolean overrideDefaultFolder;
        private boolean overrideDefaultLocalFileName;
        private final Pattern pattern;
        private boolean readOnly;

        @Nullable
        private RxObservableFactory rxFactory;
        private long schemaVersion;

        @Nullable
        private String serverCertificateAssetName;

        @Nullable
        private String serverCertificateFilePath;
        private URI serverUrl;
        private OsRealmConfig.SyncSessionStopPolicy sessionStopPolicy;
        private boolean syncClientValidateSsl;
        private SyncUser user;
        private boolean waitForServerChanges;

        public Builder(SyncUser user, String uri) {
            this(BaseRealm.applicationContext, user, uri);
        }

        Builder(Context context, SyncUser user, String url) {
            this.overrideDefaultFolder = false;
            this.overrideDefaultLocalFileName = false;
            this.schemaVersion = 0L;
            this.modules = new HashSet<>();
            this.debugSchema = new HashSet<>();
            this.durability = OsRealmConfig.Durability.FULL;
            this.pattern = Pattern.compile("^[A-Za-z0-9_\\-\\.]+$");
            this.readOnly = false;
            this.waitForServerChanges = false;
            this.deleteRealmOnLogout = false;
            this.user = null;
            this.errorHandler = SyncManager.defaultSessionErrorHandler;
            this.syncClientValidateSsl = true;
            this.sessionStopPolicy = OsRealmConfig.SyncSessionStopPolicy.AFTER_CHANGES_UPLOADED;
            this.isPartial = false;
            if (context == null) {
                throw new IllegalStateException("Call `Realm.init(Context)` before creating a SyncConfiguration");
            }
            this.defaultFolder = new File(context.getFilesDir(), "realm-object-server");
            if (Realm.getDefaultModule() != null) {
                this.modules.add(Realm.getDefaultModule());
            }
            validateAndSet(user);
            validateAndSet(url);
        }

        private void validateAndSet(SyncUser user) {
            if (user == null) {
                throw new IllegalArgumentException("Non-null `user` required.");
            }
            if (!user.isValid()) {
                throw new IllegalArgumentException("User not authenticated or authentication expired.");
            }
            this.user = user;
        }

        private void validateAndSet(String uri) {
            if (uri == null) {
                throw new IllegalArgumentException("Non-null 'uri' required.");
            }
            try {
                this.serverUrl = new URI(uri);
                try {
                    String serverScheme = this.serverUrl.getScheme();
                    if (serverScheme == null) {
                        String authProtocol = this.user.getAuthenticationUrl().getProtocol();
                        if (authProtocol.equalsIgnoreCase("https")) {
                            serverScheme = "realms";
                        } else {
                            serverScheme = "realm";
                        }
                    } else if (serverScheme.equalsIgnoreCase("http")) {
                        serverScheme = "realm";
                    } else if (serverScheme.equalsIgnoreCase("https")) {
                        serverScheme = "realms";
                    }
                    String host = this.serverUrl.getHost();
                    if (host == null) {
                        host = this.user.getAuthenticationUrl().getHost();
                    }
                    String host2 = host;
                    String path = this.serverUrl.getPath();
                    if (path != null && !path.startsWith("/")) {
                        path = "/" + path;
                    }
                    String path2 = path;
                    this.serverUrl = new URI(serverScheme, this.serverUrl.getUserInfo(), host2, this.serverUrl.getPort(), path2 != null ? path2.replace(host2 + "/", "") : null, this.serverUrl.getQuery(), this.serverUrl.getRawFragment());
                    String path3 = this.serverUrl.getPath();
                    if (path3 == null) {
                        throw new IllegalArgumentException("Invalid URI: " + uri);
                    }
                    String[] pathSegments = path3.split("/");
                    for (int i = 1; i < pathSegments.length; i++) {
                        String segment = pathSegments[i];
                        if (!segment.equals("~")) {
                            if (segment.equals("..") || segment.equals(".")) {
                                throw new IllegalArgumentException("The URI has an invalid segment: " + segment);
                            }
                            Matcher m = this.pattern.matcher(segment);
                            if (!m.matches()) {
                                throw new IllegalArgumentException("The URI must only contain characters 0-9, a-z, A-Z, ., _, and -: " + segment);
                            }
                        }
                    }
                    int i2 = pathSegments.length;
                    this.defaultLocalFileName = pathSegments[i2 - 1];
                    if (this.defaultLocalFileName.endsWith(".realm") || this.defaultLocalFileName.endsWith(".realm.lock") || this.defaultLocalFileName.endsWith(".realm.management")) {
                        throw new IllegalArgumentException("The URI must not end with '.realm', '.realm.lock' or '.realm.management: " + uri);
                    }
                } catch (URISyntaxException e) {
                    throw new IllegalArgumentException("Invalid URI: " + uri, e);
                }
            } catch (URISyntaxException e2) {
                throw new IllegalArgumentException("Invalid URI: " + uri, e2);
            }
        }

        public Builder name(String filename) {
            if (filename == null || filename.isEmpty()) {
                throw new IllegalArgumentException("A non-empty filename must be provided");
            }
            this.fileName = filename;
            this.overrideDefaultLocalFileName = true;
            return this;
        }

        public Builder directory(File directory) {
            if (directory == null) {
                throw new IllegalArgumentException("Non-null 'directory' required.");
            }
            if (directory.isFile()) {
                throw new IllegalArgumentException("'directory' is a file, not a directory: " + directory.getAbsolutePath() + ".");
            }
            if (!directory.exists() && !directory.mkdirs()) {
                throw new IllegalArgumentException("Could not create the specified directory: " + directory.getAbsolutePath() + ".");
            }
            if (!directory.canWrite()) {
                throw new IllegalArgumentException("Realm directory is not writable: " + directory.getAbsolutePath() + ".");
            }
            this.directory = directory;
            this.overrideDefaultFolder = true;
            return this;
        }

        public Builder encryptionKey(byte[] key) {
            if (key == null) {
                throw new IllegalArgumentException("A non-null key must be provided");
            }
            if (key.length != 64) {
                throw new IllegalArgumentException(String.format(Locale.US, "The provided key must be %s bytes. Yours was: %s", 64, Integer.valueOf(key.length)));
            }
            this.key = Arrays.copyOf(key, key.length);
            return this;
        }

        Builder schema(Class<? extends RealmModel> firstClass, Class<? extends RealmModel>... additionalClasses) {
            if (firstClass == null) {
                throw new IllegalArgumentException("A non-null class must be provided");
            }
            this.modules.clear();
            this.modules.add(RealmConfiguration.DEFAULT_MODULE_MEDIATOR);
            this.debugSchema.add(firstClass);
            if (additionalClasses != null) {
                Collections.addAll(this.debugSchema, additionalClasses);
            }
            return this;
        }

        Builder sessionStopPolicy(OsRealmConfig.SyncSessionStopPolicy policy) {
            this.sessionStopPolicy = policy;
            return this;
        }

        public Builder schemaVersion(long schemaVersion) {
            if (schemaVersion < 0) {
                throw new IllegalArgumentException("Realm schema version numbers must be 0 (zero) or higher. Yours was: " + schemaVersion);
            }
            this.schemaVersion = schemaVersion;
            return this;
        }

        public Builder modules(Object baseModule, Object... additionalModules) {
            this.modules.clear();
            addModule(baseModule);
            if (additionalModules != null) {
                for (Object module : additionalModules) {
                    addModule(module);
                }
            }
            return this;
        }

        public Builder modules(Iterable<Object> modules) {
            this.modules.clear();
            if (modules != null) {
                for (Object module : modules) {
                    addModule(module);
                }
            }
            return this;
        }

        public Builder addModule(Object module) {
            if (module != null) {
                checkModule(module);
                this.modules.add(module);
            }
            return this;
        }

        public Builder rxFactory(RxObservableFactory factory) {
            this.rxFactory = factory;
            return this;
        }

        public Builder initialData(Realm.Transaction transaction) {
            this.initialDataTransaction = transaction;
            return this;
        }

        public Builder inMemory() {
            this.durability = OsRealmConfig.Durability.MEM_ONLY;
            return this;
        }

        public Builder errorHandler(SyncSession.ErrorHandler errorHandler) {
            if (errorHandler == null) {
                throw new IllegalArgumentException("Non-null 'errorHandler' required.");
            }
            this.errorHandler = errorHandler;
            return this;
        }

        public Builder trustedRootCA(String filename) {
            if (filename == null || filename.isEmpty()) {
                throw new IllegalArgumentException("A non-empty filename must be provided");
            }
            this.serverCertificateAssetName = filename;
            return this;
        }

        public Builder disableSSLVerification() {
            this.syncClientValidateSsl = false;
            return this;
        }

        public Builder waitForInitialRemoteData() {
            this.waitForServerChanges = true;
            return this;
        }

        public Builder readOnly() {
            this.readOnly = true;
            return this;
        }

        public Builder partialRealm() {
            this.isPartial = true;
            return this;
        }

        private String MD5(String in) {
            try {
                MessageDigest digest = MessageDigest.getInstance(CommonUtils.MD5_INSTANCE);
                byte[] buf = digest.digest(in.getBytes(HttpRequest.CHARSET_UTF8));
                StringBuilder builder = new StringBuilder();
                for (byte b : buf) {
                    builder.append(String.format(Locale.US, "%02X", Byte.valueOf(b)));
                }
                return builder.toString();
            } catch (UnsupportedEncodingException e) {
                throw new RealmException(e.getMessage());
            } catch (NoSuchAlgorithmException e2) {
                throw new RealmException(e2.getMessage());
            }
        }

        public SyncConfiguration build() {
            if (this.serverUrl == null || this.user == null) {
                throw new IllegalStateException("serverUrl() and user() are both required.");
            }
            if (this.readOnly) {
                if (this.initialDataTransaction != null) {
                    throw new IllegalStateException("This Realm is marked as read-only. Read-only Realms cannot use initialData(Realm.Transaction).");
                }
                if (!this.waitForServerChanges) {
                    throw new IllegalStateException("A read-only Realms must be provided by some source. 'waitForInitialRemoteData()' wasn't enabled which is currently the only supported source.");
                }
            }
            if (this.serverUrl.toString().contains("/~/") && this.user.getIdentity() == null) {
                throw new IllegalStateException("The serverUrl contains a /~/, but the user does not have an identity. Most likely it hasn't been authenticated yet or has been created directly from an access token. Use a path without /~/.");
            }
            if (this.rxFactory == null && RealmConfiguration.isRxJavaAvailable()) {
                this.rxFactory = new RealmObservableFactory();
            }
            URI resolvedServerUrl = SyncConfiguration.resolveServerUrl(this.serverUrl, this.user.getIdentity());
            File rootDir = this.overrideDefaultFolder ? this.directory : this.defaultFolder;
            String realmPathFromRootDir = this.user.getIdentity() + "/" + SyncConfiguration.getServerPath(resolvedServerUrl);
            File realmFileDirectory = new File(rootDir, realmPathFromRootDir);
            String realmFileName = this.overrideDefaultLocalFileName ? this.fileName : this.defaultLocalFileName;
            String fullPathName = realmFileDirectory.getAbsolutePath() + File.pathSeparator + realmFileName;
            if (fullPathName.length() > 256) {
                realmFileName = MD5(realmFileName);
                fullPathName = realmFileDirectory.getAbsolutePath() + File.pathSeparator + realmFileName;
                if (fullPathName.length() > 256) {
                    realmFileDirectory = new File(rootDir, this.user.getIdentity());
                    fullPathName = realmFileDirectory.getAbsolutePath() + File.pathSeparator + realmFileName;
                    if (fullPathName.length() > 256) {
                        throw new IllegalStateException(String.format(Locale.US, "Full path name must not exceed %d characters: %s", 256, fullPathName));
                    }
                }
            }
            File realmFileDirectory2 = realmFileDirectory;
            if (realmFileName.length() <= 255) {
                String realmFileName2 = realmFileName;
                for (char c : SyncConfiguration.INVALID_CHARS) {
                    realmFileName2 = realmFileName2.replace(c, '_');
                }
                if (!realmFileDirectory2.exists() && !realmFileDirectory2.mkdirs()) {
                    throw new IllegalStateException("Could not create directory for saving the Realm: " + realmFileDirectory2);
                }
                if (!Util.isEmptyString(this.serverCertificateAssetName)) {
                    if (this.syncClientValidateSsl) {
                        String fileName = this.serverCertificateAssetName.substring(this.serverCertificateAssetName.lastIndexOf(File.separatorChar) + 1);
                        this.serverCertificateFilePath = new File(realmFileDirectory2, fileName).getAbsolutePath();
                    } else {
                        RealmLog.warn("SSL Verification is disabled, the provided server certificate will not be used.", new Object[0]);
                    }
                }
                if (this.isPartial) {
                    addModule(new ObjectPermissionsModule());
                }
                return new SyncConfiguration(realmFileDirectory2, realmFileName2, RealmConfiguration.getCanonicalPath(new File(realmFileDirectory2, realmFileName2)), null, this.key, this.schemaVersion, null, false, this.durability, RealmConfiguration.createSchemaMediator(this.modules, this.debugSchema), this.rxFactory, this.initialDataTransaction, this.readOnly, this.user, resolvedServerUrl, this.errorHandler, this.deleteRealmOnLogout, this.syncClientValidateSsl, this.serverCertificateAssetName, this.serverCertificateFilePath, this.waitForServerChanges, this.sessionStopPolicy, this.isPartial);
            }
            throw new IllegalStateException(String.format(Locale.US, "File name exceed %d characters: %d", 255, Integer.valueOf(realmFileName.length())));
        }

        private void checkModule(Object module) {
            if (!module.getClass().isAnnotationPresent(RealmModule.class)) {
                throw new IllegalArgumentException(module.getClass().getCanonicalName() + " is not a RealmModule. Add @RealmModule to the class definition.");
            }
        }
    }
}
