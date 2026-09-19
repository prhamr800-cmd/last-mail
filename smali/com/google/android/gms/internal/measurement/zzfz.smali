###### Class com.google.android.gms.internal.measurement.zzfz (com.google.android.gms.internal.measurement.zzfz)
.class public final Lcom/google/android/gms/internal/measurement/zzfz;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzfz;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzawc:[Lcom/google/android/gms/internal/measurement/zzfz;


# instance fields
.field public zzawd:Lcom/google/android/gms/internal/measurement/zzgc;

.field public zzawe:Lcom/google/android/gms/internal/measurement/zzga;

.field public zzawf:Ljava/lang/Boolean;

.field public zzawg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    .line 8
    nop

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawd:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawf:Ljava/lang/Boolean;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawg:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzcgh:I

    .line 15
    return-void
.end method

.method public static zzmt()[Lcom/google/android/gms/internal/measurement/zzfz;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawc:[Lcom/google/android/gms/internal/measurement/zzfz;

    if-nez v0, :cond_15

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzp;->zzcgg:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfz;->zzawc:[Lcom/google/android/gms/internal/measurement/zzfz;

    if-nez v1, :cond_10

    .line 4
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzfz;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzfz;->zzawc:[Lcom/google/android/gms/internal/measurement/zzfz;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawc:[Lcom/google/android/gms/internal/measurement/zzfz;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzfz;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 19
    return v2

    .line 20
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfz;

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawd:Lcom/google/android/gms/internal/measurement/zzgc;

    if-nez v1, :cond_15

    .line 22
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzawd:Lcom/google/android/gms/internal/measurement/zzgc;

    if-eqz v1, :cond_20

    .line 23
    return v2

    .line 24
    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawd:Lcom/google/android/gms/internal/measurement/zzgc;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzawd:Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzgc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 25
    return v2

    .line 26
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    if-nez v1, :cond_29

    .line 27
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    if-eqz v1, :cond_34

    .line 28
    return v2

    .line 29
    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzga;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 30
    return v2

    .line 31
    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawf:Ljava/lang/Boolean;

    if-nez v1, :cond_3d

    .line 32
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzawf:Ljava/lang/Boolean;

    if-eqz v1, :cond_48

    .line 33
    return v2

    .line 34
    :cond_3d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawf:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzawf:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 35
    return v2

    .line 36
    :cond_48
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawg:Ljava/lang/String;

    if-nez v1, :cond_51

    .line 37
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzawg:Ljava/lang/String;

    if-eqz v1, :cond_5c

    .line 38
    return v2

    .line 39
    :cond_51
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawg:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzawg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 40
    return v2

    .line 41
    :cond_5c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_69

    goto :goto_72

    .line 43
    :cond_69
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 42
    :cond_72
    :goto_72
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_80

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawd:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 46
    mul-int/lit8 v0, v0, 0x1f

    .line 47
    const/4 v2, 0x0

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgc;->hashCode()I

    move-result v1

    :goto_1b
    add-int/2addr v0, v1

    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    .line 49
    mul-int/lit8 v0, v0, 0x1f

    .line 50
    if-nez v1, :cond_24

    const/4 v1, 0x0

    goto :goto_28

    :cond_24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzga;->hashCode()I

    move-result v1

    :goto_28
    add-int/2addr v0, v1

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawf:Ljava/lang/Boolean;

    if-nez v1, :cond_31

    const/4 v1, 0x0

    goto :goto_37

    :cond_31
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawf:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_37
    add-int/2addr v0, v1

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawg:Ljava/lang/String;

    if-nez v1, :cond_40

    const/4 v1, 0x0

    goto :goto_46

    :cond_40
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_46
    add-int/2addr v0, v1

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_56

    goto :goto_5d

    .line 57
    :cond_56
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

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
    if-eqz v0, :cond_52

    const/16 v1, 0xa

    if-eq v0, v1, :cond_41

    const/16 v1, 0x12

    if-eq v0, v1, :cond_30

    const/16 v1, 0x18

    if-eq v0, v1, :cond_25

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1e

    .line 89
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_24

    .line 90
    return-object p0

    .line 101
    :cond_1e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawg:Ljava/lang/String;

    .line 102
    :cond_24
    goto :goto_1

    .line 99
    :cond_25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawf:Ljava/lang/Boolean;

    .line 100
    goto :goto_1

    .line 95
    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    if-nez v0, :cond_3b

    .line 96
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzga;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzga;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    .line 97
    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 98
    goto :goto_1

    .line 91
    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawd:Lcom/google/android/gms/internal/measurement/zzgc;

    if-nez v0, :cond_4c

    .line 92
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawd:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 93
    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawd:Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 94
    goto :goto_1

    .line 88
    :cond_52
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
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawd:Lcom/google/android/gms/internal/measurement/zzgc;

    if-eqz v0, :cond_a

    .line 60
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawd:Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    .line 61
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    if-eqz v0, :cond_14

    .line 62
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    .line 63
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawf:Ljava/lang/Boolean;

    if-eqz v0, :cond_22

    .line 64
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawf:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(IZ)V

    .line 65
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawg:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 66
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILjava/lang/String;)V

    .line 67
    :cond_2c
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
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawd:Lcom/google/android/gms/internal/measurement/zzgc;

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    .line 71
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawd:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 72
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    if-eqz v1, :cond_1c

    .line 74
    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawe:Lcom/google/android/gms/internal/measurement/zzga;

    .line 75
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawf:Ljava/lang/Boolean;

    if-eqz v1, :cond_2c

    .line 77
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawf:Ljava/lang/Boolean;

    .line 78
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbc(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 80
    add-int/2addr v0, v1

    .line 81
    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawg:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 82
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzawg:Ljava/lang/String;

    .line 83
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_38
    return v0
.end method
