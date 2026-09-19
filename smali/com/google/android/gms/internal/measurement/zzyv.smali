###### Class com.google.android.gms.internal.measurement.zzyv (com.google.android.gms.internal.measurement.zzyv)
.class final Lcom/google/android/gms/internal/measurement/zzyv;
.super Ljava/lang/Object;


# direct methods
.method private static zza(BBBB[CI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzwe;
        }
    .end annotation

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzyv;->zzg(B)Z

    move-result v0

    if-nez v0, :cond_42

    shl-int/lit8 v0, p0, 0x1c

    add-int/lit8 v1, p1, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_42

    .line 22
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzyv;->zzg(B)Z

    move-result v0

    if-nez v0, :cond_42

    .line 23
    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/zzyv;->zzg(B)Z

    move-result v0

    if-nez v0, :cond_42

    .line 25
    and-int/lit8 p0, p0, 0x7

    shl-int/lit8 p0, p0, 0x12

    .line 26
    and-int/lit8 p1, p1, 0x3f

    .line 27
    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p0, p1

    .line 28
    and-int/lit8 p1, p2, 0x3f

    .line 29
    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    .line 30
    and-int/lit8 p1, p3, 0x3f

    .line 31
    or-int/2addr p0, p1

    .line 32
    nop

    .line 33
    const p1, 0xd7c0

    ushr-int/lit8 p2, p0, 0xa

    add-int/2addr p2, p1

    int-to-char p1, p2

    .line 34
    aput-char p1, p4, p5

    .line 35
    add-int/lit8 p5, p5, 0x1

    .line 36
    const p1, 0xdc00

    and-int/lit16 p0, p0, 0x3ff

    add-int/2addr p0, p1

    int-to-char p0, p0

    .line 37
    aput-char p0, p4, p5

    .line 38
    return-void

    .line 24
    :cond_42
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxe()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p0

    throw p0
.end method

.method private static zza(BBB[CI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzwe;
        }
    .end annotation

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzyv;->zzg(B)Z

    move-result v0

    if-nez v0, :cond_2a

    const/16 v0, -0x20

    const/16 v1, -0x60

    if-ne p0, v0, :cond_e

    if-lt p1, v1, :cond_2a

    :cond_e
    const/16 v0, -0x13

    if-ne p0, v0, :cond_14

    if-ge p1, v1, :cond_2a

    .line 13
    :cond_14
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzyv;->zzg(B)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 15
    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0xc

    .line 16
    and-int/lit8 p1, p1, 0x3f

    .line 17
    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    .line 18
    and-int/lit8 p1, p2, 0x3f

    .line 19
    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p3, p4

    .line 20
    return-void

    .line 14
    :cond_2a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxe()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p0

    throw p0
.end method

.method private static zza(BB[CI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzwe;
        }
    .end annotation

    .line 6
    const/16 v0, -0x3e

    if-lt p0, v0, :cond_15

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzyv;->zzg(B)Z

    move-result v0

    if-nez v0, :cond_15

    .line 8
    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x6

    .line 9
    and-int/lit8 p1, p1, 0x3f

    .line 10
    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p2, p3

    .line 11
    return-void

    .line 7
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxe()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p0

    throw p0
.end method

.method private static zza(B[CI)V
    .registers 3

    .line 4
    int-to-char p0, p0

    aput-char p0, p1, p2

    .line 5
    return-void
.end method

.method static synthetic zzb(BBBB[CI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzwe;
        }
    .end annotation

    .line 46
    invoke-static/range {p0 .. p5}, Lcom/google/android/gms/internal/measurement/zzyv;->zza(BBBB[CI)V

    return-void
.end method

.method static synthetic zzb(BBB[CI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzwe;
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzyv;->zza(BBB[CI)V

    return-void
.end method

.method static synthetic zzb(BB[CI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzwe;
        }
    .end annotation

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyv;->zza(BB[CI)V

    return-void
.end method

.method static synthetic zzb(B[CI)V
    .registers 3

    .line 41
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzyv;->zza(B[CI)V

    return-void
.end method

.method private static zzd(B)Z
    .registers 1

    .line 1
    if-ltz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static zze(B)Z
    .registers 2

    .line 2
    const/16 v0, -0x20

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private static zzf(B)Z
    .registers 2

    .line 3
    const/16 v0, -0x10

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private static zzg(B)Z
    .registers 2

    .line 39
    const/16 v0, -0x41

    if-le p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zzh(B)Z
    .registers 1

    .line 40
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzyv;->zzd(B)Z

    move-result p0

    return p0
.end method

.method static synthetic zzi(B)Z
    .registers 1

    .line 42
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzyv;->zze(B)Z

    move-result p0

    return p0
.end method

.method static synthetic zzj(B)Z
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzyv;->zzf(B)Z

    move-result p0

    return p0
.end method
