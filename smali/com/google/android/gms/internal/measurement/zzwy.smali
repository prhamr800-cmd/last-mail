###### Class com.google.android.gms.internal.measurement.zzwy (com.google.android.gms.internal.measurement.zzwy)
.class public final Lcom/google/android/gms/internal/measurement/zzwy;
.super Ljava/util/LinkedHashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final zzcbp:Lcom/google/android/gms/internal/measurement/zzwy;


# instance fields
.field private zzbup:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 68
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzwy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzwy;-><init>()V

    .line 69
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbp:Lcom/google/android/gms/internal/measurement/zzwy;

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzwy;->zzbup:Z

    .line 71
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzbup:Z

    .line 3
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 5
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzbup:Z

    .line 6
    return-void
.end method

.method private static zzab(Ljava/lang/Object;)I
    .registers 2

    .line 46
    instance-of v0, p0, [B

    if-eqz v0, :cond_b

    .line 47
    check-cast p0, [B

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzvz;->hashCode([B)I

    move-result p0

    return p0

    .line 48
    :cond_b
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzwa;

    if-nez v0, :cond_14

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    .line 49
    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static zzxn()Lcom/google/android/gms/internal/measurement/zzwy;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/measurement/zzwy<",
            "TK;TV;>;"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzwy;->zzcbp:Lcom/google/android/gms/internal/measurement/zzwy;

    return-object v0
.end method

.method private final zzxp()V
    .registers 2

    .line 63
    nop

    .line 64
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzbup:Z

    .line 65
    if-eqz v0, :cond_6

    .line 67
    return-void

    .line 66
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final clear()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzwy;->zzxp()V

    .line 14
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 15
    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzwy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    .line 30
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    check-cast p1, Ljava/util/Map;

    .line 31
    const/4 v0, 0x1

    if-eq p0, p1, :cond_5b

    .line 32
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_17

    .line 33
    nop

    .line 45
    :goto_15
    const/4 p1, 0x0

    goto :goto_5d

    .line 34
    :cond_17
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 36
    goto :goto_15

    .line 37
    :cond_36
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 38
    instance-of v5, v4, [B

    if-eqz v5, :cond_53

    instance-of v5, v3, [B

    if-eqz v5, :cond_53

    .line 39
    check-cast v4, [B

    check-cast v3, [B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    goto :goto_57

    .line 40
    :cond_53
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 41
    :goto_57
    if-nez v3, :cond_5a

    .line 42
    goto :goto_15

    .line 43
    :cond_5a
    goto :goto_1f

    .line 44
    :cond_5b
    nop

    .line 45
    const/4 p1, 0x1

    :goto_5d
    if-eqz p1, :cond_60

    return v0

    :cond_60
    return v1
.end method

.method public final hashCode()I
    .registers 5

    .line 51
    nop

    .line 52
    nop

    .line 53
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 54
    nop

    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzwy;->zzab(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzwy;->zzab(Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 56
    goto :goto_b

    .line 57
    :cond_2b
    nop

    .line 58
    return v1
.end method

.method public final isMutable()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzbup:Z

    return v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzwy;->zzxp()V

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzvz;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzvz;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzwy;->zzxp()V

    .line 21
    nop

    .line 22
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzvz;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzvz;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    goto :goto_c

    .line 26
    :cond_21
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 27
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzwy;->zzxp()V

    .line 29
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzwy;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzwy<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzwy;->zzxp()V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzwy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzwy;->putAll(Ljava/util/Map;)V

    .line 11
    :cond_c
    return-void
.end method

.method public final zzsw()V
    .registers 2

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzwy;->zzbup:Z

    .line 61
    return-void
.end method

.method public final zzxo()Lcom/google/android/gms/internal/measurement/zzwy;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzwy<",
            "TK;TV;>;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzwy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzwy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzwy;-><init>()V

    return-object v0

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzwy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzwy;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
