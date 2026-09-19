###### Class rx.internal.util.IndexedRingBuffer (rx.internal.util.IndexedRingBuffer)
.class public final Lrx/internal/util/IndexedRingBuffer;
.super Ljava/lang/Object;
.source "IndexedRingBuffer.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/IndexedRingBuffer$IndexSection;,
        Lrx/internal/util/IndexedRingBuffer$ElementSection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final POOL:Lrx/internal/util/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/ObjectPool<",
            "Lrx/internal/util/IndexedRingBuffer<",
            "*>;>;"
        }
    .end annotation
.end field

.field static final SIZE:I

.field static _size:I


# instance fields
.field private final elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/IndexedRingBuffer$ElementSection<",
            "TE;>;"
        }
    .end annotation
.end field

.field final index:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

.field final removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 51
    new-instance v0, Lrx/internal/util/IndexedRingBuffer$1;

    invoke-direct {v0}, Lrx/internal/util/IndexedRingBuffer$1;-><init>()V

    sput-object v0, Lrx/internal/util/IndexedRingBuffer;->POOL:Lrx/internal/util/ObjectPool;

    .line 241
    const/16 v0, 0x100

    sput v0, Lrx/internal/util/IndexedRingBuffer;->_size:I

    .line 244
    invoke-static {}, Lrx/internal/util/PlatformDependent;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 245
    const/16 v0, 0x8

    sput v0, Lrx/internal/util/IndexedRingBuffer;->_size:I

    .line 249
    :cond_15
    const-string v0, "rx.indexed-ring-buffer.size"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "sizeFromProperty":Ljava/lang/String;
    if-eqz v0, :cond_47

    .line 252
    :try_start_1d
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lrx/internal/util/IndexedRingBuffer;->_size:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_23} :catch_24

    .line 255
    goto :goto_47

    .line 253
    :catch_24
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set \'rx.indexed-ring-buffer.size\' with value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 259
    .end local v0    # "sizeFromProperty":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_47
    :goto_47
    sget v0, Lrx/internal/util/IndexedRingBuffer;->_size:I

    sput v0, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 293
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/util/IndexedRingBuffer$ElementSection;-><init>(Lrx/internal/util/IndexedRingBuffer$1;)V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 66
    new-instance v0, Lrx/internal/util/IndexedRingBuffer$IndexSection;

    invoke-direct {v0, v1}, Lrx/internal/util/IndexedRingBuffer$IndexSection;-><init>(Lrx/internal/util/IndexedRingBuffer$1;)V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 294
    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/util/IndexedRingBuffer$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/internal/util/IndexedRingBuffer$1;

    .line 49
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/IndexedRingBuffer;-><init>()V

    return-void
.end method

