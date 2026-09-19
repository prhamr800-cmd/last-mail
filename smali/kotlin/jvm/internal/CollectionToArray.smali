###### Class kotlin.jvm.internal.CollectionToArray (kotlin.jvm.internal.CollectionToArray)
.class public Lkotlin/jvm/internal/CollectionToArray;
.super Ljava/lang/Object;
.source "CollectionToArray.java"


# static fields
.field private static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lkotlin/jvm/internal/CollectionToArray;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method private static finishToArray([Ljava/lang/Object;Ljava/util/Iterator;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Iterator<",
            "*>;)[TT;"
        }
    .end annotation

    .line 66
    .local p0, "r":[Ljava/lang/Object;, "[TT;"
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    array-length v0, p0

    .line 67
    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 68
    array-length v1, p0

    .line 69
    .local v1, "cap":I
    if-ne v0, v1, :cond_27

    .line 70
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x3

    .line 71
    .local v2, "newCap":I
    if-gt v2, v1, :cond_23

    .line 72
    const v3, 0x7fffffff

    if-eq v1, v3, :cond_1b

    .line 75
    const v2, 0x7fffffff

    goto :goto_23

    .line 73
    :cond_1b
    new-instance v3, Ljava/lang/OutOfMemoryError;

    const-string v4, "Required array size too large"

    invoke-direct {v3, v4}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 77
    :cond_23
    :goto_23
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 79
    .end local v2    # "newCap":I
    :cond_27
    add-int/lit8 v2, v0, 0x1

    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p0, v0

    .line 80
    .end local v0    # "i":I
    .end local v1    # "cap":I
    nop

    .line 66
    move v0, v2

    goto :goto_1

    .line 82
    .end local v2    # "i":I
    .restart local v0    # "i":I
    :cond_32
    array-length v1, p0

    if-ne v0, v1, :cond_37

    move-object v1, p0

    goto :goto_3b

    :cond_37
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :goto_3b
    return-object v1
.end method

.method public static toArray(Ljava/util/Collection;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 30
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 31
    .local v0, "size":I
    if-nez v0, :cond_9

    sget-object v1, Lkotlin/jvm/internal/CollectionToArray;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    return-object v1

    .line 33
    :cond_9
    new-array v1, v0, [Ljava/lang/Object;

    .line 34
    .local v1, "r":[Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 35
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v0, :cond_26

    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 38
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 40
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 35
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 42
    .end local v3    # "i":I
    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-static {v1, v2}, Lkotlin/jvm/internal/CollectionToArray;->finishToArray([Ljava/lang/Object;Ljava/util/Iterator;)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_32

    :cond_31
    move-object v3, v1

    :goto_32
    return-object v3
.end method

.method public static toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;[TT;)[TT;"
        }
    .end annotation

    .line 47
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 48
    .local v0, "size":I
    array-length v1, p1

    if-lt v1, v0, :cond_9

    move-object v1, p1

    goto :goto_17

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 51
    .local v1, "r":[Ljava/lang/Object;, "[TT;"
    :goto_17
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 53
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    array-length v4, v1

    if-ge v3, v4, :cond_39

    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_30

    .line 55
    if-eq p1, v1, :cond_2c

    .line 56
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 57
    :cond_2c
    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 58
    return-object v1

    .line 60
    :cond_30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 53
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 62
    .end local v3    # "i":I
    :cond_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-static {v1, v2}, Lkotlin/jvm/internal/CollectionToArray;->finishToArray([Ljava/lang/Object;Ljava/util/Iterator;)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_45

    :cond_44
    move-object v3, v1

    :goto_45
    return-object v3
.end method
