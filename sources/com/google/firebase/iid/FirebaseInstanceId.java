package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Looper;
import android.support.annotation.Keep;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.DataCollectionDefaultChange;
import com.google.firebase.FirebaseApp;
import com.google.firebase.events.Event;
import com.google.firebase.events.EventHandler;
import com.google.firebase.events.Subscriber;
import com.google.firebase.iid.FirebaseInstanceId;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes2.dex */
public class FirebaseInstanceId {
    private static final long zzai = TimeUnit.HOURS.toSeconds(8);
    private static zzaw zzaj;

    @VisibleForTesting
    @GuardedBy("FirebaseInstanceId.class")
    private static ScheduledThreadPoolExecutor zzak;
    private final Executor zzal;
    private final FirebaseApp zzam;
    private final zzan zzan;
    private MessagingChannel zzao;
    private final zzaq zzap;
    private final zzba zzaq;

    @GuardedBy("this")
    private boolean zzar;
    private final zza zzas;

    public static FirebaseInstanceId getInstance() {
        return getInstance(FirebaseApp.getInstance());
    }

    @Keep
    public static FirebaseInstanceId getInstance(@NonNull FirebaseApp firebaseApp) {
        return (FirebaseInstanceId) firebaseApp.get(FirebaseInstanceId.class);
    }

