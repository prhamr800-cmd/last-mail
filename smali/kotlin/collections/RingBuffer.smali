###### Class kotlin.collections.RingBuffer (kotlin.collections.RingBuffer)
.class final Lkotlin/collections/RingBuffer;
.super Lkotlin/collections/AbstractList;
.source "SlidingWindow.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractList<",
        "TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n1#1,210:1\n202#1:211\n202#1:212\n202#1:213\n*E\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n113#1:211\n173#1:212\n186#1:213\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010(\n\u0002\u0008\u000c\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0016J\u0016\u0010\u0017\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0006H\u0096\u0002\u00a2\u0006\u0002\u0010\u0019J\u0006\u0010\u001a\u001a\u00020\u001bJ\u000f\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001dH\u0096\u0002J\u000e\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u0006J\u0015\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tH\u0014\u00a2\u0006\u0002\u0010!J\'\u0010 \u001a\u0008\u0012\u0004\u0012\u0002H\u00010\t\"\u0004\u0008\u0001\u0010\u00012\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\tH\u0015\u00a2\u0006\u0002\u0010#J9\u0010$\u001a\u00020\u0014\"\u0004\u0008\u0001\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\t2\u0006\u0010\u0015\u001a\u0002H\u00012\u0008\u0008\u0002\u0010%\u001a\u00020\u00062\u0008\u0008\u0002\u0010&\u001a\u00020\u0006H\u0002\u00a2\u0006\u0002\u0010\'J\u0015\u0010(\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u0006H\u0083\u0008R\u0018\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR$\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006@RX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\r\"\u0004\u0008\u0011\u0010\u0007R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lkotlin/collections/RingBuffer;",
        "T",
        "Lkotlin/collections/AbstractList;",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "capacity",
        "",
        "(I)V",
        "buffer",
        "",
        "",
        "[Ljava/lang/Object;",
        "getCapacity",
        "()I",
        "<set-?>",
        "size",
        "getSize",
        "setSize",
        "startIndex",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)V",
        "get",
        "index",
        "(I)Ljava/lang/Object;",
        "isFull",
        "",
        "iterator",
        "",
        "removeFirst",
        "n",
        "toArray",
        "()[Ljava/lang/Object;",
        "array",
        "([Ljava/lang/Object;)[Ljava/lang/Object;",
        "fill",
        "fromIndex",
        "toIndex",
        "([Ljava/lang/Object;Ljava/lang/Object;II)V",
        "forward",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private final buffer:[Ljava/lang/Object;

.field private final capacity:I

.field private size:I

.field private startIndex:I


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1, "capacity"    # I

    .line 99
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    iput p1, p0, Lkotlin/collections/RingBuffer;->capacity:I

    .line 101
    iget v0, p0, Lkotlin/collections/RingBuffer;->capacity:I

    const/4 v1, 0x0

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_16

    .line 104
    iget v0, p0, Lkotlin/collections/RingBuffer;->capacity:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    return-void

    .line 101
    :cond_16
    move v0, v1

    .local v0, "$i$a$1$require":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ring buffer capacity should not be negative but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlin/collections/RingBuffer;->capacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$1$require":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final synthetic access$forward(Lkotlin/collections/RingBuffer;II)I
    .registers 4
    .param p0, "$this"    # Lkotlin/collections/RingBuffer;
    .param p1, "$receiver"    # I
    .param p2, "n"    # I

    .line 99
    invoke-direct {p0, p1, p2}, Lkotlin/collections/RingBuffer;->forward(II)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getBuffer$p(Lkotlin/collections/RingBuffer;)[Ljava/lang/Object;
    .registers 2
    .param p0, "$this"    # Lkotlin/collections/RingBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 99
    iget-object v0, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getSize$p(Lkotlin/collections/RingBuffer;)I
    .registers 2
    .param p0, "$this"    # Lkotlin/collections/RingBuffer;

    .line 99
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getStartIndex$p(Lkotlin/collections/RingBuffer;)I
    .registers 2
    .param p0, "$this"    # Lkotlin/collections/RingBuffer;

    .line 99
    iget v0, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    return v0
.end method

.method public static final synthetic access$setSize$p(Lkotlin/collections/RingBuffer;I)V
    .registers 2
    .param p0, "$this"    # Lkotlin/collections/RingBuffer;
    .param p1, "<set-?>"    # I

    .line 99
    invoke-direct {p0, p1}, Lkotlin/collections/RingBuffer;->setSize(I)V

    return-void
.end method

.method public static final synthetic access$setStartIndex$p(Lkotlin/collections/RingBuffer;I)V
    .registers 2
    .param p0, "$this"    # Lkotlin/collections/RingBuffer;
    .param p1, "<set-?>"    # I

    .line 99
    iput p1, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    return-void
.end method

.method private final fill([Ljava/lang/Object;Ljava/lang/Object;II)V
    .registers 7
    .param p1, "$receiver"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "element"    # Ljava/lang/Object;
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;II)V"
        }
    .end annotation

    .line 206
    add-int/lit8 v0, p4, -0x1

    if-gt p3, v0, :cond_c

    move v1, p3

    .line 207
    .local v1, "idx":I
    :goto_5
    aput-object p2, p1, v1

    .line 206
    if-eq v1, v0, :cond_c

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 209
    .end local v1    # "idx":I
    :cond_c
    return-void
.end method

.method static bridge synthetic fill$default(Lkotlin/collections/RingBuffer;[Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_5

    .line 205
    const/4 p3, 0x0

    :cond_5
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_a

    array-length p4, p1

    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/collections/RingBuffer;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method

.method private final forward(II)I
    .registers 6
    .param p1, "$receiver"    # I
    .param p2, "n"    # I

    const/4 v0, 0x0

    .line 202
    .local v0, "$i$f$forward":I
    add-int v1, p1, p2

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->getCapacity()I

    move-result v2

    rem-int/2addr v1, v2

    return v1
.end method

.method private setSize(I)V
    .registers 2
    .param p1, "<set-?>"    # I

    .line 107
    iput p1, p0, Lkotlin/collections/RingBuffer;->size:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .registers 9
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->isFull()Z

    move-result v0

    if-nez v0, :cond_23

    .line 173
    iget-object v0, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    .local v1, "$receiver$iv":I
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v2

    .local v2, "n$iv":I
    move-object v3, p0

    .local v3, "this_$iv":Lkotlin/collections/RingBuffer;
    const/4 v4, 0x0

    .line 212
    .local v4, "$i$f$forward":I
    add-int v5, v1, v2

    invoke-virtual {v3}, Lkotlin/collections/RingBuffer;->getCapacity()I

    move-result v6

    rem-int/2addr v5, v6

    .end local v1    # "$receiver$iv":I
    .end local v2    # "n$iv":I
    .end local v3    # "this_$iv":Lkotlin/collections/RingBuffer;
    .end local v4    # "$i$f$forward":I
    aput-object p1, v0, v5

    .line 174
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/collections/RingBuffer;->setSize(I)V

    .line 175
    return-void

    .line 170
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ring buffer is full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 111
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 112
    nop

    .line 113
    iget-object v0, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    .local v1, "$receiver$iv":I
    move-object v2, p0

    .local v2, "this_$iv":Lkotlin/collections/RingBuffer;
    const/4 v3, 0x0

    .line 211
    .local v3, "$i$f$forward":I
    add-int v4, v1, p1

    invoke-virtual {v2}, Lkotlin/collections/RingBuffer;->getCapacity()I

    move-result v5

    rem-int/2addr v4, v5

    .end local v1    # "$receiver$iv":I
    .end local v2    # "this_$iv":Lkotlin/collections/RingBuffer;
    .end local v3    # "$i$f$forward":I
    aget-object v0, v0, v4

    return-object v0
.end method

.method public final getCapacity()I
    .registers 2

    .line 99
    iget v0, p0, Lkotlin/collections/RingBuffer;->capacity:I

    return v0
.end method

.method public getSize()I
    .registers 2

    .line 107
    iget v0, p0, Lkotlin/collections/RingBuffer;->size:I

    return v0
.end method

.method public final isFull()Z
    .registers 3

    .line 116
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v0

    iget v1, p0, Lkotlin/collections/RingBuffer;->capacity:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 118
    new-instance v0, Lkotlin/collections/RingBuffer$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/collections/RingBuffer$iterator$1;-><init>(Lkotlin/collections/RingBuffer;)V

    check-cast v0, Ljava/util/Iterator;

    .line 132
    return-object v0
.end method

.method public final removeFirst(I)V
    .registers 9
    .param p1, "n"    # I

    .line 181
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_6d

    .line 182
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v2

    if-gt p1, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_43

    .line 184
    if-lez p1, :cond_42

    .line 185
    iget v0, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    .line 186
    .local v0, "start":I
    move-object v2, p0

    .local v2, "this_$iv":Lkotlin/collections/RingBuffer;
    move v3, v0

    .local v3, "$receiver$iv":I
    move v4, v1

    .line 213
    .local v4, "$i$f$forward":I
    add-int v5, v3, p1

    invoke-virtual {v2}, Lkotlin/collections/RingBuffer;->getCapacity()I

    move-result v6

    rem-int/2addr v5, v6

    .line 186
    .end local v2    # "this_$iv":Lkotlin/collections/RingBuffer;
    .end local v3    # "$receiver$iv":I
    .end local v4    # "$i$f$forward":I
    move v2, v5

    .line 188
    .local v2, "end":I
    const/4 v3, 0x0

    if-le v0, v2, :cond_32

    .line 189
    iget-object v4, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    iget v5, p0, Lkotlin/collections/RingBuffer;->capacity:I

    invoke-direct {p0, v4, v3, v0, v5}, Lkotlin/collections/RingBuffer;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 190
    iget-object v4, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    invoke-direct {p0, v4, v3, v1, v2}, Lkotlin/collections/RingBuffer;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_37

    .line 192
    :cond_32
    iget-object v1, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    invoke-direct {p0, v1, v3, v0, v2}, Lkotlin/collections/RingBuffer;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 193
    :goto_37
    nop

    .line 195
    iput v2, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    .line 196
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-direct {p0, v1}, Lkotlin/collections/RingBuffer;->setSize(I)V

    .line 198
    .end local v0    # "start":I
    .end local v2    # "end":I
    :cond_42
    return-void

    .line 182
    :cond_43
    move v0, v1

    .local v0, "$i$a$2$require":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n shouldn\'t be greater than the buffer size: n = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$2$require":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 181
    :cond_6d
    move v0, v1

    .local v0, "$i$a$1$require":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n shouldn\'t be negative but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$1$require":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 162
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lkotlin/collections/RingBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .param p1, "array"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    nop

    .line 137
    array-length v0, p1

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1c

    .line 136
    :cond_1b
    move-object v0, p1

    .line 139
    .local v0, "result":[Ljava/lang/Object;
    :goto_1c
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v1

    .line 141
    .local v1, "size":I
    const/4 v2, 0x0

    .line 142
    .local v2, "widx":I
    iget v3, p0, Lkotlin/collections/RingBuffer;->startIndex:I

    .line 144
    .local v3, "idx":I
    :goto_23
    if-ge v2, v1, :cond_34

    iget v4, p0, Lkotlin/collections/RingBuffer;->capacity:I

    if-ge v3, v4, :cond_34

    .line 145
    iget-object v4, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, v3

    aput-object v4, v0, v2

    .line 146
    add-int/lit8 v2, v2, 0x1

    .line 147
    add-int/lit8 v3, v3, 0x1

    .line 144
    goto :goto_23

    .line 150
    :cond_34
    const/4 v3, 0x0

    .line 151
    :goto_35
    if-ge v2, v1, :cond_42

    .line 152
    iget-object v4, p0, Lkotlin/collections/RingBuffer;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, v3

    aput-object v4, v0, v2

    .line 153
    add-int/lit8 v2, v2, 0x1

    .line 154
    add-int/lit8 v3, v3, 0x1

    .line 151
    goto :goto_35

    .line 156
    :cond_42
    array-length v4, v0

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v5

    if-le v4, v5, :cond_50

    invoke-virtual {p0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v4

    const/4 v5, 0x0

    aput-object v5, v0, v4

    .line 158
    :cond_50
    if-eqz v0, :cond_53

    return-object v0

    :cond_53
    new-instance v4, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

###### Class kotlin.collections.RingBuffer.AnonymousClass1 (kotlin.collections.RingBuffer$iterator$1)
.class public final Lkotlin/collections/RingBuffer$iterator$1;
.super Lkotlin/collections/AbstractIterator;
.source "SlidingWindow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/RingBuffer;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractIterator<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n+ 2 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n1#1,210:1\n202#2:211\n*E\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n*L\n128#1:211\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u00020\u0007H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "kotlin/collections/RingBuffer$iterator$1",
        "Lkotlin/collections/AbstractIterator;",
        "(Lkotlin/collections/RingBuffer;)V",
        "count",
        "",
        "index",
        "computeNext",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private count:I

.field private index:I

.field final synthetic this$0:Lkotlin/collections/RingBuffer;


# direct methods
.method constructor <init>(Lkotlin/collections/RingBuffer;)V
    .registers 3
    .param p1, "$outer"    # Lkotlin/collections/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lkotlin/collections/RingBuffer$iterator$1;->this$0:Lkotlin/collections/RingBuffer;

    invoke-direct {p0}, Lkotlin/collections/AbstractIterator;-><init>()V

    .line 119
    invoke-virtual {p1}, Lkotlin/collections/RingBuffer;->size()I

    move-result v0

    iput v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->count:I

    .line 120
    invoke-static {p1}, Lkotlin/collections/RingBuffer;->access$getStartIndex$p(Lkotlin/collections/RingBuffer;)I

    move-result v0

    iput v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->index:I

    return-void
.end method


# virtual methods
.method protected computeNext()V
    .registers 7

    .line 123
    iget v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->count:I

    if-nez v0, :cond_8

    .line 124
    invoke-virtual {p0}, Lkotlin/collections/RingBuffer$iterator$1;->done()V

    goto :goto_2b

    .line 126
    :cond_8
    nop

    .line 127
    iget-object v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->this$0:Lkotlin/collections/RingBuffer;

    invoke-static {v0}, Lkotlin/collections/RingBuffer;->access$getBuffer$p(Lkotlin/collections/RingBuffer;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlin/collections/RingBuffer$iterator$1;->index:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/collections/RingBuffer$iterator$1;->setNext(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->this$0:Lkotlin/collections/RingBuffer;

    .local v0, "this_$iv":Lkotlin/collections/RingBuffer;
    iget v1, p0, Lkotlin/collections/RingBuffer$iterator$1;->index:I

    .local v1, "$receiver$iv":I
    const/4 v2, 0x1

    .local v2, "n$iv":I
    const/4 v3, 0x0

    .line 211
    .local v3, "$i$f$forward":I
    add-int v4, v1, v2

    invoke-virtual {v0}, Lkotlin/collections/RingBuffer;->getCapacity()I

    move-result v5

    rem-int/2addr v4, v5

    .end local v0    # "this_$iv":Lkotlin/collections/RingBuffer;
    .end local v1    # "$receiver$iv":I
    .end local v2    # "n$iv":I
    .end local v3    # "$i$f$forward":I
    iput v4, p0, Lkotlin/collections/RingBuffer$iterator$1;->index:I

    .line 129
    iget v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/collections/RingBuffer$iterator$1;->count:I

    .line 130
    :goto_2b
    nop

    .line 131
    return-void
.end method
