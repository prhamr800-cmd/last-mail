###### Class com.google.android.gms.internal.measurement.zzxw (com.google.android.gms.internal.measurement.zzxw)
.class final Lcom/google/android/gms/internal/measurement/zzxw;
.super Ljava/lang/Object;


# static fields
.field private static final zzccr:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzccs:Lcom/google/android/gms/internal/measurement/zzym;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzym<",
            "**>;"
        }
    .end annotation
.end field

.field private static final zzcct:Lcom/google/android/gms/internal/measurement/zzym;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzym<",
            "**>;"
        }
    .end annotation
.end field

.field private static final zzccu:Lcom/google/android/gms/internal/measurement/zzym;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzym<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 315
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxw;->zzyh()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxw;->zzccr:Ljava/lang/Class;

    .line 316
    nop

    .line 317
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxw;->zzv(Z)Lcom/google/android/gms/internal/measurement/zzym;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxw;->zzccs:Lcom/google/android/gms/internal/measurement/zzym;

    .line 318
    nop

    .line 319
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxw;->zzv(Z)Lcom/google/android/gms/internal/measurement/zzym;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxw;->zzcct:Lcom/google/android/gms/internal/measurement/zzym;

    .line 320
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzyo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxw;->zzccu:Lcom/google/android/gms/internal/measurement/zzym;

    return-void
.end method

