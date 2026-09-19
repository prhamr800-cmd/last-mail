###### Class com.google.android.gms.internal.measurement.zzve (com.google.android.gms.internal.measurement.zzve)
.class public abstract Lcom/google/android/gms/internal/measurement/zzve;
.super Lcom/google/android/gms/internal/measurement/zzum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzve$zze;,
        Lcom/google/android/gms/internal/measurement/zzve$zzd;,
        Lcom/google/android/gms/internal/measurement/zzve$zzb;,
        Lcom/google/android/gms/internal/measurement/zzve$zza;,
        Lcom/google/android/gms/internal/measurement/zzve$zzc;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final zzbvq:Z


# instance fields
.field zzbvr:Lcom/google/android/gms/internal/measurement/zzvg;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 171
    const-class v0, Lcom/google/android/gms/internal/measurement/zzve;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzve;->logger:Ljava/util/logging/Logger;

    .line 172
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzys;->zzyv()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzve;->zzbvq:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzum;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzvf;)V
    .registers 2

    .line 169
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzve;-><init>()V

    return-void
.end method

.method public static zza(ILcom/google/android/gms/internal/measurement/zzwl;)I
    .registers 3

    .line 62
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzwl;->zzwe()I

    move-result p1

    .line 64
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzbe(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 65
    add-int/2addr p0, v0

    return p0
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzwl;)I
    .registers 2

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzwl;->zzwe()I

    move-result p0

    .line 129
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbe(I)I

    move-result v0

    add-int/2addr v0, p0

    .line 130
    return v0
.end method

