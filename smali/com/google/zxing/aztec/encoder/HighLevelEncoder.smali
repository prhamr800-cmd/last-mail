###### Class com.google.zxing.aztec.encoder.HighLevelEncoder (com.google.zxing.aztec.encoder.HighLevelEncoder)
.class public final Lcom/google/zxing/aztec/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# static fields
.field private static final CHAR_MAP:[[I

.field static final LATCH_TABLE:[[I

.field static final MODE_DIGIT:I = 0x2

.field static final MODE_LOWER:I = 0x1

.field static final MODE_MIXED:I = 0x3

.field static final MODE_NAMES:[Ljava/lang/String;

.field static final MODE_PUNCT:I = 0x4

.field static final MODE_UPPER:I

.field static final SHIFT_TABLE:[[I


# instance fields
.field private final text:[B


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 43
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "UPPER"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "LOWER"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "DIGIT"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "MIXED"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "PUNCT"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->MODE_NAMES:[Ljava/lang/String;

    .line 56
    new-array v1, v0, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_122

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_130

    aput-object v2, v1, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_13e

    aput-object v2, v1, v5

    new-array v2, v0, [I

    fill-array-data v2, :array_14c

    aput-object v2, v1, v6

    new-array v2, v0, [I

    fill-array-data v2, :array_15a

    aput-object v2, v1, v7

    sput-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    .line 97
    const/16 v1, 0x100

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 99
    sput-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v0, v0, v3

    const/16 v1, 0x20

    aput v4, v0, v1

    .line 100
    const/16 v0, 0x41

    .local v0, "c":I
    :goto_5d
    const/16 v2, 0x5a

    if-gt v0, v2, :cond_6d

    .line 101
    sget-object v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v2, v2, v3

    add-int/lit8 v8, v0, -0x41

    add-int/2addr v8, v5

    aput v8, v2, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 103
    .end local v0    # "c":I
    :cond_6d
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v0, v0, v4

    aput v4, v0, v1

    .line 104
    const/16 v0, 0x61

    .restart local v0    # "c":I
    :goto_75
    const/16 v2, 0x7a

    if-gt v0, v2, :cond_85

    .line 105
    sget-object v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v2, v2, v4

    add-int/lit8 v8, v0, -0x61

    add-int/2addr v8, v5

    aput v8, v2, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    .line 107
    .end local v0    # "c":I
    :cond_85
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v0, v0, v5

    aput v4, v0, v1

    .line 108
    const/16 v0, 0x30

    .restart local v0    # "c":I
    :goto_8d
    const/16 v1, 0x39

    if-gt v0, v1, :cond_9d

    .line 109
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v1, v1, v5

    add-int/lit8 v2, v0, -0x30

    add-int/2addr v2, v5

    aput v2, v1, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    .line 111
    .end local v0    # "c":I
    :cond_9d
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v0, v0, v5

    const/16 v1, 0x2c

    const/16 v2, 0xc

    aput v2, v0, v1

    .line 112
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v0, v0, v5

    const/16 v1, 0x2e

    const/16 v2, 0xd

    aput v2, v0, v1

    .line 113
    const/16 v0, 0x1c

    new-array v1, v0, [I

    fill-array-data v1, :array_168

    .line 118
    .local v1, "mixedTable":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b9
    if-ge v2, v0, :cond_c6

    .line 119
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v8, v8, v6

    aget v9, v1, v2

    aput v2, v8, v9

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_b9

    .line 121
    .end local v2    # "i":I
    :cond_c6
    const/16 v2, 0x1f

    new-array v8, v2, [I

    fill-array-data v8, :array_1a4

    .line 126
    .local v8, "punctTable":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_ce
    if-ge v9, v2, :cond_df

    .line 127
    aget v10, v8, v9

    if-lez v10, :cond_dc

    .line 128
    sget-object v10, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v10, v10, v7

    aget v11, v8, v9

    aput v9, v10, v11

    .line 126
    :cond_dc
    add-int/lit8 v9, v9, 0x1

    goto :goto_ce

    .line 135
    .end local v1    # "mixedTable":[I
    .end local v8    # "punctTable":[I
    .end local v9    # "i":I
    :cond_df
    const/4 v1, 0x6

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const-class v2, I

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 137
    sput-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    array-length v2, v1

    const/4 v8, 0x0

    :goto_f0
    if-ge v8, v2, :cond_fb

    aget-object v9, v1, v8

    .line 138
    const/4 v10, -0x1

    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([II)V

    .line 137
    add-int/lit8 v8, v8, 0x1

    goto :goto_f0

    .line 140
    :cond_fb
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v1, v1, v3

    aput v3, v1, v7

    .line 142
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v1, v1, v4

    aput v3, v1, v7

    .line 143
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v1, v1, v4

    aput v0, v1, v3

    .line 145
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v0, v0, v6

    aput v3, v0, v7

    .line 147
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v0, v0, v5

    aput v3, v0, v7

    .line 148
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v0, v0, v5

    const/16 v1, 0xf

    aput v1, v0, v3

    .line 149
    return-void

    :array_122
    .array-data 4
        0x0
        0x5001c
        0x5001e
        0x5001d
        0xa03be
    .end array-data

    :array_130
    .array-data 4
        0x901ee
        0x0
        0x5001e
        0x5001d
        0xa03be
    .end array-data

    :array_13e
    .array-data 4
        0x4000e
        0x901dc
        0x0
        0x901dd
        0xe3bbe
    .end array-data

    :array_14c
    .array-data 4
        0x5001d
        0x5001c
        0xa03be
        0x0
        0x5001e
    .end array-data

    :array_15a
    .array-data 4
        0x5001f
        0xa03fc
        0xa03fe
        0xa03fd
        0x0
    .end array-data

    :array_168
    .array-data 4
        0x0
        0x20
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x40
        0x5c
        0x5e
        0x5f
        0x60
        0x7c
        0x7e
        0x7f
    .end array-data

    :array_1a4
    .array-data 4
        0x0
        0xd
        0x0
        0x0
        0x0
        0x0
        0x21
        0x27
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x5b
        0x5d
        0x7b
        0x7d
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 2
    .param p1, "text"    # [B

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    .line 155
    return-void
.end method

.method private static simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .line 287
    .local p0, "states":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/aztec/encoder/State;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 288
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/aztec/encoder/State;

    .line 289
    .local v3, "newState":Lcom/google/zxing/aztec/encoder/State;
    const/4 v4, 0x1

    .line 290
    .local v4, "add":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/aztec/encoder/State;>;"
    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 291
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/aztec/encoder/State;

    .line 292
    .local v2, "oldState":Lcom/google/zxing/aztec/encoder/State;
    move-object v2, v6

    invoke-virtual {v6, v3}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 293
    const/4 v4, 0x0

    .line 294
    goto :goto_3a

    .line 296
    :cond_30
    invoke-virtual {v3, v2}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 297
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 299
    .end local v2    # "oldState":Lcom/google/zxing/aztec/encoder/State;
    :cond_39
    goto :goto_1b

    .line 300
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/aztec/encoder/State;>;"
    :cond_3a
    :goto_3a
    if-eqz v4, :cond_3f

    .line 301
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v3    # "newState":Lcom/google/zxing/aztec/encoder/State;
    .end local v4    # "add":Z
    :cond_3f
    goto :goto_a

    .line 304
    :cond_40
    return-object v0
.end method

.method private updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V
    .registers 11
    .param p1, "state"    # Lcom/google/zxing/aztec/encoder/State;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/State;",
            "I",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)V"
        }
    .end annotation

    .line 217
    .local p3, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    aget-byte v0, v0, p2

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 218
    .local v0, "ch":C
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v2

    aget-object v1, v1, v2

    aget v1, v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 219
    .local v1, "charInCurrentTable":Z
    :goto_17
    const/4 v3, 0x0

    .line 220
    .local v3, "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    move-object v4, v3

    const/4 v3, 0x0

    .end local v3    # "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    .local v2, "mode":I
    .local v4, "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    :goto_1a
    const/4 v5, 0x4

    if-gt v2, v5, :cond_56

    .line 221
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v2

    aget v5, v5, v0

    .line 222
    .local v3, "charInMode":I
    move v3, v5

    if-lez v5, :cond_53

    .line 223
    if-nez v4, :cond_2c

    .line 225
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v4

    .line 228
    :cond_2c
    if-eqz v1, :cond_37

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v5

    if-eq v2, v5, :cond_37

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3e

    .line 233
    :cond_37
    invoke-virtual {v4, v2, v3}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v5

    .line 234
    .local v5, "latchState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v5    # "latchState":Lcom/google/zxing/aztec/encoder/State;
    :cond_3e
    if-nez v1, :cond_53

    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v6

    aget-object v5, v5, v6

    aget v5, v5, v2

    if-ltz v5, :cond_53

    .line 240
    invoke-virtual {v4, v2, v3}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v5

    .line 241
    .local v5, "shiftState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v3    # "charInMode":I
    .end local v5    # "shiftState":Lcom/google/zxing/aztec/encoder/State;
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 245
    .end local v2    # "mode":I
    :cond_56
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I

    move-result v2

    if-gtz v2, :cond_68

    sget-object v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v3

    aget-object v2, v2, v3

    aget v2, v2, v0

    if-nez v2, :cond_6f

    .line 249
    :cond_68
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    .line 250
    .local v2, "binaryState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v2    # "binaryState":Lcom/google/zxing/aztec/encoder/State;
    :cond_6f
    return-void
.end method

.method private static updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V
    .registers 8
    .param p0, "state"    # Lcom/google/zxing/aztec/encoder/State;
    .param p1, "index"    # I
    .param p2, "pairCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/State;",
            "II",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)V"
        }
    .end annotation

    .line 263
    .local p3, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v0

    .line 265
    .local v0, "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v2

    if-eq v2, v1, :cond_19

    .line 269
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_19
    const/4 v2, 0x3

    if-eq p2, v2, :cond_1e

    if-ne p2, v1, :cond_2d

    .line 273
    :cond_1e
    rsub-int/lit8 v1, p2, 0x10

    .line 274
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v1

    .line 275
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v1

    .line 276
    .local v1, "digitState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v1    # "digitState":Lcom/google/zxing/aztec/encoder/State;
    :cond_2d
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I

    move-result v1

    if-lez v1, :cond_40

    .line 281
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v1

    .line 282
    .local v1, "binaryState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 284
    .end local v1    # "binaryState":Lcom/google/zxing/aztec/encoder/State;
    :cond_40
    return-void
.end method

.method private updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;
    .registers 6
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;I)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .line 206
    .local p1, "states":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/aztec/encoder/State;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 207
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/aztec/encoder/State;

    .line 208
    .local v2, "state":Lcom/google/zxing/aztec/encoder/State;
    invoke-direct {p0, v2, p2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V

    .line 209
    .end local v2    # "state":Lcom/google/zxing/aztec/encoder/State;
    goto :goto_9

    .line 210
    :cond_19
    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method private static updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;
    .registers 6
    .param p1, "index"    # I
    .param p2, "pairCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;II)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .line 255
    .local p0, "states":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/aztec/encoder/State;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 256
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/aztec/encoder/State;

    .line 257
    invoke-static {v2, p1, p2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V

    .line 258
    goto :goto_9

    .line 259
    :cond_19
    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public encode()Lcom/google/zxing/common/BitArray;
    .registers 8

    .line 161
    sget-object v0, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 162
    .local v0, "states":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    .local v0, "index":I
    .local v2, "states":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    :goto_9
    iget-object v3, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    array-length v3, v3

    if-ge v0, v3, :cond_60

    .line 164
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    array-length v4, v4

    if-ge v3, v4, :cond_1c

    iget-object v3, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v3, v3, v4

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    .line 165
    .local v3, "nextChar":I
    :goto_1d
    iget-object v4, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    aget-byte v4, v4, v0

    const/16 v5, 0xd

    if-eq v4, v5, :cond_47

    const/16 v5, 0x2c

    const/16 v6, 0x20

    if-eq v4, v5, :cond_41

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_3b

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_35

    .line 179
    const/4 v4, 0x0

    goto :goto_4f

    .line 176
    :cond_35
    if-ne v3, v6, :cond_39

    const/4 v4, 0x5

    goto :goto_3a

    :cond_39
    const/4 v4, 0x0

    .line 177
    .local v4, "pairCode":I
    :goto_3a
    goto :goto_4f

    .line 170
    .end local v4    # "pairCode":I
    :cond_3b
    if-ne v3, v6, :cond_3f

    const/4 v4, 0x3

    goto :goto_40

    :cond_3f
    const/4 v4, 0x0

    .line 171
    .restart local v4    # "pairCode":I
    :goto_40
    goto :goto_4f

    .line 173
    .end local v4    # "pairCode":I
    :cond_41
    if-ne v3, v6, :cond_45

    const/4 v4, 0x4

    goto :goto_46

    :cond_45
    const/4 v4, 0x0

    .line 174
    .restart local v4    # "pairCode":I
    :goto_46
    goto :goto_4f

    .line 167
    .end local v4    # "pairCode":I
    :cond_47
    const/16 v4, 0xa

    if-ne v3, v4, :cond_4d

    const/4 v4, 0x2

    goto :goto_4e

    :cond_4d
    const/4 v4, 0x0

    .line 168
    .restart local v4    # "pairCode":I
    :goto_4e
    nop

    .line 179
    :goto_4f
    nop

    .line 181
    if-lez v4, :cond_59

    .line 184
    invoke-static {v2, v0, v4}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;

    move-result-object v2

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 188
    :cond_59
    invoke-direct {p0, v2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;

    move-result-object v2

    .line 162
    .end local v3    # "nextChar":I
    .end local v4    # "pairCode":I
    :goto_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 192
    .end local v0    # "index":I
    :cond_60
    new-instance v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;

    invoke-direct {v0, p0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;-><init>(Lcom/google/zxing/aztec/encoder/HighLevelEncoder;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/aztec/encoder/State;

    const/4 v1, 0x0

    .line 199
    .local v1, "minState":Lcom/google/zxing/aztec/encoder/State;
    iget-object v3, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    invoke-virtual {v0, v3}, Lcom/google/zxing/aztec/encoder/State;->toBitArray([B)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.zxing.aztec.encoder.HighLevelEncoder.AnonymousClass1 (com.google.zxing.aztec.encoder.HighLevelEncoder$1)
.class Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->encode()Lcom/google/zxing/common/BitArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/zxing/aztec/encoder/State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/aztec/encoder/HighLevelEncoder;


# direct methods
.method constructor <init>(Lcom/google/zxing/aztec/encoder/HighLevelEncoder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    .line 192
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;->this$0:Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/zxing/aztec/encoder/State;Lcom/google/zxing/aztec/encoder/State;)I
    .registers 5
    .param p1, "a"    # Lcom/google/zxing/aztec/encoder/State;
    .param p2, "b"    # Lcom/google/zxing/aztec/encoder/State;

    .line 195
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getBitCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/aztec/encoder/State;->getBitCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 192
    check-cast p1, Lcom/google/zxing/aztec/encoder/State;

    check-cast p2, Lcom/google/zxing/aztec/encoder/State;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;->compare(Lcom/google/zxing/aztec/encoder/State;Lcom/google/zxing/aztec/encoder/State;)I

    move-result p1

    return p1
.end method
