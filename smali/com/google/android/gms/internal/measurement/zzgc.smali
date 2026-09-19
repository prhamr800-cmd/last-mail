###### Class com.google.android.gms.internal.measurement.zzgc (com.google.android.gms.internal.measurement.zzgc)
.class public final Lcom/google/android/gms/internal/measurement/zzgc;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzgc;",
        ">;"
    }
.end annotation


# instance fields
.field public zzawp:Ljava/lang/Integer;

.field public zzawq:Ljava/lang/String;

.field public zzawr:Ljava/lang/Boolean;

.field public zzaws:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    .line 2
    nop

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawp:Ljava/lang/Integer;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawq:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawr:Ljava/lang/Boolean;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgq:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzcgh:I

    .line 9
    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzgc;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v0

    .line 87
    if-eqz v0, :cond_9b

    const/16 v1, 0x8

    if-eq v0, v1, :cond_62

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5b

    const/16 v1, 0x18

    if-eq v0, v1, :cond_50

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1d

    .line 89
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 90
    return-object p0

    .line 108
    :cond_1d
    nop

    .line 109
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_29

    .line 111
    const/4 v1, 0x0

    goto :goto_2c

    .line 110
    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    array-length v1, v1

    .line 111
    :goto_2c
    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 112
    if-eqz v1, :cond_36

    .line 113
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    :cond_36
    :goto_36
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_47

    .line 115
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 116
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 118
    :cond_47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 119
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    .line 120
    :cond_4f
    goto :goto_0

    .line 106
    :cond_50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawr:Ljava/lang/Boolean;

    .line 107
    goto :goto_0

    .line 104
    :cond_5b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawq:Ljava/lang/String;

    .line 105
    goto :goto_0

    .line 91
    :cond_62
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->getPosition()I

    move-result v1

    .line 92
    nop

    .line 93
    :try_start_67
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v2

    .line 94
    nop

    .line 95
    if-ltz v2, :cond_79

    const/4 v3, 0x6

    if-gt v2, v3, :cond_79

    .line 96
    nop

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawp:Ljava/lang/Integer;

    .line 99
    goto :goto_0

    .line 97
    :cond_79
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x29

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum MatchType"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_92
    .catch Ljava/lang/IllegalArgumentException; {:try_start_67 .. :try_end_92} :catch_92

    .line 100
    :catch_92
    move-exception v2

    .line 101
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzca(I)V

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    .line 103
    goto/16 :goto_0

    .line 88
    :cond_9b
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 10
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 11
    return v0

    .line 12
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzgc;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 13
    return v2

    .line 14
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgc;

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawp:Ljava/lang/Integer;

    if-nez v1, :cond_15

    .line 16
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgc;->zzawp:Ljava/lang/Integer;

    if-eqz v1, :cond_20

    .line 17
    return v2

    .line 18
    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawp:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgc;->zzawp:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 19
    return v2

    .line 20
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawq:Ljava/lang/String;

    if-nez v1, :cond_29

    .line 21
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgc;->zzawq:Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 22
    return v2

    .line 23
    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawq:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgc;->zzawq:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 24
    return v2

    .line 25
    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawr:Ljava/lang/Boolean;

    if-nez v1, :cond_3d

    .line 26
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgc;->zzawr:Ljava/lang/Boolean;

    if-eqz v1, :cond_48

    .line 27
    return v2

    .line 28
    :cond_3d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawr:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgc;->zzawr:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 29
    return v2

    .line 30
    :cond_48
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 31
    return v2

    .line 32
    :cond_53
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_60

    goto :goto_69

    .line 34
    :cond_60
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 33
    :cond_69
    :goto_69
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_77

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_76

    goto :goto_77

    :cond_76
    return v2

    :cond_77
    :goto_77
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 36
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawp:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawp:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1d
    add-int/2addr v0, v1

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawq:Ljava/lang/String;

    if-nez v1, :cond_26

    const/4 v1, 0x0

    goto :goto_2c

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawq:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2c
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawr:Ljava/lang/Boolean;

    if-nez v1, :cond_35

    const/4 v1, 0x0

    goto :goto_3b

    :cond_35
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawr:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_3b
    add-int/2addr v0, v1

    .line 41
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    .line 42
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_54

    goto :goto_5b

    .line 45
    :cond_54
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->hashCode()I

    move-result v2

    goto :goto_5c

    .line 44
    :cond_5b
    :goto_5b
    nop

    .line 45
    :goto_5c
    add-int/2addr v0, v2

    .line 46
    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzgc;->zzd(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzgc;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawp:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawp:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(II)V

    .line 49
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawq:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 50
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILjava/lang/String;)V

    .line 51
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawr:Ljava/lang/Boolean;

    if-eqz v0, :cond_26

    .line 52
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawr:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(IZ)V

    .line 53
    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_42

    .line 54
    const/4 v0, 0x0

    :goto_30
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_42

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 56
    if-eqz v1, :cond_3f

    .line 57
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILjava/lang/String;)V

    .line 58
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 59
    :cond_42
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 60
    return-void
.end method

.method protected final zzf()I
    .registers 7

    .line 61
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawp:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawp:Ljava/lang/Integer;

    .line 64
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzh(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawq:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 66
    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawq:Ljava/lang/String;

    .line 67
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawr:Ljava/lang/Boolean;

    if-eqz v1, :cond_30

    .line 69
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzawr:Ljava/lang/Boolean;

    .line 70
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 72
    add-int/2addr v0, v1

    .line 73
    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_58

    .line 74
    nop

    .line 75
    nop

    .line 76
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3e
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_54

    .line 77
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzaws:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 78
    if-eqz v5, :cond_51

    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 80
    nop

    .line 81
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzzj;->zzge(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 82
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 83
    :cond_54
    add-int/2addr v0, v3

    .line 84
    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 85
    :cond_58
    return v0
.end method
