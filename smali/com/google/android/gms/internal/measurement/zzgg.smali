###### Class com.google.android.gms.internal.measurement.zzgg (com.google.android.gms.internal.measurement.zzgg)
.class public final Lcom/google/android/gms/internal/measurement/zzgg;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzgg;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzaxe:[Lcom/google/android/gms/internal/measurement/zzgg;


# instance fields
.field public zzavr:Ljava/lang/Integer;

.field public zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

.field public zzaxg:Lcom/google/android/gms/internal/measurement/zzgm;

.field public zzaxh:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    .line 8
    nop

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzavr:Ljava/lang/Integer;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxg:Lcom/google/android/gms/internal/measurement/zzgm;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxh:Ljava/lang/Boolean;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzcgh:I

    .line 15
    return-void
.end method

.method public static zzmx()[Lcom/google/android/gms/internal/measurement/zzgg;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxe:[Lcom/google/android/gms/internal/measurement/zzgg;

    if-nez v0, :cond_15

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzp;->zzcgg:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxe:[Lcom/google/android/gms/internal/measurement/zzgg;

    if-nez v1, :cond_10

    .line 4
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzgg;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxe:[Lcom/google/android/gms/internal/measurement/zzgg;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxe:[Lcom/google/android/gms/internal/measurement/zzgg;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 16
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 17
    return v0

    .line 18
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzgg;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 19
    return v2

    .line 20
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgg;

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzavr:Ljava/lang/Integer;

    if-nez v1, :cond_15

    .line 22
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgg;->zzavr:Ljava/lang/Integer;

    if-eqz v1, :cond_20

    .line 23
    return v2

    .line 24
    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzavr:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgg;->zzavr:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 25
    return v2

    .line 26
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    if-nez v1, :cond_29

    .line 27
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    if-eqz v1, :cond_34

    .line 28
    return v2

    .line 29
    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzgm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 30
    return v2

    .line 31
    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxg:Lcom/google/android/gms/internal/measurement/zzgm;

    if-nez v1, :cond_3d

    .line 32
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxg:Lcom/google/android/gms/internal/measurement/zzgm;

    if-eqz v1, :cond_48

    .line 33
    return v2

    .line 34
    :cond_3d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxg:Lcom/google/android/gms/internal/measurement/zzgm;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxg:Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzgm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 35
    return v2

    .line 36
    :cond_48
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxh:Ljava/lang/Boolean;

    if-nez v1, :cond_51

    .line 37
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxh:Ljava/lang/Boolean;

    if-eqz v1, :cond_5c

    .line 38
    return v2

    .line 39
    :cond_51
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxh:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxh:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 40
    return v2

    .line 41
    :cond_5c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_69

    goto :goto_72

    .line 43
    :cond_69
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgg;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 42
    :cond_72
    :goto_72
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgg;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_80

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgg;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7f

    goto :goto_80

    :cond_7f
    return v2

    :cond_80
    :goto_80
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
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzavr:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzavr:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_1d
    add-int/2addr v0, v1

    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    if-nez v1, :cond_26

    const/4 v1, 0x0

    goto :goto_2a

    :cond_26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgm;->hashCode()I

    move-result v1

    :goto_2a
    add-int/2addr v0, v1

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxg:Lcom/google/android/gms/internal/measurement/zzgm;

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    if-nez v1, :cond_33

    const/4 v1, 0x0

    goto :goto_37

    :cond_33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgm;->hashCode()I

    move-result v1

    :goto_37
    add-int/2addr v0, v1

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxh:Ljava/lang/Boolean;

    if-nez v1, :cond_40

    const/4 v1, 0x0

    goto :goto_46

    :cond_40
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxh:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_46
    add-int/2addr v0, v1

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_56

    goto :goto_5d

    .line 57
    :cond_56
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->hashCode()I

    move-result v2

    goto :goto_5e

    .line 56
    :cond_5d
    :goto_5d
    nop

    .line 57
    :goto_5e
    add-int/2addr v0, v2

    .line 58
    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    nop

    .line 86
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v0

    .line 87
    if-eqz v0, :cond_57

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4b

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_29

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1e

    .line 89
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 90
    return-object p0

    .line 103
    :cond_1e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxh:Ljava/lang/Boolean;

    .line 104
    :cond_28
    goto :goto_1

    .line 99
    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxg:Lcom/google/android/gms/internal/measurement/zzgm;

    if-nez v0, :cond_34

    .line 100
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxg:Lcom/google/android/gms/internal/measurement/zzgm;

    .line 101
    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxg:Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 102
    goto :goto_1

    .line 95
    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    if-nez v0, :cond_45

    .line 96
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    .line 97
    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 98
    goto :goto_1

    .line 91
    :cond_4b
    nop

    .line 92
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v0

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzavr:Ljava/lang/Integer;

    .line 94
    goto :goto_1

    .line 88
    :cond_57
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzavr:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 60
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzavr:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(II)V

    .line 61
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    if-eqz v0, :cond_18

    .line 62
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    .line 63
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxg:Lcom/google/android/gms/internal/measurement/zzgm;

    if-eqz v0, :cond_22

    .line 64
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxg:Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    .line 65
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxh:Ljava/lang/Boolean;

    if-eqz v0, :cond_30

    .line 66
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxh:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(IZ)V

    .line 67
    :cond_30
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 68
    return-void
.end method

.method protected final zzf()I
    .registers 5

    .line 69
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzavr:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 71
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzavr:Ljava/lang/Integer;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzh(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    if-eqz v1, :cond_20

    .line 74
    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxf:Lcom/google/android/gms/internal/measurement/zzgm;

    .line 75
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxg:Lcom/google/android/gms/internal/measurement/zzgm;

    if-eqz v1, :cond_2c

    .line 77
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxg:Lcom/google/android/gms/internal/measurement/zzgm;

    .line 78
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxh:Ljava/lang/Boolean;

    if-eqz v1, :cond_3c

    .line 80
    const/4 v1, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgg;->zzaxh:Ljava/lang/Boolean;

    .line 81
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 83
    add-int/2addr v0, v1

    .line 84
    :cond_3c
    return v0
.end method