    FirebaseInstanceId(FirebaseApp firebaseApp, Subscriber subscriber) {
        this(firebaseApp, new zzan(firebaseApp.getApplicationContext()), zzi.zzf(), zzi.zzf(), subscriber);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class zza {
        private final Subscriber zzba;

        @GuardedBy("this")
        @Nullable
        private EventHandler<DataCollectionDefaultChange> zzbb;
        private final boolean zzaz = zzu();

        @GuardedBy("this")
        @Nullable
        private Boolean zzbc = zzt();

        zza(Subscriber subscriber) {
            this.zzba = subscriber;
            if (this.zzbc == null && this.zzaz) {
                this.zzbb = new EventHandler(this) { // from class: com.google.firebase.iid.zzq
                    private final FirebaseInstanceId.zza zzbe;

                    {
                        this.zzbe = this;
                    }

                    @Override // com.google.firebase.events.EventHandler
                    public final void handle(Event event) {
                        FirebaseInstanceId.zza zzaVar = this.zzbe;
                        synchronized (zzaVar) {
                            if (zzaVar.isEnabled()) {
                                FirebaseInstanceId.this.zzg();
                            }
                        }
                    }
                };
                subscriber.subscribe(DataCollectionDefaultChange.class, this.zzbb);
            }
        }

        final synchronized boolean isEnabled() {
            if (this.zzbc != null) {
                return this.zzbc.booleanValue();
            }
            return this.zzaz && FirebaseInstanceId.this.zzam.isDataCollectionDefaultEnabled();
        }

        final synchronized void setEnabled(boolean z) {
            if (this.zzbb != null) {
                this.zzba.unsubscribe(DataCollectionDefaultChange.class, this.zzbb);
                this.zzbb = null;
            }
            SharedPreferences.Editor editorEdit = FirebaseInstanceId.this.zzam.getApplicationContext().getSharedPreferences("com.google.firebase.messaging", 0).edit();
            editorEdit.putBoolean("auto_init", z);
            editorEdit.apply();
            if (z) {
                FirebaseInstanceId.this.zzg();
            }
            this.zzbc = Boolean.valueOf(z);
        }

        @Nullable
        private final Boolean zzt() {
            ApplicationInfo applicationInfo;
            Context applicationContext = FirebaseInstanceId.this.zzam.getApplicationContext();
            SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = applicationContext.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128)) != null && applicationInfo.metaData != null && applicationInfo.metaData.containsKey("firebase_messaging_auto_init_enabled")) {
                    return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
                }
                return null;
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        }

        private final boolean zzu() {
            try {
                Class.forName("com.google.firebase.messaging.FirebaseMessaging");
                return true;
            } catch (ClassNotFoundException e) {
                Context applicationContext = FirebaseInstanceId.this.zzam.getApplicationContext();
                Intent intent = new Intent("com.google.firebase.MESSAGING_EVENT");
                intent.setPackage(applicationContext.getPackageName());
                ResolveInfo resolveInfoResolveService = applicationContext.getPackageManager().resolveService(intent, 0);
                return (resolveInfoResolveService == null || resolveInfoResolveService.serviceInfo == null) ? false : true;
            }
        }
    }

    private FirebaseInstanceId(FirebaseApp firebaseApp, zzan zzanVar, Executor executor, Executor executor2, Subscriber subscriber) {
        this.zzar = false;
        if (zzan.zza(firebaseApp) == null) {
            throw new IllegalStateException("FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID");
        }
        synchronized (FirebaseInstanceId.class) {
            if (zzaj == null) {
                zzaj = new zzaw(firebaseApp.getApplicationContext());
            }
        }
        this.zzam = firebaseApp;
        this.zzan = zzanVar;
        if (this.zzao == null) {
            MessagingChannel messagingChannel = (MessagingChannel) firebaseApp.get(MessagingChannel.class);
            if (messagingChannel != null && messagingChannel.isAvailable()) {
                this.zzao = messagingChannel;
            } else {
                this.zzao = new zzr(firebaseApp, zzanVar, executor);
            }
        }
        this.zzao = this.zzao;
        this.zzal = executor2;
        this.zzaq = new zzba(zzaj);
        this.zzas = new zza(subscriber);
        this.zzap = new zzaq(executor);
        if (this.zzas.isEnabled()) {
            zzg();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzg() {
        zzax zzaxVarZzj = zzj();
        if (!zzo() || zzaxVarZzj == null || zzaxVarZzj.zzj(this.zzan.zzad()) || this.zzaq.zzaq()) {
            startSync();
        }
    }

    final FirebaseApp zzh() {
        return this.zzam;
    }

    final synchronized void zza(boolean z) {
        this.zzar = z;
    }

    private final synchronized void startSync() {
        if (!this.zzar) {
            zza(0L);
        }
    }

    final synchronized void zza(long j) {
        zza(new zzay(this, this.zzan, this.zzaq, Math.min(Math.max(30L, j << 1), zzai)), j);
        this.zzar = true;
    }

    static void zza(Runnable runnable, long j) {
        synchronized (FirebaseInstanceId.class) {
            if (zzak == null) {
                zzak = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("FirebaseInstanceId"));
            }
            zzak.schedule(runnable, j, TimeUnit.SECONDS);
        }
    }

    @WorkerThread
    public String getId() {
        zzg();
        return zzi();
    }

    private static String zzi() {
        return zzan.zza(zzaj.zzg("").getKeyPair());
    }

    public long getCreationTime() {
        return zzaj.zzg("").getCreationTime();
    }

    @NonNull
    public Task<InstanceIdResult> getInstanceId() {
        return zza(zzan.zza(this.zzam), "*");
    }

    private final Task<InstanceIdResult> zza(final String str, final String str2) {
        final String strZzd = zzd(str2);
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.zzal.execute(new Runnable(this, str, str2, taskCompletionSource, strZzd) { // from class: com.google.firebase.iid.zzn
            private final FirebaseInstanceId zzat;
            private final String zzau;
            private final String zzav;
            private final TaskCompletionSource zzaw;
            private final String zzax;

            {
                this.zzat = this;
                this.zzau = str;
                this.zzav = str2;
                this.zzaw = taskCompletionSource;
                this.zzax = strZzd;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzat.zza(this.zzau, this.zzav, this.zzaw, this.zzax);
            }
        });
        return taskCompletionSource.getTask();
    }

    @WorkerThread
    public void deleteInstanceId() throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        zza(this.zzao.deleteInstanceId(zzi()));
        zzm();
    }

    @Nullable
    @Deprecated
    public String getToken() {
        zzax zzaxVarZzj = zzj();
        if (zzaxVarZzj == null || zzaxVarZzj.zzj(this.zzan.zzad())) {
            startSync();
        }
        if (zzaxVarZzj != null) {
            return zzaxVarZzj.zzbq;
        }
        return null;
    }

    @Nullable
    final zzax zzj() {
        return zzb(zzan.zza(this.zzam), "*");
    }

    @VisibleForTesting
    @Nullable
    private static zzax zzb(String str, String str2) {
        return zzaj.zzb("", str, str2);
    }

    final String zzk() throws IOException {
        return getToken(zzan.zza(this.zzam), "*");
    }

    @WorkerThread
    public String getToken(String str, String str2) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        return ((InstanceIdResult) zza(zza(str, str2))).getToken();
    }

    private final <T> T zza(Task<T> task) throws IOException {
        try {
            return (T) Tasks.await(task, 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | TimeoutException e) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                if ("INSTANCE_ID_RESET".equals(cause.getMessage())) {
                    zzm();
                }
                throw ((IOException) cause);
            }
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new IOException(e2);
        }
    }

    @WorkerThread
    public void deleteToken(String str, String str2) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        String strZzd = zzd(str2);
        zza(this.zzao.deleteToken(zzi(), zzax.zza(zzb(str, strZzd)), str, strZzd));
        zzaj.zzc("", str, strZzd);
    }

    public final synchronized Task<Void> zza(String str) {
        Task<Void> taskZza;
        taskZza = this.zzaq.zza(str);
        startSync();
        return taskZza;
    }

    final void zzb(String str) throws IOException {
        zzax zzaxVarZzj = zzj();
        if (zzaxVarZzj == null || zzaxVarZzj.zzj(this.zzan.zzad())) {
            throw new IOException("token not available");
        }
        zza(this.zzao.subscribeToTopic(zzi(), zzaxVarZzj.zzbq, str));
    }

    final void zzc(String str) throws IOException {
        zzax zzaxVarZzj = zzj();
        if (zzaxVarZzj == null || zzaxVarZzj.zzj(this.zzan.zzad())) {
            throw new IOException("token not available");
        }
        zza(this.zzao.unsubscribeFromTopic(zzi(), zzaxVarZzj.zzbq, str));
    }

    static boolean zzl() {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            return true;
        }
        return Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseInstanceId", 3);
    }

    final synchronized void zzm() {
        zzaj.zzal();
        if (this.zzas.isEnabled()) {
            startSync();
        }
    }

    final boolean zzn() {
        return this.zzao.isAvailable();
    }

    final boolean zzo() {
        return this.zzao.isChannelBuilt();
    }

    final void zzp() throws IOException {
        zza(this.zzao.buildChannel(zzi(), zzax.zza(zzj())));
    }

    final void zzq() {
        zzaj.zzh("");
        startSync();
    }

    @VisibleForTesting
    public final boolean zzr() {
        return this.zzas.isEnabled();
    }

    @VisibleForTesting
    public final void zzb(boolean z) {
        this.zzas.setEnabled(z);
    }

    private static String zzd(String str) {
        if (str.isEmpty() || str.equalsIgnoreCase(AppMeasurement.FCM_ORIGIN) || str.equalsIgnoreCase(GoogleCloudMessaging.MESSAGE_TYPE_MESSAGE)) {
            return "*";
        }
        return str;
    }

    final /* synthetic */ void zza(final String str, String str2, final TaskCompletionSource taskCompletionSource, final String str3) {
        final String strZzi = zzi();
        zzax zzaxVarZzb = zzb(str, str2);
        if (zzaxVarZzb != null && !zzaxVarZzb.zzj(this.zzan.zzad())) {
            taskCompletionSource.setResult(new zzx(strZzi, zzaxVarZzb.zzbq));
        } else {
            final String strZza = zzax.zza(zzaxVarZzb);
            this.zzap.zza(str, str3, new zzas(this, strZzi, strZza, str, str3) { // from class: com.google.firebase.iid.zzo
                private final FirebaseInstanceId zzat;
                private final String zzau;
                private final String zzav;
                private final String zzax;
                private final String zzay;

                {
                    this.zzat = this;
                    this.zzau = strZzi;
                    this.zzav = strZza;
                    this.zzay = str;
                    this.zzax = str3;
                }

                @Override // com.google.firebase.iid.zzas
                public final Task zzs() {
                    return this.zzat.zza(this.zzau, this.zzav, this.zzay, this.zzax);
                }
            }).addOnCompleteListener(this.zzal, new OnCompleteListener(this, str, str3, taskCompletionSource, strZzi) { // from class: com.google.firebase.iid.zzp
                private final FirebaseInstanceId zzat;
                private final String zzau;
                private final String zzav;
                private final TaskCompletionSource zzaw;
                private final String zzax;

                {
                    this.zzat = this;
                    this.zzau = str;
                    this.zzav = str3;
                    this.zzaw = taskCompletionSource;
                    this.zzax = strZzi;
                }

                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    this.zzat.zza(this.zzau, this.zzav, this.zzaw, this.zzax, task);
                }
            });
        }
    }

    final /* synthetic */ void zza(String str, String str2, TaskCompletionSource taskCompletionSource, String str3, Task task) {
        if (task.isSuccessful()) {
            String str4 = (String) task.getResult();
            zzaj.zza("", str, str2, str4, this.zzan.zzad());
            taskCompletionSource.setResult(new zzx(str3, str4));
            return;
        }
        taskCompletionSource.setException(task.getException());
    }

    final /* synthetic */ Task zza(String str, String str2, String str3, String str4) {
        return this.zzao.getToken(str, str2, str3, str4);
    }
}
