###### Class com.google.android.gms.internal.measurement.zzvz (com.google.android.gms.internal.measurement.zzvz)
.class public final Lcom/google/android/gms/internal/measurement/zzvz;
.super Ljava/lang/Object;


# static fields
.field private static final ISO_8859_1:Ljava/nio/charset/Charset;

.field static final UTF_8:Ljava/nio/charset/Charset;

.field public static final zzcae:[B

.field private static final zzcaf:Ljava/nio/ByteBuffer;

.field private static final zzcag:Lcom/google/android/gms/internal/measurement/zzuz;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 22
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvz;->UTF_8:Ljava/nio/charset/Charset;

    .line 23
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvz;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 24
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 25
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzvz;->zzcae:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzvz;->zzcaf:Ljava/nio/ByteBuffer;

    .line 26
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzvz;->zzcae:[B

    .line 27
    nop

    .line 28
    array-length v2, v1

    .line 29
    invoke-static {v1, v0, v2, v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zza([BIIZ)Lcom/google/android/gms/internal/measurement/zzuz;

    move-result-object v0

    .line 30
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvz;->zzcag:Lcom/google/android/gms/internal/measurement/zzuz;

    .line 31
    return-void
.end method

.method static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_3

    .line 3
    return-object p0

    .line 2
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static hashCode([B)I
    .registers 3

    .line 11
    array-length v0, p0

    .line 12
    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzvz;->zza(I[BII)I

    move-result p0

    .line 13
    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 14
    :cond_a
    return p0
.end method

.method static zza(I[BII)I
    .registers 6

    .line 15
    move v0, p0

    move p0, p2

    :goto_2
    add-int v1, p2, p3

    if-ge p0, v1, :cond_e

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    aget-byte v1, p1, p0

    add-int/2addr v0, v1

    .line 17
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 18
    :cond_e
    return v0
.end method

.method static zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 4
    if-eqz p0, :cond_3

    .line 6
    return-object p0

    .line 5
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 21
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzxe;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzxe;->zzwo()Lcom/google/android/gms/internal/measurement/zzxf;

    move-result-object p0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzxe;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzxf;->zza(Lcom/google/android/gms/internal/measurement/zzxe;)Lcom/google/android/gms/internal/measurement/zzxf;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzxf;->zzwu()Lcom/google/android/gms/internal/measurement/zzxe;

    move-result-object p0

    return-object p0
.end method

.method public static zzbi(J)I
    .registers 4

    .line 9
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method static zzf(Lcom/google/android/gms/internal/measurement/zzxe;)Z
    .registers 1

    .line 19
    nop

    .line 20
    const/4 p0, 0x0

    return p0
.end method

.method public static zzl([B)Z
    .registers 1

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzyu;->zzl([B)Z

    move-result p0

    return p0
.end method

.method public static zzm([B)Ljava/lang/String;
    .registers 3

    .line 8
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzvz;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static zzu(Z)I
    .registers 1

    .line 10
    if-eqz p0, :cond_5

    const/16 p0, 0x4cf

    return p0

    :cond_5
    const/16 p0, 0x4d5

    return p0
.end method