.method private forEach(Lrx/functions/Func1;II)I
    .registers 11
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;II)I"
        }
    .end annotation

    .line 450
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    .local p1, "action":Lrx/functions/Func1;, "Lrx/functions/Func1<-TE;Ljava/lang/Boolean;>;"
    move v0, p2

    .line 451
    .local v0, "lastIndex":I
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 452
    .local v1, "maxIndex":I
    move v2, p2

    .line 453
    .local v2, "realIndex":I
    iget-object v3, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 455
    .local v3, "section":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    sget v4, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-lt p2, v4, :cond_15

    .line 457
    invoke-direct {p0, p2}, Lrx/internal/util/IndexedRingBuffer;->getElementSection(I)Lrx/internal/util/IndexedRingBuffer$ElementSection;

    move-result-object v3

    .line 458
    sget v4, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    rem-int/2addr p2, v4

    .line 461
    :cond_15
    :goto_15
    if-eqz v3, :cond_52

    .line 462
    move v4, v0

    move v0, p2

    .local v0, "i":I
    .local v4, "lastIndex":I
    :goto_19
    sget v5, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge v0, v5, :cond_44

    .line 463
    if-ge v2, v1, :cond_40

    if-lt v2, p3, :cond_22

    goto :goto_40

    .line 467
    :cond_22
    invoke-static {v3}, Lrx/internal/util/IndexedRingBuffer$ElementSection;->access$300(Lrx/internal/util/IndexedRingBuffer$ElementSection;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 468
    .local v5, "element":Ljava/lang/Object;, "TE;"
    if-nez v5, :cond_2d

    .line 469
    goto :goto_3b

    .line 471
    :cond_2d
    move v4, v2

    .line 472
    invoke-interface {p1, v5}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 473
    .local v6, "continueLoop":Z
    if-nez v6, :cond_3b

    .line 474
    return v4

    .line 462
    .end local v5    # "element":Ljava/lang/Object;, "TE;"
    .end local v6    # "continueLoop":Z
    :cond_3b
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 464
    :cond_40
    :goto_40
    const/4 v3, 0x0

    .line 465
    nop

    .line 482
    move v0, v4

    goto :goto_52

    .line 477
    .end local v0    # "i":I
    :cond_44
    invoke-static {v3}, Lrx/internal/util/IndexedRingBuffer$ElementSection;->access$400(Lrx/internal/util/IndexedRingBuffer$ElementSection;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 478
    const/4 p2, 0x0

    .line 461
    move v0, v4

    goto :goto_15

    .line 482
    .end local v4    # "lastIndex":I
    .local v0, "lastIndex":I
    :cond_52
    :goto_52
    return v2
.end method

.method private getElementSection(I)Lrx/internal/util/IndexedRingBuffer$ElementSection;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/internal/util/IndexedRingBuffer$ElementSection<",
            "TE;>;"
        }
    .end annotation

    .line 345
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    sget v0, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge p1, v0, :cond_7

    .line 346
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    return-object v0

    .line 350
    :cond_7
    sget v0, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    div-int v0, p1, v0

    .line 351
    .local v0, "numSections":I
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 352
    .local v1, "a":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_17

    .line 353
    invoke-virtual {v1}, Lrx/internal/util/IndexedRingBuffer$ElementSection;->getNext()Lrx/internal/util/IndexedRingBuffer$ElementSection;

    move-result-object v1

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 355
    .end local v2    # "i":I
    :cond_17
    return-object v1
.end method

.method private declared-synchronized getIndexForAdd()I
    .registers 5

    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    monitor-enter p0

    .line 363
    :try_start_1
    invoke-direct {p0}, Lrx/internal/util/IndexedRingBuffer;->getIndexFromPreviouslyRemoved()I

    move-result v0

    .line 364
    .local v0, "ri":I
    if-ltz v0, :cond_2e

    .line 365
    sget v1, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_13

    .line 367
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

    invoke-virtual {v1, v0, v2}, Lrx/internal/util/IndexedRingBuffer$IndexSection;->getAndSet(II)I

    move-result v1

    goto :goto_20

    .line 369
    :cond_13
    sget v1, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    rem-int v1, v0, v1

    .line 370
    .local v1, "sectionIndex":I
    invoke-direct {p0, v0}, Lrx/internal/util/IndexedRingBuffer;->getIndexSection(I)Lrx/internal/util/IndexedRingBuffer$IndexSection;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lrx/internal/util/IndexedRingBuffer$IndexSection;->getAndSet(II)I

    move-result v2

    move v1, v2

    .line 372
    .local v1, "i":I
    :goto_20
    iget-object v2, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v1, v2, :cond_34

    .line 374
    iget-object v2, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    goto :goto_34

    .line 377
    .end local v1    # "i":I
    :cond_2e
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    .line 379
    .restart local v1    # "i":I
    :cond_34
    :goto_34
    monitor-exit p0

    return v1

    .line 362
    .end local v0    # "ri":I
    .end local v1    # "i":I
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getIndexFromPreviouslyRemoved()I
    .registers 4

    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    monitor-enter p0

    .line 394
    :goto_1
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 395
    .local v0, "currentRi":I
    if-lez v0, :cond_18

    .line 397
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1b

    if-eqz v1, :cond_17

    .line 398
    add-int/lit8 v1, v0, -0x1

    monitor-exit p0

    return v1

    .line 404
    .end local v0    # "currentRi":I
    :cond_17
    goto :goto_1

    .line 402
    .restart local v0    # "currentRi":I
    :cond_18
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 393
    .end local v0    # "currentRi":I
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getIndexSection(I)Lrx/internal/util/IndexedRingBuffer$IndexSection;
    .registers 5
    .param p1, "index"    # I

    .line 330
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    sget v0, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge p1, v0, :cond_7

    .line 331
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

    return-object v0

    .line 335
    :cond_7
    sget v0, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    div-int v0, p1, v0

    .line 336
    .local v0, "numSections":I
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

    .line 337
    .local v1, "a":Lrx/internal/util/IndexedRingBuffer$IndexSection;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_17

    .line 338
    invoke-virtual {v1}, Lrx/internal/util/IndexedRingBuffer$IndexSection;->getNext()Lrx/internal/util/IndexedRingBuffer$IndexSection;

    move-result-object v1

    .line 337
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 340
    .end local v2    # "i":I
    :cond_17
    return-object v1
.end method

.method public static final getInstance()Lrx/internal/util/IndexedRingBuffer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/util/IndexedRingBuffer<",
            "TT;>;"
        }
    .end annotation

    .line 62
    sget-object v0, Lrx/internal/util/IndexedRingBuffer;->POOL:Lrx/internal/util/ObjectPool;

    invoke-virtual {v0}, Lrx/internal/util/ObjectPool;->borrowObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/util/IndexedRingBuffer;

    return-object v0
