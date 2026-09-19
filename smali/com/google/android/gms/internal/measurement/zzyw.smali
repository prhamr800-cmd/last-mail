###### Class com.google.android.gms.internal.measurement.zzyw (com.google.android.gms.internal.measurement.zzyw)
.class abstract Lcom/google/android/gms/internal/measurement/zzyw;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzc(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 9

    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 5
    nop

    .line 6
    const/4 v2, 0x0

    :goto_a
    const/16 v3, 0x80

    if-ge v2, v0, :cond_20

    :try_start_e
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v3, :cond_20

    .line 7
    add-int v3, v1, v2

    int-to-byte v4, v4

    invoke-virtual {p1, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 8
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 34
    :catch_1d
    move-exception v0

    goto/16 :goto_d0

    .line 9
    :cond_20
    if-ne v2, v0, :cond_28

    .line 10
    add-int v0, v1, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    return-void

    .line 12
    :cond_28
    add-int/2addr v1, v2

    .line 13
    :goto_29
    if-ge v2, v0, :cond_cc

    .line 14
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 15
    if-ge v4, v3, :cond_37

    .line 16
    int-to-byte v4, v4

    invoke-virtual {p1, v1, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_35
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_35} :catch_1d

    goto/16 :goto_c4

    .line 17
    :cond_37
    const/16 v5, 0x800

    if-ge v4, v5, :cond_52

    .line 18
    add-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v4, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    :try_start_42
    invoke-virtual {p1, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 19
    and-int/lit8 v1, v4, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {p1, v5, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_4c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_42 .. :try_end_4c} :catch_ca

    .line 31
    move v1, v5

    goto/16 :goto_c4

    .line 34
    :goto_4f
    move v1, v5

    goto/16 :goto_d0

    .line 20
    :cond_52
    const v5, 0xd800

    if-lt v4, v5, :cond_a8

    const v5, 0xdfff

    if-ge v5, v4, :cond_5d

    goto :goto_a8

    .line 24
    :cond_5d
    add-int/lit8 v5, v2, 0x1

    if-eq v5, v0, :cond_a2

    :try_start_61
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 26
    invoke-static {v4, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2
    :try_end_6f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_61 .. :try_end_6f} :catch_99

    .line 27
    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v6, v2, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    :try_start_76
    invoke-virtual {p1, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_79
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_76 .. :try_end_79} :catch_9b

    .line 28
    add-int/lit8 v1, v4, 0x1

    ushr-int/lit8 v6, v2, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    :try_start_81
    invoke-virtual {p1, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_84
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_81 .. :try_end_84} :catch_99

    .line 29
    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v6, v2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    :try_start_8c
    invoke-virtual {p1, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 30
    and-int/lit8 v1, v2, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {p1, v4, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_96
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8c .. :try_end_96} :catch_9b

    .line 31
    move v1, v4

    move v2, v5

    goto :goto_c4

    .line 34
    :catch_99
    move-exception v0

    goto :goto_a0

    :catch_9b
    move-exception v0

    move v1, v4

    goto :goto_a0

    .line 25
    :cond_9e
    move v2, v5

    goto :goto_a2

    .line 34
    :goto_a0
    move v2, v5

    goto :goto_d0

    .line 25
    :cond_a2
    :goto_a2
    :try_start_a2
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzyy;

    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/internal/measurement/zzyy;-><init>(II)V

    throw v3
    :try_end_a8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a2 .. :try_end_a8} :catch_1d

    .line 21
    :cond_a8
    :goto_a8
    add-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v4, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    :try_start_af
    invoke-virtual {p1, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_b2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_af .. :try_end_b2} :catch_ca

    .line 22
    add-int/lit8 v1, v5, 0x1

    ushr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    :try_start_ba
    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 23
    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    invoke-virtual {p1, v1, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 31
    :goto_c4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_29

    .line 34
    :catch_ca
    move-exception v0

    goto :goto_4f

    .line 32
    :cond_cc
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_cf
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ba .. :try_end_cf} :catch_1d

    .line 33
    return-void

    .line 34
    :goto_d0
    nop

    .line 35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr v0, p1

    .line 36
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 37
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed writing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " at index "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method abstract zzb(I[BII)I
.end method

.method abstract zzb(Ljava/lang/CharSequence;[BII)I
.end method

.method abstract zzb(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
.end method

.method final zzf([BII)Z
    .registers 5

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyw;->zzb(I[BII)I

    move-result p1

    if-nez p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    return v0
.end method

.method abstract zzh([BII)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzwe;
        }
    .end annotation
.end method
