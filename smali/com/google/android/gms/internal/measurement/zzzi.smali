###### Class com.google.android.gms.internal.measurement.zzzi (com.google.android.gms.internal.measurement.zzzi)
.class public final Lcom/google/android/gms/internal/measurement/zzzi;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private zzbvc:I

.field private zzbvd:I

.field private zzbve:I

.field private zzbvi:I

.field private zzbvk:I

.field private zzbvl:I

.field private final zzcfq:I

.field private final zzcfr:I

.field private zzcfs:I

.field private zzcft:I

.field private zzcfu:Lcom/google/android/gms/internal/measurement/zzuz;


# direct methods
.method private constructor <init>([BII)V
    .registers 5

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvl:I

    .line 116
    const/16 v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvd:I

    .line 117
    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbve:I

    .line 118
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->buffer:[B

    .line 119
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfq:I

    .line 120
    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfs:I

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfr:I

    .line 121
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    .line 122
    return-void
.end method

.method private final zzat(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    if-ltz p1, :cond_28

    .line 184
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvl:I

    if-gt v0, v1, :cond_1b

    .line 187
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfs:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_16

    .line 188
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    return-void

    .line 189
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzq;->zzzk()Lcom/google/android/gms/internal/measurement/zzzq;

    move-result-object p1

    throw p1

    .line 185
    :cond_1b
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvl:I

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzat(I)V

    .line 186
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzq;->zzzk()Lcom/google/android/gms/internal/measurement/zzzq;

    move-result-object p1

    throw p1

    .line 183
    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzq;->zzzl()Lcom/google/android/gms/internal/measurement/zzzq;

    move-result-object p1

    throw p1
.end method

.method public static zzj([BII)Lcom/google/android/gms/internal/measurement/zzzi;
    .registers 4

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzzi;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzzi;-><init>([BII)V

    return-object p1
.end method

.method public static zzn([B)Lcom/google/android/gms/internal/measurement/zzzi;
    .registers 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzzi;

    move-result-object p0

    return-object p0
.end method

.method private final zzvm()V
    .registers 3

    .line 149
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfs:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvi:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfs:I

    .line 150
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfs:I

    .line 151
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvl:I

    if-le v0, v1, :cond_1a

    .line 152
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvl:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvi:I

    .line 153
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfs:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvi:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfs:I

    return-void

    .line 154
    :cond_1a
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvi:I

    .line 155
    return-void
.end method

.method private final zzvn()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfs:I

    if-eq v0, v1, :cond_11

    .line 181
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    aget-byte v0, v0, v1

    return v0

    .line 180
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzq;->zzzk()Lcom/google/android/gms/internal/measurement/zzzq;

    move-result-object v0

    throw v0
.end method

.method private final zzze()Lcom/google/android/gms/internal/measurement/zzuz;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfu:Lcom/google/android/gms/internal/measurement/zzuz;

    if-nez v0, :cond_10

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfq:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfr:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzuz;->zzd([BII)Lcom/google/android/gms/internal/measurement/zzuz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfu:Lcom/google/android/gms/internal/measurement/zzuz;

    .line 125
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfu:Lcom/google/android/gms/internal/measurement/zzuz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zzvh()I

    move-result v0

    .line 126
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfq:I

    sub-int/2addr v1, v2

    .line 127
    if-gt v0, v1, :cond_30

    .line 131
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfu:Lcom/google/android/gms/internal/measurement/zzuz;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzat(I)V

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfu:Lcom/google/android/gms/internal/measurement/zzuz;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvd:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvc:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zzaq(I)I

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfu:Lcom/google/android/gms/internal/measurement/zzuz;

    return-object v0

    .line 128
    :cond_30
    new-instance v2, Ljava/io/IOException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    .line 130
    const-string v0, "CodedInputStream read ahead of CodedInputByteBufferNano: %s > %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final getPosition()I
    .registers 3

    .line 163
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfq:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v0

    .line 43
    if-ltz v0, :cond_23

    .line 45
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfs:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1e

    .line 47
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzzi;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzzp;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 48
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    .line 49
    return-object v1

    .line 46
    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzq;->zzzk()Lcom/google/android/gms/internal/measurement/zzzq;

    move-result-object v0

    throw v0

    .line 44
    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzq;->zzzl()Lcom/google/android/gms/internal/measurement/zzzq;

    move-result-object v0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzxo;)Lcom/google/android/gms/internal/measurement/zzvx;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/zzvx<",
            "TT;*>;>(",
            "Lcom/google/android/gms/internal/measurement/zzxo<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzze()Lcom/google/android/gms/internal/measurement/zzuz;

    move-result-object v0

    .line 135
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvk;->zzvz()Lcom/google/android/gms/internal/measurement/zzvk;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzuz;->zza(Lcom/google/android/gms/internal/measurement/zzxo;Lcom/google/android/gms/internal/measurement/zzvk;)Lcom/google/android/gms/internal/measurement/zzxe;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzvx;

    .line 136
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvk:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzap(I)Z
    :try_end_13
    .catch Lcom/google/android/gms/internal/measurement/zzwe; {:try_start_0 .. :try_end_13} :catch_14

    .line 137
    return-object p1

    .line 138
    :catch_14
    move-exception p1

    .line 139
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzq;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzzq;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzr;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v0

    .line 60
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvc:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvd:I

    if-ge v1, v2, :cond_25

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzar(I)I

    move-result v0

    .line 63
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvc:I

    .line 64
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;

    .line 65
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzao(I)V

    .line 66
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvc:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvc:I

    .line 67
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzas(I)V

    .line 68
    return-void

    .line 61
    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzq;->zzzn()Lcom/google/android/gms/internal/measurement/zzzq;

    move-result-object p1

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzr;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvc:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvd:I

    if-ge v0, v1, :cond_1e

    .line 52
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvc:I

    .line 53
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;

    .line 54
    nop

    .line 55
    shl-int/lit8 p1, p2, 0x3

    or-int/lit8 p1, p1, 0x4

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzao(I)V

    .line 57
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvc:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvc:I

    .line 58
    return-void

    .line 51
    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzq;->zzzn()Lcom/google/android/gms/internal/measurement/zzzq;

    move-result-object p1

    throw p1
.end method

.method public final zzao(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzzq;
        }
    .end annotation

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvk:I

    if-ne v0, p1, :cond_5

    .line 15
    return-void

    .line 13
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzzq;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzq;-><init>(Ljava/lang/String;)V

    .line 14
    throw p1
.end method

.method public final zzap(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    nop

    .line 17
    and-int/lit8 v0, p1, 0x7

    .line 18
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_42

    .line 39
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzzq;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzq;-><init>(Ljava/lang/String;)V

    .line 40
    throw p1

    .line 37
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvk()I

    .line 38
    return v1

    .line 36
    :pswitch_13
    const/4 p1, 0x0

    return p1

    .line 26
    :pswitch_15
    nop

    .line 27
    :goto_16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v0

    .line 28
    if-eqz v0, :cond_24

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzap(I)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_24

    .line 30
    :cond_23
    goto :goto_16

    .line 29
    :cond_24
    :goto_24
    nop

    .line 31
    nop

    .line 32
    ushr-int/lit8 p1, p1, 0x3

    .line 33
    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x4

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzao(I)V

    .line 35
    return v1

    .line 24
    :pswitch_30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzat(I)V

    .line 25
    return v1

    .line 22
    :pswitch_38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvl()J

    .line 23
    return v1

    .line 19
    :pswitch_3c
    nop

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    .line 21
    return v1

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_38
        :pswitch_30
        :pswitch_15
        :pswitch_13
        :pswitch_f
    .end packed-switch
.end method

.method public final zzar(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzzq;
        }
    .end annotation

    .line 140
    if-ltz p1, :cond_14

    .line 142
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    add-int/2addr p1, v0

    .line 143
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvl:I

    .line 144
    if-gt p1, v0, :cond_f

    .line 146
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvl:I

    .line 147
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvm()V

    .line 148
    return v0

    .line 145
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzq;->zzzk()Lcom/google/android/gms/internal/measurement/zzzq;

    move-result-object p1

    throw p1

    .line 141
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzq;->zzzl()Lcom/google/android/gms/internal/measurement/zzzq;

    move-result-object p1

    throw p1
.end method

.method public final zzas(I)V
    .registers 2

    .line 156
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvl:I

    .line 157
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvm()V

    .line 158
    return-void
.end method

.method public final zzca(I)V
    .registers 3

    .line 170
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvk:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzt(II)V

    .line 171
    return-void
.end method

.method public final zzs(II)[B
    .registers 6

    .line 164
    if-nez p2, :cond_5

    .line 165
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgs:[B

    return-object p1

    .line 166
    :cond_5
    new-array v0, p2, [B

    .line 167
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfq:I

    add-int/2addr v1, p1

    .line 168
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    return-object v0
.end method

.method final zzt(II)V
    .registers 6

    .line 172
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfq:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2a

    .line 174
    if-ltz p1, :cond_11

    .line 176
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfq:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    .line 177
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvk:I

    .line 178
    return-void

    .line 175
    :cond_11
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Bad position "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 173
    :cond_2a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfq:I

    sub-int/2addr v0, v1

    const/16 v1, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Position "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond current "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final zzuq()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    nop

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcfs:I

    if-ne v0, v1, :cond_b

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvk:I

    .line 6
    return v0

    .line 7
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvk:I

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvk:I

    if-eqz v0, :cond_18

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvk:I

    return v0

    .line 9
    :cond_18
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzq;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzzq;-><init>(Ljava/lang/String;)V

    .line 10
    throw v0
.end method

.method public final zzuw()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzvi()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvn()B

    move-result v0

    .line 70
    if-ltz v0, :cond_7

    .line 71
    return v0

    .line 72
    :cond_7
    and-int/lit8 v0, v0, 0x7f

    .line 73
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvn()B

    move-result v1

    if-ltz v1, :cond_13

    .line 74
    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_52

    .line 75
    :cond_13
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 76
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvn()B

    move-result v1

    if-ltz v1, :cond_22

    .line 77
    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_52

    .line 78
    :cond_22
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 79
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvn()B

    move-result v1

    if-ltz v1, :cond_31

    .line 80
    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_52

    .line 81
    :cond_31
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 82
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvn()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    .line 83
    if-gez v1, :cond_52

    .line 84
    const/4 v1, 0x0

    :goto_40
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4d

    .line 85
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvn()B

    move-result v2

    if-ltz v2, :cond_4a

    .line 86
    return v0

    .line 87
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 88
    :cond_4d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzq;->zzzm()Lcom/google/android/gms/internal/measurement/zzzq;

    move-result-object v0

    throw v0

    .line 89
    :cond_52
    :goto_52
    return v0
.end method

.method public final zzvj()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    nop

    .line 91
    nop

    .line 92
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_5
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1a

    .line 93
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvn()B

    move-result v3

    .line 94
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    .line 95
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_17

    .line 96
    return-wide v1

    .line 97
    :cond_17
    add-int/lit8 v0, v0, 0x7

    .line 98
    goto :goto_5

    .line 99
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzq;->zzzm()Lcom/google/android/gms/internal/measurement/zzzq;

    move-result-object v0

    throw v0
.end method

.method public final zzvk()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvn()B

    move-result v0

    .line 101
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvn()B

    move-result v1

    .line 102
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvn()B

    move-result v2

    .line 103
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvn()B

    move-result v3

    .line 104
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final zzvl()J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvn()B

    move-result v0

    .line 106
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvn()B

    move-result v1

    .line 107
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvn()B

    move-result v2

    .line 108
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvn()B

    move-result v3

    .line 109
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvn()B

    move-result v4

    .line 110
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvn()B

    move-result v5

    .line 111
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvn()B

    move-result v6

    .line 112
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvn()B

    move-result v7

    .line 113
    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    int-to-long v0, v1

    and-long/2addr v0, v10

    const/16 v12, 0x8

    shl-long/2addr v0, v12

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v10

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v10

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v10

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v10

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v10

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v10

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzzf()I
    .registers 3

    .line 159
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvl:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    .line 160
    const/4 v0, -0x1

    return v0

    .line 161
    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzcft:I

    .line 162
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzzi;->zzbvl:I

    sub-int/2addr v1, v0

    return v1
.end method
