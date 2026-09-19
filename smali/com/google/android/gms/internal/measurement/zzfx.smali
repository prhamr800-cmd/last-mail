###### Class com.google.android.gms.internal.measurement.zzfx (com.google.android.gms.internal.measurement.zzfx)
.class public final Lcom/google/android/gms/internal/measurement/zzfx;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzfx;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzavq:[Lcom/google/android/gms/internal/measurement/zzfx;


# instance fields
.field public zzavr:Ljava/lang/Integer;

.field public zzavs:[Lcom/google/android/gms/internal/measurement/zzgb;

.field public zzavt:[Lcom/google/android/gms/internal/measurement/zzfy;

.field private zzavu:Ljava/lang/Boolean;

.field private zzavv:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    .line 8
    nop

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavr:Ljava/lang/Integer;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgb;->zzmu()[Lcom/google/android/gms/internal/measurement/zzgb;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavs:[Lcom/google/android/gms/internal/measurement/zzgb;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy;->zzms()[Lcom/google/android/gms/internal/measurement/zzfy;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavt:[Lcom/google/android/gms/internal/measurement/zzfy;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavu:Ljava/lang/Boolean;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavv:Ljava/lang/Boolean;

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzcgh:I

    .line 16
    return-void
.end method

.method public static zzmr()[Lcom/google/android/gms/internal/measurement/zzfx;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavq:[Lcom/google/android/gms/internal/measurement/zzfx;

    if-nez v0, :cond_15

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzp;->zzcgg:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfx;->zzavq:[Lcom/google/android/gms/internal/measurement/zzfx;

    if-nez v1, :cond_10

    .line 4
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzfx;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzfx;->zzavq:[Lcom/google/android/gms/internal/measurement/zzfx;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavq:[Lcom/google/android/gms/internal/measurement/zzfx;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 17
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 18
    return v0

    .line 19
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzfx;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 20
    return v2

    .line 21
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfx;

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavr:Ljava/lang/Integer;

    if-nez v1, :cond_15

    .line 23
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfx;->zzavr:Ljava/lang/Integer;

    if-eqz v1, :cond_20

    .line 24
    return v2

    .line 25
    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavr:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfx;->zzavr:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 26
    return v2

    .line 27
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavs:[Lcom/google/android/gms/internal/measurement/zzgb;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfx;->zzavs:[Lcom/google/android/gms/internal/measurement/zzgb;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 28
    return v2

    .line 29
    :cond_2b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavt:[Lcom/google/android/gms/internal/measurement/zzfy;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfx;->zzavt:[Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 30
    return v2

    .line 31
    :cond_36
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavu:Ljava/lang/Boolean;

    if-nez v1, :cond_3f

    .line 32
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfx;->zzavu:Ljava/lang/Boolean;

    if-eqz v1, :cond_4a

    .line 33
    return v2

    .line 34
    :cond_3f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavu:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfx;->zzavu:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 35
    return v2

    .line 36
    :cond_4a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavv:Ljava/lang/Boolean;

    if-nez v1, :cond_53

    .line 37
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfx;->zzavv:Ljava/lang/Boolean;

    if-eqz v1, :cond_5e

    .line 38
    return v2

    .line 39
    :cond_53
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavv:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfx;->zzavv:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 40
    return v2

    .line 41
    :cond_5e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6b

    goto :goto_74

    .line 43
    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfx;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 42
    :cond_74
    :goto_74
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfx;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_82

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfx;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_81

    goto :goto_82

    :cond_81
    return v2

    :cond_82
    :goto_82
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavr:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavr:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_1d
    add-int/2addr v0, v1

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavs:[Lcom/google/android/gms/internal/measurement/zzgb;

    .line 48
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavt:[Lcom/google/android/gms/internal/measurement/zzfy;

    .line 50
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavu:Ljava/lang/Boolean;

    if-nez v1, :cond_38

    const/4 v1, 0x0

    goto :goto_3e

    :cond_38
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavu:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_3e
    add-int/2addr v0, v1

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavv:Ljava/lang/Boolean;

    if-nez v1, :cond_47

    const/4 v1, 0x0

    goto :goto_4d

    :cond_47
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavv:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_4d
    add-int/2addr v0, v1

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5d

    goto :goto_64

    .line 57
    :cond_5d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->hashCode()I

    move-result v2

    goto :goto_65

    .line 56
    :cond_64
    :goto_64
    nop

    .line 57
    :goto_65
    add-int/2addr v0, v2

    .line 58
    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    nop

    .line 109
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v0

    .line 110
    if-eqz v0, :cond_c3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_b6

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-eq v0, v1, :cond_77

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_39

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x28

    if-eq v0, v1, :cond_23

    .line 112
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 113
    return-object p0

    .line 150
    :cond_23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavv:Ljava/lang/Boolean;

    .line 151
    :cond_2d
    goto :goto_1

    .line 148
    :cond_2e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavu:Ljava/lang/Boolean;

    .line 149
    goto :goto_1

    .line 133
    :cond_39
    nop

    .line 134
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavt:[Lcom/google/android/gms/internal/measurement/zzfy;

    if-nez v1, :cond_44

    .line 136
    const/4 v1, 0x0

    goto :goto_47

    .line 135
    :cond_44
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavt:[Lcom/google/android/gms/internal/measurement/zzfy;

    array-length v1, v1

    .line 136
    :goto_47
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzfy;

    .line 137
    if-eqz v1, :cond_51

    .line 138
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavt:[Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    :cond_51
    :goto_51
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_68

    .line 140
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzfy;-><init>()V

    aput-object v2, v0, v1

    .line 141
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 142
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 144
    :cond_68
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzfy;-><init>()V

    aput-object v2, v0, v1

    .line 145
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 146
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavt:[Lcom/google/android/gms/internal/measurement/zzfy;

    .line 147
    goto :goto_1

    .line 118
    :cond_77
    nop

    .line 119
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavs:[Lcom/google/android/gms/internal/measurement/zzgb;

    if-nez v1, :cond_82

    .line 121
    const/4 v1, 0x0

    goto :goto_85

    .line 120
    :cond_82
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavs:[Lcom/google/android/gms/internal/measurement/zzgb;

    array-length v1, v1

    .line 121
    :goto_85
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzgb;

    .line 122
    if-eqz v1, :cond_8f

    .line 123
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavs:[Lcom/google/android/gms/internal/measurement/zzgb;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    :cond_8f
    :goto_8f
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_a6

    .line 125
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgb;-><init>()V

    aput-object v2, v0, v1

    .line 126
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 127
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    .line 129
    :cond_a6
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgb;-><init>()V

    aput-object v2, v0, v1

    .line 130
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 131
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavs:[Lcom/google/android/gms/internal/measurement/zzgb;

    .line 132
    goto/16 :goto_1

    .line 114
    :cond_b6
    nop

    .line 115
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v0

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavr:Ljava/lang/Integer;

    .line 117
    goto/16 :goto_1

    .line 111
    :cond_c3
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavr:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavr:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(II)V

    .line 61
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavs:[Lcom/google/android/gms/internal/measurement/zzgb;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavs:[Lcom/google/android/gms/internal/measurement/zzgb;

    array-length v0, v0

    if-lez v0, :cond_2b

    .line 62
    const/4 v0, 0x0

    :goto_19
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavs:[Lcom/google/android/gms/internal/measurement/zzgb;

    array-length v2, v2

    if-ge v0, v2, :cond_2b

    .line 63
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavs:[Lcom/google/android/gms/internal/measurement/zzgb;

    aget-object v2, v2, v0

    .line 64
    if-eqz v2, :cond_28

    .line 65
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    .line 66
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 67
    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavt:[Lcom/google/android/gms/internal/measurement/zzfy;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavt:[Lcom/google/android/gms/internal/measurement/zzfy;

    array-length v0, v0

    if-lez v0, :cond_46

    .line 68
    :goto_34
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavt:[Lcom/google/android/gms/internal/measurement/zzfy;

    array-length v0, v0

    if-ge v1, v0, :cond_46

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavt:[Lcom/google/android/gms/internal/measurement/zzfy;

    aget-object v0, v0, v1

    .line 70
    if-eqz v0, :cond_43

    .line 71
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    .line 72
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 73
    :cond_46
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavu:Ljava/lang/Boolean;

    if-eqz v0, :cond_54

    .line 74
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavu:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(IZ)V

    .line 75
    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavv:Ljava/lang/Boolean;

    if-eqz v0, :cond_62

    .line 76
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavv:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(IZ)V

    .line 77
    :cond_62
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 78
    return-void
.end method

.method protected final zzf()I
    .registers 7

    .line 79
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavr:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 81
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavr:Ljava/lang/Integer;

    .line 82
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzh(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavs:[Lcom/google/android/gms/internal/measurement/zzgb;

    const/4 v3, 0x0

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavs:[Lcom/google/android/gms/internal/measurement/zzgb;

    array-length v1, v1

    if-lez v1, :cond_35

    .line 84
    move v1, v0

    const/4 v0, 0x0

    :goto_20
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavs:[Lcom/google/android/gms/internal/measurement/zzgb;

    array-length v4, v4

    if-ge v0, v4, :cond_34

    .line 85
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavs:[Lcom/google/android/gms/internal/measurement/zzgb;

    aget-object v4, v4, v0

    .line 86
    if-eqz v4, :cond_31

    .line 87
    const/4 v5, 0x2

    .line 88
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v4

    add-int/2addr v1, v4

    .line 89
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 90
    :cond_34
    move v0, v1

    :cond_35
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavt:[Lcom/google/android/gms/internal/measurement/zzfy;

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavt:[Lcom/google/android/gms/internal/measurement/zzfy;

    array-length v1, v1

    if-lez v1, :cond_52

    .line 91
    :goto_3e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavt:[Lcom/google/android/gms/internal/measurement/zzfy;

    array-length v1, v1

    if-ge v3, v1, :cond_52

    .line 92
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavt:[Lcom/google/android/gms/internal/measurement/zzfy;

    aget-object v1, v1, v3

    .line 93
    if-eqz v1, :cond_4f

    .line 94
    const/4 v4, 0x3

    .line 95
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 97
    :cond_52
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavu:Ljava/lang/Boolean;

    if-eqz v1, :cond_62

    .line 98
    const/4 v1, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavu:Ljava/lang/Boolean;

    .line 99
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 101
    add-int/2addr v0, v1

    .line 102
    :cond_62
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavv:Ljava/lang/Boolean;

    if-eqz v1, :cond_72

    .line 103
    const/4 v1, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfx;->zzavv:Ljava/lang/Boolean;

    .line 104
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 106
    add-int/2addr v0, v1

    .line 107
    :cond_72
    return v0
.end method
