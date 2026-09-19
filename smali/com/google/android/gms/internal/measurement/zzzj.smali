###### Class com.google.android.gms.internal.measurement.zzzj (com.google.android.gms.internal.measurement.zzzj)
.class public final Lcom/google/android/gms/internal/measurement/zzzj;
.super Ljava/lang/Object;


# instance fields
.field private final zzbvv:Ljava/nio/ByteBuffer;

.field private zzcfv:Lcom/google/android/gms/internal/measurement/zzve;

.field private zzcfw:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 6
    return-void
.end method

.method private constructor <init>([BII)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzj;-><init>(Ljava/nio/ByteBuffer;)V

    .line 2
    return-void
.end method

.method private static zza(Ljava/lang/CharSequence;)I
    .registers 9

    .line 85
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 86
    nop

    .line 87
    nop

    .line 88
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_15

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_15

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 90
    :cond_15
    move v3, v0

    :goto_16
    if-ge v2, v0, :cond_72

    .line 91
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 92
    const/16 v5, 0x800

    if-ge v4, v5, :cond_28

    .line 93
    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 94
    :cond_28
    nop

    .line 95
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 96
    nop

    .line 97
    :goto_2e
    if-ge v2, v4, :cond_6f

    .line 98
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 99
    if-ge v6, v5, :cond_3c

    .line 100
    rsub-int/lit8 v6, v6, 0x7f

    ushr-int/lit8 v6, v6, 0x1f

    add-int/2addr v1, v6

    goto :goto_6c

    .line 101
    :cond_3c
    add-int/lit8 v1, v1, 0x2

    .line 102
    const v7, 0xd800

    if-gt v7, v6, :cond_6c

    const v7, 0xdfff

    if-gt v6, v7, :cond_6c

    .line 103
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 104
    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_53

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 105
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unpaired surrogate at index "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_6c
    :goto_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 108
    :cond_6f
    nop

    .line 109
    add-int/2addr v3, v1

    .line 110
    nop

    .line 112
    :cond_72
    if-lt v3, v0, :cond_75

    .line 114
    return v3

    .line 113
    :cond_75
    new-instance p0, Ljava/lang/IllegalArgumentException;

    int-to-long v0, v3

    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    const/16 v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "UTF-8 length does not fit in int: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I
    .registers 3

    .line 194
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result p0

    .line 195
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzr;->zzwe()I

    move-result p1

    .line 196
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbk(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 197
    add-int/2addr p0, v0

    return p0
.end method

.method public static zzbc(I)I
    .registers 1

    .line 224
    nop

    .line 225
    shl-int/lit8 p0, p0, 0x3

    .line 226
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbk(I)I

    move-result p0

    return p0
.end method

.method public static zzbd(I)I
    .registers 1

    .line 198
    if-ltz p0, :cond_7

    .line 199
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbk(I)I

    move-result p0

    return p0

    .line 200
    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method public static zzbk(I)I
    .registers 2

    .line 232
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 233
    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    .line 234
    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    .line 235
    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    .line 236
    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method private final zzbk(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    .line 238
    long-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzcb(I)V

    .line 239
    return-void

    .line 240
    :cond_e
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzcb(I)V

    .line 241
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public static zzbl(J)I
    .registers 7

    .line 242
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    const/4 p0, 0x1

    return p0

    .line 243
    :cond_b
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    const/4 p0, 0x2

    return p0

    .line 244
    :cond_14
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e

    const/4 p0, 0x3

    return p0

    .line 245
    :cond_1e
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_28

    const/4 p0, 0x4

    return p0

    .line 246
    :cond_28
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_34

    const/4 p0, 0x5

    return p0

    .line 247
    :cond_34
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_40

    const/4 p0, 0x6

    return p0

    .line 248
    :cond_40
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_49

    const/4 p0, 0x7

    return p0

    .line 249
    :cond_49
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_53

    const/16 p0, 0x8

    return p0

    .line 250
    :cond_53
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long v0, p0, v2

    if-nez v0, :cond_5d

    const/16 p0, 0x9

    return p0

    .line 251
    :cond_5d
    const/16 p0, 0xa

    return p0
.end method

.method public static zzc(ILjava/lang/String;)I
    .registers 2

    .line 193
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzge(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private final zzcb(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    int-to-byte p1, p1

    .line 212
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 215
    return-void

    .line 213
    :cond_f
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzzk;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzk;-><init>(II)V

    throw p1
.end method

.method public static zzd(IJ)I
    .registers 3

    .line 189
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result p0

    .line 190
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbl(J)I

    move-result p1

    .line 191
    add-int/2addr p0, p1

    return p0
.end method

.method private static zzd(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 15

    .line 115
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1c7

    .line 117
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    const/16 v1, 0x27

    const v2, 0xdfff

    const v3, 0xd800

    const/16 v4, 0x800

    const/4 v5, 0x0

    const/16 v6, 0x80

    if-eqz v0, :cond_12d

    .line 118
    nop

    .line 119
    :try_start_1a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    .line 121
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    .line 122
    nop

    .line 123
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 124
    nop

    .line 125
    add-int/2addr v8, v7

    .line 126
    :goto_32
    if-ge v5, v9, :cond_44

    add-int v10, v5, v7

    if-ge v10, v8, :cond_44

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ge v11, v6, :cond_44

    .line 127
    int-to-byte v11, v11

    aput-byte v11, v0, v10

    .line 128
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 129
    :cond_44
    if-ne v5, v9, :cond_49

    .line 130
    add-int/2addr v7, v9

    goto/16 :goto_119

    .line 131
    :cond_49
    add-int/2addr v7, v5

    .line 132
    :goto_4a
    if-ge v5, v9, :cond_118

    .line 133
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 134
    if-ge v10, v6, :cond_5c

    if-ge v7, v8, :cond_5c

    .line 135
    add-int/lit8 v11, v7, 0x1

    int-to-byte v10, v10

    aput-byte v10, v0, v7

    .line 154
    :goto_59
    move v7, v11

    goto/16 :goto_d9

    .line 136
    :cond_5c
    if-ge v10, v4, :cond_74

    add-int/lit8 v11, v8, -0x2

    if-gt v7, v11, :cond_74

    .line 137
    add-int/lit8 v11, v7, 0x1

    ushr-int/lit8 v12, v10, 0x6

    or-int/lit16 v12, v12, 0x3c0

    int-to-byte v12, v12

    aput-byte v12, v0, v7

    .line 138
    add-int/lit8 v7, v11, 0x1

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v10, v6

    int-to-byte v10, v10

    aput-byte v10, v0, v11

    goto :goto_d9

    .line 139
    :cond_74
    if-lt v10, v3, :cond_78

    if-ge v2, v10, :cond_98

    :cond_78
    add-int/lit8 v11, v8, -0x3

    if-gt v7, v11, :cond_98

    .line 140
    add-int/lit8 v11, v7, 0x1

    ushr-int/lit8 v12, v10, 0xc

    or-int/lit16 v12, v12, 0x1e0

    int-to-byte v12, v12

    aput-byte v12, v0, v7

    .line 141
    add-int/lit8 v7, v11, 0x1

    ushr-int/lit8 v12, v10, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v12, v6

    int-to-byte v12, v12

    aput-byte v12, v0, v11

    .line 142
    add-int/lit8 v11, v7, 0x1

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v10, v6

    int-to-byte v10, v10

    aput-byte v10, v0, v7

    goto :goto_59

    .line 143
    :cond_98
    add-int/lit8 v11, v8, -0x4

    if-gt v7, v11, :cond_f7

    .line 144
    add-int/lit8 v11, v5, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-eq v11, v12, :cond_de

    .line 145
    invoke-interface {p0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v12

    if-eqz v12, :cond_dd

    .line 147
    invoke-static {v10, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    .line 148
    add-int/lit8 v10, v7, 0x1

    ushr-int/lit8 v12, v5, 0x12

    or-int/lit16 v12, v12, 0xf0

    int-to-byte v12, v12

    aput-byte v12, v0, v7

    .line 149
    add-int/lit8 v7, v10, 0x1

    ushr-int/lit8 v12, v5, 0xc

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v12, v6

    int-to-byte v12, v12

    aput-byte v12, v0, v10

    .line 150
    add-int/lit8 v10, v7, 0x1

    ushr-int/lit8 v12, v5, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v12, v6

    int-to-byte v12, v12

    aput-byte v12, v0, v7

    .line 151
    add-int/lit8 v7, v10, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v10

    .line 152
    nop

    .line 154
    move v5, v11

    :goto_d9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4a

    .line 146
    :cond_dd
    move v5, v11

    :cond_de
    new-instance p0, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v5, v5, -0x1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unpaired surrogate at index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 153
    :cond_f7
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 p1, 0x25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Failed writing "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " at index "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 155
    :cond_118
    nop

    .line 156
    :goto_119
    nop

    .line 157
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p0

    sub-int/2addr v7, p0

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_122
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1a .. :try_end_122} :catch_123

    .line 158
    return-void

    .line 159
    :catch_123
    move-exception p0

    .line 160
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    .line 161
    invoke-virtual {p1, p0}, Ljava/nio/BufferOverflowException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 162
    throw p1

    .line 163
    :cond_12d
    nop

    .line 164
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 165
    :goto_132
    if-ge v5, v0, :cond_1c6

    .line 166
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 167
    if-ge v7, v6, :cond_140

    .line 168
    int-to-byte v7, v7

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1c2

    .line 169
    :cond_140
    if-ge v7, v4, :cond_152

    .line 170
    ushr-int/lit8 v8, v7, 0x6

    or-int/lit16 v8, v8, 0x3c0

    int-to-byte v8, v8

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 171
    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v6

    int-to-byte v7, v7

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1c2

    .line 172
    :cond_152
    if-lt v7, v3, :cond_1aa

    if-ge v2, v7, :cond_157

    goto :goto_1aa

    .line 176
    :cond_157
    add-int/lit8 v8, v5, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-eq v8, v9, :cond_191

    .line 177
    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v9

    if-eqz v9, :cond_190

    .line 179
    invoke-static {v7, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    .line 180
    ushr-int/lit8 v7, v5, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 181
    ushr-int/lit8 v7, v5, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v6

    int-to-byte v7, v7

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 182
    ushr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v6

    int-to-byte v7, v7

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 183
    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 184
    move v5, v8

    goto :goto_1c2

    .line 178
    :cond_190
    move v5, v8

    :cond_191
    new-instance p0, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v5, v5, -0x1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unpaired surrogate at index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 173
    :cond_1aa
    :goto_1aa
    ushr-int/lit8 v8, v7, 0xc

    or-int/lit16 v8, v8, 0x1e0

    int-to-byte v8, v8

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 174
    ushr-int/lit8 v8, v7, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v6

    int-to-byte v8, v8

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 175
    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v6

    int-to-byte v7, v7

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 184
    :goto_1c2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_132

    .line 185
    :cond_1c6
    return-void

    .line 116
    :cond_1c7
    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public static zzge(Ljava/lang/String;)I
    .registers 2

    .line 201
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(Ljava/lang/CharSequence;)I

    move-result p0

    .line 202
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbk(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzh(II)I
    .registers 2

    .line 192
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbd(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzk([BII)Lcom/google/android/gms/internal/measurement/zzzj;
    .registers 4

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzzj;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzzj;-><init>([BII)V

    return-object p1
.end method

.method public static zzo([B)Lcom/google/android/gms/internal/measurement/zzzj;
    .registers 3

    .line 7
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzk([BII)Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object p0

    return-object p0
.end method

.method private final zzzg()Lcom/google/android/gms/internal/measurement/zzve;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzcfv:Lcom/google/android/gms/internal/measurement/zzve;

    if-nez v0, :cond_15

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzve;->zza(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/measurement/zzve;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzcfv:Lcom/google/android/gms/internal/measurement/zzve;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzcfw:I

    goto :goto_3d

    .line 12
    :cond_15
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzcfw:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-eq v0, v1, :cond_3d

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzcfv:Lcom/google/android/gms/internal/measurement/zzve;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzcfw:I

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzcfw:I

    sub-int/2addr v3, v4

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzve;->write([BII)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzcfw:I

    .line 17
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzcfv:Lcom/google/android/gms/internal/measurement/zzve;

    return-object v0
.end method


# virtual methods
.method public final zza(ID)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(II)V

    .line 19
    nop

    .line 20
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    .line 21
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p3

    const/16 v0, 0x8

    if-lt p3, v0, :cond_19

    .line 23
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 24
    return-void

    .line 22
    :cond_19
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzzk;

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzzk;-><init>(II)V

    throw p1
.end method

.method public final zza(IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(II)V

    .line 26
    nop

    .line 27
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 28
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    const/4 v0, 0x4

    if-lt p2, v0, :cond_18

    .line 30
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 31
    return-void

    .line 29
    :cond_18
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzzk;

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzzk;-><init>(II)V

    throw p1
.end method

.method public final zza(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(II)V

    .line 33
    nop

    .line 34
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbk(J)V

    .line 35
    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzzr;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(II)V

    .line 78
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 79
    return-void
.end method

.method public final zzb(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(II)V

    .line 55
    nop

    .line 56
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbk(I)I

    move-result p1

    .line 57
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbk(I)I

    move-result v0

    .line 58
    if-ne p1, v0, :cond_57

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, p1, :cond_4a

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    add-int v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 64
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    sub-int v0, p2, v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzcc(I)V

    .line 67
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 68
    return-void

    .line 61
    :cond_4a
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzzk;

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzzk;-><init>(II)V

    throw p2

    .line 69
    :cond_57
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzcc(I)V

    .line 70
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_63
    .catch Ljava/nio/BufferOverflowException; {:try_start_5 .. :try_end_63} :catch_64

    .line 71
    return-void

    .line 72
    :catch_64
    move-exception p1

    .line 73
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzzk;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzk;-><init>(II)V

    .line 75
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzzk;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 76
    throw p2
.end method

.method public final zzb(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(II)V

    .line 47
    nop

    .line 48
    nop

    .line 49
    int-to-byte p1, p2

    .line 50
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 52
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 53
    return-void

    .line 51
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzzk;

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzzk;-><init>(II)V

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzzr;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzr;->zzzo()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzcc(I)V

    .line 187
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 188
    return-void
.end method

.method public final zzc(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    nop

    .line 221
    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 222
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzcc(I)V

    .line 223
    return-void
.end method

.method public final zzcc(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    .line 228
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzcb(I)V

    .line 229
    return-void

    .line 230
    :cond_8
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzcb(I)V

    .line 231
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public final zzd(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(II)V

    .line 41
    nop

    .line 42
    if-ltz p2, :cond_b

    .line 43
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzcc(I)V

    return-void

    .line 44
    :cond_b
    int-to-long p1, p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbk(J)V

    .line 45
    return-void
.end method

.method public final zze(ILcom/google/android/gms/internal/measurement/zzxe;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzzg()Lcom/google/android/gms/internal/measurement/zzve;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zza(ILcom/google/android/gms/internal/measurement/zzxe;)V

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzve;->flush()V

    .line 83
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzcfw:I

    .line 84
    return-void
.end method

.method public final zzi(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(II)V

    .line 37
    nop

    .line 38
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbk(J)V

    .line 39
    return-void
.end method

.method public final zzp([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    array-length v0, p1

    .line 217
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, v0, :cond_10

    .line 218
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void

    .line 219
    :cond_10
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzzk;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzk;-><init>(II)V

    throw p1
.end method

.method public final zzzh()V
    .registers 5

    .line 203
    nop

    .line 204
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 205
    if-nez v0, :cond_a

    .line 210
    return-void

    .line 206
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 207
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzzj;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 208
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 209
    const-string v2, "Did not write as much data as expected, %s bytes remaining."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
