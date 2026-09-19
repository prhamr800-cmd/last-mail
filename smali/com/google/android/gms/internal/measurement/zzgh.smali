###### Class com.google.android.gms.internal.measurement.zzgh (com.google.android.gms.internal.measurement.zzgh)
.class public final Lcom/google/android/gms/internal/measurement/zzgh;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzgh;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzaxi:[Lcom/google/android/gms/internal/measurement/zzgh;


# instance fields
.field public zzaxj:Ljava/lang/Integer;

.field public zzaxk:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    .line 8
    nop

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxj:Ljava/lang/Integer;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxk:Ljava/lang/Long;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzcgh:I

    .line 13
    return-void
.end method

.method public static zzmy()[Lcom/google/android/gms/internal/measurement/zzgh;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxi:[Lcom/google/android/gms/internal/measurement/zzgh;

    if-nez v0, :cond_15

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzp;->zzcgg:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxi:[Lcom/google/android/gms/internal/measurement/zzgh;

    if-nez v1, :cond_10

    .line 4
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzgh;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxi:[Lcom/google/android/gms/internal/measurement/zzgh;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxi:[Lcom/google/android/gms/internal/measurement/zzgh;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzgh;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 17
    return v2

    .line 18
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgh;

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxj:Ljava/lang/Integer;

    if-nez v1, :cond_15

    .line 20
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxj:Ljava/lang/Integer;

    if-eqz v1, :cond_20

    .line 21
    return v2

    .line 22
    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxj:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxj:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 23
    return v2

    .line 24
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxk:Ljava/lang/Long;

    if-nez v1, :cond_29

    .line 25
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxk:Ljava/lang/Long;

    if-eqz v1, :cond_34

    .line 26
    return v2

    .line 27
    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxk:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxk:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 28
    return v2

    .line 29
    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_4a

    .line 31
    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgh;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 30
    :cond_4a
    :goto_4a
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgh;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_58

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgh;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_57

    goto :goto_58

    :cond_57
    return v2

    :cond_58
    :goto_58
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 33
    mul-int/lit8 v0, v0, 0x1f

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxj:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxj:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_1d
    add-int/2addr v0, v1

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxk:Ljava/lang/Long;

    if-nez v1, :cond_26

    const/4 v1, 0x0

    goto :goto_2c

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxk:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_2c
    add-int/2addr v0, v1

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    goto :goto_43

    .line 39
    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->hashCode()I

    move-result v2

    goto :goto_44

    .line 38
    :cond_43
    :goto_43
    nop

    .line 39
    :goto_44
    add-int/2addr v0, v2

    .line 40
    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    nop

    .line 56
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v0

    .line 57
    if-eqz v0, :cond_2e

    const/16 v1, 0x8

    if-eq v0, v1, :cond_22

    const/16 v1, 0x10

    if-eq v0, v1, :cond_16

    .line 59
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 60
    return-object p0

    .line 65
    :cond_16
    nop

    .line 66
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v0

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxk:Ljava/lang/Long;

    .line 68
    :cond_21
    goto :goto_1

    .line 61
    :cond_22
    nop

    .line 62
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v0

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxj:Ljava/lang/Integer;

    .line 64
    goto :goto_1

    .line 58
    :cond_2e
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxj:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 42
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxj:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(II)V

    .line 43
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxk:Ljava/lang/Long;

    if-eqz v0, :cond_1c

    .line 44
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxk:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzi(IJ)V

    .line 45
    :cond_1c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 46
    return-void
.end method

.method protected final zzf()I
    .registers 5

    .line 47
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxj:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 49
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxj:Ljava/lang/Integer;

    .line 50
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzh(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxk:Ljava/lang/Long;

    if-eqz v1, :cond_24

    .line 52
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgh;->zzaxk:Ljava/lang/Long;

    .line 53
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_24
    return v0
.end method
