package com.google.firebase;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.UiThread;
import android.support.annotation.VisibleForTesting;
import android.support.v4.content.ContextCompat;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.annotations.PublicApi;
import com.google.firebase.auth.GetTokenResult;
import com.google.firebase.components.Component;
import com.google.firebase.components.zzf;
import com.google.firebase.events.Event;
import com.google.firebase.events.Publisher;
import com.google.firebase.internal.InternalTokenProvider;
import com.google.firebase.internal.InternalTokenResult;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.firebase:firebase-common@@16.0.2 */
/* JADX INFO: loaded from: classes2.dex */
@PublicApi
public class FirebaseApp {
    private final Context zzi;
    private final String zzj;
    private final FirebaseOptions zzk;
    private final zzf zzl;
    private final SharedPreferences zzm;
    private final Publisher zzn;
    private InternalTokenProvider zzu;
    private static final List<String> zzb = Arrays.asList("com.google.firebase.auth.FirebaseAuth", "com.google.firebase.iid.FirebaseInstanceId");
    private static final List<String> zzc = Collections.singletonList("com.google.firebase.crash.FirebaseCrash");
    private static final List<String> zzd = Arrays.asList("com.google.android.gms.measurement.AppMeasurement");
    private static final List<String> zze = Arrays.asList(new String[0]);
    private static final Set<String> zzf = Collections.emptySet();
    private static final Object zzg = new Object();
    private static final Executor zzh = new zzb(0);

    @GuardedBy("LOCK")
    static final Map<String, FirebaseApp> zza = new ArrayMap();
    private final AtomicBoolean zzo = new AtomicBoolean(false);
    private final AtomicBoolean zzp = new AtomicBoolean();
    private final List<IdTokenListener> zzr = new CopyOnWriteArrayList();
    private final List<BackgroundStateChangeListener> zzs = new CopyOnWriteArrayList();
    private final List<FirebaseAppLifecycleListener> zzt = new CopyOnWriteArrayList();
    private IdTokenListenersCountChangedListener zzv = new com.google.firebase.internal.zza();
    private final AtomicBoolean zzq = new AtomicBoolean(zzb());

    /* JADX INFO: compiled from: com.google.firebase:firebase-common@@16.0.2 */
    @KeepForSdk
    public interface BackgroundStateChangeListener {
        @KeepForSdk
        void onBackgroundStateChanged(boolean z);
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-common@@16.0.2 */
    @KeepForSdk
    @Deprecated
    public interface IdTokenListener {
        @KeepForSdk
        void onIdTokenChanged(@NonNull InternalTokenResult internalTokenResult);
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-common@@16.0.2 */
    @KeepForSdk
    @Deprecated
    public interface IdTokenListenersCountChangedListener {
        @KeepForSdk
        void onListenerCountChanged(int i);
    }

    @NonNull
    @PublicApi
    public Context getApplicationContext() {
        zzc();
        return this.zzi;
    }

    @NonNull
    @PublicApi
    public String getName() {
        zzc();
        return this.zzj;
    }

    @NonNull
    @PublicApi
    public FirebaseOptions getOptions() {
        zzc();
        return this.zzk;
    }

    public boolean equals(Object o) {
        if (o instanceof FirebaseApp) {
            return this.zzj.equals(((FirebaseApp) o).getName());
        }
        return false;
    }

    public int hashCode() {
        return this.zzj.hashCode();
    }

    public String toString() {
        return Objects.toStringHelper(this).add("name", this.zzj).add("options", this.zzk).toString();
    }

    @PublicApi
    public static List<FirebaseApp> getApps(Context context) {
        ArrayList arrayList;
        synchronized (zzg) {
            arrayList = new ArrayList(zza.values());
        }
        return arrayList;
    }

