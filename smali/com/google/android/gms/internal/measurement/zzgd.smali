###### Class com.google.android.gms.internal.measurement.zzgd (com.google.android.gms.internal.measurement.zzgd)
.class public final Lcom/google/android/gms/internal/measurement/zzgd;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzgd;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzawt:[Lcom/google/android/gms/internal/measurement/zzgd;


# instance fields
.field public name:Ljava/lang/String;

.field public zzawu:Ljava/lang/Boolean;

.field public zzawv:Ljava/lang/Boolean;

.field public zzaww:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    .line 8
    nop

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->name:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawu:Ljava/lang/Boolean;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawv:Ljava/lang/Boolean;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzaww:Ljava/lang/Integer;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzcgh:I

    .line 15
    return-void
.end method

.method public static zzmv()[Lcom/google/android/gms/internal/measurement/zzgd;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgd;

    if-nez v0, :cond_15

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzp;->zzcgg:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgd;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgd;

    if-nez v1, :cond_10

    .line 4
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzgd;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzgd;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgd;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawt:[Lcom/google/android/gms/internal/measurement/zzgd;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzgd;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 19
    return v2

    .line 20
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgd;

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->name:Ljava/lang/String;

    if-nez v1, :cond_15

    .line 22
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgd;->name:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 23
    return v2

    .line 24
    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgd;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 25
    return v2

    .line 26
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawu:Ljava/lang/Boolean;

    if-nez v1, :cond_29

    .line 27
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgd;->zzawu:Ljava/lang/Boolean;

    if-eqz v1, :cond_34

    .line 28
    return v2

    .line 29
    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawu:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgd;->zzawu:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 30
    return v2

    .line 31
    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawv:Ljava/lang/Boolean;

    if-nez v1, :cond_3d

    .line 32
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgd;->zzawv:Ljava/lang/Boolean;

    if-eqz v1, :cond_48

    .line 33
    return v2

    .line 34
    :cond_3d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawv:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgd;->zzawv:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 35
    return v2

    .line 36
    :cond_48
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzaww:Ljava/lang/Integer;

    if-nez v1, :cond_51

    .line 37
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgd;->zzaww:Ljava/lang/Integer;

    if-eqz v1, :cond_5c

    .line 38
    return v2

    .line 39
    :cond_51
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzaww:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgd;->zzaww:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 40
    return v2

    .line 41
    :cond_5c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_69

    goto :goto_72

    .line 43
    :cond_69
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgd;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 42
    :cond_72
    :goto_72
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgd;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_80

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgd;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->name:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1d
    add-int/2addr v0, v1

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawu:Ljava/lang/Boolean;

    if-nez v1, :cond_26

    const/4 v1, 0x0

    goto :goto_2c

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawu:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_2c
    add-int/2addr v0, v1

    .line 49
    mul-int/lit8 v0, v0, 0x1f

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawv:Ljava/lang/Boolean;

    if-nez v1, :cond_35

    const/4 v1, 0x0

    goto :goto_3b

    :cond_35
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawv:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_3b
    add-int/2addr v0, v1

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzaww:Ljava/lang/Integer;

    if-nez v1, :cond_44

    const/4 v1, 0x0

    goto :goto_4a

    :cond_44
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzaww:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_4a
    add-int/2addr v0, v1

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5a

    goto :goto_61

    .line 55
    :cond_5a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->hashCode()I

    move-result v2

    goto :goto_62

    .line 54
    :cond_61
    :goto_61
    nop

    .line 55
    :goto_62
    add-int/2addr v0, v2

    .line 56
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
    if-eqz v0, :cond_47

    const/16 v1, 0xa

    if-eq v0, v1, :cond_40

    const/16 v1, 0x10

    if-eq v0, v1, :cond_35

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2a

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1e

    .line 89
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 90
    return-object p0

    .line 97
    :cond_1e
    nop

    .line 98
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v0

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzaww:Ljava/lang/Integer;

    .line 100
    :cond_29
    goto :goto_1

    .line 95
    :cond_2a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawv:Ljava/lang/Boolean;

    .line 96
    goto :goto_1

    .line 93
    :cond_35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawu:Ljava/lang/Boolean;

    .line 94
    goto :goto_1

    .line 91
    :cond_40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->name:Ljava/lang/String;

    .line 92
    goto :goto_1

    .line 88
    :cond_47
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->name:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 58
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILjava/lang/String;)V

    .line 59
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawu:Ljava/lang/Boolean;

    if-eqz v0, :cond_18

    .line 60
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawu:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(IZ)V

    .line 61
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawv:Ljava/lang/Boolean;

    if-eqz v0, :cond_26

    .line 62
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawv:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(IZ)V

    .line 63
    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzaww:Ljava/lang/Integer;

    if-eqz v0, :cond_34

    .line 64
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzaww:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(II)V

    .line 65
    :cond_34
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 66
    return-void
.end method

.method protected final zzf()I
    .registers 5

    .line 67
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->name:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    .line 69
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->name:Ljava/lang/String;

    .line 70
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawu:Ljava/lang/Boolean;

    if-eqz v1, :cond_20

    .line 72
    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawu:Ljava/lang/Boolean;

    .line 73
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 75
    add-int/2addr v0, v1

    .line 76
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawv:Ljava/lang/Boolean;

    if-eqz v1, :cond_30

    .line 77
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzawv:Ljava/lang/Boolean;

    .line 78
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 80
    add-int/2addr v0, v1

    .line 81
    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzaww:Ljava/lang/Integer;

    if-eqz v1, :cond_40

    .line 82
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgd;->zzaww:Ljava/lang/Integer;

    .line 83
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzh(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_40
    return v0
.end method
