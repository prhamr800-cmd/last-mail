###### Class com.google.android.gms.internal.measurement.zzgn (com.google.android.gms.internal.measurement.zzgn)
.class public final Lcom/google/android/gms/internal/measurement/zzgn;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzgn;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzazd:[Lcom/google/android/gms/internal/measurement/zzgn;


# instance fields
.field public zzaxj:Ljava/lang/Integer;

.field public zzaze:[J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    .line 8
    nop

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaxj:Ljava/lang/Integer;

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgm:[J

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzcgh:I

    .line 13
    return-void
.end method

.method public static zznc()[Lcom/google/android/gms/internal/measurement/zzgn;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgn;->zzazd:[Lcom/google/android/gms/internal/measurement/zzgn;

    if-nez v0, :cond_15

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzp;->zzcgg:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgn;->zzazd:[Lcom/google/android/gms/internal/measurement/zzgn;

    if-nez v1, :cond_10

    .line 4
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzgn;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzgn;->zzazd:[Lcom/google/android/gms/internal/measurement/zzgn;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgn;->zzazd:[Lcom/google/android/gms/internal/measurement/zzgn;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 14
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 15
    return v0

    .line 16
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzgn;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 17
    return v2

    .line 18
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgn;

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaxj:Ljava/lang/Integer;

    if-nez v1, :cond_15

    .line 20
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgn;->zzaxj:Ljava/lang/Integer;

    if-eqz v1, :cond_20

    .line 21
    return v2

    .line 22
    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaxj:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgn;->zzaxj:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 23
    return v2

    .line 24
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 25
    return v2

    .line 26
    :cond_2b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_41

    .line 28
    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgn;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 27
    :cond_41
    :goto_41
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgn;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_4f

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgn;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4e

    goto :goto_4f

    :cond_4e
    return v2

    :cond_4f
    :goto_4f
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaxj:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaxj:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_1d
    add-int/2addr v0, v1

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    .line 33
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_3d

    .line 36
    :cond_36
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->hashCode()I

    move-result v2

    goto :goto_3e

    .line 35
    :cond_3d
    :goto_3d
    nop

    .line 36
    :goto_3e
    add-int/2addr v0, v2

    .line 37
    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    nop

    .line 62
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v0

    .line 63
    if-eqz v0, :cond_a1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_94

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5f

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1b

    .line 65
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 66
    return-object p0

    .line 88
    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v0

    .line 89
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzar(I)I

    move-result v0

    .line 90
    nop

    .line 91
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->getPosition()I

    move-result v1

    .line 92
    const/4 v3, 0x0

    :goto_29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzzf()I

    move-result v4

    if-lez v4, :cond_36

    .line 93
    nop

    .line 94
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 96
    :cond_36
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzca(I)V

    .line 97
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    if-nez v1, :cond_3f

    .line 98
    const/4 v1, 0x0

    goto :goto_42

    .line 97
    :cond_3f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    array-length v1, v1

    .line 98
    :goto_42
    add-int/2addr v3, v1

    new-array v3, v3, [J

    .line 99
    if-eqz v1, :cond_4c

    .line 100
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    :cond_4c
    :goto_4c
    array-length v2, v3

    if-ge v1, v2, :cond_59

    .line 102
    nop

    .line 103
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v4

    .line 104
    aput-wide v4, v3, v1

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 106
    :cond_59
    iput-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    .line 107
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzas(I)V

    .line 108
    :cond_5e
    goto :goto_1

    .line 71
    :cond_5f
    nop

    .line 72
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    if-nez v1, :cond_6a

    .line 74
    const/4 v1, 0x0

    goto :goto_6d

    .line 73
    :cond_6a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    array-length v1, v1

    .line 74
    :goto_6d
    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 75
    if-eqz v1, :cond_77

    .line 76
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    :cond_77
    :goto_77
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_89

    .line 78
    nop

    .line 79
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v2

    .line 80
    aput-wide v2, v0, v1

    .line 81
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    .line 83
    :cond_89
    nop

    .line 84
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v2

    .line 85
    aput-wide v2, v0, v1

    .line 86
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    .line 87
    goto/16 :goto_1

    .line 67
    :cond_94
    nop

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v0

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaxj:Ljava/lang/Integer;

    .line 70
    goto/16 :goto_1

    .line 64
    :cond_a1
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaxj:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaxj:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(II)V

    .line 40
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    array-length v0, v0

    if-lez v0, :cond_28

    .line 41
    const/4 v0, 0x0

    :goto_18
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 42
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    aget-wide v3, v2, v0

    invoke-virtual {p1, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzzj;->zzi(IJ)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 44
    :cond_28
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 45
    return-void
.end method

.method protected final zzf()I
    .registers 8

    .line 46
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaxj:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaxj:Ljava/lang/Integer;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzh(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    array-length v1, v1

    if-lez v1, :cond_39

    .line 51
    nop

    .line 52
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_20
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    array-length v4, v4

    if-ge v1, v4, :cond_32

    .line 53
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    aget-wide v5, v4, v1

    .line 54
    nop

    .line 55
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbl(J)I

    move-result v4

    .line 56
    add-int/2addr v3, v4

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 58
    :cond_32
    add-int/2addr v0, v3

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzaze:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 60
    :cond_39
    return v0
.end method
