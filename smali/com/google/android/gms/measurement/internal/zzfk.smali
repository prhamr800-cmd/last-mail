###### Class com.google.android.gms.measurement.internal.zzfk (com.google.android.gms.measurement.internal.zzfk)
.class public Lcom/google/android/gms/measurement/internal/zzfk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzcr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/zzfk$zza;
    }
.end annotation


# static fields
.field private static volatile zzatt:Lcom/google/android/gms/measurement/internal/zzfk;


# instance fields
.field private final zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

.field private zzatu:Lcom/google/android/gms/measurement/internal/zzbo;

.field private zzatv:Lcom/google/android/gms/measurement/internal/zzau;

.field private zzatw:Lcom/google/android/gms/measurement/internal/zzr;

.field private zzatx:Lcom/google/android/gms/measurement/internal/zzaz;

.field private zzaty:Lcom/google/android/gms/measurement/internal/zzfg;

.field private zzatz:Lcom/google/android/gms/measurement/internal/zzk;

.field private final zzaua:Lcom/google/android/gms/measurement/internal/zzfq;

.field private zzaub:Lcom/google/android/gms/measurement/internal/zzdt;

.field private zzauc:Z

.field private zzaud:Z

.field private zzaue:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzauf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzaug:I

.field private zzauh:I

.field private zzaui:Z

.field private zzauj:Z

.field private zzauk:Z

.field private zzaul:Ljava/nio/channels/FileLock;

.field private zzaum:Ljava/nio/channels/FileChannel;

.field private zzaun:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzauo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzaup:J

.field private zzvz:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzfp;)V
    .registers 3

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfk;-><init>(Lcom/google/android/gms/measurement/internal/zzfp;Lcom/google/android/gms/measurement/internal/zzbu;)V

    .line 13
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzfp;Lcom/google/android/gms/measurement/internal/zzbu;)V
    .registers 5

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzvz:Z

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzfp;->zzri:Landroid/content/Context;

    .line 18
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zza(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzal;)Lcom/google/android/gms/measurement/internal/zzbu;

    move-result-object p2

    .line 19
    nop

    .line 20
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaup:J

    .line 22
    nop

    .line 23
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzfq;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;)V

    .line 24
    nop

    .line 25
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfj;->zzq()V

    .line 26
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaua:Lcom/google/android/gms/measurement/internal/zzfq;

    .line 27
    nop

    .line 28
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzau;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;)V

    .line 29
    nop

    .line 30
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfj;->zzq()V

    .line 31
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzatv:Lcom/google/android/gms/measurement/internal/zzau;

    .line 32
    nop

    .line 33
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzbo;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzbo;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;)V

    .line 34
    nop

    .line 35
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfj;->zzq()V

    .line 36
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzatu:Lcom/google/android/gms/measurement/internal/zzbo;

    .line 37
    nop

    .line 38
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object p2

    .line 39
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzfl;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzfp;)V

    .line 40
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzbp;->zzc(Ljava/lang/Runnable;)V

    .line 41
    return-void
.end method

.method private final zza(Ljava/nio/channels/FileChannel;)I
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1929
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 1930
    const/4 v0, 0x0

    if-eqz p1, :cond_51

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_51

    .line 1935
    :cond_d
    nop

    .line 1936
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1937
    const-wide/16 v3, 0x0

    :try_start_15
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 1938
    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 1939
    if-eq p1, v1, :cond_36

    .line 1940
    const/4 v1, -0x1

    if-eq p1, v1, :cond_35

    .line 1941
    nop

    .line 1942
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1943
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1944
    :cond_35
    return v0

    .line 1945
    :cond_36
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1946
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3d} :catch_3e

    .line 1947
    goto :goto_50

    .line 1948
    :catch_3e
    move-exception p1

    .line 1949
    nop

    .line 1950
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1951
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1952
    const/4 p1, 0x0

    :goto_50
    return p1

    .line 1931
    :cond_51
    :goto_51
    nop

    .line 1932
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 1933
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v1, "Bad channel to read from"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 1934
    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzi;)Lcom/google/android/gms/measurement/internal/zzg;
    .registers 2

    .line 2712
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzg(Lcom/google/android/gms/measurement/internal/zzi;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZJLjava/lang/String;)Lcom/google/android/gms/measurement/internal/zzi;
    .registers 37

    .line 2062
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    const-string v2, "Unknown"

    .line 2063
    const-string v4, "Unknown"

    .line 2064
    nop

    .line 2065
    const-string v5, "Unknown"

    .line 2066
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2067
    const/4 v6, 0x0

    if-nez v0, :cond_23

    .line 2068
    nop

    .line 2069
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 2070
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v2, "PackageManager is null, can not log app install information"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 2071
    return-object v6

    .line 2072
    :cond_23
    :try_start_23
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_27} :catch_28

    .line 2073
    goto :goto_3e

    .line 2074
    :catch_28
    move-exception v0

    .line 2075
    nop

    .line 2076
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 2077
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v7, "Error retrieving installer package name. appId"

    .line 2078
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2079
    move-object v0, v2

    :goto_3e
    if-nez v0, :cond_44

    .line 2080
    const-string v0, "manual_install"

    .line 2083
    :cond_42
    :goto_42
    move-object v8, v0

    goto :goto_4f

    .line 2081
    :cond_44
    const-string v2, "com.android.vending"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2082
    const-string v0, ""

    goto :goto_42

    .line 2083
    :goto_4f
    :try_start_4f
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2084
    if-eqz v0, :cond_76

    .line 2085
    nop

    .line 2086
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2087
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6e

    .line 2088
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2089
    move-object v5, v2

    :cond_6e
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 2090
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_72
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4f .. :try_end_72} :catch_74

    .line 2091
    move-object v5, v2

    goto :goto_79

    .line 2092
    :catch_74
    move-exception v0

    goto :goto_cb

    .line 2091
    :cond_76
    const/high16 v0, -0x80000000

    move-object v5, v4

    .line 2099
    :goto_79
    const-wide/16 v17, 0x0

    .line 2100
    nop

    .line 2101
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    .line 2102
    nop

    .line 2103
    nop

    .line 2104
    const-wide/16 v6, 0x0

    .line 2105
    nop

    .line 2106
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v2

    .line 2107
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzo;->zzbe(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 2108
    nop

    .line 2109
    move-wide/from16 v19, p7

    goto :goto_98

    :cond_96
    move-wide/from16 v19, v6

    :goto_98
    new-instance v26, Lcom/google/android/gms/measurement/internal/zzi;

    move-object/from16 v2, v26

    int-to-long v6, v0

    .line 2110
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    .line 2111
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzhh()J

    move-result-wide v9

    .line 2112
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    .line 2113
    move-object/from16 v4, p1

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzd(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v11

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-string v16, ""

    const/16 v21, 0x0

    const/16 v24, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v14, p4

    move/from16 v22, p5

    move/from16 v23, p6

    move-object/from16 v25, p9

    invoke-direct/range {v2 .. v25}, Lcom/google/android/gms/measurement/internal/zzi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;)V

    .line 2114
    return-object v26

    .line 2092
    :goto_cb
    nop

    .line 2093
    nop

    .line 2094
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 2095
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v2, "Error retrieving newly installed package info. appId, appName"

    .line 2096
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2097
    invoke-virtual {v0, v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2098
    return-object v6
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zzfj;)V
    .registers 4

    .line 126
    if-eqz p0, :cond_32

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 130
    return-void

    .line 129
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzfp;)V
    .registers 2

    .line 2711
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Lcom/google/android/gms/measurement/internal/zzfp;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzfp;)V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 42
    nop

    .line 43
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 45
    nop

    .line 46
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzr;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzr;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;)V

    .line 47
    nop

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfj;->zzq()V

    .line 49
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzatw:Lcom/google/android/gms/measurement/internal/zzr;

    .line 50
    nop

    .line 51
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzatu:Lcom/google/android/gms/measurement/internal/zzbo;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzo;->zza(Lcom/google/android/gms/measurement/internal/zzq;)V

    .line 53
    nop

    .line 54
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzk;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzk;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;)V

    .line 55
    nop

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfj;->zzq()V

    .line 57
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzatz:Lcom/google/android/gms/measurement/internal/zzk;

    .line 58
    nop

    .line 59
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzdt;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;)V

    .line 60
    nop

    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfj;->zzq()V

    .line 62
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaub:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 63
    nop

    .line 64
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfg;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;)V

    .line 65
    nop

    .line 66
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfj;->zzq()V

    .line 67
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaty:Lcom/google/android/gms/measurement/internal/zzfg;

    .line 68
    nop

    .line 69
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzaz;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzaz;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;)V

    .line 70
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzatx:Lcom/google/android/gms/measurement/internal/zzaz;

    .line 71
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaug:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauh:I

    if-eq p1, v0, :cond_70

    .line 72
    nop

    .line 73
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v0, "Not all upload components initialized"

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaug:I

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauh:I

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 77
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    :cond_70
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzvz:Z

    .line 79
    return-void
.end method

