###### Class com.google.android.gms.internal.measurement.zzgb (com.google.android.gms.internal.measurement.zzgb)
.class public final Lcom/google/android/gms/internal/measurement/zzgb;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzgb;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzawm:[Lcom/google/android/gms/internal/measurement/zzgb;


# instance fields
.field public zzavu:Ljava/lang/Boolean;

.field public zzavv:Ljava/lang/Boolean;

.field public zzavx:Ljava/lang/Integer;

.field public zzawn:Ljava/lang/String;

.field public zzawo:Lcom/google/android/gms/internal/measurement/zzfz;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    .line 8
    nop

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawn:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawo:Lcom/google/android/gms/internal/measurement/zzfz;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavu:Ljava/lang/Boolean;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavv:Ljava/lang/Boolean;

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzcgh:I

    .line 16
    return-void
.end method

.method public static zzmu()[Lcom/google/android/gms/internal/measurement/zzgb;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawm:[Lcom/google/android/gms/internal/measurement/zzgb;

    if-nez v0, :cond_15

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzp;->zzcgg:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgb;->zzawm:[Lcom/google/android/gms/internal/measurement/zzgb;

    if-nez v1, :cond_10

    .line 4
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzgb;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzgb;->zzawm:[Lcom/google/android/gms/internal/measurement/zzgb;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawm:[Lcom/google/android/gms/internal/measurement/zzgb;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzgb;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 20
    return v2

    .line 21
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgb;

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    if-nez v1, :cond_15

    .line 23
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    if-eqz v1, :cond_20

    .line 24
    return v2

    .line 25
    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 26
    return v2

    .line 27
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawn:Ljava/lang/String;

    if-nez v1, :cond_29

    .line 28
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgb;->zzawn:Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 29
    return v2

    .line 30
    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawn:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgb;->zzawn:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 31
    return v2

    .line 32
    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawo:Lcom/google/android/gms/internal/measurement/zzfz;

    if-nez v1, :cond_3d

    .line 33
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgb;->zzawo:Lcom/google/android/gms/internal/measurement/zzfz;

    if-eqz v1, :cond_48

    .line 34
    return v2

    .line 35
    :cond_3d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawo:Lcom/google/android/gms/internal/measurement/zzfz;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgb;->zzawo:Lcom/google/android/gms/internal/measurement/zzfz;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzfz;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 36
    return v2

    .line 37
    :cond_48
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavu:Ljava/lang/Boolean;

    if-nez v1, :cond_51

    .line 38
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgb;->zzavu:Ljava/lang/Boolean;

    if-eqz v1, :cond_5c

    .line 39
    return v2

    .line 40
    :cond_51
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavu:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgb;->zzavu:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 41
    return v2

    .line 42
    :cond_5c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavv:Ljava/lang/Boolean;

    if-nez v1, :cond_65

    .line 43
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgb;->zzavv:Ljava/lang/Boolean;

    if-eqz v1, :cond_70

    .line 44
    return v2

    .line 45
    :cond_65
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavv:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgb;->zzavv:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 46
    return v2

    .line 47
    :cond_70
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7d

    goto :goto_86

    .line 49
    :cond_7d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgb;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 48
    :cond_86
    :goto_86
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgb;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_94

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgb;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_93

    goto :goto_94

    :cond_93
    return v2

    :cond_94
    :goto_94
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_1d
    add-int/2addr v0, v1

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawn:Ljava/lang/String;

    if-nez v1, :cond_26

    const/4 v1, 0x0

    goto :goto_2c

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2c
    add-int/2addr v0, v1

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawo:Lcom/google/android/gms/internal/measurement/zzfz;

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    if-nez v1, :cond_35

    const/4 v1, 0x0

    goto :goto_39

    :cond_35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfz;->hashCode()I

    move-result v1

    :goto_39
    add-int/2addr v0, v1

    .line 58
    mul-int/lit8 v0, v0, 0x1f

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavu:Ljava/lang/Boolean;

    if-nez v1, :cond_42

    const/4 v1, 0x0

    goto :goto_48

    :cond_42
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavu:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_48
    add-int/2addr v0, v1

    .line 60
    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavv:Ljava/lang/Boolean;

    if-nez v1, :cond_51

    const/4 v1, 0x0

    goto :goto_57

    :cond_51
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavv:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_57
    add-int/2addr v0, v1

    .line 62
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_67

    goto :goto_6e

    .line 64
    :cond_67
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->hashCode()I

    move-result v2

    goto :goto_6f

    .line 63
    :cond_6e
    :goto_6e
    nop

    .line 64
    :goto_6f
    add-int/2addr v0, v2

    .line 65
    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    nop

    .line 100
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v0

    .line 101
    if-eqz v0, :cond_5c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_50

    const/16 v1, 0x12

    if-eq v0, v1, :cond_49

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_38

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2d

    const/16 v1, 0x28

    if-eq v0, v1, :cond_22

    .line 103
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 104
    return-object p0

    .line 117
    :cond_22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavv:Ljava/lang/Boolean;

    .line 118
    :cond_2c
    goto :goto_1

    .line 115
    :cond_2d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavu:Ljava/lang/Boolean;

    .line 116
    goto :goto_1

    .line 111
    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawo:Lcom/google/android/gms/internal/measurement/zzfz;

    if-nez v0, :cond_43

    .line 112
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawo:Lcom/google/android/gms/internal/measurement/zzfz;

    .line 113
    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawo:Lcom/google/android/gms/internal/measurement/zzfz;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 114
    goto :goto_1

    .line 109
    :cond_49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawn:Ljava/lang/String;

    .line 110
    goto :goto_1

    .line 105
    :cond_50
    nop

    .line 106
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v0

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    .line 108
    goto :goto_1

    .line 102
    :cond_5c
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 67
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(II)V

    .line 68
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawn:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 69
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILjava/lang/String;)V

    .line 70
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawo:Lcom/google/android/gms/internal/measurement/zzfz;

    if-eqz v0, :cond_22

    .line 71
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawo:Lcom/google/android/gms/internal/measurement/zzfz;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    .line 72
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavu:Ljava/lang/Boolean;

    if-eqz v0, :cond_30

    .line 73
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavu:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(IZ)V

    .line 74
    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavv:Ljava/lang/Boolean;

    if-eqz v0, :cond_3e

    .line 75
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavv:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(IZ)V

    .line 76
    :cond_3e
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 77
    return-void
.end method

.method protected final zzf()I
    .registers 5

    .line 78
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 80
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavx:Ljava/lang/Integer;

    .line 81
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzh(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawn:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 83
    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawn:Ljava/lang/String;

    .line 84
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawo:Lcom/google/android/gms/internal/measurement/zzfz;

    if-eqz v1, :cond_2c

    .line 86
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzawo:Lcom/google/android/gms/internal/measurement/zzfz;

    .line 87
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavu:Ljava/lang/Boolean;

    if-eqz v1, :cond_3c

    .line 89
    const/4 v1, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavu:Ljava/lang/Boolean;

    .line 90
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 92
    add-int/2addr v0, v1

    .line 93
    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavv:Ljava/lang/Boolean;

    if-eqz v1, :cond_4c

    .line 94
    const/4 v1, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgb;->zzavv:Ljava/lang/Boolean;

    .line 95
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 97
    add-int/2addr v0, v1

    .line 98
    :cond_4c
    return v0
.end method
