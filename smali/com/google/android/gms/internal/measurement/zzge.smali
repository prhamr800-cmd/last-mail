###### Class com.google.android.gms.internal.measurement.zzge (com.google.android.gms.internal.measurement.zzge)
.class public final Lcom/google/android/gms/internal/measurement/zzge;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzge;",
        ">;"
    }
.end annotation


# instance fields
.field public zzafx:Ljava/lang/String;

.field public zzawx:Ljava/lang/Long;

.field private zzawy:Ljava/lang/Integer;

.field public zzawz:[Lcom/google/android/gms/internal/measurement/zzgf;

.field public zzaxa:[Lcom/google/android/gms/internal/measurement/zzgd;

.field public zzaxb:[Lcom/google/android/gms/internal/measurement/zzfx;

.field private zzaxc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    .line 2
    nop

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawx:Ljava/lang/Long;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzafx:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawy:Ljava/lang/Integer;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgf;->zzmw()[Lcom/google/android/gms/internal/measurement/zzgf;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawz:[Lcom/google/android/gms/internal/measurement/zzgf;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd;->zzmv()[Lcom/google/android/gms/internal/measurement/zzgd;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxa:[Lcom/google/android/gms/internal/measurement/zzgd;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfx;->zzmr()[Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzfx;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxc:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzcgh:I

    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 13
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 14
    return v0

    .line 15
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzge;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 16
    return v2

    .line 17
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzge;

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawx:Ljava/lang/Long;

    if-nez v1, :cond_15

    .line 19
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzge;->zzawx:Ljava/lang/Long;

    if-eqz v1, :cond_20

    .line 20
    return v2

    .line 21
    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawx:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzge;->zzawx:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 22
    return v2

    .line 23
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzafx:Ljava/lang/String;

    if-nez v1, :cond_29

    .line 24
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzge;->zzafx:Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 25
    return v2

    .line 26
    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzafx:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzge;->zzafx:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 27
    return v2

    .line 28
    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawy:Ljava/lang/Integer;

    if-nez v1, :cond_3d

    .line 29
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzge;->zzawy:Ljava/lang/Integer;

    if-eqz v1, :cond_48

    .line 30
    return v2

    .line 31
    :cond_3d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawy:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzge;->zzawy:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 32
    return v2

    .line 33
    :cond_48
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawz:[Lcom/google/android/gms/internal/measurement/zzgf;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzge;->zzawz:[Lcom/google/android/gms/internal/measurement/zzgf;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 34
    return v2

    .line 35
    :cond_53
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxa:[Lcom/google/android/gms/internal/measurement/zzgd;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzge;->zzaxa:[Lcom/google/android/gms/internal/measurement/zzgd;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 36
    return v2

    .line 37
    :cond_5e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzge;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 38
    return v2

    .line 39
    :cond_69
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxc:Ljava/lang/String;

    if-nez v1, :cond_72

    .line 40
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzge;->zzaxc:Ljava/lang/String;

    if-eqz v1, :cond_7d

    .line 41
    return v2

    .line 42
    :cond_72
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxc:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzge;->zzaxc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 43
    return v2

    .line 44
    :cond_7d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8a

    goto :goto_93

    .line 46
    :cond_8a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzge;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 45
    :cond_93
    :goto_93
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzge;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_a1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzge;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a0

    goto :goto_a1

    :cond_a0
    return v2

    :cond_a1
    :goto_a1
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

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawx:Ljava/lang/Long;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawx:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_1d
    add-int/2addr v0, v1

    .line 50
    mul-int/lit8 v0, v0, 0x1f

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzafx:Ljava/lang/String;

    if-nez v1, :cond_26

    const/4 v1, 0x0

    goto :goto_2c

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzafx:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2c
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawy:Ljava/lang/Integer;

    if-nez v1, :cond_35

    const/4 v1, 0x0

    goto :goto_3b

    :cond_35
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawy:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_3b
    add-int/2addr v0, v1

    .line 54
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawz:[Lcom/google/android/gms/internal/measurement/zzgf;

    .line 55
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxa:[Lcom/google/android/gms/internal/measurement/zzgd;

    .line 57
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzfx;

    .line 59
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxc:Ljava/lang/String;

    if-nez v1, :cond_5f

    const/4 v1, 0x0

    goto :goto_65

    :cond_5f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_65
    add-int/2addr v0, v1

    .line 62
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_7c

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_75

    goto :goto_7c

    .line 64
    :cond_75
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->hashCode()I

    move-result v2

    goto :goto_7d

    .line 63
    :cond_7c
    :goto_7c
    nop

    .line 64
    :goto_7d
    add-int/2addr v0, v2

    .line 65
    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    nop

    .line 130
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v0

    .line 131
    if-eqz v0, :cond_110

    const/16 v1, 0x8

    if-eq v0, v1, :cond_103

    const/16 v1, 0x12

    if-eq v0, v1, :cond_fb

    const/16 v1, 0x18

    if-eq v0, v1, :cond_ee

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_af

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_70

    const/16 v1, 0x32

    if-eq v0, v1, :cond_32

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_2b

    .line 133
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 134
    return-object p0

    .line 190
    :cond_2b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxc:Ljava/lang/String;

    .line 191
    :cond_31
    goto :goto_1

    .line 175
    :cond_32
    nop

    .line 176
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzfx;

    if-nez v1, :cond_3d

    .line 178
    const/4 v1, 0x0

    goto :goto_40

    .line 177
    :cond_3d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzfx;

    array-length v1, v1

    .line 178
    :goto_40
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzfx;

    .line 179
    if-eqz v1, :cond_4a

    .line 180
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    :cond_4a
    :goto_4a
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_61

    .line 182
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzfx;-><init>()V

    aput-object v2, v0, v1

    .line 183
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 184
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 186
    :cond_61
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzfx;-><init>()V

    aput-object v2, v0, v1

    .line 187
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 188
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzfx;

    .line 189
    goto :goto_1

    .line 160
    :cond_70
    nop

    .line 161
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxa:[Lcom/google/android/gms/internal/measurement/zzgd;

    if-nez v1, :cond_7b

    .line 163
    const/4 v1, 0x0

    goto :goto_7e

    .line 162
    :cond_7b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxa:[Lcom/google/android/gms/internal/measurement/zzgd;

    array-length v1, v1

    .line 163
    :goto_7e
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzgd;

    .line 164
    if-eqz v1, :cond_88

    .line 165
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxa:[Lcom/google/android/gms/internal/measurement/zzgd;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    :cond_88
    :goto_88
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_9f

    .line 167
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgd;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgd;-><init>()V

    aput-object v2, v0, v1

    .line 168
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 169
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    .line 171
    :cond_9f
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgd;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgd;-><init>()V

    aput-object v2, v0, v1

    .line 172
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 173
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxa:[Lcom/google/android/gms/internal/measurement/zzgd;

    .line 174
    goto/16 :goto_1

    .line 145
    :cond_af
    nop

    .line 146
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawz:[Lcom/google/android/gms/internal/measurement/zzgf;

    if-nez v1, :cond_ba

    .line 148
    const/4 v1, 0x0

    goto :goto_bd

    .line 147
    :cond_ba
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawz:[Lcom/google/android/gms/internal/measurement/zzgf;

    array-length v1, v1

    .line 148
    :goto_bd
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzgf;

    .line 149
    if-eqz v1, :cond_c7

    .line 150
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawz:[Lcom/google/android/gms/internal/measurement/zzgf;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    :cond_c7
    :goto_c7
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_de

    .line 152
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgf;-><init>()V

    aput-object v2, v0, v1

    .line 153
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 154
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_c7

    .line 156
    :cond_de
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgf;-><init>()V

    aput-object v2, v0, v1

    .line 157
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 158
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawz:[Lcom/google/android/gms/internal/measurement/zzgf;

    .line 159
    goto/16 :goto_1

    .line 141
    :cond_ee
    nop

    .line 142
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v0

    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawy:Ljava/lang/Integer;

    .line 144
    goto/16 :goto_1

    .line 139
    :cond_fb
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzafx:Ljava/lang/String;

    .line 140
    goto/16 :goto_1

    .line 135
    :cond_103
    nop

    .line 136
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v0

    .line 137
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawx:Ljava/lang/Long;

    .line 138
    goto/16 :goto_1

    .line 132
    :cond_110
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawx:Ljava/lang/Long;

    if-eqz v0, :cond_e

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawx:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzi(IJ)V

    .line 68
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzafx:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 69
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzafx:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILjava/lang/String;)V

    .line 70
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawy:Ljava/lang/Integer;

    if-eqz v0, :cond_26

    .line 71
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawy:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(II)V

    .line 72
    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawz:[Lcom/google/android/gms/internal/measurement/zzgf;

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawz:[Lcom/google/android/gms/internal/measurement/zzgf;

    array-length v0, v0

    if-lez v0, :cond_43

    .line 73
    const/4 v0, 0x0

    :goto_31
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawz:[Lcom/google/android/gms/internal/measurement/zzgf;

    array-length v2, v2

    if-ge v0, v2, :cond_43

    .line 74
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawz:[Lcom/google/android/gms/internal/measurement/zzgf;

    aget-object v2, v2, v0

    .line 75
    if-eqz v2, :cond_40

    .line 76
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    .line 77
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 78
    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxa:[Lcom/google/android/gms/internal/measurement/zzgd;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxa:[Lcom/google/android/gms/internal/measurement/zzgd;

    array-length v0, v0

    if-lez v0, :cond_5f

    .line 79
    const/4 v0, 0x0

    :goto_4d
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxa:[Lcom/google/android/gms/internal/measurement/zzgd;

    array-length v2, v2

    if-ge v0, v2, :cond_5f

    .line 80
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxa:[Lcom/google/android/gms/internal/measurement/zzgd;

    aget-object v2, v2, v0

    .line 81
    if-eqz v2, :cond_5c

    .line 82
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    .line 83
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 84
    :cond_5f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzfx;

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzfx;

    array-length v0, v0

    if-lez v0, :cond_7a

    .line 85
    :goto_68
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzfx;

    array-length v0, v0

    if-ge v1, v0, :cond_7a

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzfx;

    aget-object v0, v0, v1

    .line 87
    if-eqz v0, :cond_77

    .line 88
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    .line 89
    :cond_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 90
    :cond_7a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxc:Ljava/lang/String;

    if-eqz v0, :cond_84

    .line 91
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILjava/lang/String;)V

    .line 92
    :cond_84
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 93
    return-void
.end method

.method protected final zzf()I
    .registers 6

    .line 94
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawx:Ljava/lang/Long;

    if-eqz v1, :cond_14

    .line 96
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawx:Ljava/lang/Long;

    .line 97
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzafx:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 99
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzafx:Ljava/lang/String;

    .line 100
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawy:Ljava/lang/Integer;

    if-eqz v1, :cond_30

    .line 102
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawy:Ljava/lang/Integer;

    .line 103
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzh(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawz:[Lcom/google/android/gms/internal/measurement/zzgf;

    const/4 v2, 0x0

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawz:[Lcom/google/android/gms/internal/measurement/zzgf;

    array-length v1, v1

    if-lez v1, :cond_51

    .line 105
    move v1, v0

    const/4 v0, 0x0

    :goto_3c
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawz:[Lcom/google/android/gms/internal/measurement/zzgf;

    array-length v3, v3

    if-ge v0, v3, :cond_50

    .line 106
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzawz:[Lcom/google/android/gms/internal/measurement/zzgf;

    aget-object v3, v3, v0

    .line 107
    if-eqz v3, :cond_4d

    .line 108
    const/4 v4, 0x4

    .line 109
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v3

    add-int/2addr v1, v3

    .line 110
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 111
    :cond_50
    move v0, v1

    :cond_51
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxa:[Lcom/google/android/gms/internal/measurement/zzgd;

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxa:[Lcom/google/android/gms/internal/measurement/zzgd;

    array-length v1, v1

    if-lez v1, :cond_71

    .line 112
    move v1, v0

    const/4 v0, 0x0

    :goto_5c
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxa:[Lcom/google/android/gms/internal/measurement/zzgd;

    array-length v3, v3

    if-ge v0, v3, :cond_70

    .line 113
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxa:[Lcom/google/android/gms/internal/measurement/zzgd;

    aget-object v3, v3, v0

    .line 114
    if-eqz v3, :cond_6d

    .line 115
    const/4 v4, 0x5

    .line 116
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v3

    add-int/2addr v1, v3

    .line 117
    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 118
    :cond_70
    move v0, v1

    :cond_71
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzfx;

    if-eqz v1, :cond_8e

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzfx;

    array-length v1, v1

    if-lez v1, :cond_8e

    .line 119
    :goto_7a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzfx;

    array-length v1, v1

    if-ge v2, v1, :cond_8e

    .line 120
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxb:[Lcom/google/android/gms/internal/measurement/zzfx;

    aget-object v1, v1, v2

    .line 121
    if-eqz v1, :cond_8b

    .line 122
    const/4 v3, 0x6

    .line 123
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v1

    add-int/2addr v0, v1

    .line 124
    :cond_8b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    .line 125
    :cond_8e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxc:Ljava/lang/String;

    if-eqz v1, :cond_9a

    .line 126
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzge;->zzaxc:Ljava/lang/String;

    .line 127
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :cond_9a
    return v0
.end method