.method static zza(IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzym;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(IITUB;",
            "Lcom/google/android/gms/internal/measurement/zzym<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 311
    if-nez p2, :cond_6

    .line 312
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzym;->zzyr()Ljava/lang/Object;

    move-result-object p2

    .line 313
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p3, p2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzym;->zza(Ljava/lang/Object;IJ)V

    .line 314
    return-object p2
.end method

.method static zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzwc;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzym;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzwc;",
            "TUB;",
            "Lcom/google/android/gms/internal/measurement/zzym<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 288
    if-nez p2, :cond_3

    .line 289
    return-object p3

    .line 290
    :cond_3
    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_3e

    .line 291
    nop

    .line 292
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 293
    const/4 v1, 0x0

    move-object v2, p3

    const/4 p3, 0x0

    :goto_f
    if-ge v1, v0, :cond_34

    .line 294
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 295
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/measurement/zzwc;->zzb(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 296
    if-eq v1, p3, :cond_2a

    .line 297
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, p3, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_2a
    add-int/lit8 p3, p3, 0x1

    goto :goto_31

    .line 299
    :cond_2d
    invoke-static {p0, v3, v2, p4}, Lcom/google/android/gms/internal/measurement/zzxw;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzym;)Ljava/lang/Object;

    move-result-object v2

    .line 300
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 301
    :cond_34
    if-eq p3, v0, :cond_3d

    .line 302
    invoke-interface {p1, p3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 303
    :cond_3d
    goto :goto_62

    .line 304
    :cond_3e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, p3

    :goto_43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_62

    .line 305
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 306
    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/measurement/zzwc;->zzb(I)Z

    move-result v0

    if-nez v0, :cond_61

    .line 307
    invoke-static {p0, p3, v2, p4}, Lcom/google/android/gms/internal/measurement/zzxw;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzym;)Ljava/lang/Object;

    move-result-object p3

    .line 308
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 309
    move-object v2, p3

    :cond_61
    goto :goto_43

    .line 310
    :cond_62
    :goto_62
    return-object v2
.end method

.method public static zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzzh;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzzh;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 48
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/zzzh;->zza(ILjava/util/List;)V

    .line 49
    :cond_b
    return-void
.end method

.method public static zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzzh;Lcom/google/android/gms/internal/measurement/zzxu;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzzh;",
            "Lcom/google/android/gms/internal/measurement/zzxu;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 54
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzzh;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzxu;)V

    .line 55
    :cond_b
    return-void
.end method

.method public static zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzzh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzzh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 6
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzzh;->zzg(ILjava/util/List;Z)V

    .line 7
    :cond_b
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzvl;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "FT::",
            "Lcom/google/android/gms/internal/measurement/zzvq<",
            "TFT;>;>(",
            "Lcom/google/android/gms/internal/measurement/zzvl<",
            "TFT;>;TT;TT;)V"
        }
    .end annotation

    .line 278
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzvl;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzvo;

    move-result-object p2

    .line 279
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzvo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 280
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzvl;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzvo;

    move-result-object p0

    .line 281
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzvo;->zza(Lcom/google/android/gms/internal/measurement/zzvo;)V

    .line 282
    :cond_11
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzwz;Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzwz;",
            "TT;TT;J)V"
        }
    .end annotation

    .line 273
    nop

    .line 274
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/measurement/zzys;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzys;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 275
    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzwz;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 276
    invoke-static {p1, p3, p4, p0}, Lcom/google/android/gms/internal/measurement/zzys;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 277
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzym;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzym<",
            "TUT;TUB;>;TT;TT;)V"
        }
    .end annotation

    .line 283
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzym;->zzal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 284
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzym;->zzal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 285
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzym;->zzh(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzym;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    return-void
.end method

.method static zzaa(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 116
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 117
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 118
    return v1

    .line 119
    :cond_8
    nop

    .line 120
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/zzvy;

    if-eqz v2, :cond_1f

    .line 121
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzvy;

    .line 122
    const/4 v2, 0x0

    :goto_10
    if-ge v1, v0, :cond_1e

    .line 123
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzvy;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzve;->zzbi(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 125
    :cond_1e
    goto :goto_34

    .line 126
    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-ge v1, v0, :cond_34

    .line 127
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzve;->zzbi(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 129
    :cond_34
    :goto_34
    return v2
.end method

.method static zzab(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 135
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 136
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 137
    return v1

    .line 138
    :cond_8
    nop

    .line 139
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/zzvy;

    if-eqz v2, :cond_1f

    .line 140
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzvy;

    .line 141
    const/4 v2, 0x0

    :goto_10
    if-ge v1, v0, :cond_1e

    .line 142
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzvy;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzve;->zzbd(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 144
    :cond_1e
    goto :goto_34

    .line 145
    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-ge v1, v0, :cond_34

    .line 146
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzve;->zzbd(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 148
    :cond_34
    :goto_34
    return v2
.end method

.method static zzac(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 154
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 155
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 156
    return v1

    .line 157
    :cond_8
    nop

    .line 158
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/zzvy;

    if-eqz v2, :cond_1f

    .line 159
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzvy;

    .line 160
    const/4 v2, 0x0

    :goto_10
    if-ge v1, v0, :cond_1e

    .line 161
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzvy;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzve;->zzbe(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 163
    :cond_1e
    goto :goto_34

    .line 164
    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-ge v1, v0, :cond_34

    .line 165
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzve;->zzbe(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 167
    :cond_34
    :goto_34
    return v2
.end method

.method static zzad(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 173
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 174
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 175
    return v1

    .line 176
    :cond_8
    nop

    .line 177
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/zzvy;

    if-eqz v2, :cond_1f

    .line 178
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzvy;

    .line 179
    const/4 v2, 0x0

    :goto_10
    if-ge v1, v0, :cond_1e

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzvy;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzve;->zzbf(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 182
    :cond_1e
    goto :goto_34

    .line 183
    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-ge v1, v0, :cond_34

    .line 184
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzve;->zzbf(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 186
    :cond_34
    :goto_34
    return v2
.end method

.method static zzae(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 192
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    shl-int/lit8 p0, p0, 0x2

    return p0
.end method

.method static zzaf(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 197
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    shl-int/lit8 p0, p0, 0x3

    return p0
.end method

.method static zzag(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 202
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzzh;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzun;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzzh;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 51
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/zzzh;->zzb(ILjava/util/List;)V

    .line 52
    :cond_b
    return-void
.end method

.method public static zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzzh;Lcom/google/android/gms/internal/measurement/zzxu;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzzh;",
            "Lcom/google/android/gms/internal/measurement/zzxu;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 57
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzzh;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzxu;)V

    .line 58
    :cond_b
    return-void
.end method

.method public static zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzzh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzzh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 9
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzzh;->zzf(ILjava/util/List;Z)V

    .line 10
    :cond_b
    return-void
.end method

.method static zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzxu;)I
    .registers 4

    .line 227
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzwl;

    if-eqz v0, :cond_b

    .line 228
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzwl;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzve;->zza(ILcom/google/android/gms/internal/measurement/zzwl;)I

    move-result p0

    return p0

    .line 229
    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzxe;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzb(ILcom/google/android/gms/internal/measurement/zzxe;Lcom/google/android/gms/internal/measurement/zzxu;)I

    move-result p0

    return p0
.end method

.method static zzc(ILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 207
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 208
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 209
    return v1

    .line 210
    :cond_8
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    mul-int p0, p0, v0

    .line 211
    instance-of v2, p1, Lcom/google/android/gms/internal/measurement/zzwn;

    if-eqz v2, :cond_31

    .line 212
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzwn;

    .line 213
    :goto_14
    if-ge v1, v0, :cond_30

    .line 214
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/zzwn;->zzbo(I)Ljava/lang/Object;

    move-result-object v2

    .line 215
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzun;

    if-eqz v3, :cond_26

    .line 216
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzun;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzve;->zzb(Lcom/google/android/gms/internal/measurement/zzun;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_2d

    .line 217
    :cond_26
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzve;->zzge(Ljava/lang/String;)I

    move-result v2

    add-int/2addr p0, v2

    .line 218
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 219
    :cond_30
    goto :goto_4d

    .line 220
    :cond_31
    :goto_31
    if-ge v1, v0, :cond_4d

    .line 221
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 222
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzun;

    if-eqz v3, :cond_43

    .line 223
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzun;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzve;->zzb(Lcom/google/android/gms/internal/measurement/zzun;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_4a

    .line 224
    :cond_43
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzve;->zzge(Ljava/lang/String;)I

    move-result v2

    add-int/2addr p0, v2

    .line 225
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 226
    :cond_4d
    :goto_4d
    return p0
.end method

.method static zzc(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzxu;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzxu;",
            ")I"
        }
    .end annotation

    .line 230
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 231
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 232
    return v1

    .line 233
    :cond_8
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    mul-int p0, p0, v0

    .line 234
    :goto_e
    if-ge v1, v0, :cond_2a

    .line 235
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 236
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzwl;

    if-eqz v3, :cond_20

    .line 237
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzwl;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzve;->zza(Lcom/google/android/gms/internal/measurement/zzwl;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_27

    .line 238
    :cond_20
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzxe;

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzb(Lcom/google/android/gms/internal/measurement/zzxe;Lcom/google/android/gms/internal/measurement/zzxu;)I

    move-result v2

    add-int/2addr p0, v2

    .line 239
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 240
    :cond_2a
    return p0
.end method

.method public static zzc(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzzh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzzh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 12
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzzh;->zzc(ILjava/util/List;Z)V

    .line 13
    :cond_b
    return-void
.end method

.method static zzd(ILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzun;",
            ">;)I"
        }
    .end annotation

    .line 241
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 242
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 243
    return v1

    .line 244
    :cond_8
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    mul-int v0, v0, p0

    .line 245
    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_22

    .line 246
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzun;

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzb(Lcom/google/android/gms/internal/measurement/zzun;)I

    move-result p0

    add-int/2addr v0, p0

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 248
    :cond_22
    return v0
.end method

.method static zzd(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzxu;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzxe;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzxu;",
            ")I"
        }
    .end annotation

    .line 249
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 250
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 251
    return v1

    .line 252
    :cond_8
    nop

    .line 253
    const/4 v2, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 254
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzxe;

    invoke-static {p0, v3, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(ILcom/google/android/gms/internal/measurement/zzxe;Lcom/google/android/gms/internal/measurement/zzxu;)I

    move-result v3

    add-int/2addr v2, v3

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 256
    :cond_1a
    return v2
.end method

.method public static zzd(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzzh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzzh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 15
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzzh;->zzd(ILjava/util/List;Z)V

    .line 16
    :cond_b
    return-void
.end method

.method public static zze(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzzh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzzh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 18
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzzh;->zzn(ILjava/util/List;Z)V

    .line 19
    :cond_b
    return-void
.end method

.method static zze(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    .line 272
    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public static zzf(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzzh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzzh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 21
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzzh;->zze(ILjava/util/List;Z)V

    .line 22
    :cond_b
    return-void
.end method

.method public static zzg(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzzh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzzh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 24
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzzh;->zzl(ILjava/util/List;Z)V

    .line 25
    :cond_b
    return-void
.end method

.method public static zzh(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzzh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzzh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 27
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzzh;->zza(ILjava/util/List;Z)V

    .line 28
    :cond_b
    return-void
.end method

.method public static zzi(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzzh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzzh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 30
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzzh;->zzj(ILjava/util/List;Z)V

    .line 31
    :cond_b
    return-void
.end method

.method public static zzj(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzzh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzzh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 33
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzzh;->zzm(ILjava/util/List;Z)V

    .line 34
    :cond_b
    return-void
.end method

.method public static zzj(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzvx;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzxw;->zzccr:Ljava/lang/Class;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzxw;->zzccr:Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_1d

    .line 3
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1d
    :goto_1d
    return-void
.end method

.method public static zzk(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzzh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzzh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 36
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzzh;->zzb(ILjava/util/List;Z)V

    .line 37
    :cond_b
    return-void
.end method

.method public static zzl(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzzh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzzh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 39
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzzh;->zzk(ILjava/util/List;Z)V

    .line 40
    :cond_b
    return-void
.end method

.method public static zzm(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzzh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzzh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 42
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzzh;->zzh(ILjava/util/List;Z)V

    .line 43
    :cond_b
    return-void
.end method

.method public static zzn(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzzh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/internal/measurement/zzzh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 45
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzzh;->zzi(ILjava/util/List;Z)V

    .line 46
    :cond_b
    return-void
.end method

.method static zzo(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 74
    if-nez p2, :cond_8

    .line 75
    const/4 p0, 0x0

    return p0

    .line 76
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzxw;->zzx(Ljava/util/List;)I

    move-result p2

    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    mul-int p1, p1, p0

    add-int/2addr p2, p1

    return p2
.end method

.method static zzp(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 92
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 93
    if-nez p2, :cond_8

    .line 94
    const/4 p0, 0x0

    return p0

    .line 95
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzxw;->zzy(Ljava/util/List;)I

    move-result p1

    .line 96
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzq(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 112
    if-nez p2, :cond_8

    .line 113
    const/4 p0, 0x0

    return p0

    .line 114
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzxw;->zzz(Ljava/util/List;)I

    move-result p1

    .line 115
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzr(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 130
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 131
    if-nez p2, :cond_8

    .line 132
    const/4 p0, 0x0

    return p0

    .line 133
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzxw;->zzaa(Ljava/util/List;)I

    move-result p1

    .line 134
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzs(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 149
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 150
    if-nez p2, :cond_8

    .line 151
    const/4 p0, 0x0

    return p0

    .line 152
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzxw;->zzab(Ljava/util/List;)I

    move-result p1

    .line 153
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzt(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 169
    if-nez p2, :cond_8

    .line 170
    const/4 p0, 0x0

    return p0

    .line 171
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzxw;->zzac(Ljava/util/List;)I

    move-result p1

    .line 172
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzu(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 187
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 188
    if-nez p2, :cond_8

    .line 189
    const/4 p0, 0x0

    return p0

    .line 190
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzxw;->zzad(Ljava/util/List;)I

    move-result p1

    .line 191
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzv(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 193
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 194
    const/4 p2, 0x0

    if-nez p1, :cond_8

    .line 195
    return p2

    .line 196
    :cond_8
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzk(II)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method private static zzv(Z)Lcom/google/android/gms/internal/measurement/zzym;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/internal/measurement/zzym<",
            "**>;"
        }
    .end annotation

    .line 260
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzxw;->zzyi()Ljava/lang/Class;

    move-result-object v1

    .line 261
    if-nez v1, :cond_8

    .line 262
    return-object v0

    .line 263
    :cond_8
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzym;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_22} :catch_23

    return-object p0

    .line 264
    :catch_23
    move-exception p0

    .line 265
    return-object v0
.end method

.method static zzw(ILjava/util/List;Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 198
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 199
    if-nez p1, :cond_8

    .line 200
    const/4 p0, 0x0

    return p0

    .line 201
    :cond_8
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzve;->zzg(IJ)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method static zzx(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 203
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 204
    if-nez p1, :cond_8

    .line 205
    const/4 p0, 0x0

    return p0

    .line 206
    :cond_8
    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/measurement/zzve;->zzc(IZ)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method static zzx(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 59
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 60
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 61
    return v1

    .line 62
    :cond_8
    nop

    .line 63
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/zzws;

    if-eqz v2, :cond_1f

    .line 64
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzws;

    .line 65
    const/4 v2, 0x0

    :goto_10
    if-ge v1, v0, :cond_1e

    .line 66
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzws;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzve;->zzbb(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 68
    :cond_1e
    goto :goto_34

    .line 69
    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-ge v1, v0, :cond_34

    .line 70
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzve;->zzbb(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 72
    :cond_34
    :goto_34
    return v2
.end method

.method static zzy(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 78
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 79
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 80
    return v1

    .line 81
    :cond_8
    nop

    .line 82
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/zzws;

    if-eqz v2, :cond_1f

    .line 83
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzws;

    .line 84
    const/4 v2, 0x0

    :goto_10
    if-ge v1, v0, :cond_1e

    .line 85
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzws;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 87
    :cond_1e
    goto :goto_34

    .line 88
    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-ge v1, v0, :cond_34

    .line 89
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzve;->zzbc(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 91
    :cond_34
    :goto_34
    return v2
.end method

.method public static zzye()Lcom/google/android/gms/internal/measurement/zzym;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzym<",
            "**>;"
        }
    .end annotation

    .line 257
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzxw;->zzccs:Lcom/google/android/gms/internal/measurement/zzym;

    return-object v0
.end method

.method public static zzyf()Lcom/google/android/gms/internal/measurement/zzym;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzym<",
            "**>;"
        }
    .end annotation

    .line 258
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzxw;->zzcct:Lcom/google/android/gms/internal/measurement/zzym;

    return-object v0
.end method

.method public static zzyg()Lcom/google/android/gms/internal/measurement/zzym;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzym<",
            "**>;"
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzxw;->zzccu:Lcom/google/android/gms/internal/measurement/zzym;

    return-object v0
.end method

.method private static zzyh()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 266
    :try_start_0
    const-string v0, "com.google.protobuf.GeneratedMessage"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 267
    :catch_7
    move-exception v0

    .line 268
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zzyi()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 269
    :try_start_0
    const-string v0, "com.google.protobuf.UnknownFieldSetSchema"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 270
    :catch_7
    move-exception v0

    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method static zzz(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 97
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 98
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 99
    return v1

    .line 100
    :cond_8
    nop

    .line 101
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/zzws;

    if-eqz v2, :cond_1f

    .line 102
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzws;

    .line 103
    const/4 v2, 0x0

    :goto_10
    if-ge v1, v0, :cond_1e

    .line 104
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzws;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzve;->zzbd(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 106
    :cond_1e
    goto :goto_34

    .line 107
    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-ge v1, v0, :cond_34

    .line 108
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzve;->zzbd(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 110
    :cond_34
    :goto_34
    return v2
.end method
