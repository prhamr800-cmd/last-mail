###### Class com.google.android.gms.internal.measurement.zzvy (com.google.android.gms.internal.measurement.zzvy)
.class final Lcom/google/android/gms/internal/measurement/zzvy;
.super Lcom/google/android/gms/internal/measurement/zzuj;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzwd;
.implements Lcom/google/android/gms/internal/measurement/zzxp;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzuj<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzwd<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzxp;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zzcac:Lcom/google/android/gms/internal/measurement/zzvy;


# instance fields
.field private size:I

.field private zzcad:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 111
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzvy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzvy;-><init>()V

    .line 112
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcac:Lcom/google/android/gms/internal/measurement/zzvy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzuj;->zzsw()V

    .line 113
    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 1
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzvy;-><init>([II)V

    .line 2
    return-void
.end method

.method private constructor <init>([II)V
    .registers 3

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzuj;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    .line 6
    return-void
.end method

.method private final zzai(I)V
    .registers 3

    .line 77
    if-ltz p1, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    if-ge p1, v0, :cond_7

    .line 79
    return-void

    .line 78
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzvy;->zzaj(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzaj(I)Ljava/lang/String;
    .registers 5

    .line 80
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final zzp(II)V
    .registers 7

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzuj;->zzuh()V

    .line 38
    if-ltz p1, :cond_4a

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    if-gt p1, v0, :cond_4a

    .line 40
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_39

    .line 42
    :cond_1d
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 43
    new-array v0, v0, [I

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    .line 47
    :goto_39
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    aput p2, v0, p1

    .line 48
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    .line 49
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->modCount:I

    .line 50
    return-void

    .line 39
    :cond_4a
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzvy;->zzaj(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .registers 3

    .line 100
    check-cast p2, Ljava/lang/Integer;

    .line 101
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzvy;->zzp(II)V

    .line 102
    return-void
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzuj;->zzuh()V

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzvz;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzvy;

    if-nez v0, :cond_f

    .line 54
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzuj;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 55
    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzvy;

    .line 56
    iget v0, p1, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 57
    return v1

    .line 58
    :cond_17
    const v0, 0x7fffffff

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    sub-int/2addr v0, v2

    .line 59
    iget v2, p1, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    if-lt v0, v2, :cond_47

    .line 61
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    iget v2, p1, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    add-int/2addr v0, v2

    .line 62
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    array-length v2, v2

    if-le v0, v2, :cond_33

    .line 63
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    .line 64
    :cond_33
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    invoke-static {v2, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    .line 66
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->modCount:I

    .line 67
    return v0

    .line 60
    :cond_47
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    .line 14
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 15
    return v0

    .line 16
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzvy;

    if-nez v1, :cond_d

    .line 17
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzuj;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 18
    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzvy;

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    iget v2, p1, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    .line 20
    return v3

    .line 21
    :cond_17
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    .line 22
    const/4 v1, 0x0

    :goto_1a
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    if-ge v1, v2, :cond_2a

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    aget v2, v2, v1

    aget v4, p1, v1

    if-eq v2, v4, :cond_27

    .line 24
    return v3

    .line 25
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 26
    :cond_2a
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 108
    nop

    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzvy;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 110
    return-object p1
.end method

.method public final getInt(I)I
    .registers 3

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzvy;->zzai(I)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    aget p1, v0, p1

    return p1
.end method

.method public final hashCode()I
    .registers 4

    .line 27
    nop

    .line 28
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_3
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    if-ge v1, v2, :cond_11

    .line 29
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 31
    :cond_11
    return v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .registers 7

    .line 90
    nop

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzuj;->zzuh()V

    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzvy;->zzai(I)V

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    aget v0, v0, p1

    .line 94
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_1d

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    iget v4, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    :cond_1d
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    .line 97
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->modCount:I

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 99
    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 6

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzuj;->zzuh()V

    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    if-ge v1, v2, :cond_32

    .line 70
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 71
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    sub-int/2addr v3, v1

    invoke-static {p1, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    .line 73
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->modCount:I

    .line 74
    return v0

    .line 75
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 76
    :cond_32
    return v0
.end method

.method protected final removeRange(II)V
    .registers 6

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzuj;->zzuh()V

    .line 8
    if-lt p2, p1, :cond_1c

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    .line 12
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->modCount:I

    .line 13
    return-void

    .line 9
    :cond_1c
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 81
    check-cast p2, Ljava/lang/Integer;

    .line 82
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzuj;->zzuh()V

    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzvy;->zzai(I)V

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    aget v0, v0, p1

    .line 86
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    aput p2, v1, p1

    .line 87
    nop

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 89
    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    return v0
.end method

.method public final synthetic zzak(I)Lcom/google/android/gms/internal/measurement/zzwd;
    .registers 4

    .line 103
    nop

    .line 104
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    if-lt p1, v0, :cond_13

    .line 106
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzvy;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->zzcad:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzvy;-><init>([II)V

    .line 107
    return-object v0

    .line 105
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zzbn(I)V
    .registers 3

    .line 35
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzvy;->size:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzvy;->zzp(II)V

    .line 36
    return-void
.end method
