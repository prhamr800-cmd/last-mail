###### Class com.google.android.gms.internal.measurement.zzgo (com.google.android.gms.internal.measurement.zzgo)
.class public final Lcom/google/android/gms/internal/measurement/zzgo;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzgo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzazf:[Lcom/google/android/gms/internal/measurement/zzgo;


# instance fields
.field public name:Ljava/lang/String;

.field public zzamw:Ljava/lang/String;

.field private zzauz:Ljava/lang/Float;

.field public zzava:Ljava/lang/Double;

.field public zzaxq:Ljava/lang/Long;

.field public zzazg:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    .line 8
    nop

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzazg:Ljava/lang/Long;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzamw:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzaxq:Ljava/lang/Long;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzauz:Ljava/lang/Float;

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzava:Ljava/lang/Double;

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzcgh:I

    .line 17
    return-void
.end method

.method public static zznd()[Lcom/google/android/gms/internal/measurement/zzgo;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgo;->zzazf:[Lcom/google/android/gms/internal/measurement/zzgo;

    if-nez v0, :cond_15

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzp;->zzcgg:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgo;->zzazf:[Lcom/google/android/gms/internal/measurement/zzgo;

    if-nez v1, :cond_10

    .line 4
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzgo;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzgo;->zzazf:[Lcom/google/android/gms/internal/measurement/zzgo;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgo;->zzazf:[Lcom/google/android/gms/internal/measurement/zzgo;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 18
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 19
    return v0

    .line 20
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzgo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 21
    return v2

    .line 22
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgo;

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzazg:Ljava/lang/Long;

    if-nez v1, :cond_15

    .line 24
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgo;->zzazg:Ljava/lang/Long;

    if-eqz v1, :cond_20

    .line 25
    return v2

    .line 26
    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzazg:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgo;->zzazg:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 27
    return v2

    .line 28
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    if-nez v1, :cond_29

    .line 29
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 30
    return v2

    .line 31
    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 32
    return v2

    .line 33
    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzamw:Ljava/lang/String;

    if-nez v1, :cond_3d

    .line 34
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgo;->zzamw:Ljava/lang/String;

    if-eqz v1, :cond_48

    .line 35
    return v2

    .line 36
    :cond_3d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzamw:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgo;->zzamw:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 37
    return v2

    .line 38
    :cond_48
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzaxq:Ljava/lang/Long;

    if-nez v1, :cond_51

    .line 39
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgo;->zzaxq:Ljava/lang/Long;

    if-eqz v1, :cond_5c

    .line 40
    return v2

    .line 41
    :cond_51
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzaxq:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgo;->zzaxq:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 42
    return v2

    .line 43
    :cond_5c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzauz:Ljava/lang/Float;

    if-nez v1, :cond_65

    .line 44
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgo;->zzauz:Ljava/lang/Float;

    if-eqz v1, :cond_70

    .line 45
    return v2

    .line 46
    :cond_65
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzauz:Ljava/lang/Float;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgo;->zzauz:Ljava/lang/Float;

    invoke-virtual {v1, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 47
    return v2

    .line 48
    :cond_70
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzava:Ljava/lang/Double;

    if-nez v1, :cond_79

    .line 49
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgo;->zzava:Ljava/lang/Double;

    if-eqz v1, :cond_84

    .line 50
    return v2

    .line 51
    :cond_79
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzava:Ljava/lang/Double;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgo;->zzava:Ljava/lang/Double;

    invoke-virtual {v1, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_84

    .line 52
    return v2

    .line 53
    :cond_84
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_9a

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_91

    goto :goto_9a

    .line 55
    :cond_91
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgo;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 54
    :cond_9a
    :goto_9a
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgo;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_a8

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgo;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a7

    goto :goto_a8

    :cond_a7
    return v2

    :cond_a8
    :goto_a8
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 57
    mul-int/lit8 v0, v0, 0x1f

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzazg:Ljava/lang/Long;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzazg:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_1d
    add-int/2addr v0, v1

    .line 59
    mul-int/lit8 v0, v0, 0x1f

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    if-nez v1, :cond_26

    const/4 v1, 0x0

    goto :goto_2c

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2c
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzamw:Ljava/lang/String;

    if-nez v1, :cond_35

    const/4 v1, 0x0

    goto :goto_3b

    :cond_35
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzamw:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3b
    add-int/2addr v0, v1

    .line 63
    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzaxq:Ljava/lang/Long;

    if-nez v1, :cond_44

    const/4 v1, 0x0

    goto :goto_4a

    :cond_44
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzaxq:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_4a
    add-int/2addr v0, v1

    .line 65
    mul-int/lit8 v0, v0, 0x1f

    .line 66
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzauz:Ljava/lang/Float;

    if-nez v1, :cond_53

    const/4 v1, 0x0

    goto :goto_59

    :cond_53
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzauz:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    :goto_59
    add-int/2addr v0, v1

    .line 67
    mul-int/lit8 v0, v0, 0x1f

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzava:Ljava/lang/Double;

    if-nez v1, :cond_62

    const/4 v1, 0x0

    goto :goto_68

    :cond_62
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzava:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    :goto_68
    add-int/2addr v0, v1

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_78

    goto :goto_7f

    .line 71
    :cond_78
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->hashCode()I

    move-result v2

    goto :goto_80

    .line 70
    :cond_7f
    :goto_7f
    nop

    .line 71
    :goto_80
    add-int/2addr v0, v2

    .line 72
    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    nop

    .line 112
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v0

    .line 113
    if-eqz v0, :cond_6c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_60

    const/16 v1, 0x12

    if-eq v0, v1, :cond_59

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_52

    const/16 v1, 0x20

    if-eq v0, v1, :cond_46

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_36

    const/16 v1, 0x31

    if-eq v0, v1, :cond_26

    .line 115
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 116
    return-object p0

    .line 133
    :cond_26
    nop

    .line 134
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvl()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 135
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzava:Ljava/lang/Double;

    .line 136
    :cond_35
    goto :goto_1

    .line 129
    :cond_36
    nop

    .line 130
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 131
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzauz:Ljava/lang/Float;

    .line 132
    goto :goto_1

    .line 125
    :cond_46
    nop

    .line 126
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v0

    .line 127
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzaxq:Ljava/lang/Long;

    .line 128
    goto :goto_1

    .line 123
    :cond_52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzamw:Ljava/lang/String;

    .line 124
    goto :goto_1

    .line 121
    :cond_59
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    .line 122
    goto :goto_1

    .line 117
    :cond_60
    nop

    .line 118
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v0

    .line 119
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzazg:Ljava/lang/Long;

    .line 120
    goto :goto_1

    .line 114
    :cond_6c
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzazg:Ljava/lang/Long;

    if-eqz v0, :cond_e

    .line 74
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzazg:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzi(IJ)V

    .line 75
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 76
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILjava/lang/String;)V

    .line 77
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzamw:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 78
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzamw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILjava/lang/String;)V

    .line 79
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzaxq:Ljava/lang/Long;

    if-eqz v0, :cond_30

    .line 80
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzaxq:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzi(IJ)V

    .line 81
    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzauz:Ljava/lang/Float;

    if-eqz v0, :cond_3e

    .line 82
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzauz:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(IF)V

    .line 83
    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzava:Ljava/lang/Double;

    if-eqz v0, :cond_4c

    .line 84
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzava:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ID)V

    .line 85
    :cond_4c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 86
    return-void
.end method

.method protected final zzf()I
    .registers 6

    .line 87
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 88
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzazg:Ljava/lang/Long;

    if-eqz v1, :cond_14

    .line 89
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzazg:Ljava/lang/Long;

    .line 90
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 92
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgo;->name:Ljava/lang/String;

    .line 93
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzamw:Ljava/lang/String;

    if-eqz v1, :cond_2c

    .line 95
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzamw:Ljava/lang/String;

    .line 96
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzaxq:Ljava/lang/Long;

    const/4 v2, 0x4

    if-eqz v1, :cond_3c

    .line 98
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzaxq:Ljava/lang/Long;

    .line 99
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzauz:Ljava/lang/Float;

    if-eqz v1, :cond_4c

    .line 101
    const/4 v1, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzauz:Ljava/lang/Float;

    .line 102
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 103
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 104
    add-int/2addr v0, v1

    .line 105
    :cond_4c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzava:Ljava/lang/Double;

    if-eqz v1, :cond_5d

    .line 106
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgo;->zzava:Ljava/lang/Double;

    .line 107
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 108
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 109
    add-int/2addr v0, v1

    .line 110
    :cond_5d
    return v0
.end method
