package io.realm;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.SystemClock;
import android.util.JsonReader;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.reactivex.Flowable;
import io.realm.BaseRealm;
import io.realm.RealmCache;
import io.realm.RealmConfiguration;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmMigrationNeededException;
import io.realm.internal.ColumnIndices;
import io.realm.internal.ObjectServerFacade;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsObjectStore;
import io.realm.internal.OsResults;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.RealmCore;
import io.realm.internal.RealmNotifier;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Table;
import io.realm.internal.TableQuery;
import io.realm.internal.Util;
import io.realm.internal.async.RealmAsyncTaskImpl;
import io.realm.log.RealmLog;
import io.realm.sync.permissions.ClassPermissions;
import io.realm.sync.permissions.ClassPrivileges;
import io.realm.sync.permissions.ObjectPrivileges;
import io.realm.sync.permissions.RealmPermissions;
import io.realm.sync.permissions.RealmPrivileges;
import io.realm.sync.permissions.Role;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Realm extends BaseRealm {
    public static final String DEFAULT_REALM_NAME = "default.realm";
    private static final String NULL_CONFIG_MSG = "A non-null RealmConfiguration must be provided";
    private static RealmConfiguration defaultConfiguration;
    private static final Object defaultConfigurationLock = new Object();
    private final RealmSchema schema;

    /* JADX INFO: loaded from: classes2.dex */
    public interface UnsubscribeCallback {
        void onError(String str, Throwable th);

        void onSuccess(String str);
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void beginTransaction() {
        super.beginTransaction();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void cancelTransaction() {
        super.cancelTransaction();
    }

    @Override // io.realm.BaseRealm, java.io.Closeable, java.lang.AutoCloseable
    public /* bridge */ /* synthetic */ void close() {
        super.close();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void commitTransaction() {
        super.commitTransaction();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void deleteAll() {
        super.deleteAll();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ RealmConfiguration getConfiguration() {
        return super.getConfiguration();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ String getPath() {
        return super.getPath();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ ObjectPrivileges getPrivileges(RealmModel realmModel) {
        return super.getPrivileges(realmModel);
    }

    @Override // io.realm.BaseRealm
    @io.realm.internal.annotations.ObjectServer
    public /* bridge */ /* synthetic */ RealmPrivileges getPrivileges() {
        return super.getPrivileges();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ long getVersion() {
        return super.getVersion();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ boolean isAutoRefresh() {
        return super.isAutoRefresh();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ boolean isClosed() {
        return super.isClosed();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ boolean isInTransaction() {
        return super.isInTransaction();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void refresh() {
        super.refresh();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void setAutoRefresh(boolean z) {
        super.setAutoRefresh(z);
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void stopWaitForChange() {
        super.stopWaitForChange();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ boolean waitForChange() {
        return super.waitForChange();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void writeCopyTo(File file) {
        super.writeCopyTo(file);
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void writeEncryptedCopyTo(File file, byte[] bArr) {
        super.writeEncryptedCopyTo(file, bArr);
    }

    private Realm(RealmCache cache) {
        super(cache, createExpectedSchemaInfo(cache.getConfiguration().getSchemaMediator()));
        this.schema = new ImmutableRealmSchema(this, new ColumnIndices(this.configuration.getSchemaMediator(), this.sharedRealm.getSchemaInfo()));
        if (this.configuration.isReadOnly()) {
            RealmProxyMediator mediator = this.configuration.getSchemaMediator();
            Set<Class<? extends RealmModel>> classes = mediator.getModelClasses();
            for (Class<? extends RealmModel> clazz : classes) {
                String tableName = Table.getTableNameForClass(mediator.getSimpleClassName(clazz));
                if (!this.sharedRealm.hasTable(tableName)) {
                    this.sharedRealm.close();
                    throw new RealmMigrationNeededException(this.configuration.getPath(), String.format(Locale.US, "Cannot open the read only Realm. '%s' is missing.", Table.getClassNameForTable(tableName)));
                }
            }
        }
    }

    private Realm(OsSharedRealm sharedRealm) {
        super(sharedRealm);
        this.schema = new ImmutableRealmSchema(this, new ColumnIndices(this.configuration.getSchemaMediator(), sharedRealm.getSchemaInfo()));
    }

    private static OsSchemaInfo createExpectedSchemaInfo(RealmProxyMediator mediator) {
        return new OsSchemaInfo(mediator.getExpectedObjectSchemaInfoMap().values());
    }

    @Override // io.realm.BaseRealm
    public Flowable<Realm> asFlowable() {
        return this.configuration.getRxFactory().from(this);
    }

    @Override // io.realm.BaseRealm
    public RealmSchema getSchema() {
        return this.schema;
    }

    public static synchronized void init(Context context) {
        if (BaseRealm.applicationContext == null) {
            if (context == null) {
                throw new IllegalArgumentException("Non-null context required.");
            }
            checkFilesDirAvailable(context);
            RealmCore.loadLibrary(context);
            setDefaultConfiguration(new RealmConfiguration.Builder(context).build());
            ObjectServerFacade.getSyncFacadeIfPossible().init(context);
            if (context.getApplicationContext() != null) {
                BaseRealm.applicationContext = context.getApplicationContext();
            } else {
                BaseRealm.applicationContext = context;
            }
            OsSharedRealm.initialize(new File(context.getFilesDir(), ".realm.temp"));
        }
    }

    private static void checkFilesDirAvailable(Context context) {
        File filesDir = context.getFilesDir();
        if (filesDir != null) {
            if (filesDir.exists()) {
                return;
            } else {
                try {
                    filesDir.mkdirs();
                } catch (SecurityException e) {
                }
            }
        }
        if (filesDir == null || !filesDir.exists()) {
            long[] timeoutsMs = {1, 2, 5, 10, 16};
            long currentTotalWaitMs = 0;
            int waitIndex = -1;
            do {
                if (context.getFilesDir() != null && context.getFilesDir().exists()) {
                    break;
                }
                waitIndex++;
                long waitMs = timeoutsMs[Math.min(waitIndex, timeoutsMs.length - 1)];
                SystemClock.sleep(waitMs);
                currentTotalWaitMs += waitMs;
            } while (currentTotalWaitMs <= 200);
        }
        if (context.getFilesDir() == null || !context.getFilesDir().exists()) {
            throw new IllegalStateException("Context.getFilesDir() returns " + context.getFilesDir() + " which is not an existing directory. See https://issuetracker.google.com/issues/36918154");
        }
    }

    public static Realm getDefaultInstance() {
        RealmConfiguration configuration = getDefaultConfiguration();
        if (configuration == null) {
            if (BaseRealm.applicationContext == null) {
                throw new IllegalStateException("Call `Realm.init(Context)` before calling this method.");
            }
            throw new IllegalStateException("Set default configuration by using `Realm.setDefaultConfiguration(RealmConfiguration)`.");
        }
        return (Realm) RealmCache.createRealmOrGetFromCache(configuration, Realm.class);
    }

    public static Realm getInstance(RealmConfiguration configuration) {
        if (configuration == null) {
            throw new IllegalArgumentException(NULL_CONFIG_MSG);
        }
        return (Realm) RealmCache.createRealmOrGetFromCache(configuration, Realm.class);
    }

    public static RealmAsyncTask getInstanceAsync(RealmConfiguration configuration, Callback callback) {
        if (configuration == null) {
            throw new IllegalArgumentException(NULL_CONFIG_MSG);
        }
        return RealmCache.createRealmOrGetFromCacheAsync(configuration, callback, Realm.class);
    }

    public static void setDefaultConfiguration(RealmConfiguration configuration) {
        if (configuration == null) {
            throw new IllegalArgumentException(NULL_CONFIG_MSG);
        }
        synchronized (defaultConfigurationLock) {
            defaultConfiguration = configuration;
        }
    }

    @Nullable
    public static RealmConfiguration getDefaultConfiguration() {
        RealmConfiguration realmConfiguration;
        synchronized (defaultConfigurationLock) {
            realmConfiguration = defaultConfiguration;
        }
        return realmConfiguration;
    }

    public static void removeDefaultConfiguration() {
        synchronized (defaultConfigurationLock) {
            defaultConfiguration = null;
        }
    }

    static Realm createInstance(RealmCache cache) {
        return new Realm(cache);
    }

    static Realm createInstance(OsSharedRealm sharedRealm) {
        return new Realm(sharedRealm);
    }

    public <E extends RealmModel> void createAllFromJson(Class<E> clazz, JSONArray json) {
        if (clazz == null || json == null) {
            return;
        }
        checkIfValid();
        for (int i = 0; i < json.length(); i++) {
            try {
                this.configuration.getSchemaMediator().createOrUpdateUsingJsonObject(clazz, this, json.getJSONObject(i), false);
            } catch (JSONException e) {
                throw new RealmException("Could not map JSON", e);
            }
        }
    }

    public <E extends RealmModel> void createOrUpdateAllFromJson(Class<E> clazz, JSONArray json) {
        if (clazz == null || json == null) {
            return;
        }
        checkIfValid();
        checkHasPrimaryKey(clazz);
        for (int i = 0; i < json.length(); i++) {
            try {
                this.configuration.getSchemaMediator().createOrUpdateUsingJsonObject(clazz, this, json.getJSONObject(i), true);
            } catch (JSONException e) {
                throw new RealmException("Could not map JSON", e);
            }
        }
    }

    public <E extends RealmModel> void createAllFromJson(Class<E> clazz, String json) {
        if (clazz == null || json == null || json.length() == 0) {
            return;
        }
        try {
            JSONArray arr = new JSONArray(json);
            createAllFromJson(clazz, arr);
        } catch (JSONException e) {
            throw new RealmException("Could not create JSON array from string", e);
        }
    }

    public <E extends RealmModel> void createOrUpdateAllFromJson(Class<E> clazz, String json) {
        if (clazz == null || json == null || json.length() == 0) {
            return;
        }
        checkIfValid();
        checkHasPrimaryKey(clazz);
        try {
            JSONArray arr = new JSONArray(json);
            createOrUpdateAllFromJson(clazz, arr);
        } catch (JSONException e) {
            throw new RealmException("Could not create JSON array from string", e);
        }
    }

    @TargetApi(11)
    public <E extends RealmModel> void createAllFromJson(Class<E> clazz, InputStream inputStream) throws IOException {
        if (clazz == null || inputStream == null) {
            return;
        }
        checkIfValid();
        JsonReader reader = new JsonReader(new InputStreamReader(inputStream, HttpRequest.CHARSET_UTF8));
        try {
            reader.beginArray();
            while (reader.hasNext()) {
                this.configuration.getSchemaMediator().createUsingJsonStream(clazz, this, reader);
            }
            reader.endArray();
        } finally {
            reader.close();
        }
    }

    @TargetApi(11)
    public <E extends RealmModel> void createOrUpdateAllFromJson(Class<E> clazz, InputStream in) {
        if (clazz == null || in == null) {
            return;
        }
        checkIfValid();
        checkHasPrimaryKey(clazz);
        Scanner scanner = null;
        try {
            try {
                scanner = getFullStringScanner(in);
                JSONArray json = new JSONArray(scanner.next());
                for (int i = 0; i < json.length(); i++) {
                    this.configuration.getSchemaMediator().createOrUpdateUsingJsonObject(clazz, this, json.getJSONObject(i), true);
                }
            } catch (JSONException e) {
                throw new RealmException("Failed to read JSON", e);
            }
        } finally {
            if (scanner != null) {
                scanner.close();
            }
        }
    }

    @Nullable
    public <E extends RealmModel> E createObjectFromJson(Class<E> cls, JSONObject jSONObject) {
        if (cls == null || jSONObject == null) {
            return null;
        }
        checkIfValid();
        try {
            return (E) this.configuration.getSchemaMediator().createOrUpdateUsingJsonObject(cls, this, jSONObject, false);
        } catch (JSONException e) {
            throw new RealmException("Could not map JSON", e);
        }
    }

    public <E extends RealmModel> E createOrUpdateObjectFromJson(Class<E> cls, JSONObject jSONObject) {
        if (cls == null || jSONObject == null) {
            return null;
        }
        checkIfValid();
        checkHasPrimaryKey(cls);
        try {
            return (E) this.configuration.getSchemaMediator().createOrUpdateUsingJsonObject(cls, this, jSONObject, true);
        } catch (JSONException e) {
            throw new RealmException("Could not map JSON", e);
        }
    }

    @Nullable
    public <E extends RealmModel> E createObjectFromJson(Class<E> cls, String str) {
        if (cls == null || str == null || str.length() == 0) {
            return null;
        }
        try {
            return (E) createObjectFromJson(cls, new JSONObject(str));
        } catch (JSONException e) {
            throw new RealmException("Could not create Json object from string", e);
        }
    }

    public <E extends RealmModel> E createOrUpdateObjectFromJson(Class<E> cls, String str) {
        if (cls == null || str == null || str.length() == 0) {
            return null;
        }
        checkIfValid();
        checkHasPrimaryKey(cls);
        try {
            return (E) createOrUpdateObjectFromJson(cls, new JSONObject(str));
        } catch (JSONException e) {
            throw new RealmException("Could not create Json object from string", e);
        }
    }

    @Nullable
    @TargetApi(11)
    public <E extends RealmModel> E createObjectFromJson(Class<E> cls, InputStream inputStream) throws JSONException, IOException {
        RealmModel realmModelCreateOrUpdateUsingJsonObject;
        Scanner fullStringScanner = null;
        if (cls == null || inputStream == null) {
            return null;
        }
        checkIfValid();
        try {
            if (OsObjectStore.getPrimaryKeyForObject(this.sharedRealm, this.configuration.getSchemaMediator().getSimpleClassName(cls)) != null) {
                try {
                    fullStringScanner = getFullStringScanner(inputStream);
                    realmModelCreateOrUpdateUsingJsonObject = this.configuration.getSchemaMediator().createOrUpdateUsingJsonObject(cls, this, new JSONObject(fullStringScanner.next()), false);
                } catch (JSONException e) {
                    throw new RealmException("Failed to read JSON", e);
                }
            } else {
                JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, HttpRequest.CHARSET_UTF8));
                try {
                    realmModelCreateOrUpdateUsingJsonObject = this.configuration.getSchemaMediator().createUsingJsonStream(cls, this, jsonReader);
                } finally {
                    jsonReader.close();
                }
            }
            return (E) realmModelCreateOrUpdateUsingJsonObject;
        } finally {
            if (fullStringScanner != null) {
                fullStringScanner.close();
            }
        }
    }

    @TargetApi(11)
    public <E extends RealmModel> E createOrUpdateObjectFromJson(Class<E> cls, InputStream inputStream) {
        Scanner fullStringScanner = null;
        if (cls == null || inputStream == null) {
            return null;
        }
        checkIfValid();
        checkHasPrimaryKey(cls);
        try {
            try {
                fullStringScanner = getFullStringScanner(inputStream);
                return (E) createOrUpdateObjectFromJson(cls, new JSONObject(fullStringScanner.next()));
            } catch (JSONException e) {
                throw new RealmException("Failed to read JSON", e);
            }
        } finally {
            if (fullStringScanner != null) {
                fullStringScanner.close();
            }
        }
    }

    private Scanner getFullStringScanner(InputStream in) {
        return new Scanner(in, HttpRequest.CHARSET_UTF8).useDelimiter("\\A");
    }

    public <E extends RealmModel> E createObject(Class<E> cls) {
        checkIfValid();
        return (E) createObjectInternal(cls, true, Collections.emptyList());
    }

    <E extends RealmModel> E createObjectInternal(Class<E> cls, boolean z, List<String> list) {
        Table table = this.schema.getTable((Class<? extends RealmModel>) cls);
        if (OsObjectStore.getPrimaryKeyForObject(this.sharedRealm, this.configuration.getSchemaMediator().getSimpleClassName(cls)) != null) {
            throw new RealmException(String.format(Locale.US, "'%s' has a primary key, use 'createObject(Class<E>, Object)' instead.", table.getClassName()));
        }
        return (E) this.configuration.getSchemaMediator().newInstance(cls, this, OsObject.create(table), this.schema.getColumnInfo((Class<? extends RealmModel>) cls), z, list);
    }

    public <E extends RealmModel> E createObject(Class<E> cls, @Nullable Object obj) {
        checkIfValid();
        return (E) createObjectInternal(cls, obj, true, Collections.emptyList());
    }

    <E extends RealmModel> E createObjectInternal(Class<E> cls, @Nullable Object obj, boolean z, List<String> list) {
        return (E) this.configuration.getSchemaMediator().newInstance(cls, this, OsObject.createWithPrimaryKey(this.schema.getTable((Class<? extends RealmModel>) cls), obj), this.schema.getColumnInfo((Class<? extends RealmModel>) cls), z, list);
    }

    public <E extends RealmModel> E copyToRealm(E e) {
        checkNotNullObject(e);
        return (E) copyOrUpdate(e, false, new HashMap());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends RealmModel> E copyToRealmOrUpdate(E e) {
        checkNotNullObject(e);
        checkHasPrimaryKey(e.getClass());
        return (E) copyOrUpdate(e, true, new HashMap());
    }

    public <E extends RealmModel> List<E> copyToRealm(Iterable<E> objects) {
        if (objects == null) {
            return new ArrayList();
        }
        Map<RealmModel, RealmObjectProxy> cache = new HashMap<>();
        ArrayList arrayList = new ArrayList();
        for (E object : objects) {
            checkNotNullObject(object);
            arrayList.add(copyOrUpdate(object, false, cache));
        }
        return arrayList;
    }

    public void insert(Collection<? extends RealmModel> objects) {
        checkIfValidAndInTransaction();
        if (objects == null) {
            throw new IllegalArgumentException("Null objects cannot be inserted into Realm.");
        }
        if (objects.isEmpty()) {
            return;
        }
        this.configuration.getSchemaMediator().insert(this, objects);
    }

    public void insert(RealmModel object) {
        checkIfValidAndInTransaction();
        if (object == null) {
            throw new IllegalArgumentException("Null object cannot be inserted into Realm.");
        }
        Map<RealmModel, Long> cache = new HashMap<>();
        this.configuration.getSchemaMediator().insert(this, object, cache);
    }

    public void insertOrUpdate(Collection<? extends RealmModel> objects) {
        checkIfValidAndInTransaction();
        if (objects == null) {
            throw new IllegalArgumentException("Null objects cannot be inserted into Realm.");
        }
        if (objects.isEmpty()) {
            return;
        }
        this.configuration.getSchemaMediator().insertOrUpdate(this, objects);
    }

    public void insertOrUpdate(RealmModel object) {
        checkIfValidAndInTransaction();
        if (object == null) {
            throw new IllegalArgumentException("Null object cannot be inserted into Realm.");
        }
        Map<RealmModel, Long> cache = new HashMap<>();
        this.configuration.getSchemaMediator().insertOrUpdate(this, object, cache);
    }

    public <E extends RealmModel> List<E> copyToRealmOrUpdate(Iterable<E> objects) {
        if (objects == null) {
            return new ArrayList(0);
        }
        Map<RealmModel, RealmObjectProxy> cache = new HashMap<>();
        ArrayList arrayList = new ArrayList();
        for (E object : objects) {
            checkNotNullObject(object);
            arrayList.add(copyOrUpdate(object, true, cache));
        }
        return arrayList;
    }

    public <E extends RealmModel> List<E> copyFromRealm(Iterable<E> realmObjects) {
        return copyFromRealm(realmObjects, Integer.MAX_VALUE);
    }

    public <E extends RealmModel> List<E> copyFromRealm(Iterable<E> realmObjects, int maxDepth) {
        checkMaxDepth(maxDepth);
        if (realmObjects == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList();
        Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> listCache = new HashMap<>();
        for (E object : realmObjects) {
            checkValidObjectForDetach(object);
            arrayList.add(createDetachedCopy(object, maxDepth, listCache));
        }
        return arrayList;
    }

    public <E extends RealmModel> E copyFromRealm(E e) {
        return (E) copyFromRealm(e, Integer.MAX_VALUE);
    }

    public <E extends RealmModel> E copyFromRealm(E e, int i) {
        checkMaxDepth(i);
        checkValidObjectForDetach(e);
        return (E) createDetachedCopy(e, i, new HashMap());
    }

    public <E extends RealmModel> RealmQuery<E> where(Class<E> clazz) {
        checkIfValid();
        return RealmQuery.createQuery(this, clazz);
    }

    public void addChangeListener(RealmChangeListener<Realm> listener) {
        addListener(listener);
    }

    public void removeChangeListener(RealmChangeListener<Realm> listener) {
        removeListener(listener);
    }

    public void removeAllChangeListeners() {
        removeAllListeners();
    }

    public void executeTransaction(Transaction transaction) {
        if (transaction == null) {
            throw new IllegalArgumentException("Transaction should not be null");
        }
        beginTransaction();
        try {
            transaction.execute(this);
            commitTransaction();
        } catch (Throwable e) {
            if (isInTransaction()) {
                cancelTransaction();
            } else {
                RealmLog.warn("Could not cancel transaction, not currently in a transaction.", new Object[0]);
            }
            throw e;
        }
    }

    public RealmAsyncTask executeTransactionAsync(Transaction transaction) {
        return executeTransactionAsync(transaction, null, null);
    }

    public RealmAsyncTask executeTransactionAsync(Transaction transaction, Transaction.OnSuccess onSuccess) {
        if (onSuccess == null) {
            throw new IllegalArgumentException("onSuccess callback can't be null");
        }
        return executeTransactionAsync(transaction, onSuccess, null);
    }

    public RealmAsyncTask executeTransactionAsync(Transaction transaction, Transaction.OnError onError) {
        if (onError == null) {
            throw new IllegalArgumentException("onError callback can't be null");
        }
        return executeTransactionAsync(transaction, null, onError);
    }

    public RealmAsyncTask executeTransactionAsync(Transaction transaction, @Nullable Transaction.OnSuccess onSuccess, @Nullable Transaction.OnError onError) {
        checkIfValid();
        if (transaction == null) {
            throw new IllegalArgumentException("Transaction should not be null");
        }
        boolean canDeliverNotification = this.sharedRealm.capabilities.canDeliverNotification();
        if (onSuccess != null || onError != null) {
            this.sharedRealm.capabilities.checkCanDeliverNotification("Callback cannot be delivered on current thread.");
        }
        RealmConfiguration realmConfiguration = getConfiguration();
        RealmNotifier realmNotifier = this.sharedRealm.realmNotifier;
        Future<?> pendingTransaction = asyncTaskExecutor.submitTransaction(new AnonymousClass1(realmConfiguration, transaction, canDeliverNotification, onSuccess, realmNotifier, onError));
        return new RealmAsyncTaskImpl(pendingTransaction, asyncTaskExecutor);
    }

    /* JADX INFO: renamed from: io.realm.Realm$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes2.dex */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ boolean val$canDeliverNotification;
        final /* synthetic */ Transaction.OnError val$onError;
        final /* synthetic */ Transaction.OnSuccess val$onSuccess;
        final /* synthetic */ RealmConfiguration val$realmConfiguration;
        final /* synthetic */ RealmNotifier val$realmNotifier;
        final /* synthetic */ Transaction val$transaction;

        AnonymousClass1(RealmConfiguration realmConfiguration, Transaction transaction, boolean z, Transaction.OnSuccess onSuccess, RealmNotifier realmNotifier, Transaction.OnError onError) {
            this.val$realmConfiguration = realmConfiguration;
            this.val$transaction = transaction;
            this.val$canDeliverNotification = z;
            this.val$onSuccess = onSuccess;
            this.val$realmNotifier = realmNotifier;
            this.val$onError = onError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Thread.currentThread().isInterrupted()) {
                return;
            }
            OsSharedRealm.VersionID versionID = null;
            Throwable exception = null;
            Realm bgRealm = Realm.getInstance(this.val$realmConfiguration);
            bgRealm.beginTransaction();
            try {
                this.val$transaction.execute(bgRealm);
            } catch (Throwable e) {
                exception = e;
                try {
                    if (bgRealm.isInTransaction()) {
                        bgRealm.cancelTransaction();
                    }
                } finally {
                }
            }
            if (Thread.currentThread().isInterrupted()) {
                try {
                    if (bgRealm.isInTransaction()) {
                        bgRealm.cancelTransaction();
                    }
                    return;
                } finally {
                }
            }
            bgRealm.commitTransaction();
            versionID = bgRealm.sharedRealm.getVersionID();
            try {
                if (bgRealm.isInTransaction()) {
                    bgRealm.cancelTransaction();
                }
                bgRealm.close();
                final Throwable backgroundException = exception;
                final OsSharedRealm.VersionID backgroundVersionID = versionID;
                if (!this.val$canDeliverNotification) {
                    if (backgroundException != null) {
                        throw new RealmException("Async transaction failed", backgroundException);
                    }
                } else if (backgroundVersionID != null && this.val$onSuccess != null) {
                    this.val$realmNotifier.post(new Runnable() { // from class: io.realm.Realm.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (Realm.this.isClosed()) {
                                AnonymousClass1.this.val$onSuccess.onSuccess();
                            } else if (Realm.this.sharedRealm.getVersionID().compareTo(backgroundVersionID) < 0) {
                                Realm.this.sharedRealm.realmNotifier.addTransactionCallback(new Runnable() { // from class: io.realm.Realm.1.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        AnonymousClass1.this.val$onSuccess.onSuccess();
                                    }
                                });
                            } else {
                                AnonymousClass1.this.val$onSuccess.onSuccess();
                            }
                        }
                    });
                } else if (backgroundException != null) {
                    this.val$realmNotifier.post(new Runnable() { // from class: io.realm.Realm.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (AnonymousClass1.this.val$onError != null) {
                                AnonymousClass1.this.val$onError.onError(backgroundException);
                                return;
                            }
                            throw new RealmException("Async transaction failed", backgroundException);
                        }
                    });
                }
            } finally {
            }
        }
    }

    public void delete(Class<? extends RealmModel> clazz) {
        checkIfValid();
        if (this.sharedRealm.isPartial()) {
            throw new IllegalStateException("This API is not supported by partially synchronized Realms. Either unsubscribe using 'Realm.unsubscribeAsync()' or delete the objects using a query and 'RealmResults.deleteAllFromRealm()'");
        }
        this.schema.getTable(clazz).clear(this.sharedRealm.isPartial());
    }

    private <E extends RealmModel> E copyOrUpdate(E e, boolean z, Map<RealmModel, RealmObjectProxy> map) {
        checkIfValid();
        return (E) this.configuration.getSchemaMediator().copyOrUpdate(this, e, z, map);
    }

    private <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        checkIfValid();
        return (E) this.configuration.getSchemaMediator().createDetachedCopy(e, i, map);
    }

    private <E extends RealmModel> void checkNotNullObject(E object) {
        if (object == null) {
            throw new IllegalArgumentException("Null objects cannot be copied into Realm.");
        }
    }

    private void checkHasPrimaryKey(Class<? extends RealmModel> clazz) {
        String className = this.configuration.getSchemaMediator().getSimpleClassName(clazz);
        OsObjectSchemaInfo objectSchemaInfo = this.sharedRealm.getSchemaInfo().getObjectSchemaInfo(className);
        if (objectSchemaInfo.getPrimaryKeyProperty() == null) {
            throw new IllegalArgumentException("A RealmObject with no @PrimaryKey cannot be updated: " + clazz.toString());
        }
    }

    private void checkMaxDepth(int maxDepth) {
        if (maxDepth < 0) {
            throw new IllegalArgumentException("maxDepth must be > 0. It was: " + maxDepth);
        }
    }

    private <E extends RealmModel> void checkValidObjectForDetach(E realmObject) {
        if (realmObject == null) {
            throw new IllegalArgumentException("Null objects cannot be copied from Realm.");
        }
        if (!RealmObject.isManaged(realmObject) || !RealmObject.isValid(realmObject)) {
            throw new IllegalArgumentException("Only valid managed objects can be copied from Realm.");
        }
        if (realmObject instanceof DynamicRealmObject) {
            throw new IllegalArgumentException("DynamicRealmObject cannot be copied from Realm.");
        }
    }

    public static void migrateRealm(RealmConfiguration configuration) throws FileNotFoundException {
        migrateRealm(configuration, null);
    }

    public static void migrateRealm(RealmConfiguration configuration, @Nullable RealmMigration migration) throws FileNotFoundException {
        BaseRealm.migrateRealm(configuration, migration);
    }

    public static boolean deleteRealm(RealmConfiguration configuration) {
        return BaseRealm.deleteRealm(configuration);
    }

    public static boolean compactRealm(RealmConfiguration configuration) {
        if (configuration.isSyncConfiguration()) {
            throw new UnsupportedOperationException("Compacting is not supported yet on synced Realms. See https://github.com/realm/realm-core/issues/2345");
        }
        return BaseRealm.compactRealm(configuration);
    }

    public RealmAsyncTask unsubscribeAsync(final String subscriptionName, final UnsubscribeCallback callback) {
        if (Util.isEmptyString(subscriptionName)) {
            throw new IllegalArgumentException("Non-empty 'subscriptionName' required.");
        }
        if (callback == null) {
            throw new IllegalArgumentException("'callback' required.");
        }
        this.sharedRealm.capabilities.checkCanDeliverNotification("This method is only available from a Looper thread.");
        if (!ObjectServerFacade.getSyncFacadeIfPossible().isPartialRealm(this.configuration)) {
            throw new UnsupportedOperationException("Realm is not a partially synchronized Realm: " + this.configuration.getPath());
        }
        return executeTransactionAsync(new Transaction() { // from class: io.realm.Realm.2
            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm) {
                Table table = realm.sharedRealm.getTable("class___ResultSets");
                TableQuery query = table.where().equalTo(new long[]{table.getColumnIndex("name")}, new long[]{0}, subscriptionName);
                OsResults result = OsResults.createFromQuery(realm.sharedRealm, query);
                long count = result.size();
                if (count == 0) {
                    throw new IllegalArgumentException("No active subscription named '" + subscriptionName + "' exists.");
                }
                if (count > 1) {
                    RealmLog.warn("Multiple subscriptions named '" + subscriptionName + "' exists. This should not be possible. They will all be deleted", new Object[0]);
                }
                result.clear();
            }
        }, new Transaction.OnSuccess() { // from class: io.realm.Realm.3
            @Override // io.realm.Realm.Transaction.OnSuccess
            public void onSuccess() {
                callback.onSuccess(subscriptionName);
            }
        }, new Transaction.OnError() { // from class: io.realm.Realm.4
            @Override // io.realm.Realm.Transaction.OnError
            public void onError(Throwable error) {
                callback.onError(subscriptionName, error);
            }
        });
    }

    @io.realm.internal.annotations.ObjectServer
    public RealmPermissions getPermissions() {
        checkIfValid();
        return (RealmPermissions) where(RealmPermissions.class).findFirst();
    }

    @io.realm.internal.annotations.ObjectServer
    public RealmResults<Role> getRoles() {
        checkIfValid();
        return where(Role.class).sort("name").findAll();
    }

    @io.realm.internal.annotations.ObjectServer
    public ClassPrivileges getPrivileges(Class<? extends RealmModel> clazz) {
        checkIfValid();
        if (clazz == null) {
            throw new IllegalArgumentException("Non-null 'clazz' required.");
        }
        String className = this.configuration.getSchemaMediator().getSimpleClassName(clazz);
        return new ClassPrivileges(this.sharedRealm.getClassPrivileges(className));
    }

    @io.realm.internal.annotations.ObjectServer
    public ClassPermissions getPermissions(Class<? extends RealmModel> clazz) {
        checkIfValid();
        if (clazz == null) {
            throw new IllegalArgumentException("Non-null 'clazz' required.");
        }
        return (ClassPermissions) where(ClassPermissions.class).equalTo("name", this.configuration.getSchemaMediator().getSimpleClassName(clazz)).findFirst();
    }

    Table getTable(Class<? extends RealmModel> clazz) {
        return this.schema.getTable(clazz);
    }

    @Nullable
    public static Object getDefaultModule() {
        try {
            Class<?> clazz = Class.forName("io.realm.DefaultRealmModule");
            Constructor<?> constructor = clazz.getDeclaredConstructors()[0];
            constructor.setAccessible(true);
            return constructor.newInstance(new Object[0]);
        } catch (ClassNotFoundException e) {
            return null;
        } catch (IllegalAccessException e2) {
            throw new RealmException("Could not create an instance of io.realm.DefaultRealmModule", e2);
        } catch (InstantiationException e3) {
            throw new RealmException("Could not create an instance of io.realm.DefaultRealmModule", e3);
        } catch (InvocationTargetException e4) {
            throw new RealmException("Could not create an instance of io.realm.DefaultRealmModule", e4);
        }
    }

    public static int getGlobalInstanceCount(RealmConfiguration configuration) {
        final AtomicInteger globalCount = new AtomicInteger(0);
        RealmCache.invokeWithGlobalRefCount(configuration, new RealmCache.Callback() { // from class: io.realm.Realm.5
            @Override // io.realm.RealmCache.Callback
            public void onResult(int count) {
                globalCount.set(count);
            }
        });
        return globalCount.get();
    }

    public static int getLocalInstanceCount(RealmConfiguration configuration) {
        return RealmCache.getLocalThreadCount(configuration);
    }

    /* JADX INFO: loaded from: classes2.dex */
    public interface Transaction {

        public interface OnError {
            void onError(Throwable th);
        }

        public interface OnSuccess {
            void onSuccess();
        }

        void execute(Realm realm);

        public static class Callback {
            public void onSuccess() {
            }

            public void onError(Exception ignore) {
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static abstract class Callback extends BaseRealm.InstanceCallback<Realm> {
        @Override // io.realm.BaseRealm.InstanceCallback
        public abstract void onSuccess(Realm realm);

        @Override // io.realm.BaseRealm.InstanceCallback
        public void onError(Throwable exception) {
            super.onError(exception);
        }
    }
}
