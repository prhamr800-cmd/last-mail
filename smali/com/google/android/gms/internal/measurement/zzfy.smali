###### Class com.google.android.gms.internal.measurement.zzfy (com.google.android.gms.internal.measurement.zzfy)
.class public final Lcom/google/android/gms/internal/measurement/zzfy;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzfy;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzavw:[Lcom/google/android/gms/internal/measurement/zzfy;


# instance fields
.field public zzavu:Ljava/lang/Boolean;

.field public zzavv:Ljava/lang/Boolean;

.field public zzavx:Ljava/lang/Integer;

.field public zzavy:Ljava/lang/String;

.field public zzavz:[Lcom/google/android/gms/internal/measurement/zzfz;

.field private zzawa:Ljava/lang/Boolean;

.field public zzawb:Lcom/google/android/gms/internal/measurement/zzga;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    .line 8
    nop

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavy:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfz;->zzmt()[Lcom/google/android/gms/internal/measurement/zzfz;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavz:[Lcom/google/android/gms/internal/measurement/zzfz;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawa:Ljava/lang/Boolean;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawb:Lcom/google/android/gms/internal/measurement/zzga;

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavu:Ljava/lang/Boolean;

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavv:Ljava/lang/Boolean;

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzcgh:I

    .line 18
    return-void
.end method

.method public static zzms()[Lcom/google/android/gms/internal/measurement/zzfy;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavw:[Lcom/google/android/gms/internal/measurement/zzfy;

    if-nez v0, :cond_15

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzp;->zzcgg:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavw:[Lcom/google/android/gms/internal/measurement/zzfy;

    if-nez v1, :cond_10

    .line 4
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzfy;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavw:[Lcom/google/android/gms/internal/measurement/zzfy;

    .line 5
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 6
    :cond_15
    :goto_15
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavw:[Lcom/google/android/gms/internal/measurement/zzfy;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 19
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 20
    return v0

    .line 21
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzfy;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 22
    return v2

    .line 23
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfy;

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    if-nez v1, :cond_15

    .line 25
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    if-eqz v1, :cond_20

    .line 26
    return v2

    .line 27
    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 28
    return v2

    .line 29
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavy:Ljava/lang/String;

    if-nez v1, :cond_29

    .line 30
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavy:Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 31
    return v2

    .line 32
    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavy:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavy:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 33
    return v2

    .line 34
    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavz:[Lcom/google/android/gms/internal/measurement/zzfz;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavz:[Lcom/google/android/gms/internal/measurement/zzfz;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 35
    return v2

    .line 36
    :cond_3f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawa:Ljava/lang/Boolean;

    if-nez v1, :cond_48

    .line 37
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzawa:Ljava/lang/Boolean;

    if-eqz v1, :cond_53

    .line 38
    return v2

    .line 39
    :cond_48
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawa:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzawa:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 40
    return v2

    .line 41
    :cond_53
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawb:Lcom/google/android/gms/internal/measurement/zzga;

    if-nez v1, :cond_5c

    .line 42
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzawb:Lcom/google/android/gms/internal/measurement/zzga;

    if-eqz v1, :cond_67

    .line 43
    return v2

    .line 44
    :cond_5c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawb:Lcom/google/android/gms/internal/measurement/zzga;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzawb:Lcom/google/android/gms/internal/measurement/zzga;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzga;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 45
    return v2

    .line 46
    :cond_67
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavu:Ljava/lang/Boolean;

    if-nez v1, :cond_70

    .line 47
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavu:Ljava/lang/Boolean;

    if-eqz v1, :cond_7b

    .line 48
    return v2

    .line 49
    :cond_70
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavu:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavu:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 50
    return v2

    .line 51
    :cond_7b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavv:Ljava/lang/Boolean;

    if-nez v1, :cond_84

    .line 52
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavv:Ljava/lang/Boolean;

    if-eqz v1, :cond_8f

    .line 53
    return v2

    .line 54
    :cond_84
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavv:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzavv:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8f

    .line 55
    return v2

    .line 56
    :cond_8f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_a5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9c

    goto :goto_a5

    .line 58
    :cond_9c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 57
    :cond_a5
    :goto_a5
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_b3

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfy;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b2

    goto :goto_b3

    :cond_b2
    return v2

    :cond_b3
    :goto_b3
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 60
    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_1d
    add-int/2addr v0, v1

    .line 62
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavy:Ljava/lang/String;

    if-nez v1, :cond_26

    const/4 v1, 0x0

    goto :goto_2c

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavy:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2c
    add-int/2addr v0, v1

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavz:[Lcom/google/android/gms/internal/measurement/zzfz;

    .line 65
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawa:Ljava/lang/Boolean;

    if-nez v1, :cond_3e

    const/4 v1, 0x0

    goto :goto_44

    :cond_3e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawa:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_44
    add-int/2addr v0, v1

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawb:Lcom/google/android/gms/internal/measurement/zzga;

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    if-nez v1, :cond_4d

    const/4 v1, 0x0

    goto :goto_51

    :cond_4d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzga;->hashCode()I

    move-result v1

    :goto_51
    add-int/2addr v0, v1

    .line 71
    mul-int/lit8 v0, v0, 0x1f

    .line 72
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavu:Ljava/lang/Boolean;

    if-nez v1, :cond_5a

    const/4 v1, 0x0

    goto :goto_60

    :cond_5a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavu:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_60
    add-int/2addr v0, v1

    .line 73
    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavv:Ljava/lang/Boolean;

    if-nez v1, :cond_69

    const/4 v1, 0x0

    goto :goto_6f

    :cond_69
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavv:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_6f
    add-int/2addr v0, v1

    .line 75
    mul-int/lit8 v0, v0, 0x1f

    .line 76
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7f

    goto :goto_86

    .line 77
    :cond_7f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->hashCode()I

    move-result v2

    goto :goto_87

    .line 76
    :cond_86
    :goto_86
    nop

    .line 77
    :goto_87
    add-int/2addr v0, v2

    .line 78
    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    nop

    .line 133
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v0

    .line 134
    if-eqz v0, :cond_b1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a4

    const/16 v1, 0x12

    if-eq v0, v1, :cond_9c

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5c

    const/16 v1, 0x20

    if-eq v0, v1, :cond_51

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_40

    const/16 v1, 0x30

    if-eq v0, v1, :cond_35

    const/16 v1, 0x38

    if-eq v0, v1, :cond_2a

    .line 136
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 137
    return-object p0

    .line 167
    :cond_2a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavv:Ljava/lang/Boolean;

    .line 168
    :cond_34
    goto :goto_1

    .line 165
    :cond_35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavu:Ljava/lang/Boolean;

    .line 166
    goto :goto_1

    .line 161
    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawb:Lcom/google/android/gms/internal/measurement/zzga;

    if-nez v0, :cond_4b

    .line 162
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzga;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzga;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawb:Lcom/google/android/gms/internal/measurement/zzga;

    .line 163
    :cond_4b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawb:Lcom/google/android/gms/internal/measurement/zzga;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 164
    goto :goto_1

    .line 159
    :cond_51
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawa:Ljava/lang/Boolean;

    .line 160
    goto :goto_1

    .line 144
    :cond_5c
    nop

    .line 145
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavz:[Lcom/google/android/gms/internal/measurement/zzfz;

    const/4 v2, 0x0

    if-nez v1, :cond_68

    .line 147
    const/4 v1, 0x0

    goto :goto_6b

    .line 146
    :cond_68
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavz:[Lcom/google/android/gms/internal/measurement/zzfz;

    array-length v1, v1

    .line 147
    :goto_6b
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzfz;

    .line 148
    if-eqz v1, :cond_75

    .line 149
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavz:[Lcom/google/android/gms/internal/measurement/zzfz;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    :cond_75
    :goto_75
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8c

    .line 151
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfz;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzfz;-><init>()V

    aput-object v2, v0, v1

    .line 152
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 153
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 155
    :cond_8c
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfz;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzfz;-><init>()V

    aput-object v2, v0, v1

    .line 156
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 157
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavz:[Lcom/google/android/gms/internal/measurement/zzfz;

    .line 158
    goto/16 :goto_1

    .line 142
    :cond_9c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavy:Ljava/lang/String;

    .line 143
    goto/16 :goto_1

    .line 138
    :cond_a4
    nop

    .line 139
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v0

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    .line 141
    goto/16 :goto_1

    .line 135
    :cond_b1
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(II)V

    .line 81
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavy:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 82
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavy:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILjava/lang/String;)V

    .line 83
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavz:[Lcom/google/android/gms/internal/measurement/zzfz;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavz:[Lcom/google/android/gms/internal/measurement/zzfz;

    array-length v0, v0

    if-lez v0, :cond_34

    .line 84
    const/4 v0, 0x0

    :goto_22
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavz:[Lcom/google/android/gms/internal/measurement/zzfz;

    array-length v1, v1

    if-ge v0, v1, :cond_34

    .line 85
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavz:[Lcom/google/android/gms/internal/measurement/zzfz;

    aget-object v1, v1, v0

    .line 86
    if-eqz v1, :cond_31

    .line 87
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    .line 88
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 89
    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawa:Ljava/lang/Boolean;

    if-eqz v0, :cond_42

    .line 90
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawa:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(IZ)V

    .line 91
    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawb:Lcom/google/android/gms/internal/measurement/zzga;

    if-eqz v0, :cond_4c

    .line 92
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawb:Lcom/google/android/gms/internal/measurement/zzga;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    .line 93
    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavu:Ljava/lang/Boolean;

    if-eqz v0, :cond_5a

    .line 94
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavu:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(IZ)V

    .line 95
    :cond_5a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavv:Ljava/lang/Boolean;

    if-eqz v0, :cond_68

    .line 96
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavv:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(IZ)V

    .line 97
    :cond_68
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 98
    return-void
.end method

.method protected final zzf()I
    .registers 6

    .line 99
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 101
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavx:Ljava/lang/Integer;

    .line 102
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzh(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavy:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 104
    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavy:Ljava/lang/String;

    .line 105
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavz:[Lcom/google/android/gms/internal/measurement/zzfz;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavz:[Lcom/google/android/gms/internal/measurement/zzfz;

    array-length v1, v1

    if-lez v1, :cond_3e

    .line 107
    const/4 v1, 0x0

    :goto_2a
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavz:[Lcom/google/android/gms/internal/measurement/zzfz;

    array-length v3, v3

    if-ge v1, v3, :cond_3e

    .line 108
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavz:[Lcom/google/android/gms/internal/measurement/zzfz;

    aget-object v3, v3, v1

    .line 109
    if-eqz v3, :cond_3b

    .line 110
    const/4 v4, 0x3

    .line 111
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v3

    add-int/2addr v0, v3

    .line 112
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 113
    :cond_3e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawa:Ljava/lang/Boolean;

    if-eqz v1, :cond_4e

    .line 114
    const/4 v1, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawa:Ljava/lang/Boolean;

    .line 115
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 116
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 117
    add-int/2addr v0, v1

    .line 118
    :cond_4e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawb:Lcom/google/android/gms/internal/measurement/zzga;

    if-eqz v1, :cond_5a

    .line 119
    const/4 v1, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzawb:Lcom/google/android/gms/internal/measurement/zzga;

    .line 120
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_5a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavu:Ljava/lang/Boolean;

    if-eqz v1, :cond_6a

    .line 122
    const/4 v1, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavu:Ljava/lang/Boolean;

    .line 123
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 124
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 125
    add-int/2addr v0, v1

    .line 126
    :cond_6a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavv:Ljava/lang/Boolean;

    if-eqz v1, :cond_7a

    .line 127
    const/4 v1, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfy;->zzavv:Ljava/lang/Boolean;

    .line 128
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 129
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 130
    add-int/2addr v0, v1

    .line 131
    :cond_7a
    return v0
.end method
