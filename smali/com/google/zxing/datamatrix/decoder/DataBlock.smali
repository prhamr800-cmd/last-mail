###### Class com.google.zxing.datamatrix.decoder.DataBlock (com.google.zxing.datamatrix.decoder.DataBlock)
.class final Lcom/google/zxing/datamatrix/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .registers 3
    .param p1, "numDataCodewords"    # I
    .param p2, "codewords"    # [B

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .registers 22
    .param p0, "rawCodewords"    # [B
    .param p1, "version"    # Lcom/google/zxing/datamatrix/decoder/Version;

    .line 49
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getECBlocks()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-result-object v1

    .line 52
    .local v1, "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    const/4 v2, 0x0

    .line 53
    .local v2, "totalBlocks":I
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-result-object v3

    const/4 v4, 0x0

    .line 54
    .local v4, "ecBlockArray":[Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move-object v4, v3

    array-length v5, v3

    move v7, v2

    const/4 v2, 0x0

    .end local v2    # "totalBlocks":I
    .local v7, "totalBlocks":I
    :goto_10
    if-ge v2, v5, :cond_1c

    aget-object v8, v3, v2

    .line 55
    .local v8, "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    invoke-virtual {v8}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v9

    add-int/2addr v7, v9

    .line 54
    .end local v8    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 59
    :cond_1c
    new-array v3, v7, [Lcom/google/zxing/datamatrix/decoder/DataBlock;

    .line 60
    .local v3, "result":[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    const/4 v5, 0x0

    .line 61
    .local v5, "numResultBlocks":I
    array-length v8, v4

    move v9, v5

    const/4 v5, 0x0

    .end local v5    # "numResultBlocks":I
    .local v9, "numResultBlocks":I
    :goto_22
    if-ge v5, v8, :cond_4a

    aget-object v10, v4, v5

    .line 62
    .local v10, "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move v11, v9

    const/4 v9, 0x0

    .local v9, "i":I
    .local v11, "numResultBlocks":I
    :goto_28
    invoke-virtual {v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v12

    if-ge v9, v12, :cond_46

    .line 63
    invoke-virtual {v10}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    move-result v12

    .line 64
    .local v12, "numDataCodewords":I
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v13

    add-int/2addr v13, v12

    .line 65
    .local v13, "numBlockCodewords":I
    add-int/lit8 v14, v11, 0x1

    .local v14, "numResultBlocks":I
    new-instance v15, Lcom/google/zxing/datamatrix/decoder/DataBlock;

    new-array v6, v13, [B

    invoke-direct {v15, v12, v6}, Lcom/google/zxing/datamatrix/decoder/DataBlock;-><init>(I[B)V

    aput-object v15, v3, v11

    .line 62
    .end local v11    # "numResultBlocks":I
    .end local v12    # "numDataCodewords":I
    .end local v13    # "numBlockCodewords":I
    add-int/lit8 v9, v9, 0x1

    move v11, v14

    goto :goto_28

    .line 61
    .end local v9    # "i":I
    .end local v10    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    .end local v14    # "numResultBlocks":I
    .restart local v11    # "numResultBlocks":I
    :cond_46
    add-int/lit8 v5, v5, 0x1

    move v9, v11

    goto :goto_22

    .line 72
    .end local v11    # "numResultBlocks":I
    .local v9, "numResultBlocks":I
    :cond_4a
    const/4 v5, 0x0

    aget-object v6, v3, v5

    iget-object v5, v6, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v5, v5

    .line 75
    .local v2, "longerBlocksTotalCodewords":I
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v6

    sub-int/2addr v5, v6

    move v6, v8

    .line 76
    .local v6, "longerBlocksNumDataCodewords":I
    move v6, v5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    .line 79
    .local v5, "shorterBlocksNumDataCodewords":I
    const/4 v10, 0x0

    .line 80
    .local v10, "rawCodewordsOffset":I
    move v11, v10

    const/4 v10, 0x0

    .local v10, "i":I
    .local v11, "rawCodewordsOffset":I
    :goto_5c
    if-ge v10, v5, :cond_74

    .line 81
    move v12, v11

    const/4 v11, 0x0

    .local v11, "j":I
    .local v12, "rawCodewordsOffset":I
    :goto_60
    if-ge v11, v9, :cond_70

    .line 82
    aget-object v13, v3, v11

    iget-object v13, v13, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v14, v12, 0x1

    .local v14, "rawCodewordsOffset":I
    aget-byte v12, v0, v12

    .end local v12    # "rawCodewordsOffset":I
    aput-byte v12, v13, v10

    .line 81
    add-int/lit8 v11, v11, 0x1

    move v12, v14

    goto :goto_60

    .line 80
    .end local v11    # "j":I
    .end local v14    # "rawCodewordsOffset":I
    .restart local v12    # "rawCodewordsOffset":I
    :cond_70
    add-int/lit8 v10, v10, 0x1

    move v11, v12

    goto :goto_5c

    .line 87
    .end local v12    # "rawCodewordsOffset":I
    .local v11, "rawCodewordsOffset":I
    :cond_74
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionNumber()I

    move-result v12

    const/16 v13, 0x18

    if-ne v12, v13, :cond_7d

    goto :goto_7e

    :cond_7d
    const/4 v8, 0x0

    .line 88
    .local v10, "specialVersion":Z
    :goto_7e
    move v10, v8

    if-eqz v8, :cond_84

    const/16 v8, 0x8

    goto :goto_85

    :cond_84
    move v8, v9

    .line 89
    .local v8, "numLongerBlocks":I
    :goto_85
    move v12, v11

    const/4 v11, 0x0

    .local v11, "j":I
    .restart local v12    # "rawCodewordsOffset":I
    :goto_87
    if-ge v11, v8, :cond_99

    .line 90
    aget-object v13, v3, v11

    iget-object v13, v13, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v14, v6, -0x1

    add-int/lit8 v15, v12, 0x1

    .local v15, "rawCodewordsOffset":I
    aget-byte v12, v0, v12

    .end local v12    # "rawCodewordsOffset":I
    aput-byte v12, v13, v14

    .line 89
    add-int/lit8 v11, v11, 0x1

    move v12, v15

    goto :goto_87

    .line 94
    .end local v11    # "j":I
    .end local v15    # "rawCodewordsOffset":I
    .restart local v12    # "rawCodewordsOffset":I
    :cond_99
    const/4 v11, 0x0

    aget-object v13, v3, v11

    iget-object v13, v13, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v13, v13

    .line 95
    .local v13, "max":I
    move v14, v12

    move v12, v6

    .local v12, "i":I
    .restart local v14    # "rawCodewordsOffset":I
    :goto_a1
    if-ge v12, v13, :cond_e2

    .line 96
    move v15, v14

    const/4 v14, 0x0

    .local v14, "j":I
    .restart local v15    # "rawCodewordsOffset":I
    :goto_a5
    if-ge v14, v9, :cond_d9

    .line 97
    if-eqz v10, :cond_ae

    add-int/lit8 v16, v14, 0x8

    rem-int v16, v16, v9

    goto :goto_b0

    :cond_ae
    move/from16 v16, v14

    :goto_b0
    move/from16 v17, v16

    .line 98
    .local v17, "jOffset":I
    if-eqz v10, :cond_be

    const/4 v11, 0x7

    move-object/from16 v18, v1

    move/from16 v1, v17

    .end local v17    # "jOffset":I
    .local v1, "jOffset":I
    .local v18, "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    if-le v1, v11, :cond_c2

    add-int/lit8 v11, v12, -0x1

    goto :goto_c3

    .end local v18    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .local v1, "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .restart local v17    # "jOffset":I
    :cond_be
    move-object/from16 v18, v1

    move/from16 v1, v17

    .end local v17    # "jOffset":I
    .local v1, "jOffset":I
    .restart local v18    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    :cond_c2
    move v11, v12

    .line 99
    .local v11, "iOffset":I
    :goto_c3
    move/from16 v19, v2

    .end local v2    # "longerBlocksTotalCodewords":I
    .local v19, "longerBlocksTotalCodewords":I
    aget-object v2, v3, v1

    iget-object v2, v2, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v16, v15, 0x1

    .local v16, "rawCodewordsOffset":I
    aget-byte v15, v0, v15

    .end local v15    # "rawCodewordsOffset":I
    aput-byte v15, v2, v11

    .line 96
    .end local v1    # "jOffset":I
    .end local v11    # "iOffset":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v15, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    const/4 v11, 0x0

    goto :goto_a5

    .line 95
    .end local v14    # "j":I
    .end local v16    # "rawCodewordsOffset":I
    .end local v18    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .end local v19    # "longerBlocksTotalCodewords":I
    .local v1, "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .restart local v2    # "longerBlocksTotalCodewords":I
    .restart local v15    # "rawCodewordsOffset":I
    :cond_d9
    move-object/from16 v18, v1

    move/from16 v19, v2

    .end local v1    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .end local v2    # "longerBlocksTotalCodewords":I
    .restart local v18    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .restart local v19    # "longerBlocksTotalCodewords":I
    add-int/lit8 v12, v12, 0x1

    move v14, v15

    const/4 v11, 0x0

    goto :goto_a1

    .line 103
    .end local v12    # "i":I
    .end local v15    # "rawCodewordsOffset":I
    .end local v18    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .end local v19    # "longerBlocksTotalCodewords":I
    .restart local v1    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .restart local v2    # "longerBlocksTotalCodewords":I
    .local v14, "rawCodewordsOffset":I
    :cond_e2
    move-object/from16 v18, v1

    move/from16 v19, v2

    .end local v1    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .end local v2    # "longerBlocksTotalCodewords":I
    .restart local v18    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .restart local v19    # "longerBlocksTotalCodewords":I
    array-length v1, v0

    if-ne v14, v1, :cond_ea

    .line 107
    return-object v3

    .line 104
    :cond_ea
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method


# virtual methods
.method getCodewords()[B
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .registers 2

    .line 111
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
