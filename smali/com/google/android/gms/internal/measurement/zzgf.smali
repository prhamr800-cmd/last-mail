###### Class com.google.android.gms.internal.measurement.zzgf (com.google.android.gms.internal.measurement.zzgf)
.class public final Lcom/google/android/gms/internal/measurement/zzgf;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzgf;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzaxd:[Lcom/google/android/gms/internal/measurement/zzgf;


# instance fields
.field public value:Ljava/lang/String;

.field public zzoj:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    .line 8
    nop

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgf;->zzoj:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgf;->value:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgf;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgf;->zzcgh:I

    .line 13
    return-void
.end method

.method public static zzmw()[Lcom/google/android/gms/internal/measurement/zzgf;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgf;->zzaxd:[Lcom/google/android/gms/internal/measurement/zzgf;

    if-nez v0, :cond_15

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzp;->zzcgg:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgf;->zzaxd:[Lcom/google/android/gms/internal/measurement/zzgf;

    if-nez v1, :cond_10

    .line 4
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzgf;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzgf;->zzaxd:[Lcom/google/android/gms/internal/measurement/zzgf;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgf;->zzaxd:[Lcom/google/android/gms/internal/measurement/zzgf;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzgf;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 17
    return v2

    .line 18
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgf;

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgf;->zzoj:Ljava/lang/String;

    if-nez v1, :cond_15

    .line 20
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgf;->zzoj:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 21
    return v2

    .line 22
    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgf;->zzoj:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgf;->zzoj:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 23
    return v2

    .line 24
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgf;->value:Ljava/lang/String;

    if-nez v1, :cond_29

    .line 25
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgf;->value:Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 26
    return v2

    .line 27
    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgf;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgf;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 28
    return v2

    .line 29
    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgf;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgf;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_4a

    .line 31
    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgf;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgf;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 30
    :cond_4a
    :goto_4a
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgf;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_58

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgf;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgf;->zzoj:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgf;->zzoj:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1d
    add-int/2addr v0, v1

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgf;->value:Ljava/lang/String;

    if-nez v1, :cond_26

    const/4 v1, 0x0

    goto :goto_2c

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgf;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2c
    add-int/2addr v0, v1

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgf;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgf;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    goto :goto_43

    .line 39
    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgf;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

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
    if-eqz v0, :cond_24

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x12

    if-eq v0, v1, :cond_16

    .line 59
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 60
    return-object p0

    .line 63
    :cond_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgf;->value:Ljava/lang/String;

    .line 64
    :cond_1c
    goto :goto_1

    .line 61
    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgf;->zzoj:Ljava/lang/String;

    .line 62
    goto :goto_1

    .line 58
    :cond_24
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgf;->zzoj:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 42
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgf;->zzoj:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILjava/lang/String;)V

    .line 43
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgf;->value:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 44
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgf;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILjava/lang/String;)V

    .line 45
    :cond_14
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 46
    return-void
.end method

.method protected final zzf()I
    .registers 4

    .line 47
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgf;->zzoj:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 49
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgf;->zzoj:Ljava/lang/String;

    .line 50
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgf;->value:Ljava/lang/String;

    if-eqz v1, :cond_1c

    .line 52
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgf;->value:Ljava/lang/String;

    .line 53
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_1c
    return v0
.end method
