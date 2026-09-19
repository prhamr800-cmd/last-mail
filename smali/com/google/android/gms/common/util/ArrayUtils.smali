###### Class com.google.android.gms.common.util.ArrayUtils (com.google.android.gms.common.util.ArrayUtils)
.class public final Lcom/google/android/gms/common/util/ArrayUtils;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendToArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .line 102
    if-nez p0, :cond_d

    if-eqz p1, :cond_5

    goto :goto_d

    .line 103
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot generate array of generic type w/o class info"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_d
    :goto_d
    const/4 v0, 0x1

    if-nez p0, :cond_1b

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    goto :goto_21

    .line 106
    :cond_1b
    array-length v1, p0

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 107
    :goto_21
    array-length v1, p0

    sub-int/2addr v1, v0

    aput-object p1, p0, v1

    .line 108
    return-object p0
.end method

.method public static varargs concat([[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)[TT;"
        }
    .end annotation

    .line 74
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    .line 76
    :cond_f
    nop

    .line 77
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_12
    array-length v3, p0

    if-ge v0, v3, :cond_1c

    .line 78
    aget-object v3, p0, v0

    array-length v3, v3

    add-int/2addr v2, v3

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 80
    :cond_1c
    aget-object v0, p0, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 81
    aget-object v2, p0, v1

    array-length v2, v2

    .line 82
    const/4 v3, 0x1

    :goto_26
    array-length v4, p0

    if-ge v3, v4, :cond_34

    .line 83
    aget-object v4, p0, v3

    .line 84
    array-length v5, v4

    invoke-static {v4, v1, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    array-length v4, v4

    add-int/2addr v2, v4

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 87
    :cond_34
    return-object v0
.end method

.method public static varargs concatByteArrays([[B)[B
    .registers 7
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 88
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 89
    new-array p0, v1, [B

    return-object p0

    .line 90
    :cond_7
    nop

    .line 91
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_a
    array-length v3, p0

    if-ge v0, v3, :cond_14

    .line 92
    aget-object v3, p0, v0

    array-length v3, v3

    add-int/2addr v2, v3

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 94
    :cond_14
    aget-object v0, p0, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 95
    aget-object v2, p0, v1

    array-length v2, v2

    .line 96
    const/4 v3, 0x1

    :goto_1e
    array-length v4, p0

    if-ge v3, v4, :cond_2c

    .line 97
    aget-object v4, p0, v3

    .line 98
    array-length v5, v4

    invoke-static {v4, v1, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    array-length v4, v4

    add-int/2addr v2, v4

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 101
    :cond_2c
    return-object v0
.end method

.method public static contains([II)Z
    .registers 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 9
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 10
    return v0

    .line 11
    :cond_4
    array-length v1, p0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    .line 12
    if-ne v3, p1, :cond_e

    .line 13
    const/4 p0, 0x1

    return p0

    .line 14
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 15
    :cond_11
    return v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 1
    nop

    .line 2
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    array-length v1, p0

    goto :goto_7

    .line 3
    :cond_6
    const/4 v1, 0x0

    :goto_7
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    .line 4
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 5
    goto :goto_17

    .line 6
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 7
    :cond_16
    const/4 v2, -0x1

    .line 8
    :goto_17
    if-ltz v2, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v0
.end method

.method public static newArrayList()Ljava/util/ArrayList;
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static varargs removeAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 10
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 110
    return-object v0

    .line 111
    :cond_4
    if-eqz p1, :cond_58

    array-length v1, p1

    if-nez v1, :cond_a

    goto :goto_58

    .line 113
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p0

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 114
    nop

    .line 115
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_36

    .line 116
    array-length v2, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_22
    if-ge v4, v2, :cond_4a

    aget-object v6, p0, v4

    .line 117
    aget-object v7, p1, v3

    invoke-static {v7, v6}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_33

    .line 118
    add-int/lit8 v7, v5, 0x1

    aput-object v6, v1, v5

    .line 119
    move v5, v7

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 120
    :cond_36
    array-length v2, p0

    const/4 v5, 0x0

    :goto_38
    if-ge v3, v2, :cond_4a

    aget-object v4, p0, v3

    .line 121
    invoke-static {p1, v4}, Lcom/google/android/gms/common/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_47

    .line 122
    add-int/lit8 v6, v5, 0x1

    aput-object v4, v1, v5

    .line 123
    move v5, v6

    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 124
    :cond_4a
    nop

    .line 125
    if-nez v1, :cond_4e

    .line 126
    return-object v0

    .line 127
    :cond_4e
    nop

    .line 128
    array-length p0, v1

    if-eq v5, p0, :cond_56

    .line 129
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 130
    :cond_56
    nop

    .line 131
    return-object v1

    .line 112
    :cond_58
    :goto_58
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 133
    array-length v0, p0

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_11

    .line 136
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 138
    :cond_11
    return-object v1
.end method

.method public static toPrimitiveArray(Ljava/util/Collection;)[I
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    if-eqz p0, :cond_2d

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2d

    .line 141
    :cond_a
    nop

    .line 142
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 143
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 144
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 145
    nop

    .line 143
    move v0, v3

    goto :goto_15

    .line 146
    :cond_2c
    return-object v1

    .line 140
    :cond_2d
    :goto_2d
    new-array p0, v0, [I

    return-object p0
.end method

.method public static toWrapperArray([I)[Ljava/lang/Integer;
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 16
    if-nez p0, :cond_4

    .line 17
    const/4 p0, 0x0

    return-object p0

    .line 18
    :cond_4
    array-length v0, p0

    .line 19
    new-array v1, v0, [Ljava/lang/Integer;

    .line 20
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_15

    .line 21
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 23
    :cond_15
    return-object v1
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[D)V
    .registers 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 53
    array-length v0, p1

    .line 54
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    .line 55
    if-eqz v1, :cond_b

    .line 56
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_b
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 59
    :cond_17
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[F)V
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 46
    array-length v0, p1

    .line 47
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    .line 48
    if-eqz v1, :cond_b

    .line 49
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_b
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 52
    :cond_17
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[I)V
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 32
    array-length v0, p1

    .line 33
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    .line 34
    if-eqz v1, :cond_b

    .line 35
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_b
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 38
    :cond_17
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[J)V
    .registers 6
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 39
    array-length v0, p1

    .line 40
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    .line 41
    if-eqz v1, :cond_b

    .line 42
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_b
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 45
    :cond_17
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/StringBuilder;",
            "[TT;)V"
        }
    .end annotation

    .line 25
    array-length v0, p1

    .line 26
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    .line 27
    if-eqz v1, :cond_b

    .line 28
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    :cond_b
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 31
    :cond_17
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[Z)V
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 60
    array-length v0, p1

    .line 61
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    .line 62
    if-eqz v1, :cond_b

    .line 63
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_b
    aget-boolean v2, p1, v1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 66
    :cond_17
    return-void
.end method

.method public static writeStringArray(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 67
    array-length v0, p1

    .line 68
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1d

    .line 69
    if-eqz v1, :cond_b

    .line 70
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_b
    const-string v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 73
    :cond_1d
    return-void
.end method
