###### Class com.google.android.gms.internal.measurement.zzys (com.google.android.gms.internal.measurement.zzys)
.class final Lcom/google/android/gms/internal/measurement/zzys;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzys$zza;,
        Lcom/google/android/gms/internal/measurement/zzys$zzb;,
        Lcom/google/android/gms/internal/measurement/zzys$zzc;,
        Lcom/google/android/gms/internal/measurement/zzys$zzd;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final zzbuq:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzbvq:Z

.field private static final zzcbt:Lsun/misc/Unsafe;

.field private static final zzcdq:Z

.field private static final zzcdr:Z

.field private static final zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

.field private static final zzcdt:Z

.field private static final zzcdu:J

.field private static final zzcdv:J

.field private static final zzcdw:J

.field private static final zzcdx:J

.field private static final zzcdy:J

.field private static final zzcdz:J

.field private static final zzcea:J

.field private static final zzceb:J

.field private static final zzcec:J

.field private static final zzced:J

.field private static final zzcee:J

.field private static final zzcef:J

.field private static final zzceg:J

.field private static final zzceh:J

.field private static final zzcei:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 149
    const-class v0, Lcom/google/android/gms/internal/measurement/zzys;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzys;->logger:Ljava/util/logging/Logger;

    .line 150
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzys;->zzyx()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcbt:Lsun/misc/Unsafe;

    .line 151
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzuk;->zzuj()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzbuq:Ljava/lang/Class;

    .line 152
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzys;->zzn(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcdq:Z

    .line 153
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzys;->zzn(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcdr:Z

    .line 154
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcbt:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    .line 155
    goto :goto_54

    .line 156
    :cond_2e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzuk;->zzui()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 157
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcdq:Z

    if-eqz v0, :cond_40

    .line 158
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzys$zzb;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcbt:Lsun/misc/Unsafe;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzys$zzb;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_54

    .line 159
    :cond_40
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcdr:Z

    if-eqz v0, :cond_4c

    .line 160
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzys$zza;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcbt:Lsun/misc/Unsafe;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzys$zza;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_54

    .line 161
    :cond_4c
    goto :goto_54

    .line 162
    :cond_4d
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzys$zzc;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcbt:Lsun/misc/Unsafe;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzys$zzc;-><init>(Lsun/misc/Unsafe;)V

    .line 163
    :goto_54
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    .line 164
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzys;->zzyz()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcdt:Z

    .line 165
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzys;->zzyy()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzys;->zzbvq:Z

    .line 166
    const-class v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzys;->zzl(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcdu:J

    .line 167
    const-class v0, [Z

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzys;->zzl(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcdv:J

    .line 168
    const-class v0, [Z

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzys;->zzm(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcdw:J

    .line 169
    const-class v0, [I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzys;->zzl(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcdx:J

    .line 170
    const-class v0, [I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzys;->zzm(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcdy:J

    .line 171
    const-class v0, [J

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzys;->zzl(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcdz:J

    .line 172
    const-class v0, [J

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzys;->zzm(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcea:J

    .line 173
    const-class v0, [F

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzys;->zzl(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzys;->zzceb:J

    .line 174
    const-class v0, [F

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzys;->zzm(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcec:J

    .line 175
    const-class v0, [D

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzys;->zzl(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzys;->zzced:J

    .line 176
    const-class v0, [D

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzys;->zzm(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcee:J

    .line 177
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzys;->zzl(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcef:J

    .line 178
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzys;->zzm(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzys;->zzceg:J

    .line 179
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzys;->zzza()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_eb

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    if-nez v1, :cond_e2

    goto :goto_eb

    :cond_e2
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    .line 181
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzcej:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_ed

    .line 180
    :cond_eb
    :goto_eb
    const-wide/16 v0, -0x1

    .line 182
    :goto_ed
    sput-wide v0, Lcom/google/android/gms/internal/measurement/zzys;->zzceh:J

    .line 183
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_f9

    const/4 v0, 0x1

    goto :goto_fa

    :cond_f9
    const/4 v0, 0x0

    :goto_fa
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcei:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza([BJ)B
    .registers 6

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    sget-wide v1, Lcom/google/android/gms/internal/measurement/zzys;->zzcdu:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzy(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static zza(JB)V
    .registers 4

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zza(JB)V

    .line 40
    return-void
.end method

.method private static zza(Ljava/lang/Object;JB)V
    .registers 8

    .line 123
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzys;->zzk(Ljava/lang/Object;J)I

    move-result v2

    .line 124
    long-to-int p1, p1

    xor-int/lit8 p1, p1, -0x1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    .line 125
    const/16 p2, 0xff

    shl-int v3, p2, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 126
    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzys;->zzb(Ljava/lang/Object;JI)V

    .line 127
    return-void
.end method

.method static zza(Ljava/lang/Object;JD)V
    .registers 11

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zza(Ljava/lang/Object;JD)V

    .line 27
    return-void
.end method

.method static zza(Ljava/lang/Object;JF)V
    .registers 5

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zza(Ljava/lang/Object;JF)V

    .line 24
    return-void
.end method

.method static zza(Ljava/lang/Object;JJ)V
    .registers 11

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zza(Ljava/lang/Object;JJ)V

    .line 18
    return-void
.end method

.method static zza(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 5

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    .line 32
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzcej:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 33
    return-void
.end method

.method static zza(Ljava/lang/Object;JZ)V
    .registers 5

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zza(Ljava/lang/Object;JZ)V

    .line 21
    return-void
.end method

.method static zza([BJB)V
    .registers 7

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    sget-wide v1, Lcom/google/android/gms/internal/measurement/zzys;->zzcdu:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zze(Ljava/lang/Object;JB)V

    .line 36
    return-void
.end method

.method static zza([BJJJ)V
    .registers 15

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zza([BJJJ)V

    .line 38
    return-void
.end method

.method static zzb(Ljava/nio/ByteBuffer;)J
    .registers 4

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    sget-wide v1, Lcom/google/android/gms/internal/measurement/zzys;->zzceh:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzl(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static zzb(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 115
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 116
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    .line 117
    goto :goto_b

    .line 118
    :catch_9
    move-exception p0

    .line 119
    const/4 p0, 0x0

    .line 120
    :goto_b
    return-object p0
.end method

.method private static zzb(Ljava/lang/Object;JB)V
    .registers 8

    .line 128
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzys;->zzk(Ljava/lang/Object;J)I

    move-result v2

    .line 129
    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    .line 130
    const/16 p2, 0xff

    shl-int v3, p2, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 131
    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzys;->zzb(Ljava/lang/Object;JI)V

    .line 132
    return-void
.end method

.method static zzb(Ljava/lang/Object;JI)V
    .registers 5

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzb(Ljava/lang/Object;JI)V

    .line 15
    return-void
.end method

.method private static zzb(Ljava/lang/Object;JZ)V
    .registers 4

    .line 135
    int-to-byte p3, p3

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys;->zza(Ljava/lang/Object;JB)V

    .line 136
    return-void
.end method

.method static synthetic zzc(Ljava/lang/Object;JB)V
    .registers 4

    .line 143
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys;->zza(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static zzc(Ljava/lang/Object;JZ)V
    .registers 4

    .line 137
    int-to-byte p3, p3

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys;->zzb(Ljava/lang/Object;JB)V

    .line 138
    return-void
.end method

.method static synthetic zzd(Ljava/lang/Object;JB)V
    .registers 4

    .line 144
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys;->zzb(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic zzd(Ljava/lang/Object;JZ)V
    .registers 4

    .line 147
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys;->zzb(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static synthetic zze(Ljava/lang/Object;JZ)V
    .registers 4

    .line 148
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys;->zzc(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static zzk(Ljava/lang/Object;J)I
    .registers 4

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzk(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static zzk(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcbt:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    .line 5
    :catch_7
    move-exception p0

    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static zzl(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 7
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzys;->zzbvq:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzcej:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    .line 9
    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method static zzl(Ljava/lang/Object;J)J
    .registers 4

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzl(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzm(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 10
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzys;->zzbvq:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    .line 11
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzcej:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    .line 12
    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method static zzm(Ljava/lang/Object;J)Z
    .registers 4

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzm(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static zzn(Ljava/lang/Object;J)F
    .registers 4

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzn(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method private static zzn(Ljava/lang/Class;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 95
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzuk;->zzui()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 96
    return v1

    .line 97
    :cond_8
    :try_start_8
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzbuq:Ljava/lang/Class;

    .line 98
    const-string v2, "peekLong"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    aput-object p0, v4, v1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 99
    const-string v2, "pokeLong"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 100
    const-string v2, "pokeInt"

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 101
    const-string v2, "peekInt"

    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 102
    const-string v2, "pokeByte"

    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 103
    const-string v2, "peekByte"

    new-array v5, v6, [Ljava/lang/Class;

    aput-object p0, v5, v1

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 104
    const-string v2, "pokeByteArray"

    const/4 v5, 0x4

    new-array v7, v5, [Ljava/lang/Class;

    aput-object p0, v7, v1

    const-class v8, [B

    aput-object v8, v7, v6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 105
    const-string v2, "peekByteArray"

    new-array v5, v5, [Ljava/lang/Class;

    aput-object p0, v5, v1

    const-class p0, [B

    aput-object p0, v5, v6

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v5, v3

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v5, v4

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8a} :catch_8b

    .line 106
    return v6

    .line 107
    :catch_8b
    move-exception p0

    .line 108
    return v1
.end method

.method static zzo(Ljava/lang/Object;J)D
    .registers 4

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzo(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static zzp(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcds:Lcom/google/android/gms/internal/measurement/zzys$zzd;

    .line 29
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzcej:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 30
    return-object p0
.end method

.method private static zzq(Ljava/lang/Object;J)B
    .registers 5

    .line 121
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzys;->zzk(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, -0x1

    xor-long/2addr p1, v0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method private static zzr(Ljava/lang/Object;J)B
    .registers 5

    .line 122
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzys;->zzk(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method private static zzs(Ljava/lang/Object;J)Z
    .registers 3

    .line 133
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzys;->zzq(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private static zzt(Ljava/lang/Object;J)Z
    .registers 3

    .line 134
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzys;->zzr(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zzu(Ljava/lang/Object;J)B
    .registers 3

    .line 141
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzys;->zzq(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static synthetic zzv(Ljava/lang/Object;J)B
    .registers 3

    .line 142
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzys;->zzr(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static synthetic zzvr()Z
    .registers 1

    .line 140
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcei:Z

    return v0
.end method

.method static synthetic zzw(Ljava/lang/Object;J)Z
    .registers 3

    .line 145
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzys;->zzs(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static synthetic zzx(Ljava/lang/Object;J)Z
    .registers 3

    .line 146
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzys;->zzt(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static zzyv()Z
    .registers 1

    .line 2
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzys;->zzbvq:Z

    return v0
.end method

.method static zzyw()Z
    .registers 1

    .line 3
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcdt:Z

    return v0
.end method

.method static zzyx()Lsun/misc/Unsafe;
    .registers 1

    .line 42
    nop

    .line 43
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzyt;-><init>()V

    .line 44
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_d

    .line 45
    goto :goto_f

    .line 46
    :catch_d
    move-exception v0

    .line 47
    const/4 v0, 0x0

    :goto_f
    return-object v0
.end method

.method private static zzyy()Z
    .registers 8

    .line 48
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcbt:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 49
    return v1

    .line 50
    :cond_6
    :try_start_6
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcbt:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 51
    const-string v2, "objectFieldOffset"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 52
    const-string v2, "arrayBaseOffset"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 53
    const-string v2, "arrayIndexScale"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    const-string v2, "getInt"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    const-string v2, "putInt"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 56
    const-string v2, "getLong"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    const-string v2, "putLong"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 58
    const-string v2, "getObject"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 59
    const-string v2, "putObject"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzuk;->zzui()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 61
    return v3

    .line 62
    :cond_9d
    const-string v2, "getByte"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    const-string v2, "putByte"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    const-string v2, "getBoolean"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 65
    const-string v2, "putBoolean"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 66
    const-string v2, "getFloat"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 67
    const-string v2, "putFloat"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    const-string v2, "getDouble"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    const-string v2, "putDouble"

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_125
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_125} :catch_126

    .line 70
    return v3

    .line 71
    :catch_126
    move-exception v0

    .line 72
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzys;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "com.google.protobuf.UnsafeUtil"

    const-string/jumbo v5, "supportsUnsafeArrayOperations"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x47

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v5, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return v1
.end method

.method private static zzyz()Z
    .registers 8

    .line 74
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcbt:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 75
    return v1

    .line 76
    :cond_6
    :try_start_6
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcbt:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 77
    const-string v2, "objectFieldOffset"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 78
    const-string v2, "getLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 79
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzys;->zzza()Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v2, :cond_2f

    .line 80
    return v1

    .line 81
    :cond_2f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzuk;->zzui()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 82
    return v3

    .line 83
    :cond_36
    const-string v2, "getByte"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 84
    const-string v2, "putByte"

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 85
    const-string v2, "getInt"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 86
    const-string v2, "putInt"

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 87
    const-string v2, "getLong"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 88
    const-string v2, "putLong"

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 89
    const-string v2, "copyMemory"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 90
    const-string v2, "copyMemory"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v6, v5

    const/4 v4, 0x4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b5} :catch_b6

    .line 91
    return v3

    .line 92
    :catch_b6
    move-exception v0

    .line 93
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzys;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "com.google.protobuf.UnsafeUtil"

    const-string/jumbo v5, "supportsUnsafeByteBufferOperations"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x47

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v5, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return v1
.end method

.method private static zzza()Ljava/lang/reflect/Field;
    .registers 3

    .line 109
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzuk;->zzui()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 110
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzys;->zzb(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_11

    .line 112
    return-object v0

    .line 113
    :cond_11
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzys;->zzb(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_24

    return-object v0

    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic zzzb()J
    .registers 2

    .line 139
    sget-wide v0, Lcom/google/android/gms/internal/measurement/zzys;->zzcdu:J

    return-wide v0
.end method

###### Class com.google.android.gms.internal.measurement.zzys.zza (com.google.android.gms.internal.measurement.zzys$zza)
.class final Lcom/google/android/gms/internal/measurement/zzys$zza;
.super Lcom/google/android/gms/internal/measurement/zzys$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzys$zzd;-><init>(Lsun/misc/Unsafe;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final zza(JB)V
    .registers 6

    .line 3
    nop

    .line 4
    const-wide/16 v0, -0x1

    and-long/2addr p1, v0

    long-to-int p1, p1

    .line 5
    invoke-static {p1, p3}, Llibcore/io/Memory;->pokeByte(IB)V

    .line 6
    return-void
.end method

.method public final zza(Ljava/lang/Object;JD)V
    .registers 12

    .line 25
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zza(Ljava/lang/Object;JJ)V

    .line 26
    return-void
.end method

.method public final zza(Ljava/lang/Object;JF)V
    .registers 5

    .line 22
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzb(Ljava/lang/Object;JI)V

    .line 23
    return-void
.end method

.method public final zza(Ljava/lang/Object;JZ)V
    .registers 6

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzys;->zzvr()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 18
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzys;->zzd(Ljava/lang/Object;JZ)V

    return-void

    .line 19
    :cond_a
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzys;->zze(Ljava/lang/Object;JZ)V

    .line 20
    return-void
.end method

.method public final zza([BJJJ)V
    .registers 10

    .line 27
    nop

    .line 28
    nop

    .line 29
    const-wide/16 v0, -0x1

    and-long/2addr p4, v0

    long-to-int p4, p4

    .line 30
    long-to-int p2, p2

    long-to-int p3, p6

    .line 31
    invoke-static {p4, p1, p2, p3}, Llibcore/io/Memory;->pokeByteArray(I[BII)V

    .line 32
    return-void
.end method

.method public final zze(Ljava/lang/Object;JB)V
    .registers 6

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzys;->zzvr()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 11
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzys;->zzc(Ljava/lang/Object;JB)V

    return-void

    .line 12
    :cond_a
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzys;->zzd(Ljava/lang/Object;JB)V

    .line 13
    return-void
.end method

.method public final zzm(Ljava/lang/Object;J)Z
    .registers 5

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzys;->zzvr()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 15
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys;->zzw(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 16
    :cond_b
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys;->zzx(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final zzn(Ljava/lang/Object;J)F
    .registers 4

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzk(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public final zzo(Ljava/lang/Object;J)D
    .registers 4

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public final zzy(Ljava/lang/Object;J)B
    .registers 5

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzys;->zzvr()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys;->zzu(Ljava/lang/Object;J)B

    move-result p1

    return p1

    .line 9
    :cond_b
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys;->zzv(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.internal.measurement.zzys.zzb (com.google.android.gms.internal.measurement.zzys$zzb)
.class final Lcom/google/android/gms/internal/measurement/zzys$zzb;
.super Lcom/google/android/gms/internal/measurement/zzys$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzb"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzys$zzd;-><init>(Lsun/misc/Unsafe;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final zza(JB)V
    .registers 4

    .line 3
    invoke-static {p1, p2, p3}, Llibcore/io/Memory;->pokeByte(JB)V

    .line 4
    return-void
.end method

.method public final zza(Ljava/lang/Object;JD)V
    .registers 12

    .line 23
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zza(Ljava/lang/Object;JJ)V

    .line 24
    return-void
.end method

.method public final zza(Ljava/lang/Object;JF)V
    .registers 5

    .line 20
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzb(Ljava/lang/Object;JI)V

    .line 21
    return-void
.end method

.method public final zza(Ljava/lang/Object;JZ)V
    .registers 6

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzys;->zzvr()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 16
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzys;->zzd(Ljava/lang/Object;JZ)V

    return-void

    .line 17
    :cond_a
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzys;->zze(Ljava/lang/Object;JZ)V

    .line 18
    return-void
.end method

.method public final zza([BJJJ)V
    .registers 8

    .line 25
    long-to-int p2, p2

    long-to-int p3, p6

    invoke-static {p4, p5, p1, p2, p3}, Llibcore/io/Memory;->pokeByteArray(J[BII)V

    .line 26
    return-void
.end method

.method public final zze(Ljava/lang/Object;JB)V
    .registers 6

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzys;->zzvr()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 9
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzys;->zzc(Ljava/lang/Object;JB)V

    return-void

    .line 10
    :cond_a
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzys;->zzd(Ljava/lang/Object;JB)V

    .line 11
    return-void
.end method

.method public final zzm(Ljava/lang/Object;J)Z
    .registers 5

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzys;->zzvr()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 13
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys;->zzw(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 14
    :cond_b
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys;->zzx(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final zzn(Ljava/lang/Object;J)F
    .registers 4

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzk(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public final zzo(Ljava/lang/Object;J)D
    .registers 4

    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public final zzy(Ljava/lang/Object;J)B
    .registers 5

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzys;->zzvr()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys;->zzu(Ljava/lang/Object;J)B

    move-result p1

    return p1

    .line 7
    :cond_b
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys;->zzv(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.internal.measurement.zzys.zzc (com.google.android.gms.internal.measurement.zzys$zzc)
.class final Lcom/google/android/gms/internal/measurement/zzys$zzc;
.super Lcom/google/android/gms/internal/measurement/zzys$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzc"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzys$zzd;-><init>(Lsun/misc/Unsafe;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final zza(JB)V
    .registers 5

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzys$zzc;->zzcej:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 4
    return-void
.end method

.method public final zza(Ljava/lang/Object;JD)V
    .registers 12

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzys$zzc;->zzcej:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    .line 16
    return-void
.end method

.method public final zza(Ljava/lang/Object;JF)V
    .registers 6

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzys$zzc;->zzcej:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    .line 13
    return-void
.end method

.method public final zza(Ljava/lang/Object;JZ)V
    .registers 6

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzys$zzc;->zzcej:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    .line 10
    return-void
.end method

.method public final zza([BJJJ)V
    .registers 18

    .line 17
    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzys$zzc;->zzcej:Lsun/misc/Unsafe;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzys;->zzzb()J

    move-result-wide v2

    add-long v4, v2, p2

    const/4 v6, 0x0

    move-object v2, p1

    move-wide v3, v4

    move-object v5, v6

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 18
    return-void
.end method

.method public final zze(Ljava/lang/Object;JB)V
    .registers 6

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzys$zzc;->zzcej:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 7
    return-void
.end method

.method public final zzm(Ljava/lang/Object;J)Z
    .registers 5

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzys$zzc;->zzcej:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final zzn(Ljava/lang/Object;J)F
    .registers 5

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzys$zzc;->zzcej:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result p1

    return p1
.end method

.method public final zzo(Ljava/lang/Object;J)D
    .registers 5

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzys$zzc;->zzcej:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p1

    return-wide p1
.end method

.method public final zzy(Ljava/lang/Object;J)B
    .registers 5

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzys$zzc;->zzcej:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.internal.measurement.zzys.zzd (com.google.android.gms.internal.measurement.zzys$zzd)
.class abstract Lcom/google/android/gms/internal/measurement/zzys$zzd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzd"
.end annotation


# instance fields
.field zzcej:Lsun/misc/Unsafe;


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzcej:Lsun/misc/Unsafe;

    .line 3
    return-void
.end method


# virtual methods
.method public abstract zza(JB)V
.end method

.method public abstract zza(Ljava/lang/Object;JD)V
.end method

.method public abstract zza(Ljava/lang/Object;JF)V
.end method

.method public final zza(Ljava/lang/Object;JJ)V
    .registers 12

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzcej:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 9
    return-void
.end method

.method public abstract zza(Ljava/lang/Object;JZ)V
.end method

.method public abstract zza([BJJJ)V
.end method

.method public final zzb(Ljava/lang/Object;JI)V
    .registers 6

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzcej:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 6
    return-void
.end method

.method public abstract zze(Ljava/lang/Object;JB)V
.end method

.method public final zzk(Ljava/lang/Object;J)I
    .registers 5

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzcej:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    return p1
.end method

.method public final zzl(Ljava/lang/Object;J)J
    .registers 5

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzys$zzd;->zzcej:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public abstract zzm(Ljava/lang/Object;J)Z
.end method

.method public abstract zzn(Ljava/lang/Object;J)F
.end method

.method public abstract zzo(Ljava/lang/Object;J)D
.end method

.method public abstract zzy(Ljava/lang/Object;J)B
.end method
