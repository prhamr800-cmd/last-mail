###### Class com.google.android.gms.internal.measurement.zzgk (com.google.android.gms.internal.measurement.zzgk)
.class public final Lcom/google/android/gms/internal/measurement/zzgk;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzgk;",
        ">;"
    }
.end annotation


# instance fields
.field public zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    .line 2
    nop

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgl;->zznb()[Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    .line 5
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzcgh:I

    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 7
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 8
    return v0

    .line 9
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzgk;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgk;

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 13
    return v2

    .line 14
    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_2d

    .line 16
    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgk;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 15
    :cond_2d
    :goto_2d
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgk;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_3b

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgk;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_3b

    :cond_3a
    return v2

    :cond_3b
    :goto_3b
    return v0
.end method

.method public final hashCode()I
    .registers 3

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 18
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    mul-int/lit8 v0, v0, 0x1f

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_2d

    .line 22
    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->hashCode()I

    move-result v1

    goto :goto_2e

    .line 21
    :cond_2d
    :goto_2d
    const/4 v1, 0x0

    .line 22
    :goto_2e
    add-int/2addr v0, v1

    .line 23
    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    nop

    .line 42
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v0

    .line 43
    if-eqz v0, :cond_51

    const/16 v1, 0xa

    if-eq v0, v1, :cond_12

    .line 45
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_50

    .line 46
    return-object p0

    .line 47
    :cond_12
    nop

    .line 48
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    .line 50
    const/4 v1, 0x0

    goto :goto_21

    .line 49
    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    array-length v1, v1

    .line 50
    :goto_21
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzgl;

    .line 51
    if-eqz v1, :cond_2b

    .line 52
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    :cond_2b
    :goto_2b
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_42

    .line 54
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgl;-><init>()V

    aput-object v2, v0, v1

    .line 55
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 58
    :cond_42
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgl;-><init>()V

    aput-object v2, v0, v1

    .line 59
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 60
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    .line 61
    :cond_50
    goto :goto_1

    .line 44
    :cond_51
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    array-length v0, v0

    if-lez v0, :cond_1c

    .line 25
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    aget-object v1, v1, v0

    .line 27
    if-eqz v1, :cond_19

    .line 28
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    .line 29
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 30
    :cond_1c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 31
    return-void
.end method

.method protected final zzf()I
    .registers 5

    .line 32
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    array-length v1, v1

    if-lez v1, :cond_23

    .line 34
    const/4 v1, 0x0

    :goto_e
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    array-length v2, v2

    if-ge v1, v2, :cond_23

    .line 35
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgk;->zzaxr:[Lcom/google/android/gms/internal/measurement/zzgl;

    aget-object v2, v2, v1

    .line 36
    if-eqz v2, :cond_20

    .line 37
    nop

    .line 38
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v2

    add-int/2addr v0, v2

    .line 39
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 40
    :cond_23
    return v0
.end method
