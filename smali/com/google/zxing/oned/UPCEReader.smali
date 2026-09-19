###### Class com.google.zxing.oned.UPCEReader (com.google.zxing.oned.UPCEReader)
.class public final Lcom/google/zxing/oned/UPCEReader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "UPCEReader.java"


# static fields
.field static final CHECK_DIGIT_ENCODINGS:[I

.field private static final MIDDLE_END_PATTERN:[I

.field private static final NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 55
    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_28

    sput-object v1, Lcom/google/zxing/oned/UPCEReader;->CHECK_DIGIT_ENCODINGS:[I

    .line 62
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_40

    sput-object v1, Lcom/google/zxing/oned/UPCEReader;->MIDDLE_END_PATTERN:[I

    .line 69
    const/4 v1, 0x2

    new-array v1, v1, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_50

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [I

    fill-array-data v0, :array_68

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    return-void

    nop

    :array_28
    .array-data 4
        0x38
        0x34
        0x32
        0x31
        0x2c
        0x26
        0x23
        0x2a
        0x29
        0x25
    .end array-data

    :array_40
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_50
    .array-data 4
        0x38
        0x34
        0x32
        0x31
        0x2c
        0x26
        0x23
        0x2a
        0x29
        0x25
    .end array-data

    :array_68
    .array-data 4
        0x7
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEReader;->decodeMiddleCounters:[I

    .line 78
    return-void
.end method

.method public static convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "upce"    # Ljava/lang/String;

    .line 146
    const/4 v0, 0x6

    new-array v0, v0, [C

    .line 147
    .local v0, "upceChars":[C
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    .line 149
    .local v4, "result":Ljava/lang/StringBuilder;
    move-object v4, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    const/4 v3, 0x5

    aget-char v5, v0, v3

    move v6, v2

    .line 151
    .local v6, "lastChar":C
    move v6, v5

    const/4 v7, 0x3

    const/4 v8, 0x2

    packed-switch v5, :pswitch_data_66

    .line 171
    invoke-virtual {v4, v0, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 172
    const-string v2, "0000"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_59

    .line 166
    :pswitch_2f
    const/4 v3, 0x4

    invoke-virtual {v4, v0, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 167
    const-string v2, "00000"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    aget-char v2, v0, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    goto :goto_59

    .line 161
    :pswitch_3e
    invoke-virtual {v4, v0, v2, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 162
    const-string v2, "00000"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v4, v0, v7, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 164
    goto :goto_59

    .line 155
    :pswitch_4a
    invoke-virtual {v4, v0, v2, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    const-string v2, "0000"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v4, v0, v8, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 159
    nop

    .line 176
    :goto_59
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_66
    .packed-switch 0x30
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_3e
        :pswitch_2f
    .end packed-switch
.end method

.method private static determineNumSysAndCheckDigit(Ljava/lang/StringBuilder;I)V
    .registers 6
    .param p0, "resultString"    # Ljava/lang/StringBuilder;
    .param p1, "lgPatternFound"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "numSys":I
    :goto_2
    const/4 v2, 0x1

    if-gt v1, v2, :cond_25

    .line 123
    const/4 v2, 0x0

    .local v2, "d":I
    :goto_6
    const/16 v3, 0xa

    if-ge v2, v3, :cond_22

    .line 124
    sget-object v3, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    if-ne p1, v3, :cond_1f

    .line 125
    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 126
    add-int/lit8 v0, v2, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    return-void

    .line 123
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 122
    .end local v2    # "d":I
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 131
    .end local v1    # "numSys":I
    :cond_25
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected checkChecksum(Ljava/lang/String;)Z
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 116
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
    .registers 5
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "endStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 111
    sget-object v0, Lcom/google/zxing/oned/UPCEReader;->MIDDLE_END_PATTERN:[I

    const/4 v1, 0x1

    invoke-static {p1, p2, v1, v0}, Lcom/google/zxing/oned/UPCEReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .registers 15
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startRange"    # [I
    .param p3, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/zxing/oned/UPCEReader;->decodeMiddleCounters:[I

    const/4 v1, 0x0

    .line 84
    .local v1, "counters":[I
    move-object v1, v0

    const/4 v2, 0x0

    aput v2, v0, v2

    .line 85
    const/4 v0, 0x1

    aput v2, v1, v0

    .line 86
    const/4 v3, 0x2

    aput v2, v1, v3

    .line 87
    const/4 v3, 0x3

    aput v2, v1, v3

    .line 88
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    .line 89
    .local v3, "end":I
    aget v4, p2, v0

    .line 91
    .local v4, "rowOffset":I
    const/4 v5, 0x0

    .line 93
    .local v5, "lgPatternFound":I
    move v6, v5

    move v5, v4

    const/4 v4, 0x0

    .local v4, "x":I
    .local v5, "rowOffset":I
    .local v6, "lgPatternFound":I
    :goto_1a
    const/4 v7, 0x6

    if-ge v4, v7, :cond_46

    if-ge v5, v3, :cond_46

    .line 94
    sget-object v7, Lcom/google/zxing/oned/UPCEReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v1, v5, v7}, Lcom/google/zxing/oned/UPCEReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v7

    .line 95
    .local v7, "bestMatch":I
    rem-int/lit8 v8, v7, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    array-length v8, v1

    move v9, v5

    const/4 v5, 0x0

    .end local v5    # "rowOffset":I
    .local v9, "rowOffset":I
    :goto_30
    if-ge v5, v8, :cond_38

    aget v10, v1, v5

    .line 97
    .local v10, "counter":I
    add-int/2addr v9, v10

    .line 96
    .end local v10    # "counter":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 99
    :cond_38
    const/16 v5, 0xa

    if-lt v7, v5, :cond_42

    .line 100
    rsub-int/lit8 v5, v4, 0x5

    shl-int v5, v0, v5

    or-int/2addr v5, v6

    .line 93
    move v6, v5

    .end local v7    # "bestMatch":I
    :cond_42
    add-int/lit8 v4, v4, 0x1

    move v5, v9

    goto :goto_1a

    .line 104
    .end local v4    # "x":I
    .end local v9    # "rowOffset":I
    .restart local v5    # "rowOffset":I
    :cond_46
    invoke-static {p3, v6}, Lcom/google/zxing/oned/UPCEReader;->determineNumSysAndCheckDigit(Ljava/lang/StringBuilder;I)V

    .line 106
    return v5
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .registers 2

    .line 136
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
