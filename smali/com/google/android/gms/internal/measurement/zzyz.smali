###### Class com.google.android.gms.internal.measurement.zzyz (com.google.android.gms.internal.measurement.zzyz)
.class final Lcom/google/android/gms/internal/measurement/zzyz;
.super Lcom/google/android/gms/internal/measurement/zzyw;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyw;-><init>()V

    return-void
.end method

.method private static zza([BIJI)I
    .registers 7

    .line 171
    packed-switch p4, :pswitch_data_28

    .line 177
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 174
    :pswitch_9
    nop

    .line 175
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJ)B

    move-result p0

    .line 176
    invoke-static {p1, p4, p0}, Lcom/google/android/gms/internal/measurement/zzyu;->zzd(III)I

    move-result p0

    return p0

    .line 173
    :pswitch_1a
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJ)B

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzyu;->zzr(II)I

    move-result p0

    return p0

    .line 172
    :pswitch_23
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzyu;->zzbz(I)I

    move-result p0

    return p0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_23
        :pswitch_1a
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method final zzb(I[BII)I
    .registers 22

    .line 2
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    or-int v3, v1, v2

    array-length v4, v0

    sub-int/2addr v4, v2

    or-int/2addr v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ltz v3, :cond_c5

    .line 5
    int-to-long v7, v1

    .line 6
    int-to-long v1, v2

    .line 7
    sub-long/2addr v1, v7

    long-to-int v1, v1

    .line 8
    nop

    .line 9
    const/16 v2, 0x10

    const-wide/16 v9, 0x1

    if-ge v1, v2, :cond_1e

    .line 10
    nop

    .line 16
    const/4 v2, 0x0

    goto :goto_31

    .line 11
    :cond_1e
    move-wide v11, v7

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_2f

    .line 12
    add-long v13, v11, v9

    invoke-static {v0, v11, v12}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJ)B

    move-result v3

    if-gez v3, :cond_2b

    .line 13
    goto :goto_31

    .line 14
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    .line 11
    move-wide v11, v13

    goto :goto_20

    .line 15
    :cond_2f
    nop

    .line 16
    move v2, v1

    .line 17
    :goto_31
    sub-int/2addr v1, v2

    .line 18
    int-to-long v2, v2

    add-long/2addr v7, v2

    .line 19
    :goto_34
    nop

    .line 20
    const/4 v2, 0x0

    :goto_36
    if-lez v1, :cond_49

    add-long v2, v7, v9

    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJ)B

    move-result v7

    if-ltz v7, :cond_46

    add-int/lit8 v1, v1, -0x1

    move-wide v15, v2

    move v2, v7

    move-wide v7, v15

    goto :goto_36

    .line 21
    :cond_46
    move-wide v15, v2

    move v2, v7

    move-wide v7, v15

    :cond_49
    if-nez v1, :cond_4c

    .line 22
    return v6

    .line 23
    :cond_4c
    add-int/lit8 v1, v1, -0x1

    .line 24
    const/16 v3, -0x20

    const/16 v11, -0x41

    const/4 v12, -0x1

    if-ge v2, v3, :cond_6a

    .line 25
    if-nez v1, :cond_58

    .line 26
    return v2

    .line 27
    :cond_58
    add-int/lit8 v1, v1, -0x1

    .line 28
    const/16 v3, -0x3e

    if-lt v2, v3, :cond_69

    add-long v2, v7, v9

    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJ)B

    move-result v7

    if-le v7, v11, :cond_67

    goto :goto_69

    .line 45
    :cond_67
    move-wide v7, v2

    goto :goto_c2

    .line 29
    :cond_69
    :goto_69
    return v12

    .line 30
    :cond_6a
    const/16 v13, -0x10

    if-ge v2, v13, :cond_97

    .line 31
    if-ge v1, v4, :cond_75

    .line 32
    invoke-static {v0, v2, v7, v8, v1}, Lcom/google/android/gms/internal/measurement/zzyz;->zza([BIJI)I

    move-result v0

    return v0

    .line 33
    :cond_75
    add-int/lit8 v1, v1, -0x2

    .line 34
    add-long v13, v7, v9

    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJ)B

    move-result v7

    if-gt v7, v11, :cond_96

    const/16 v8, -0x60

    if-ne v2, v3, :cond_85

    if-lt v7, v8, :cond_96

    :cond_85
    const/16 v3, -0x13

    if-ne v2, v3, :cond_8b

    if-ge v7, v8, :cond_96

    :cond_8b
    const/4 v2, 0x0

    add-long v7, v13, v9

    .line 35
    invoke-static {v0, v13, v14}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJ)B

    move-result v2

    if-le v2, v11, :cond_95

    goto :goto_96

    .line 37
    :cond_95
    goto :goto_34

    .line 36
    :cond_96
    :goto_96
    return v12

    .line 38
    :cond_97
    if-ge v1, v5, :cond_9e

    .line 39
    invoke-static {v0, v2, v7, v8, v1}, Lcom/google/android/gms/internal/measurement/zzyz;->zza([BIJI)I

    move-result v0

    return v0

    .line 40
    :cond_9e
    add-int/lit8 v1, v1, -0x3

    .line 41
    add-long v13, v7, v9

    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJ)B

    move-result v3

    if-gt v3, v11, :cond_c4

    shl-int/lit8 v2, v2, 0x1c

    add-int/lit8 v3, v3, 0x70

    add-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1e

    if-nez v2, :cond_c4

    add-long v2, v13, v9

    .line 42
    invoke-static {v0, v13, v14}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJ)B

    move-result v7

    if-gt v7, v11, :cond_c4

    add-long v7, v2, v9

    .line 43
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJ)B

    move-result v2

    if-le v2, v11, :cond_c2

    goto :goto_c4

    .line 45
    :cond_c2
    :goto_c2
    goto/16 :goto_34

    .line 44
    :cond_c4
    :goto_c4
    return v12

    .line 3
    :cond_c5
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-array v5, v5, [Ljava/lang/Object;

    array-length v0, v0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    const-string v0, "Array length=%d, index=%d, limit=%d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method final zzb(Ljava/lang/CharSequence;[BII)I
    .registers 22

    .line 92
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    .line 93
    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 94
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 95
    if-gt v8, v3, :cond_123

    array-length v9, v1

    sub-int/2addr v9, v3

    if-lt v9, v2, :cond_123

    .line 98
    const/4 v2, 0x0

    .line 99
    :goto_16
    const/16 v3, 0x80

    const-wide/16 v9, 0x1

    if-ge v2, v8, :cond_2b

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ge v11, v3, :cond_2b

    .line 100
    add-long/2addr v9, v4

    int-to-byte v3, v11

    invoke-static {v1, v4, v5, v3}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJB)V

    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 99
    move-wide v4, v9

    goto :goto_16

    .line 102
    :cond_2b
    if-ne v2, v8, :cond_2f

    .line 103
    long-to-int v0, v4

    return v0

    .line 104
    :cond_2f
    :goto_2f
    if-ge v2, v8, :cond_121

    .line 105
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .line 106
    if-ge v11, v3, :cond_44

    cmp-long v12, v4, v6

    if-gez v12, :cond_44

    .line 107
    add-long v12, v4, v9

    int-to-byte v11, v11

    invoke-static {v1, v4, v5, v11}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJB)V

    .line 128
    :goto_41
    move-wide v4, v12

    goto/16 :goto_db

    .line 108
    :cond_44
    const/16 v12, 0x800

    if-ge v11, v12, :cond_65

    const-wide/16 v12, 0x2

    sub-long v12, v6, v12

    cmp-long v14, v4, v12

    if-gtz v14, :cond_65

    .line 109
    add-long v12, v4, v9

    ushr-int/lit8 v14, v11, 0x6

    or-int/lit16 v14, v14, 0x3c0

    int-to-byte v14, v14

    invoke-static {v1, v4, v5, v14}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJB)V

    .line 110
    add-long v4, v12, v9

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v11, v3

    int-to-byte v11, v11

    invoke-static {v1, v12, v13, v11}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJB)V

    goto/16 :goto_db

    .line 111
    :cond_65
    const v12, 0xdfff

    const v13, 0xd800

    if-lt v11, v13, :cond_6f

    if-ge v12, v11, :cond_96

    :cond_6f
    const-wide/16 v14, 0x3

    sub-long v14, v6, v14

    cmp-long v16, v4, v14

    if-gtz v16, :cond_96

    .line 112
    add-long v12, v4, v9

    ushr-int/lit8 v14, v11, 0xc

    or-int/lit16 v14, v14, 0x1e0

    int-to-byte v14, v14

    invoke-static {v1, v4, v5, v14}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJB)V

    .line 113
    add-long v4, v12, v9

    ushr-int/lit8 v14, v11, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v3

    int-to-byte v14, v14

    invoke-static {v1, v12, v13, v14}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJB)V

    .line 114
    add-long v12, v4, v9

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v11, v3

    int-to-byte v11, v11

    invoke-static {v1, v4, v5, v11}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJB)V

    goto :goto_41

    .line 115
    :cond_96
    const-wide/16 v14, 0x4

    sub-long v14, v6, v14

    cmp-long v16, v4, v14

    if-gtz v16, :cond_e8

    .line 116
    add-int/lit8 v12, v2, 0x1

    if-eq v12, v8, :cond_df

    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v11, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v13

    if-eqz v13, :cond_e0

    .line 118
    invoke-static {v11, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    .line 119
    add-long v13, v4, v9

    ushr-int/lit8 v11, v2, 0x12

    or-int/lit16 v11, v11, 0xf0

    int-to-byte v11, v11

    invoke-static {v1, v4, v5, v11}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJB)V

    .line 120
    add-long v4, v13, v9

    ushr-int/lit8 v11, v2, 0xc

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v11, v3

    int-to-byte v11, v11

    invoke-static {v1, v13, v14, v11}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJB)V

    .line 121
    add-long v13, v4, v9

    ushr-int/lit8 v11, v2, 0x6

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v11, v3

    int-to-byte v11, v11

    invoke-static {v1, v4, v5, v11}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJB)V

    .line 122
    add-long v4, v13, v9

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-static {v1, v13, v14, v2}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJB)V

    .line 123
    nop

    .line 128
    move v2, v12

    :goto_db
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2f

    .line 117
    :cond_df
    move v12, v2

    :cond_e0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyy;

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v0, v12, v8}, Lcom/google/android/gms/internal/measurement/zzyy;-><init>(II)V

    throw v0

    .line 124
    :cond_e8
    if-gt v13, v11, :cond_100

    if-gt v11, v12, :cond_100

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_fa

    .line 125
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_100

    .line 126
    :cond_fa
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyy;

    invoke-direct {v0, v2, v8}, Lcom/google/android/gms/internal/measurement/zzyy;-><init>(II)V

    throw v0

    .line 127
    :cond_100
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed writing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " at index "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_121
    long-to-int v0, v4

    return v0

    .line 96
    :cond_123
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v8, v8, -0x1

    .line 97
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/2addr v2, v3

    const/16 v3, 0x25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed writing "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " at index "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final zzb(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 23

    .line 130
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzys;->zzb(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 131
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 132
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    .line 133
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 134
    int-to-long v9, v8

    sub-long v11, v6, v4

    cmp-long v13, v9, v11

    if-gtz v13, :cond_150

    .line 137
    const/4 v9, 0x0

    .line 138
    :goto_20
    const/16 v10, 0x80

    const-wide/16 v11, 0x1

    if-ge v9, v8, :cond_35

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v10, :cond_35

    .line 139
    add-long/2addr v11, v4

    int-to-byte v10, v13

    invoke-static {v4, v5, v10}, Lcom/google/android/gms/internal/measurement/zzys;->zza(JB)V

    .line 140
    add-int/lit8 v9, v9, 0x1

    .line 138
    move-wide v4, v11

    goto :goto_20

    .line 141
    :cond_35
    if-ne v9, v8, :cond_3d

    .line 142
    sub-long/2addr v4, v2

    long-to-int v0, v4

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    return-void

    .line 144
    :cond_3d
    :goto_3d
    if-ge v9, v8, :cond_149

    .line 145
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 146
    if-ge v13, v10, :cond_54

    cmp-long v14, v4, v6

    if-gez v14, :cond_54

    .line 147
    add-long v14, v4, v11

    int-to-byte v13, v13

    invoke-static {v4, v5, v13}, Lcom/google/android/gms/internal/measurement/zzys;->zza(JB)V

    .line 168
    :goto_4f
    move-wide v4, v11

    :goto_50
    const/16 v11, 0x80

    goto/16 :goto_ff

    .line 148
    :cond_54
    const/16 v14, 0x800

    if-ge v13, v14, :cond_77

    const-wide/16 v14, 0x2

    sub-long v14, v6, v14

    cmp-long v16, v4, v14

    if-gtz v16, :cond_77

    .line 149
    add-long v14, v4, v11

    ushr-int/lit8 v10, v13, 0x6

    or-int/lit16 v10, v10, 0x3c0

    int-to-byte v10, v10

    invoke-static {v4, v5, v10}, Lcom/google/android/gms/internal/measurement/zzys;->zza(JB)V

    .line 150
    add-long v4, v14, v11

    and-int/lit8 v10, v13, 0x3f

    const/16 v13, 0x80

    or-int/2addr v10, v13

    int-to-byte v10, v10

    invoke-static {v14, v15, v10}, Lcom/google/android/gms/internal/measurement/zzys;->zza(JB)V

    .line 168
    move-wide v14, v4

    goto :goto_4f

    .line 151
    :cond_77
    const v10, 0xdfff

    const v14, 0xd800

    if-lt v13, v14, :cond_81

    if-ge v10, v13, :cond_b0

    :cond_81
    const-wide/16 v15, 0x3

    sub-long v15, v6, v15

    cmp-long v17, v4, v15

    if-gtz v17, :cond_b0

    .line 152
    add-long v14, v4, v11

    ushr-int/lit8 v10, v13, 0xc

    or-int/lit16 v10, v10, 0x1e0

    int-to-byte v10, v10

    invoke-static {v4, v5, v10}, Lcom/google/android/gms/internal/measurement/zzys;->zza(JB)V

    .line 153
    add-long v4, v14, v11

    ushr-int/lit8 v10, v13, 0x6

    and-int/lit8 v10, v10, 0x3f

    const/16 v11, 0x80

    or-int/2addr v10, v11

    int-to-byte v10, v10

    invoke-static {v14, v15, v10}, Lcom/google/android/gms/internal/measurement/zzys;->zza(JB)V

    .line 154
    const-wide/16 v14, 0x1

    add-long v18, v4, v14

    and-int/lit8 v10, v13, 0x3f

    or-int/2addr v10, v11

    int-to-byte v10, v10

    invoke-static {v4, v5, v10}, Lcom/google/android/gms/internal/measurement/zzys;->zza(JB)V

    .line 168
    move-wide/from16 v14, v18

    const-wide/16 v4, 0x1

    goto :goto_50

    .line 155
    :cond_b0
    const-wide/16 v11, 0x4

    sub-long v11, v6, v11

    cmp-long v15, v4, v11

    if-gtz v15, :cond_110

    .line 156
    add-int/lit8 v10, v9, 0x1

    if-eq v10, v8, :cond_108

    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v13, v9}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v11

    if-eqz v11, :cond_107

    .line 158
    invoke-static {v13, v9}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v9

    .line 159
    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    ushr-int/lit8 v15, v9, 0x12

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    invoke-static {v4, v5, v15}, Lcom/google/android/gms/internal/measurement/zzys;->zza(JB)V

    .line 160
    add-long v4, v13, v11

    ushr-int/lit8 v15, v9, 0xc

    and-int/lit8 v15, v15, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v15, 0x80

    int-to-byte v12, v12

    invoke-static {v13, v14, v12}, Lcom/google/android/gms/internal/measurement/zzys;->zza(JB)V

    .line 161
    const-wide/16 v12, 0x1

    add-long v14, v4, v12

    ushr-int/lit8 v16, v9, 0x6

    and-int/lit8 v12, v16, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    invoke-static {v4, v5, v12}, Lcom/google/android/gms/internal/measurement/zzys;->zza(JB)V

    .line 162
    const-wide/16 v4, 0x1

    add-long v12, v14, v4

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v11

    int-to-byte v9, v9

    invoke-static {v14, v15, v9}, Lcom/google/android/gms/internal/measurement/zzys;->zza(JB)V

    .line 163
    nop

    .line 168
    move v9, v10

    move-wide v14, v12

    :goto_ff
    add-int/lit8 v9, v9, 0x1

    .line 144
    move-wide v11, v4

    move-wide v4, v14

    const/16 v10, 0x80

    goto/16 :goto_3d

    .line 157
    :cond_107
    move v9, v10

    :cond_108
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyy;

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/measurement/zzyy;-><init>(II)V

    throw v0

    .line 164
    :cond_110
    if-gt v14, v13, :cond_128

    if-gt v13, v10, :cond_128

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_122

    .line 165
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_128

    .line 166
    :cond_122
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyy;

    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/measurement/zzyy;-><init>(II)V

    throw v0

    .line 167
    :cond_128
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed writing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " at index "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_149
    const/4 v0, 0x0

    sub-long/2addr v4, v2

    long-to-int v0, v4

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 170
    return-void

    .line 135
    :cond_150
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v8, v8, -0x1

    .line 136
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/16 v3, 0x25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed writing "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " at index "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method final zzh([BII)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzwe;
        }
    .end annotation

    .line 46
    or-int v0, p2, p3

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_cc

    .line 49
    nop

    .line 50
    add-int v0, p2, p3

    .line 51
    new-array p3, p3, [C

    .line 52
    nop

    .line 53
    const/4 v3, 0x0

    :goto_11
    if-ge p2, v0, :cond_28

    .line 54
    int-to-long v4, p2

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJ)B

    move-result v4

    .line 55
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzyv;->zzh(B)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 56
    add-int/lit8 p2, p2, 0x1

    .line 57
    add-int/lit8 v5, v3, 0x1

    invoke-static {v4, p3, v3}, Lcom/google/android/gms/internal/measurement/zzyv;->zzb(B[CI)V

    .line 58
    nop

    .line 53
    move v3, v5

    goto :goto_11

    .line 59
    :cond_28
    move v8, v3

    :goto_29
    if-ge p2, v0, :cond_c6

    .line 60
    add-int/lit8 v3, p2, 0x1

    int-to-long v4, p2

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJ)B

    move-result p2

    .line 61
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzyv;->zzh(B)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 62
    add-int/lit8 v4, v8, 0x1

    invoke-static {p2, p3, v8}, Lcom/google/android/gms/internal/measurement/zzyv;->zzb(B[CI)V

    .line 63
    :goto_3d
    if-ge v3, v0, :cond_54

    .line 64
    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJ)B

    move-result p2

    .line 65
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzyv;->zzh(B)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    add-int/lit8 v5, v4, 0x1

    invoke-static {p2, p3, v4}, Lcom/google/android/gms/internal/measurement/zzyv;->zzb(B[CI)V

    .line 68
    nop

    .line 63
    move v4, v5

    goto :goto_3d

    .line 90
    :cond_54
    move p2, v3

    move v8, v4

    goto/16 :goto_bf

    .line 69
    :cond_58
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzyv;->zzi(B)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 70
    if-ge v3, v0, :cond_6f

    .line 72
    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 73
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJ)B

    move-result v3

    add-int/lit8 v5, v8, 0x1

    .line 74
    invoke-static {p2, v3, p3, v8}, Lcom/google/android/gms/internal/measurement/zzyv;->zzb(BB[CI)V

    .line 59
    move p2, v4

    move v8, v5

    goto :goto_29

    .line 71
    :cond_6f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxe()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p1

    throw p1

    .line 75
    :cond_74
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzyv;->zzj(B)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 76
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_94

    .line 78
    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 79
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJ)B

    move-result v3

    add-int/lit8 v5, v4, 0x1

    int-to-long v6, v4

    .line 80
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJ)B

    move-result v4

    add-int/lit8 v6, v8, 0x1

    .line 81
    invoke-static {p2, v3, v4, p3, v8}, Lcom/google/android/gms/internal/measurement/zzyv;->zzb(BBB[CI)V

    .line 59
    move p2, v5

    move v8, v6

    goto :goto_29

    .line 77
    :cond_94
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxe()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p1

    throw p1

    .line 82
    :cond_99
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_c1

    .line 84
    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 85
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJ)B

    move-result v5

    add-int/lit8 v3, v4, 0x1

    int-to-long v6, v4

    .line 86
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJ)B

    move-result v6

    add-int/lit8 v9, v3, 0x1

    int-to-long v3, v3

    .line 87
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzys;->zza([BJ)B

    move-result v7

    add-int/lit8 v10, v8, 0x1

    .line 88
    move v3, p2

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p3

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/measurement/zzyv;->zzb(BBBB[CI)V

    .line 89
    add-int/2addr v10, v2

    .line 90
    move p2, v9

    move v8, v10

    :goto_bf
    goto/16 :goto_29

    .line 83
    :cond_c1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzwe;->zzxe()Lcom/google/android/gms/internal/measurement/zzwe;

    move-result-object p1

    throw p1

    .line 91
    :cond_c6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 47
    :cond_cc
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length p1, p1

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
