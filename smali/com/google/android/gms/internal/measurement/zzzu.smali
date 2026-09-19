###### Class com.google.android.gms.internal.measurement.zzzu (com.google.android.gms.internal.measurement.zzzu)
.class public final Lcom/google/android/gms/internal/measurement/zzzu;
.super Ljava/lang/Object;


# static fields
.field public static final zzcbs:[I

.field private static final zzcgi:I

.field private static final zzcgj:I

.field private static final zzcgk:I

.field private static final zzcgl:I

.field public static final zzcgm:[J

.field private static final zzcgn:[F

.field private static final zzcgo:[D

.field private static final zzcgp:[Z

.field public static final zzcgq:[Ljava/lang/String;

.field private static final zzcgr:[[B

.field public static final zzcgs:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 9
    nop

    .line 10
    const/16 v0, 0xb

    sput v0, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgi:I

    .line 11
    nop

    .line 12
    const/16 v0, 0xc

    sput v0, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgj:I

    .line 13
    nop

    .line 14
    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgk:I

    .line 15
    nop

    .line 16
    const/16 v0, 0x1a

    sput v0, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgl:I

    .line 17
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzu;->zzcbs:[I

    .line 18
    new-array v1, v0, [J

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgm:[J

    .line 19
    new-array v1, v0, [F

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgn:[F

    .line 20
    new-array v1, v0, [D

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgo:[D

    .line 21
    new-array v1, v0, [Z

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgp:[Z

    .line 22
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgq:[Ljava/lang/String;

    .line 23
    new-array v1, v0, [[B

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgr:[[B

    .line 24
    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgs:[B

    return-void
.end method

.method public static final zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    nop

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->getPosition()I

    move-result v0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzap(I)Z

    .line 4
    const/4 v1, 0x1

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v2

    if-ne v2, p1, :cond_15

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzap(I)Z

    .line 6
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 7
    :cond_15
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzt(II)V

    .line 8
    return v1
.end method
