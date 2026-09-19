###### Class com.google.android.gms.internal.measurement.zzyn (com.google.android.gms.internal.measurement.zzyn)
.class public final Lcom/google/android/gms/internal/measurement/zzyn;
.super Ljava/lang/Object;


# static fields
.field private static final zzcdj:Lcom/google/android/gms/internal/measurement/zzyn;


# instance fields
.field private count:I

.field private zzbup:Z

.field private zzbzi:I

.field private zzcbv:[Ljava/lang/Object;

.field private zzcdk:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 168
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyn;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzyn;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcdj:Lcom/google/android/gms/internal/measurement/zzyn;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .line 9
    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/android/gms/internal/measurement/zzyn;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 10
    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .registers 6

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzbzi:I

    .line 13
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcdk:[I

    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcbv:[Ljava/lang/Object;

    .line 16
    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzbup:Z

    .line 17
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzyn;Lcom/google/android/gms/internal/measurement/zzyn;)Lcom/google/android/gms/internal/measurement/zzyn;
    .registers 8

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    iget v1, p1, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    add-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcdk:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 5
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzyn;->zzcdk:[I

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    iget v4, p1, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcbv:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 7
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzyn;->zzcbv:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzyn;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzyn;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method private static zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzzh;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    nop

    .line 45
    ushr-int/lit8 v0, p0, 0x3

    .line 46
    nop

    .line 47
    nop

    .line 48
    and-int/lit8 p0, p0, 0x7

    .line 49
    const/4 v1, 0x5

    if-eq p0, v1, :cond_51

    packed-switch p0, :pswitch_data_5c

    .line 66
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 58
    :pswitch_17
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzzh;->zzvt()I

    move-result p0

    sget v1, Lcom/google/android/gms/internal/measurement/zzvx$zze;->zzbzz:I

    if-ne p0, v1, :cond_2b

    .line 59
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/zzzh;->zzbl(I)V

    .line 60
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzyn;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzyn;->zzb(Lcom/google/android/gms/internal/measurement/zzzh;)V

    .line 61
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/zzzh;->zzbm(I)V

    return-void

    .line 62
    :cond_2b
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/zzzh;->zzbm(I)V

    .line 63
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzyn;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzyn;->zzb(Lcom/google/android/gms/internal/measurement/zzzh;)V

    .line 64
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/zzzh;->zzbl(I)V

    .line 65
    return-void

    .line 56
    :pswitch_37
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzun;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzzh;->zza(ILcom/google/android/gms/internal/measurement/zzun;)V

    .line 57
    return-void

    .line 54
    :pswitch_3d
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzzh;->zzc(IJ)V

    .line 55
    return-void

    .line 50
    :pswitch_47
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzzh;->zzi(IJ)V

    .line 51
    return-void

    .line 52
    :cond_51
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, v0, p0}, Lcom/google/android/gms/internal/measurement/zzzh;->zzg(II)V

    .line 53
    return-void

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_47
        :pswitch_3d
        :pswitch_37
        :pswitch_17
    .end packed-switch
.end method

.method public static zzys()Lcom/google/android/gms/internal/measurement/zzyn;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcdj:Lcom/google/android/gms/internal/measurement/zzyn;

    return-object v0
.end method

.method static zzyt()Lcom/google/android/gms/internal/measurement/zzyn;
    .registers 1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzyn;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    .line 108
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 109
    return v0

    .line 110
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 111
    return v1

    .line 112
    :cond_8
    instance-of v2, p1, Lcom/google/android/gms/internal/measurement/zzyn;

    if-nez v2, :cond_d

    .line 113
    return v1

    .line 114
    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzyn;

    .line 115
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    iget v3, p1, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    if-ne v2, v3, :cond_4f

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcdk:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzyn;->zzcdk:[I

    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    .line 116
    nop

    .line 117
    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v4, :cond_2b

    .line 118
    aget v6, v2, v5

    aget v7, v3, v5

    if-eq v6, v7, :cond_28

    .line 119
    nop

    .line 122
    const/4 v2, 0x0

    goto :goto_2d

    .line 120
    :cond_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 121
    :cond_2b
    nop

    .line 122
    const/4 v2, 0x1

    :goto_2d
    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcbv:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzyn;->zzcbv:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    .line 123
    nop

    .line 124
    const/4 v4, 0x0

    :goto_37
    if-ge v4, v3, :cond_49

    .line 125
    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 126
    nop

    .line 129
    const/4 p1, 0x0

    goto :goto_4b

    .line 127
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 128
    :cond_49
    nop

    .line 129
    const/4 p1, 0x1

    :goto_4b
    if-nez p1, :cond_4e

    goto :goto_4f

    .line 131
    :cond_4e
    return v0

    .line 130
    :cond_4f
    :goto_4f
    return v1
.end method

.method public final hashCode()I
    .registers 9

    .line 132
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    add-int/lit16 v0, v0, 0x20f

    .line 133
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcdk:[I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    .line 134
    nop

    .line 135
    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/16 v6, 0x11

    :goto_11
    if-ge v5, v2, :cond_1b

    .line 136
    mul-int/lit8 v6, v6, 0x1f

    aget v7, v1, v5

    add-int/2addr v6, v7

    .line 137
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 138
    :cond_1b
    nop

    .line 139
    add-int/2addr v0, v6

    .line 140
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcbv:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    .line 141
    nop

    .line 142
    :goto_24
    if-ge v3, v2, :cond_32

    .line 143
    mul-int/lit8 v4, v4, 0x1f

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 145
    :cond_32
    nop

    .line 146
    add-int/2addr v0, v4

    .line 147
    return v0
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzzh;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzzh;->zzvt()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/measurement/zzvx$zze;->zzcaa:I

    if-ne v0, v1, :cond_20

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_1f

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcdk:[I

    aget v1, v1, v0

    .line 23
    ushr-int/lit8 v1, v1, 0x3

    .line 24
    nop

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcbv:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzzh;->zza(ILjava/lang/Object;)V

    .line 26
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1f
    return-void

    .line 27
    :cond_20
    const/4 v0, 0x0

    :goto_21
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    if-ge v0, v1, :cond_36

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcdk:[I

    aget v1, v1, v0

    .line 29
    ushr-int/lit8 v1, v1, 0x3

    .line 30
    nop

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcbv:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzzh;->zza(ILjava/lang/Object;)V

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 33
    :cond_36
    return-void
.end method

.method final zzb(ILjava/lang/Object;)V
    .registers 5

    .line 155
    nop

    .line 156
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzbup:Z

    if-eqz v0, :cond_3f

    .line 158
    nop

    .line 159
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcdk:[I

    array-length v1, v1

    if-ne v0, v1, :cond_2c

    .line 160
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_15

    const/16 v0, 0x8

    goto :goto_19

    :cond_15
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    shr-int/lit8 v0, v0, 0x1

    .line 161
    :goto_19
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    add-int/2addr v1, v0

    .line 162
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcdk:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcdk:[I

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcbv:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcbv:[Ljava/lang/Object;

    .line 164
    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcdk:[I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    aput p1, v0, v1

    .line 165
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcbv:[Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    aput-object p2, p1, v0

    .line 166
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    .line 167
    return-void

    .line 157
    :cond_3f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzzh;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    if-nez v0, :cond_5

    .line 35
    return-void

    .line 36
    :cond_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzzh;->zzvt()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/measurement/zzvx$zze;->zzbzz:I

    if-ne v0, v1, :cond_21

    .line 37
    const/4 v0, 0x0

    :goto_e
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    if-ge v0, v1, :cond_20

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcdk:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcbv:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzyn;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzzh;)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_20
    return-void

    .line 40
    :cond_21
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    add-int/lit8 v0, v0, -0x1

    :goto_25
    if-ltz v0, :cond_35

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcdk:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcbv:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzyn;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzzh;)V

    .line 42
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 43
    :cond_35
    return-void
.end method

.method final zzb(Ljava/lang/StringBuilder;I)V
    .registers 6

    .line 148
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    if-ge v0, v1, :cond_1a

    .line 149
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcdk:[I

    aget v1, v1, v0

    .line 150
    ushr-int/lit8 v1, v1, 0x3

    .line 151
    nop

    .line 152
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcbv:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/measurement/zzxh;->zzb(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    :cond_1a
    return-void
.end method

.method public final zzsw()V
    .registers 2

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzbup:Z

    .line 19
    return-void
.end method

.method public final zzwe()I
    .registers 7

    .line 80
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzbzi:I

    .line 81
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 82
    return v0

    .line 83
    :cond_6
    nop

    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_9
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    if-ge v0, v2, :cond_7b

    .line 85
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcdk:[I

    aget v2, v2, v0

    .line 86
    nop

    .line 87
    ushr-int/lit8 v3, v2, 0x3

    .line 88
    nop

    .line 89
    nop

    .line 90
    and-int/lit8 v2, v2, 0x7

    .line 91
    const/4 v4, 0x5

    if-eq v2, v4, :cond_68

    packed-switch v2, :pswitch_data_7e

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxb()Lcom/google/android/gms/internal/measurement/zzwf;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 100
    :pswitch_28
    nop

    .line 101
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcbv:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzyn;

    .line 102
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzyn;->zzwe()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 103
    goto :goto_78

    .line 98
    :pswitch_3c
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcbv:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzun;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(ILcom/google/android/gms/internal/measurement/zzun;)I

    move-result v2

    add-int/2addr v1, v2

    .line 99
    goto :goto_78

    .line 96
    :pswitch_48
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcbv:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzve;->zzg(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 97
    goto :goto_78

    .line 92
    :pswitch_58
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcbv:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzve;->zze(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 93
    goto :goto_78

    .line 94
    :cond_68
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcbv:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzve;->zzk(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 95
    nop

    .line 105
    :goto_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 106
    :cond_7b
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzbzi:I

    .line 107
    return v1

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_58
        :pswitch_48
        :pswitch_3c
        :pswitch_28
    .end packed-switch
.end method

.method public final zzyu()I
    .registers 5

    .line 67
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzbzi:I

    .line 68
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 69
    return v0

    .line 70
    :cond_6
    nop

    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_9
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzyn;->count:I

    if-ge v0, v2, :cond_22

    .line 72
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcdk:[I

    aget v2, v2, v0

    .line 73
    ushr-int/lit8 v2, v2, 0x3

    .line 74
    nop

    .line 75
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzcbv:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzun;

    .line 76
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzve;->zzd(ILcom/google/android/gms/internal/measurement/zzun;)I

    move-result v2

    add-int/2addr v1, v2

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 78
    :cond_22
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzyn;->zzbzi:I

    .line 79
    return v1
.end method
