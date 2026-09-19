###### Class com.google.android.gms.common.util.ProcessUtils (com.google.android.gms.common.util.ProcessUtils)
.class public Lcom/google/android/gms/common/util/ProcessUtils;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static zzhd:Ljava/lang/String;

.field private static zzhe:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzhd:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzhe:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMyProcessName()Ljava/lang/String;
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzhd:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 3
    sget v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzhe:I

    if-nez v0, :cond_e

    .line 4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzhe:I

    .line 5
    :cond_e
    sget v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzhe:I

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/util/ProcessUtils;->zzd(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzhd:Ljava/lang/String;

    .line 7
    :cond_16
    sget-object v0, Lcom/google/android/gms/common/util/ProcessUtils;->zzhd:Ljava/lang/String;

    return-object v0
.end method

.method private static zzd(I)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 8
    const/4 v0, 0x0

    if-gtz p0, :cond_4

    .line 9
    return-object v0

    .line 10
    :cond_4
    nop

    .line 11
    nop

    .line 12
    const/16 v1, 0x19

    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "/proc/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/cmdline"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/ProcessUtils;->zzj(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_22} :catch_3c
    .catchall {:try_start_8 .. :try_end_22} :catchall_37

    .line 13
    :try_start_22
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_35
    .catchall {:try_start_22 .. :try_end_2a} :catchall_30

    .line 14
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 15
    nop

    .line 20
    move-object v0, v1

    goto :goto_42

    .line 19
    :catchall_30
    move-exception v0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_38

    .line 16
    :catch_35
    move-exception v1

    goto :goto_3e

    .line 19
    :catchall_37
    move-exception p0

    :goto_38
    invoke-static {v0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    .line 16
    :catch_3c
    move-exception p0

    move-object p0, v0

    .line 17
    :goto_3e
    invoke-static {p0}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 18
    nop

    .line 20
    :goto_42
    return-object v0
.end method

.method private static zzj(Ljava/lang/String;)Ljava/io/BufferedReader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 22
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 23
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 24
    nop

    .line 26
    return-object v1

    .line 25
    :catchall_13
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method
