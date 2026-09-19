###### Class com.google.zxing.pdf417.decoder.ec.ErrorCorrection (com.google.zxing.pdf417.decoder.ec.ErrorCorrection)
.class public final Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;
.super Ljava/lang/Object;
.source "ErrorCorrection.java"


# instance fields
.field private final field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->PDF417_GF:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    .line 36
    return-void
.end method

.method private findErrorLocations(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)[I
    .registers 7
    .param p1, "errorLocator"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 150
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v0

    const/4 v1, 0x0

    .line 151
    .local v1, "numErrors":I
    move v1, v0

    new-array v0, v0, [I

    .line 152
    .local v0, "result":[I
    const/4 v2, 0x0

    .line 153
    .local v2, "e":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_a
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getSize()I

    move-result v4

    if-ge v3, v4, :cond_27

    if-ge v2, v1, :cond_27

    .line 154
    invoke-virtual {p1, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v4

    if-nez v4, :cond_24

    .line 155
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v4, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v4

    aput v4, v0, v2

    .line 156
    add-int/lit8 v2, v2, 0x1

    .line 153
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 159
    .end local v3    # "i":I
    :cond_27
    if-ne v2, v1, :cond_2a

    .line 162
    return-object v0

    .line 160
    :cond_2a
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v3

    throw v3
.end method

.method private findErrorMagnitudes(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;[I)[I
    .registers 15
    .param p1, "errorEvaluator"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .param p2, "errorLocator"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .param p3, "errorLocations"    # [I

    .line 168
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 169
    .local v2, "errorLocatorDegree":I
    move v2, v0

    new-array v0, v0, [I

    .line 170
    .local v0, "formalDerivativeCoefficients":[I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_a
    if-gt v3, v2, :cond_1d

    .line 171
    sub-int v4, v2, v3

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    .line 172
    invoke-virtual {p2, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v5

    aput v5, v0, v4

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 174
    .end local v3    # "i":I
    :cond_1d
    new-instance v3, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v3, v4, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 177
    .local v3, "formalDerivative":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    array-length v4, p3

    move v5, v1

    .line 178
    .local v5, "s":I
    move v5, v4

    new-array v4, v4, [I

    .line 179
    .local v4, "result":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2a
    if-ge v6, v5, :cond_53

    .line 180
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    aget v8, p3, v6

    invoke-virtual {v7, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v7

    .line 181
    .local v7, "xiInverse":I
    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {p1, v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v9

    invoke-virtual {v8, v1, v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v8

    .line 182
    .local v8, "numerator":I
    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v3, v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v9

    .line 183
    .local v9, "denominator":I
    iget-object v10, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v10, v8, v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v10

    aput v10, v4, v6

    .line 179
    .end local v7    # "xiInverse":I
    .end local v8    # "numerator":I
    .end local v9    # "denominator":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 185
    .end local v6    # "i":I
    :cond_53
    return-object v4
.end method

.method private runEuclideanAlgorithm(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;I)[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .registers 16
    .param p1, "a"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .param p2, "b"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .param p3, "R"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 101
    move-object v0, p1

    .line 102
    .local v0, "temp":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object p1, p2

    .line 103
    move-object p2, v0

    .line 106
    .end local v0    # "temp":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_d
    move-object v0, p1

    .line 107
    .local v0, "rLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v1, p2

    .line 108
    .local v1, "r":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v2

    .line 109
    .local v2, "tLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getOne()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v3

    .line 112
    .local v3, "t":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :goto_1b
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v4

    div-int/lit8 v5, p3, 0x2

    if-lt v4, v5, :cond_8e

    .line 113
    move-object v4, v0

    .line 114
    .local v4, "rLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v5, v2

    .line 115
    .local v5, "tLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v0, v1

    .line 116
    move-object v2, v3

    .line 119
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v6

    if-nez v6, :cond_89

    .line 123
    move-object v1, v4

    .line 124
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v6

    .line 125
    .local v6, "q":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v7

    .line 126
    .local v7, "denominatorLeadingTerm":I
    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v8, v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v8

    .line 127
    .local v8, "dltInverse":I
    :goto_42
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v9

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v10

    if-lt v9, v10, :cond_7c

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v9

    if-nez v9, :cond_7c

    .line 128
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v9

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v10

    sub-int/2addr v9, v10

    .line 129
    .local v9, "degreeDiff":I
    iget-object v10, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v11

    invoke-virtual {v10, v11, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v10

    .line 130
    .local v10, "scale":I
    iget-object v11, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v11, v9, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->buildMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->add(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v6

    .line 131
    invoke-virtual {v0, v9, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiplyByMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->subtract(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v1

    .line 132
    .end local v9    # "degreeDiff":I
    .end local v10    # "scale":I
    goto :goto_42

    .line 134
    :cond_7c
    invoke-virtual {v6, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->subtract(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->negative()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v3

    .line 135
    .end local v4    # "rLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v5    # "tLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v6    # "q":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v7    # "denominatorLeadingTerm":I
    .end local v8    # "dltInverse":I
    goto :goto_1b

    .line 121
    .restart local v4    # "rLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v5    # "tLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_89
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v6

    throw v6

    .line 137
    .end local v4    # "rLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v5    # "tLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_8e
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v5

    move v6, v4

    .line 138
    .local v6, "sigmaTildeAtZero":I
    move v6, v5

    if-eqz v5, :cond_ae

    .line 142
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v5, v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v5

    .line 143
    .local v5, "inverse":I
    invoke-virtual {v3, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v7

    .line 144
    .local v7, "sigma":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    invoke-virtual {v1, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v8

    .line 145
    .local v8, "omega":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    aput-object v7, v9, v4

    const/4 v4, 0x1

    aput-object v8, v9, v4

    return-object v9

    .line 139
    .end local v5    # "inverse":I
    .end local v7    # "sigma":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v8    # "omega":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_ae
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method public decode([II[I)I
    .registers 22
    .param p1, "received"    # [I
    .param p2, "numECCodewords"    # I
    .param p3, "erasures"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 49
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v5, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v4, v5, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 50
    .local v4, "poly":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    new-array v5, v2, [I

    .line 51
    .local v5, "S":[I
    const/4 v6, 0x0

    .line 52
    .local v6, "error":Z
    move v7, v6

    move v6, v2

    .local v6, "i":I
    .local v7, "error":Z
    :goto_14
    if-lez v6, :cond_2a

    .line 53
    iget-object v8, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v8, v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->exp(I)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v8

    .line 54
    .local v8, "eval":I
    sub-int v9, v2, v6

    aput v8, v5, v9

    .line 55
    if-eqz v8, :cond_27

    .line 56
    const/4 v7, 0x1

    .line 52
    .end local v8    # "eval":I
    :cond_27
    add-int/lit8 v6, v6, -0x1

    goto :goto_14

    .line 60
    .end local v6    # "i":I
    :cond_2a
    const/4 v6, 0x0

    if-nez v7, :cond_2e

    .line 61
    return v6

    .line 64
    :cond_2e
    iget-object v8, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getOne()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v8

    .line 65
    .local v8, "knownErrors":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    const/4 v9, 0x1

    if-eqz v3, :cond_68

    .line 66
    array-length v10, v3

    move-object v11, v8

    const/4 v8, 0x0

    .end local v8    # "knownErrors":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .local v11, "knownErrors":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :goto_3a
    if-ge v8, v10, :cond_67

    aget v12, v3, v8

    .line 67
    .local v12, "erasure":I
    iget-object v13, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    array-length v14, v1

    sub-int/2addr v14, v9

    sub-int/2addr v14, v12

    invoke-virtual {v13, v14}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->exp(I)I

    move-result v13

    .line 69
    .local v13, "b":I
    new-instance v14, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v15, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    const/4 v9, 0x2

    new-array v9, v9, [I

    iget-object v3, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v3, v6, v13}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v3

    aput v3, v9, v6

    const/4 v3, 0x1

    aput v3, v9, v3

    invoke-direct {v14, v15, v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move-object v3, v14

    .line 70
    .local v3, "term":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    invoke-virtual {v11, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v11

    .line 66
    .end local v3    # "term":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v12    # "erasure":I
    .end local v13    # "b":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, p3

    const/4 v9, 0x1

    goto :goto_3a

    .line 74
    :cond_67
    move-object v8, v11

    .end local v11    # "knownErrors":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v8    # "knownErrors":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_68
    new-instance v3, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v9, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v3, v9, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    .line 77
    .local v3, "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    iget-object v9, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    .line 78
    const/4 v10, 0x1

    invoke-virtual {v9, v2, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->buildMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v9

    invoke-direct {v0, v9, v3, v2}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->runEuclideanAlgorithm(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;I)[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v9

    const/4 v11, 0x0

    .line 79
    .local v11, "sigmaOmega":[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v11, v9

    aget-object v9, v9, v6

    .line 80
    .local v9, "sigma":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    aget-object v12, v11, v10

    .line 84
    .local v12, "omega":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    invoke-direct {v0, v9}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->findErrorLocations(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)[I

    move-result-object v10

    .line 85
    .local v10, "errorLocations":[I
    invoke-direct {v0, v12, v9, v10}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->findErrorMagnitudes(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;[I)[I

    move-result-object v13

    .line 87
    .local v13, "errorMagnitudes":[I
    const/4 v14, 0x0

    .restart local v6    # "i":I
    :goto_89
    array-length v15, v10

    if-ge v6, v15, :cond_b8

    .line 88
    array-length v15, v1

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    iget-object v2, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v17, v3

    .end local v3    # "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .local v17, "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    aget v3, v10, v6

    invoke-virtual {v2, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->log(I)I

    move-result v2

    sub-int/2addr v15, v2

    move v2, v14

    .line 89
    .local v2, "position":I
    move v14, v15

    .end local v2    # "position":I
    .local v14, "position":I
    if-ltz v15, :cond_b3

    .line 92
    iget-object v2, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    aget v3, v1, v14

    aget v15, v13, v6

    invoke-virtual {v2, v3, v15}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v2

    aput v2, v1, v14

    .line 87
    .end local v14    # "position":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v17

    move/from16 v2, p2

    goto :goto_89

    .line 90
    :cond_b3
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v2

    throw v2

    .line 94
    .end local v6    # "i":I
    .end local v17    # "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v3    # "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_b8
    move-object/from16 v17, v3

    .end local v3    # "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .restart local v17    # "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    array-length v2, v10

    return v2
.end method
