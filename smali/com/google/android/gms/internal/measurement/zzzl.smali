###### Class com.google.android.gms.internal.measurement.zzzl (com.google.android.gms.internal.measurement.zzzl)
.class public abstract Lcom/google/android/gms/internal/measurement/zzzl;
.super Lcom/google/android/gms/internal/measurement/zzzr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "TM;>;>",
        "Lcom/google/android/gms/internal/measurement/zzzr;"
    }
.end annotation


# instance fields
.field protected zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzr;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    nop

    .line 42
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzr;->zzzi()Lcom/google/android/gms/internal/measurement/zzzr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzzl;

    .line 43
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zzzp;->zza(Lcom/google/android/gms/internal/measurement/zzzl;Lcom/google/android/gms/internal/measurement/zzzl;)V

    .line 44
    nop

    .line 45
    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzm;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzzm<",
            "TM;TT;>;)TT;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 17
    return-object v1

    .line 18
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget v2, p1, Lcom/google/android/gms/internal/measurement/zzzm;->tag:I

    .line 19
    ushr-int/lit8 v2, v2, 0x3

    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzzn;->zzcd(I)Lcom/google/android/gms/internal/measurement/zzzo;

    move-result-object v0

    .line 21
    if-nez v0, :cond_13

    return-object v1

    :cond_13
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzo;->zzb(Lcom/google/android/gms/internal/measurement/zzzm;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-nez v0, :cond_5

    .line 10
    return-void

    .line 11
    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzzn;->zzce(I)Lcom/google/android/gms/internal/measurement/zzzo;

    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzzo;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 15
    :cond_1a
    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->getPosition()I

    move-result v0

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzzi;->zzap(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 24
    const/4 p1, 0x0

    return p1

    .line 25
    :cond_c
    nop

    .line 26
    ushr-int/lit8 v1, p2, 0x3

    .line 27
    nop

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->getPosition()I

    move-result v2

    .line 29
    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zzs(II)[B

    move-result-object p1

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzt;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzzt;-><init>(I[B)V

    .line 31
    const/4 p1, 0x0

    .line 32
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-nez p2, :cond_2b

    .line 33
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-direct {p2}, Lcom/google/android/gms/internal/measurement/zzzn;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    goto :goto_31

    .line 34
    :cond_2b
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzn;->zzcd(I)Lcom/google/android/gms/internal/measurement/zzzo;

    move-result-object p1

    .line 35
    :goto_31
    if-nez p1, :cond_3d

    .line 36
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzzo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzzo;-><init>()V

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->zza(ILcom/google/android/gms/internal/measurement/zzzo;)V

    .line 38
    :cond_3d
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzo;->zza(Lcom/google/android/gms/internal/measurement/zzzt;)V

    .line 39
    const/4 p1, 0x1

    return p1
.end method

.method protected zzf()I
    .registers 4

    .line 2
    nop

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 4
    const/4 v0, 0x0

    :goto_7
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzzn;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzzn;->zzce(I)Lcom/google/android/gms/internal/measurement/zzzo;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzzo;->zzf()I

    move-result v2

    add-int/2addr v0, v2

    .line 7
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 8
    :cond_1d
    const/4 v0, 0x0

    :cond_1e
    return v0
.end method

.method public final synthetic zzzi()Lcom/google/android/gms/internal/measurement/zzzr;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzzl;

    return-object v0
.end method
