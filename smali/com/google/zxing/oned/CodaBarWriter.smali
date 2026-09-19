###### Class com.google.zxing.oned.CodaBarWriter (com.google.zxing.oned.CodaBarWriter)
.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "CodaBarWriter.java"


# static fields
.field private static final ALT_START_END_CHARS:[C

.field private static final CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

.field private static final DEFAULT_GUARD:C

.field private static final START_END_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_1e

    sput-object v1, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    .line 27
    new-array v1, v0, [C

    fill-array-data v1, :array_26

    sput-object v1, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    .line 28
    new-array v0, v0, [C

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    .line 29
    sget-object v0, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    sput-char v0, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    return-void

    :array_1e
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    :array_26
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data

    :array_2e
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .registers 14
    .param p1, "contents"    # Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ge v0, v3, :cond_21

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v3, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v3, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_9a

    .line 39
    :cond_21
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 40
    .local v0, "firstChar":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 41
    .local v3, "lastChar":C
    sget-object v4, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static {v4, v0}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    .line 42
    .local v4, "startsNormal":Z
    sget-object v5, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static {v5, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v5

    .line 43
    .local v5, "endsNormal":Z
    sget-object v6, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static {v6, v0}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v6

    .line 44
    .local v6, "startsAlt":Z
    sget-object v7, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static {v7, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v7

    .line 45
    .local v7, "endsAlt":Z
    if-eqz v4, :cond_67

    .line 46
    if-eqz v5, :cond_53

    .end local v0    # "firstChar":C
    .end local v3    # "lastChar":C
    .end local v4    # "startsNormal":Z
    .end local v5    # "endsNormal":Z
    .end local v6    # "startsAlt":Z
    .end local v7    # "endsAlt":Z
    goto :goto_9a

    .line 47
    .restart local v0    # "firstChar":C
    .restart local v3    # "lastChar":C
    .restart local v4    # "startsNormal":Z
    .restart local v5    # "endsNormal":Z
    .restart local v6    # "startsAlt":Z
    .restart local v7    # "endsAlt":Z
    :cond_53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Invalid start/end guards: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_67
    if-eqz v6, :cond_80

    .line 51
    if-eqz v7, :cond_6c

    .end local v0    # "firstChar":C
    .end local v3    # "lastChar":C
    .end local v4    # "startsNormal":Z
    .end local v5    # "endsNormal":Z
    .end local v6    # "startsAlt":Z
    .end local v7    # "endsAlt":Z
    goto :goto_9a

    .line 52
    .restart local v0    # "firstChar":C
    .restart local v3    # "lastChar":C
    .restart local v4    # "startsNormal":Z
    .restart local v5    # "endsNormal":Z
    .restart local v6    # "startsAlt":Z
    .restart local v7    # "endsAlt":Z
    :cond_6c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Invalid start/end guards: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_80
    if-nez v5, :cond_179

    if-nez v7, :cond_179

    .line 61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v9, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v9, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    .end local v0    # "firstChar":C
    .end local v3    # "lastChar":C
    .end local v4    # "startsNormal":Z
    .end local v5    # "endsNormal":Z
    .end local v6    # "startsAlt":Z
    .end local v7    # "endsAlt":Z
    :goto_9a
    const/16 v0, 0x14

    .line 67
    .local v0, "resultLength":I
    move v3, v0

    const/4 v0, 0x1

    .local v0, "i":I
    .local v3, "resultLength":I
    :goto_9e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v0, v4, :cond_f1

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_ec

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_ec

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x24

    if-ne v4, v5, :cond_c0

    goto :goto_ec

    .line 70
    :cond_c0
    sget-object v4, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 71
    add-int/lit8 v3, v3, 0xa

    goto :goto_ee

    .line 73
    :cond_cf
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Cannot encode : \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_ec
    :goto_ec
    add-int/lit8 v3, v3, 0x9

    .line 67
    :goto_ee
    add-int/lit8 v0, v0, 0x1

    goto :goto_9e

    .line 77
    .end local v0    # "i":I
    :cond_f1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/2addr v0, v3

    .line 79
    new-array v0, v0, [Z

    .line 80
    .local v0, "result":[Z
    const/4 v4, 0x0

    .line 81
    .local v4, "position":I
    move v5, v4

    const/4 v4, 0x0

    .local v4, "index":I
    .local v5, "position":I
    :goto_fc
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_178

    .line 82
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    .line 83
    .local v6, "c":C
    if-eqz v4, :cond_113

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    if-ne v4, v7, :cond_130

    .line 85
    :cond_113
    const/16 v7, 0x2a

    if-eq v6, v7, :cond_12d

    const/16 v7, 0x45

    if-eq v6, v7, :cond_12a

    const/16 v7, 0x4e

    if-eq v6, v7, :cond_127

    const/16 v7, 0x54

    if-eq v6, v7, :cond_124

    goto :goto_130

    .line 87
    :cond_124
    const/16 v6, 0x41

    .line 88
    goto :goto_130

    .line 90
    :cond_127
    const/16 v6, 0x42

    .line 91
    goto :goto_130

    .line 96
    :cond_12a
    const/16 v6, 0x44

    goto :goto_130

    .line 93
    :cond_12d
    const/16 v6, 0x43

    .line 94
    nop

    .line 100
    :cond_130
    :goto_130
    const/4 v7, 0x0

    .line 101
    .local v7, "code":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_132
    sget-object v9, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    array-length v9, v9

    if-ge v8, v9, :cond_145

    .line 103
    sget-object v9, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v9, v9, v8

    if-ne v6, v9, :cond_142

    .line 104
    sget-object v9, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v7, v9, v8

    .line 105
    goto :goto_145

    .line 101
    :cond_142
    add-int/lit8 v8, v8, 0x1

    goto :goto_132

    .line 108
    .end local v8    # "i":I
    :cond_145
    :goto_145
    const/4 v8, 0x1

    .line 109
    .local v8, "color":Z
    const/4 v9, 0x0

    .line 110
    .local v9, "counter":I
    move v10, v9

    move v9, v8

    move v8, v5

    const/4 v5, 0x0

    .line 111
    .local v5, "bit":I
    .local v8, "position":I
    .local v9, "color":Z
    .local v10, "counter":I
    :goto_14b
    const/4 v11, 0x7

    if-ge v5, v11, :cond_169

    .line 112
    aput-boolean v9, v0, v8

    .line 113
    add-int/lit8 v8, v8, 0x1

    .line 114
    rsub-int/lit8 v11, v5, 0x6

    shr-int v11, v7, v11

    and-int/2addr v11, v2

    if-eqz v11, :cond_15f

    if-ne v10, v2, :cond_15c

    goto :goto_15f

    .line 119
    :cond_15c
    add-int/lit8 v10, v10, 0x1

    goto :goto_14b

    .line 115
    :cond_15f
    :goto_15f
    if-nez v9, :cond_163

    const/4 v11, 0x1

    goto :goto_164

    :cond_163
    const/4 v11, 0x0

    :goto_164
    move v9, v11

    .line 116
    add-int/lit8 v5, v5, 0x1

    .line 117
    const/4 v10, 0x0

    goto :goto_14b

    .line 122
    :cond_169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v2

    if-ge v4, v11, :cond_174

    .line 123
    aput-boolean v1, v0, v8

    .line 124
    add-int/lit8 v8, v8, 0x1

    .line 81
    .end local v6    # "c":C
    .end local v7    # "code":I
    .end local v8    # "position":I
    .end local v9    # "color":Z
    .end local v10    # "counter":I
    .local v5, "position":I
    :cond_174
    move v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_fc

    .line 127
    .end local v4    # "index":I
    :cond_178
    return-object v0

    .line 58
    .local v0, "firstChar":C
    .local v3, "lastChar":C
    .local v4, "startsNormal":Z
    .local v5, "endsNormal":Z
    .local v6, "startsAlt":Z
    .local v7, "endsAlt":Z
    :cond_179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Invalid start/end guards: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
