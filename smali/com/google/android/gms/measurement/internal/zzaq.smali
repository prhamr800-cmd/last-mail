###### Class com.google.android.gms.measurement.internal.zzaq (com.google.android.gms.measurement.internal.zzaq)
.class public final Lcom/google/android/gms/measurement/internal/zzaq;
.super Lcom/google/android/gms/measurement/internal/zzcq;


# instance fields
.field private zzadt:J

.field private zzamd:C

.field private zzame:Ljava/lang/String;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzamf:Lcom/google/android/gms/measurement/internal/zzas;

.field private final zzamg:Lcom/google/android/gms/measurement/internal/zzas;

.field private final zzamh:Lcom/google/android/gms/measurement/internal/zzas;

.field private final zzami:Lcom/google/android/gms/measurement/internal/zzas;

.field private final zzamj:Lcom/google/android/gms/measurement/internal/zzas;

.field private final zzamk:Lcom/google/android/gms/measurement/internal/zzas;

.field private final zzaml:Lcom/google/android/gms/measurement/internal/zzas;

.field private final zzamm:Lcom/google/android/gms/measurement/internal/zzas;

.field private final zzamn:Lcom/google/android/gms/measurement/internal/zzas;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbu;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzcq;-><init>(Lcom/google/android/gms/measurement/internal/zzbu;)V

    .line 2
    const/4 p1, 0x0

    iput-char p1, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzamd:C

    .line 3
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzadt:J

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzamf:Lcom/google/android/gms/measurement/internal/zzas;

    .line 5
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzamg:Lcom/google/android/gms/measurement/internal/zzas;

    .line 6
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzamh:Lcom/google/android/gms/measurement/internal/zzas;

    .line 7
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzami:Lcom/google/android/gms/measurement/internal/zzas;

    .line 8
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzamj:Lcom/google/android/gms/measurement/internal/zzas;

    .line 9
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzamk:Lcom/google/android/gms/measurement/internal/zzas;

    .line 10
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzaml:Lcom/google/android/gms/measurement/internal/zzas;

    .line 11
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzamm:Lcom/google/android/gms/measurement/internal/zzas;

    .line 12
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzamn:Lcom/google/android/gms/measurement/internal/zzas;

    .line 13
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzaq;)C
    .registers 1

    .line 142
    iget-char p0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzamd:C

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzaq;C)C
    .registers 2

    .line 143
    iput-char p1, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzamd:C

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzaq;J)J
    .registers 3

    .line 145
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzadt:J

    return-wide p1
.end method

