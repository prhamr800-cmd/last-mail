###### Class com.google.firebase.iid.zzat (com.google.firebase.iid.zzat)
.class final Lcom/google/firebase/iid/zzat;
.super Ljava/lang/Object;


# static fields
.field private static zzcf:I

.field private static zzcr:Landroid/app/PendingIntent;


# instance fields
.field private final zzan:Lcom/google/firebase/iid/zzan;

.field private final zzcs:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "responseCallbacks"
    .end annotation
.end field

.field private zzct:Landroid/os/Messenger;

.field private zzcu:Landroid/os/Messenger;

.field private zzcv:Lcom/google/firebase/iid/zzl;

.field private final zzx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 145
    const/4 v0, 0x0

    sput v0, Lcom/google/firebase/iid/zzat;->zzcf:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/iid/zzan;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzat;->zzcs:Landroid/support/v4/util/SimpleArrayMap;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/iid/zzat;->zzx:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/iid/zzat;->zzan:Lcom/google/firebase/iid/zzan;

    .line 5
    new-instance p1, Landroid/os/Messenger;

    new-instance p2, Lcom/google/firebase/iid/zzau;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/google/firebase/iid/zzau;-><init>(Lcom/google/firebase/iid/zzat;Landroid/os/Looper;)V

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/firebase/iid/zzat;->zzct:Landroid/os/Messenger;

    .line 7
    return-void
.end method

