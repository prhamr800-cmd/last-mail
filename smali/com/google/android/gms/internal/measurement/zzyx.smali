###### Class com.google.android.gms.internal.measurement.zzyx (com.google.android.gms.internal.measurement.zzyx)
.class final Lcom/google/android/gms/internal/measurement/zzyx;
.super Lcom/google/android/gms/internal/measurement/zzyw;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyw;-><init>()V

    return-void
.end method


# virtual methods
.method final zzb(I[BII)I
    .registers 11

    .line 2
    nop

    .line 3
    :goto_1
    if-ge p3, p4, :cond_a

    aget-byte p1, p2, p3

    if-ltz p1, :cond_a

    .line 4
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 5
    :cond_a
    const/4 p1, 0x0

    if-lt p3, p4, :cond_e

    return p1

    .line 6
    :cond_e
    :goto_e
    if-lt p3, p4, :cond_11

    .line 7
    return p1

    .line 8
    :cond_11
    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    if-gez p3, :cond_7a

    .line 9
    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge p3, v1, :cond_2c

    .line 10
    if-lt v0, p4, :cond_21

    .line 11
    return p3

    .line 12
    :cond_21
    const/16 v1, -0x3e

    if-lt p3, v1, :cond_2b

    add-int/lit8 p3, v0, 0x1

    aget-byte v0, p2, v0

    if-le v0, v3, :cond_78

    .line 13
    :cond_2b
    return v2

    .line 14
    :cond_2c
    const/16 v4, -0x10

    if-ge p3, v4, :cond_52

    .line 15
    add-int/lit8 v4, p4, -0x1

    if-lt v0, v4, :cond_39

    .line 16
    invoke-static {p2, v0, p4}, Lcom/google/android/gms/internal/measurement/zzyu;->zzi([BII)I

    move-result p1

    return p1

    .line 17
    :cond_39
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p2, v0

    if-gt v0, v3, :cond_51

    const/16 v5, -0x60

    if-ne p3, v1, :cond_45

    if-lt v0, v5, :cond_51

    :cond_45
    const/16 v1, -0x13

    if-ne p3, v1, :cond_4b

    if-ge v0, v5, :cond_51

    :cond_4b
    add-int/lit8 p3, v4, 0x1

    aget-byte v0, p2, v4

    if-le v0, v3, :cond_78

    .line 18
    :cond_51
    return v2

    .line 19
    :cond_52
    add-int/lit8 v1, p4, -0x2

    if-lt v0, v1, :cond_5b

    .line 20
    invoke-static {p2, v0, p4}, Lcom/google/android/gms/internal/measurement/zzyu;->zzi([BII)I

    move-result p1

    return p1

    .line 21
    :cond_5b
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p2, v0

    if-gt v0, v3, :cond_79

    shl-int/lit8 p3, p3, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p3, v0

    shr-int/lit8 p3, p3, 0x1e

    if-nez p3, :cond_79

    add-int/lit8 p3, v1, 0x1

    aget-byte v0, p2, v1

    if-gt v0, v3, :cond_79

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    if-le p3, v3, :cond_77

    goto :goto_79

    .line 23
    :cond_77
    move p3, v0

    :cond_78
    goto :goto_e

    .line 22
    :cond_79
    :goto_79
    return v2

    .line 6
    :cond_7a
    move p3, v0

    goto :goto_e
.end method

.method final zzb(Ljava/lang/CharSequence;[BII)I
    .registers 12

    .line 61
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 62
    nop

    .line 63
    nop

    .line 64
    add-int/2addr p4, p3

    .line 65
    const/4 v1, 0x0

    :goto_8
    const/16 v2, 0x80

    if-ge v1, v0, :cond_1c

    add-int v3, v1, p3

    if-ge v3, p4, :cond_1c

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_1c

    .line 66
    int-to-byte v2, v4

    aput-byte v2, p2, v3

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 68
    :cond_1c
    if-ne v1, v0, :cond_20

    .line 69
    add-int/2addr p3, v0

    return p3

    .line 70
    :cond_20
    add-int/2addr p3, v1

    .line 71
    :goto_21
    if-ge v1, v0, :cond_102

    .line 72
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 73
    if-ge v3, v2, :cond_33

    if-ge p3, p4, :cond_33

    .line 74
    add-int/lit8 v4, p3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 95
    :goto_30
    move p3, v4

    goto/16 :goto_b8

    .line 75
    :cond_33
    const/16 v4, 0x800

    if-ge v3, v4, :cond_4d

    add-int/lit8 v4, p4, -0x2

    if-gt p3, v4, :cond_4d

    .line 76
    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    aput-byte v5, p2, p3

    .line 77
    add-int/lit8 p3, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p2, v4

    goto :goto_b8

    .line 78
    :cond_4d
    const v4, 0xdfff

    const v5, 0xd800

    if-lt v3, v5, :cond_57

    if-ge v4, v3, :cond_77

    :cond_57
    add-int/lit8 v6, p4, -0x3

    if-gt p3, v6, :cond_77

    .line 79
    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    aput-byte v5, p2, p3

    .line 80
    add-int/lit8 p3, v4, 0x1

    ushr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 81
    add-int/lit8 v4, p3, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    goto :goto_30

    .line 82
    :cond_77
    add-int/lit8 v6, p4, -0x4

    if-gt p3, v6, :cond_c5

    .line 83
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_bd

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 85
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 86
    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, p2, p3

    .line 87
    add-int/lit8 p3, v3, 0x1

    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, p2, v3

    .line 88
    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, p2, p3

    .line 89
    add-int/lit8 p3, v3, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v3

    .line 90
    nop

    .line 95
    move v1, v4

    :goto_b8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_21

    .line 84
    :cond_bc
    move v1, v4

    :cond_bd
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzyy;

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;-><init>(II)V

    throw p1

    .line 91
    :cond_c5
    if-gt v5, v3, :cond_e1

    if-gt v3, v4, :cond_e1

    add-int/lit8 p2, v1, 0x1

    .line 92
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_db

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p1

    if-nez p1, :cond_e1

    .line 93
    :cond_db
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzyy;

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzyy;-><init>(II)V

    throw p1

    .line 94
    :cond_e1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 p2, 0x25

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Failed writing "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " at index "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_102
    return p3
.end method

.method final zzb(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 97
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzyx;->zzc(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 98
    return-void
.end method

.method final zzh([BII)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzwe;
        }
    .end annotation

    .line 24
    or-int v0, p2, p3

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_af

    .line 27
    nop

    .line 28
    add-int v0, p2, p3

    .line 29
    new-array p3, p3, [C

    .line 30
    nop

    .line 31
    const/4 v3, 0x0

    :goto_11
    if-ge p2, v0, :cond_25

    .line 32
    aget-byte v4, p1, p2

    .line 33
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzyv;->zzh(B)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 34
    add-int/lit8 p2, p2, 0x1

    .line 35
    add-int/lit8 v5, v3, 0x1

    invoke-static {v4, p3, v3}, Lcom/google/android/gms/internal/measurement/zzyv;->zzb(B[CI)V

    .line 36
    nop

    .line 31
    move v3, v5

    goto :goto_11

    .line 37
    :cond_25
    move v8, v3

    :goto_26
    if-ge p2, v0, :cond_a9

    .line 38
    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    .line 39
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzyv;->zzh(B)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 40
    add-int/lit8 v4, v8, 0x1

    invoke-static {p2, p3, v8}, Lcom/google/android/gms/internal/measurement/zzyv;->zzb(B[CI)V

    .line 41
    :goto_37
    if-ge v3, v0, :cond_4b

    .line 42
    aget-byte p2, p1, v3

    .line 43
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzyv;->zzh(B)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    add-int/lit8 v5, v4, 0x1

    invoke-static {p2, p3, v4}, Lcom/google/android/gms/internal/measurement/zzyv;->zzb(B[CI)V

    .line 46
    nop

    .line 41
    move v4, v5

    goto :goto_37

    .line 59
    :cond_4b
    move p2, v3

    move v8, v4

    goto :goto_a3

    .line 47
    :cond_4e
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzyv;->zzi(B)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 48
    if-ge v3, v0, :cond_62

    .line 50
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    add-int/lit8 v5, v8, 0x1

    invoke-static {p2, v3, p3, v8}, Lcom/google/android/gms/internal/measurement/zzyv;->zzb(BB[CI)V

    .line 37
    move p2, v4

    move v8, v5

    goto :goto_26

    .line 49
    :cond_62
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxe()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p1

    throw p1

    .line 51
    :cond_67
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzyv;->zzj(B)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 52
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_81

    .line 54
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    add-int/lit8 v6, v8, 0x1

    invoke-static {p2, v3, v4, p3, v8}, Lcom/google/android/gms/internal/measurement/zzyv;->zzb(BBB[CI)V

    .line 37
    move p2, v5

    move v8, v6

    goto :goto_26

    .line 53
    :cond_81
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxe()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p1

    throw p1

    .line 55
    :cond_86
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_a4

    .line 57
    add-int/lit8 v4, v3, 0x1

    aget-byte v5, p1, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v6, p1, v4

    add-int/lit8 v9, v3, 0x1

    aget-byte v7, p1, v3

    add-int/lit8 v10, v8, 0x1

    move v3, p2

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p3

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/measurement/zzyv;->zzb(BBBB[CI)V

    .line 58
    add-int/2addr v10, v2

    .line 59
    move p2, v9

    move v8, v10

    :goto_a3
    goto :goto_26

    .line 56
    :cond_a4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxe()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p1

    throw p1

    .line 60
    :cond_a9
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 25
    :cond_af
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length p1, p1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
