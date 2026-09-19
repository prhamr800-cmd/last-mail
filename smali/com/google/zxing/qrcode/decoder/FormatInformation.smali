###### Class com.google.zxing.qrcode.decoder.FormatInformation (com.google.zxing.qrcode.decoder.FormatInformation)
.class final Lcom/google/zxing/qrcode/decoder/FormatInformation;
.super Ljava/lang/Object;
.source "FormatInformation.java"


# static fields
.field private static final FORMAT_INFO_DECODE_LOOKUP:[[I

.field private static final FORMAT_INFO_MASK_QR:I = 0x5412


# instance fields
.field private final dataMask:B

.field private final errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 34
    const/16 v0, 0x20

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_120

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_128

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_130

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_138

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_140

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_148

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_150

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_158

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_160

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_168

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_170

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_178

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_180

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_188

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_190

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_198

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1a0

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1a8

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1b0

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1b8

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1c0

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1c8

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1d0

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1d8

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1e0

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1e8

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1f0

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1f8

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_200

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_208

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_210

    const/16 v3, 0x1e

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_218

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    return-void

    nop

    :array_120
    .array-data 4
        0x5412
        0x0
    .end array-data

    :array_128
    .array-data 4
        0x5125
        0x1
    .end array-data

    :array_130
    .array-data 4
        0x5e7c
        0x2
    .end array-data

    :array_138
    .array-data 4
        0x5b4b
        0x3
    .end array-data

    :array_140
    .array-data 4
        0x45f9
        0x4
    .end array-data

    :array_148
    .array-data 4
        0x40ce
        0x5
    .end array-data

    :array_150
    .array-data 4
        0x4f97
        0x6
    .end array-data

    :array_158
    .array-data 4
        0x4aa0
        0x7
    .end array-data

    :array_160
    .array-data 4
        0x77c4
        0x8
    .end array-data

    :array_168
    .array-data 4
        0x72f3
        0x9
    .end array-data

    :array_170
    .array-data 4
        0x7daa
        0xa
    .end array-data

    :array_178
    .array-data 4
        0x789d
        0xb
    .end array-data

    :array_180
    .array-data 4
        0x662f
        0xc
    .end array-data

    :array_188
    .array-data 4
        0x6318
        0xd
    .end array-data

    :array_190
    .array-data 4
        0x6c41
        0xe
    .end array-data

    :array_198
    .array-data 4
        0x6976
        0xf
    .end array-data

    :array_1a0
    .array-data 4
        0x1689
        0x10
    .end array-data

    :array_1a8
    .array-data 4
        0x13be
        0x11
    .end array-data

    :array_1b0
    .array-data 4
        0x1ce7
        0x12
    .end array-data

    :array_1b8
    .array-data 4
        0x19d0
        0x13
    .end array-data

    :array_1c0
    .array-data 4
        0x762
        0x14
    .end array-data

    :array_1c8
    .array-data 4
        0x255
        0x15
    .end array-data

    :array_1d0
    .array-data 4
        0xd0c
        0x16
    .end array-data

    :array_1d8
    .array-data 4
        0x83b
        0x17
    .end array-data

    :array_1e0
    .array-data 4
        0x355f
        0x18
    .end array-data

    :array_1e8
    .array-data 4
        0x3068
        0x19
    .end array-data

    :array_1f0
    .array-data 4
        0x3f31
        0x1a
    .end array-data

    :array_1f8
    .array-data 4
        0x3a06
        0x1b
    .end array-data

    :array_200
    .array-data 4
        0x24b4
        0x1c
    .end array-data

    :array_208
    .array-data 4
        0x2183
        0x1d
    .end array-data

    :array_210
    .array-data 4
        0x2eda
        0x1e
    .end array-data

    :array_218
    .array-data 4
        0x2bed
        0x1f
    .end array-data
.end method

.method private constructor <init>(I)V
    .registers 3
    .param p1, "formatInfo"    # I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    shr-int/lit8 v0, p1, 0x3

    and-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->forBits(I)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 76
    and-int/lit8 v0, p1, 0x7

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    .line 77
    return-void
.end method

.method static decodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .registers 5
    .param p0, "maskedFormatInfo1"    # I
    .param p1, "maskedFormatInfo2"    # I

    .line 91
    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v0

    const/4 v1, 0x0

    .line 92
    .local v1, "formatInfo":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    move-object v1, v0

    if-eqz v0, :cond_9

    .line 93
    return-object v1

    .line 98
    :cond_9
    xor-int/lit16 v0, p0, 0x5412

    xor-int/lit16 v2, p1, 0x5412

    invoke-static {v0, v2}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v0

    return-object v0
.end method

.method private static doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .registers 14
    .param p0, "maskedFormatInfo1"    # I
    .param p1, "maskedFormatInfo2"    # I

    .line 104
    const v0, 0x7fffffff

    .line 105
    .local v0, "bestDifference":I
    const/4 v1, 0x0

    .line 106
    .local v1, "bestFormatInfo":I
    sget-object v2, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v7, v0

    move v8, v1

    move-object v1, v4

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    .end local v0    # "bestDifference":I
    .end local v1    # "bestFormatInfo":I
    .local v7, "bestDifference":I
    .local v8, "bestFormatInfo":I
    :goto_f
    if-ge v0, v3, :cond_3e

    aget-object v10, v2, v0

    .line 107
    .local v1, "decodeInfo":[I
    move-object v1, v10

    aget v10, v10, v5

    .line 108
    .local v6, "targetInfo":I
    move v6, v10

    const/4 v11, 0x1

    if-eq v10, p0, :cond_36

    if-ne v6, p1, :cond_1d

    goto :goto_36

    .line 112
    :cond_1d
    invoke-static {p0, v6}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v10

    .line 113
    .local v9, "bitsDifference":I
    move v9, v10

    if-ge v10, v7, :cond_27

    .line 114
    aget v8, v1, v11

    .line 115
    move v7, v9

    .line 117
    :cond_27
    if-eq p0, p1, :cond_33

    .line 119
    invoke-static {p1, v6}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v10

    .line 120
    move v9, v10

    if-ge v10, v7, :cond_33

    .line 121
    aget v8, v1, v11

    .line 122
    move v7, v9

    .line 106
    .end local v1    # "decodeInfo":[I
    .end local v6    # "targetInfo":I
    .end local v9    # "bitsDifference":I
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 110
    :cond_36
    :goto_36
    new-instance v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    aget v2, v1, v11

    invoke-direct {v0, v2}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    return-object v0

    .line 128
    :cond_3e
    const/4 v0, 0x3

    if-gt v7, v0, :cond_47

    .line 129
    new-instance v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    invoke-direct {v0, v8}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    return-object v0

    .line 131
    :cond_47
    return-object v4
.end method

.method static numBitsDiffering(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 80
    xor-int v0, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 149
    instance-of v0, p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 150
    return v1

    .line 152
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 153
    .local v0, "other":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    iget-object v3, v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-ne v2, v3, :cond_16

    iget-byte v2, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    iget-byte v3, v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    if-ne v2, v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method getDataMask()B
    .registers 2

    .line 139
    iget-byte v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    return v0
.end method

.method getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->ordinal()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    iget-byte v1, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    or-int/2addr v0, v1

    return v0
.end method
