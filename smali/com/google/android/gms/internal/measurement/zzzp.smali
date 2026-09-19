###### Class com.google.android.gms.internal.measurement.zzzp (com.google.android.gms.internal.measurement.zzzp)
.class public final Lcom/google/android/gms/internal/measurement/zzzp;
.super Ljava/lang/Object;


# static fields
.field private static final ISO_8859_1:Ljava/nio/charset/Charset;

.field protected static final UTF_8:Ljava/nio/charset/Charset;

.field public static final zzcgg:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzp;->UTF_8:Ljava/nio/charset/Charset;

    .line 39
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzp;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzp;->zzcgg:Ljava/lang/Object;

    return-void
.end method

.method public static equals([I[I)Z
    .registers 3

    .line 1
    if-eqz p0, :cond_b

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    .line 3
    :cond_6
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    .line 2
    :cond_b
    :goto_b
    if-eqz p1, :cond_13

    array-length p0, p1

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static equals([J[J)Z
    .registers 3

    .line 4
    if-eqz p0, :cond_b

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    .line 6
    :cond_6
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0

    .line 5
    :cond_b
    :goto_b
    if-eqz p1, :cond_13

    array-length p0, p1

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 10

    .line 7
    nop

    .line 8
    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 9
    const/4 v1, 0x0

    goto :goto_7

    .line 8
    :cond_6
    array-length v1, p0

    .line 9
    :goto_7
    nop

    .line 10
    if-nez p1, :cond_c

    .line 11
    const/4 v2, 0x0

    goto :goto_d

    .line 10
    :cond_c
    array-length v2, p1

    .line 11
    :goto_d
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v3, v1, :cond_18

    aget-object v5, p0, v3

    if-nez v5, :cond_18

    .line 12
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 13
    :cond_18
    :goto_18
    if-ge v4, v2, :cond_21

    aget-object v5, p1, v4

    if-nez v5, :cond_21

    .line 14
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 15
    :cond_21
    const/4 v5, 0x1

    if-lt v3, v1, :cond_26

    .line 16
    const/4 v6, 0x1

    goto :goto_28

    .line 15
    :cond_26
    nop

    .line 16
    const/4 v6, 0x0

    :goto_28
    if-lt v4, v2, :cond_2c

    .line 17
    const/4 v7, 0x1

    goto :goto_2e

    .line 16
    :cond_2c
    nop

    .line 17
    const/4 v7, 0x0

    :goto_2e
    if-eqz v6, :cond_33

    if-eqz v7, :cond_33

    .line 18
    return v5

    .line 19
    :cond_33
    if-eq v6, v7, :cond_36

    .line 20
    return v0

    .line 21
    :cond_36
    aget-object v5, p0, v3

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 22
    return v0

    .line 23
    :cond_41
    add-int/lit8 v3, v3, 0x1

    .line 24
    add-int/lit8 v4, v4, 0x1

    .line 25
    goto :goto_f
.end method

.method public static hashCode([I)I
    .registers 2

    .line 26
    if-eqz p0, :cond_b

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    :cond_6
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x0

    return p0
.end method

.method public static hashCode([J)I
    .registers 2

    .line 27
    if-eqz p0, :cond_b

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_b

    :cond_6
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result p0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x0

    return p0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .registers 5

    .line 28
    nop

    .line 29
    const/4 v0, 0x0

    if-nez p0, :cond_6

    const/4 v1, 0x0

    goto :goto_7

    :cond_6
    array-length v1, p0

    :goto_7
    const/4 v2, 0x0

    :goto_8
    if-ge v0, v1, :cond_18

    .line 30
    aget-object v3, p0, v0

    .line 31
    if-eqz v3, :cond_15

    .line 32
    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 33
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 34
    :cond_18
    return v2
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzzl;Lcom/google/android/gms/internal/measurement/zzzl;)V
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    if-eqz v0, :cond_e

    .line 36
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzzl;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzzn;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzzn;

    iput-object p0, p1, Lcom/google/android/gms/internal/measurement/zzzl;->zzcfx:Lcom/google/android/gms/internal/measurement/zzzn;

    .line 37
    :cond_e
    return-void
.end method
