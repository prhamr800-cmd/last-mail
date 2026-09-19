package io.realm.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.IntentFilter;
import io.realm.RealmConfiguration;
import io.realm.SyncConfiguration;
import io.realm.SyncManager;
import io.realm.SyncSession;
import io.realm.SyncUser;
import io.realm.exceptions.DownloadingRealmInterruptedException;
import io.realm.exceptions.RealmException;
import io.realm.internal.network.NetworkStateReceiver;
import io.realm.internal.sync.permissions.ObjectPermissionsModule;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class SyncObjectServerFacade extends ObjectServerFacade {
    private static final String WRONG_TYPE_OF_CONFIGURATION = "'configuration' has to be an instance of 'SyncConfiguration'.";

    @SuppressLint({"StaticFieldLeak"})
    private static Context applicationContext;
    private static volatile Method removeSessionMethod;

    @Override // io.realm.internal.ObjectServerFacade
    public void init(Context context) {
        try {
            Class<?> syncManager = Class.forName("io.realm.ObjectServer");
            Method method = syncManager.getDeclaredMethod("init", Context.class);
            method.setAccessible(true);
            method.invoke(null, context);
            if (applicationContext == null) {
                applicationContext = context;
                applicationContext.registerReceiver(new NetworkStateReceiver(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            }
        } catch (ClassNotFoundException e) {
            throw new RealmException("Could not initialize the Realm Object Server", e);
        } catch (IllegalAccessException e2) {
            throw new RealmException("Could not initialize the Realm Object Server", e2);
        } catch (NoSuchMethodException e3) {
            throw new RealmException("Could not initialize the Realm Object Server", e3);
        } catch (InvocationTargetException e4) {
            throw new RealmException("Could not initialize the Realm Object Server", e4);
        }
    }

    @Override // io.realm.internal.ObjectServerFacade
    public void realmClosed(RealmConfiguration configuration) {
        if (configuration instanceof SyncConfiguration) {
            SyncConfiguration syncConfig = (SyncConfiguration) configuration;
            invokeRemoveSession(syncConfig);
            return;
        }
        throw new IllegalArgumentException(WRONG_TYPE_OF_CONFIGURATION);
    }

    @Override // io.realm.internal.ObjectServerFacade
    public Object[] getUserAndServerUrl(RealmConfiguration config) {
        if (config instanceof SyncConfiguration) {
            SyncConfiguration syncConfig = (SyncConfiguration) config;
            SyncUser user = syncConfig.getUser();
            String rosServerUrl = syncConfig.getServerUrl().toString();
            String rosUserIdentity = user.getIdentity();
            String syncRealmAuthUrl = user.getAuthenticationUrl().toString();
            String rosSerializedUser = user.toJson();
            byte sessionStopPolicy = syncConfig.getSessionStopPolicy().getNativeValue();
            return new Object[]{rosUserIdentity, rosServerUrl, syncRealmAuthUrl, rosSerializedUser, Boolean.valueOf(syncConfig.syncClientValidateSsl()), syncConfig.getServerCertificateFilePath(), Byte.valueOf(sessionStopPolicy), Boolean.valueOf(syncConfig.isPartialRealm())};
        }
        return new Object[8];
    }

    public static Context getApplicationContext() {
        return applicationContext;
    }

    @Override // io.realm.internal.ObjectServerFacade
    public void wrapObjectStoreSessionIfRequired(OsRealmConfig config) {
        if (config.getRealmConfiguration() instanceof SyncConfiguration) {
            SyncManager.getOrCreateSession((SyncConfiguration) config.getRealmConfiguration(), config.getResolvedRealmURI());
        }
    }

    @Override // io.realm.internal.ObjectServerFacade
    public String getSyncServerCertificateAssetName(RealmConfiguration configuration) {
        if (configuration instanceof SyncConfiguration) {
            SyncConfiguration syncConfig = (SyncConfiguration) configuration;
            return syncConfig.getServerCertificateAssetName();
        }
        throw new IllegalArgumentException(WRONG_TYPE_OF_CONFIGURATION);
    }

    @Override // io.realm.internal.ObjectServerFacade
    public String getSyncServerCertificateFilePath(RealmConfiguration configuration) {
        if (configuration instanceof SyncConfiguration) {
            SyncConfiguration syncConfig = (SyncConfiguration) configuration;
            return syncConfig.getServerCertificateFilePath();
        }
        throw new IllegalArgumentException(WRONG_TYPE_OF_CONFIGURATION);
    }

    private void invokeRemoveSession(SyncConfiguration syncConfig) {
        try {
            if (removeSessionMethod == null) {
                synchronized (SyncObjectServerFacade.class) {
                    if (removeSessionMethod == null) {
                        Method removeSession = SyncManager.class.getDeclaredMethod("removeSession", SyncConfiguration.class);
                        removeSession.setAccessible(true);
                        removeSessionMethod = removeSession;
                    }
                }
            }
            removeSessionMethod.invoke(null, syncConfig);
        } catch (IllegalAccessException e) {
            throw new RealmException("Could not remove session: " + syncConfig.toString(), e);
        } catch (NoSuchMethodException e2) {
            throw new RealmException("Could not lookup method to remove session: " + syncConfig.toString(), e2);
        } catch (InvocationTargetException e3) {
            throw new RealmException("Could not invoke method to remove session: " + syncConfig.toString(), e3);
        }
    }

    @Override // io.realm.internal.ObjectServerFacade
    public void downloadRemoteChanges(RealmConfiguration config) {
        if (config instanceof SyncConfiguration) {
            SyncConfiguration syncConfig = (SyncConfiguration) config;
            if (syncConfig.shouldWaitForInitialRemoteData()) {
                SyncSession session = SyncManager.getSession(syncConfig);
                try {
                    session.downloadAllServerChanges();
                } catch (InterruptedException e) {
                    throw new DownloadingRealmInterruptedException(syncConfig, e);
                }
            }
        }
    }

    @Override // io.realm.internal.ObjectServerFacade
    public boolean wasDownloadInterrupted(Throwable throwable) {
        return throwable instanceof DownloadingRealmInterruptedException;
    }

    @Override // io.realm.internal.ObjectServerFacade
    public boolean isPartialRealm(RealmConfiguration configuration) {
        if (configuration instanceof SyncConfiguration) {
            SyncConfiguration syncConfig = (SyncConfiguration) configuration;
            return syncConfig.isPartialRealm();
        }
        return false;
    }

    @Override // io.realm.internal.ObjectServerFacade
    public void addSupportForObjectLevelPermissions(RealmConfiguration.Builder builder) {
        builder.addModule(new ObjectPermissionsModule());
    }
}
