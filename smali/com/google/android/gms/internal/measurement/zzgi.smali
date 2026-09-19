###### Class com.google.android.gms.internal.measurement.zzgi (com.google.android.gms.internal.measurement.zzgi)
.class public final Lcom/google/android/gms/internal/measurement/zzgi;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzgi;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzaxl:[Lcom/google/android/gms/internal/measurement/zzgi;


# instance fields
.field public count:Ljava/lang/Integer;

.field public name:Ljava/lang/String;

.field public zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

.field public zzaxn:Ljava/lang/Long;

.field public zzaxo:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    .line 8
    nop

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgj;->zzna()[Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/Long;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->count:Ljava/lang/Integer;

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzcgh:I

    .line 16
    return-void
.end method

.method public static zzmz()[Lcom/google/android/gms/internal/measurement/zzgi;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxl:[Lcom/google/android/gms/internal/measurement/zzgi;

    if-nez v0, :cond_15

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzp;->zzcgg:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxl:[Lcom/google/android/gms/internal/measurement/zzgi;

    if-nez v1, :cond_10

    .line 4
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzgi;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxl:[Lcom/google/android/gms/internal/measurement/zzgi;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxl:[Lcom/google/android/gms/internal/measurement/zzgi;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzgi;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 20
    return v2

    .line 21
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgi;

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 23
    return v2

    .line 24
    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    if-nez v1, :cond_20

    .line 25
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 26
    return v2

    .line 27
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 28
    return v2

    .line 29
    :cond_2b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    if-nez v1, :cond_34

    .line 30
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    if-eqz v1, :cond_3f

    .line 31
    return v2

    .line 32
    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 33
    return v2

    .line 34
    :cond_3f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/Long;

    if-nez v1, :cond_48

    .line 35
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/Long;

    if-eqz v1, :cond_53

    .line 36
    return v2

    .line 37
    :cond_48
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 38
    return v2

    .line 39
    :cond_53
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->count:Ljava/lang/Integer;

    if-nez v1, :cond_5c

    .line 40
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgi;->count:Ljava/lang/Integer;

    if-eqz v1, :cond_67

    .line 41
    return v2

    .line 42
    :cond_5c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgi;->count:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 43
    return v2

    .line 44
    :cond_67
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_74

    goto :goto_7d

    .line 46
    :cond_74
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgi;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 45
    :cond_7d
    :goto_7d
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgi;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_8b

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgi;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8a

    goto :goto_8b

    :cond_8a
    return v2

    :cond_8b
    :goto_8b
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    .line 49
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    mul-int/lit8 v0, v0, 0x1f

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_20

    const/4 v1, 0x0

    goto :goto_26

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_26
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    if-nez v1, :cond_2f

    const/4 v1, 0x0

    goto :goto_35

    :cond_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_35
    add-int/2addr v0, v1

    .line 54
    mul-int/lit8 v0, v0, 0x1f

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/Long;

    if-nez v1, :cond_3e

    const/4 v1, 0x0

    goto :goto_44

    :cond_3e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_44
    add-int/2addr v0, v1

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->count:Ljava/lang/Integer;

    if-nez v1, :cond_4d

    const/4 v1, 0x0

    goto :goto_53

    :cond_4d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_53
    add-int/2addr v0, v1

    .line 58
    mul-int/lit8 v0, v0, 0x1f

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_63

    goto :goto_6a

    .line 60
    :cond_63
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->hashCode()I

    move-result v2

    goto :goto_6b

    .line 59
    :cond_6a
    :goto_6a
    nop

    .line 60
    :goto_6b
    add-int/2addr v0, v2

    .line 61
    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    nop

    .line 100
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v0

    .line 101
    if-eqz v0, :cond_8d

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x12

    if-eq v0, v1, :cond_46

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x28

    if-eq v0, v1, :cond_22

    .line 103
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 104
    return-object p0

    .line 130
    :cond_22
    nop

    .line 131
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v0

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->count:Ljava/lang/Integer;

    .line 133
    :cond_2d
    goto :goto_1

    .line 126
    :cond_2e
    nop

    .line 127
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v0

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/Long;

    .line 129
    goto :goto_1

    .line 122
    :cond_3a
    nop

    .line 123
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v0

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    .line 125
    goto :goto_1

    .line 120
    :cond_46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    .line 121
    goto :goto_1

    .line 105
    :cond_4d
    nop

    .line 106
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    const/4 v2, 0x0

    if-nez v1, :cond_59

    .line 108
    const/4 v1, 0x0

    goto :goto_5c

    .line 107
    :cond_59
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    array-length v1, v1

    .line 108
    :goto_5c
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzgj;

    .line 109
    if-eqz v1, :cond_66

    .line 110
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    :cond_66
    :goto_66
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_7d

    .line 112
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgj;-><init>()V

    aput-object v2, v0, v1

    .line 113
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 114
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 116
    :cond_7d
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgj;-><init>()V

    aput-object v2, v0, v1

    .line 117
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 118
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    .line 119
    goto/16 :goto_1

    .line 102
    :cond_8d
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    array-length v0, v0

    if-lez v0, :cond_1c

    .line 63
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 64
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    aget-object v1, v1, v0

    .line 65
    if-eqz v1, :cond_19

    .line 66
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    .line 67
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 68
    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 69
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILjava/lang/String;)V

    .line 70
    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    if-eqz v0, :cond_34

    .line 71
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzi(IJ)V

    .line 72
    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/Long;

    if-eqz v0, :cond_42

    .line 73
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzi(IJ)V

    .line 74
    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->count:Ljava/lang/Integer;

    if-eqz v0, :cond_50

    .line 75
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(II)V

    .line 76
    :cond_50
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 77
    return-void
.end method

.method protected final zzf()I
    .registers 5

    .line 78
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    array-length v1, v1

    if-lez v1, :cond_23

    .line 80
    const/4 v1, 0x0

    :goto_e
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    array-length v2, v2

    if-ge v1, v2, :cond_23

    .line 81
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxm:[Lcom/google/android/gms/internal/measurement/zzgj;

    aget-object v2, v2, v1

    .line 82
    if-eqz v2, :cond_20

    .line 83
    nop

    .line 84
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v2

    add-int/2addr v0, v2

    .line 85
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 86
    :cond_23
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    if-eqz v1, :cond_2f

    .line 87
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgi;->name:Ljava/lang/String;

    .line 88
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    if-eqz v1, :cond_3f

    .line 90
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxn:Ljava/lang/Long;

    .line 91
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_3f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/Long;

    if-eqz v1, :cond_4f

    .line 93
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzaxo:Ljava/lang/Long;

    .line 94
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_4f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->count:Ljava/lang/Integer;

    if-eqz v1, :cond_5f

    .line 96
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgi;->count:Ljava/lang/Integer;

    .line 97
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzh(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_5f
    return v0
.end method
