###### Class com.google.android.gms.internal.measurement.zzvb (com.google.android.gms.internal.measurement.zzvb)
.class final Lcom/google/android/gms/internal/measurement/zzvb;
.super Lcom/google/android/gms/internal/measurement/zzuz;


# instance fields
.field private final buffer:[B

.field private limit:I

.field private pos:I

.field private final zzbvh:Z

.field private zzbvi:I

.field private zzbvj:I

.field private zzbvk:I

.field private zzbvl:I


# direct methods
.method private constructor <init>([BIIZ)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzuz;-><init>(Lcom/google/android/gms/internal/measurement/zzva;)V

    .line 2
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvl:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->buffer:[B

    .line 4
    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzvb;->limit:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvj:I

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvh:Z

    .line 8
    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/measurement/zzva;)V
    .registers 6

    .line 221
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzvb;-><init>([BIIZ)V

    return-void
.end method

.method private final zzvi()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    .line 124
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->limit:I

    if-eq v1, v0, :cond_6d

    .line 125
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->buffer:[B

    .line 126
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-ltz v0, :cond_11

    .line 127
    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    .line 128
    return v0

    .line 129
    :cond_11
    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzvb;->limit:I

    sub-int/2addr v3, v2

    const/16 v4, 0x9

    if-lt v3, v4, :cond_6d

    .line 130
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v0, v2

    if-gez v0, :cond_24

    .line 131
    xor-int/lit8 v0, v0, -0x80

    goto :goto_6a

    .line 132
    :cond_24
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0xe

    xor-int/2addr v0, v3

    if-ltz v0, :cond_31

    .line 133
    xor-int/lit16 v0, v0, 0x3f80

    .line 140
    :cond_2f
    move v3, v2

    goto :goto_6a

    .line 134
    :cond_31
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    if-gez v0, :cond_3f

    .line 135
    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_6a

    .line 136
    :cond_3f
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    .line 137
    shl-int/lit8 v4, v3, 0x1c

    xor-int/2addr v0, v4

    .line 138
    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    .line 139
    if-gez v3, :cond_2f

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    if-gez v2, :cond_6a

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    if-gez v3, :cond_2f

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    if-gez v2, :cond_6a

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    if-gez v3, :cond_2f

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    if-ltz v1, :cond_6d

    .line 140
    :cond_6a
    :goto_6a
    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    .line 141
    return v0

    .line 142
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvf()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private final zzvj()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    .line 144
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->limit:I

    if-eq v1, v0, :cond_bb

    .line 145
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->buffer:[B

    .line 146
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-ltz v0, :cond_12

    .line 147
    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    .line 148
    int-to-long v0, v0

    return-wide v0

    .line 149
    :cond_12
    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzvb;->limit:I

    sub-int/2addr v3, v2

    const/16 v4, 0x9

    if-lt v3, v4, :cond_bb

    .line 150
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v0, v2

    if-gez v0, :cond_2a

    .line 151
    xor-int/lit8 v0, v0, -0x80

    int-to-long v0, v0

    .line 168
    :goto_25
    move-wide v9, v0

    move v0, v3

    :goto_27
    move-wide v2, v9

    goto/16 :goto_b8

    .line 152
    :cond_2a
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0xe

    xor-int/2addr v0, v3

    if-ltz v0, :cond_39

    .line 153
    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    .line 168
    move-wide v9, v0

    move v0, v2

    goto :goto_27

    .line 154
    :cond_39
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    if-gez v0, :cond_48

    .line 155
    const v1, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_25

    .line 156
    :cond_48
    int-to-long v4, v0

    add-int/lit8 v0, v3, 0x1

    aget-byte v2, v1, v3

    int-to-long v2, v2

    const/16 v6, 0x1c

    shl-long/2addr v2, v6

    xor-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_5d

    .line 157
    const-wide/32 v4, 0xfe03f80

    xor-long/2addr v2, v4

    goto :goto_b8

    .line 158
    :cond_5d
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-gez v0, :cond_73

    .line 159
    const-wide v0, -0x7f01fc080L

    xor-long/2addr v0, v2

    .line 168
    :goto_70
    move-wide v2, v0

    :goto_71
    move v0, v6

    goto :goto_b8

    .line 160
    :cond_73
    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-ltz v6, :cond_87

    .line 161
    const-wide v4, 0x3f80fe03f80L

    xor-long/2addr v2, v4

    goto :goto_b8

    .line 162
    :cond_87
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-gez v0, :cond_9b

    .line 163
    const-wide v0, -0x1fc07f01fc080L

    xor-long/2addr v0, v2

    goto :goto_70

    .line 164
    :cond_9b
    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    .line 165
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v2, v6

    .line 166
    cmp-long v6, v2, v4

    if-gez v6, :cond_b8

    .line 167
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v0, v0

    cmp-long v7, v0, v4

    if-ltz v7, :cond_bb

    goto :goto_71

    .line 168
    :cond_b8
    :goto_b8
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    .line 169
    return-wide v2

    .line 170
    :cond_bb
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvf()J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzvk()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    .line 180
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->limit:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2e

    .line 182
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->buffer:[B

    .line 183
    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    .line 184
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    .line 181
    :cond_2e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzwx()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object v0

    throw v0
.end method

.method private final zzvl()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    .line 186
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->limit:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_5a

    .line 188
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->buffer:[B

    .line 189
    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    .line 190
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x18

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x20

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x5

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x28

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x6

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x30

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0

    .line 187
    :cond_5a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzwx()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object v0

    throw v0
.end method

.method private final zzvm()V
    .registers 3

    .line 200
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvi:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->limit:I

    .line 201
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvj:I

    sub-int/2addr v0, v1

    .line 202
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvl:I

    if-le v0, v1, :cond_1d

    .line 203
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvl:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvi:I

    .line 204
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvi:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->limit:I

    return-void

    .line 205
    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvi:I

    .line 206
    return-void
.end method

.method private final zzvn()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->limit:I

    if-eq v0, v1, :cond_11

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    aget-byte v0, v0, v1

    return v0

    .line 213
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzwx()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvl()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvi()I

    move-result v0

    .line 66
    if-lez v0, :cond_1e

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1e

    .line 67
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzvz;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 68
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    .line 69
    return-object v1

    .line 70
    :cond_1e
    if-nez v0, :cond_23

    .line 71
    const-string v0, ""

    return-object v0

    .line 72
    :cond_23
    if-gez v0, :cond_2a

    .line 73
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzwy()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object v0

    throw v0

    .line 74
    :cond_2a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzwx()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object v0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzxo;Lcom/google/android/gms/internal/measurement/zzvk;)Lcom/google/android/gms/internal/measurement/zzxe;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/measurement/zzxe;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzxo<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzvk;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvi()I

    move-result v0

    .line 86
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvc:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvd:I

    if-ge v1, v2, :cond_28

    .line 88
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzar(I)I

    move-result v0

    .line 89
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvc:I

    .line 90
    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/measurement/zzxo;->zza(Lcom/google/android/gms/internal/measurement/zzuz;Lcom/google/android/gms/internal/measurement/zzvk;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzxe;

    .line 91
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzuz;->zzao(I)V

    .line 92
    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvc:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvc:I

    .line 93
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzas(I)V

    .line 94
    return-object p1

    .line 87
    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxc()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p1

    throw p1
.end method

.method public final zzao(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzwe;
        }
    .end annotation

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvk:I

    if-ne v0, p1, :cond_5

    .line 21
    return-void

    .line 20
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxa()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p1

    throw p1
.end method

.method public final zzap(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    nop

    .line 23
    and-int/lit8 v0, p1, 0x7

    .line 24
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_70

    .line 56
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    throw p1

    .line 54
    :pswitch_e
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzat(I)V

    .line 55
    return v3

    .line 53
    :pswitch_12
    return v2

    .line 43
    :pswitch_13
    nop

    .line 44
    :goto_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzuq()I

    move-result v0

    .line 45
    if-eqz v0, :cond_22

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzap(I)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_22

    .line 47
    :cond_21
    goto :goto_14

    .line 46
    :cond_22
    :goto_22
    nop

    .line 48
    nop

    .line 49
    ushr-int/lit8 p1, p1, 0x3

    .line 50
    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, v1

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzao(I)V

    .line 52
    return v3

    .line 41
    :pswitch_2d
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvi()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzat(I)V

    .line 42
    return v3

    .line 39
    :pswitch_35
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzat(I)V

    .line 40
    return v3

    .line 25
    :pswitch_3b
    nop

    .line 26
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->limit:I

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_5d

    .line 27
    nop

    .line 28
    :goto_46
    if-ge v2, v0, :cond_58

    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    aget-byte p1, p1, v1

    if-gez p1, :cond_57

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 32
    :cond_57
    goto :goto_69

    .line 31
    :cond_58
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzwz()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p1

    throw p1

    .line 33
    :cond_5d
    nop

    .line 34
    :goto_5e
    if-ge v2, v0, :cond_6a

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvn()B

    move-result p1

    if-gez p1, :cond_69

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 38
    :cond_69
    :goto_69
    return v3

    .line 37
    :cond_6a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzwz()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_35
        :pswitch_2d
        :pswitch_13
        :pswitch_12
        :pswitch_e
    .end packed-switch
.end method

.method public final zzar(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzwe;
        }
    .end annotation

    .line 191
    if-ltz p1, :cond_16

    .line 193
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v0

    add-int/2addr p1, v0

    .line 194
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvl:I

    .line 195
    if-gt p1, v0, :cond_11

    .line 197
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvl:I

    .line 198
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvm()V

    .line 199
    return v0

    .line 196
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzwx()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p1

    throw p1

    .line 192
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzwy()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p1

    throw p1
.end method

.method public final zzas(I)V
    .registers 2

    .line 207
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvl:I

    .line 208
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvm()V

    .line 209
    return-void
.end method

.method public final zzat(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    if-ltz p1, :cond_f

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_f

    .line 216
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    .line 217
    return-void

    .line 218
    :cond_f
    if-gez p1, :cond_16

    .line 219
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzwy()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p1

    throw p1

    .line 220
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzwx()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p1

    throw p1
.end method

.method public final zzuq()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvg()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvk:I

    .line 11
    return v0

    .line 12
    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvi()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvk:I

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvk:I

    .line 14
    ushr-int/lit8 v0, v0, 0x3

    .line 15
    if-eqz v0, :cond_19

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvk:I

    return v0

    .line 16
    :cond_19
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzwe;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzwe;-><init>(Ljava/lang/String;)V

    .line 17
    throw v0
.end method

.method public final zzur()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvj()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzus()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvj()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzut()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvi()I

    move-result v0

    return v0
.end method

.method public final zzuu()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzuv()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvk()I

    move-result v0

    return v0
.end method

.method public final zzuw()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvj()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final zzux()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvi()I

    move-result v0

    .line 76
    if-lez v0, :cond_1b

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1b

    .line 77
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzyu;->zzh([BII)Ljava/lang/String;

    move-result-object v1

    .line 78
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    .line 79
    return-object v1

    .line 80
    :cond_1b
    if-nez v0, :cond_20

    .line 81
    const-string v0, ""

    return-object v0

    .line 82
    :cond_20
    if-gtz v0, :cond_27

    .line 83
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzwy()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object v0

    throw v0

    .line 84
    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzwx()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object v0

    throw v0
.end method

.method public final zzuy()Lcom/google/android/gms/internal/measurement/zzun;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvi()I

    move-result v0

    .line 96
    if-lez v0, :cond_1b

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1b

    .line 97
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzun;->zzb([BII)Lcom/google/android/gms/internal/measurement/zzun;

    move-result-object v1

    .line 98
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    .line 99
    return-object v1

    .line 100
    :cond_1b
    if-nez v0, :cond_20

    .line 101
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzun;->zzbuu:Lcom/google/android/gms/internal/measurement/zzun;

    return-object v0

    .line 102
    :cond_20
    nop

    .line 103
    if-lez v0, :cond_3a

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_3a

    .line 104
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    .line 105
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_40

    .line 107
    :cond_3a
    if-gtz v0, :cond_4a

    .line 108
    if-nez v0, :cond_45

    .line 109
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvz;->zzcae:[B

    .line 112
    :goto_40
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzun;->zzi([B)Lcom/google/android/gms/internal/measurement/zzun;

    move-result-object v0

    return-object v0

    .line 110
    :cond_45
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzwy()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object v0

    throw v0

    .line 111
    :cond_4a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzwx()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object v0

    throw v0
.end method

.method public final zzuz()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvi()I

    move-result v0

    return v0
.end method

.method public final zzva()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvi()I

    move-result v0

    return v0
.end method

.method public final zzvb()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvk()I

    move-result v0

    return v0
.end method

.method public final zzvc()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzvd()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvi()I

    move-result v0

    .line 118
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    .line 119
    return v0
.end method

.method public final zzve()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvj()J

    move-result-wide v0

    .line 121
    const/4 v2, 0x1

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    .line 122
    return-wide v0
.end method

.method final zzvf()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    nop

    .line 172
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    const/16 v3, 0x40

    if-ge v2, v3, :cond_19

    .line 173
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzvb;->zzvn()B

    move-result v3

    .line 174
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 175
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_16

    .line 176
    return-wide v0

    .line 177
    :cond_16
    add-int/lit8 v2, v2, 0x7

    goto :goto_4

    .line 178
    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzwz()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object v0

    throw v0
.end method

.method public final zzvg()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->limit:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzvh()I
    .registers 3

    .line 211
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvb;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvb;->zzbvj:I

    sub-int/2addr v0, v1

    return v0
.end method