.method private final zza(ILjava/nio/channels/FileChannel;)Z
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1953
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 1954
    const/4 v0, 0x0

    if-eqz p2, :cond_59

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_59

    .line 1959
    :cond_d
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1960
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1961
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1962
    const-wide/16 v2, 0x0

    :try_start_1a
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 1963
    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1964
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 1965
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-eqz v5, :cond_46

    .line 1966
    nop

    .line 1967
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1968
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_46} :catch_47

    .line 1969
    :cond_46
    return p1

    .line 1970
    :catch_47
    move-exception p1

    .line 1971
    nop

    .line 1972
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    .line 1973
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1974
    return v0

    .line 1955
    :cond_59
    :goto_59
    nop

    .line 1956
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 1957
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "Bad channel to read from"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 1958
    return v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzgi;Lcom/google/android/gms/internal/measurement/zzgi;)Z
    .registers 12

    .line 1460
    const-string v0, "_e"

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 1461
    nop

    .line 1462
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    const-string v0, "_sc"

    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Lcom/google/android/gms/internal/measurement/zzgi;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v0

    .line 1463
    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 1464
    move-object v0, v1

    goto :goto_1c

    .line 1463
    :cond_1a
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    .line 1464
    :goto_1c
    nop

    .line 1465
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    const-string v2, "_pc"

    invoke-static {p2, v2}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Lcom/google/android/gms/internal/measurement/zzgi;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v2

    .line 1466
    if-nez v2, :cond_29

    goto :goto_2b

    :cond_29
    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    .line 1467
    :goto_2b
    if-eqz v1, :cond_9e

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1468
    nop

    .line 1469
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    const-string v0, "_et"

    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Lcom/google/android/gms/internal/measurement/zzgi;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v0

    .line 1470
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    const/4 v2, 0x1

    if-eqz v1, :cond_9d

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_4f

    goto :goto_9d

    .line 1472
    :cond_4f
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1473
    nop

    .line 1474
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    const-string v3, "_et"

    invoke-static {p2, v3}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Lcom/google/android/gms/internal/measurement/zzgi;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v3

    .line 1475
    if-eqz v3, :cond_76

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    if-eqz v4, :cond_76

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    .line 1476
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-lez v4, :cond_76

    .line 1477
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 1478
    :cond_76
    nop

    .line 1479
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    iget-object v3, p2, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    const-string v4, "_et"

    .line 1480
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzfq;->zza([Lcom/google/android/gms/internal/measurement/zzgj;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    .line 1481
    nop

    .line 1482
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    iget-object p2, p1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    const-string v0, "_fr"

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfq;->zza([Lcom/google/android/gms/internal/measurement/zzgj;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    .line 1483
    return v2

    .line 1471
    :cond_9d
    :goto_9d
    return v2

    .line 1484
    :cond_9e
    const/4 p1, 0x0

    return p1
.end method

.method private static zza([Lcom/google/android/gms/internal/measurement/zzgj;I)[Lcom/google/android/gms/internal/measurement/zzgj;
    .registers 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1494
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzgj;

    .line 1495
    if-lez p1, :cond_b

    .line 1496
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1497
    :cond_b
    array-length v1, v0

    if-ge p1, v1, :cond_15

    .line 1498
    add-int/lit8 v1, p1, 0x1

    array-length v2, v0

    sub-int/2addr v2, p1

    invoke-static {p0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1499
    :cond_15
    return-object v0
.end method

.method private static zza([Lcom/google/android/gms/internal/measurement/zzgj;ILjava/lang/String;)[Lcom/google/android/gms/internal/measurement/zzgj;
    .registers 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1500
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 1501
    const-string v2, "_err"

    aget-object v3, p0, v1

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1502
    return-object p0

    .line 1503
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1504
    :cond_15
    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzgj;

    .line 1505
    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1506
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgj;-><init>()V

    .line 1507
    const-string v0, "_err"

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    .line 1508
    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    .line 1509
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzgj;-><init>()V

    .line 1510
    const-string v0, "_ev"

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    .line 1511
    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    .line 1512
    array-length p2, v1

    add-int/lit8 p2, p2, -0x2

    aput-object p0, v1, p2

    .line 1513
    array-length p0, v1

    add-int/lit8 p0, p0, -0x1

    aput-object p1, v1, p0

    .line 1514
    return-object v1
.end method

.method private static zza([Lcom/google/android/gms/internal/measurement/zzgj;Ljava/lang/String;)[Lcom/google/android/gms/internal/measurement/zzgj;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1485
    nop

    .line 1486
    const/4 v0, 0x0

    :goto_2
    array-length v1, p0

    if-ge v0, v1, :cond_14

    .line 1487
    aget-object v1, p0, v0

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1488
    nop

    .line 1489
    goto :goto_15

    .line 1490
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1491
    :cond_14
    const/4 v0, -0x1

    :goto_15
    if-gez v0, :cond_18

    .line 1492
    return-object p0

    .line 1493
    :cond_18
    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza([Lcom/google/android/gms/internal/measurement/zzgj;I)[Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object p0

    return-object p0
.end method

.method private final zzaf()V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 119
    nop

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 122
    return-void
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzg;)V
    .registers 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1605
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 1606
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1607
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzo;->zzig()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1608
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1609
    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzfk;->zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    .line 1610
    return-void

    .line 1611
    :cond_2b
    nop

    .line 1612
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    .line 1613
    nop

    .line 1614
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 1615
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    .line 1616
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzo;->zzig()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1617
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhb()Ljava/lang/String;

    move-result-object v2

    .line 1618
    :cond_4c
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzag;->zzajk:Lcom/google/android/gms/measurement/internal/zzag$zza;

    .line 1619
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzag$zza;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzag;->zzajl:Lcom/google/android/gms/measurement/internal/zzag$zza;

    .line 1620
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzag$zza;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "config/app/"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_75

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7a

    :cond_75
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1621
    :goto_7a
    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "app_instance_id"

    .line 1622
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->getAppInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "platform"

    const-string v4, "android"

    .line 1623
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "gmp_version"

    .line 1624
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzhh()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1625
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1626
    nop

    .line 1627
    :try_start_a6
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1628
    nop

    .line 1629
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1630
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1631
    nop

    .line 1632
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzls()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzbo;->zzci(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzge;

    move-result-object v1

    .line 1633
    const/4 v2, 0x0

    .line 1634
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzls()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzbo;->zzcj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1635
    if-eqz v1, :cond_ed

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ed

    .line 1636
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1637
    const-string v2, "If-Modified-Since"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    move-object v6, v1

    goto :goto_ee

    :cond_ed
    move-object v6, v2

    :goto_ee
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaui:Z

    .line 1639
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlt()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    .line 1640
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzfn;

    invoke-direct {v7, p0}, Lcom/google/android/gms/measurement/internal/zzfn;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;)V

    .line 1641
    nop

    .line 1642
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 1643
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 1644
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzay;

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzay;-><init>(Lcom/google/android/gms/measurement/internal/zzau;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzaw;)V

    .line 1647
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzbp;->zzd(Ljava/lang/Runnable;)V
    :try_end_119
    .catch Ljava/net/MalformedURLException; {:try_start_a6 .. :try_end_119} :catch_11a

    .line 1648
    return-void

    .line 1649
    :catch_11a
    move-exception v1

    .line 1650
    nop

    .line 1651
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1652
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    .line 1653
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1654
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1655
    return-void
.end method

.method private final zzc(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1885
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhf()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_31

    .line 1886
    nop

    .line 1887
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1888
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1889
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzhf()J

    move-result-wide v1

    int-to-long v6, v0

    cmp-long p1, v1, v6

    if-nez p1, :cond_30

    .line 1890
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1891
    :cond_30
    goto :goto_5c

    .line 1892
    :cond_31
    nop

    .line 1893
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1894
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1895
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5b

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 1896
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_5a} :catch_61

    return-object p1

    .line 1897
    :cond_5b
    nop

    .line 1900
    :goto_5c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1898
    :catch_61
    move-exception p1

    .line 1899
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzct(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzi;
    .registers 28
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 2467
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzr;->zzbo(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v15

    .line 2468
    const/4 v1, 0x0

    if-eqz v15, :cond_81

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_81

    .line 2473
    :cond_1a
    invoke-direct {v0, v15}, Lcom/google/android/gms/measurement/internal/zzfk;->zzc(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v3

    .line 2474
    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3b

    .line 2475
    nop

    .line 2476
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 2477
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v4, "App version does not match; dropping. appId"

    .line 2478
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2479
    return-object v1

    .line 2480
    :cond_3b
    new-instance v25, Lcom/google/android/gms/measurement/internal/zzi;

    move-object/from16 v1, v25

    .line 2481
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v3

    .line 2482
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v4

    .line 2483
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhf()J

    move-result-wide v5

    .line 2484
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhg()Ljava/lang/String;

    move-result-object v7

    .line 2485
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhh()J

    move-result-wide v8

    .line 2486
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhi()J

    move-result-wide v10

    const/4 v12, 0x0

    .line 2487
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->isMeasurementEnabled()Z

    move-result v13

    const/4 v14, 0x0

    .line 2488
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->getFirebaseInstanceId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    .line 2489
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzg;->zzhv()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    .line 2490
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzg;->zzhw()Z

    move-result v21

    .line 2491
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzg;->zzhx()Z

    move-result v22

    const/16 v23, 0x0

    .line 2492
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzg;->zzhb()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v24}, Lcom/google/android/gms/measurement/internal/zzi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;)V

    .line 2493
    return-object v25

    .line 2469
    :cond_81
    :goto_81
    nop

    .line 2470
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 2471
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v4, "No app data available; dropping"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2472
    return-object v1
.end method

.method private final zzd(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)V
    .registers 28
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 311
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 316
    iget-object v15, v3, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfq;->zze(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 318
    return-void

    .line 319
    :cond_25
    iget-boolean v0, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzagg:Z

    if-nez v0, :cond_2d

    .line 320
    invoke-direct {v1, v3}, Lcom/google/android/gms/measurement/internal/zzfk;->zzg(Lcom/google/android/gms/measurement/internal/zzi;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 321
    return-void

    .line 322
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzls()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    invoke-virtual {v0, v15, v6}, Lcom/google/android/gms/measurement/internal/zzbo;->zzo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v14, 0x0

    const/16 v21, 0x1

    if-eqz v0, :cond_df

    .line 323
    nop

    .line 324
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v3, "Dropping blacklisted event. appId"

    .line 326
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 327
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v5

    .line 328
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 329
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    nop

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzls()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzbo;->zzcn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 332
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzls()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzbo;->zzco(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    goto :goto_73

    :cond_72
    goto :goto_74

    .line 333
    :cond_73
    :goto_73
    const/4 v14, 0x1

    :goto_74
    if-nez v14, :cond_92

    const-string v0, "_err"

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 334
    nop

    .line 335
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v6

    .line 336
    const/16 v8, 0xb

    const-string v9, "_ev"

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    const/4 v11, 0x0

    .line 337
    move-object v7, v15

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 338
    :cond_92
    if-eqz v14, :cond_de

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzr;->zzbo(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_de

    .line 341
    nop

    .line 342
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhl()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhk()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 343
    nop

    .line 344
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    .line 345
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 346
    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 347
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzag;->zzakf:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzag$zza;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 348
    cmp-long v6, v2, v4

    if-lez v6, :cond_de

    .line 349
    nop

    .line 350
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 351
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Fetching config for blacklisted app"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 352
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 353
    :cond_de
    return-void

    .line 354
    :cond_df
    nop

    .line 355
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 356
    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzaq;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 357
    nop

    .line 358
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v6, "Logging event"

    .line 360
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v7

    .line 361
    invoke-virtual {v7, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zzb(Lcom/google/android/gms/measurement/internal/zzae;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    :cond_107
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->beginTransaction()V

    .line 363
    :try_start_10e
    invoke-direct {v1, v3}, Lcom/google/android/gms/measurement/internal/zzfk;->zzg(Lcom/google/android/gms/measurement/internal/zzi;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 364
    const-string v0, "_iap"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_125

    const-string v0, "ecommerce_purchase"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    .line 365
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2af

    .line 366
    :cond_125
    nop

    .line 367
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzae;->zzaig:Lcom/google/android/gms/measurement/internal/zzab;

    const-string v6, "currency"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzab;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    const-string v6, "ecommerce_purchase"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_192

    .line 369
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzae;->zzaig:Lcom/google/android/gms/measurement/internal/zzab;

    const-string/jumbo v7, "value"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzab;->zzbt(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    mul-double v6, v6, v8

    .line 370
    const-wide/16 v10, 0x0

    cmpl-double v12, v6, v10

    if-nez v12, :cond_165

    .line 371
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzae;->zzaig:Lcom/google/android/gms/measurement/internal/zzab;

    const-string/jumbo v7, "value"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzab;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_15f
    .catchall {:try_start_10e .. :try_end_15f} :catchall_82f

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    .line 372
    :cond_165
    const-wide/high16 v8, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v10, v6, v8

    if-gtz v10, :cond_176

    const-wide/high16 v8, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v10, v6, v8

    if-ltz v10, :cond_176

    .line 373
    :try_start_171
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    goto :goto_19f

    .line 374
    :cond_176
    nop

    .line 375
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v8, "Data lost. Currency value is too big. appId"

    .line 377
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 378
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 379
    invoke-virtual {v0, v8, v9, v6}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 380
    nop

    .line 424
    const/4 v0, 0x0

    goto/16 :goto_29e

    .line 381
    :cond_192
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzae;->zzaig:Lcom/google/android/gms/measurement/internal/zzab;

    const-string/jumbo v7, "value"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzab;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 382
    :goto_19f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_29c

    .line 383
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 384
    const-string v8, "[A-Z]{3}"

    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_29c

    .line 385
    const-string v8, "_ltv_"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1c9

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    :goto_1c7
    move-object v9, v0

    goto :goto_1cf

    .line 385
    :cond_1c9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1c7

    .line 386
    :goto_1cf
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0, v15, v9}, Lcom/google/android/gms/measurement/internal/zzr;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_204

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/Long;

    if-nez v8, :cond_1e0

    goto :goto_204

    .line 406
    :cond_1e0
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 407
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzft;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzae;->origin:Ljava/lang/String;

    .line 408
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v12

    .line 409
    invoke-interface {v12}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v16

    const/4 v12, 0x0

    add-long/2addr v10, v6

    .line 410
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v6, v0

    move-object v7, v15

    move-wide/from16 v10, v16

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_260

    .line 388
    :cond_204
    :goto_204
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v8

    .line 389
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    .line 390
    nop

    .line 391
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzag;->zzakk:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v0, v15, v10}, Lcom/google/android/gms/measurement/internal/zzo;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag$zza;)I

    move-result v0

    .line 392
    add-int/lit8 v0, v0, -0x1

    .line 393
    invoke-static {v15}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 394
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 395
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V
    :try_end_220
    .catchall {:try_start_171 .. :try_end_220} :catchall_82f

    .line 396
    :try_start_220
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 397
    const-string v11, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    aput-object v15, v12, v14

    aput-object v15, v12, v21

    .line 398
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v12, v13

    .line 399
    invoke-virtual {v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_236
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_220 .. :try_end_236} :catch_237
    .catchall {:try_start_220 .. :try_end_236} :catchall_82f

    .line 400
    goto :goto_249

    .line 401
    :catch_237
    move-exception v0

    .line 402
    :try_start_238
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v8

    const-string v10, "Error pruning currencies. appId"

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v10, v11, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 403
    :goto_249
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzft;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzae;->origin:Ljava/lang/String;

    .line 404
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v10

    .line 405
    invoke-interface {v10}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v6, v0

    move-object v7, v15

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 411
    :goto_260
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzft;)Z

    move-result v6

    if-nez v6, :cond_29c

    .line 412
    nop

    .line 413
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v6

    .line 414
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v6

    const-string v7, "Too many unique user properties are set. Ignoring user property. appId"

    .line 415
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 416
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v9

    .line 417
    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzft;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    .line 418
    invoke-virtual {v6, v7, v8, v9, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    nop

    .line 420
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v6

    .line 421
    const/16 v8, 0x9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 422
    move-object v7, v15

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 423
    :cond_29c
    nop

    .line 424
    const/4 v0, 0x1

    :goto_29e
    if-nez v0, :cond_2af

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->setTransactionSuccessful()V
    :try_end_2a7
    .catchall {:try_start_238 .. :try_end_2a7} :catchall_82f

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    .line 427
    return-void

    .line 428
    :cond_2af
    :try_start_2af
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzcv(Ljava/lang/String;)Z

    move-result v0

    .line 429
    const-string v6, "_err"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 430
    nop

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v6

    .line 432
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzly()J

    move-result-wide v7

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/16 v17, 0x0

    .line 433
    move-object v9, v15

    move v11, v0

    move/from16 v13, v16

    move-wide/from16 v22, v4

    const/4 v4, 0x0

    move/from16 v14, v17

    invoke-virtual/range {v6 .. v14}, Lcom/google/android/gms/measurement/internal/zzr;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzs;

    move-result-object v5

    .line 434
    iget-wide v6, v5, Lcom/google/android/gms/measurement/internal/zzs;->zzahu:J

    .line 435
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzag;->zzajq:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzag$zza;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    .line 436
    sub-long/2addr v6, v8

    .line 437
    const-wide/16 v8, 0x3e8

    const-wide/16 v10, 0x1

    const-wide/16 v13, 0x0

    cmp-long v12, v6, v13

    if-lez v12, :cond_31f

    .line 438
    rem-long/2addr v6, v8

    cmp-long v0, v6, v10

    if-nez v0, :cond_310

    .line 439
    nop

    .line 440
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v2, "Data loss. Too many events logged. appId, count"

    .line 442
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, v5, Lcom/google/android/gms/measurement/internal/zzs;->zzahu:J

    .line 443
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 444
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 445
    :cond_310
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->setTransactionSuccessful()V
    :try_end_317
    .catchall {:try_start_2af .. :try_end_317} :catchall_82f

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    .line 447
    return-void

    .line 448
    :cond_31f
    if-eqz v0, :cond_37b

    .line 449
    :try_start_321
    iget-wide v6, v5, Lcom/google/android/gms/measurement/internal/zzs;->zzaht:J

    .line 450
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzag;->zzajs:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzag$zza;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v24, v5

    int-to-long v4, v12

    .line 451
    sub-long/2addr v6, v4

    .line 452
    cmp-long v4, v6, v13

    if-lez v4, :cond_379

    .line 453
    rem-long/2addr v6, v8

    cmp-long v0, v6, v10

    if-nez v0, :cond_358

    .line 454
    nop

    .line 455
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v3, "Data loss. Too many public events logged. appId, count"

    .line 457
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v5, v24

    iget-wide v5, v5, Lcom/google/android/gms/measurement/internal/zzs;->zzaht:J

    .line 458
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 459
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 460
    :cond_358
    nop

    .line 461
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v6

    .line 462
    const/16 v8, 0x10

    const-string v9, "_ev"

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    const/4 v11, 0x0

    .line 463
    move-object v7, v15

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->setTransactionSuccessful()V
    :try_end_371
    .catchall {:try_start_321 .. :try_end_371} :catchall_82f

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    .line 466
    return-void

    .line 467
    :cond_379
    move-object/from16 v5, v24

    :cond_37b
    if-eqz v16, :cond_3cc

    .line 468
    :try_start_37d
    iget-wide v6, v5, Lcom/google/android/gms/measurement/internal/zzs;->zzahw:J

    .line 469
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v4

    .line 470
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    .line 471
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzag;->zzajr:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/zzo;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag$zza;)I

    move-result v4

    .line 472
    const v8, 0xf4240

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 473
    const/4 v12, 0x0

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 474
    int-to-long v8, v4

    sub-long/2addr v6, v8

    .line 475
    cmp-long v4, v6, v13

    if-lez v4, :cond_3cd

    .line 476
    cmp-long v0, v6, v10

    if-nez v0, :cond_3bd

    .line 477
    nop

    .line 478
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v2, "Too many error events logged. appId, count"

    .line 480
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, v5, Lcom/google/android/gms/measurement/internal/zzs;->zzahw:J

    .line 481
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 482
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 483
    :cond_3bd
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->setTransactionSuccessful()V
    :try_end_3c4
    .catchall {:try_start_37d .. :try_end_3c4} :catchall_82f

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    .line 485
    return-void

    .line 486
    :cond_3cc
    const/4 v12, 0x0

    :cond_3cd
    :try_start_3cd
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzae;->zzaig:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzab;->zziy()Landroid/os/Bundle;

    move-result-object v4

    .line 487
    nop

    .line 488
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v5

    .line 489
    const-string v6, "_o"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzae;->origin:Ljava/lang/String;

    invoke-virtual {v5, v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    nop

    .line 491
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v5

    .line 492
    invoke-virtual {v5, v15}, Lcom/google/android/gms/measurement/internal/zzfu;->zzdb(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40e

    .line 493
    nop

    .line 494
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v5

    .line 495
    const-string v6, "_dbg"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 496
    nop

    .line 497
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v5

    .line 498
    const-string v6, "_r"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 499
    :cond_40e
    nop

    .line 500
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v5

    .line 501
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzo;->zzbj(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44a

    const-string v5, "_s"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    .line 502
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44a

    .line 503
    nop

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v5

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    const-string v7, "_sno"

    .line 505
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzr;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v5

    .line 506
    if-eqz v5, :cond_44a

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Long;

    if-eqz v6, :cond_44a

    .line 507
    nop

    .line 508
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v6

    .line 509
    const-string v7, "_sno"

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    invoke-virtual {v6, v4, v7, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 510
    :cond_44a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/measurement/internal/zzr;->zzbp(Ljava/lang/String;)J

    move-result-wide v5

    .line 511
    cmp-long v7, v5, v13

    if-lez v7, :cond_46e

    .line 512
    nop

    .line 513
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v7

    .line 514
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v7

    const-string v8, "Data lost. Too many events stored on disk, deleted. appId"

    .line 515
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 516
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 517
    invoke-virtual {v7, v8, v9, v5}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 518
    :cond_46e
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzz;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzae;->origin:Ljava/lang/String;

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    iget-wide v12, v2, Lcom/google/android/gms/measurement/internal/zzae;->zzais:J

    const-wide/16 v16, 0x0

    move-object v6, v5

    move-object v9, v15

    const/4 v2, 0x0

    move-wide v11, v12

    move-wide/from16 v13, v16

    move-object v2, v15

    move-object v15, v4

    invoke-direct/range {v6 .. v15}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Lcom/google/android/gms/measurement/internal/zzbu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v4

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzz;->name:Ljava/lang/String;

    invoke-virtual {v4, v2, v6}, Lcom/google/android/gms/measurement/internal/zzr;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v4

    .line 520
    if-nez v4, :cond_4f9

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzr;->zzbs(Ljava/lang/String;)J

    move-result-wide v6

    .line 522
    const-wide/16 v8, 0x1f4

    cmp-long v4, v6, v8

    if-ltz v4, :cond_4df

    if-eqz v0, :cond_4df

    .line 523
    nop

    .line 524
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v3, "Too many event names used, ignoring event. appId, name, supported count"

    .line 526
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 527
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v6

    .line 528
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzz;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 529
    const/16 v6, 0x1f4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 530
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 531
    nop

    .line 532
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v6

    .line 533
    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 534
    move-object v7, v2

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4d7
    .catchall {:try_start_3cd .. :try_end_4d7} :catchall_82f

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    .line 536
    return-void

    .line 537
    :cond_4df
    :try_start_4df
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzz;->name:Ljava/lang/String;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    iget-wide v13, v5, Lcom/google/android/gms/measurement/internal/zzz;->timestamp:J

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v6, v0

    move-object v7, v2

    invoke-direct/range {v6 .. v20}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 538
    goto :goto_507

    .line 539
    :cond_4f9
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/zzaa;->zzaij:J

    invoke-virtual {v5, v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzz;->zza(Lcom/google/android/gms/measurement/internal/zzbu;J)Lcom/google/android/gms/measurement/internal/zzz;

    move-result-object v5

    .line 540
    iget-wide v6, v5, Lcom/google/android/gms/measurement/internal/zzz;->timestamp:J

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzaa;->zzai(J)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    .line 541
    :goto_507
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzaa;)V

    .line 542
    nop

    .line 543
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 545
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/zzz;->zztt:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 548
    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/zzz;->zztt:Ljava/lang/String;

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 549
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgl;-><init>()V

    .line 550
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxt:Ljava/lang/Integer;

    .line 551
    const-string v0, "android"

    iput-object v0, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzayb:Ljava/lang/String;

    .line 552
    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 553
    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzage:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzage:Ljava/lang/String;

    .line 554
    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzts:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzts:Ljava/lang/String;

    .line 555
    nop

    .line 556
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzagd:J

    const-wide/32 v8, -0x80000000

    const/4 v0, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_553

    move-object v4, v0

    goto :goto_55a

    :cond_553
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzagd:J

    long-to-int v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_55a
    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzayn:Ljava/lang/Integer;

    .line 557
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzadt:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzayf:Ljava/lang/Long;

    .line 558
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzafx:Ljava/lang/String;

    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzafx:Ljava/lang/String;

    .line 559
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzagk:Ljava/lang/String;

    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxc:Ljava/lang/String;

    .line 560
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzagf:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_576

    move-object v4, v0

    goto :goto_57c

    :cond_576
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzagf:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_57c
    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzayj:Ljava/lang/Long;

    .line 561
    nop

    .line 562
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v4

    .line 563
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzag;->zzalq:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzo;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag$zza;)Z

    move-result v4

    if-eqz v4, :cond_599

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfq;->zzmi()[I

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzayx:[I

    .line 565
    :cond_599
    nop

    .line 566
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v4

    .line 567
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzbb;->zzcb(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    .line 568
    if-eqz v4, :cond_5c3

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5c3

    .line 569
    iget-boolean v6, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzagi:Z

    if-eqz v6, :cond_625

    .line 570
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iput-object v6, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzayh:Ljava/lang/String;

    .line 571
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzayi:Ljava/lang/Boolean;

    goto :goto_625

    .line 572
    :cond_5c3
    nop

    .line 573
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgp()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v4

    .line 574
    nop

    .line 575
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbu;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 576
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzy;->zzl(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_625

    iget-boolean v4, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzagj:Z

    if-eqz v4, :cond_625

    .line 577
    nop

    .line 578
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 579
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "android_id"

    invoke-static {v4, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 580
    if-nez v4, :cond_607

    .line 581
    nop

    .line 582
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    .line 583
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v6, "null secure ID. appId"

    iget-object v7, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 584
    const-string v4, "null"

    goto :goto_623

    .line 585
    :cond_607
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_623

    .line 586
    nop

    .line 587
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v6

    .line 588
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v6

    const-string v7, "empty secure ID. appId"

    iget-object v10, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    :cond_623
    :goto_623
    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzayq:Ljava/lang/String;

    .line 590
    :cond_625
    :goto_625
    nop

    .line 591
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgp()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v4

    .line 592
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcq;->zzcl()V

    .line 593
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 594
    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzayd:Ljava/lang/String;

    .line 595
    nop

    .line 596
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgp()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v4

    .line 597
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcq;->zzcl()V

    .line 598
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 599
    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzayc:Ljava/lang/String;

    .line 600
    nop

    .line 601
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgp()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v4

    .line 602
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzy;->zziw()J

    move-result-wide v6

    long-to-int v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzaye:Ljava/lang/Integer;

    .line 603
    nop

    .line 604
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgp()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v4

    .line 605
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzy;->zzix()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzaid:Ljava/lang/String;

    .line 606
    iput-object v0, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzayg:Ljava/lang/Long;

    .line 607
    iput-object v0, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxw:Ljava/lang/Long;

    .line 608
    iput-object v0, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxx:Ljava/lang/Long;

    .line 609
    iput-object v0, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxy:Ljava/lang/Long;

    .line 610
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzagh:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzays:Ljava/lang/Long;

    .line 611
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_680

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzo;->zzie()Z

    move-result v4

    if-eqz v4, :cond_680

    .line 612
    iput-object v0, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzayt:Ljava/lang/String;

    .line 613
    :cond_680
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzr;->zzbo(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    .line 614
    if-nez v0, :cond_6f0

    .line 615
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-direct {v0, v4, v6}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzbu;Ljava/lang/String;)V

    .line 616
    nop

    .line 617
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v4

    .line 618
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzmm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzal(Ljava/lang/String;)V

    .line 619
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzafz:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzap(Ljava/lang/String;)V

    .line 620
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzafx:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzam(Ljava/lang/String;)V

    .line 621
    nop

    .line 622
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v4

    .line 623
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzbb;->zzcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 624
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzao(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzx(J)V

    .line 626
    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    .line 627
    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzt(J)V

    .line 628
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzts:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzg;->setAppVersion(Ljava/lang/String;)V

    .line 629
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzagd:J

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzu(J)V

    .line 630
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzaq(Ljava/lang/String;)V

    .line 631
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzadt:J

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzv(J)V

    .line 632
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzagf:J

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzw(J)V

    .line 633
    iget-boolean v4, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzagg:Z

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzg;->setMeasurementEnabled(Z)V

    .line 634
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzi;->zzagh:J

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzag(J)V

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 636
    :cond_6f0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->getAppInstanceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzafw:Ljava/lang/String;

    .line 637
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->getFirebaseInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzafz:Ljava/lang/String;

    .line 638
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzr;->zzbn(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 639
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zzgo;

    iput-object v3, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxv:[Lcom/google/android/gms/internal/measurement/zzgo;

    .line 640
    const/4 v3, 0x0

    :goto_70f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_748

    .line 641
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzgo;

    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/zzgo;-><init>()V

    .line 642
    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxv:[Lcom/google/android/gms/internal/measurement/zzgo;

    aput-object v4, v6, v3

    .line 643
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzft;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzft;->name:Ljava/lang/String;

    iput-object v6, v4, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    .line 644
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzft;

    iget-wide v6, v6, Lcom/google/android/gms/measurement/internal/zzft;->zzaux:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v4, Lcom/google/android/gms/internal/measurement/zzgo;->zzazg:Ljava/lang/Long;

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzft;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Lcom/google/android/gms/internal/measurement/zzgo;Ljava/lang/Object;)V
    :try_end_745
    .catchall {:try_start_4df .. :try_end_745} :catchall_82f

    .line 646
    add-int/lit8 v3, v3, 0x1

    goto :goto_70f

    .line 647
    :cond_748
    :try_start_748
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/internal/measurement/zzgl;)J

    move-result-wide v3
    :try_end_750
    .catch Ljava/io/IOException; {:try_start_748 .. :try_end_750} :catch_7ba
    .catchall {:try_start_748 .. :try_end_750} :catchall_82f

    .line 648
    nop

    .line 656
    :try_start_751
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    .line 657
    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzz;->zzaig:Lcom/google/android/gms/measurement/internal/zzab;

    if-eqz v2, :cond_7b0

    .line 658
    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzz;->zzaig:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_75f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_777

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 659
    const-string v7, "_r"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_776

    .line 660
    nop

    .line 669
    :goto_774
    const/4 v2, 0x1

    goto :goto_7b1

    .line 661
    :cond_776
    goto :goto_75f

    .line 662
    :cond_777
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzls()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v2

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzz;->zztt:Ljava/lang/String;

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzz;->name:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/zzbo;->zzp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 663
    nop

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v10

    .line 665
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzly()J

    move-result-wide v11

    iget-object v13, v5, Lcom/google/android/gms/measurement/internal/zzz;->zztt:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v10 .. v18}, Lcom/google/android/gms/measurement/internal/zzr;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzs;

    move-result-object v6

    .line 666
    if-eqz v2, :cond_7b0

    iget-wide v6, v6, Lcom/google/android/gms/measurement/internal/zzs;->zzahx:J

    .line 667
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v2

    .line 668
    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/zzz;->zztt:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/zzo;->zzas(Ljava/lang/String;)I

    move-result v2

    int-to-long v10, v2

    cmp-long v2, v6, v10

    if-gez v2, :cond_7b0

    goto :goto_774

    .line 669
    :cond_7b0
    const/4 v2, 0x0

    :goto_7b1
    invoke-virtual {v0, v5, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzz;JZ)Z

    move-result v0

    if-eqz v0, :cond_7d2

    .line 670
    iput-wide v8, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzaue:J

    goto :goto_7d2

    .line 649
    :catch_7ba
    move-exception v0

    .line 650
    nop

    .line 651
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 652
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v4, "Data loss. Failed to insert raw event metadata. appId"

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 653
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 654
    invoke-virtual {v3, v4, v2, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 655
    nop

    .line 671
    :cond_7d2
    :goto_7d2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->setTransactionSuccessful()V

    .line 672
    nop

    .line 673
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 674
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzaq;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_801

    .line 675
    nop

    .line 676
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 677
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v2, "Event recorded"

    .line 678
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v3

    .line 679
    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Lcom/google/android/gms/measurement/internal/zzz;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_801
    .catchall {:try_start_751 .. :try_end_801} :catchall_82f

    .line 680
    :cond_801
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    .line 681
    nop

    .line 683
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmb()V

    .line 684
    nop

    .line 685
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 686
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v2, "Background event processing time, ms"

    .line 687
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v22

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 688
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    return-void

    .line 682
    :catchall_82f
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    throw v0
.end method

.method private final zzd(Ljava/lang/String;J)Z
    .registers 56
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 859
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzr;->beginTransaction()V

    .line 860
    :try_start_9
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzfk$zza;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzfl;)V

    .line 861
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v4

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzaup:J

    .line 862
    nop

    .line 863
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 865
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_e3d

    .line 866
    nop

    .line 867
    const-wide/16 v8, -0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    :try_start_25
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 868
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_2d} :catch_26c
    .catchall {:try_start_25 .. :try_end_2d} :catchall_266

    if-eqz v13, :cond_a4

    .line 869
    cmp-long v13, v5, v8

    if-eqz v13, :cond_4d

    .line 870
    :try_start_33
    new-array v13, v10, [Ljava/lang/String;

    .line 871
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v11

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v12
    :try_end_41
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_33 .. :try_end_41} :catch_47
    .catchall {:try_start_33 .. :try_end_41} :catchall_42

    goto :goto_55

    .line 970
    :catchall_42
    move-exception v0

    move-object v5, v1

    move-object v8, v3

    goto/16 :goto_269

    .line 964
    :catch_47
    move-exception v0

    move-object v7, v3

    move-object v8, v7

    :goto_4a
    move-object v3, v0

    goto/16 :goto_270

    .line 872
    :cond_4d
    :try_start_4d
    new-array v13, v12, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v11
    :try_end_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_55} :catch_26c
    .catchall {:try_start_4d .. :try_end_55} :catchall_266

    .line 873
    :goto_55
    nop

    .line 874
    cmp-long v14, v5, v8

    if-eqz v14, :cond_5d

    :try_start_5a
    const-string v14, "rowid <= ? and "
    :try_end_5c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5a .. :try_end_5c} :catch_47
    .catchall {:try_start_5a .. :try_end_5c} :catchall_42

    goto :goto_5f

    :cond_5d
    :try_start_5d
    const-string v14, ""

    :goto_5f
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit16 v7, v7, 0x94

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 875
    invoke-virtual {v15, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_83
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5d .. :try_end_83} :catch_26c
    .catchall {:try_start_5d .. :try_end_83} :catchall_266

    .line 876
    :try_start_83
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7
    :try_end_87
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_83 .. :try_end_87} :catch_261
    .catchall {:try_start_83 .. :try_end_87} :catchall_42

    if-nez v7, :cond_90

    .line 877
    if-eqz v3, :cond_8e

    .line 878
    :try_start_8b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_e3d

    .line 879
    :cond_8e
    goto/16 :goto_286

    .line 880
    :cond_90
    :try_start_90
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_94
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_90 .. :try_end_94} :catch_261
    .catchall {:try_start_90 .. :try_end_94} :catchall_42

    .line 881
    :try_start_94
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 882
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_9b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_94 .. :try_end_9b} :catch_a1
    .catchall {:try_start_94 .. :try_end_9b} :catchall_42

    .line 883
    nop

    .line 896
    move-object/from16 v22, v3

    move-object v3, v7

    move-object v7, v13

    goto :goto_ff

    .line 964
    :catch_a1
    move-exception v0

    move-object v8, v3

    goto :goto_4a

    .line 884
    :cond_a4
    cmp-long v3, v5, v8

    if-eqz v3, :cond_b4

    .line 885
    :try_start_a8
    new-array v3, v10, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v3, v11

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v12

    goto :goto_b9

    .line 886
    :cond_b4
    new-array v3, v12, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v3, v11

    .line 887
    :goto_b9
    nop

    .line 888
    cmp-long v7, v5, v8

    if-eqz v7, :cond_c1

    const-string v7, " and rowid <= ?"

    goto :goto_c3

    :cond_c1
    const-string v7, ""

    :goto_c3
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x54

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " order by rowid limit 1;"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 889
    invoke-virtual {v15, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_e7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a8 .. :try_end_e7} :catch_26c
    .catchall {:try_start_a8 .. :try_end_e7} :catchall_266

    .line 890
    :try_start_e7
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7
    :try_end_eb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e7 .. :try_end_eb} :catch_261
    .catchall {:try_start_e7 .. :try_end_eb} :catchall_42

    if-nez v7, :cond_f4

    .line 891
    if-eqz v3, :cond_f2

    .line 892
    :try_start_ef
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_e3d

    .line 893
    :cond_f2
    goto/16 :goto_286

    .line 894
    :cond_f4
    :try_start_f4
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 895
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_fb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f4 .. :try_end_fb} :catch_261
    .catchall {:try_start_f4 .. :try_end_fb} :catchall_42

    .line 896
    move-object/from16 v22, v3

    move-object v7, v13

    const/4 v3, 0x0

    :goto_ff
    :try_start_ff
    const-string v14, "raw_events_metadata"

    new-array v13, v12, [Ljava/lang/String;

    const-string v16, "metadata"

    aput-object v16, v13, v11

    const-string v16, "app_id = ? and metadata_fingerprint = ?"

    new-array v8, v10, [Ljava/lang/String;

    aput-object v3, v8, v11

    aput-object v7, v8, v12

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "rowid"

    const-string v21, "2"

    .line 897
    move-object v9, v13

    move-object v13, v15

    move-object/from16 v23, v15

    move-object v15, v9

    move-object/from16 v17, v8

    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_122
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ff .. :try_end_122} :catch_25b
    .catchall {:try_start_ff .. :try_end_122} :catchall_256

    .line 898
    :try_start_122
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_140

    .line 899
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v5

    .line 900
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    const-string v6, "Raw event metadata record is missing. appId"

    .line 901
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_139
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_122 .. :try_end_139} :catch_252
    .catchall {:try_start_122 .. :try_end_139} :catchall_e30

    .line 902
    if-eqz v8, :cond_13e

    .line 903
    :try_start_13b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_13e
    .catchall {:try_start_13b .. :try_end_13e} :catchall_e3d

    .line 904
    :cond_13e
    goto/16 :goto_286

    .line 905
    :cond_140
    :try_start_140
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 906
    nop

    .line 907
    array-length v13, v9

    invoke-static {v9, v11, v13}, Lcom/google/android/gms/internal/measurement/zzzi;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzzi;

    move-result-object v9

    .line 908
    nop

    .line 909
    new-instance v13, Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-direct {v13}, Lcom/google/android/gms/internal/measurement/zzgl;-><init>()V
    :try_end_150
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_140 .. :try_end_150} :catch_252
    .catchall {:try_start_140 .. :try_end_150} :catchall_e30

    .line 910
    :try_start_150
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_153} :catch_239
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_150 .. :try_end_153} :catch_252
    .catchall {:try_start_150 .. :try_end_153} :catchall_e30

    .line 911
    nop

    .line 920
    :try_start_154
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_16b

    .line 921
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v9

    .line 922
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    const-string v14, "Get multiple raw event metadata records, expected one. appId"

    .line 923
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 924
    invoke-virtual {v9, v14, v15}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 925
    :cond_16b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 926
    invoke-interface {v2, v13}, Lcom/google/android/gms/measurement/internal/zzt;->zzb(Lcom/google/android/gms/internal/measurement/zzgl;)V

    .line 927
    const-wide/16 v13, -0x1

    cmp-long v9, v5, v13

    if-eqz v9, :cond_18b

    .line 928
    const-string v9, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    .line 929
    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/String;

    aput-object v3, v14, v11

    aput-object v7, v14, v12

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v10

    .line 932
    move-object/from16 v16, v9

    move-object/from16 v17, v14

    goto :goto_197

    .line 930
    :cond_18b
    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    .line 931
    new-array v6, v10, [Ljava/lang/String;

    aput-object v3, v6, v11

    aput-object v7, v6, v12

    .line 932
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    :goto_197
    const-string v14, "raw_events"

    const/4 v5, 0x4

    new-array v15, v5, [Ljava/lang/String;

    const-string v5, "rowid"

    aput-object v5, v15, v11

    const-string v5, "name"

    aput-object v5, v15, v12

    const-string/jumbo v5, "timestamp"

    aput-object v5, v15, v10

    const-string v5, "data"

    const/4 v6, 0x3

    aput-object v5, v15, v6

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "rowid"

    const/16 v21, 0x0

    .line 933
    move-object/from16 v13, v23

    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1bc
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_154 .. :try_end_1bc} :catch_252
    .catchall {:try_start_154 .. :try_end_1bc} :catchall_e30

    .line 934
    :try_start_1bc
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_1da

    .line 935
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v6

    .line 936
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v6

    const-string v7, "Raw event data disappeared while in transaction. appId"

    .line 937
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 938
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1d3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1bc .. :try_end_1d3} :catch_234
    .catchall {:try_start_1bc .. :try_end_1d3} :catchall_230

    .line 939
    if-eqz v5, :cond_1d8

    .line 940
    :try_start_1d5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1d8
    .catchall {:try_start_1d5 .. :try_end_1d8} :catchall_e3d

    .line 941
    :cond_1d8
    goto/16 :goto_286

    .line 942
    :cond_1da
    :try_start_1da
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 943
    const/4 v8, 0x3

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 944
    nop

    .line 945
    array-length v8, v9

    invoke-static {v9, v11, v8}, Lcom/google/android/gms/internal/measurement/zzzi;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzzi;

    move-result-object v8

    .line 946
    nop

    .line 947
    new-instance v9, Lcom/google/android/gms/internal/measurement/zzgi;

    invoke-direct {v9}, Lcom/google/android/gms/internal/measurement/zzgi;-><init>()V
    :try_end_1ef
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1da .. :try_end_1ef} :catch_234
    .catchall {:try_start_1da .. :try_end_1ef} :catchall_230

    .line 948
    :try_start_1ef
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    :try_end_1f2
    .catch Ljava/io/IOException; {:try_start_1ef .. :try_end_1f2} :catch_210
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1ef .. :try_end_1f2} :catch_234
    .catchall {:try_start_1ef .. :try_end_1f2} :catchall_230

    .line 949
    nop

    .line 955
    :try_start_1f3
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    .line 956
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v9, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    .line 957
    invoke-interface {v2, v6, v7, v9}, Lcom/google/android/gms/measurement/internal/zzt;->zza(JLcom/google/android/gms/internal/measurement/zzgi;)Z

    move-result v6
    :try_end_207
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f3 .. :try_end_207} :catch_234
    .catchall {:try_start_1f3 .. :try_end_207} :catchall_230

    if-nez v6, :cond_224

    .line 958
    if-eqz v5, :cond_20e

    .line 959
    :try_start_20b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_20e
    .catchall {:try_start_20b .. :try_end_20e} :catchall_e3d

    .line 960
    :cond_20e
    goto/16 :goto_286

    .line 950
    :catch_210
    move-exception v0

    move-object v6, v0

    .line 951
    :try_start_212
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v7

    .line 952
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v7

    const-string v8, "Data loss. Failed to merge raw event. appId"

    .line 953
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v6}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 954
    nop

    .line 961
    :cond_224
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_228
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_212 .. :try_end_228} :catch_234
    .catchall {:try_start_212 .. :try_end_228} :catchall_230

    if-nez v6, :cond_1da

    .line 962
    if-eqz v5, :cond_286

    .line 963
    :try_start_22c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_22f
    .catchall {:try_start_22c .. :try_end_22f} :catchall_e3d

    goto :goto_286

    .line 970
    :catchall_230
    move-exception v0

    move-object v8, v5

    goto/16 :goto_e31

    .line 964
    :catch_234
    move-exception v0

    move-object v7, v3

    move-object v8, v5

    goto/16 :goto_4a

    .line 912
    :catch_239
    move-exception v0

    move-object v5, v0

    .line 913
    :try_start_23b
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v6

    .line 914
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v6

    const-string v7, "Data loss. Failed to merge raw event metadata. appId"

    .line 915
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 916
    invoke-virtual {v6, v7, v9, v5}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_24c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23b .. :try_end_24c} :catch_252
    .catchall {:try_start_23b .. :try_end_24c} :catchall_e30

    .line 917
    if-eqz v8, :cond_251

    .line 918
    :try_start_24e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_251
    .catchall {:try_start_24e .. :try_end_251} :catchall_e3d

    .line 919
    :cond_251
    goto :goto_286

    .line 964
    :catch_252
    move-exception v0

    move-object v7, v3

    goto/16 :goto_4a

    .line 970
    :catchall_256
    move-exception v0

    move-object v5, v1

    move-object/from16 v8, v22

    goto :goto_269

    .line 964
    :catch_25b
    move-exception v0

    move-object v7, v3

    move-object/from16 v8, v22

    goto/16 :goto_4a

    :catch_261
    move-exception v0

    move-object v8, v3

    const/4 v7, 0x0

    goto/16 :goto_4a

    .line 970
    :catchall_266
    move-exception v0

    move-object v5, v1

    const/4 v8, 0x0

    :goto_269
    move-object v1, v0

    goto/16 :goto_e34

    .line 964
    :catch_26c
    move-exception v0

    move-object v3, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 965
    :goto_270
    :try_start_270
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    .line 966
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v5, "Data loss. Error selecting raw event. appId"

    .line 967
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_281
    .catchall {:try_start_270 .. :try_end_281} :catchall_e30

    .line 968
    if-eqz v8, :cond_286

    .line 969
    :try_start_283
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 972
    :cond_286
    :goto_286
    nop

    .line 973
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzauv:Ljava/util/List;

    if-eqz v3, :cond_296

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzauv:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_294

    goto :goto_296

    .line 974
    :cond_294
    const/4 v3, 0x0

    goto :goto_298

    .line 973
    :cond_296
    :goto_296
    nop

    .line 974
    const/4 v3, 0x1

    :goto_298
    if-nez v3, :cond_e1f

    .line 975
    nop

    .line 976
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    .line 977
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzauv:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/zzgi;

    iput-object v4, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxu:[Lcom/google/android/gms/internal/measurement/zzgi;

    .line 978
    nop

    .line 979
    nop

    .line 980
    nop

    .line 981
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v4

    .line 982
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzo;->zzaw(Ljava/lang/String;)Z

    move-result v4

    .line 983
    nop

    .line 984
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v5

    .line 985
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzag;->zzalm:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzo;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag$zza;)Z

    move-result v5

    .line 986
    nop

    .line 987
    nop

    .line 988
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    :goto_2d0
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzauv:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const-wide/16 v16, 0x1

    if-ge v8, v7, :cond_79a

    .line 989
    nop

    .line 990
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzauv:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzgi;

    .line 991
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzls()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v12

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v11, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    move/from16 v24, v9

    iget-object v9, v7, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-virtual {v12, v11, v9}, Lcom/google/android/gms/measurement/internal/zzbo;->zzo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_36a

    .line 992
    nop

    .line 993
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v9

    .line 994
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    const-string v11, "Dropping blacklisted raw event. appId"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 995
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 996
    move/from16 v25, v8

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v8

    .line 997
    move/from16 v26, v13

    iget-object v13, v7, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-virtual {v8, v13}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 998
    invoke-virtual {v9, v11, v12, v8}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 999
    nop

    .line 1000
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzls()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzbo;->zzcn(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_33d

    .line 1001
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzls()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzbo;->zzco(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_33b

    goto :goto_33d

    .line 1002
    :cond_33b
    const/4 v8, 0x0

    goto :goto_33f

    .line 1001
    :cond_33d
    :goto_33d
    nop

    .line 1002
    const/4 v8, 0x1

    :goto_33f
    if-nez v8, :cond_365

    const-string v8, "_err"

    iget-object v9, v7, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_365

    .line 1003
    nop

    .line 1004
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v16

    .line 1005
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    const/16 v18, 0xb

    const-string v19, "_ev"

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    const/16 v21, 0x0

    .line 1006
    move-object/from16 v17, v8

    move-object/from16 v20, v7

    invoke-virtual/range {v16 .. v21}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1191
    :cond_365
    move/from16 v9, v24

    const/4 v13, 0x3

    goto/16 :goto_792

    .line 1007
    :cond_36a
    move/from16 v25, v8

    move/from16 v26, v13

    .line 1008
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzls()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    iget-object v11, v7, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v11}, Lcom/google/android/gms/measurement/internal/zzbo;->zzp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 1009
    if-nez v8, :cond_3ca

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    iget-object v11, v7, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    .line 1010
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1011
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v13, 0x171c4

    if-eq v12, v13, :cond_3ae

    const v13, 0x17331

    if-eq v12, v13, :cond_3a4

    const v13, 0x17333

    if-eq v12, v13, :cond_39a

    goto :goto_3b8

    :cond_39a
    const-string v12, "_ui"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3b8

    const/4 v11, 0x1

    goto :goto_3b9

    :cond_3a4
    const-string v12, "_ug"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3b8

    const/4 v11, 0x2

    goto :goto_3b9

    :cond_3ae
    const-string v12, "_in"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3b8

    const/4 v11, 0x0

    goto :goto_3b9

    :cond_3b8
    :goto_3b8
    const/4 v11, -0x1

    :goto_3b9
    packed-switch v11, :pswitch_data_e48

    .line 1013
    nop

    .line 1014
    const/4 v11, 0x0

    goto :goto_3c1

    .line 1012
    :pswitch_3bf
    nop

    .line 1014
    const/4 v11, 0x1

    :goto_3c1
    if-eqz v11, :cond_3c4

    goto :goto_3ca

    .line 1108
    :cond_3c4
    move-wide/from16 v37, v14

    move/from16 v39, v24

    goto/16 :goto_5cf

    .line 1015
    :cond_3ca
    :goto_3ca
    nop

    .line 1016
    nop

    .line 1017
    iget-object v11, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    if-nez v11, :cond_3d5

    .line 1018
    const/4 v11, 0x0

    new-array v12, v11, [Lcom/google/android/gms/internal/measurement/zzgj;

    iput-object v12, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    .line 1019
    :cond_3d5
    iget-object v11, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    array-length v12, v11

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_3dd
    if-ge v13, v12, :cond_413

    aget-object v9, v11, v13

    .line 1020
    move-object/from16 v28, v11

    const-string v11, "_c"

    move/from16 v29, v12

    iget-object v12, v9, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3f9

    .line 1021
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v9, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    .line 1022
    nop

    .line 1026
    const/16 v18, 0x1

    goto :goto_40c

    .line 1023
    :cond_3f9
    const-string v11, "_r"

    iget-object v12, v9, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_40c

    .line 1024
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v9, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    .line 1025
    nop

    .line 1026
    const/16 v19, 0x1

    :cond_40c
    :goto_40c
    add-int/lit8 v13, v13, 0x1

    .line 1019
    move-object/from16 v11, v28

    move/from16 v12, v29

    goto :goto_3dd

    .line 1027
    :cond_413
    if-nez v18, :cond_456

    if-eqz v8, :cond_456

    .line 1028
    nop

    .line 1029
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v9

    .line 1030
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    const-string v11, "Marking event as conversion"

    .line 1031
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v12

    .line 1032
    iget-object v13, v7, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1033
    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1034
    iget-object v9, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    iget-object v11, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    array-length v11, v11

    const/4 v12, 0x1

    add-int/2addr v11, v12

    .line 1035
    invoke-static {v9, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/google/android/gms/internal/measurement/zzgj;

    .line 1036
    new-instance v11, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-direct {v11}, Lcom/google/android/gms/internal/measurement/zzgj;-><init>()V

    .line 1037
    const-string v12, "_c"

    iput-object v12, v11, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    .line 1038
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v11, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    .line 1039
    array-length v12, v9

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    aput-object v11, v9, v12

    .line 1040
    iput-object v9, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    .line 1041
    :cond_456
    if-nez v19, :cond_497

    .line 1042
    nop

    .line 1043
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v9

    .line 1044
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    const-string v11, "Marking event as real-time"

    .line 1045
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v12

    .line 1046
    iget-object v13, v7, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1047
    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1048
    iget-object v9, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    iget-object v11, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    array-length v11, v11

    const/4 v12, 0x1

    add-int/2addr v11, v12

    .line 1049
    invoke-static {v9, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/google/android/gms/internal/measurement/zzgj;

    .line 1050
    new-instance v11, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-direct {v11}, Lcom/google/android/gms/internal/measurement/zzgj;-><init>()V

    .line 1051
    const-string v12, "_r"

    iput-object v12, v11, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    .line 1052
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v11, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    .line 1053
    array-length v12, v9

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    aput-object v11, v9, v12

    .line 1054
    iput-object v9, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    .line 1055
    :cond_497
    nop

    .line 1056
    nop

    .line 1057
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v28

    .line 1058
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzly()J

    move-result-wide v29

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x1

    .line 1059
    move-object/from16 v31, v9

    invoke-virtual/range {v28 .. v36}, Lcom/google/android/gms/measurement/internal/zzr;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzs;

    move-result-object v9

    .line 1060
    iget-wide v11, v9, Lcom/google/android/gms/measurement/internal/zzs;->zzahx:J

    .line 1061
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v9

    .line 1062
    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v13, v13, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzo;->zzas(Ljava/lang/String;)I

    move-result v9

    move-wide/from16 v37, v14

    int-to-long v13, v9

    cmp-long v9, v11, v13

    if-lez v9, :cond_505

    .line 1063
    const/4 v9, 0x0

    :goto_4cd
    iget-object v11, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    array-length v11, v11

    if-ge v9, v11, :cond_501

    .line 1064
    const-string v11, "_r"

    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    aget-object v12, v12, v9

    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4fe

    .line 1065
    iget-object v11, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    array-length v11, v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    new-array v11, v11, [Lcom/google/android/gms/internal/measurement/zzgj;

    .line 1066
    if-lez v9, :cond_4ef

    .line 1067
    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    const/4 v13, 0x0

    invoke-static {v12, v13, v11, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1068
    :cond_4ef
    array-length v12, v11

    if-ge v9, v12, :cond_4fb

    .line 1069
    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    add-int/lit8 v13, v9, 0x1

    array-length v14, v11

    sub-int/2addr v14, v9

    invoke-static {v12, v13, v11, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1070
    :cond_4fb
    iput-object v11, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    .line 1071
    goto :goto_501

    .line 1072
    :cond_4fe
    add-int/lit8 v9, v9, 0x1

    goto :goto_4cd

    .line 1073
    :cond_501
    :goto_501
    nop

    .line 1074
    move/from16 v9, v24

    goto :goto_506

    :cond_505
    const/4 v9, 0x1

    :goto_506
    iget-object v11, v7, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zzcv(Ljava/lang/String;)Z

    move-result v11

    .line 1075
    if-eqz v11, :cond_5cd

    if-eqz v8, :cond_5cd

    .line 1076
    nop

    .line 1077
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v12

    .line 1078
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzly()J

    move-result-wide v13

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v15, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 1079
    invoke-virtual/range {v12 .. v20}, Lcom/google/android/gms/measurement/internal/zzr;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzs;

    move-result-object v11

    .line 1080
    iget-wide v11, v11, Lcom/google/android/gms/measurement/internal/zzs;->zzahv:J

    .line 1081
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v13

    .line 1082
    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v14, v14, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 1083
    sget-object v15, Lcom/google/android/gms/measurement/internal/zzag;->zzajt:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzo;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag$zza;)I

    move-result v13

    .line 1084
    int-to-long v13, v13

    cmp-long v15, v11, v13

    if-lez v15, :cond_5cd

    .line 1085
    nop

    .line 1086
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v11

    .line 1087
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v11

    const-string v12, "Too many conversions. Not logging as conversion. appId"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v13, v13, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 1088
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 1089
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1090
    nop

    .line 1091
    nop

    .line 1092
    iget-object v11, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    array-length v12, v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_562
    if-ge v13, v12, :cond_58e

    move/from16 v39, v9

    aget-object v9, v11, v13

    .line 1093
    move-object/from16 v40, v11

    const-string v11, "_c"

    move/from16 v41, v12

    iget-object v12, v9, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_579

    .line 1094
    nop

    .line 1097
    move-object v15, v9

    goto :goto_585

    .line 1095
    :cond_579
    const-string v11, "_err"

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_585

    .line 1096
    nop

    .line 1097
    const/4 v14, 0x1

    :cond_585
    :goto_585
    add-int/lit8 v13, v13, 0x1

    .line 1092
    move/from16 v9, v39

    move-object/from16 v11, v40

    move/from16 v12, v41

    goto :goto_562

    .line 1098
    :cond_58e
    move/from16 v39, v9

    if-eqz v14, :cond_5a5

    if-eqz v15, :cond_5a5

    .line 1099
    iget-object v9, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    const/4 v11, 0x1

    new-array v12, v11, [Lcom/google/android/gms/internal/measurement/zzgj;

    const/4 v11, 0x0

    aput-object v15, v12, v11

    invoke-static {v9, v12}, Lcom/google/android/gms/common/util/ArrayUtils;->removeAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/google/android/gms/internal/measurement/zzgj;

    iput-object v9, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    goto :goto_5cf

    .line 1100
    :cond_5a5
    if-eqz v15, :cond_5b4

    .line 1101
    const-string v9, "_err"

    iput-object v9, v15, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    .line 1102
    const-wide/16 v11, 0xa

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v15, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    goto :goto_5cf

    .line 1103
    :cond_5b4
    nop

    .line 1104
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v9

    .line 1105
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    const-string v11, "Did not find conversion parameter. appId"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 1106
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 1107
    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5cf

    .line 1108
    :cond_5cd
    move/from16 v39, v9

    .line 1109
    :goto_5cf
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v9

    .line 1110
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v11, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/google/android/gms/measurement/internal/zzo;->zzbf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_69c

    if-eqz v8, :cond_69c

    .line 1111
    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    .line 1112
    nop

    .line 1113
    nop

    .line 1114
    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    :goto_5e8
    array-length v13, v8

    if-ge v9, v13, :cond_60c

    .line 1115
    const-string/jumbo v13, "value"

    aget-object v14, v8, v9

    iget-object v14, v14, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5fb

    .line 1116
    nop

    .line 1119
    move v11, v9

    goto :goto_609

    .line 1117
    :cond_5fb
    const-string v13, "currency"

    aget-object v14, v8, v9

    iget-object v14, v14, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_609

    .line 1118
    nop

    .line 1119
    move v12, v9

    :cond_609
    :goto_609
    add-int/lit8 v9, v9, 0x1

    goto :goto_5e8

    .line 1120
    :cond_60c
    const/4 v9, -0x1

    if-eq v11, v9, :cond_63f

    .line 1121
    aget-object v9, v8, v11

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    if-nez v9, :cond_641

    aget-object v9, v8, v11

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    if-nez v9, :cond_641

    .line 1122
    nop

    .line 1123
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v9

    .line 1124
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjl()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    const-string v12, "Value must be specified with a numeric type."

    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 1125
    invoke-static {v8, v11}, Lcom/google/android/gms/measurement/internal/zzfk;->zza([Lcom/google/android/gms/internal/measurement/zzgj;I)[Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v8

    .line 1126
    const-string v9, "_c"

    invoke-static {v8, v9}, Lcom/google/android/gms/measurement/internal/zzfk;->zza([Lcom/google/android/gms/internal/measurement/zzgj;Ljava/lang/String;)[Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v8

    .line 1127
    const/16 v9, 0x12

    const-string/jumbo v11, "value"

    invoke-static {v8, v9, v11}, Lcom/google/android/gms/measurement/internal/zzfk;->zza([Lcom/google/android/gms/internal/measurement/zzgj;ILjava/lang/String;)[Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v8

    .line 1128
    nop

    .line 1150
    :cond_63f
    const/4 v13, 0x3

    goto :goto_698

    .line 1129
    :cond_641
    nop

    .line 1130
    const/4 v9, -0x1

    if-ne v12, v9, :cond_649

    .line 1131
    nop

    .line 1142
    const/4 v9, 0x1

    const/4 v13, 0x3

    goto :goto_674

    .line 1132
    :cond_649
    aget-object v9, v8, v12

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    .line 1133
    if-eqz v9, :cond_672

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_657

    goto :goto_673

    .line 1135
    :cond_657
    const/4 v12, 0x0

    :goto_658
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v12, v14, :cond_670

    .line 1136
    invoke-virtual {v9, v12}, Ljava/lang/String;->codePointAt(I)I

    move-result v14

    .line 1137
    invoke-static {v14}, Ljava/lang/Character;->isLetter(I)Z

    move-result v15

    if-nez v15, :cond_66a

    .line 1138
    nop

    .line 1139
    goto :goto_673

    .line 1140
    :cond_66a
    invoke-static {v14}, Ljava/lang/Character;->charCount(I)I

    move-result v14

    add-int/2addr v12, v14

    .line 1141
    goto :goto_658

    .line 1142
    :cond_670
    const/4 v9, 0x0

    goto :goto_674

    .line 1134
    :cond_672
    const/4 v13, 0x3

    .line 1142
    :goto_673
    const/4 v9, 0x1

    :goto_674
    if-eqz v9, :cond_698

    .line 1143
    nop

    .line 1144
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v9

    .line 1145
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjl()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    const-string v12, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 1146
    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 1147
    invoke-static {v8, v11}, Lcom/google/android/gms/measurement/internal/zzfk;->zza([Lcom/google/android/gms/internal/measurement/zzgj;I)[Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v8

    .line 1148
    const-string v9, "_c"

    invoke-static {v8, v9}, Lcom/google/android/gms/measurement/internal/zzfk;->zza([Lcom/google/android/gms/internal/measurement/zzgj;Ljava/lang/String;)[Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v8

    .line 1149
    const/16 v9, 0x13

    const-string v11, "currency"

    invoke-static {v8, v9, v11}, Lcom/google/android/gms/measurement/internal/zzfk;->zza([Lcom/google/android/gms/internal/measurement/zzgj;ILjava/lang/String;)[Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v8

    .line 1150
    :cond_698
    :goto_698
    nop

    .line 1151
    iput-object v8, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    goto :goto_69d

    .line 1152
    :cond_69c
    const/4 v13, 0x3

    .line 1153
    :goto_69d
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v8

    .line 1154
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzag;->zzall:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v8, v9, v11}, Lcom/google/android/gms/measurement/internal/zzo;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag$zza;)Z

    move-result v8

    if-eqz v8, :cond_725

    .line 1155
    const-string v8, "_e"

    iget-object v9, v7, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-wide/16 v11, 0x3e8

    if-eqz v8, :cond_6ed

    .line 1156
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    const-string v8, "_fr"

    invoke-static {v7, v8}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Lcom/google/android/gms/internal/measurement/zzgi;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v8

    if-nez v8, :cond_725

    .line 1157
    if-eqz v6, :cond_6ea

    iget-object v8, v6, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    .line 1158
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v10, 0x0

    sub-long/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long v10, v8, v11

    if-gtz v10, :cond_6ea

    .line 1159
    invoke-direct {v1, v7, v6}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Lcom/google/android/gms/internal/measurement/zzgi;Lcom/google/android/gms/internal/measurement/zzgi;)Z

    move-result v8

    if-eqz v8, :cond_6e9

    .line 1160
    nop

    .line 1161
    nop

    .line 1173
    :goto_6e6
    const/4 v6, 0x0

    const/4 v10, 0x0

    goto :goto_725

    .line 1162
    :cond_6e9
    goto :goto_6eb

    .line 1163
    :cond_6ea
    nop

    .line 1173
    :goto_6eb
    move-object v10, v7

    goto :goto_725

    .line 1164
    :cond_6ed
    const-string v8, "_vs"

    iget-object v9, v7, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_725

    .line 1165
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    const-string v8, "_et"

    invoke-static {v7, v8}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Lcom/google/android/gms/internal/measurement/zzgi;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v8

    if-nez v8, :cond_725

    .line 1166
    if-eqz v10, :cond_723

    iget-object v6, v10, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    .line 1167
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v6, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v6, 0x0

    sub-long/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long v6, v8, v11

    if-gtz v6, :cond_723

    .line 1168
    invoke-direct {v1, v10, v7}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Lcom/google/android/gms/internal/measurement/zzgi;Lcom/google/android/gms/internal/measurement/zzgi;)Z

    move-result v6

    if-eqz v6, :cond_722

    .line 1169
    nop

    .line 1170
    goto :goto_6e6

    .line 1171
    :cond_722
    goto :goto_724

    .line 1172
    :cond_723
    nop

    .line 1173
    :goto_724
    move-object v6, v7

    :cond_725
    :goto_725
    if-eqz v4, :cond_786

    if-nez v5, :cond_786

    .line 1174
    const-string v8, "_e"

    iget-object v9, v7, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_786

    .line 1175
    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    if-eqz v8, :cond_76e

    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    array-length v8, v8

    if-nez v8, :cond_73d

    goto :goto_76e

    .line 1181
    :cond_73d
    nop

    .line 1182
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    const-string v8, "_et"

    invoke-static {v7, v8}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(Lcom/google/android/gms/internal/measurement/zzgi;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 1183
    if-nez v8, :cond_764

    .line 1184
    nop

    .line 1185
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v8

    .line 1186
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v8

    const-string v9, "Engagement event does not include duration. appId"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v11, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 1187
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1188
    invoke-virtual {v8, v9, v11}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_786

    .line 1189
    :cond_764
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v11, 0x0

    add-long v14, v37, v8

    .line 1190
    move-wide/from16 v37, v14

    goto :goto_786

    .line 1176
    :cond_76e
    :goto_76e
    nop

    .line 1177
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v8

    .line 1178
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v8

    const-string v9, "Engagement event does not contain any parameters. appId"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v11, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 1179
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1180
    invoke-virtual {v8, v9, v11}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1190
    :cond_786
    :goto_786
    iget-object v8, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxu:[Lcom/google/android/gms/internal/measurement/zzgi;

    add-int/lit8 v9, v26, 0x1

    aput-object v7, v8, v26

    .line 1191
    move/from16 v26, v9

    move-wide/from16 v14, v37

    move/from16 v9, v39

    :goto_792
    add-int/lit8 v8, v25, 0x1

    .line 988
    move/from16 v13, v26

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_2d0

    .line 1192
    :cond_79a
    move/from16 v24, v9

    move/from16 v26, v13

    move-wide/from16 v37, v14

    if-eqz v5, :cond_7fc

    .line 1193
    move/from16 v13, v26

    move-wide/from16 v14, v37

    const/4 v5, 0x0

    :goto_7a7
    if-ge v5, v13, :cond_7f9

    .line 1194
    iget-object v6, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxu:[Lcom/google/android/gms/internal/measurement/zzgi;

    aget-object v6, v6, v5

    .line 1195
    const-string v7, "_e"

    iget-object v8, v6, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d4

    .line 1196
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    const-string v7, "_fr"

    invoke-static {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Lcom/google/android/gms/internal/measurement/zzgi;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v7

    if-eqz v7, :cond_7d4

    .line 1197
    iget-object v6, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxu:[Lcom/google/android/gms/internal/measurement/zzgi;

    add-int/lit8 v7, v5, 0x1

    iget-object v8, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxu:[Lcom/google/android/gms/internal/measurement/zzgi;

    sub-int v9, v13, v5

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-static {v6, v7, v8, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1198
    add-int/lit8 v13, v13, -0x1

    .line 1199
    add-int/lit8 v5, v5, -0x1

    .line 1200
    goto :goto_7f6

    .line 1201
    :cond_7d4
    if-eqz v4, :cond_7f6

    .line 1202
    nop

    .line 1203
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    const-string v7, "_et"

    invoke-static {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Lcom/google/android/gms/internal/measurement/zzgi;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v6

    .line 1204
    if-eqz v6, :cond_7f6

    .line 1205
    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    .line 1206
    if-eqz v6, :cond_7f6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_7f6

    .line 1207
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x0

    add-long/2addr v14, v6

    .line 1208
    :cond_7f6
    :goto_7f6
    const/4 v6, 0x1

    add-int/2addr v5, v6

    goto :goto_7a7

    .line 1209
    :cond_7f9
    move-wide/from16 v37, v14

    goto :goto_7fe

    :cond_7fc
    move/from16 v13, v26

    :goto_7fe
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzauv:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v13, v5, :cond_810

    .line 1210
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxu:[Lcom/google/android/gms/internal/measurement/zzgi;

    invoke-static {v5, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/gms/internal/measurement/zzgi;

    iput-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxu:[Lcom/google/android/gms/internal/measurement/zzgi;

    .line 1211
    :cond_810
    if-eqz v4, :cond_8e6

    .line 1212
    nop

    .line 1213
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    const-string v6, "_lte"

    .line 1214
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzr;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v4

    .line 1215
    if-eqz v4, :cond_84d

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    if-nez v5, :cond_826

    goto :goto_84d

    .line 1220
    :cond_826
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzft;

    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    const-string v8, "auto"

    const-string v9, "_lte"

    .line 1221
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    .line 1222
    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v10

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 1223
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v4, 0x0

    add-long v12, v12, v37

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v6, v5

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 1224
    move-object v4, v5

    goto :goto_86a

    .line 1216
    :cond_84d
    :goto_84d
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzft;

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    const-string v27, "auto"

    const-string v28, "_lte"

    .line 1217
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    .line 1218
    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v29

    .line 1219
    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    invoke-direct/range {v25 .. v31}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 1224
    :goto_86a
    new-instance v5, Lcom/google/android/gms/internal/measurement/zzgo;

    invoke-direct {v5}, Lcom/google/android/gms/internal/measurement/zzgo;-><init>()V

    .line 1225
    const-string v6, "_lte"

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    .line 1226
    nop

    .line 1227
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    .line 1228
    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/zzgo;->zzazg:Ljava/lang/Long;

    .line 1229
    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    iput-object v6, v5, Lcom/google/android/gms/internal/measurement/zzgo;->zzaxq:Ljava/lang/Long;

    .line 1230
    nop

    .line 1231
    const/4 v6, 0x0

    :goto_88c
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxv:[Lcom/google/android/gms/internal/measurement/zzgo;

    array-length v7, v7

    if-ge v6, v7, :cond_8aa

    .line 1232
    const-string v7, "_lte"

    iget-object v8, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxv:[Lcom/google/android/gms/internal/measurement/zzgo;

    aget-object v8, v8, v6

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8a7

    .line 1233
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxv:[Lcom/google/android/gms/internal/measurement/zzgo;

    aput-object v5, v7, v6

    .line 1234
    nop

    .line 1235
    nop

    .line 1237
    const/4 v6, 0x1

    goto :goto_8ab

    .line 1236
    :cond_8a7
    add-int/lit8 v6, v6, 0x1

    goto :goto_88c

    .line 1237
    :cond_8aa
    const/4 v6, 0x0

    :goto_8ab
    if-nez v6, :cond_8c7

    .line 1238
    iget-object v6, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxv:[Lcom/google/android/gms/internal/measurement/zzgo;

    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxv:[Lcom/google/android/gms/internal/measurement/zzgo;

    array-length v7, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    .line 1239
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/gms/internal/measurement/zzgo;

    iput-object v6, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxv:[Lcom/google/android/gms/internal/measurement/zzgo;

    .line 1240
    iget-object v6, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxv:[Lcom/google/android/gms/internal/measurement/zzgo;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxv:[Lcom/google/android/gms/internal/measurement/zzgo;

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aput-object v5, v6, v7

    .line 1241
    :cond_8c7
    const-wide/16 v5, 0x0

    cmp-long v7, v37, v5

    if-lez v7, :cond_8e6

    .line 1242
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzft;)Z

    .line 1243
    nop

    .line 1244
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v5

    .line 1245
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    const-string v6, "Updated lifetime engagement user property with value. Value"

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    .line 1246
    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1247
    :cond_8e6
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxv:[Lcom/google/android/gms/internal/measurement/zzgo;

    iget-object v6, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxu:[Lcom/google/android/gms/internal/measurement/zzgi;

    .line 1248
    nop

    .line 1249
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1250
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjs()Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v7

    invoke-virtual {v7, v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzk;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzgi;[Lcom/google/android/gms/internal/measurement/zzgo;)[Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v4

    .line 1251
    iput-object v4, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zzaym:[Lcom/google/android/gms/internal/measurement/zzgg;

    .line 1252
    nop

    .line 1253
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v4

    .line 1254
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzo;->zzav(Ljava/lang/String;)Z

    move-result v4
    :try_end_909
    .catchall {:try_start_283 .. :try_end_909} :catchall_e3d

    if-eqz v4, :cond_c4c

    .line 1255
    :try_start_90b
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1256
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxu:[Lcom/google/android/gms/internal/measurement/zzgi;

    array-length v5, v5

    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/zzgi;

    .line 1257
    nop

    .line 1258
    nop

    .line 1259
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v6

    .line 1260
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzmk()Ljava/security/SecureRandom;

    move-result-object v6

    .line 1261
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxu:[Lcom/google/android/gms/internal/measurement/zzgi;

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_926
    if-ge v9, v8, :cond_c11

    aget-object v11, v7, v9

    .line 1262
    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    const-string v13, "_ep"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_932
    .catchall {:try_start_90b .. :try_end_932} :catchall_c46

    if-eqz v12, :cond_9b5

    .line 1263
    nop

    .line 1264
    :try_start_935
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    const-string v12, "_en"

    invoke-static {v11, v12}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(Lcom/google/android/gms/internal/measurement/zzgi;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1265
    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 1266
    if-nez v13, :cond_958

    .line 1267
    nop

    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v13

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v14, v14, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    invoke-virtual {v13, v14, v12}, Lcom/google/android/gms/measurement/internal/zzr;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v13

    .line 1269
    invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    :cond_958
    iget-object v12, v13, Lcom/google/android/gms/measurement/internal/zzaa;->zzaim:Ljava/lang/Long;

    if-nez v12, :cond_9a7

    .line 1271
    iget-object v12, v13, Lcom/google/android/gms/measurement/internal/zzaa;->zzain:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v12, v14, v16

    if-lez v12, :cond_976

    .line 1272
    nop

    .line 1273
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    const-string v14, "_sr"

    iget-object v15, v13, Lcom/google/android/gms/measurement/internal/zzaa;->zzain:Ljava/lang/Long;

    .line 1274
    invoke-static {v12, v14, v15}, Lcom/google/android/gms/measurement/internal/zzfq;->zza([Lcom/google/android/gms/internal/measurement/zzgj;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v12

    iput-object v12, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    .line 1275
    :cond_976
    iget-object v12, v13, Lcom/google/android/gms/measurement/internal/zzaa;->zzaio:Ljava/lang/Boolean;

    if-eqz v12, :cond_994

    iget-object v12, v13, Lcom/google/android/gms/measurement/internal/zzaa;->zzaio:Ljava/lang/Boolean;

    .line 1276
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_994

    .line 1277
    nop

    .line 1278
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    iget-object v12, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    const-string v13, "_efs"

    .line 1279
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 1280
    invoke-static {v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzfq;->zza([Lcom/google/android/gms/internal/measurement/zzgj;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v12

    iput-object v12, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    .line 1281
    :cond_994
    add-int/lit8 v12, v10, 0x1

    aput-object v11, v5, v10
    :try_end_998
    .catchall {:try_start_935 .. :try_end_998} :catchall_e3d

    .line 1373
    move-object/from16 v50, v2

    move-object/from16 v44, v3

    move-object/from16 v49, v6

    move-object/from16 v42, v7

    move/from16 v43, v8

    move/from16 v45, v9

    move v10, v12

    goto/16 :goto_c01

    :cond_9a7
    move-object/from16 v50, v2

    move-object/from16 v44, v3

    move-object/from16 v49, v6

    move-object/from16 v42, v7

    move/from16 v43, v8

    move/from16 v45, v9

    goto/16 :goto_c01

    .line 1282
    :cond_9b5
    nop

    .line 1283
    :try_start_9b6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzls()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v13, v13, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 1284
    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzbo;->zzcm(Ljava/lang/String;)J

    move-result-wide v12

    .line 1285
    nop

    .line 1286
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    .line 1287
    iget-object v14, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15, v12, v13}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc(JJ)J

    move-result-wide v14

    .line 1288
    nop

    .line 1289
    move-object/from16 v42, v7

    const-string v7, "_dbg"

    move/from16 v43, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1290
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18
    :try_end_9e1
    .catchall {:try_start_9b6 .. :try_end_9e1} :catchall_c46

    if-nez v18, :cond_a2c

    if-nez v8, :cond_9e6

    goto :goto_a2c

    .line 1292
    :cond_9e6
    move-object/from16 v44, v3

    :try_start_9e8
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    move/from16 v45, v9

    array-length v9, v3

    move-wide/from16 v46, v12

    const/4 v12, 0x0

    :goto_9f0
    if-ge v12, v9, :cond_a2b

    aget-object v13, v3, v12

    .line 1293
    move-object/from16 v48, v3

    iget-object v3, v13, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a26

    .line 1294
    instance-of v3, v8, Ljava/lang/Long;

    if-eqz v3, :cond_a0a

    iget-object v3, v13, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a22

    :cond_a0a
    instance-of v3, v8, Ljava/lang/String;

    if-eqz v3, :cond_a16

    iget-object v3, v13, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    .line 1295
    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a22

    :cond_a16
    instance-of v3, v8, Ljava/lang/Double;

    if-eqz v3, :cond_a24

    iget-object v3, v13, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    .line 1296
    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a24

    .line 1300
    :cond_a22
    const/4 v3, 0x1

    goto :goto_a33

    .line 1296
    :cond_a24
    nop

    .line 1297
    goto :goto_a32

    .line 1298
    :cond_a26
    add-int/lit8 v12, v12, 0x1

    .line 1292
    move-object/from16 v3, v48

    goto :goto_9f0

    .line 1299
    :cond_a2b
    goto :goto_a32

    .line 1291
    :cond_a2c
    :goto_a2c
    move-object/from16 v44, v3

    move/from16 v45, v9

    move-wide/from16 v46, v12

    .line 1300
    :goto_a32
    const/4 v3, 0x0

    :goto_a33
    if-nez v3, :cond_a45

    .line 1301
    nop

    .line 1302
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzls()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v3

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    iget-object v8, v11, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/measurement/internal/zzbo;->zzq(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    goto :goto_a46

    .line 1303
    :cond_a45
    const/4 v12, 0x1

    :goto_a46
    if-gtz v12, :cond_a6a

    .line 1304
    nop

    .line 1305
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 1306
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v7, "Sample rate must be positive. event, rate"

    iget-object v8, v11, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    .line 1307
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1308
    add-int/lit8 v3, v10, 0x1

    aput-object v11, v5, v10
    :try_end_a62
    .catchall {:try_start_9e8 .. :try_end_a62} :catchall_e3d

    .line 1309
    nop

    .line 1373
    move-object/from16 v50, v2

    move v10, v3

    move-object/from16 v49, v6

    goto/16 :goto_c01

    .line 1310
    :cond_a6a
    :try_start_a6a
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzaa;
    :try_end_a72
    .catchall {:try_start_a6a .. :try_end_a72} :catchall_c46

    .line 1311
    if-nez v3, :cond_abf

    .line 1312
    :try_start_a74
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v3

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    iget-object v8, v11, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/measurement/internal/zzr;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v3

    .line 1313
    if-nez v3, :cond_abf

    .line 1314
    nop

    .line 1315
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 1316
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v7, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    iget-object v9, v11, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    .line 1317
    invoke-virtual {v3, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1318
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    iget-object v8, v11, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    const-wide/16 v28, 0x1

    const-wide/16 v30, 0x1

    iget-object v9, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    .line 1319
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v25, v3

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    invoke-direct/range {v25 .. v39}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    :try_end_abf
    .catchall {:try_start_a74 .. :try_end_abf} :catchall_e3d

    .line 1320
    :cond_abf
    nop

    .line 1321
    :try_start_ac0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    const-string v7, "_eid"

    invoke-static {v11, v7}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(Lcom/google/android/gms/internal/measurement/zzgi;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 1322
    if-eqz v7, :cond_acf

    const/4 v8, 0x1

    goto :goto_ad0

    :cond_acf
    const/4 v8, 0x0

    :goto_ad0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8
    :try_end_ad4
    .catchall {:try_start_ac0 .. :try_end_ad4} :catchall_c46

    .line 1323
    const/4 v9, 0x1

    if-ne v12, v9, :cond_afe

    .line 1324
    add-int/lit8 v7, v10, 0x1

    :try_start_ad9
    aput-object v11, v5, v10

    .line 1325
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_af7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzaa;->zzaim:Ljava/lang/Long;

    if-nez v8, :cond_aed

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzaa;->zzain:Ljava/lang/Long;

    if-nez v8, :cond_aed

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzaa;->zzaio:Ljava/lang/Boolean;

    if-eqz v8, :cond_af7

    .line 1326
    :cond_aed
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v8, v8}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v3

    .line 1327
    iget-object v8, v11, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-interface {v4, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_af7
    .catchall {:try_start_ad9 .. :try_end_af7} :catchall_e3d

    .line 1373
    :cond_af7
    move-object/from16 v50, v2

    move-object/from16 v49, v6

    move v10, v7

    goto/16 :goto_c01

    .line 1328
    :cond_afe
    :try_start_afe
    invoke-virtual {v6, v12}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v9
    :try_end_b02
    .catchall {:try_start_afe .. :try_end_b02} :catchall_c46

    if-nez v9, :cond_b41

    .line 1329
    nop

    .line 1330
    :try_start_b05
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    iget-object v7, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    const-string v9, "_sr"

    int-to-long v12, v12

    .line 1331
    move-object/from16 v49, v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1332
    invoke-static {v7, v9, v6}, Lcom/google/android/gms/measurement/internal/zzfq;->zza([Lcom/google/android/gms/internal/measurement/zzgj;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v6

    iput-object v6, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    .line 1333
    add-int/lit8 v6, v10, 0x1

    aput-object v11, v5, v10

    .line 1334
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b2d

    .line 1335
    nop

    .line 1336
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v7, v8}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v3

    .line 1337
    :cond_b2d
    iget-object v7, v11, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    iget-object v8, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    .line 1338
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9, v14, v15}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v3

    .line 1339
    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b3c
    .catchall {:try_start_b05 .. :try_end_b3c} :catchall_e3d

    .line 1373
    move-object/from16 v50, v2

    move v10, v6

    goto/16 :goto_c01

    .line 1340
    :cond_b41
    move-object/from16 v49, v6

    .line 1341
    :try_start_b43
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v6

    .line 1342
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzo;->zzbh(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b81

    .line 1343
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzaa;->zzail:Ljava/lang/Long;
    :try_end_b55
    .catchall {:try_start_b43 .. :try_end_b55} :catchall_c46

    if-eqz v6, :cond_b62

    .line 1344
    :try_start_b57
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzaa;->zzail:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v18
    :try_end_b5d
    .catchall {:try_start_b57 .. :try_end_b5d} :catchall_e3d

    .line 1348
    move-object/from16 v50, v2

    move-object/from16 v51, v7

    goto :goto_b78

    .line 1345
    :cond_b62
    nop

    .line 1346
    :try_start_b63
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    .line 1347
    iget-object v6, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/Long;

    move-object/from16 v50, v2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object/from16 v51, v7

    move-wide/from16 v6, v46

    invoke-static {v1, v2, v6, v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc(JJ)J

    move-result-wide v18

    .line 1348
    :goto_b78
    cmp-long v1, v18, v14

    if-eqz v1, :cond_b7e

    .line 1349
    const/4 v1, 0x1

    goto :goto_b80

    .line 1348
    :cond_b7e
    nop

    .line 1349
    const/4 v1, 0x0

    :goto_b80
    goto :goto_b9e

    .line 1350
    :cond_b81
    move-object/from16 v50, v2

    move-object/from16 v51, v7

    iget-wide v1, v3, Lcom/google/android/gms/measurement/internal/zzaa;->zzaik:J

    .line 1351
    iget-object v6, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    .line 1352
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v9, 0x0

    sub-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v6, 0x5265c00

    cmp-long v9, v1, v6

    if-ltz v9, :cond_b9c

    .line 1353
    const/4 v1, 0x1

    goto :goto_b9e

    .line 1352
    :cond_b9c
    nop

    .line 1353
    const/4 v1, 0x0

    :goto_b9e
    if-eqz v1, :cond_bef

    .line 1354
    nop

    .line 1355
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    const-string v2, "_efs"

    .line 1356
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1357
    invoke-static {v1, v2, v6}, Lcom/google/android/gms/measurement/internal/zzfq;->zza([Lcom/google/android/gms/internal/measurement/zzgj;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    .line 1358
    nop

    .line 1359
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    const-string v2, "_sr"

    int-to-long v6, v12

    .line 1360
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1361
    invoke-static {v1, v2, v9}, Lcom/google/android/gms/measurement/internal/zzfq;->zza([Lcom/google/android/gms/internal/measurement/zzgj;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    .line 1362
    add-int/lit8 v1, v10, 0x1

    aput-object v11, v5, v10

    .line 1363
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_bde

    .line 1364
    nop

    .line 1365
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v2, v7}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v3

    .line 1366
    :cond_bde
    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    iget-object v6, v11, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    .line 1367
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v14, v15}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v3

    .line 1368
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    move v10, v1

    goto :goto_c01

    .line 1369
    :cond_bef
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c01

    .line 1370
    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    .line 1371
    move-object/from16 v7, v51

    const/4 v2, 0x0

    invoke-virtual {v3, v7, v2, v2}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v3

    .line 1372
    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    :cond_c01
    :goto_c01
    add-int/lit8 v9, v45, 0x1

    .line 1261
    move-object/from16 v7, v42

    move/from16 v8, v43

    move-object/from16 v3, v44

    move-object/from16 v6, v49

    move-object/from16 v2, v50

    move-object/from16 v1, p0

    goto/16 :goto_926

    .line 1374
    :cond_c11
    move-object/from16 v50, v2

    move-object/from16 v44, v3

    move-object/from16 v1, v44

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxu:[Lcom/google/android/gms/internal/measurement/zzgi;

    array-length v2, v2

    if-ge v10, v2, :cond_c24

    .line 1375
    invoke-static {v5, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/measurement/zzgi;

    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxu:[Lcom/google/android/gms/internal/measurement/zzgi;

    .line 1376
    :cond_c24
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1377
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzaa;)V
    :try_end_c45
    .catchall {:try_start_b63 .. :try_end_c45} :catchall_c46

    .line 1378
    goto :goto_c2c

    .line 1459
    :catchall_c46
    move-exception v0

    move-object v1, v0

    move-object/from16 v5, p0

    goto/16 :goto_e40

    .line 1379
    :cond_c4c
    move-object/from16 v50, v2

    move-object v1, v3

    :cond_c4f
    const-wide v2, 0x7fffffffffffffffL

    :try_start_c54
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxx:Ljava/lang/Long;

    .line 1380
    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxy:Ljava/lang/Long;

    .line 1381
    const/4 v2, 0x0

    :goto_c63
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxu:[Lcom/google/android/gms/internal/measurement/zzgi;

    array-length v3, v3
    :try_end_c66
    .catchall {:try_start_c54 .. :try_end_c66} :catchall_e1b

    if-ge v2, v3, :cond_c97

    .line 1382
    :try_start_c68
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxu:[Lcom/google/android/gms/internal/measurement/zzgi;

    aget-object v3, v3, v2

    .line 1383
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxx:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_c80

    .line 1384
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxx:Ljava/lang/Long;

    .line 1385
    :cond_c80
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxy:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_c94

    .line 1386
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxy:Ljava/lang/Long;
    :try_end_c94
    .catchall {:try_start_c68 .. :try_end_c94} :catchall_c46

    .line 1387
    :cond_c94
    add-int/lit8 v2, v2, 0x1

    goto :goto_c63

    .line 1388
    :cond_c97
    move-object/from16 v2, v50

    :try_start_c99
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 1389
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzr;->zzbo(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v4
    :try_end_ca5
    .catchall {:try_start_c99 .. :try_end_ca5} :catchall_e1b

    .line 1390
    if-nez v4, :cond_cc2

    .line 1391
    nop

    .line 1392
    move-object/from16 v5, p0

    :try_start_caa
    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    .line 1393
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v6, "Bundling raw events w/o app info. appId"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 1394
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1395
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d20

    .line 1396
    :cond_cc2
    move-object/from16 v5, p0

    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxu:[Lcom/google/android/gms/internal/measurement/zzgi;

    array-length v6, v6

    if-lez v6, :cond_d20

    .line 1397
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzhe()J

    move-result-wide v6

    .line 1398
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_cd8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_cd9

    :cond_cd8
    const/4 v8, 0x0

    :goto_cd9
    iput-object v8, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaya:Ljava/lang/Long;

    .line 1399
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzhd()J

    move-result-wide v8

    .line 1400
    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_ce6

    .line 1401
    goto :goto_ce7

    .line 1402
    :cond_ce6
    move-wide v6, v8

    :goto_ce7
    cmp-long v8, v6, v10

    if-eqz v8, :cond_cf0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_cf1

    :cond_cf0
    const/4 v6, 0x0

    :goto_cf1
    iput-object v6, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxz:Ljava/lang/Long;

    .line 1403
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzhm()V

    .line 1404
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzhj()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzayk:Ljava/lang/Integer;

    .line 1405
    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxx:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    .line 1406
    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxy:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzt(J)V

    .line 1407
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzhu()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzagy:Ljava/lang/String;

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 1409
    :cond_d20
    :goto_d20
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxu:[Lcom/google/android/gms/internal/measurement/zzgi;

    array-length v4, v4

    if-lez v4, :cond_d7a

    .line 1410
    nop

    .line 1411
    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    .line 1412
    nop

    .line 1413
    nop

    .line 1414
    nop

    .line 1415
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzls()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v4

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzbo;->zzci(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzge;

    move-result-object v4

    .line 1416
    if-eqz v4, :cond_d46

    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzge;->zzawx:Ljava/lang/Long;

    if-nez v6, :cond_d41

    goto :goto_d46

    .line 1424
    :cond_d41
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzge;->zzawx:Ljava/lang/Long;

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzayr:Ljava/lang/Long;

    goto :goto_d71

    .line 1417
    :cond_d46
    :goto_d46
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/zzgl;->zzafx:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d59

    .line 1418
    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzgl;->zzayr:Ljava/lang/Long;

    goto :goto_d71

    .line 1419
    :cond_d59
    nop

    .line 1420
    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    .line 1421
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v6, "Did not find measurement config or missing version info. appId"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v7, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 1422
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1423
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1425
    :goto_d71
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v4

    move/from16 v9, v24

    invoke-virtual {v4, v1, v9}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/internal/measurement/zzgl;Z)Z

    .line 1426
    :cond_d7a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzauu:Ljava/util/List;

    .line 1427
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 1429
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 1430
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1431
    const/4 v6, 0x0

    :goto_d91
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_dae

    .line 1432
    if-eqz v6, :cond_d9e

    .line 1433
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    :cond_d9e
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1435
    add-int/lit8 v6, v6, 0x1

    goto :goto_d91

    .line 1436
    :cond_dae
    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 1438
    const-string v7, "raw_events"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1439
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v4, v6, :cond_de1

    .line 1440
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1441
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v6, "Deleted fewer rows from raw events table than expected"

    .line 1442
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1443
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1444
    invoke-virtual {v1, v6, v4, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1445
    :cond_de1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    .line 1446
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_de9
    .catchall {:try_start_caa .. :try_end_de9} :catchall_e3a

    .line 1447
    :try_start_de9
    const-string v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v2, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_df7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_de9 .. :try_end_df7} :catch_df8
    .catchall {:try_start_de9 .. :try_end_df7} :catchall_e3a

    .line 1448
    goto :goto_e0b

    .line 1449
    :catch_df8
    move-exception v0

    move-object v2, v0

    .line 1450
    :try_start_dfa
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1451
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v4, "Failed to remove unused event metadata. appId"

    .line 1452
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1453
    :goto_e0b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzr;->setTransactionSuccessful()V
    :try_end_e12
    .catchall {:try_start_dfa .. :try_end_e12} :catchall_e3a

    .line 1454
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    .line 1455
    const/4 v1, 0x1

    return v1

    .line 1459
    :catchall_e1b
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_e3f

    .line 1456
    :cond_e1f
    move-object v5, v1

    :try_start_e20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzr;->setTransactionSuccessful()V
    :try_end_e27
    .catchall {:try_start_e20 .. :try_end_e27} :catchall_e3a

    .line 1457
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    .line 1458
    const/4 v1, 0x0

    return v1

    .line 970
    :catchall_e30
    move-exception v0

    :goto_e31
    move-object v5, v1

    goto/16 :goto_269

    :goto_e34
    if-eqz v8, :cond_e3c

    .line 971
    :try_start_e36
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_e3c

    .line 1459
    :catchall_e3a
    move-exception v0

    goto :goto_e3f

    .line 971
    :cond_e3c
    :goto_e3c
    throw v1
    :try_end_e3d
    .catchall {:try_start_e36 .. :try_end_e3d} :catchall_e3a

    .line 1459
    :catchall_e3d
    move-exception v0

    move-object v5, v1

    :goto_e3f
    move-object v1, v0

    :goto_e40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    throw v1

    :pswitch_data_e48
    .packed-switch 0x0
        :pswitch_3bf
        :pswitch_3bf
        :pswitch_3bf
    .end packed-switch
.end method

.method private final zzg(Lcom/google/android/gms/measurement/internal/zzi;)Lcom/google/android/gms/measurement/internal/zzg;
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 2630
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 2631
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 2632
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2633
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2634
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzr;->zzbo(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    .line 2635
    nop

    .line 2636
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v1

    .line 2637
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzbb;->zzcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2638
    nop

    .line 2639
    const/4 v2, 0x1

    if-nez v0, :cond_46

    .line 2640
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzbu;Ljava/lang/String;)V

    .line 2641
    nop

    .line 2642
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v3

    .line 2643
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzmm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzal(Ljava/lang/String;)V

    .line 2644
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzao(Ljava/lang/String;)V

    .line 2645
    nop

    .line 2652
    :goto_44
    const/4 v1, 0x1

    goto :goto_63

    .line 2646
    :cond_46
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 2647
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzao(Ljava/lang/String;)V

    .line 2648
    nop

    .line 2649
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v1

    .line 2650
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzmm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal(Ljava/lang/String;)V

    .line 2651
    goto :goto_44

    .line 2652
    :cond_62
    const/4 v1, 0x0

    :goto_63
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzafx:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_76

    .line 2653
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzafx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzam(Ljava/lang/String;)V

    .line 2654
    nop

    .line 2655
    const/4 v1, 0x1

    :cond_76
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagk:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhb()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_89

    .line 2656
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzan(Ljava/lang/String;)V

    .line 2657
    nop

    .line 2658
    const/4 v1, 0x1

    :cond_89
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzafz:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a4

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzafz:Ljava/lang/String;

    .line 2659
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->getFirebaseInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a4

    .line 2660
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzafz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzap(Ljava/lang/String;)V

    .line 2661
    nop

    .line 2662
    const/4 v1, 0x1

    :cond_a4
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzadt:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_bd

    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzadt:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhh()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_bd

    .line 2663
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzadt:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzv(J)V

    .line 2664
    nop

    .line 2665
    const/4 v1, 0x1

    :cond_bd
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzts:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d8

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzts:Ljava/lang/String;

    .line 2666
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d8

    .line 2667
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzts:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->setAppVersion(Ljava/lang/String;)V

    .line 2668
    nop

    .line 2669
    const/4 v1, 0x1

    :cond_d8
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagd:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhf()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_e9

    .line 2670
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagd:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzu(J)V

    .line 2671
    nop

    .line 2672
    const/4 v1, 0x1

    :cond_e9
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzage:Ljava/lang/String;

    if-eqz v3, :cond_100

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzage:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_100

    .line 2673
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaq(Ljava/lang/String;)V

    .line 2674
    nop

    .line 2675
    const/4 v1, 0x1

    :cond_100
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagf:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhi()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_111

    .line 2676
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagf:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzw(J)V

    .line 2677
    nop

    .line 2678
    const/4 v1, 0x1

    :cond_111
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagg:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->isMeasurementEnabled()Z

    move-result v4

    if-eq v3, v4, :cond_120

    .line 2679
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagg:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->setMeasurementEnabled(Z)V

    .line 2680
    nop

    .line 2681
    const/4 v1, 0x1

    :cond_120
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagy:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13b

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagy:Ljava/lang/String;

    .line 2682
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzht()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13b

    .line 2683
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzar(Ljava/lang/String;)V

    .line 2684
    nop

    .line 2685
    const/4 v1, 0x1

    :cond_13b
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagh:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhv()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_14c

    .line 2686
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagh:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzag(J)V

    .line 2687
    nop

    .line 2688
    const/4 v1, 0x1

    :cond_14c
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagi:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhw()Z

    move-result v4

    if-eq v3, v4, :cond_15b

    .line 2689
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagi:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Z)V

    .line 2690
    nop

    .line 2691
    const/4 v1, 0x1

    :cond_15b
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagj:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhx()Z

    move-result v4

    if-eq v3, v4, :cond_16a

    .line 2692
    iget-boolean p1, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagj:Z

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(Z)V

    .line 2693
    nop

    .line 2694
    const/4 v1, 0x1

    :cond_16a
    if-eqz v1, :cond_173

    .line 2695
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 2696
    :cond_173
    return-object v0
.end method

.method private final zzls()Lcom/google/android/gms/measurement/internal/zzbo;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzatu:Lcom/google/android/gms/measurement/internal/zzbo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Lcom/google/android/gms/measurement/internal/zzfj;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzatu:Lcom/google/android/gms/measurement/internal/zzbo;

    return-object v0
.end method

.method private final zzlu()Lcom/google/android/gms/measurement/internal/zzaz;
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzatx:Lcom/google/android/gms/measurement/internal/zzaz;

    if-eqz v0, :cond_7

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzatx:Lcom/google/android/gms/measurement/internal/zzaz;

    return-object v0

    .line 105
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzlv()Lcom/google/android/gms/measurement/internal/zzfg;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaty:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Lcom/google/android/gms/measurement/internal/zzfj;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaty:Lcom/google/android/gms/measurement/internal/zzfg;

    return-object v0
.end method

.method private final zzly()J
    .registers 9

    .line 136
    nop

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 139
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v2

    .line 140
    nop

    .line 141
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcq;->zzcl()V

    .line 142
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 143
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzbb;->zzanp:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbe;->get()J

    move-result-wide v3

    .line 144
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_3c

    .line 145
    const-wide/16 v3, 0x1

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzmk()Ljava/security/SecureRandom;

    move-result-object v5

    const v6, 0x5265c00

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 146
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzbb;->zzanp:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzbe;->set(J)V

    .line 147
    :cond_3c
    nop

    .line 148
    const/4 v2, 0x0

    add-long/2addr v0, v3

    .line 149
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzma()Z
    .registers 2

    .line 1601
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 1602
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 1603
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->zzim()Z

    move-result v0

    .line 1604
    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->zzih()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    return v0

    :cond_21
    :goto_21
    const/4 v0, 0x1

    return v0
.end method

.method private final zzmb()V
    .registers 19
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1738
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 1739
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 1740
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmf()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1741
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v1

    .line 1742
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzag;->zzalp:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzo;->zza(Lcom/google/android/gms/measurement/internal/zzag$zza;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1743
    return-void

    .line 1744
    :cond_1d
    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaue:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_64

    .line 1745
    nop

    .line 1746
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 1747
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 1748
    const-wide/32 v5, 0x36ee80

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaue:J

    sub-long/2addr v1, v7

    .line 1749
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long/2addr v5, v1

    .line 1750
    cmp-long v1, v5, v3

    if-lez v1, :cond_62

    .line 1751
    nop

    .line 1752
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1753
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 1754
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1755
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1756
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlu()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaz;->unregister()V

    .line 1757
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlv()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfg;->cancel()V

    .line 1758
    return-void

    .line 1759
    :cond_62
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaue:J

    .line 1760
    :cond_64
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzkv()Z

    move-result v1

    if-eqz v1, :cond_28f

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzma()Z

    move-result v1

    if-nez v1, :cond_74

    goto/16 :goto_28f

    .line 1767
    :cond_74
    nop

    .line 1768
    nop

    .line 1769
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 1770
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 1771
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzag;->zzakg:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzag$zza;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 1772
    nop

    .line 1773
    nop

    .line 1774
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzr;->zzin()Z

    move-result v7

    if-nez v7, :cond_a9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzr;->zzii()Z

    move-result v7

    if-eqz v7, :cond_a7

    goto :goto_a9

    .line 1775
    :cond_a7
    const/4 v7, 0x0

    goto :goto_ab

    .line 1774
    :cond_a9
    :goto_a9
    nop

    .line 1775
    const/4 v7, 0x1

    :goto_ab
    if-eqz v7, :cond_e9

    .line 1776
    nop

    .line 1777
    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v9

    .line 1778
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzo;->zzid()Ljava/lang/String;

    move-result-object v9

    .line 1779
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d7

    const-string v10, ".none."

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d7

    .line 1780
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzag;->zzakb:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzag$zza;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 1781
    goto :goto_fa

    .line 1782
    :cond_d7
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzag;->zzaka:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzag$zza;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 1783
    nop

    .line 1784
    goto :goto_fa

    .line 1785
    :cond_e9
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzag;->zzajz:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzag$zza;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 1786
    nop

    .line 1787
    :goto_fa
    nop

    .line 1788
    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v11

    .line 1789
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzbb;->zzanl:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzbe;->get()J

    move-result-wide v11

    .line 1790
    nop

    .line 1791
    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v13

    .line 1792
    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzbb;->zzanm:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzbe;->get()J

    move-result-wide v13

    .line 1793
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v15

    move-wide/from16 v16, v9

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzr;->zzik()J

    move-result-wide v8

    .line 1794
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzr;->zzil()J

    move-result-wide v3

    .line 1795
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 1796
    const-wide/16 v8, 0x0

    cmp-long v10, v3, v8

    if-nez v10, :cond_135

    .line 1797
    nop

    .line 1821
    :goto_131
    const-wide/16 v5, 0x0

    goto/16 :goto_1b5

    .line 1798
    :cond_135
    const/4 v8, 0x0

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 1799
    sub-long/2addr v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v1, v8

    .line 1800
    sub-long/2addr v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long/2addr v1, v10

    .line 1801
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1802
    add-long/2addr v5, v3

    .line 1803
    if-eqz v7, :cond_15d

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_15d

    .line 1804
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    add-long v5, v5, v16

    .line 1805
    :cond_15d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v7

    move-wide/from16 v10, v16

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(JJ)Z

    move-result v7

    if-nez v7, :cond_16b

    .line 1806
    add-long/2addr v8, v10

    .line 1807
    move-wide v5, v8

    :cond_16b
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_1b4

    cmp-long v7, v1, v3

    if-ltz v7, :cond_1b4

    .line 1808
    nop

    .line 1809
    nop

    .line 1810
    const/4 v3, 0x0

    :goto_178
    const/16 v4, 0x14

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzag;->zzaki:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzag$zza;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1811
    if-ge v3, v4, :cond_1b2

    .line 1812
    const-wide/16 v9, 0x1

    shl-long/2addr v9, v3

    .line 1813
    nop

    .line 1814
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzag;->zzakh:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzag$zza;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 1815
    mul-long v11, v11, v9

    add-long/2addr v5, v11

    .line 1816
    cmp-long v4, v5, v1

    if-lez v4, :cond_1af

    .line 1817
    goto :goto_1b5

    .line 1818
    :cond_1af
    add-int/lit8 v3, v3, 0x1

    goto :goto_178

    .line 1819
    :cond_1b2
    goto/16 :goto_131

    .line 1820
    :cond_1b4
    nop

    .line 1821
    :goto_1b5
    nop

    .line 1822
    const-wide/16 v1, 0x0

    cmp-long v3, v5, v1

    if-nez v3, :cond_1db

    .line 1823
    nop

    .line 1824
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1825
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 1826
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlu()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaz;->unregister()V

    .line 1827
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlv()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfg;->cancel()V

    .line 1828
    return-void

    .line 1829
    :cond_1db
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlt()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzfb()Z

    move-result v1

    if-nez v1, :cond_204

    .line 1830
    nop

    .line 1831
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1832
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 1833
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlu()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaz;->zzey()V

    .line 1834
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlv()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfg;->cancel()V

    .line 1835
    return-void

    .line 1836
    :cond_204
    nop

    .line 1837
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v1

    .line 1838
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbb;->zzann:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbe;->get()J

    move-result-wide v1

    .line 1839
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzag;->zzajx:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzag$zza;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 1840
    nop

    .line 1841
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(JJ)Z

    move-result v7

    if-nez v7, :cond_233

    .line 1842
    add-long/2addr v1, v3

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 1843
    :cond_233
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlu()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaz;->unregister()V

    .line 1844
    nop

    .line 1845
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 1846
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v5, v1

    .line 1847
    const-wide/16 v1, 0x0

    cmp-long v3, v5, v1

    if-gtz v3, :cond_273

    .line 1848
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzag;->zzakc:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzag$zza;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 1849
    nop

    .line 1850
    nop

    .line 1851
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v1

    .line 1852
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbb;->zzanl:Lcom/google/android/gms/measurement/internal/zzbe;

    .line 1853
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 1854
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbe;->set(J)V

    .line 1855
    :cond_273
    nop

    .line 1856
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1857
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Upload scheduled in approximately ms"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1858
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlv()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/measurement/internal/zzfg;->zzh(J)V

    .line 1859
    return-void

    .line 1761
    :cond_28f
    :goto_28f
    nop

    .line 1762
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1763
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 1764
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlu()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaz;->unregister()V

    .line 1765
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlv()Lcom/google/android/gms/measurement/internal/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfg;->cancel()V

    .line 1766
    return-void
.end method

.method private final zzmc()V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1865
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 1866
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaui:Z

    if-nez v0, :cond_41

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauj:Z

    if-nez v0, :cond_41

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauk:Z

    if-eqz v0, :cond_10

    goto :goto_41

    .line 1875
    :cond_10
    nop

    .line 1876
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 1877
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 1878
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauf:Ljava/util/List;

    if-nez v0, :cond_25

    .line 1879
    return-void

    .line 1880
    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1881
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1882
    goto :goto_2b

    .line 1883
    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1884
    return-void

    .line 1867
    :cond_41
    :goto_41
    nop

    .line 1868
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 1869
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Not stopping services. fetch, network, upload"

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaui:Z

    .line 1870
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauj:Z

    .line 1871
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauk:Z

    .line 1872
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1873
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1874
    return-void
.end method

.method private final zzmd()Z
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1901
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 1902
    const-string v0, "google_app_measurement.db"

    .line 1903
    nop

    .line 1904
    nop

    .line 1905
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1906
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 1907
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1908
    :try_start_16
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaum:Ljava/nio/channels/FileChannel;

    .line 1909
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaum:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaul:Ljava/nio/channels/FileLock;

    .line 1910
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaul:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_41

    .line 1911
    nop

    .line 1912
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 1913
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Storage concurrent access okay"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 1914
    const/4 v0, 0x1

    return v0

    .line 1915
    :cond_41
    nop

    .line 1916
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 1917
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_51} :catch_64
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_51} :catch_52

    .line 1918
    goto :goto_76

    .line 1924
    :catch_52
    move-exception v0

    .line 1925
    nop

    .line 1926
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1927
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_76

    .line 1919
    :catch_64
    move-exception v0

    .line 1920
    nop

    .line 1921
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1922
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1923
    nop

    .line 1928
    :goto_76
    const/4 v0, 0x0

    return v0
.end method

.method private final zzmf()Z
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 2023
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 2024
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 2025
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauc:Z

    if-eqz v0, :cond_c

    .line 2026
    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static zzn(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzfk;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzatt:Lcom/google/android/gms/measurement/internal/zzfk;

    if-nez v0, :cond_27

    .line 4
    const-class v0, Lcom/google/android/gms/measurement/internal/zzfk;

    monitor-enter v0

    .line 5
    :try_start_11
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzatt:Lcom/google/android/gms/measurement/internal/zzfk;

    if-nez v1, :cond_22

    .line 6
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzfp;-><init>(Landroid/content/Context;)V

    .line 7
    nop

    .line 8
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzfk;-><init>(Lcom/google/android/gms/measurement/internal/zzfp;)V

    .line 9
    sput-object p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzatt:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 10
    :cond_22
    monitor-exit v0

    goto :goto_27

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_24

    throw p0

    .line 11
    :cond_27
    :goto_27
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzatt:Lcom/google/android/gms/measurement/internal/zzfk;

    return-object p0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected final start()V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 80
    nop

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->zzij()V

    .line 84
    nop

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    .line 86
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbb;->zzanl:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbe;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3a

    .line 87
    nop

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    .line 89
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbb;->zzanl:Lcom/google/android/gms/measurement/internal/zzbe;

    .line 90
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 91
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbe;->set(J)V

    .line 92
    :cond_3a
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmb()V

    .line 93
    return-void
.end method

.method final zza(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .registers 14
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1515
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 1516
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 1517
    const/4 v0, 0x0

    if-nez p3, :cond_f

    .line 1518
    :try_start_9
    new-array p3, v0, [B

    goto :goto_f

    .line 1599
    :catchall_c
    move-exception p1

    goto/16 :goto_19a

    .line 1519
    :cond_f
    :goto_f
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaun:Ljava/util/List;

    .line 1520
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaun:Ljava/util/List;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_c

    .line 1521
    const/16 v3, 0xc8

    const/4 v4, 0x1

    if-eq p1, v3, :cond_1d

    const/16 v3, 0xcc

    if-ne p1, v3, :cond_12f

    :cond_1d
    if-nez p2, :cond_12f

    .line 1522
    nop

    .line 1523
    :try_start_20
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object p2

    .line 1524
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbb;->zzanl:Lcom/google/android/gms/measurement/internal/zzbe;

    .line 1525
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    .line 1526
    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzbe;->set(J)V

    .line 1527
    nop

    .line 1528
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object p2

    .line 1529
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbb;->zzanm:Lcom/google/android/gms/measurement/internal/zzbe;

    const-wide/16 v5, 0x0

    invoke-virtual {p2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzbe;->set(J)V

    .line 1530
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmb()V

    .line 1531
    nop

    .line 1532
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    .line 1533
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string p4, "Successful upload. Got network response. code, size"

    .line 1534
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1535
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzr;->beginTransaction()V
    :try_end_66
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_66} :catch_fa
    .catchall {:try_start_20 .. :try_end_66} :catchall_c

    .line 1536
    :try_start_66
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_76
    .catchall {:try_start_66 .. :try_end_76} :catchall_f1

    .line 1537
    :try_start_76
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1538
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 1539
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 1540
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p4

    .line 1541
    new-array v1, v4, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0
    :try_end_90
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_76 .. :try_end_90} :catch_b2
    .catchall {:try_start_76 .. :try_end_90} :catchall_f1

    .line 1542
    :try_start_90
    const-string v3, "queue"

    const-string v7, "rowid=?"

    invoke-virtual {p4, v3, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p4

    .line 1543
    if-ne p4, v4, :cond_9b

    .line 1545
    goto :goto_6a

    .line 1544
    :cond_9b
    new-instance p4, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Deleted fewer rows from queue than expected"

    invoke-direct {p4, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p4
    :try_end_a3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_90 .. :try_end_a3} :catch_a3
    .catchall {:try_start_90 .. :try_end_a3} :catchall_f1

    .line 1546
    :catch_a3
    move-exception p4

    .line 1547
    :try_start_a4
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    const-string v1, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v1, p4}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1548
    throw p4
    :try_end_b2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a4 .. :try_end_b2} :catch_b2
    .catchall {:try_start_a4 .. :try_end_b2} :catchall_f1

    .line 1549
    :catch_b2
    move-exception p3

    .line 1550
    :try_start_b3
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauo:Ljava/util/List;

    if-eqz p4, :cond_c0

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauo:Ljava/util/List;

    .line 1551
    invoke-interface {p4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c0

    goto :goto_6a

    .line 1552
    :cond_c0
    throw p3

    .line 1553
    :cond_c1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzr;->setTransactionSuccessful()V
    :try_end_c8
    .catchall {:try_start_b3 .. :try_end_c8} :catchall_f1

    .line 1554
    :try_start_c8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    .line 1555
    nop

    .line 1557
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauo:Ljava/util/List;

    .line 1558
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlt()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzfb()Z

    move-result p1

    if-eqz p1, :cond_e6

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzma()Z

    move-result p1

    if-eqz p1, :cond_e6

    .line 1559
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlz()V

    goto :goto_ed

    .line 1560
    :cond_e6
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaup:J

    .line 1561
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmb()V

    .line 1562
    :goto_ed
    iput-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaue:J

    .line 1563
    goto/16 :goto_194

    .line 1556
    :catchall_f1
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    throw p1
    :try_end_fa
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c8 .. :try_end_fa} :catch_fa
    .catchall {:try_start_c8 .. :try_end_fa} :catchall_c

    .line 1564
    :catch_fa
    move-exception p1

    .line 1565
    nop

    .line 1566
    :try_start_fc
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    .line 1567
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1568
    nop

    .line 1569
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    .line 1570
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaue:J

    .line 1571
    nop

    .line 1572
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 1573
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaue:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1574
    goto :goto_194

    .line 1575
    :cond_12f
    nop

    .line 1576
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    .line 1577
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    const-string v2, "Network upload failed. Will retry later. code, error"

    .line 1578
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1579
    nop

    .line 1580
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object p2

    .line 1581
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbb;->zzanm:Lcom/google/android/gms/measurement/internal/zzbe;

    .line 1582
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    .line 1583
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbe;->set(J)V

    .line 1584
    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_164

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_162

    goto :goto_164

    .line 1585
    :cond_162
    const/4 v4, 0x0

    goto :goto_165

    .line 1584
    :cond_164
    :goto_164
    nop

    .line 1585
    :goto_165
    if-eqz v4, :cond_17d

    .line 1586
    nop

    .line 1587
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object p1

    .line 1588
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbb;->zzann:Lcom/google/android/gms/measurement/internal/zzbe;

    .line 1589
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    .line 1590
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzbe;->set(J)V

    .line 1591
    :cond_17d
    nop

    .line 1592
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object p1

    .line 1593
    invoke-virtual {p1, p4}, Lcom/google/android/gms/measurement/internal/zzo;->zzay(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_191

    .line 1594
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzr;->zzc(Ljava/util/List;)V

    .line 1595
    :cond_191
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmb()V
    :try_end_194
    .catchall {:try_start_fc .. :try_end_194} :catchall_c

    .line 1596
    :goto_194
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauj:Z

    .line 1597
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmc()V

    .line 1598
    return-void

    .line 1599
    :goto_19a
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauj:Z

    .line 1600
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmc()V

    throw p1
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzfj;)V
    .registers 2

    .line 2239
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaug:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaug:I

    .line 2240
    return-void
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzfr;Lcom/google/android/gms/measurement/internal/zzi;)V
    .registers 15
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 2115
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 2116
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 2117
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzi;->zzafx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzi;->zzagk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2118
    return-void

    .line 2119
    :cond_17
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzi;->zzagg:Z

    if-nez v0, :cond_1f

    .line 2120
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzg(Lcom/google/android/gms/measurement/internal/zzi;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 2121
    return-void

    .line 2122
    :cond_1f
    nop

    .line 2123
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    .line 2124
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzcx(Ljava/lang/String;)I

    move-result v4

    .line 2125
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-eqz v4, :cond_5b

    .line 2126
    nop

    .line 2127
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    .line 2128
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    .line 2129
    nop

    .line 2130
    invoke-static {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    .line 2131
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    if-eqz v1, :cond_4b

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 2132
    move v7, p1

    goto :goto_4d

    .line 2131
    :cond_4b
    nop

    .line 2132
    const/4 v7, 0x0

    .line 2133
    :goto_4d
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v2

    .line 2134
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    const-string v5, "_ev"

    .line 2135
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 2136
    return-void

    .line 2137
    :cond_5b
    nop

    .line 2138
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v3

    .line 2139
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v8

    .line 2140
    if-eqz v8, :cond_a3

    .line 2141
    nop

    .line 2142
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    .line 2143
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    .line 2144
    nop

    .line 2145
    invoke-static {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    .line 2146
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 2147
    nop

    .line 2148
    if-eqz p1, :cond_94

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_8a

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_94

    .line 2149
    :cond_8a
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2150
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2151
    move v11, v0

    goto :goto_95

    :cond_94
    const/4 v11, 0x0

    .line 2152
    :goto_95
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v6

    .line 2153
    iget-object v7, p2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    const-string v9, "_ev"

    .line 2154
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 2155
    return-void

    .line 2156
    :cond_a3
    nop

    .line 2157
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    .line 2158
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    .line 2159
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2160
    if-nez v0, :cond_b7

    .line 2161
    return-void

    .line 2162
    :cond_b7
    nop

    .line 2163
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v1

    .line 2164
    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzo;->zzbj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11c

    const-string v1, "_sno"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    .line 2165
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 2166
    const-wide/16 v0, 0x0

    .line 2167
    nop

    .line 2168
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    const-string v4, "_sno"

    .line 2169
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzr;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    .line 2170
    if-eqz v2, :cond_f0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_f0

    .line 2171
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_115

    .line 2172
    :cond_f0
    nop

    .line 2173
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    const-string v4, "_s"

    .line 2174
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzr;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v2

    .line 2175
    if-eqz v2, :cond_115

    .line 2176
    iget-wide v0, v2, Lcom/google/android/gms/measurement/internal/zzaa;->zzaih:J

    .line 2177
    nop

    .line 2178
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 2179
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Backfill the session number. Last used session number"

    .line 2180
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2181
    :cond_115
    :goto_115
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2182
    :cond_11c
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzft;

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfr;->origin:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzfr;->zzaux:J

    move-object v1, v8

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 2183
    nop

    .line 2184
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 2185
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v1, "Setting user property"

    .line 2186
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    .line 2187
    iget-object v3, v8, Lcom/google/android/gms/measurement/internal/zzft;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2188
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2189
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzr;->beginTransaction()V

    .line 2190
    :try_start_14e
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzg(Lcom/google/android/gms/measurement/internal/zzi;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 2191
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzft;)Z

    move-result p1

    .line 2192
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->setTransactionSuccessful()V

    .line 2193
    if-eqz p1, :cond_181

    .line 2194
    nop

    .line 2195
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 2196
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "User property set"

    .line 2197
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    .line 2198
    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/zzft;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    .line 2199
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1b0

    .line 2200
    :cond_181
    nop

    .line 2201
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 2202
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    .line 2203
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v1

    .line 2204
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzft;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    .line 2205
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2206
    nop

    .line 2207
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    .line 2208
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2209
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1b0
    .catchall {:try_start_14e .. :try_end_1b0} :catchall_1b8

    .line 2210
    :goto_1b0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    .line 2211
    return-void

    .line 2212
    :catchall_1b8
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    throw p1
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/measurement/internal/zzi;)V
    .registers 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 2498
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2499
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2500
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->origin:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2501
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2502
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2503
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 2504
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 2505
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzi;->zzafx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzi;->zzagk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2506
    return-void

    .line 2507
    :cond_30
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzi;->zzagg:Z

    if-nez v0, :cond_38

    .line 2508
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzg(Lcom/google/android/gms/measurement/internal/zzi;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 2509
    return-void

    .line 2510
    :cond_38
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzm;-><init>(Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 2511
    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzm;->active:Z

    .line 2512
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzr;->beginTransaction()V

    .line 2513
    nop

    .line 2514
    nop

    .line 2515
    :try_start_49
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzr;->zzj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v1

    .line 2516
    if-eqz v1, :cond_85

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzm;->origin:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzm;->origin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 2517
    nop

    .line 2518
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 2519
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    .line 2520
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v4

    .line 2521
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzm;->origin:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzm;->origin:Ljava/lang/String;

    .line 2522
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2523
    :cond_85
    const/4 v2, 0x1

    if-eqz v1, :cond_bf

    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzm;->active:Z

    if-eqz v3, :cond_bf

    .line 2524
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzm;->origin:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzm;->origin:Ljava/lang/String;

    .line 2525
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzm;->creationTimestamp:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzm;->creationTimestamp:J

    .line 2526
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzm;->triggerTimeout:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzm;->triggerTimeout:J

    .line 2527
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzm;->triggerEventName:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzm;->triggerEventName:Ljava/lang/String;

    .line 2528
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzm;->zzahg:Lcom/google/android/gms/measurement/internal/zzae;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzm;->zzahg:Lcom/google/android/gms/measurement/internal/zzae;

    .line 2529
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzm;->active:Z

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzm;->active:Z

    .line 2530
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzfr;->zzaux:J

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2531
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfr;->origin:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzfr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    goto :goto_e3

    .line 2532
    :cond_bf
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->triggerEventName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 2533
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzm;->creationTimestamp:J

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2534
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfr;->origin:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzfr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2535
    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzm;->active:Z

    .line 2536
    nop

    .line 2537
    const/4 p1, 0x1

    :cond_e3
    :goto_e3
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->active:Z

    if-eqz v1, :cond_15c

    .line 2538
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2539
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzft;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzm;->origin:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzfr;->zzaux:J

    .line 2540
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 2541
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzft;)Z

    move-result v1

    .line 2542
    if-eqz v1, :cond_126

    .line 2543
    nop

    .line 2544
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 2545
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    .line 2546
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v4

    .line 2547
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzft;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    .line 2548
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14a

    .line 2549
    :cond_126
    nop

    .line 2550
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 2551
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    .line 2552
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2553
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v4

    .line 2554
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzft;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    .line 2555
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2556
    :goto_14a
    if-eqz p1, :cond_15c

    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzm;->zzahg:Lcom/google/android/gms/measurement/internal/zzae;

    if-eqz p1, :cond_15c

    .line 2557
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->zzahg:Lcom/google/android/gms/measurement/internal/zzae;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzm;->creationTimestamp:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Lcom/google/android/gms/measurement/internal/zzae;J)V

    .line 2558
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzd(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)V

    .line 2559
    :cond_15c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzm;)Z

    move-result p1

    .line 2560
    if-eqz p1, :cond_18d

    .line 2561
    nop

    .line 2562
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 2563
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    .line 2564
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    .line 2565
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2566
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 2567
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1b7

    .line 2568
    :cond_18d
    nop

    .line 2569
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 2570
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    .line 2571
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2572
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    .line 2573
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2574
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 2575
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2576
    :goto_1b7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzr;->setTransactionSuccessful()V
    :try_end_1be
    .catchall {:try_start_49 .. :try_end_1be} :catchall_1c6

    .line 2577
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    .line 2578
    return-void

    .line 2579
    :catchall_1c6
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    throw p1
.end method

.method final zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1656
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 1657
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 1658
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1659
    const/4 v0, 0x0

    if-nez p4, :cond_12

    .line 1660
    :try_start_c
    new-array p4, v0, [B

    goto :goto_12

    .line 1736
    :catchall_f
    move-exception p1

    goto/16 :goto_1a9

    .line 1661
    :cond_12
    :goto_12
    nop

    .line 1662
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 1663
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1664
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzr;->beginTransaction()V
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_f

    .line 1665
    :try_start_2e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzr;->zzbo(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v1

    .line 1666
    const/16 v2, 0xc8

    const/4 v3, 0x1

    const/16 v4, 0x130

    if-eq p2, v2, :cond_43

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_43

    if-ne p2, v4, :cond_47

    :cond_43
    if-nez p3, :cond_47

    .line 1667
    const/4 v2, 0x1

    goto :goto_49

    .line 1666
    :cond_47
    nop

    .line 1667
    const/4 v2, 0x0

    :goto_49
    if-nez v1, :cond_61

    .line 1668
    nop

    .line 1669
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    .line 1670
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    .line 1671
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_18b

    .line 1672
    :cond_61
    const/16 v5, 0x194

    if-nez v2, :cond_d7

    if-ne p2, v5, :cond_68

    goto :goto_d7

    .line 1708
    :cond_68
    nop

    .line 1709
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    .line 1710
    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzg;->zzz(J)V

    .line 1711
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 1712
    nop

    .line 1713
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p4

    .line 1714
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1715
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzls()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzbo;->zzck(Ljava/lang/String;)V

    .line 1716
    nop

    .line 1717
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object p1

    .line 1718
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbb;->zzanm:Lcom/google/android/gms/measurement/internal/zzbe;

    .line 1719
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    .line 1720
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzbe;->set(J)V

    .line 1721
    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_b9

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_b7

    goto :goto_b9

    .line 1722
    :cond_b7
    const/4 v3, 0x0

    goto :goto_ba

    .line 1721
    :cond_b9
    :goto_b9
    nop

    .line 1722
    :goto_ba
    if-eqz v3, :cond_d2

    .line 1723
    nop

    .line 1724
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object p1

    .line 1725
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbb;->zzann:Lcom/google/android/gms/measurement/internal/zzbe;

    .line 1726
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    .line 1727
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzbe;->set(J)V

    .line 1728
    :cond_d2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmb()V

    goto/16 :goto_18b

    .line 1673
    :cond_d7
    :goto_d7
    const/4 p3, 0x0

    if-eqz p5, :cond_e3

    const-string v2, "Last-Modified"

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_e4

    .line 1674
    :cond_e3
    move-object p5, p3

    :goto_e4
    if-eqz p5, :cond_f3

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f3

    .line 1675
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_f5

    .line 1676
    :cond_f3
    nop

    .line 1677
    move-object p5, p3

    :goto_f5
    if-eq p2, v5, :cond_111

    if-ne p2, v4, :cond_fa

    goto :goto_111

    .line 1684
    :cond_fa
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzls()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzbo;->zza(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_102
    .catchall {:try_start_2e .. :try_end_102} :catchall_1a0

    if-nez p3, :cond_132

    .line 1685
    :try_start_104
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V
    :try_end_10b
    .catchall {:try_start_104 .. :try_end_10b} :catchall_f

    .line 1686
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaui:Z

    .line 1687
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmc()V

    .line 1688
    return-void

    .line 1678
    :cond_111
    :goto_111
    :try_start_111
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzls()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/measurement/internal/zzbo;->zzci(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzge;

    move-result-object p5

    if-nez p5, :cond_132

    .line 1679
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzls()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3}, Lcom/google/android/gms/measurement/internal/zzbo;->zza(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_123
    .catchall {:try_start_111 .. :try_end_123} :catchall_1a0

    if-nez p3, :cond_132

    .line 1680
    :try_start_125
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V
    :try_end_12c
    .catchall {:try_start_125 .. :try_end_12c} :catchall_f

    .line 1681
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaui:Z

    .line 1682
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmc()V

    .line 1683
    return-void

    .line 1689
    :cond_132
    nop

    .line 1690
    :try_start_133
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    .line 1691
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzy(J)V

    .line 1692
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 1693
    if-ne p2, v5, :cond_15a

    .line 1694
    nop

    .line 1695
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    .line 1696
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjl()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 1697
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_173

    .line 1698
    :cond_15a
    nop

    .line 1699
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 1700
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 1701
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    .line 1702
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 1703
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1704
    :goto_173
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlt()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzfb()Z

    move-result p1

    if-eqz p1, :cond_187

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzma()Z

    move-result p1

    if-eqz p1, :cond_187

    .line 1705
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlz()V

    goto :goto_18b

    .line 1706
    :cond_187
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmb()V

    .line 1707
    nop

    .line 1729
    :goto_18b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzr;->setTransactionSuccessful()V
    :try_end_192
    .catchall {:try_start_133 .. :try_end_192} :catchall_1a0

    .line 1730
    :try_start_192
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V
    :try_end_199
    .catchall {:try_start_192 .. :try_end_199} :catchall_f

    .line 1731
    nop

    .line 1733
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaui:Z

    .line 1734
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmc()V

    .line 1735
    return-void

    .line 1732
    :catchall_1a0
    move-exception p1

    :try_start_1a1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    throw p1
    :try_end_1a9
    .catchall {:try_start_1a1 .. :try_end_1a9} :catchall_f

    .line 1736
    :goto_1a9
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaui:Z

    .line 1737
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmc()V

    throw p1
.end method

.method public final zzbx()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)V
    .registers 20
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 184
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 188
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    .line 189
    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzais:J

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfq;->zze(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 191
    return-void

    .line 192
    :cond_23
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzi;->zzagg:Z

    if-nez v4, :cond_2b

    .line 193
    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzg(Lcom/google/android/gms/measurement/internal/zzi;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 194
    return-void

    .line 195
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzr;->beginTransaction()V

    .line 196
    nop

    .line 197
    :try_start_33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v4

    .line 198
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 200
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 201
    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    cmp-long v8, v11, v6

    if-gez v8, :cond_63

    .line 202
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    .line 203
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v8, "Invalid time querying timed out conditional properties"

    .line 204
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 205
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 206
    invoke-virtual {v4, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_73

    .line 208
    :cond_63
    const-string v8, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 209
    new-array v9, v5, [Ljava/lang/String;

    aput-object v3, v9, v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v14

    .line 210
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/zzr;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 211
    :goto_73
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_77
    :goto_77
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzm;

    .line 212
    if-eqz v8, :cond_77

    .line 213
    nop

    .line 214
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v9

    .line 215
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    const-string v10, "User property timed out"

    iget-object v15, v8, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    .line 216
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v14

    .line 217
    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 218
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfr;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 219
    invoke-virtual {v9, v10, v15, v13, v14}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzm;->zzahf:Lcom/google/android/gms/measurement/internal/zzae;

    if-eqz v9, :cond_b9

    .line 221
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v10, v8, Lcom/google/android/gms/measurement/internal/zzm;->zzahf:Lcom/google/android/gms/measurement/internal/zzae;

    invoke-direct {v9, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Lcom/google/android/gms/measurement/internal/zzae;J)V

    invoke-direct {v1, v9, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzd(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)V

    .line 222
    :cond_b9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v9

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {v9, v3, v8}, Lcom/google/android/gms/measurement/internal/zzr;->zzk(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    nop

    .line 211
    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_77

    .line 224
    :cond_c8
    nop

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v4

    .line 226
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 228
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 229
    cmp-long v8, v11, v6

    if-gez v8, :cond_f4

    .line 230
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    .line 231
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v8, "Invalid time querying expired conditional properties"

    .line 232
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 233
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 234
    invoke-virtual {v4, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_106

    .line 236
    :cond_f4
    const-string v8, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 237
    new-array v9, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v9, v13

    .line 238
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/zzr;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 239
    :goto_106
    nop

    .line 240
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_114
    :goto_114
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzm;

    .line 242
    if-eqz v9, :cond_114

    .line 243
    nop

    .line 244
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v10

    .line 245
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v10

    const-string v13, "User property expired"

    iget-object v14, v9, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    .line 246
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v15

    .line 247
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {v15, v5}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v15, v9, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 248
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfr;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 249
    invoke-virtual {v10, v13, v14, v5, v15}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v5

    iget-object v10, v9, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {v5, v3, v10}, Lcom/google/android/gms/measurement/internal/zzr;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzm;->zzahh:Lcom/google/android/gms/measurement/internal/zzae;

    if-eqz v5, :cond_15c

    .line 252
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzm;->zzahh:Lcom/google/android/gms/measurement/internal/zzae;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_15c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v5

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {v5, v3, v9}, Lcom/google/android/gms/measurement/internal/zzr;->zzk(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    nop

    .line 241
    const/4 v5, 0x2

    goto :goto_114

    .line 255
    :cond_16a
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_171
    if-ge v5, v4, :cond_184

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzae;

    .line 256
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzae;

    invoke-direct {v10, v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Lcom/google/android/gms/measurement/internal/zzae;J)V

    invoke-direct {v1, v10, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzd(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)V

    .line 257
    goto :goto_171

    .line 258
    :cond_184
    nop

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    .line 260
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 263
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 264
    cmp-long v8, v11, v6

    if-gez v8, :cond_1be

    .line 265
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v6

    .line 266
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v6

    const-string v7, "Invalid time querying triggered conditional properties"

    .line 267
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 268
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 270
    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 271
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 275
    const/4 v13, 0x0

    goto :goto_1d4

    .line 272
    :cond_1be
    const-string v6, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    .line 273
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v7, v13

    const/4 v3, 0x1

    aput-object v5, v7, v3

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v7, v5

    .line 274
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzr;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 275
    :goto_1d4
    nop

    .line 276
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e2
    :goto_1e2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_274

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/google/android/gms/measurement/internal/zzm;

    .line 278
    if-eqz v15, :cond_1e2

    .line 279
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 280
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzft;

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzm;->origin:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    .line 281
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object v4, v10

    move-wide v8, v11

    move-object v13, v10

    move-object/from16 v10, v16

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzft;)Z

    move-result v4

    .line 283
    if-eqz v4, :cond_232

    .line 284
    nop

    .line 285
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    .line 286
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v5, "User property triggered"

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    .line 287
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v7

    .line 288
    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzft;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    .line 289
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_256

    .line 290
    :cond_232
    nop

    .line 291
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    .line 292
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v5, "Too many active user properties, ignoring"

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    .line 293
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 294
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v7

    .line 295
    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzft;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzft;->value:Ljava/lang/Object;

    .line 296
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    :goto_256
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzm;->zzahg:Lcom/google/android/gms/measurement/internal/zzae;

    if-eqz v4, :cond_25f

    .line 298
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzm;->zzahg:Lcom/google/android/gms/measurement/internal/zzae;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_25f
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-direct {v4, v13}, Lcom/google/android/gms/measurement/internal/zzfr;-><init>(Lcom/google/android/gms/measurement/internal/zzft;)V

    iput-object v4, v15, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 300
    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/google/android/gms/measurement/internal/zzm;->active:Z

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzm;)Z

    .line 302
    nop

    .line 277
    const/4 v13, 0x0

    goto/16 :goto_1e2

    .line 303
    :cond_274
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzd(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)V

    .line 304
    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_27e
    if-ge v3, v0, :cond_291

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzae;

    .line 305
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzae;

    invoke-direct {v5, v4, v11, v12}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Lcom/google/android/gms/measurement/internal/zzae;J)V

    invoke-direct {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzd(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)V

    .line 306
    goto :goto_27e

    .line 307
    :cond_291
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->setTransactionSuccessful()V
    :try_end_298
    .catchall {:try_start_33 .. :try_end_298} :catchall_2a0

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    .line 309
    return-void

    .line 310
    :catchall_2a0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    throw v0
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzfr;Lcom/google/android/gms/measurement/internal/zzi;)V
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 2213
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 2214
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 2215
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzi;->zzafx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzi;->zzagk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2216
    return-void

    .line 2217
    :cond_17
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzi;->zzagg:Z

    if-nez v0, :cond_1f

    .line 2218
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzg(Lcom/google/android/gms/measurement/internal/zzi;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 2219
    return-void

    .line 2220
    :cond_1f
    nop

    .line 2221
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 2222
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Removing user property"

    .line 2223
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    .line 2224
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2225
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2226
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->beginTransaction()V

    .line 2227
    :try_start_42
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzg(Lcom/google/android/gms/measurement/internal/zzi;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 2228
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/measurement/internal/zzr;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzr;->setTransactionSuccessful()V

    .line 2230
    nop

    .line 2231
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    .line 2232
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v0, "User property removed"

    .line 2233
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v1

    .line 2234
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2235
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_73
    .catchall {:try_start_42 .. :try_end_73} :catchall_7b

    .line 2236
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    .line 2237
    return-void

    .line 2238
    :catchall_7b
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    throw p1
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/measurement/internal/zzi;)V
    .registers 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 2584
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2585
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2586
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2587
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2588
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 2589
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 2590
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzi;->zzafx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzi;->zzagk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2591
    return-void

    .line 2592
    :cond_2b
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzi;->zzagg:Z

    if-nez v0, :cond_33

    .line 2593
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzg(Lcom/google/android/gms/measurement/internal/zzi;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 2594
    return-void

    .line 2595
    :cond_33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->beginTransaction()V

    .line 2596
    :try_start_3a
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzg(Lcom/google/android/gms/measurement/internal/zzi;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 2597
    nop

    .line 2598
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzr;->zzj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    .line 2599
    if-eqz v0, :cond_c2

    .line 2600
    nop

    .line 2601
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 2602
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    .line 2603
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v4

    .line 2604
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2605
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2606
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzr;->zzk(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzm;->active:Z

    if-eqz v1, :cond_8c

    .line 2608
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzr;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    :cond_8c
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahh:Lcom/google/android/gms/measurement/internal/zzae;

    if-eqz v1, :cond_e6

    .line 2610
    const/4 v1, 0x0

    .line 2611
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahh:Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzae;->zzaig:Lcom/google/android/gms/measurement/internal/zzab;

    if-eqz v2, :cond_9f

    .line 2612
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahh:Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzaig:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzab;->zziy()Landroid/os/Bundle;

    move-result-object v1

    .line 2613
    :cond_9f
    move-object v3, v1

    .line 2614
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v1

    .line 2615
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahh:Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzm;->origin:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahh:Lcom/google/android/gms/measurement/internal/zzae;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzais:J

    const/4 p1, 0x1

    const/4 v8, 0x0

    .line 2616
    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-wide v5, v6

    move v7, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object p1

    .line 2617
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzd(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)V

    .line 2618
    goto :goto_e6

    .line 2619
    :cond_c2
    nop

    .line 2620
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    .line 2621
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    .line 2622
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2623
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    .line 2624
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzahe:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfr;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2625
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2626
    :cond_e6
    :goto_e6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzr;->setTransactionSuccessful()V
    :try_end_ed
    .catchall {:try_start_3a .. :try_end_ed} :catchall_f5

    .line 2627
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    .line 2628
    return-void

    .line 2629
    :catchall_f5
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    throw p1
.end method

.method final zzd(Lcom/google/android/gms/measurement/internal/zzae;Ljava/lang/String;)V
    .registers 30
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 150
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzr;->zzbo(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v15

    .line 151
    if-eqz v15, :cond_ab

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto/16 :goto_ab

    .line 156
    :cond_1c
    invoke-direct {v0, v15}, Lcom/google/android/gms/measurement/internal/zzfk;->zzc(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v2

    .line 157
    if-nez v2, :cond_41

    .line 158
    const-string v2, "_ui"

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzae;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 159
    nop

    .line 160
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v4, "Could not find package. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5c

    .line 162
    :cond_41
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 163
    nop

    .line 164
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "App version does not match; dropping event. appId"

    .line 166
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 167
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    return-void

    .line 169
    :cond_5c
    :goto_5c
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzi;

    move-object v2, v14

    .line 170
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhf()J

    move-result-wide v6

    .line 173
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhg()Ljava/lang/String;

    move-result-object v8

    .line 174
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhh()J

    move-result-wide v9

    .line 175
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzhi()J

    move-result-wide v11

    const/4 v13, 0x0

    .line 176
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->isMeasurementEnabled()Z

    move-result v16

    move-object/from16 v26, v14

    move/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v25, v15

    move/from16 v15, v16

    .line 177
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzg;->getFirebaseInstanceId()Ljava/lang/String;

    move-result-object v16

    .line 178
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzg;->zzhv()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    .line 179
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzg;->zzhw()Z

    move-result v22

    .line 180
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzg;->zzhx()Z

    move-result v23

    const/16 v24, 0x0

    .line 181
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/measurement/internal/zzg;->zzhb()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v25}, Lcom/google/android/gms/measurement/internal/zzi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;)V

    .line 182
    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzc(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)V

    .line 183
    return-void

    .line 152
    :cond_ab
    :goto_ab
    nop

    .line 153
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method final zzd(Lcom/google/android/gms/measurement/internal/zzi;)V
    .registers 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 2027
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaun:Ljava/util/List;

    if-eqz v0, :cond_12

    .line 2028
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauo:Ljava/util/List;

    .line 2029
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauo:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaun:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2030
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    .line 2031
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2032
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 2033
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 2034
    :try_start_21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2035
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 2036
    const-string v5, "apps"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    .line 2037
    const-string v4, "events"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    .line 2038
    const-string/jumbo v4, "user_attributes"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    .line 2039
    const-string v4, "conditional_properties"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    .line 2040
    const-string v4, "raw_events"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    .line 2041
    const-string v4, "raw_events_metadata"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    .line 2042
    const-string v4, "queue"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    .line 2043
    const-string v4, "audience_filter_values"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    .line 2044
    const-string v4, "main_event_params"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v5, v2

    .line 2045
    if-lez v5, :cond_90

    .line 2046
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_90
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_90} :catch_91

    .line 2047
    :cond_90
    goto :goto_a3

    .line 2048
    :catch_91
    move-exception v2

    .line 2049
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 2050
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v3, "Error resetting analytics data. appId, error"

    .line 2051
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2052
    :goto_a3
    nop

    .line 2053
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2054
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzafx:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagg:Z

    iget-boolean v6, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagi:Z

    iget-boolean v7, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagj:Z

    iget-wide v8, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzaha:J

    iget-object v10, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagk:Ljava/lang/String;

    .line 2055
    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZJLjava/lang/String;)Lcom/google/android/gms/measurement/internal/zzi;

    move-result-object v0

    .line 2056
    nop

    .line 2057
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v1

    .line 2058
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzo;->zzbc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 2059
    iget-boolean p1, p1, Lcom/google/android/gms/measurement/internal/zzi;->zzagg:Z

    if-eqz p1, :cond_d3

    .line 2060
    :cond_d0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzf(Lcom/google/android/gms/measurement/internal/zzi;)V

    .line 2061
    :cond_d3
    return-void
.end method

.method final zze(Lcom/google/android/gms/measurement/internal/zzi;)V
    .registers 3

    .line 131
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 133
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzg(Lcom/google/android/gms/measurement/internal/zzi;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 135
    return-void
.end method

.method final zze(Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 2494
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzct(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzi;

    move-result-object v0

    .line 2495
    if-eqz v0, :cond_b

    .line 2496
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzb(Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/measurement/internal/zzi;)V

    .line 2497
    :cond_b
    return-void
.end method

.method final zzf(Lcom/google/android/gms/measurement/internal/zzi;)V
    .registers 20
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 2244
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 2245
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 2246
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2247
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2248
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzi;->zzafx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzi;->zzagk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2249
    return-void

    .line 2250
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzr;->zzbo(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    .line 2251
    const-wide/16 v3, 0x0

    if-eqz v0, :cond_56

    .line 2252
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_56

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzi;->zzafx:Ljava/lang/String;

    .line 2253
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_56

    .line 2254
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzy(J)V

    .line 2255
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 2256
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzls()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzbo;->zzcl(Ljava/lang/String;)V

    .line 2257
    :cond_56
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzi;->zzagg:Z

    if-nez v0, :cond_5e

    .line 2258
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzg(Lcom/google/android/gms/measurement/internal/zzi;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 2259
    return-void

    .line 2260
    :cond_5e
    iget-wide v5, v2, Lcom/google/android/gms/measurement/internal/zzi;->zzaha:J

    .line 2261
    cmp-long v0, v5, v3

    if-nez v0, :cond_6f

    .line 2262
    nop

    .line 2263
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 2264
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    .line 2265
    :cond_6f
    iget v0, v2, Lcom/google/android/gms/measurement/internal/zzi;->zzahb:I

    .line 2266
    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v0, :cond_94

    if-eq v0, v14, :cond_94

    .line 2267
    nop

    .line 2268
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v7

    .line 2269
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v7

    const-string v8, "Incorrect app type, assuming installed app. appId, appType"

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    .line 2270
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 2271
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2272
    invoke-virtual {v7, v8, v9, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2273
    nop

    .line 2274
    const/4 v15, 0x0

    goto :goto_95

    :cond_94
    move v15, v0

    :goto_95
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->beginTransaction()V

    .line 2275
    nop

    .line 2276
    :try_start_9d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzr;->zzbo(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    .line 2277
    const/16 v16, 0x0

    if-eqz v0, :cond_16f

    .line 2278
    nop

    .line 2279
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    .line 2280
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzi;->zzafx:Ljava/lang/String;

    .line 2281
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->getGmpAppId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzi;->zzagk:Ljava/lang/String;

    .line 2282
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhb()Ljava/lang/String;

    move-result-object v10

    .line 2283
    invoke-static {v7, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16f

    .line 2284
    nop

    .line 2285
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v7

    .line 2286
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v7

    const-string v8, "New GMP App Id passed in. Removing cached database data. appId"

    .line 2287
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 2288
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2289
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v8

    .line 2290
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 2291
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 2292
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_ec
    .catchall {:try_start_9d .. :try_end_ec} :catchall_473

    .line 2293
    :try_start_ec
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2294
    new-array v9, v14, [Ljava/lang/String;

    aput-object v8, v9, v13

    .line 2295
    const-string v10, "events"

    const-string v11, "app_id=?"

    invoke-virtual {v0, v10, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v10, v13

    .line 2296
    const-string/jumbo v11, "user_attributes"

    const-string v12, "app_id=?"

    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    .line 2297
    const-string v11, "conditional_properties"

    const-string v12, "app_id=?"

    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    .line 2298
    const-string v11, "apps"

    const-string v12, "app_id=?"

    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    .line 2299
    const-string v11, "raw_events"

    const-string v12, "app_id=?"

    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    .line 2300
    const-string v11, "raw_events_metadata"

    const-string v12, "app_id=?"

    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    .line 2301
    const-string v11, "event_filters"

    const-string v12, "app_id=?"

    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    .line 2302
    const-string v11, "property_filters"

    const-string v12, "app_id=?"

    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    .line 2303
    const-string v11, "audience_filter_values"

    const-string v12, "app_id=?"

    invoke-virtual {v0, v11, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v10, v0

    .line 2304
    if-lez v10, :cond_159

    .line 2305
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v9, "Deleted application data. app, records"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v8, v10}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_159
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ec .. :try_end_159} :catch_15a
    .catchall {:try_start_ec .. :try_end_159} :catchall_473

    .line 2306
    :cond_159
    goto :goto_16c

    .line 2307
    :catch_15a
    move-exception v0

    .line 2308
    :try_start_15b
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v7

    .line 2309
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v7

    const-string v9, "Error deleting application data. appId, error"

    .line 2310
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v9, v8, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2311
    :goto_16c
    nop

    .line 2312
    move-object/from16 v0, v16

    :cond_16f
    if-eqz v0, :cond_1db

    .line 2313
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhf()J

    move-result-wide v7

    const-wide/32 v9, -0x80000000

    cmp-long v11, v7, v9

    if-eqz v11, :cond_1a8

    .line 2314
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzhf()J

    move-result-wide v7

    iget-wide v9, v2, Lcom/google/android/gms/measurement/internal/zzi;->zzagd:J

    cmp-long v11, v7, v9

    if-eqz v11, :cond_1db

    .line 2315
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2316
    const-string v8, "_pv"

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzae;

    const-string v8, "_au"

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzab;

    invoke-direct {v9, v7}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Landroid/os/Bundle;)V

    const-string v10, "auto"

    move-object v7, v0

    move-wide v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzab;Ljava/lang/String;J)V

    .line 2318
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzc(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)V

    .line 2319
    goto :goto_1db

    .line 2320
    :cond_1a8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1db

    .line 2321
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzi;->zzts:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1db

    .line 2322
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2323
    const-string v8, "_pv"

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzae;

    const-string v8, "_au"

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzab;

    invoke-direct {v9, v7}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Landroid/os/Bundle;)V

    const-string v10, "auto"

    move-object v7, v0

    move-wide v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzab;Ljava/lang/String;J)V

    .line 2325
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzc(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)V

    .line 2326
    :cond_1db
    :goto_1db
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzg(Lcom/google/android/gms/measurement/internal/zzi;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 2327
    nop

    .line 2328
    if-nez v15, :cond_1ef

    .line 2329
    nop

    .line 2330
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    const-string v8, "_f"

    .line 2331
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/measurement/internal/zzr;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    goto :goto_201

    .line 2332
    :cond_1ef
    if-ne v15, v14, :cond_1ff

    .line 2333
    nop

    .line 2334
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    const-string v8, "_v"

    .line 2335
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/measurement/internal/zzr;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    goto :goto_201

    .line 2336
    :cond_1ff
    move-object/from16 v0, v16

    :goto_201
    if-nez v0, :cond_447

    .line 2337
    const-wide/32 v7, 0x36ee80

    div-long v9, v5, v7

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    mul-long v9, v9, v7

    .line 2338
    if-nez v15, :cond_398

    .line 2339
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfr;

    const-string v8, "_fot"

    .line 2340
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v17, "auto"

    move-object v7, v0

    move-wide v9, v5

    move-wide v13, v11

    move-object v11, v15

    move-object/from16 v12, v17

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzfr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2341
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzb(Lcom/google/android/gms/measurement/internal/zzfr;Lcom/google/android/gms/measurement/internal/zzi;)V

    .line 2342
    nop

    .line 2343
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    .line 2344
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzi;->zzafx:Ljava/lang/String;

    .line 2345
    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzo;->zzbg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_243

    .line 2346
    nop

    .line 2347
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 2348
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 2349
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzkk()Lcom/google/android/gms/measurement/internal/zzbh;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    .line 2350
    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzbh;->zzcg(Ljava/lang/String;)V

    .line 2351
    :cond_243
    nop

    .line 2352
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 2353
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 2354
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 2355
    const-string v0, "_c"

    invoke-virtual {v15, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2356
    const-string v0, "_r"

    invoke-virtual {v15, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2357
    const-string v0, "_uwa"

    invoke-virtual {v15, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2358
    const-string v0, "_pfo"

    invoke-virtual {v15, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2359
    const-string v0, "_sys"

    invoke-virtual {v15, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2360
    const-string v0, "_sysu"

    invoke-virtual {v15, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2361
    nop

    .line 2362
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    .line 2363
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzo;->zzbm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_281

    .line 2364
    const-string v0, "_et"

    invoke-virtual {v15, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2365
    :cond_281
    nop

    .line 2366
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    .line 2367
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzo;->zzbc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_299

    .line 2368
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzi;->zzahc:Z

    if-eqz v0, :cond_299

    .line 2369
    const-string v0, "_dac"

    invoke-virtual {v15, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2370
    :cond_299
    nop

    .line 2371
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2372
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2373
    if-nez v0, :cond_2be

    .line 2374
    nop

    .line 2375
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 2376
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v7, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    .line 2377
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 2378
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2bc
    .catchall {:try_start_15b .. :try_end_2bc} :catchall_473

    goto/16 :goto_363

    .line 2379
    :cond_2be
    nop

    .line 2380
    nop

    .line 2381
    :try_start_2c0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2382
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_2d1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c0 .. :try_end_2d1} :catch_2d2
    .catchall {:try_start_2c0 .. :try_end_2d1} :catchall_473

    .line 2383
    goto :goto_2eb

    .line 2384
    :catch_2d2
    move-exception v0

    .line 2385
    nop

    .line 2386
    :try_start_2d4
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v7

    .line 2387
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v7

    const-string v8, "Package info is null, first open report might be inaccurate. appId"

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    .line 2388
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 2389
    invoke-virtual {v7, v8, v9, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2390
    move-object/from16 v0, v16

    :goto_2eb
    if-eqz v0, :cond_31e

    .line 2391
    iget-wide v7, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v9, v7, v3

    if-eqz v9, :cond_31e

    .line 2392
    nop

    .line 2393
    iget-wide v7, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v9, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v7, v9

    if-eqz v0, :cond_303

    .line 2394
    const-string v0, "_uwa"

    invoke-virtual {v15, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2396
    const/4 v0, 0x0

    goto :goto_305

    .line 2395
    :cond_303
    nop

    .line 2396
    const/4 v0, 0x1

    :goto_305
    new-instance v12, Lcom/google/android/gms/measurement/internal/zzfr;

    const-string v8, "_fi"

    .line 2397
    if-eqz v0, :cond_30d

    move-wide v9, v13

    goto :goto_30e

    :cond_30d
    move-wide v9, v3

    :goto_30e
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v0, "auto"

    move-object v7, v12

    move-wide v9, v5

    move-object v3, v12

    move-object v12, v0

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzfr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2398
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzb(Lcom/google/android/gms/measurement/internal/zzfr;Lcom/google/android/gms/measurement/internal/zzi;)V
    :try_end_31e
    .catchall {:try_start_2d4 .. :try_end_31e} :catchall_473

    .line 2399
    :cond_31e
    nop

    .line 2400
    nop

    .line 2401
    :try_start_320
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2402
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_331
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_320 .. :try_end_331} :catch_332
    .catchall {:try_start_320 .. :try_end_331} :catchall_473

    .line 2403
    goto :goto_34b

    .line 2404
    :catch_332
    move-exception v0

    .line 2405
    nop

    .line 2406
    :try_start_334
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 2407
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v4, "Application info is null, first open report might be inaccurate. appId"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    .line 2408
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 2409
    invoke-virtual {v3, v4, v7, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2410
    move-object/from16 v0, v16

    :goto_34b
    if-eqz v0, :cond_363

    .line 2411
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_358

    .line 2412
    const-string v3, "_sys"

    invoke-virtual {v15, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2413
    :cond_358
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_363

    .line 2414
    const-string v0, "_sysu"

    invoke-virtual {v15, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2415
    :cond_363
    :goto_363
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    .line 2416
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2417
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 2418
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 2419
    const-string v4, "first_open_count"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzr;->zzn(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 2420
    nop

    .line 2421
    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-ltz v0, :cond_384

    .line 2422
    const-string v0, "_pfo"

    invoke-virtual {v15, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2423
    :cond_384
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzae;

    const-string v8, "_f"

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzab;

    invoke-direct {v9, v15}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Landroid/os/Bundle;)V

    const-string v10, "auto"

    move-object v7, v0

    move-wide v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzab;Ljava/lang/String;J)V

    .line 2424
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzc(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)V

    .line 2425
    goto :goto_403

    :cond_398
    move-wide v13, v11

    const/4 v3, 0x1

    if-ne v15, v3, :cond_403

    .line 2426
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfr;

    const-string v8, "_fvt"

    .line 2427
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "auto"

    move-object v7, v0

    move-wide v9, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzfr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2428
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzb(Lcom/google/android/gms/measurement/internal/zzfr;Lcom/google/android/gms/measurement/internal/zzi;)V

    .line 2429
    nop

    .line 2430
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 2431
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 2432
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2433
    const-string v3, "_c"

    invoke-virtual {v0, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2434
    const-string v3, "_r"

    invoke-virtual {v0, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2435
    nop

    .line 2436
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v3

    .line 2437
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzo;->zzbm(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d8

    .line 2438
    const-string v3, "_et"

    invoke-virtual {v0, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2439
    :cond_3d8
    nop

    .line 2440
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v3

    .line 2441
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzo;->zzbc(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f0

    .line 2442
    iget-boolean v3, v2, Lcom/google/android/gms/measurement/internal/zzi;->zzahc:Z

    if-eqz v3, :cond_3f0

    .line 2443
    const-string v3, "_dac"

    invoke-virtual {v0, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2444
    :cond_3f0
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzae;

    const-string v8, "_v"

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzab;

    invoke-direct {v9, v0}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Landroid/os/Bundle;)V

    const-string v10, "auto"

    move-object v7, v3

    move-wide v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzab;Ljava/lang/String;J)V

    .line 2445
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzc(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)V

    .line 2446
    :cond_403
    :goto_403
    nop

    .line 2447
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    .line 2448
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzag;->zzalm:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzo;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag$zza;)Z

    move-result v0

    if-nez v0, :cond_446

    .line 2449
    nop

    .line 2450
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2451
    const-string v3, "_et"

    invoke-virtual {v0, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2452
    nop

    .line 2453
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v3

    .line 2454
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzo;->zzbm(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_433

    .line 2455
    const-string v3, "_fr"

    invoke-virtual {v0, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2456
    :cond_433
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzae;

    const-string v8, "_e"

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzab;

    invoke-direct {v9, v0}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Landroid/os/Bundle;)V

    const-string v10, "auto"

    move-object v7, v3

    move-wide v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzab;Ljava/lang/String;J)V

    .line 2457
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzc(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)V

    .line 2458
    :cond_446
    goto :goto_464

    :cond_447
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzi;->zzagz:Z

    if-eqz v0, :cond_464

    .line 2459
    nop

    .line 2460
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2461
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzae;

    const-string v8, "_cd"

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzab;

    invoke-direct {v9, v0}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Landroid/os/Bundle;)V

    const-string v10, "auto"

    move-object v7, v3

    move-wide v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzab;Ljava/lang/String;J)V

    .line 2462
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzc(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)V

    .line 2463
    :cond_464
    :goto_464
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->setTransactionSuccessful()V
    :try_end_46b
    .catchall {:try_start_334 .. :try_end_46b} :catchall_473

    .line 2464
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    .line 2465
    return-void

    .line 2466
    :catchall_473
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzr;->endTransaction()V

    throw v0
.end method

.method final zzf(Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 2580
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzct(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzi;

    move-result-object v0

    .line 2581
    if-eqz v0, :cond_b

    .line 2582
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzc(Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/measurement/internal/zzi;)V

    .line 2583
    :cond_b
    return-void
.end method

.method final zzg(Ljava/lang/Runnable;)V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1860
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 1861
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauf:Ljava/util/List;

    if-nez v0, :cond_e

    .line 1862
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauf:Ljava/util/List;

    .line 1863
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauf:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1864
    return-void
.end method

.method public final zzgq()Lcom/google/android/gms/measurement/internal/zzao;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    return-object v0
.end method

.method public final zzgr()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public final zzgs()Lcom/google/android/gms/measurement/internal/zzbp;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    return-object v0
.end method

.method public final zzgt()Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public final zzgv()Lcom/google/android/gms/measurement/internal/zzo;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    return-object v0
.end method

.method public final zzgw()Lcom/google/android/gms/measurement/internal/zzl;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    move-result-object v0

    return-object v0
.end method

.method final zzh(Lcom/google/android/gms/measurement/internal/zzi;)Ljava/lang/String;
    .registers 6

    .line 2697
    nop

    .line 2698
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    .line 2699
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzfo;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzi;)V

    .line 2700
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbp;->zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 2701
    const-wide/16 v1, 0x7530

    :try_start_12
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_12 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_1a} :catch_1b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_12 .. :try_end_1a} :catch_1b

    return-object v0

    .line 2702
    :catch_1b
    move-exception v0

    .line 2703
    nop

    .line 2704
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 2705
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Failed to get app instance id. appId"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzi;->packageName:Ljava/lang/String;

    .line 2706
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2707
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2708
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzjr()Lcom/google/android/gms/measurement/internal/zzfq;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaua:Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Lcom/google/android/gms/measurement/internal/zzfj;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaua:Lcom/google/android/gms/measurement/internal/zzfq;

    return-object v0
.end method

.method public final zzjs()Lcom/google/android/gms/measurement/internal/zzk;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzatz:Lcom/google/android/gms/measurement/internal/zzk;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Lcom/google/android/gms/measurement/internal/zzfj;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzatz:Lcom/google/android/gms/measurement/internal/zzk;

    return-object v0
.end method

.method public final zzjt()Lcom/google/android/gms/measurement/internal/zzr;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzatw:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Lcom/google/android/gms/measurement/internal/zzfj;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzatw:Lcom/google/android/gms/measurement/internal/zzr;

    return-object v0
.end method

.method public final zzlt()Lcom/google/android/gms/measurement/internal/zzau;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzatv:Lcom/google/android/gms/measurement/internal/zzau;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Lcom/google/android/gms/measurement/internal/zzfj;)V

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzatv:Lcom/google/android/gms/measurement/internal/zzau;

    return-object v0
.end method

.method public final zzlw()Lcom/google/android/gms/measurement/internal/zzdt;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaub:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Lcom/google/android/gms/measurement/internal/zzfj;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaub:Lcom/google/android/gms/measurement/internal/zzdt;

    return-object v0
.end method

.method final zzlx()V
    .registers 3

    .line 123
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzvz:Z

    if-eqz v0, :cond_5

    .line 125
    return-void

    .line 124
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzlz()V
    .registers 18
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 690
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 691
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 692
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzauk:Z

    .line 693
    nop

    .line 694
    const/4 v2, 0x0

    :try_start_d
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    .line 695
    nop

    .line 696
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgl()Lcom/google/android/gms/measurement/internal/zzdz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzdz;->zzli()Ljava/lang/Boolean;

    move-result-object v3

    .line 697
    if-nez v3, :cond_35

    .line 698
    nop

    .line 699
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 700
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v3, "Upload data called on the client side before use of service was decided"

    .line 701
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_2fd

    .line 702
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzauk:Z

    .line 703
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmc()V

    .line 704
    return-void

    .line 705
    :cond_35
    :try_start_35
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 706
    nop

    .line 707
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 708
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v3, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_35 .. :try_end_4b} :catchall_2fd

    .line 709
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzauk:Z

    .line 710
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmc()V

    .line 711
    return-void

    .line 712
    :cond_51
    :try_start_51
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzaue:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_62

    .line 713
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmb()V
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_2fd

    .line 714
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzauk:Z

    .line 715
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmc()V

    .line 716
    return-void

    .line 717
    :cond_62
    nop

    .line 718
    :try_start_63
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 719
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzaun:Ljava/util/List;

    if-eqz v3, :cond_6c

    .line 720
    const/4 v3, 0x1

    goto :goto_6e

    .line 719
    :cond_6c
    nop

    .line 720
    const/4 v3, 0x0

    :goto_6e
    if-eqz v3, :cond_86

    .line 721
    nop

    .line 722
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 723
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v3, "Uploading requested multiple times"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_63 .. :try_end_80} :catchall_2fd

    .line 724
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzauk:Z

    .line 725
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmc()V

    .line 726
    return-void

    .line 727
    :cond_86
    :try_start_86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlt()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzfb()Z

    move-result v3

    if-nez v3, :cond_a9

    .line 728
    nop

    .line 729
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 730
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v3, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 731
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmb()V
    :try_end_a3
    .catchall {:try_start_86 .. :try_end_a3} :catchall_2fd

    .line 732
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzauk:Z

    .line 733
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmc()V

    .line 734
    return-void

    .line 735
    :cond_a9
    nop

    .line 736
    :try_start_aa
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    .line 737
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 738
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzo;->zzic()J

    move-result-wide v7

    const/4 v9, 0x0

    sub-long v7, v3, v7

    .line 739
    const/4 v9, 0x0

    invoke-direct {v1, v9, v7, v8}, Lcom/google/android/gms/measurement/internal/zzfk;->zzd(Ljava/lang/String;J)Z

    .line 740
    nop

    .line 741
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v7

    .line 742
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzbb;->zzanl:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbe;->get()J

    move-result-wide v7

    .line 743
    cmp-long v10, v7, v5

    if-eqz v10, :cond_eb

    .line 744
    nop

    .line 745
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v5

    .line 746
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    const/4 v10, 0x0

    sub-long v7, v3, v7

    .line 747
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 748
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 749
    :cond_eb
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzr;->zzih()Ljava/lang/String;

    move-result-object v5

    .line 750
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/16 v7, -0x1

    if-nez v6, :cond_2d3

    .line 751
    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzaup:J

    cmp-long v6, v10, v7

    if-nez v6, :cond_10b

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzr;->zzio()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzaup:J

    .line 753
    :cond_10b
    nop

    .line 754
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v6

    .line 755
    nop

    .line 756
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzag;->zzajm:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/measurement/internal/zzo;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag$zza;)I

    move-result v6

    .line 757
    nop

    .line 758
    nop

    .line 759
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v7

    .line 760
    nop

    .line 761
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzag;->zzajn:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/measurement/internal/zzo;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag$zza;)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 762
    nop

    .line 763
    nop

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzr;->zzb(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    .line 765
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2d2

    .line 766
    nop

    .line 767
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_141
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 768
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzgl;

    .line 769
    iget-object v10, v8, Lcom/google/android/gms/internal/measurement/zzgl;->zzayh:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_15c

    .line 770
    iget-object v7, v8, Lcom/google/android/gms/internal/measurement/zzgl;->zzayh:Ljava/lang/String;

    .line 771
    goto :goto_15e

    .line 772
    :cond_15c
    goto :goto_141

    .line 773
    :cond_15d
    move-object v7, v9

    :goto_15e
    if-eqz v7, :cond_189

    .line 774
    const/4 v8, 0x0

    :goto_161
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_189

    .line 775
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzgl;

    .line 776
    iget-object v11, v10, Lcom/google/android/gms/internal/measurement/zzgl;->zzayh:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_186

    .line 777
    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/zzgl;->zzayh:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_186

    .line 778
    invoke-interface {v6, v2, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 779
    goto :goto_189

    .line 780
    :cond_186
    add-int/lit8 v8, v8, 0x1

    goto :goto_161

    .line 781
    :cond_189
    :goto_189
    new-instance v7, Lcom/google/android/gms/internal/measurement/zzgk;

    invoke-direct {v7}, Lcom/google/android/gms/internal/measurement/zzgk;-><init>()V

    .line 782
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/google/android/gms/internal/measurement/zzgl;

    iput-object v8, v7, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    .line 783
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 784
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzo;->zzie()Z

    move-result v10

    if-eqz v10, :cond_1b3

    .line 785
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v10

    .line 786
    invoke-virtual {v10, v5}, Lcom/google/android/gms/measurement/internal/zzo;->zzau(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1b3

    .line 787
    const/4 v10, 0x1

    goto :goto_1b5

    .line 786
    :cond_1b3
    nop

    .line 787
    const/4 v10, 0x0

    :goto_1b5
    const/4 v11, 0x0

    :goto_1b6
    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    array-length v12, v12

    if-ge v11, v12, :cond_210

    .line 788
    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzgl;

    aput-object v13, v12, v11

    .line 789
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    aget-object v12, v12, v11

    .line 791
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v13

    .line 792
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzo;->zzhh()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/gms/internal/measurement/zzgl;->zzayg:Ljava/lang/Long;

    .line 793
    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    aget-object v12, v12, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/gms/internal/measurement/zzgl;->zzaxw:Ljava/lang/Long;

    .line 794
    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    aget-object v12, v12, v11

    .line 795
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    .line 796
    nop

    .line 797
    nop

    .line 798
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iput-object v13, v12, Lcom/google/android/gms/internal/measurement/zzgl;->zzayl:Ljava/lang/Boolean;

    .line 799
    if-nez v10, :cond_20d

    .line 800
    iget-object v12, v7, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    aget-object v12, v12, v11

    iput-object v9, v12, Lcom/google/android/gms/internal/measurement/zzgl;->zzayt:Ljava/lang/String;

    .line 801
    :cond_20d
    add-int/lit8 v11, v11, 0x1

    goto :goto_1b6

    .line 802
    :cond_210
    nop

    .line 803
    nop

    .line 804
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v6

    .line 805
    const/4 v10, 0x2

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzaq;->isLoggable(I)Z

    move-result v6

    if-eqz v6, :cond_227

    .line 806
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(Lcom/google/android/gms/internal/measurement/zzgk;)Ljava/lang/String;

    move-result-object v9

    .line 807
    :cond_227
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjr()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Lcom/google/android/gms/internal/measurement/zzgk;)[B

    move-result-object v14

    .line 808
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzag;->zzajw:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzag$zza;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_237
    .catchall {:try_start_aa .. :try_end_237} :catchall_2fd

    .line 809
    nop

    .line 810
    :try_start_238
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 811
    nop

    .line 812
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v0

    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 813
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzaun:Ljava/util/List;

    if-eqz v10, :cond_25b

    .line 814
    nop

    .line 815
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v8

    .line 816
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v8

    const-string v10, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    goto :goto_262

    .line 817
    :cond_25b
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzaun:Ljava/util/List;

    .line 818
    :goto_262
    nop

    .line 819
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v8

    .line 820
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzbb;->zzanm:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v8, v3, v4}, Lcom/google/android/gms/measurement/internal/zzbe;->set(J)V

    .line 821
    const-string v3, "?"

    .line 822
    iget-object v4, v7, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    array-length v4, v4

    if-lez v4, :cond_27b

    .line 823
    iget-object v3, v7, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzgl;->zztt:Ljava/lang/String;

    .line 824
    :cond_27b
    nop

    .line 825
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v4

    .line 826
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    const-string v7, "Uploading data. app, uncompressed size, data"

    array-length v8, v14

    .line 827
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v3, v8, v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 828
    iput-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzauj:Z

    .line 829
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlt()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v11

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfm;

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/zzfm;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;Ljava/lang/String;)V

    .line 830
    nop

    .line 831
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 832
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfj;->zzcl()V

    .line 833
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzay;

    const/4 v15, 0x0

    move-object v10, v4

    move-object v12, v5

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzay;-><init>(Lcom/google/android/gms/measurement/internal/zzau;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzaw;)V

    .line 837
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzbp;->zzd(Ljava/lang/Runnable;)V
    :try_end_2bc
    .catch Ljava/net/MalformedURLException; {:try_start_238 .. :try_end_2bc} :catch_2bd
    .catchall {:try_start_238 .. :try_end_2bc} :catchall_2fd

    .line 838
    goto :goto_2f7

    .line 839
    :catch_2bd
    move-exception v0

    .line 840
    nop

    .line 841
    :try_start_2bf
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 842
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v3, "Failed to parse upload URL. Not uploading. appId"

    .line 843
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 844
    invoke-virtual {v0, v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 845
    :cond_2d2
    goto :goto_2f7

    .line 846
    :cond_2d3
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzaup:J

    .line 847
    nop

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    .line 849
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzo;->zzic()J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzr;->zzah(J)Ljava/lang/String;

    move-result-object v0

    .line 850
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2f7

    .line 851
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzjt()Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzr;->zzbo(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    .line 852
    if-eqz v0, :cond_2f7

    .line 853
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V
    :try_end_2f7
    .catchall {:try_start_2bf .. :try_end_2f7} :catchall_2fd

    .line 854
    :cond_2f7
    :goto_2f7
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzauk:Z

    .line 855
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmc()V

    .line 856
    return-void

    .line 857
    :catchall_2fd
    move-exception v0

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzfk;->zzauk:Z

    .line 858
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmc()V

    throw v0
.end method

.method final zzm(Z)V
    .registers 2

    .line 2709
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmb()V

    .line 2710
    return-void
.end method

.method final zzme()V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1975
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 1976
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 1977
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaud:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9b

    .line 1978
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaud:Z

    .line 1979
    nop

    .line 1980
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 1981
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 1982
    nop

    .line 1983
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    .line 1984
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzag;->zzalp:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzo;->zza(Lcom/google/android/gms/measurement/internal/zzag$zza;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmf()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 1985
    :cond_29
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmd()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 1986
    nop

    .line 1987
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaum:Ljava/nio/channels/FileChannel;

    .line 1988
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    .line 1989
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzak;->zzjd()I

    move-result v2

    .line 1990
    nop

    .line 1991
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzaf()V

    .line 1992
    if-le v0, v2, :cond_5f

    .line 1993
    nop

    .line 1994
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 1995
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v4, "Panic: can\'t downgrade version. Previous, current version"

    .line 1996
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1997
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1998
    invoke-virtual {v3, v4, v0, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1999
    goto :goto_9b

    .line 2000
    :cond_5f
    if-ge v0, v2, :cond_9b

    .line 2001
    nop

    .line 2002
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzaum:Ljava/nio/channels/FileChannel;

    .line 2003
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 2004
    nop

    .line 2005
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 2006
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v4, "Storage version upgraded. Previous, current version"

    .line 2007
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v0, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9b

    .line 2008
    :cond_83
    nop

    .line 2009
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 2010
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v4, "Storage version upgrade failed. Previous, current version"

    .line 2011
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2012
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2013
    invoke-virtual {v3, v4, v0, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2014
    :cond_9b
    :goto_9b
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauc:Z

    if-nez v0, :cond_c2

    .line 2015
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    .line 2016
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzag;->zzalp:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzo;->zza(Lcom/google/android/gms/measurement/internal/zzag$zza;)Z

    move-result v0

    if-nez v0, :cond_c2

    .line 2017
    nop

    .line 2018
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 2019
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjm()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v2, "This instance being marked as an uploader"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 2020
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauc:Z

    .line 2021
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmb()V

    .line 2022
    :cond_c2
    return-void
.end method

.method final zzmg()V
    .registers 2

    .line 2241
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauh:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzauh:I

    .line 2242
    return-void
.end method

.method final zzmh()Lcom/google/android/gms/measurement/internal/zzbu;
    .registers 2

    .line 2243
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    return-object v0
.end method

###### Class com.google.android.gms.measurement.internal.zzfk.zza (com.google.android.gms.measurement.internal.zzfk$zza)
.class final Lcom/google/android/gms/measurement/internal/zzfk$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/zzfk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field private final synthetic zzaur:Lcom/google/android/gms/measurement/internal/zzfk;

.field zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

.field zzauu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field zzauv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzgi;",
            ">;"
        }
    .end annotation
.end field

.field private zzauw:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzfk;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaur:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzfl;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfk$zza;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzgi;)J
    .registers 5

    .line 25
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final zza(JLcom/google/android/gms/internal/measurement/zzgi;)Z
    .registers 10

    .line 5
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzauv:Ljava/util/List;

    if-nez v0, :cond_e

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzauv:Ljava/util/List;

    .line 8
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzauu:Ljava/util/List;

    if-nez v0, :cond_19

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzauu:Ljava/util/List;

    .line 10
    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzauv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzauv:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgi;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zza(Lcom/google/android/gms/internal/measurement/zzgi;)J

    move-result-wide v2

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zza(Lcom/google/android/gms/internal/measurement/zzgi;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_37

    .line 11
    return v1

    .line 12
    :cond_37
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzauw:J

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzzr;->zzwe()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 13
    nop

    .line 14
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzag;->zzajo:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzag$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 15
    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_56

    .line 16
    return v1

    .line 17
    :cond_56
    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzauw:J

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzauv:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzauu:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzauv:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 21
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzag;->zzajp:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzag$zza;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 22
    if-lt p1, p2, :cond_80

    .line 23
    return v1

    .line 24
    :cond_80
    return p3
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzgl;)V
    .registers 2

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfk$zza;->zzaut:Lcom/google/android/gms/internal/measurement/zzgl;

    .line 4
    return-void
.end method