.method private static zza(ZLjava/lang/Object;)Ljava/lang/String;
    .registers 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 79
    if-nez p1, :cond_5

    .line 80
    const-string p0, ""

    return-object p0

    .line 81
    :cond_5
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_14

    .line 82
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 83
    :cond_14
    instance-of v0, p1, Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_a3

    .line 84
    if-nez p0, :cond_20

    .line 85
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 86
    :cond_20
    move-object p0, p1

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x64

    cmp-long v0, v2, v4

    if-gez v0, :cond_36

    .line 87
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 88
    :cond_36
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_45

    const-string p1, "-"

    goto :goto_47

    :cond_45
    const-string p1, ""

    .line 89
    :goto_47
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 90
    nop

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double v4, p0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x2b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr p0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_a3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_ac

    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 96
    :cond_ac
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_110

    .line 97
    check-cast p1, Ljava/lang/Throwable;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    if-eqz p0, :cond_bf

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_c3

    :cond_bf
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_c3
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    const-class p0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 101
    const-class v2, Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v3, p1

    :goto_df
    if-ge v1, v3, :cond_10b

    aget-object v4, p1, v1

    .line 103
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v5

    if-nez v5, :cond_108

    .line 104
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 105
    if-eqz v5, :cond_108

    .line 106
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzaq;->zzbz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ff

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_108

    .line 108
    :cond_ff
    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    goto :goto_10b

    .line 111
    :cond_108
    add-int/lit8 v1, v1, 0x1

    goto :goto_df

    .line 112
    :cond_10b
    :goto_10b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 113
    :cond_110
    instance-of v0, p1, Lcom/google/android/gms/measurement/internal/zzat;

    if-eqz v0, :cond_11b

    .line 114
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzat;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzat;->zza(Lcom/google/android/gms/measurement/internal/zzat;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 115
    :cond_11b
    if-eqz p0, :cond_120

    .line 116
    const-string p0, "-"

    return-object p0

    .line 117
    :cond_120
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static zza(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 57
    if-nez p1, :cond_4

    .line 58
    const-string p1, ""

    .line 59
    :cond_4
    invoke-static {p0, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zza(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-static {p0, p3}, Lcom/google/android/gms/measurement/internal/zzaq;->zza(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 61
    invoke-static {p0, p4}, Lcom/google/android/gms/measurement/internal/zzaq;->zza(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 62
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const-string v0, ""

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 65
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v0, ": "

    .line 67
    :cond_22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_30

    .line 68
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v0, ", "

    .line 71
    :cond_30
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3e

    .line 72
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, ", "

    .line 75
    :cond_3e
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4a

    .line 76
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_4a
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzaq;)J
    .registers 3

    .line 144
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzadt:J

    return-wide v0
.end method

.method protected static zzby(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzat;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static zzbz(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 119
    const-string p0, ""

    return-object p0

    .line 120
    :cond_9
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 121
    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 122
    return-object p0

    .line 123
    :cond_13
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzjp()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 50
    monitor-enter p0

    .line 51
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzame:Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzkq()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzkq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzame:Ljava/lang/String;

    goto :goto_1c

    .line 54
    :cond_16
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzo;->zzhy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzame:Ljava/lang/String;

    .line 55
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzame:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 56
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    .line 134
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected final isLoggable(I)Z
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method protected final zza(ILjava/lang/String;)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjp()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method protected final zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 15

    .line 27
    const/4 v0, 0x0

    if-nez p2, :cond_10

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzaq;->isLoggable(I)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 28
    invoke-static {v0, p4, p5, p6, p7}, Lcom/google/android/gms/measurement/internal/zzaq;->zza(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zza(ILjava/lang/String;)V

    .line 30
    :cond_10
    if-nez p3, :cond_50

    const/4 p2, 0x5

    if-lt p1, p2, :cond_50

    .line 31
    nop

    .line 32
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzkl()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object p2

    .line 34
    const/4 p3, 0x6

    if-nez p2, :cond_28

    .line 35
    const-string p1, "Scheduler not set. Not logging error/warn"

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zza(ILjava/lang/String;)V

    .line 36
    return-void

    .line 37
    :cond_28
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzcq;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_34

    .line 38
    const-string p1, "Scheduler not initialized. Not logging error/warn"

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zza(ILjava/lang/String;)V

    .line 39
    return-void

    .line 40
    :cond_34
    if-gez p1, :cond_38

    .line 41
    nop

    .line 42
    const/4 p1, 0x0

    :cond_38
    const/16 p3, 0x9

    if-lt p1, p3, :cond_41

    .line 43
    const/16 p1, 0x8

    .line 44
    const/16 v2, 0x8

    goto :goto_42

    :cond_41
    move v2, p1

    .line 45
    :goto_42
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzar;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzbp;->zzc(Ljava/lang/Runnable;)V

    .line 46
    :cond_50
    return-void
.end method

.method public final bridge synthetic zzaf()V
    .registers 1

    .line 131
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzaf()V

    return-void
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 133
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgf()V
    .registers 1

    .line 128
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgf()V

    return-void
.end method

.method public final bridge synthetic zzgg()V
    .registers 1

    .line 129
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgg()V

    return-void
.end method

.method public final bridge synthetic zzgh()V
    .registers 1

    .line 130
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgh()V

    return-void
.end method

.method public final bridge synthetic zzgp()Lcom/google/android/gms/measurement/internal/zzy;
    .registers 2

    .line 132
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgp()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgq()Lcom/google/android/gms/measurement/internal/zzao;
    .registers 2

    .line 135
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgr()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    .line 136
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgs()Lcom/google/android/gms/measurement/internal/zzbp;
    .registers 2

    .line 137
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgt()Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 2

    .line 138
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgu()Lcom/google/android/gms/measurement/internal/zzbb;
    .registers 2

    .line 139
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgv()Lcom/google/android/gms/measurement/internal/zzo;
    .registers 2

    .line 140
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgw()Lcom/google/android/gms/measurement/internal/zzl;
    .registers 2

    .line 141
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    move-result-object v0

    return-object v0
.end method

.method protected final zzgy()Z
    .registers 2

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public final zzjg()Lcom/google/android/gms/measurement/internal/zzas;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzamf:Lcom/google/android/gms/measurement/internal/zzas;

    return-object v0
.end method

.method public final zzjh()Lcom/google/android/gms/measurement/internal/zzas;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzamg:Lcom/google/android/gms/measurement/internal/zzas;

    return-object v0
.end method

.method public final zzji()Lcom/google/android/gms/measurement/internal/zzas;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzamh:Lcom/google/android/gms/measurement/internal/zzas;

    return-object v0
.end method

.method public final zzjj()Lcom/google/android/gms/measurement/internal/zzas;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzami:Lcom/google/android/gms/measurement/internal/zzas;

    return-object v0
.end method

.method public final zzjk()Lcom/google/android/gms/measurement/internal/zzas;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzamj:Lcom/google/android/gms/measurement/internal/zzas;

    return-object v0
.end method

.method public final zzjl()Lcom/google/android/gms/measurement/internal/zzas;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzamk:Lcom/google/android/gms/measurement/internal/zzas;

    return-object v0
.end method

.method public final zzjm()Lcom/google/android/gms/measurement/internal/zzas;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzaml:Lcom/google/android/gms/measurement/internal/zzas;

    return-object v0
.end method

.method public final zzjn()Lcom/google/android/gms/measurement/internal/zzas;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzamm:Lcom/google/android/gms/measurement/internal/zzas;

    return-object v0
.end method

.method public final zzjo()Lcom/google/android/gms/measurement/internal/zzas;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaq;->zzamn:Lcom/google/android/gms/measurement/internal/zzas;

    return-object v0
.end method

.method public final zzjq()Ljava/lang/String;
    .registers 5

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbb;->zzank:Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbf;->zzfm()Landroid/util/Pair;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_43

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbb;->zzanj:Landroid/util/Pair;

    if-ne v0, v1, :cond_11

    goto :goto_43

    .line 127
    :cond_11
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :cond_43
    :goto_43
    const/4 v0, 0x0

    return-object v0
.end method
