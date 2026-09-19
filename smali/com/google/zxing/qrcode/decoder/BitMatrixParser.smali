###### Class com.google.zxing.qrcode.decoder.BitMatrixParser (com.google.zxing.qrcode.decoder.BitMatrixParser)
.class final Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field private final bitMatrix:Lcom/google/zxing/common/BitMatrix;

.field private mirror:Z

.field private parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

.field private parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 5
    .param p1, "bitMatrix"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    .line 38
    .local v1, "dimension":I
    move v1, v0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_15

    and-int/lit8 v0, v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    .line 41
    iput-object p1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 42
    return-void

    .line 39
    :cond_15
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private copyBit(III)I
    .registers 5
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "versionBits"    # I

    .line 141
    iget-boolean v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    .line 142
    :goto_11
    if-eqz v0, :cond_18

    shl-int/lit8 v0, p3, 0x1

    or-int/lit8 v0, v0, 0x1

    return v0

    :cond_18
    shl-int/lit8 v0, p3, 0x1

    return v0
.end method


# virtual methods
.method mirror()V
    .registers 5

    .line 235
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_1
    iget-object v1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 236
    add-int/lit8 v1, v0, 0x1

    .local v1, "y":I
    :goto_b
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 237
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3, v1, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eq v2, v3, :cond_2b

    .line 238
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v1, v0}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    .line 239
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    .line 236
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 235
    .end local v1    # "y":I
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    .end local v0    # "x":I
    :cond_31
    return-void
.end method

