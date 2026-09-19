###### Class com.google.android.gms.measurement.internal.zzau (com.google.android.gms.measurement.internal.zzau)
.class public final Lcom/google/android/gms/measurement/internal/zzau;
.super Lcom/google/android/gms/measurement/internal/zzfj;


# instance fields
.field private final zzamx:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfk;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfj;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge p1, v0, :cond_f

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-direct {p1}, Lcom/google/android/gms/measurement/internal/zzfv;-><init>()V

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzau;->zzamx:Ljavax/net/ssl/SSLSocketFactory;

    .line 3
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzau;Ljava/net/HttpURLConnection;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzb(Ljava/net/HttpURLConnection;)[B

    move-result-object p0

    return-object p0
.end method

.method private static zzb(Ljava/net/HttpURLConnection;)[B
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    nop

    .line 14
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 15
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_26

    .line 16
    const/16 v0, 0x400

    :try_start_d
    new-array v0, v0, [B

    .line 17
    :goto_f
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1a

    .line 18
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_f

    .line 19
    :cond_1a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_24

    .line 20
    if-eqz p0, :cond_23

    .line 21
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 22
    :cond_23
    return-object v0

    .line 23
    :catchall_24
    move-exception v0

    goto :goto_2a

    :catchall_26
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    :goto_2a
    if-eqz p0, :cond_2f

    .line 24
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_2f
    throw v0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    .line 47
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaf()V
    .registers 1

    .line 44
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzaf()V

    return-void
.end method

.method protected final zzb(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 26
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_32

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzau;->zzamx:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_18

    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_18

    .line 29
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzau;->zzamx:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 31
    :cond_18
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 33
    const v1, 0xea60

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 34
    const v1, 0xee48

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 35
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 37
    return-object p1

    .line 27
    :cond_32
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to obtain HTTP connection"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 46
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final zzfb()Z
    .registers 3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 6
    nop

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 8
    nop

    .line 9
    :try_start_11
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_15} :catch_16

    .line 10
    goto :goto_18

    .line 11
    :catch_16
    move-exception v0

    .line 12
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic zzgf()V
    .registers 1

    .line 41
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgf()V

    return-void
.end method

.method public final bridge synthetic zzgg()V
    .registers 1

    .line 42
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgg()V

    return-void
.end method

.method public final bridge synthetic zzgh()V
    .registers 1

    .line 43
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgh()V

    return-void
.end method

.method public final bridge synthetic zzgp()Lcom/google/android/gms/measurement/internal/zzy;
    .registers 2

    .line 45
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgp()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgq()Lcom/google/android/gms/measurement/internal/zzao;
    .registers 2

    .line 48
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgr()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    .line 49
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgs()Lcom/google/android/gms/measurement/internal/zzbp;
    .registers 2

    .line 50
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgt()Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 2

    .line 51
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgu()Lcom/google/android/gms/measurement/internal/zzbb;
    .registers 2

    .line 52
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgv()Lcom/google/android/gms/measurement/internal/zzo;
    .registers 2

    .line 53
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgw()Lcom/google/android/gms/measurement/internal/zzl;
    .registers 2

    .line 54
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    move-result-object v0

    return-object v0
.end method

.method protected final zzgy()Z
    .registers 2

    .line 4
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic zzjr()Lcom/google/android/gms/measurement/internal/zzfq;
    .registers 2

    .line 38
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzjs()Lcom/google/android/gms/measurement/internal/zzk;
    .registers 2

    .line 39
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzjs()Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzjt()Lcom/google/android/gms/measurement/internal/zzr;
    .registers 2

    .line 40
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    return-object v0
.end method