    @Nullable
    @PublicApi
    public static FirebaseApp getInstance() {
        FirebaseApp firebaseApp;
        synchronized (zzg) {
            firebaseApp = zza.get("[DEFAULT]");
            if (firebaseApp == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + ProcessUtils.getMyProcessName() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return firebaseApp;
    }

    @PublicApi
    public static FirebaseApp getInstance(@NonNull String name) {
        FirebaseApp firebaseApp;
        String str;
        synchronized (zzg) {
            firebaseApp = zza.get(name.trim());
            if (firebaseApp == null) {
                List<String> listZzd = zzd();
                if (listZzd.isEmpty()) {
                    str = "";
                } else {
                    str = "Available app names: " + TextUtils.join(", ", listZzd);
                }
                throw new IllegalStateException(String.format("FirebaseApp with name %s doesn't exist. %s", name, str));
            }
        }
        return firebaseApp;
    }

    @Nullable
    @PublicApi
    public static FirebaseApp initializeApp(Context context) {
        synchronized (zzg) {
            if (zza.containsKey("[DEFAULT]")) {
                return getInstance();
            }
            FirebaseOptions firebaseOptionsFromResource = FirebaseOptions.fromResource(context);
            if (firebaseOptionsFromResource == null) {
                Log.d("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                return null;
            }
            return initializeApp(context, firebaseOptionsFromResource);
        }
    }

    @PublicApi
    public static FirebaseApp initializeApp(Context context, FirebaseOptions options) {
        return initializeApp(context, options, "[DEFAULT]");
    }

    @PublicApi
    public static FirebaseApp initializeApp(Context context, FirebaseOptions options, String name) {
        FirebaseApp firebaseApp;
        zza.zza(context);
        String name2 = name.trim();
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (zzg) {
            Preconditions.checkState(!zza.containsKey(name2), "FirebaseApp name " + name2 + " already exists!");
            Preconditions.checkNotNull(context, "Application context cannot be null.");
            firebaseApp = new FirebaseApp(context, name2, options);
            zza.put(name2, firebaseApp);
        }
        firebaseApp.zze();
        return firebaseApp;
    }

    @KeepForSdk
    @Deprecated
    public void setTokenProvider(@NonNull InternalTokenProvider tokenProvider) {
        this.zzu = (InternalTokenProvider) Preconditions.checkNotNull(tokenProvider);
    }

    @KeepForSdk
    @Deprecated
    public void setIdTokenListenersCountChangedListener(@NonNull IdTokenListenersCountChangedListener listener) {
        this.zzv = (IdTokenListenersCountChangedListener) Preconditions.checkNotNull(listener);
        this.zzv.onListenerCountChanged(this.zzr.size());
    }

    @KeepForSdk
    @Deprecated
    public Task<GetTokenResult> getToken(boolean forceRefresh) {
        zzc();
        return this.zzu == null ? Tasks.forException(new FirebaseApiNotAvailableException("firebase-auth is not linked, please fall back to unauthenticated mode.")) : this.zzu.getAccessToken(forceRefresh);
    }

    @KeepForSdk
    @Nullable
    @Deprecated
    public String getUid() throws FirebaseApiNotAvailableException {
        zzc();
        if (this.zzu == null) {
            throw new FirebaseApiNotAvailableException("firebase-auth is not linked, please fall back to unauthenticated mode.");
        }
        return this.zzu.getUid();
    }

    @PublicApi
    public void delete() {
        if (!this.zzp.compareAndSet(false, true)) {
            return;
        }
        synchronized (zzg) {
            zza.remove(this.zzj);
        }
        Iterator<FirebaseAppLifecycleListener> it = this.zzt.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    @KeepForSdk
    public <T> T get(Class<T> cls) {
        zzc();
        return (T) this.zzl.get(cls);
    }

    @PublicApi
    public void setAutomaticResourceManagementEnabled(boolean enabled) {
        zzc();
        if (this.zzo.compareAndSet(!enabled, enabled)) {
            boolean zIsInBackground = BackgroundDetector.getInstance().isInBackground();
            if (enabled && zIsInBackground) {
                zza(true);
            } else {
                if (enabled || !zIsInBackground) {
                    return;
                }
                zza(false);
            }
        }
    }

    @KeepForSdk
    public boolean isDataCollectionDefaultEnabled() {
        zzc();
        return this.zzq.get();
    }

    @KeepForSdk
    public void setDataCollectionDefaultEnabled(boolean enabled) {
        zzc();
        if (this.zzq.compareAndSet(!enabled, enabled)) {
            this.zzm.edit().putBoolean("firebase_data_collection_default_enabled", enabled).commit();
            this.zzn.publish(new Event<>(DataCollectionDefaultChange.class, new DataCollectionDefaultChange(enabled)));
        }
    }

    private FirebaseApp(Context applicationContext, String name, FirebaseOptions options) {
        this.zzi = (Context) Preconditions.checkNotNull(applicationContext);
        this.zzj = Preconditions.checkNotEmpty(name);
        this.zzk = (FirebaseOptions) Preconditions.checkNotNull(options);
        this.zzm = applicationContext.getSharedPreferences("com.google.firebase.common.prefs", 0);
        this.zzl = new zzf(zzh, Component.AnonymousClass1.zza(applicationContext).zza(), Component.of(applicationContext, Context.class, new Class[0]), Component.of(this, FirebaseApp.class, new Class[0]), Component.of(options, FirebaseOptions.class, new Class[0]));
        this.zzn = (Publisher) this.zzl.get(Publisher.class);
    }

    private boolean zzb() {
        ApplicationInfo applicationInfo;
        if (this.zzm.contains("firebase_data_collection_default_enabled")) {
            return this.zzm.getBoolean("firebase_data_collection_default_enabled", true);
        }
        try {
            PackageManager packageManager = this.zzi.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(this.zzi.getPackageName(), 128)) != null && applicationInfo.metaData != null && applicationInfo.metaData.containsKey("firebase_data_collection_default_enabled")) {
                return applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return true;
    }

    private void zzc() {
        Preconditions.checkState(!this.zzp.get(), "FirebaseApp was deleted");
    }

    @KeepForSdk
    @Deprecated
    public List<IdTokenListener> getListeners() {
        zzc();
        return this.zzr;
    }

    @VisibleForTesting
    @KeepForSdk
    public boolean isDefaultApp() {
        return "[DEFAULT]".equals(getName());
    }

    @UiThread
    @KeepForSdk
    @Deprecated
    public void notifyIdTokenListeners(@NonNull InternalTokenResult tokenResult) {
        Log.d("FirebaseApp", "Notifying auth state listeners.");
        Iterator<IdTokenListener> it = this.zzr.iterator();
        int i = 0;
        while (it.hasNext()) {
            it.next().onIdTokenChanged(tokenResult);
            i++;
        }
        Log.d("FirebaseApp", String.format("Notified %d auth state listeners.", Integer.valueOf(i)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(boolean z) {
        Log.d("FirebaseApp", "Notifying background state change listeners.");
        Iterator<BackgroundStateChangeListener> it = this.zzs.iterator();
        while (it.hasNext()) {
            it.next().onBackgroundStateChanged(z);
        }
    }

    @KeepForSdk
    @Deprecated
    public void addIdTokenListener(@NonNull IdTokenListener listener) {
        zzc();
        Preconditions.checkNotNull(listener);
        this.zzr.add(listener);
        this.zzv.onListenerCountChanged(this.zzr.size());
    }

    @KeepForSdk
    @Deprecated
    public void removeIdTokenListener(@NonNull IdTokenListener listenerToRemove) {
        zzc();
        Preconditions.checkNotNull(listenerToRemove);
        this.zzr.remove(listenerToRemove);
        this.zzv.onListenerCountChanged(this.zzr.size());
    }

    @KeepForSdk
    public void addBackgroundStateChangeListener(BackgroundStateChangeListener listener) {
        zzc();
        if (this.zzo.get() && BackgroundDetector.getInstance().isInBackground()) {
            listener.onBackgroundStateChanged(true);
        }
        this.zzs.add(listener);
    }

    @KeepForSdk
    public void removeBackgroundStateChangeListener(BackgroundStateChangeListener listener) {
        zzc();
        this.zzs.remove(listener);
    }

    @KeepForSdk
    public String getPersistenceKey() {
        return Base64Utils.encodeUrlSafeNoPadding(getName().getBytes(Charset.defaultCharset())) + "+" + Base64Utils.encodeUrlSafeNoPadding(getOptions().getApplicationId().getBytes(Charset.defaultCharset()));
    }

    @KeepForSdk
    public void addLifecycleEventListener(@NonNull FirebaseAppLifecycleListener listener) {
        zzc();
        Preconditions.checkNotNull(listener);
        this.zzt.add(listener);
    }

    @KeepForSdk
    public void removeLifecycleEventListener(@NonNull FirebaseAppLifecycleListener listener) {
        zzc();
        Preconditions.checkNotNull(listener);
        this.zzt.remove(listener);
    }

    @KeepForSdk
    public static String getPersistenceKey(String name, FirebaseOptions options) {
        return Base64Utils.encodeUrlSafeNoPadding(name.getBytes(Charset.defaultCharset())) + "+" + Base64Utils.encodeUrlSafeNoPadding(options.getApplicationId().getBytes(Charset.defaultCharset()));
    }

    private static List<String> zzd() {
        ArrayList arrayList = new ArrayList();
        synchronized (zzg) {
            Iterator<FirebaseApp> it = zza.values().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getName());
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zze() {
        boolean zIsDeviceProtectedStorage = ContextCompat.isDeviceProtectedStorage(this.zzi);
        if (zIsDeviceProtectedStorage) {
            zzc.zza(this.zzi);
        } else {
            this.zzl.zza(isDefaultApp());
        }
        zza(FirebaseApp.class, this, zzb, zIsDeviceProtectedStorage);
        if (isDefaultApp()) {
            zza(FirebaseApp.class, this, zzc, zIsDeviceProtectedStorage);
            zza(Context.class, this.zzi, zzd, zIsDeviceProtectedStorage);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> void zza(Class<T> cls, T t, Iterable<String> iterable, boolean z) {
        for (String str : iterable) {
            if (z) {
                try {
                } catch (ClassNotFoundException e) {
                    if (zzf.contains(str)) {
                        throw new IllegalStateException(str + " is missing, but is required. Check if it has been removed by Proguard.");
                    }
                    Log.d("FirebaseApp", str + " is not linked. Skipping initialization.");
                } catch (IllegalAccessException e2) {
                    Log.wtf("FirebaseApp", "Failed to initialize " + str, e2);
                } catch (NoSuchMethodException e3) {
                    throw new IllegalStateException(str + "#getInstance has been removed by Proguard. Add keep rule to prevent it.");
                } catch (InvocationTargetException e4) {
                    Log.wtf("FirebaseApp", "Firebase API initialization failure.", e4);
                }
                if (zze.contains(str)) {
                }
            }
            Method method = Class.forName(str).getMethod("getInstance", cls);
            int modifiers = method.getModifiers();
            if (Modifier.isPublic(modifiers) && Modifier.isStatic(modifiers)) {
                method.invoke(null, t);
            }
        }
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-common@@16.0.2 */
    @TargetApi(24)
    static class zzc extends BroadcastReceiver {
        private static AtomicReference<zzc> zza = new AtomicReference<>();
        private final Context zzb;

        static /* synthetic */ void zza(Context context) {
            if (zza.get() != null) {
                return;
            }
            zzc zzcVar = new zzc(context);
            if (!zza.compareAndSet(null, zzcVar)) {
                return;
            }
            context.registerReceiver(zzcVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
        }

        private zzc(Context context) {
            this.zzb = context;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            synchronized (FirebaseApp.zzg) {
                Iterator<FirebaseApp> it = FirebaseApp.zza.values().iterator();
                while (it.hasNext()) {
                    it.next().zze();
                }
            }
            this.zzb.unregisterReceiver(this);
        }
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-common@@16.0.2 */
    @TargetApi(14)
    static class zza implements BackgroundDetector.BackgroundStateChangeListener {
        private static AtomicReference<zza> zza = new AtomicReference<>();

        private zza() {
        }

        static /* synthetic */ void zza(Context context) {
            if (!PlatformVersion.isAtLeastIceCreamSandwich() || !(context.getApplicationContext() instanceof Application)) {
                return;
            }
            Application application = (Application) context.getApplicationContext();
            if (zza.get() != null) {
                return;
            }
            zza zzaVar = new zza();
            if (!zza.compareAndSet(null, zzaVar)) {
                return;
            }
            BackgroundDetector.initialize(application);
            BackgroundDetector.getInstance().addListener(zzaVar);
        }

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public final void onBackgroundStateChanged(boolean background) {
            synchronized (FirebaseApp.zzg) {
                for (FirebaseApp firebaseApp : new ArrayList(FirebaseApp.zza.values())) {
                    if (firebaseApp.zzo.get()) {
                        firebaseApp.zza(background);
                    }
                }
            }
        }
    }

    /* JADX INFO: compiled from: com.google.firebase:firebase-common@@16.0.2 */
    static class zzb implements Executor {
        private static final Handler zza = new Handler(Looper.getMainLooper());

        private zzb() {
        }

        /* synthetic */ zzb(byte b) {
            this();
        }

        @Override // java.util.concurrent.Executor
        public final void execute(@NonNull Runnable command) {
            zza.post(command);
        }
    }
}
