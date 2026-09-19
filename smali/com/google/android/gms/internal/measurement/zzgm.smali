###### Class com.google.android.gms.internal.measurement.zzgm (com.google.android.gms.internal.measurement.zzgm)
.class public final Lcom/google/android/gms/internal/measurement/zzgm;
.super Lcom/google/android/gms/internal/measurement/zzzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzzl<",
        "Lcom/google/android/gms/internal/measurement/zzgm;",
        ">;"
    }
.end annotation


# instance fields
.field public zzayz:[J

.field public zzaza:[J

.field public zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

.field public zzazc:[Lcom/google/android/gms/internal/measurement/zzgn;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzl;-><init>()V

    .line 2
    nop

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgm:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzzu;->zzcgm:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgh;->zzmy()[Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgn;->zznc()[Lcom/google/android/gms/internal/measurement/zzgn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazc:[Lcom/google/android/gms/internal/measurement/zzgn;

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzcgh:I

    .line 9
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 10
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 11
    return v0

    .line 12
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzgm;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 13
    return v2

    .line 14
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgm;

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_17

    .line 16
    return v2

    .line 17
    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_22

    .line 18
    return v2

    .line 19
    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 20
    return v2

    .line 21
    :cond_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazc:[Lcom/google/android/gms/internal/measurement/zzgn;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzgm;->zzazc:[Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzzp;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 22
    return v2

    .line 23
    :cond_38
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_45

    goto :goto_4e

    .line 25
    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgm;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 24
    :cond_4e
    :goto_4e
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzgm;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_5c

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzgm;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5b

    goto :goto_5c

    :cond_5b
    return v2

    :cond_5c
    :goto_5c
    return v0
.end method

.method public final hashCode()I
    .registers 3

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    .line 28
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    .line 30
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    .line 32
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazc:[Lcom/google/android/gms/internal/measurement/zzgn;

    .line 34
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzzp;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_48

    .line 37
    :cond_41
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzn;->hashCode()I

    move-result v1

    goto :goto_49

    .line 36
    :cond_48
    :goto_48
    const/4 v1, 0x0

    .line 37
    :goto_49
    add-int/2addr v0, v1

    .line 38
    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzzi;)Lcom/google/android/gms/internal/measurement/zzzr;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    nop

    .line 98
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    move-result v0

    .line 99
    if-eqz v0, :cond_198

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_163

    const/16 v1, 0xa

    if-eq v0, v1, :cond_11e

    const/16 v1, 0x10

    if-eq v0, v1, :cond_e9

    const/16 v1, 0x12

    if-eq v0, v1, :cond_a4

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_65

    const/16 v1, 0x22

    if-eq v0, v1, :cond_27

    .line 101
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzi;I)Z

    move-result v0

    if-nez v0, :cond_64

    .line 102
    return-object p0

    .line 194
    :cond_27
    nop

    .line 195
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazc:[Lcom/google/android/gms/internal/measurement/zzgn;

    if-nez v1, :cond_32

    .line 197
    const/4 v1, 0x0

    goto :goto_35

    .line 196
    :cond_32
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazc:[Lcom/google/android/gms/internal/measurement/zzgn;

    array-length v1, v1

    .line 197
    :goto_35
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzgn;

    .line 198
    if-eqz v1, :cond_3f

    .line 199
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazc:[Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    :cond_3f
    :goto_3f
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_56

    .line 201
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgn;-><init>()V

    aput-object v2, v0, v1

    .line 202
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 203
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 205
    :cond_56
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgn;-><init>()V

    aput-object v2, v0, v1

    .line 206
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 207
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazc:[Lcom/google/android/gms/internal/measurement/zzgn;

    .line 208
    :cond_64
    goto :goto_1

    .line 179
    :cond_65
    nop

    .line 180
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    if-nez v1, :cond_70

    .line 182
    const/4 v1, 0x0

    goto :goto_73

    .line 181
    :cond_70
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    array-length v1, v1

    .line 182
    :goto_73
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzgh;

    .line 183
    if-eqz v1, :cond_7d

    .line 184
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    :cond_7d
    :goto_7d
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_94

    .line 186
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgh;-><init>()V

    aput-object v2, v0, v1

    .line 187
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 188
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    .line 190
    :cond_94
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzgh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzgh;-><init>()V

    aput-object v2, v0, v1

    .line 191
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zza(Lcom/google/android/gms/internal/measurement/zzzr;)V

    .line 192
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    .line 193
    goto/16 :goto_1

    .line 158
    :cond_a4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v0

    .line 159
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzar(I)I

    move-result v0

    .line 160
    nop

    .line 161
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->getPosition()I

    move-result v1

    .line 162
    const/4 v3, 0x0

    :goto_b2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzzf()I

    move-result v4

    if-lez v4, :cond_bf

    .line 163
    nop

    .line 164
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_b2

    .line 166
    :cond_bf
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzca(I)V

    .line 167
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    if-nez v1, :cond_c8

    .line 168
    const/4 v1, 0x0

    goto :goto_cb

    .line 167
    :cond_c8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    array-length v1, v1

    .line 168
    :goto_cb
    add-int/2addr v3, v1

    new-array v3, v3, [J

    .line 169
    if-eqz v1, :cond_d5

    .line 170
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    :cond_d5
    :goto_d5
    array-length v2, v3

    if-ge v1, v2, :cond_e2

    .line 172
    nop

    .line 173
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v4

    .line 174
    aput-wide v4, v3, v1

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_d5

    .line 176
    :cond_e2
    iput-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    .line 177
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzas(I)V

    .line 178
    goto/16 :goto_1

    .line 141
    :cond_e9
    nop

    .line 142
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    if-nez v1, :cond_f4

    .line 144
    const/4 v1, 0x0

    goto :goto_f7

    .line 143
    :cond_f4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    array-length v1, v1

    .line 144
    :goto_f7
    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 145
    if-eqz v1, :cond_101

    .line 146
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    :cond_101
    :goto_101
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_113

    .line 148
    nop

    .line 149
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v2

    .line 150
    aput-wide v2, v0, v1

    .line 151
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_101

    .line 153
    :cond_113
    nop

    .line 154
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v2

    .line 155
    aput-wide v2, v0, v1

    .line 156
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    .line 157
    goto/16 :goto_1

    .line 120
    :cond_11e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvi()I

    move-result v0

    .line 121
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzar(I)I

    move-result v0

    .line 122
    nop

    .line 123
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->getPosition()I

    move-result v1

    .line 124
    const/4 v3, 0x0

    :goto_12c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzzf()I

    move-result v4

    if-lez v4, :cond_139

    .line 125
    nop

    .line 126
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_12c

    .line 128
    :cond_139
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzca(I)V

    .line 129
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    if-nez v1, :cond_142

    .line 130
    const/4 v1, 0x0

    goto :goto_145

    .line 129
    :cond_142
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    array-length v1, v1

    .line 130
    :goto_145
    add-int/2addr v3, v1

    new-array v3, v3, [J

    .line 131
    if-eqz v1, :cond_14f

    .line 132
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    :cond_14f
    :goto_14f
    array-length v2, v3

    if-ge v1, v2, :cond_15c

    .line 134
    nop

    .line 135
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v4

    .line 136
    aput-wide v4, v3, v1

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_14f

    .line 138
    :cond_15c
    iput-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    .line 139
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzzi;->zzas(I)V

    .line 140
    goto/16 :goto_1

    .line 103
    :cond_163
    nop

    .line 104
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/zzzu;->zzb(Lcom/google/android/gms/internal/measurement/zzzi;I)I

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    if-nez v1, :cond_16e

    .line 106
    const/4 v1, 0x0

    goto :goto_171

    .line 105
    :cond_16e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    array-length v1, v1

    .line 106
    :goto_171
    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 107
    if-eqz v1, :cond_17b

    .line 108
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    :cond_17b
    :goto_17b
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_18d

    .line 110
    nop

    .line 111
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v2

    .line 112
    aput-wide v2, v0, v1

    .line 113
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzuq()I

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_17b

    .line 115
    :cond_18d
    nop

    .line 116
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzzi;->zzvj()J

    move-result-wide v2

    .line 117
    aput-wide v2, v0, v1

    .line 118
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    .line 119
    goto/16 :goto_1

    .line 100
    :cond_198
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzj;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    array-length v0, v0

    if-lez v0, :cond_1b

    .line 40
    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    array-length v2, v2

    if-ge v0, v2, :cond_1b

    .line 41
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    aget-wide v3, v2, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(IJ)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 43
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    array-length v0, v0

    if-lez v0, :cond_35

    .line 44
    const/4 v0, 0x0

    :goto_25
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    array-length v2, v2

    if-ge v0, v2, :cond_35

    .line 45
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    aget-wide v4, v3, v0

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(IJ)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 47
    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    array-length v0, v0

    if-lez v0, :cond_51

    .line 48
    const/4 v0, 0x0

    :goto_3f
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    array-length v2, v2

    if-ge v0, v2, :cond_51

    .line 49
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    aget-object v2, v2, v0

    .line 50
    if-eqz v2, :cond_4e

    .line 51
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    .line 52
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 53
    :cond_51
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazc:[Lcom/google/android/gms/internal/measurement/zzgn;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazc:[Lcom/google/android/gms/internal/measurement/zzgn;

    array-length v0, v0

    if-lez v0, :cond_6c

    .line 54
    :goto_5a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazc:[Lcom/google/android/gms/internal/measurement/zzgn;

    array-length v0, v0

    if-ge v1, v0, :cond_6c

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazc:[Lcom/google/android/gms/internal/measurement/zzgn;

    aget-object v0, v0, v1

    .line 56
    if-eqz v0, :cond_69

    .line 57
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zza(ILcom/google/android/gms/internal/measurement/zzzr;)V

    .line 58
    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 59
    :cond_6c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzl;->zza(Lcom/google/android/gms/internal/measurement/zzzj;)V

    .line 60
    return-void
.end method

.method protected final zzf()I
    .registers 8

    .line 61
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzzl;->zzf()I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    array-length v1, v1

    if-lez v1, :cond_2a

    .line 63
    nop

    .line 64
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_11
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    array-length v4, v4

    if-ge v1, v4, :cond_23

    .line 65
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    aget-wide v5, v4, v1

    .line 66
    nop

    .line 67
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbl(J)I

    move-result v4

    .line 68
    add-int/2addr v3, v4

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 70
    :cond_23
    add-int/2addr v0, v3

    .line 71
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzayz:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 72
    :cond_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    array-length v1, v1

    if-lez v1, :cond_4f

    .line 73
    nop

    .line 74
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_36
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    array-length v4, v4

    if-ge v1, v4, :cond_48

    .line 75
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    aget-wide v5, v4, v1

    .line 76
    nop

    .line 77
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzzj;->zzbl(J)I

    move-result v4

    .line 78
    add-int/2addr v3, v4

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 80
    :cond_48
    add-int/2addr v0, v3

    .line 81
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzaza:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 82
    :cond_4f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    array-length v1, v1

    if-lez v1, :cond_6f

    .line 83
    move v1, v0

    const/4 v0, 0x0

    :goto_5a
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    array-length v3, v3

    if-ge v0, v3, :cond_6e

    .line 84
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazb:[Lcom/google/android/gms/internal/measurement/zzgh;

    aget-object v3, v3, v0

    .line 85
    if-eqz v3, :cond_6b

    .line 86
    const/4 v4, 0x3

    .line 87
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v3

    add-int/2addr v1, v3

    .line 88
    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 89
    :cond_6e
    move v0, v1

    :cond_6f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazc:[Lcom/google/android/gms/internal/measurement/zzgn;

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazc:[Lcom/google/android/gms/internal/measurement/zzgn;

    array-length v1, v1

    if-lez v1, :cond_8c

    .line 90
    :goto_78
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazc:[Lcom/google/android/gms/internal/measurement/zzgn;

    array-length v1, v1

    if-ge v2, v1, :cond_8c

    .line 91
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzazc:[Lcom/google/android/gms/internal/measurement/zzgn;

    aget-object v1, v1, v2

    .line 92
    if-eqz v1, :cond_89

    .line 93
    const/4 v3, 0x4

    .line 94
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(ILcom/google/android/gms/internal/measurement/zzzr;)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_89
    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    .line 96
    :cond_8c
    return v0
.end method
