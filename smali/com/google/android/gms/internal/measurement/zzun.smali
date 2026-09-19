###### Class com.google.android.gms.internal.measurement.zzun (com.google.android.gms.internal.measurement.zzun)
.class public abstract Lcom/google/android/gms/internal/measurement/zzun;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzbuu:Lcom/google/android/gms/internal/measurement/zzun;

.field private static final zzbuv:Lcom/google/android/gms/internal/measurement/zzut;

.field private static final zzbuw:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/gms/internal/measurement/zzun;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbst:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzux;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzvz;->zzcae:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzux;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzun;->zzbuu:Lcom/google/android/gms/internal/measurement/zzun;

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzuk;->zzui()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzuy;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzuy;-><init>(Lcom/google/android/gms/internal/measurement/zzuo;)V

    goto :goto_1b

    :cond_16
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzur;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzur;-><init>(Lcom/google/android/gms/internal/measurement/zzuo;)V

    :goto_1b
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzun;->zzbuv:Lcom/google/android/gms/internal/measurement/zzut;

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzup;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzup;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzun;->zzbuw:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzun;->zzbst:I

    .line 3
    return-void
.end method

.method private static zza(B)I
    .registers 1

    .line 4
    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method static zzan(I)Lcom/google/android/gms/internal/measurement/zzuv;
    .registers 3

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzuv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzuv;-><init>(ILcom/google/android/gms/internal/measurement/zzuo;)V

    return-object v0
.end method

.method static synthetic zzb(B)I
    .registers 1

    .line 36
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzun;->zza(B)I

    move-result p0

    return p0
.end method

.method static zzb(III)I
    .registers 6

    .line 22
    sub-int v0, p1, p0

    .line 23
    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_6e

    .line 24
    if-ltz p0, :cond_50

    .line 26
    if-ge p1, p0, :cond_2f

    .line 27
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Beginning index larger than ending index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 28
    :cond_2f
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "End index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_50
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const/16 p2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Beginning index: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_6e
    return v0
.end method

.method public static zzb([BII)Lcom/google/android/gms/internal/measurement/zzun;
    .registers 5

    .line 5
    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzun;->zzb(III)I

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzux;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzun;->zzbuv:Lcom/google/android/gms/internal/measurement/zzut;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzut;->zzc([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzux;-><init>([B)V

    return-object v0
.end method

.method public static zzgc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzun;
    .registers 3

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzux;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzvz;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzux;-><init>([B)V

    return-object v0
.end method

.method static zzi([B)Lcom/google/android/gms/internal/measurement/zzun;
    .registers 2

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzux;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzux;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .registers 3

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzun;->zzbst:I

    .line 13
    if-nez v0, :cond_12

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzun;->size()I

    move-result v0

    .line 15
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzun;->zza(III)I

    move-result v0

    .line 16
    if-nez v0, :cond_10

    .line 17
    const/4 v0, 0x1

    .line 18
    :cond_10
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzun;->zzbst:I

    .line 19
    :cond_12
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 33
    nop

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzuo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzuo;-><init>(Lcom/google/android/gms/internal/measurement/zzun;)V

    .line 35
    return-object v0
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 30
    const-string v0, "<ByteString@%s size=%d>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzun;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 32
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(III)I
.end method

.method protected abstract zza(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method abstract zza(Lcom/google/android/gms/internal/measurement/zzum;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzal(I)B
.end method

.method abstract zzam(I)B
.end method

.method public abstract zzb(II)Lcom/google/android/gms/internal/measurement/zzun;
.end method

.method public final zzuk()Ljava/lang/String;
    .registers 3

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvz;->UTF_8:Ljava/nio/charset/Charset;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzun;->size()I

    move-result v1

    if-nez v1, :cond_b

    const-string v0, ""

    return-object v0

    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzun;->zza(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 11
    return-object v0
.end method

.method public abstract zzul()Z
.end method

.method protected final zzum()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzun;->zzbst:I

    return v0
.end method