.method readCodewords()[B
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 155
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v1

    .line 156
    .local v1, "formatInfo":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    .line 160
    .local v2, "version":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-static {}, Lcom/google/zxing/qrcode/decoder/DataMask;->values()[Lcom/google/zxing/qrcode/decoder/DataMask;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getDataMask()B

    move-result v4

    aget-object v3, v3, v4

    .line 161
    .local v3, "dataMask":Lcom/google/zxing/qrcode/decoder/DataMask;
    iget-object v4, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    .line 162
    .local v4, "dimension":I
    iget-object v5, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3, v5, v4}, Lcom/google/zxing/qrcode/decoder/DataMask;->unmaskBitMatrix(Lcom/google/zxing/common/BitMatrix;I)V

    .line 164
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version;->buildFunctionPattern()Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    .line 166
    .local v5, "functionPattern":Lcom/google/zxing/common/BitMatrix;
    const/4 v6, 0x1

    .line 167
    .local v6, "readingUp":Z
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v7

    new-array v7, v7, [B

    .line 168
    .local v7, "result":[B
    const/4 v8, 0x0

    .line 169
    .local v8, "resultOffset":I
    const/4 v9, 0x0

    .line 170
    .local v9, "currentByte":I
    const/4 v10, 0x0

    .line 172
    .local v10, "bitsRead":I
    add-int/lit8 v11, v4, -0x1

    .local v11, "j":I
    :goto_2f
    if-lez v11, :cond_89

    .line 173
    const/4 v12, 0x6

    if-ne v11, v12, :cond_36

    .line 176
    add-int/lit8 v11, v11, -0x1

    .line 179
    :cond_36
    move v13, v10

    move v10, v9

    move v9, v8

    const/4 v8, 0x0

    .local v8, "count":I
    .local v9, "resultOffset":I
    .local v10, "currentByte":I
    .local v13, "bitsRead":I
    :goto_3a
    if-ge v8, v4, :cond_7f

    .line 180
    if-eqz v6, :cond_42

    add-int/lit8 v14, v4, -0x1

    sub-int/2addr v14, v8

    goto :goto_43

    :cond_42
    move v14, v8

    .line 181
    .local v14, "i":I
    :goto_43
    move v15, v13

    move v13, v10

    move v10, v9

    const/4 v9, 0x0

    .local v9, "col":I
    .local v10, "resultOffset":I
    .local v13, "currentByte":I
    .local v15, "bitsRead":I
    :goto_47
    const/4 v12, 0x2

    if-ge v9, v12, :cond_77

    .line 183
    sub-int v12, v11, v9

    invoke-virtual {v5, v12, v14}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    if-nez v12, :cond_72

    .line 185
    add-int/lit8 v15, v15, 0x1

    .line 186
    shl-int/lit8 v12, v13, 0x1

    .line 187
    .end local v13    # "currentByte":I
    .local v12, "currentByte":I
    iget-object v13, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    sub-int v0, v11, v9

    invoke-virtual {v13, v0, v14}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 188
    or-int/lit8 v12, v12, 0x1

    .line 191
    :cond_62
    const/16 v0, 0x8

    if-ne v15, v0, :cond_71

    .line 192
    add-int/lit8 v0, v10, 0x1

    .local v0, "resultOffset":I
    int-to-byte v13, v12

    aput-byte v13, v7, v10

    .line 193
    .end local v10    # "resultOffset":I
    const/4 v10, 0x0

    .line 194
    .end local v15    # "bitsRead":I
    .local v10, "bitsRead":I
    const/4 v12, 0x0

    .line 181
    move v15, v10

    move v13, v12

    move v10, v0

    goto :goto_72

    .end local v0    # "resultOffset":I
    .local v10, "resultOffset":I
    .restart local v15    # "bitsRead":I
    :cond_71
    move v13, v12

    .end local v12    # "currentByte":I
    .restart local v13    # "currentByte":I
    :cond_72
    :goto_72
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto :goto_47

    .line 179
    .end local v9    # "col":I
    .end local v14    # "i":I
    :cond_77
    add-int/lit8 v8, v8, 0x1

    move v9, v10

    move v10, v13

    move v13, v15

    move-object/from16 v0, p0

    goto :goto_3a

    .line 199
    .end local v8    # "count":I
    .end local v15    # "bitsRead":I
    .local v9, "resultOffset":I
    .local v10, "currentByte":I
    .local v13, "bitsRead":I
    :cond_7f
    xor-int/lit8 v6, v6, 0x1

    .line 172
    add-int/lit8 v11, v11, -0x2

    move v8, v9

    move v9, v10

    move v10, v13

    move-object/from16 v0, p0

    goto :goto_2f

    .line 201
    .end local v11    # "j":I
    .end local v13    # "bitsRead":I
    .local v8, "resultOffset":I
    .local v9, "currentByte":I
    .local v10, "bitsRead":I
    :cond_89
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v0

    if-ne v8, v0, :cond_90

    .line 204
    return-object v7

    .line 202
    :cond_90
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-eqz v0, :cond_7

    .line 54
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    return-object v0

    .line 58
    :cond_7
    const/4 v0, 0x0

    .line 59
    .local v0, "formatInfoBits1":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    const/4 v2, 0x6

    const/16 v3, 0x8

    if-ge v1, v2, :cond_15

    .line 60
    invoke-direct {p0, v1, v3, v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v0

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 63
    .end local v1    # "i":I
    :cond_15
    const/4 v1, 0x7

    invoke-direct {p0, v1, v3, v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v0

    .line 64
    invoke-direct {p0, v3, v3, v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v0

    .line 65
    invoke-direct {p0, v3, v1, v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v0

    .line 67
    const/4 v1, 0x5

    .local v1, "j":I
    :goto_23
    if-ltz v1, :cond_2c

    .line 68
    invoke-direct {p0, v3, v1, v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v0

    .line 67
    add-int/lit8 v1, v1, -0x1

    goto :goto_23

    .line 72
    .end local v1    # "j":I
    :cond_2c
    iget-object v1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 73
    .local v1, "dimension":I
    const/4 v2, 0x0

    .line 74
    .local v2, "formatInfoBits2":I
    add-int/lit8 v4, v1, -0x7

    .line 75
    .local v4, "jMin":I
    add-int/lit8 v5, v1, -0x1

    .local v5, "j":I
    :goto_37
    if-lt v5, v4, :cond_40

    .line 76
    invoke-direct {p0, v3, v5, v2}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    .line 75
    add-int/lit8 v5, v5, -0x1

    goto :goto_37

    .line 78
    .end local v5    # "j":I
    :cond_40
    add-int/lit8 v5, v1, -0x8

    .local v5, "i":I
    :goto_42
    if-ge v5, v1, :cond_4b

    .line 79
    invoke-direct {p0, v5, v3, v2}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    .line 78
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 82
    .end local v5    # "i":I
    :cond_4b
    invoke-static {v0, v2}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->decodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v3

    iput-object v3, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 83
    iget-object v3, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-eqz v3, :cond_58

    .line 84
    iget-object v3, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    return-object v3

    .line 86
    :cond_58
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3
.end method

.method readVersion()Lcom/google/zxing/qrcode/decoder/Version;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    if-eqz v0, :cond_7

    .line 99
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    return-object v0

    .line 102
    :cond_7
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 104
    .local v2, "dimension":I
    move v2, v0

    add-int/lit8 v0, v0, -0x11

    div-int/lit8 v0, v0, 0x4

    .line 105
    .local v1, "provisionalVersion":I
    move v1, v0

    const/4 v3, 0x6

    if-gt v0, v3, :cond_1d

    .line 106
    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    return-object v0

    .line 110
    :cond_1d
    const/4 v0, 0x0

    .line 111
    .local v0, "versionBits":I
    add-int/lit8 v3, v2, -0xb

    .line 112
    .local v3, "ijMin":I
    const/4 v4, 0x5

    move v5, v0

    const/4 v0, 0x5

    .local v0, "j":I
    .local v5, "versionBits":I
    :goto_23
    if-ltz v0, :cond_33

    .line 113
    add-int/lit8 v6, v2, -0x9

    .local v6, "i":I
    :goto_27
    if-lt v6, v3, :cond_30

    .line 114
    invoke-direct {p0, v6, v0, v5}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v5

    .line 113
    add-int/lit8 v6, v6, -0x1

    goto :goto_27

    .line 112
    .end local v6    # "i":I
    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 118
    .end local v0    # "j":I
    :cond_33
    invoke-static {v5}, Lcom/google/zxing/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    const/4 v6, 0x0

    .line 119
    .local v6, "theParsedVersion":Lcom/google/zxing/qrcode/decoder/Version;
    move-object v6, v0

    if-eqz v0, :cond_44

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v0

    if-ne v0, v2, :cond_44

    .line 120
    iput-object v6, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    .line 121
    return-object v6

    .line 125
    :cond_44
    const/4 v0, 0x0

    .line 126
    .end local v5    # "versionBits":I
    .local v0, "versionBits":I
    nop

    .local v4, "i":I
    :goto_46
    if-ltz v4, :cond_56

    .line 127
    add-int/lit8 v5, v2, -0x9

    .local v5, "j":I
    :goto_4a
    if-lt v5, v3, :cond_53

    .line 128
    invoke-direct {p0, v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v0

    .line 127
    add-int/lit8 v5, v5, -0x1

    goto :goto_4a

    .line 126
    .end local v5    # "j":I
    :cond_53
    add-int/lit8 v4, v4, -0x1

    goto :goto_46

    .line 132
    .end local v4    # "i":I
    :cond_56
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v4

    .line 133
    move-object v5, v4

    .end local v6    # "theParsedVersion":Lcom/google/zxing/qrcode/decoder/Version;
    .local v5, "theParsedVersion":Lcom/google/zxing/qrcode/decoder/Version;
    if-eqz v4, :cond_66

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v4

    if-ne v4, v2, :cond_66

    .line 134
    iput-object v5, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    .line 135
    return-object v5

    .line 137
    :cond_66
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4
.end method

.method remask()V
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-nez v0, :cond_5

    .line 212
    return-void

    .line 214
    :cond_5
    invoke-static {}, Lcom/google/zxing/qrcode/decoder/DataMask;->values()[Lcom/google/zxing/qrcode/decoder/DataMask;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getDataMask()B

    move-result v1

    aget-object v0, v0, v1

    .line 215
    .local v0, "dataMask":Lcom/google/zxing/qrcode/decoder/DataMask;
    iget-object v1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 216
    .local v1, "dimension":I
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/qrcode/decoder/DataMask;->unmaskBitMatrix(Lcom/google/zxing/common/BitMatrix;I)V

    .line 217
    return-void
.end method

.method setMirror(Z)V
    .registers 3
    .param p1, "mirror"    # Z

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    .line 229
    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 230
    iput-boolean p1, p0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror:Z

    .line 231
    return-void
.end method