.end method

.method private declared-synchronized pushRemovedIndex(I)V
    .registers 5
    .param p1, "elementIndex"    # I

    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    monitor-enter p0

    .line 412
    :try_start_1
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 413
    .local v0, "i":I
    sget v1, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge v0, v1, :cond_11

    .line 415
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

    invoke-virtual {v1, v0, p1}, Lrx/internal/util/IndexedRingBuffer$IndexSection;->set(II)V

    goto :goto_1c

    .line 417
    :cond_11
    sget v1, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    rem-int v1, v0, v1

    .line 418
    .local v1, "sectionIndex":I
    invoke-direct {p0, v0}, Lrx/internal/util/IndexedRingBuffer;->getIndexSection(I)Lrx/internal/util/IndexedRingBuffer$IndexSection;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lrx/internal/util/IndexedRingBuffer$IndexSection;->set(II)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 420
    .end local v1    # "sectionIndex":I
    :goto_1c
    monitor-exit p0

    return-void

    .line 411
    .end local v0    # "i":I
    .end local p1    # "elementIndex":I
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 303
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lrx/internal/util/IndexedRingBuffer;->getIndexForAdd()I

    move-result v0

    .line 304
    .local v0, "i":I
    sget v1, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge v0, v1, :cond_12

    .line 306
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    invoke-static {v1}, Lrx/internal/util/IndexedRingBuffer$ElementSection;->access$300(Lrx/internal/util/IndexedRingBuffer$ElementSection;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 307
    return v0

    .line 309
    :cond_12
    sget v1, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    rem-int v1, v0, v1

    .line 310
    .local v1, "sectionIndex":I
    invoke-direct {p0, v0}, Lrx/internal/util/IndexedRingBuffer;->getElementSection(I)Lrx/internal/util/IndexedRingBuffer$ElementSection;

    move-result-object v2

    invoke-static {v2}, Lrx/internal/util/IndexedRingBuffer$ElementSection;->access$300(Lrx/internal/util/IndexedRingBuffer$ElementSection;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 311
    return v0
.end method

.method public forEach(Lrx/functions/Func1;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 428
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    .local p1, "action":Lrx/functions/Func1;, "Lrx/functions/Func1<-TE;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lrx/internal/util/IndexedRingBuffer;->forEach(Lrx/functions/Func1;I)I

    move-result v0

    return v0
.end method

.method public forEach(Lrx/functions/Func1;I)I
    .registers 5
    .param p2, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;I)I"
        }
    .end annotation

    .line 438
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    .local p1, "action":Lrx/functions/Func1;, "Lrx/functions/Func1<-TE;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lrx/internal/util/IndexedRingBuffer;->forEach(Lrx/functions/Func1;II)I

    move-result v0

    .line 439
    .local v0, "endedAt":I
    if-lez p2, :cond_1a

    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_1a

    .line 441
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Lrx/internal/util/IndexedRingBuffer;->forEach(Lrx/functions/Func1;II)I

    move-result v0

    goto :goto_23

    .line 442
    :cond_1a
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_23

    .line 444
    const/4 v0, 0x0

    .line 446
    :cond_23
    :goto_23
    return v0
.end method

.method public isUnsubscribed()Z
    .registers 2

    .line 424
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public releaseToPool()V
    .registers 8

    .line 267
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 268
    .local v0, "maxIndex":I
    const/4 v1, 0x0

    .line 269
    .local v1, "realIndex":I
    iget-object v2, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 270
    .local v2, "section":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    :goto_9
    const/4 v3, 0x0

    if-eqz v2, :cond_32

    .line 271
    move v4, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v4, "realIndex":I
    :goto_e
    sget v5, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge v1, v5, :cond_25

    .line 272
    if-lt v4, v0, :cond_18

    .line 273
    const/4 v2, 0x0

    .line 274
    nop

    .line 283
    move v1, v4

    goto :goto_32

    .line 278
    :cond_18
    invoke-static {v2}, Lrx/internal/util/IndexedRingBuffer$ElementSection;->access$300(Lrx/internal/util/IndexedRingBuffer$ElementSection;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 271
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 280
    .end local v1    # "i":I
    :cond_25
    invoke-static {v2}, Lrx/internal/util/IndexedRingBuffer$ElementSection;->access$400(Lrx/internal/util/IndexedRingBuffer$ElementSection;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 269
    move v1, v4

    goto :goto_9

    .line 283
    .end local v4    # "realIndex":I
    .local v1, "realIndex":I
    :cond_32
    :goto_32
    iget-object v4, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 284
    iget-object v4, p0, Lrx/internal/util/IndexedRingBuffer;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 285
    sget-object v3, Lrx/internal/util/IndexedRingBuffer;->POOL:Lrx/internal/util/ObjectPool;

    invoke-virtual {v3, p0}, Lrx/internal/util/ObjectPool;->returnObject(Ljava/lang/Object;)V

    .line 286
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 317
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    sget v0, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_10

    .line 319
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    invoke-static {v0}, Lrx/internal/util/IndexedRingBuffer$ElementSection;->access$300(Lrx/internal/util/IndexedRingBuffer$ElementSection;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_20

    .line 321
    :cond_10
    sget v0, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    rem-int v0, p1, v0

    .line 322
    .local v0, "sectionIndex":I
    invoke-direct {p0, p1}, Lrx/internal/util/IndexedRingBuffer;->getElementSection(I)Lrx/internal/util/IndexedRingBuffer$ElementSection;

    move-result-object v2

    invoke-static {v2}, Lrx/internal/util/IndexedRingBuffer$ElementSection;->access$300(Lrx/internal/util/IndexedRingBuffer$ElementSection;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 324
    .local v0, "e":Ljava/lang/Object;, "TE;"
    :goto_20
    invoke-direct {p0, p1}, Lrx/internal/util/IndexedRingBuffer;->pushRemovedIndex(I)V

    .line 325
    return-object v0
.end method

.method public unsubscribe()V
    .registers 1

    .line 290
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/IndexedRingBuffer;->releaseToPool()V

    .line 291
    return-void
.end method

###### Class rx.internal.util.IndexedRingBuffer.AnonymousClass1 (rx.internal.util.IndexedRingBuffer$1)
.class final Lrx/internal/util/IndexedRingBuffer$1;
.super Lrx/internal/util/ObjectPool;
.source "IndexedRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/IndexedRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/internal/util/ObjectPool<",
        "Lrx/internal/util/IndexedRingBuffer<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Lrx/internal/util/ObjectPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createObject()Ljava/lang/Object;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lrx/internal/util/IndexedRingBuffer$1;->createObject()Lrx/internal/util/IndexedRingBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected createObject()Lrx/internal/util/IndexedRingBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/IndexedRingBuffer<",
            "*>;"
        }
    .end annotation

    .line 55
    new-instance v0, Lrx/internal/util/IndexedRingBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/util/IndexedRingBuffer;-><init>(Lrx/internal/util/IndexedRingBuffer$1;)V

    return-object v0
.end method

###### Class rx.internal.util.IndexedRingBuffer.ElementSection (rx.internal.util.IndexedRingBuffer$ElementSection)
.class Lrx/internal/util/IndexedRingBuffer$ElementSection;
.super Ljava/lang/Object;
.source "IndexedRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/IndexedRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ElementSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final array:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final next:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/internal/util/IndexedRingBuffer$ElementSection<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 485
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget v1, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 487
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/util/IndexedRingBuffer$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/internal/util/IndexedRingBuffer$1;

    .line 485
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/IndexedRingBuffer$ElementSection;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lrx/internal/util/IndexedRingBuffer$ElementSection;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 2
    .param p0, "x0"    # Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 485
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object v0
.end method

.method static synthetic access$400(Lrx/internal/util/IndexedRingBuffer$ElementSection;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .param p0, "x0"    # Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 485
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method


# virtual methods
.method getNext()Lrx/internal/util/IndexedRingBuffer$ElementSection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/IndexedRingBuffer$ElementSection<",
            "TE;>;"
        }
    .end annotation

    .line 490
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 491
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    return-object v0

    .line 493
    :cond_11
    new-instance v0, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    invoke-direct {v0}, Lrx/internal/util/IndexedRingBuffer$ElementSection;-><init>()V

    .line 494
    .local v0, "newSection":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 496
    return-object v0

    .line 499
    :cond_20
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    return-object v1
.end method

###### Class rx.internal.util.IndexedRingBuffer.IndexSection (rx.internal.util.IndexedRingBuffer$IndexSection)
.class Lrx/internal/util/IndexedRingBuffer$IndexSection;
.super Ljava/lang/Object;
.source "IndexedRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/IndexedRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexSection"
.end annotation


# instance fields
.field private final _next:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/internal/util/IndexedRingBuffer$IndexSection;",
            ">;"
        }
    .end annotation
.end field

.field private final unsafeArray:Ljava/util/concurrent/atomic/AtomicIntegerArray;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget v1, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->unsafeArray:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 517
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/util/IndexedRingBuffer$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/internal/util/IndexedRingBuffer$1;

    .line 505
    invoke-direct {p0}, Lrx/internal/util/IndexedRingBuffer$IndexSection;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndSet(II)I
    .registers 4
    .param p1, "expected"    # I
    .param p2, "newValue"    # I

    .line 510
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->unsafeArray:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndSet(II)I

    move-result v0

    return v0
.end method

.method getNext()Lrx/internal/util/IndexedRingBuffer$IndexSection;
    .registers 4

    .line 520
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 521
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/util/IndexedRingBuffer$IndexSection;

    return-object v0

    .line 523
    :cond_11
    new-instance v0, Lrx/internal/util/IndexedRingBuffer$IndexSection;

    invoke-direct {v0}, Lrx/internal/util/IndexedRingBuffer$IndexSection;-><init>()V

    .line 524
    .local v0, "newSection":Lrx/internal/util/IndexedRingBuffer$IndexSection;
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 526
    return-object v0

    .line 529
    :cond_20
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/util/IndexedRingBuffer$IndexSection;

    return-object v1
.end method

.method public set(II)V
    .registers 4
    .param p1, "i"    # I
    .param p2, "elementIndex"    # I

    .line 514
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->unsafeArray:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 515
    return-void
.end method
