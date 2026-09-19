###### Class com.google.android.gms.measurement.internal.zzay (com.google.android.gms.measurement.internal.zzay)
.class final Lcom/google/android/gms/measurement/internal/zzay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final url:Ljava/net/URL;

.field private final zzanc:[B

.field private final zzand:Lcom/google/android/gms/measurement/internal/zzaw;

.field private final zzane:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic zzanf:Lcom/google/android/gms/measurement/internal/zzau;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzau;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzaw;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/measurement/internal/zzaw;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzanf:Lcom/google/android/gms/measurement/internal/zzau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzay;->url:Ljava/net/URL;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzanc:[B

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzand:Lcom/google/android/gms/measurement/internal/zzaw;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzay;->packageName:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzane:Ljava/util/Map;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzanf:Lcom/google/android/gms/measurement/internal/zzau;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgh()V

    .line 12
    nop

    .line 13
    nop

    .line 14
    nop

    .line 15
    nop

    .line 16
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_b
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzanf:Lcom/google/android/gms/measurement/internal/zzau;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzay;->url:Ljava/net/URL;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzb(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_13} :catch_fe
    .catchall {:try_start_b .. :try_end_13} :catchall_c2

    .line 17
    :try_start_13
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzane:Ljava/util/Map;

    if-eqz v3, :cond_3d

    .line 18
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzane:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    goto :goto_21

    .line 21
    :cond_3d
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzanc:[B

    if-eqz v3, :cond_88

    .line 22
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzanf:Lcom/google/android/gms/measurement/internal/zzau;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfi;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzanc:[B

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb([B)[B

    move-result-object v3

    .line 23
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzanf:Lcom/google/android/gms/measurement/internal/zzau;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v5, "Uploading data. size"

    array-length v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 25
    const-string v4, "Content-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    array-length v4, v3

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 27
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 28
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_77} :catch_bf
    .catchall {:try_start_13 .. :try_end_77} :catchall_bc

    .line 29
    :try_start_77
    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    .line 30
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7d} :catch_82
    .catchall {:try_start_77 .. :try_end_7d} :catchall_7e

    .line 31
    goto :goto_88

    .line 54
    :catchall_7e
    move-exception v3

    move-object v10, v0

    move-object v0, v4

    goto :goto_c5

    .line 40
    :catch_82
    move-exception v3

    move-object v10, v0

    move-object v8, v3

    move-object v0, v4

    goto/16 :goto_102

    .line 32
    :cond_88
    :goto_88
    :try_start_88
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8c} :catch_bf
    .catchall {:try_start_88 .. :try_end_8c} :catchall_bc

    .line 33
    :try_start_8c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_90} :catch_b8
    .catchall {:try_start_8c .. :try_end_90} :catchall_b5

    .line 34
    :try_start_90
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzanf:Lcom/google/android/gms/measurement/internal/zzau;

    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zza(Lcom/google/android/gms/measurement/internal/zzau;Ljava/net/HttpURLConnection;)[B

    move-result-object v9
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_96} :catch_b3
    .catchall {:try_start_90 .. :try_end_96} :catchall_b1

    .line 35
    if-eqz v2, :cond_9b

    .line 36
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 37
    :cond_9b
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzanf:Lcom/google/android/gms/measurement/internal/zzau;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzax;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzay;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzand:Lcom/google/android/gms/measurement/internal/zzaw;

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/measurement/internal/zzax;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaw;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzav;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbp;->zzc(Ljava/lang/Runnable;)V

    .line 39
    return-void

    .line 54
    :catchall_b1
    move-exception v3

    goto :goto_c6

    .line 40
    :catch_b3
    move-exception v3

    goto :goto_ba

    .line 54
    :catchall_b5
    move-exception v3

    move-object v10, v0

    goto :goto_c6

    .line 40
    :catch_b8
    move-exception v3

    move-object v10, v0

    :goto_ba
    move-object v8, v3

    goto :goto_103

    .line 54
    :catchall_bc
    move-exception v3

    move-object v10, v0

    goto :goto_c5

    .line 40
    :catch_bf
    move-exception v3

    move-object v10, v0

    goto :goto_101

    .line 54
    :catchall_c2
    move-exception v3

    move-object v2, v0

    move-object v10, v2

    :goto_c5
    const/4 v7, 0x0

    :goto_c6
    if-eqz v0, :cond_e2

    .line 55
    :try_start_c8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_cc

    .line 56
    goto :goto_e2

    .line 57
    :catch_cc
    move-exception v0

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzanf:Lcom/google/android/gms/measurement/internal/zzau;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v4, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzay;->packageName:Ljava/lang/String;

    .line 60
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 61
    invoke-virtual {v1, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    :cond_e2
    :goto_e2
    if-eqz v2, :cond_e7

    .line 63
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 64
    :cond_e7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzanf:Lcom/google/android/gms/measurement/internal/zzau;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzax;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzay;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzand:Lcom/google/android/gms/measurement/internal/zzaw;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/measurement/internal/zzax;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaw;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzav;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbp;->zzc(Ljava/lang/Runnable;)V

    throw v3

    .line 40
    :catch_fe
    move-exception v3

    move-object v2, v0

    move-object v10, v2

    :goto_101
    move-object v8, v3

    :goto_102
    const/4 v7, 0x0

    .line 41
    :goto_103
    if-eqz v0, :cond_11f

    .line 42
    :try_start_105
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_109

    .line 43
    goto :goto_11f

    .line 44
    :catch_109
    move-exception v0

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzanf:Lcom/google/android/gms/measurement/internal/zzau;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v3, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzay;->packageName:Ljava/lang/String;

    .line 47
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 48
    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    :cond_11f
    :goto_11f
    if-eqz v2, :cond_124

    .line 50
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 51
    :cond_124
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzanf:Lcom/google/android/gms/measurement/internal/zzau;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzax;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzay;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzay;->zzand:Lcom/google/android/gms/measurement/internal/zzaw;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/measurement/internal/zzax;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaw;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzav;)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbp;->zzc(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method
