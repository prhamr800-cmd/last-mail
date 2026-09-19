###### Class com.google.android.gms.internal.measurement.zzgj (com.google.android.gms.internal.measurement.zzgj)
.class public final Lcom/google/android/gms/internal/measurement/zzgj;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzgj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzaxp:[Lcom/google/android/gms/internal/measurement/zzgj;


# instance fields
.field public name:Ljava/lang/String;

.field public zzamw:Ljava/lang/String;

.field private zzauz:Ljava/lang/Float;

.field public zzava:Ljava/lang/Double;

.field public zzaxq:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    .line 8
    nop

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzauz:Ljava/lang/Float;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzcgh:I

    .line 16
    return-void
.end method

.method public static zzna()[Lcom/google/android/gms/internal/measurement/zzgj;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxp:[Lcom/google/android/gms/internal/measurement/zzgj;

    if-nez v0, :cond_15

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzp;->zzcgg:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxp:[Lcom/google/android/gms/internal/measurement/zzgj;

    if-nez v1, :cond_10

    .line 4
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzgj;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxp:[Lcom/google/android/gms/internal/measurement/zzgj;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxp:[Lcom/google/android/gms/internal/measurement/zzgj;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzgj;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 20
    return v2

    .line 21
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgj;

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    if-nez v1, :cond_15

    .line 23
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 24
    return v2

    .line 25
    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 26
    return v2

    .line 27
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    if-nez v1, :cond_29

    .line 28
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 29
    return v2

    .line 30
    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 31
    return v2

    .line 32
    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    if-nez v1, :cond_3d

    .line 33
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    if-eqz v1, :cond_48

    .line 34
    return v2

    .line 35
    :cond_3d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 36
    return v2

    .line 37
    :cond_48
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzauz:Ljava/lang/Float;

    if-nez v1, :cond_51

    .line 38
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzauz:Ljava/lang/Float;

    if-eqz v1, :cond_5c

    .line 39
    return v2

    .line 40
    :cond_51
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzauz:Ljava/lang/Float;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzauz:Ljava/lang/Float;

    invoke-virtual {v1, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 41
    return v2

    .line 42
    :cond_5c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    if-nez v1, :cond_65

    .line 43
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    if-eqz v1, :cond_70

    .line 44
    return v2

    .line 45
    :cond_65
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    invoke-virtual {v1, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 46
    return v2

    .line 47
    :cond_70
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7d

    goto :goto_86

    .line 49
    :cond_7d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 48
    :cond_86
    :goto_86
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_94

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgj;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1d
    add-int/2addr v0, v1

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    if-nez v1, :cond_26

    const/4 v1, 0x0

    goto :goto_2c

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2c
    add-int/2addr v0, v1

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    if-nez v1, :cond_35

    const/4 v1, 0x0

    goto :goto_3b

    :cond_35
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_3b
    add-int/2addr v0, v1

    .line 57
    mul-int/lit8 v0, v0, 0x1f

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzauz:Ljava/lang/Float;

    if-nez v1, :cond_44

    const/4 v1, 0x0

    goto :goto_4a

    :cond_44
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzauz:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    :goto_4a
    add-int/2addr v0, v1

    .line 59
    mul-int/lit8 v0, v0, 0x1f

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    if-nez v1, :cond_53

    const/4 v1, 0x0

    goto :goto_59

    :cond_53
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    :goto_59
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_69

    goto :goto_70

    .line 63
    :cond_69
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->hashCode()I

    move-result v2

    goto :goto_71

    .line 62
    :cond_70
    :goto_70
    nop

    .line 63
    :goto_71
    add-int/2addr v0, v2

    .line 64
    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    nop

    .line 99
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v0

    .line 100
    if-eqz v0, :cond_5c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_55

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4e

    const/16 v1, 0x18

    if-eq v0, v1, :cond_42

    const/16 v1, 0x25

    if-eq v0, v1, :cond_32

    const/16 v1, 0x29

    if-eq v0, v1, :cond_22

    .line 102
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 103
    return-object p0

    .line 116
    :cond_22
    nop

    .line 117
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvl()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 118
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    .line 119
    :cond_31
    goto :goto_1

    .line 112
    :cond_32
    nop

    .line 113
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 114
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzauz:Ljava/lang/Float;

    .line 115
    goto :goto_1

    .line 108
    :cond_42
    nop

    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v0

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    .line 111
    goto :goto_1

    .line 106
    :cond_4e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    .line 107
    goto :goto_1

    .line 104
    :cond_55
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    .line 105
    goto :goto_1

    .line 101
    :cond_5c
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 66
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILjava/lang/String;)V

    .line 67
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 68
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILjava/lang/String;)V

    .line 69
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    if-eqz v0, :cond_22

    .line 70
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzi(IJ)V

    .line 71
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzauz:Ljava/lang/Float;

    if-eqz v0, :cond_30

    .line 72
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzauz:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(IF)V

    .line 73
    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    if-eqz v0, :cond_3e

    .line 74
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ID)V

    .line 75
    :cond_3e
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 76
    return-void
.end method

.method protected final zzf()I
    .registers 5

    .line 77
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 79
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgj;->name:Ljava/lang/String;

    .line 80
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    if-eqz v1, :cond_1c

    .line 82
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzamw:Ljava/lang/String;

    .line 83
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    if-eqz v1, :cond_2c

    .line 85
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzaxq:Ljava/lang/Long;

    .line 86
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzauz:Ljava/lang/Float;

    if-eqz v1, :cond_3c

    .line 88
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzauz:Ljava/lang/Float;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 90
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 91
    add-int/2addr v0, v2

    .line 92
    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    if-eqz v1, :cond_4d

    .line 93
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zzava:Ljava/lang/Double;

    .line 94
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 95
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 96
    add-int/2addr v0, v1

    .line 97
    :cond_4d
    return v0
.end method
