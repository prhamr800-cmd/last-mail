###### Class com.google.android.gms.internal.measurement.zzzo (com.google.android.gms.internal.measurement.zzzo)
.class final Lcom/google/android/gms/internal/measurement/zzzo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private value:Ljava/lang/Object;

.field private zzcge:Lcom/google/android/gms/internal/measurement/zzzm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzzm<",
            "**>;"
        }
    .end annotation
.end field

.field private zzcgf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzzt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcgf:Ljava/util/List;

    .line 3
    return-void
.end method

.method private final toByteArray()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzo;->zzf()I

    move-result v0

    new-array v0, v0, [B

    .line 124
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzo([B)Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object v1

    .line 125
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzzo;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 126
    return-object v0
.end method

.method private final zzzj()Lcom/google/android/gms/internal/measurement/zzzo;
    .registers 6

    .line 127
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzzo;-><init>()V

    .line 128
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcge:Lcom/google/android/gms/internal/measurement/zzzm;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcge:Lcom/google/android/gms/internal/measurement/zzzm;

    .line 129
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcgf:Ljava/util/List;

    if-nez v1, :cond_11

    .line 130
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcgf:Ljava/util/List;

    goto :goto_18

    .line 131
    :cond_11
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcgf:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcgf:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    :goto_18
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    if-eqz v1, :cond_d8

    .line 133
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/android/gms/internal/measurement/zzzr;

    if-eqz v1, :cond_30

    .line 134
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzzr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzr;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzzr;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    goto/16 :goto_d8

    .line 135
    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_42

    .line 136
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    goto/16 :goto_d8

    .line 137
    :cond_42
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    instance-of v1, v1, [[B

    const/4 v2, 0x0

    if-eqz v1, :cond_64

    .line 138
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast v1, [[B

    .line 139
    array-length v3, v1

    new-array v3, v3, [[B

    .line 140
    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    .line 141
    :goto_52
    array-length v4, v1

    if-ge v2, v4, :cond_62

    .line 142
    aget-object v4, v1, v2

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, v3, v2

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 144
    :cond_62
    goto/16 :goto_d8

    :cond_64
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    instance-of v1, v1, [Z

    if-eqz v1, :cond_75

    .line 145
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast v1, [Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    goto :goto_d8

    .line 146
    :cond_75
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_86

    .line 147
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    goto :goto_d8

    .line 148
    :cond_86
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_97

    .line 149
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast v1, [J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    goto :goto_d8

    .line 150
    :cond_97
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    instance-of v1, v1, [F

    if-eqz v1, :cond_a8

    .line 151
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast v1, [F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    goto :goto_d8

    .line 152
    :cond_a8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    instance-of v1, v1, [D

    if-eqz v1, :cond_b9

    .line 153
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast v1, [D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    goto :goto_d8

    .line 154
    :cond_b9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/google/android/gms/internal/measurement/zzzr;

    if-eqz v1, :cond_d8

    .line 155
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/measurement/zzzr;

    .line 156
    array-length v3, v1

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zzzr;

    .line 157
    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    .line 158
    :goto_c8
    array-length v4, v1

    if-ge v2, v4, :cond_d8

    .line 159
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzzr;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzzr;

    aput-object v4, v3, v2
    :try_end_d5
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_d5} :catch_d9

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_c8

    .line 161
    :cond_d8
    :goto_d8
    return-object v0

    .line 162
    :catch_d9
    move-exception v0

    .line 163
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzo;->zzzj()Lcom/google/android/gms/internal/measurement/zzzo;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 90
    if-ne p1, p0, :cond_4

    .line 91
    const/4 p1, 0x1

    return p1

    .line 92
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzzo;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 93
    return v1

    .line 94
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzo;

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    if-eqz v0, :cond_ad

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    if-eqz v0, :cond_ad

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcge:Lcom/google/android/gms/internal/measurement/zzzm;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzzo;->zzcge:Lcom/google/android/gms/internal/measurement/zzzm;

    if-eq v0, v2, :cond_1b

    .line 97
    return v1

    .line 98
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcge:Lcom/google/android/gms/internal/measurement/zzzm;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzzm;->zzcfy:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 100
    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_41

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast v0, [B

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    .line 102
    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_54

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast v0, [I

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    return p1

    .line 104
    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_67

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast v0, [J

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast p1, [J

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    return p1

    .line 106
    :cond_67
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_7a

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast v0, [F

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast p1, [F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1

    .line 108
    :cond_7a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_8d

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast v0, [D

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast p1, [D

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p1

    return p1

    .line 110
    :cond_8d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_a0

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast p1, [Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    return p1

    .line 112
    :cond_a0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 113
    :cond_ad
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcgf:Ljava/util/List;

    if-eqz v0, :cond_be

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzzo;->zzcgf:Ljava/util/List;

    if-eqz v0, :cond_be

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcgf:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzo;->zzcgf:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 115
    :cond_be
    :try_start_be
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzo;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzzo;->toByteArray()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_ca} :catch_cb

    return p1

    .line 116
    :catch_cb
    move-exception p1

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final hashCode()I
    .registers 3

    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzo;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_c

    add-int/lit16 v0, v0, 0x20f

    .line 119
    nop

    .line 122
    return v0

    .line 120
    :catch_c
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    if-eqz v0, :cond_25

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcge:Lcom/google/android/gms/internal/measurement/zzzm;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    .line 73
    iget-boolean v2, v0, Lcom/google/android/gms/internal/measurement/zzzm;->zzcfz:Z

    if-eqz v2, :cond_21

    .line 74
    nop

    .line 75
    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 76
    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_20

    .line 77
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 78
    if-eqz v4, :cond_1d

    .line 79
    invoke-virtual {v0, v4, p1}, Lcom/google/android/gms/internal/measurement/zzzm;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 80
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 81
    :cond_20
    return-void

    .line 82
    :cond_21
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzzm;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 83
    return-void

    .line 84
    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcgf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzzt;

    .line 85
    nop

    .line 86
    iget v2, v1, Lcom/google/android/gms/internal/measurement/zzzt;->tag:I

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzcc(I)V

    .line 87
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzzt;->zzbvb:[B

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzp([B)V

    .line 88
    goto :goto_2b

    .line 89
    :cond_43
    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzzt;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcgf:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcgf:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/internal/measurement/zzzr;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzt;->zzbvb:[B

    .line 8
    array-length v0, p1

    .line 9
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzzi;

    move-result-object v0

    .line 10
    nop

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v1

    .line 12
    nop

    .line 13
    array-length p1, p1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbd(I)I

    move-result v2

    sub-int/2addr p1, v2

    if-ne v1, p1, :cond_30

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzzr;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzr;->zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;

    move-result-object p1

    .line 16
    goto/16 :goto_b0

    .line 14
    :cond_30
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzq;->zzzk()Lcom/google/android/gms/internal/measurement/zzzq;

    move-result-object p1

    throw p1

    .line 16
    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    instance-of v0, v0, [Lcom/google/android/gms/internal/measurement/zzzr;

    if-eqz v0, :cond_5d

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcge:Lcom/google/android/gms/internal/measurement/zzzm;

    .line 18
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzm;->zzah(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/measurement/zzzr;

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzzr;

    .line 20
    array-length v2, v0

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/measurement/zzzr;

    .line 21
    array-length v0, v0

    array-length v3, p1

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    nop

    .line 23
    nop

    .line 36
    :goto_5b
    move-object p1, v2

    goto :goto_b0

    .line 23
    :cond_5d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/internal/measurement/zzxe;

    if-eqz v0, :cond_80

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcge:Lcom/google/android/gms/internal/measurement/zzzm;

    .line 25
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzm;->zzah(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzxe;

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzxe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzxe;->zzwo()Lcom/google/android/gms/internal/measurement/zzxf;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzxf;->zza(Lcom/google/android/gms/internal/measurement/zzxe;)Lcom/google/android/gms/internal/measurement/zzxf;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzxf;->zzwv()Lcom/google/android/gms/internal/measurement/zzxe;

    move-result-object p1

    .line 27
    goto :goto_b0

    :cond_80
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    instance-of v0, v0, [Lcom/google/android/gms/internal/measurement/zzxe;

    if-eqz v0, :cond_a6

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcge:Lcom/google/android/gms/internal/measurement/zzzm;

    .line 29
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzm;->zzah(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/measurement/zzxe;

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzxe;

    .line 31
    array-length v2, v0

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/measurement/zzxe;

    .line 32
    array-length v0, v0

    array-length v3, p1

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    nop

    .line 34
    goto :goto_5b

    .line 35
    :cond_a6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcge:Lcom/google/android/gms/internal/measurement/zzzm;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzm;->zzah(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    .line 36
    :goto_b0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcge:Lcom/google/android/gms/internal/measurement/zzzm;

    .line 37
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcge:Lcom/google/android/gms/internal/measurement/zzzm;

    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    .line 39
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcgf:Ljava/util/List;

    .line 40
    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/measurement/zzzm;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzzm<",
            "*TT;>;)TT;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcge:Lcom/google/android/gms/internal/measurement/zzzm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzm;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_22

    .line 43
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Tried to getExtension with a different Extension."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_15
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcge:Lcom/google/android/gms/internal/measurement/zzzm;

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcgf:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzm;->zzah(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    .line 46
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcgf:Ljava/util/List;

    .line 47
    :goto_22
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    return-object p1
.end method

.method final zzf()I
    .registers 7

    .line 48
    nop

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcge:Lcom/google/android/gms/internal/measurement/zzzm;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzzo;->value:Ljava/lang/Object;

    .line 51
    iget-boolean v3, v0, Lcom/google/android/gms/internal/measurement/zzzm;->zzcfz:Z

    if-eqz v3, :cond_27

    .line 52
    nop

    .line 53
    nop

    .line 54
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 55
    const/4 v4, 0x0

    :goto_15
    if-ge v1, v3, :cond_25

    .line 56
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 57
    if-eqz v5, :cond_22

    .line 58
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/zzzm;->zzao(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    .line 59
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 60
    :cond_25
    nop

    .line 61
    goto :goto_2b

    .line 62
    :cond_27
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzzm;->zzao(Ljava/lang/Object;)I

    move-result v4

    .line 63
    :goto_2b
    goto :goto_4d

    .line 64
    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzo;->zzcgf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzzt;

    .line 65
    nop

    .line 66
    iget v3, v2, Lcom/google/android/gms/internal/measurement/zzzt;->tag:I

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbk(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 67
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzzt;->zzbvb:[B

    array-length v2, v2

    add-int/2addr v3, v2

    .line 68
    add-int/2addr v4, v3

    .line 69
    goto :goto_33

    .line 70
    :cond_4d
    :goto_4d
    return v4
.end method