.method private static declared-synchronized zza(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-class v0, Lcom/google/firebase/iid/zzat;

    monitor-enter v0

    .line 64
    :try_start_3
    sget-object v1, Lcom/google/firebase/iid/zzat;->zzcr:Landroid/app/PendingIntent;

    if-nez v1, :cond_18

    .line 65
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 66
    const-string v2, "com.google.example.invalidpackage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    sput-object p0, Lcom/google/firebase/iid/zzat;->zzcr:Landroid/app/PendingIntent;

    .line 68
    :cond_18
    const-string p0, "app"

    sget-object v1, Lcom/google/firebase/iid/zzat;->zzcr:Landroid/app/PendingIntent;

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    .line 69
    monitor-exit v0

    return-void

    .line 63
    :catchall_21
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic zza(Lcom/google/firebase/iid/zzat;Landroid/os/Message;)V
    .registers 2

    .line 144
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzat;->zzb(Landroid/os/Message;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 70
    iget-object v0, p0, Lcom/google/firebase/iid/zzat;->zzcs:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v0

    .line 71
    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/iid/zzat;->zzcs:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 72
    if-nez v1, :cond_2a

    .line 73
    const-string p2, "FirebaseInstanceId"

    const-string v1, "Missing callback for "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    :cond_20
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_25
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    monitor-exit v0

    return-void

    .line 75
    :cond_2a
    invoke-virtual {v1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 76
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method private static declared-synchronized zzah()Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/google/firebase/iid/zzat;

    monitor-enter v0

    .line 97
    :try_start_3
    sget v1, Lcom/google/firebase/iid/zzat;->zzcf:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/google/firebase/iid/zzat;->zzcf:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final zzb(Landroid/os/Message;)V
    .registers 10

    .line 8
    if-eqz p1, :cond_197

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/content/Intent;

    if-eqz v0, :cond_197

    .line 9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 10
    new-instance v1, Lcom/google/firebase/iid/zzl$zza;

    invoke-direct {v1}, Lcom/google/firebase/iid/zzl$zza;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 11
    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 12
    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 13
    instance-of v1, v0, Lcom/google/firebase/iid/zzl;

    if-eqz v1, :cond_2b

    .line 14
    move-object v1, v0

    check-cast v1, Lcom/google/firebase/iid/zzl;

    iput-object v1, p0, Lcom/google/firebase/iid/zzat;->zzcv:Lcom/google/firebase/iid/zzl;

    .line 15
    :cond_2b
    instance-of v1, v0, Landroid/os/Messenger;

    if-eqz v1, :cond_33

    .line 16
    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/google/firebase/iid/zzat;->zzcu:Landroid/os/Messenger;

    .line 17
    :cond_33
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 18
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 19
    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_68

    .line 20
    const-string p1, "FirebaseInstanceId"

    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 21
    const-string p1, "FirebaseInstanceId"

    const-string v1, "Unexpected response action: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5f

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_64

    :cond_5f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_64
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_67
    return-void

    .line 23
    :cond_68
    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    if-nez v0, :cond_77

    .line 25
    const-string/jumbo v0, "unregistered"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    :cond_77
    const/4 v1, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_14e

    .line 27
    nop

    .line 28
    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    if-nez v0, :cond_ae

    .line 30
    const-string v0, "FirebaseInstanceId"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected response, no error or registration id "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    goto/16 :goto_19e

    .line 32
    :cond_ae
    const-string v4, "FirebaseInstanceId"

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 33
    const-string v4, "FirebaseInstanceId"

    const-string v5, "Received InstanceID error "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_c9

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_cf

    :cond_c9
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_cf
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_d2
    const-string/jumbo v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12b

    .line 35
    const-string v4, "\\|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 36
    array-length v5, v4

    if-le v5, v1, :cond_10e

    const-string v5, "ID"

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ef

    goto :goto_10e

    .line 39
    :cond_ef
    aget-object v0, v4, v1

    .line 40
    aget-object v1, v4, v2

    .line 41
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    :cond_ff
    const-string v2, "error"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/iid/zzat;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 44
    goto/16 :goto_19e

    .line 37
    :cond_10e
    :goto_10e
    const-string p1, "FirebaseInstanceId"

    const-string v1, "Unexpected structured response "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_121

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_126

    :cond_121
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_126
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    goto/16 :goto_19e

    .line 45
    :cond_12b
    iget-object v4, p0, Lcom/google/firebase/iid/zzat;->zzcs:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v4

    .line 46
    const/4 v0, 0x0

    :goto_12f
    :try_start_12f
    iget-object v1, p0, Lcom/google/firebase/iid/zzat;->zzcs:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_149

    .line 47
    iget-object v1, p0, Lcom/google/firebase/iid/zzat;->zzcs:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/iid/zzat;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_12f

    .line 49
    :cond_149
    monitor-exit v4

    goto :goto_19e

    :catchall_14b
    move-exception p1

    monitor-exit v4
    :try_end_14d
    .catchall {:try_start_12f .. :try_end_14d} :catchall_14b

    throw p1

    .line 50
    :cond_14e
    const-string v4, "\\|ID\\|([^|]+)\\|:?+(.*)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 51
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 52
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_182

    .line 53
    const-string p1, "FirebaseInstanceId"

    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_181

    .line 54
    const-string p1, "FirebaseInstanceId"

    const-string v1, "Unexpected response string: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_179

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17e

    :cond_179
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_17e
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_181
    return-void

    .line 56
    :cond_182
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 59
    const-string v2, "registration_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/iid/zzat;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 61
    return-void

    .line 62
    :cond_197
    const-string p1, "FirebaseInstanceId"

    const-string v0, "Dropping invalid message"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_19e
    return-void
.end method

.method private final zzd(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzat;->zze(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1d

    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 93
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzat;->zze(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_1d

    const-string p1, "google.messenger"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 95
    const/4 v0, 0x0

    .line 96
    :cond_1d
    return-object v0
.end method

.method private final zze(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-static {}, Lcom/google/firebase/iid/zzat;->zzah()Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 100
    iget-object v2, p0, Lcom/google/firebase/iid/zzat;->zzcs:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v2

    .line 101
    :try_start_c
    iget-object v3, p0, Lcom/google/firebase/iid/zzat;->zzcs:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_12b

    .line 103
    nop

    .line 104
    iget-object v2, p0, Lcom/google/firebase/iid/zzat;->zzan:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v2}, Lcom/google/firebase/iid/zzan;->zzac()I

    move-result v2

    if-eqz v2, :cond_123

    .line 106
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 107
    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v3, p0, Lcom/google/firebase/iid/zzat;->zzan:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v3}, Lcom/google/firebase/iid/zzan;->zzac()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_34

    .line 109
    const-string v3, "com.google.iid.TOKEN_REQUEST"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_39

    .line 110
    :cond_34
    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    :goto_39
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 112
    iget-object p1, p0, Lcom/google/firebase/iid/zzat;->zzx:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/google/firebase/iid/zzat;->zza(Landroid/content/Context;Landroid/content/Intent;)V

    .line 113
    nop

    .line 114
    const-string p1, "kid"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "|ID|"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string p1, "FirebaseInstanceId"

    const/4 v3, 0x3

    invoke-static {p1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 116
    const-string p1, "FirebaseInstanceId"

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Sending "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_9a
    const-string p1, "google.messenger"

    iget-object v5, p0, Lcom/google/firebase/iid/zzat;->zzct:Landroid/os/Messenger;

    invoke-virtual {v2, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    iget-object p1, p0, Lcom/google/firebase/iid/zzat;->zzcu:Landroid/os/Messenger;

    if-nez p1, :cond_a9

    iget-object p1, p0, Lcom/google/firebase/iid/zzat;->zzcv:Lcom/google/firebase/iid/zzl;

    if-eqz p1, :cond_cf

    .line 119
    :cond_a9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 120
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    :try_start_af
    iget-object v5, p0, Lcom/google/firebase/iid/zzat;->zzcu:Landroid/os/Messenger;

    if-eqz v5, :cond_b9

    .line 122
    iget-object v5, p0, Lcom/google/firebase/iid/zzat;->zzcu:Landroid/os/Messenger;

    invoke-virtual {v5, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_e2

    .line 123
    :cond_b9
    iget-object v5, p0, Lcom/google/firebase/iid/zzat;->zzcv:Lcom/google/firebase/iid/zzl;

    invoke-virtual {v5, p1}, Lcom/google/firebase/iid/zzl;->send(Landroid/os/Message;)V
    :try_end_be
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_be} :catch_bf

    .line 124
    goto :goto_e2

    .line 125
    :catch_bf
    move-exception p1

    .line 126
    const-string p1, "FirebaseInstanceId"

    invoke-static {p1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_cf

    .line 127
    const-string p1, "FirebaseInstanceId"

    const-string v3, "Messenger failed, fallback to startService"

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_cf
    iget-object p1, p0, Lcom/google/firebase/iid/zzat;->zzan:Lcom/google/firebase/iid/zzan;

    invoke-virtual {p1}, Lcom/google/firebase/iid/zzan;->zzac()I

    move-result p1

    if-ne p1, v4, :cond_dd

    .line 129
    iget-object p1, p0, Lcom/google/firebase/iid/zzat;->zzx:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_e2

    .line 130
    :cond_dd
    iget-object p1, p0, Lcom/google/firebase/iid/zzat;->zzx:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 131
    :goto_e2
    :try_start_e2
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const-wide/16 v1, 0x7530

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_f0
    .catch Ljava/lang/InterruptedException; {:try_start_e2 .. :try_end_f0} :catch_106
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e2 .. :try_end_f0} :catch_106
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_e2 .. :try_end_f0} :catch_ff
    .catchall {:try_start_e2 .. :try_end_f0} :catchall_fd

    .line 132
    iget-object v1, p0, Lcom/google/firebase/iid/zzat;->zzcs:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v1

    .line 133
    :try_start_f3
    iget-object v2, p0, Lcom/google/firebase/iid/zzat;->zzcs:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    monitor-exit v1

    .line 135
    return-object p1

    .line 134
    :catchall_fa
    move-exception p1

    monitor-exit v1
    :try_end_fc
    .catchall {:try_start_f3 .. :try_end_fc} :catchall_fa

    throw p1

    .line 141
    :catchall_fd
    move-exception p1

    goto :goto_116

    .line 139
    :catch_ff
    move-exception p1

    .line 140
    :try_start_100
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 136
    :catch_106
    move-exception p1

    .line 137
    const-string p1, "FirebaseInstanceId"

    const-string v1, "No response"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance p1, Ljava/io/IOException;

    const-string v1, "TIMEOUT"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_116
    .catchall {:try_start_100 .. :try_end_116} :catchall_fd

    .line 141
    :goto_116
    iget-object v1, p0, Lcom/google/firebase/iid/zzat;->zzcs:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v1

    .line 142
    :try_start_119
    iget-object v2, p0, Lcom/google/firebase/iid/zzat;->zzcs:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    monitor-exit v1
    :try_end_11f
    .catchall {:try_start_119 .. :try_end_11f} :catchall_120

    throw p1

    :catchall_120
    move-exception p1

    :try_start_121
    monitor-exit v1
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_120

    throw p1

    .line 105
    :cond_123
    new-instance p1, Ljava/io/IOException;

    const-string v0, "MISSING_INSTANCEID_SERVICE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :catchall_12b
    move-exception p1

    :try_start_12c
    monitor-exit v2
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_12b

    throw p1
.end method


# virtual methods
.method final zzc(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/firebase/iid/zzat;->zzan:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzan;->zzaf()I

    move-result v0

    const v1, 0xb71b00

    if-lt v0, v1, :cond_67

    .line 78
    iget-object v0, p0, Lcom/google/firebase/iid/zzat;->zzx:Landroid/content/Context;

    .line 79
    invoke-static {v0}, Lcom/google/firebase/iid/zzab;->zzc(Landroid/content/Context;)Lcom/google/firebase/iid/zzab;

    move-result-object v0

    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/iid/zzab;->zzb(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 81
    :try_start_16
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1c} :catch_1d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_16 .. :try_end_1c} :catch_1d

    return-object v0

    .line 82
    :catch_1d
    move-exception v0

    .line 83
    const-string v1, "FirebaseInstanceId"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 84
    const-string v1, "FirebaseInstanceId"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error making request: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/firebase/iid/zzal;

    if-eqz v1, :cond_65

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzal;

    .line 87
    invoke-virtual {v0}, Lcom/google/firebase/iid/zzal;->getErrorCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_65

    .line 88
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzat;->zzd(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 89
    :cond_65
    const/4 p1, 0x0

    return-object p1

    .line 90
    :cond_67
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzat;->zzd(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