.method public static zza(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/measurement/zzve;
    .registers 2

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzve$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzve$zzb;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 6
    :cond_c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzys;->zzyw()Z

    move-result v0

    .line 8
    if-eqz v0, :cond_25

    .line 9
    nop

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzve$zze;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzve$zze;-><init>(Ljava/nio/ByteBuffer;)V

    .line 11
    return-object v0

    .line 12
    :cond_25
    nop

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzve$zzd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzve$zzd;-><init>(Ljava/nio/ByteBuffer;)V

    .line 14
    return-object v0

    .line 15
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteBuffer is read-only"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzb(F)I
    .registers 1

    .line 116
    const/4 p0, 0x4

    return p0
.end method

.method public static zzb(ID)I
    .registers 3

    .line 52
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzb(IF)I
    .registers 2

    .line 51
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzb(ILcom/google/android/gms/internal/measurement/zzwl;)I
    .registers 4

    .line 76
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 77
    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzi(II)I

    move-result p0

    add-int/2addr v0, p0

    .line 78
    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zza(ILcom/google/android/gms/internal/measurement/zzwl;)I

    move-result p0

    add-int/2addr v0, p0

    .line 79
    return v0
.end method

.method static zzb(ILcom/google/android/gms/internal/measurement/zzxe;Lcom/google/android/gms/internal/measurement/zzxu;)I
    .registers 3

    .line 67
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzb(Lcom/google/android/gms/internal/measurement/zzxe;Lcom/google/android/gms/internal/measurement/zzxu;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/measurement/zzun;)I
    .registers 2

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzun;->size()I

    move-result p0

    .line 132
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbe(I)I

    move-result v0

    add-int/2addr v0, p0

    .line 133
    return v0
.end method

.method static zzb(Lcom/google/android/gms/internal/measurement/zzxe;Lcom/google/android/gms/internal/measurement/zzxu;)I
    .registers 4

    .line 140
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzug;

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzug;->zzue()I

    move-result v0

    .line 142
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 143
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzxu;->zzai(Ljava/lang/Object;)I

    move-result v0

    .line 144
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzug;->zzah(I)V

    .line 145
    :cond_10
    nop

    .line 146
    nop

    .line 147
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbe(I)I

    move-result p0

    add-int/2addr p0, v0

    .line 148
    return p0
.end method

.method public static zzbb(J)I
    .registers 2

    .line 98
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(J)I

    move-result p0

    return p0
.end method

.method public static zzbc(I)I
    .registers 1

    .line 80
    nop

    .line 81
    shl-int/lit8 p0, p0, 0x3

    .line 82
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbe(I)I

    move-result p0

    return p0
.end method

.method public static zzbc(J)I
    .registers 8

    .line 99
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    .line 100
    const/4 p0, 0x1

    return p0

    .line 101
    :cond_b
    cmp-long v0, p0, v2

    if-gez v0, :cond_12

    .line 102
    const/16 p0, 0xa

    return p0

    .line 103
    :cond_12
    nop

    .line 104
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_22

    .line 105
    const/4 v0, 0x6

    .line 106
    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_23

    .line 107
    :cond_22
    const/4 v0, 0x2

    :goto_23
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_30

    .line 108
    add-int/lit8 v0, v0, 0x2

    .line 109
    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    .line 110
    :cond_30
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_39

    .line 111
    add-int/lit8 v0, v0, 0x1

    .line 112
    :cond_39
    return v0
.end method

.method public static zzbd(I)I
    .registers 1

    .line 83
    if-ltz p0, :cond_7

    .line 84
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbe(I)I

    move-result p0

    return p0

    .line 85
    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method public static zzbd(J)I
    .registers 2

    .line 113
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzbg(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(J)I

    move-result p0

    return p0
.end method

.method public static zzbe(I)I
    .registers 2

    .line 86
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    .line 87
    const/4 p0, 0x1

    return p0

    .line 88
    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    .line 89
    const/4 p0, 0x2

    return p0

    .line 90
    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    .line 91
    const/4 p0, 0x3

    return p0

    .line 92
    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    .line 93
    const/4 p0, 0x4

    return p0

    .line 94
    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static zzbe(J)I
    .registers 2

    .line 114
    const/16 p0, 0x8

    return p0
.end method

.method public static zzbf(I)I
    .registers 1

    .line 95
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbj(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbe(I)I

    move-result p0

    return p0
.end method

.method public static zzbf(J)I
    .registers 2

    .line 115
    const/16 p0, 0x8

    return p0
.end method

.method public static zzbg(I)I
    .registers 1

    .line 96
    const/4 p0, 0x4

    return p0
.end method

.method private static zzbg(J)J
    .registers 5

    .line 150
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzbh(I)I
    .registers 1

    .line 97
    const/4 p0, 0x4

    return p0
.end method

.method public static zzbi(I)I
    .registers 1

    .line 119
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbd(I)I

    move-result p0

    return p0
.end method

.method private static zzbj(I)I
    .registers 2

    .line 149
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static zzbk(I)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbe(I)I

    move-result p0

    return p0
.end method

.method public static zzc(D)I
    .registers 2

    .line 117
    const/16 p0, 0x8

    return p0
.end method

.method public static zzc(ILcom/google/android/gms/internal/measurement/zzun;)I
    .registers 3

    .line 58
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzun;->size()I

    move-result p1

    .line 60
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzbe(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 61
    add-int/2addr p0, v0

    return p0
.end method

.method public static zzc(ILcom/google/android/gms/internal/measurement/zzxe;)I
    .registers 2

    .line 66
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(Lcom/google/android/gms/internal/measurement/zzxe;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static zzc(ILcom/google/android/gms/internal/measurement/zzxe;Lcom/google/android/gms/internal/measurement/zzxu;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    .line 160
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzug;

    .line 161
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzug;->zzue()I

    move-result v0

    .line 162
    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 163
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/measurement/zzxu;->zzai(Ljava/lang/Object;)I

    move-result v0

    .line 164
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzug;->zzah(I)V

    .line 165
    :cond_16
    nop

    .line 166
    add-int/2addr p0, v0

    return p0
.end method

.method public static zzc(ILjava/lang/String;)I
    .registers 2

    .line 57
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzge(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzc(IZ)I
    .registers 2

    .line 53
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/measurement/zzxe;)I
    .registers 2

    .line 137
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzxe;->zzwe()I

    move-result p0

    .line 138
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbe(I)I

    move-result v0

    add-int/2addr v0, p0

    .line 139
    return v0
.end method

.method public static zzd(IJ)I
    .registers 3

    .line 42
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    .line 43
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(J)I

    move-result p1

    .line 44
    add-int/2addr p0, p1

    return p0
.end method

.method public static zzd(ILcom/google/android/gms/internal/measurement/zzun;)I
    .registers 4

    .line 72
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 73
    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzi(II)I

    move-result p0

    add-int/2addr v0, p0

    .line 74
    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(ILcom/google/android/gms/internal/measurement/zzun;)I

    move-result p0

    add-int/2addr v0, p0

    .line 75
    return v0
.end method

.method public static zzd(ILcom/google/android/gms/internal/measurement/zzxe;)I
    .registers 4

    .line 68
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 69
    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzi(II)I

    move-result p0

    add-int/2addr v0, p0

    .line 70
    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(ILcom/google/android/gms/internal/measurement/zzxe;)I

    move-result p0

    add-int/2addr v0, p0

    .line 71
    return v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/measurement/zzxe;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzxe;->zzwe()I

    move-result p0

    return p0
.end method

.method public static zze(IJ)I
    .registers 3

    .line 45
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzf(IJ)I
    .registers 3

    .line 46
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    .line 47
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzbg(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(J)I

    move-result p1

    .line 48
    add-int/2addr p0, p1

    return p0
.end method

.method public static zzg(IJ)I
    .registers 3

    .line 49
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzge(Ljava/lang/String;)I
    .registers 2

    .line 120
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzyu;->zza(Ljava/lang/CharSequence;)I

    move-result v0
    :try_end_4
    .catch Lcom/google/android/gms/internal/measurement/zzyy; {:try_start_0 .. :try_end_4} :catch_5

    .line 121
    goto :goto_d

    .line 122
    :catch_5
    move-exception v0

    .line 123
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvz;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 124
    array-length v0, p0

    .line 125
    :goto_d
    nop

    .line 126
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbe(I)I

    move-result p0

    add-int/2addr p0, v0

    .line 127
    return p0
.end method

.method public static zzh(II)I
    .registers 2

    .line 35
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzbd(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzh(IJ)I
    .registers 3

    .line 50
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzi(II)I
    .registers 2

    .line 36
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzbe(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzj(II)I
    .registers 2

    .line 37
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzbj(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzbe(I)I

    move-result p1

    .line 39
    add-int/2addr p0, p1

    return p0
.end method

.method public static zzj([B)Lcom/google/android/gms/internal/measurement/zzve;
    .registers 4

    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzve$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/measurement/zzve$zza;-><init>([BII)V

    .line 3
    return-object v1
.end method

.method public static zzk(II)I
    .registers 2

    .line 40
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzk([B)I
    .registers 2

    .line 134
    array-length p0, p0

    .line 135
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbe(I)I

    move-result v0

    add-int/2addr v0, p0

    .line 136
    return v0
.end method

.method public static zzl(II)I
    .registers 2

    .line 41
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzm(II)I
    .registers 2

    .line 54
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    .line 55
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzbd(I)I

    move-result p1

    .line 56
    add-int/2addr p0, p1

    return p0
.end method

.method public static zzt(Z)I
    .registers 1

    .line 118
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic zzvr()Z
    .registers 1

    .line 170
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzve;->zzbvq:Z

    return v0
.end method


# virtual methods
.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zza(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzbb(I)V

    .line 30
    return-void
.end method

.method public final zza(ID)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(IJ)V

    .line 24
    return-void
.end method

.method public final zza(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzg(II)V

    .line 22
    return-void
.end method

.method public abstract zza(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILcom/google/android/gms/internal/measurement/zzun;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILcom/google/android/gms/internal/measurement/zzxe;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zza(ILcom/google/android/gms/internal/measurement/zzxe;Lcom/google/android/gms/internal/measurement/zzxu;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/internal/measurement/zzun;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zza(Lcom/google/android/gms/internal/measurement/zzxe;Lcom/google/android/gms/internal/measurement/zzxu;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzyy;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzve;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzvz;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 153
    :try_start_14
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 154
    const/4 p2, 0x0

    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzum;->zza([BII)V
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_1d} :catch_20
    .catch Lcom/google/android/gms/internal/measurement/zzve$zzc; {:try_start_14 .. :try_end_1d} :catch_1e

    .line 155
    return-void

    .line 158
    :catch_1e
    move-exception p1

    throw p1

    .line 156
    :catch_20
    move-exception p1

    .line 157
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract zzay(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzay(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzaz(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzaz(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzbg(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzay(J)V

    .line 28
    return-void
.end method

.method public final zzb(D)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzba(J)V

    .line 32
    return-void
.end method

.method public final zzb(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/measurement/zzve;->zzbg(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzve;->zza(IJ)V

    .line 20
    return-void
.end method

.method public abstract zzb(ILcom/google/android/gms/internal/measurement/zzun;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(ILcom/google/android/gms/internal/measurement/zzxe;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/measurement/zzxe;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzba(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzbj(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 26
    return-void
.end method

.method public abstract zzba(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzbb(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzd(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zze(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zze([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzf(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzbj(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zze(II)V

    .line 18
    return-void
.end method

.method public abstract zzg(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzgd(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzs(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(B)V

    .line 34
    return-void
.end method

.method public abstract zzvq()I
.end method

###### Class com.google.android.gms.internal.measurement.zzve.zza (com.google.android.gms.internal.measurement.zzve$zza)
.class Lcom/google/android/gms/internal/measurement/zzve$zza;
.super Lcom/google/android/gms/internal/measurement/zzve;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private final offset:I

.field private position:I


# direct methods
.method constructor <init>([BII)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzve;-><init>(Lcom/google/android/gms/internal/measurement/zzvf;)V

    .line 2
    if-eqz p1, :cond_3d

    .line 4
    or-int v0, p2, p3

    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_18

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    .line 9
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->offset:I

    .line 10
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    .line 11
    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->limit:I

    .line 12
    return-void

    .line 5
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length p1, p1

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    .line 7
    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_3d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public flush()V
    .registers 1

    .line 169
    return-void
.end method

.method public final write([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    .line 141
    return-void

    .line 142
    :catch_d
    move-exception p1

    .line 143
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    .line 144
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zza(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 27
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzve;->zzay(J)V

    .line 28
    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzun;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zza(Lcom/google/android/gms/internal/measurement/zzun;)V

    .line 40
    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzxe;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzb(Lcom/google/android/gms/internal/measurement/zzxe;)V

    .line 49
    return-void
.end method

.method final zza(ILcom/google/android/gms/internal/measurement/zzxe;Lcom/google/android/gms/internal/measurement/zzxu;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 51
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzug;

    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzug;->zzue()I

    move-result v0

    .line 53
    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 54
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/measurement/zzxu;->zzai(Ljava/lang/Object;)I

    move-result v0

    .line 55
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzug;->zzah(I)V

    .line 56
    :cond_15
    nop

    .line 57
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 58
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->zzbvr:Lcom/google/android/gms/internal/measurement/zzvg;

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzxu;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzzh;)V

    .line 59
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzun;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzun;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 42
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzun;->zza(Lcom/google/android/gms/internal/measurement/zzum;)V

    .line 43
    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzxe;Lcom/google/android/gms/internal/measurement/zzxu;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzug;

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzug;->zzue()I

    move-result v1

    .line 75
    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 76
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/zzxu;->zzai(Ljava/lang/Object;)I

    move-result v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzug;->zzah(I)V

    .line 78
    :cond_11
    nop

    .line 79
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->zzbvr:Lcom/google/android/gms/internal/measurement/zzvg;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/measurement/zzxu;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzzh;)V

    .line 81
    return-void
.end method

.method public final zza([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzve;->write([BII)V

    .line 146
    return-void
.end method

.method public final zzay(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    if-ltz p1, :cond_6

    .line 88
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    return-void

    .line 89
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzve;->zzay(J)V

    .line 90
    return-void
.end method

.method public final zzay(J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzve;->zzvr()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzvq()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_3c

    .line 114
    :goto_13
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_28

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    int-to-long v1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJB)V

    .line 116
    return-void

    .line 117
    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v6, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJB)V

    .line 118
    ushr-long/2addr p1, v1

    goto :goto_13

    .line 119
    :cond_3c
    :goto_3c
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_51

    .line 120
    :try_start_42
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 121
    return-void

    .line 124
    :catch_4f
    move-exception p1

    goto :goto_63

    .line 122
    :cond_51
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v6, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_61
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_42 .. :try_end_61} :catch_4f

    .line 123
    ushr-long/2addr p1, v1

    goto :goto_3c

    .line 124
    :goto_63
    nop

    .line 125
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzaz(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzve;->zzvr()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzvq()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_34

    .line 92
    :goto_e
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_20

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJB)V

    .line 94
    return-void

    .line 95
    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    int-to-long v1, v1

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJB)V

    .line 96
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_e

    .line 97
    :cond_34
    :goto_34
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_46

    .line 98
    :try_start_38
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 99
    return-void

    .line 102
    :catch_44
    move-exception p1

    goto :goto_58

    .line 100
    :cond_46
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_55
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_38 .. :try_end_55} :catch_44

    .line 101
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_34

    .line 102
    :goto_58
    nop

    .line 103
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzb(ILcom/google/android/gms/internal/measurement/zzun;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 66
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zze(II)V

    .line 67
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zza(ILcom/google/android/gms/internal/measurement/zzun;)V

    .line 68
    const/4 p1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 69
    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/measurement/zzxe;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 61
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zze(II)V

    .line 62
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zza(ILcom/google/android/gms/internal/measurement/zzxe;)V

    .line 63
    const/4 p1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 64
    return-void
.end method

.method public final zzb(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzgd(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public final zzb(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 33
    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(B)V

    .line 34
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzxe;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzxe;->zzwe()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 71
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzxe;->zzb(Lcom/google/android/gms/internal/measurement/zzve;)V

    .line 72
    return-void
.end method

.method public final zzba(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    const/16 v2, 0x8

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 130
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 131
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    const/16 v2, 0x38

    shr-long/2addr p1, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_7b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_7b} :catch_7c

    .line 135
    return-void

    .line 136
    :catch_7c
    move-exception p1

    .line 137
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    .line 138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzbb(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    shr-int/lit8 p1, p1, 0x18

    aput-byte p1, v0, v1
    :try_end_31
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_31} :catch_32

    .line 109
    return-void

    .line 110
    :catch_32
    move-exception p1

    .line 111
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzc(B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    aput-byte p1, v0, v1
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_b

    .line 83
    return-void

    .line 84
    :catch_b
    move-exception p1

    .line 85
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzc(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    nop

    .line 14
    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 16
    return-void
.end method

.method public final zzc(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 30
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzve;->zzba(J)V

    .line 31
    return-void
.end method

.method public final zzd(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzay(I)V

    .line 19
    return-void
.end method

.method public final zze(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 21
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 22
    return-void
.end method

.method public final zze([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 45
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzve;->write([BII)V

    .line 46
    return-void
.end method

.method public final zzg(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzbb(I)V

    .line 25
    return-void
.end method

.method public final zzgd(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    .line 148
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 149
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzve$zza;->zzbe(I)I

    move-result v1

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzve$zza;->zzbe(I)I

    move-result v2

    .line 151
    if-ne v2, v1, :cond_31

    .line 152
    add-int v1, v0, v2

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    .line 153
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzvq()I

    move-result v4

    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzyu;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 154
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    .line 155
    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 156
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 157
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    .line 158
    return-void

    .line 159
    :cond_31
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzyu;->zza(Ljava/lang/CharSequence;)I

    move-result v1

    .line 160
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 161
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzvq()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzyu;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I
    :try_end_46
    .catch Lcom/google/android/gms/internal/measurement/zzyy; {:try_start_2 .. :try_end_46} :catch_4e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_46} :catch_47

    .line 162
    return-void

    .line 167
    :catch_47
    move-exception p1

    .line 168
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 163
    :catch_4e
    move-exception v1

    .line 164
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    .line 165
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzve;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzyy;)V

    .line 166
    return-void
.end method

.method public final zzvq()I
    .registers 3

    .line 170
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zzvs()I
    .registers 3

    .line 171
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->position:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zza;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

###### Class com.google.android.gms.internal.measurement.zzve.zzb (com.google.android.gms.internal.measurement.zzve$zzb)
.class final Lcom/google/android/gms/internal/measurement/zzve$zzb;
.super Lcom/google/android/gms/internal/measurement/zzve$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzb"
.end annotation


# instance fields
.field private final zzbvs:Ljava/nio/ByteBuffer;

.field private zzbvt:I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 1
    nop

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 5
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzve$zza;-><init>([BII)V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzve$zzb;->zzbvs:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzve$zzb;->zzbvt:I

    .line 8
    return-void
.end method


# virtual methods
.method public final flush()V
    .registers 4

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zzb;->zzbvs:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zzb;->zzbvt:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzve$zza;->zzvs()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    return-void
.end method

###### Class com.google.android.gms.internal.measurement.zzve.zzc (com.google.android.gms.internal.measurement.zzve$zzc)
.class public final Lcom/google/android/gms/internal/measurement/zzve$zzc;
.super Ljava/io/IOException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "CodedOutputStream was writing to a flat byte array and ran out of space."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 3
    const-string v0, "CodedOutputStream was writing to a flat byte array and ran out of space.: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    :cond_15
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1a
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 7
    const-string v0, "CodedOutputStream was writing to a flat byte array and ran out of space.: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    :cond_15
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1a
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    .line 5
    const-string v0, "CodedOutputStream was writing to a flat byte array and ran out of space."

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    return-void
.end method

###### Class com.google.android.gms.internal.measurement.zzve.zzd (com.google.android.gms.internal.measurement.zzve$zzd)
.class final Lcom/google/android/gms/internal/measurement/zzve$zzd;
.super Lcom/google/android/gms/internal/measurement/zzve;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzd"
.end annotation


# instance fields
.field private final zzbvt:I

.field private final zzbvu:Ljava/nio/ByteBuffer;

.field private final zzbvv:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzve;-><init>(Lcom/google/android/gms/internal/measurement/zzvf;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvu:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvv:Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvt:I

    .line 5
    return-void
.end method

.method private final zzgf(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzyu;->zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_6

    .line 133
    return-void

    .line 134
    :catch_6
    move-exception p1

    .line 135
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final flush()V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvu:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    return-void
.end method

.method public final write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_6

    .line 99
    return-void

    .line 102
    :catch_6
    move-exception p1

    .line 103
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 100
    :catch_d
    move-exception p1

    .line 101
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zza(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 20
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzve;->zzay(J)V

    .line 21
    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzun;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zza(Lcom/google/android/gms/internal/measurement/zzun;)V

    .line 33
    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzxe;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzb(Lcom/google/android/gms/internal/measurement/zzxe;)V

    .line 36
    return-void
.end method

.method final zza(ILcom/google/android/gms/internal/measurement/zzxe;Lcom/google/android/gms/internal/measurement/zzxu;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 38
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzve;->zza(Lcom/google/android/gms/internal/measurement/zzxe;Lcom/google/android/gms/internal/measurement/zzxu;)V

    .line 39
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzun;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzun;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 67
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzun;->zza(Lcom/google/android/gms/internal/measurement/zzum;)V

    .line 68
    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzxe;Lcom/google/android/gms/internal/measurement/zzxu;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzug;

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzug;->zzue()I

    move-result v1

    .line 55
    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 56
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/zzxu;->zzai(Ljava/lang/Object;)I

    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzug;->zzah(I)V

    .line 58
    :cond_11
    nop

    .line 59
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvr:Lcom/google/android/gms/internal/measurement/zzvg;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/measurement/zzxu;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzzh;)V

    .line 61
    return-void
.end method

.method public final zza([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzve;->write([BII)V

    .line 105
    return-void
.end method

.method public final zzay(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    if-ltz p1, :cond_6

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    return-void

    .line 74
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzve;->zzay(J)V

    .line 75
    return-void
.end method

.method public final zzay(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    .line 88
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvv:Ljava/nio/ByteBuffer;

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 89
    return-void

    .line 92
    :catch_11
    move-exception p1

    goto :goto_21

    .line 90
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvv:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_1e
    .catch Ljava/nio/BufferOverflowException; {:try_start_9 .. :try_end_1e} :catch_11

    .line 91
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    .line 92
    :goto_21
    nop

    .line 93
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzaz(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_d

    .line 77
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvv:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 78
    return-void

    .line 81
    :catch_b
    move-exception p1

    goto :goto_1a

    .line 79
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvv:Ljava/nio/ByteBuffer;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_17
    .catch Ljava/nio/BufferOverflowException; {:try_start_4 .. :try_end_17} :catch_b

    .line 80
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 81
    :goto_1a
    nop

    .line 82
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzb(ILcom/google/android/gms/internal/measurement/zzun;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 46
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zze(II)V

    .line 47
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zza(ILcom/google/android/gms/internal/measurement/zzun;)V

    .line 48
    const/4 p1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 49
    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/measurement/zzxe;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 41
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zze(II)V

    .line 42
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zza(ILcom/google/android/gms/internal/measurement/zzxe;)V

    .line 43
    const/4 p1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 44
    return-void
.end method

.method public final zzb(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 29
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzgd(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public final zzb(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 26
    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(B)V

    .line 27
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzxe;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzxe;->zzwe()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 51
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzxe;->zzb(Lcom/google/android/gms/internal/measurement/zzve;)V

    .line 52
    return-void
.end method

.method public final zzba(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_6

    .line 95
    return-void

    .line 96
    :catch_6
    move-exception p1

    .line 97
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzbb(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_6

    .line 84
    return-void

    .line 85
    :catch_6
    move-exception p1

    .line 86
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzc(B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_6

    .line 63
    return-void

    .line 64
    :catch_6
    move-exception p1

    .line 65
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzc(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    nop

    .line 7
    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 9
    return-void
.end method

.method public final zzc(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 23
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzve;->zzba(J)V

    .line 24
    return-void
.end method

.method public final zzd(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzay(I)V

    .line 12
    return-void
.end method

.method public final zze(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 14
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 15
    return-void
.end method

.method public final zze([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 70
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzve;->write([BII)V

    .line 71
    return-void
.end method

.method public final zzg(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 17
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzbb(I)V

    .line 18
    return-void
.end method

.method public final zzgd(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 107
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 108
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbe(I)I

    move-result v1

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbe(I)I

    move-result v2

    .line 110
    if-ne v2, v1, :cond_3f

    .line 111
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    .line 112
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 113
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzgf(Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 115
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    sub-int v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 117
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    return-void

    .line 119
    :cond_3f
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzyu;->zza(Ljava/lang/CharSequence;)I

    move-result v1

    .line 120
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzgf(Ljava/lang/String;)V
    :try_end_49
    .catch Lcom/google/android/gms/internal/measurement/zzyy; {:try_start_6 .. :try_end_49} :catch_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_49} :catch_4a

    .line 122
    return-void

    .line 127
    :catch_4a
    move-exception p1

    .line 128
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 123
    :catch_51
    move-exception v1

    .line 124
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzve;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzyy;)V

    .line 126
    return-void
.end method

.method public final zzvq()I
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zzd;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

###### Class com.google.android.gms.internal.measurement.zzve.zze (com.google.android.gms.internal.measurement.zzve$zze)
.class final Lcom/google/android/gms/internal/measurement/zzve$zze;
.super Lcom/google/android/gms/internal/measurement/zzve;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zze"
.end annotation


# instance fields
.field private final zzbvu:Ljava/nio/ByteBuffer;

.field private final zzbvv:Ljava/nio/ByteBuffer;

.field private final zzbvw:J

.field private final zzbvx:J

.field private final zzbvy:J

.field private final zzbvz:J

.field private zzbwa:J


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzve;-><init>(Lcom/google/android/gms/internal/measurement/zzvf;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvu:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvv:Ljava/nio/ByteBuffer;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzys;->zzb(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvw:J

    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvw:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvx:J

    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvw:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvy:J

    .line 7
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvy:J

    const-wide/16 v2, 0xa

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvz:J

    .line 8
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvx:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    .line 9
    return-void
.end method

.method private final zzbh(J)V
    .registers 6

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvv:Ljava/nio/ByteBuffer;

    .line 164
    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvw:J

    sub-long/2addr p1, v1

    long-to-int p1, p1

    .line 165
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 166
    return-void
.end method


# virtual methods
.method public final flush()V
    .registers 6

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvu:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    .line 159
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvw:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 160
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 161
    return-void
.end method

.method public final write([BII)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    if-eqz p1, :cond_23

    if-ltz p2, :cond_23

    if-ltz p3, :cond_23

    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_23

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvy:J

    int-to-long v9, p3

    sub-long/2addr v0, v9

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_15

    goto :goto_23

    .line 124
    :cond_15
    int-to-long v3, p2

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    move-object v2, p1

    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJJJ)V

    .line 125
    iget-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    add-long/2addr p1, v9

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    .line 126
    return-void

    .line 120
    :cond_23
    :goto_23
    if-nez p1, :cond_2e

    .line 121
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_2e
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    .line 123
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvy:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 24
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzve;->zzay(J)V

    .line 25
    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzun;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zza(Lcom/google/android/gms/internal/measurement/zzun;)V

    .line 37
    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzxe;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzb(Lcom/google/android/gms/internal/measurement/zzxe;)V

    .line 40
    return-void
.end method

.method final zza(ILcom/google/android/gms/internal/measurement/zzxe;Lcom/google/android/gms/internal/measurement/zzxu;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 42
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzve;->zza(Lcom/google/android/gms/internal/measurement/zzxe;Lcom/google/android/gms/internal/measurement/zzxu;)V

    .line 43
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzun;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzun;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 72
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzun;->zza(Lcom/google/android/gms/internal/measurement/zzum;)V

    .line 73
    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzxe;Lcom/google/android/gms/internal/measurement/zzxu;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzug;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzug;->zzue()I

    move-result v1

    .line 59
    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 60
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/zzxu;->zzai(Ljava/lang/Object;)I

    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzug;->zzah(I)V

    .line 62
    :cond_11
    nop

    .line 63
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvr:Lcom/google/android/gms/internal/measurement/zzvg;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/measurement/zzxu;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzzh;)V

    .line 65
    return-void
.end method

.method public final zza([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzve;->write([BII)V

    .line 128
    return-void
.end method

.method public final zzay(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    if-ltz p1, :cond_6

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    return-void

    .line 79
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzve;->zzay(J)V

    .line 80
    return-void
.end method

.method public final zzay(J)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvz:J

    const/4 v4, 0x7

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x80

    const-wide/16 v9, 0x1

    cmp-long v11, v0, v2

    if-gtz v11, :cond_31

    .line 101
    :goto_f
    and-long v0, p1, v7

    cmp-long v2, v0, v5

    if-nez v2, :cond_20

    .line 102
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    add-long/2addr v9, v0

    iput-wide v9, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzys;->zza(JB)V

    .line 103
    return-void

    .line 104
    :cond_20
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    add-long v2, v0, v9

    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzys;->zza(JB)V

    .line 105
    ushr-long/2addr p1, v4

    goto :goto_f

    .line 106
    :cond_31
    :goto_31
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvy:J

    cmp-long v11, v0, v2

    if-gez v11, :cond_5b

    .line 107
    and-long v0, p1, v7

    cmp-long v2, v0, v5

    if-nez v2, :cond_4a

    .line 108
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    add-long/2addr v9, v0

    iput-wide v9, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzys;->zza(JB)V

    .line 109
    return-void

    .line 110
    :cond_4a
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    add-long v2, v0, v9

    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzys;->zza(JB)V

    .line 111
    ushr-long/2addr p1, v4

    goto :goto_31

    .line 112
    :cond_5b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    .line 113
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvy:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzaz(I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvz:J

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-gtz v6, :cond_29

    .line 82
    :goto_a
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_18

    .line 83
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzys;->zza(JB)V

    .line 84
    return-void

    .line 85
    :cond_18
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzys;->zza(JB)V

    .line 86
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_a

    .line 87
    :cond_29
    :goto_29
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvy:J

    cmp-long v6, v0, v2

    if-gez v6, :cond_50

    .line 88
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_3f

    .line 89
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzys;->zza(JB)V

    .line 90
    return-void

    .line 91
    :cond_3f
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzys;->zza(JB)V

    .line 92
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_29

    .line 93
    :cond_50
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvy:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(ILcom/google/android/gms/internal/measurement/zzun;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 50
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zze(II)V

    .line 51
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zza(ILcom/google/android/gms/internal/measurement/zzun;)V

    .line 52
    const/4 p1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 53
    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/measurement/zzxe;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 45
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zze(II)V

    .line 46
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zza(ILcom/google/android/gms/internal/measurement/zzxe;)V

    .line 47
    const/4 p1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 48
    return-void
.end method

.method public final zzb(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzgd(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public final zzb(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 30
    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(B)V

    .line 31
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzxe;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzxe;->zzwe()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 55
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzxe;->zzb(Lcom/google/android/gms/internal/measurement/zzve;)V

    .line 56
    return-void
.end method

.method public final zzba(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvv:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    .line 115
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvw:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 116
    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 117
    iget-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    .line 118
    return-void
.end method

.method public final zzbb(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvv:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    .line 96
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvw:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 97
    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 98
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    .line 99
    return-void
.end method

.method public final zzc(B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvy:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_13

    .line 69
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzys;->zza(JB)V

    .line 70
    return-void

    .line 67
    :cond_13
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    .line 68
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvy:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    nop

    .line 11
    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 13
    return-void
.end method

.method public final zzc(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 27
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzve;->zzba(J)V

    .line 28
    return-void
.end method

.method public final zzd(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 15
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzay(I)V

    .line 16
    return-void
.end method

.method public final zze(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 19
    return-void
.end method

.method public final zze([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 75
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzve;->write([BII)V

    .line 76
    return-void
.end method

.method public final zzg(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(II)V

    .line 21
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzbb(I)V

    .line 22
    return-void
.end method

.method public final zzgd(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    .line 130
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    .line 131
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbe(I)I

    move-result v2

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbe(I)I

    move-result v3

    .line 133
    if-ne v3, v2, :cond_39

    .line 134
    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    .line 135
    iget-wide v6, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvw:J

    const/4 v2, 0x0

    sub-long/2addr v4, v6

    long-to-int v2, v4

    .line 136
    add-int/2addr v2, v3

    .line 137
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/measurement/zzyu;->zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 139
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v2

    .line 140
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 141
    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    int-to-long v2, v3

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    .line 142
    return-void

    .line 143
    :cond_39
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzyu;->zza(Ljava/lang/CharSequence;)I

    move-result v2

    .line 144
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzve;->zzaz(I)V

    .line 145
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbh(J)V

    .line 146
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvv:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/measurement/zzyu;->zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 147
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J
    :try_end_50
    .catch Lcom/google/android/gms/internal/measurement/zzyy; {:try_start_2 .. :try_end_50} :catch_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_50} :catch_58
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_50} :catch_51

    .line 148
    return-void

    .line 156
    :catch_51
    move-exception p1

    .line 157
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 154
    :catch_58
    move-exception p1

    .line 155
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzve$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzve$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 149
    :catch_5f
    move-exception v2

    .line 150
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    .line 151
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbh(J)V

    .line 152
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzve;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzyy;)V

    .line 153
    return-void
.end method

.method public final zzvq()I
    .registers 5

    .line 162
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbvy:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzve$zze;->zzbwa:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
