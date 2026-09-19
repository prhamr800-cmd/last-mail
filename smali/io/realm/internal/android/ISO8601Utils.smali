###### Class io.realm.internal.android.ISO8601Utils (io.realm.internal.android.ISO8601Utils)
.class public Lio/realm/internal/android/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field private static final TIMEZONE_UTC:Ljava/util/TimeZone;

.field private static final TIMEZONE_Z:Ljava/util/TimeZone;

.field private static final UTC_ID:Ljava/lang/String; = "UTC"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lio/realm/internal/android/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 57
    sget-object v0, Lio/realm/internal/android/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    sput-object v0, Lio/realm/internal/android/ISO8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .registers 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "expected"    # C

    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_e

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .registers 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 278
    move v0, p1

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 279
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 280
    .local v1, "c":C
    const/16 v2, 0x30

    if-lt v1, v2, :cond_17

    const/16 v2, 0x39

    if-le v1, v2, :cond_14

    goto :goto_17

    .line 278
    .end local v1    # "c":C
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 280
    .restart local v1    # "c":C
    :cond_17
    :goto_17
    return v0

    .line 282
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 26
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 72
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 75
    .local v0, "offset":I
    add-int/lit8 v3, v0, 0x4

    .local v3, "offset":I
    invoke-static {v1, v0, v3}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v0

    .line 76
    .local v0, "year":I
    const/16 v4, 0x2d

    invoke-static {v1, v3, v4}, Lio/realm/internal/android/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 81
    :cond_18
    add-int/lit8 v5, v3, 0x2

    .local v5, "offset":I
    invoke-static {v1, v3, v5}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v3

    .line 82
    .local v3, "month":I
    invoke-static {v1, v5, v4}, Lio/realm/internal/android/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 83
    add-int/lit8 v5, v5, 0x1

    .line 87
    :cond_26
    add-int/lit8 v6, v5, 0x2

    .local v6, "offset":I
    invoke-static {v1, v5, v6}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v5

    .line 89
    .local v5, "day":I
    const/4 v7, 0x0

    .line 90
    .local v7, "hour":I
    const/4 v8, 0x0

    .line 91
    .local v8, "minutes":I
    const/4 v9, 0x0

    .line 92
    .local v9, "seconds":I
    const/4 v10, 0x0

    .line 95
    .local v10, "milliseconds":I
    const/16 v11, 0x54

    invoke-static {v1, v6, v11}, Lio/realm/internal/android/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v11

    .line 97
    .local v11, "hasT":Z
    if-nez v11, :cond_4d

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    if-gt v12, v6, :cond_4d

    .line 98
    new-instance v4, Ljava/util/GregorianCalendar;

    add-int/lit8 v12, v3, -0x1

    invoke-direct {v4, v0, v12, v5}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 100
    .local v4, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 101
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    return-object v12

    .line 104
    .end local v4    # "calendar":Ljava/util/Calendar;
    :cond_4d
    const/16 v12, 0x2b

    const/16 v13, 0x5a

    if-eqz v11, :cond_c1

    .line 107
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v14, v6, 0x2

    .local v14, "offset":I
    invoke-static {v1, v6, v14}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v6

    .end local v6    # "offset":I
    move v7, v6

    .line 108
    const/16 v6, 0x3a

    invoke-static {v1, v14, v6}, Lio/realm/internal/android/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v15

    if-eqz v15, :cond_66

    .line 109
    add-int/lit8 v14, v14, 0x1

    .line 112
    :cond_66
    add-int/lit8 v15, v14, 0x2

    .local v15, "offset":I
    invoke-static {v1, v14, v15}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v14

    .end local v14    # "offset":I
    move v8, v14

    .line 113
    invoke-static {v1, v15, v6}, Lio/realm/internal/android/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 114
    add-int/lit8 v15, v15, 0x1

    .line 117
    .end local v15    # "offset":I
    .restart local v6    # "offset":I
    :cond_75
    move v6, v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-le v14, v6, :cond_c1

    .line 118
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 119
    .local v14, "c":C
    if-eq v14, v13, :cond_c1

    if-eq v14, v12, :cond_c1

    if-eq v14, v4, :cond_c1

    .line 120
    add-int/lit8 v15, v6, 0x2

    .restart local v15    # "offset":I
    invoke-static {v1, v6, v15}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v6

    .line 121
    .end local v9    # "seconds":I
    .local v6, "seconds":I
    const/16 v9, 0x3b

    if-le v6, v9, :cond_96

    const/16 v9, 0x3f

    if-ge v6, v9, :cond_96

    .line 122
    const/16 v6, 0x3b

    .line 125
    .end local v6    # "seconds":I
    .restart local v9    # "seconds":I
    :cond_96
    move v9, v6

    const/16 v6, 0x2e

    invoke-static {v1, v15, v6}, Lio/realm/internal/android/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v6

    if-eqz v6, :cond_c0

    .line 126
    add-int/lit8 v15, v15, 0x1

    .line 127
    add-int/lit8 v6, v15, 0x1

    invoke-static {v1, v6}, Lio/realm/internal/android/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    move-result v6

    .line 128
    .local v6, "endOffset":I
    add-int/lit8 v4, v15, 0x3

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 129
    .local v4, "parseEndOffset":I
    invoke-static {v1, v15, v4}, Lio/realm/internal/android/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v17

    .line 131
    .local v17, "fraction":I
    sub-int v18, v4, v15

    packed-switch v18, :pswitch_data_258

    .line 139
    move/from16 v10, v17

    goto :goto_bf

    .line 133
    :pswitch_b9
    mul-int/lit8 v10, v17, 0xa

    .line 134
    goto :goto_bf

    .line 136
    :pswitch_bc
    mul-int/lit8 v10, v17, 0x64

    .line 137
    nop

    .line 141
    :goto_bf
    goto :goto_c1

    .line 148
    .end local v4    # "parseEndOffset":I
    .end local v6    # "endOffset":I
    .end local v14    # "c":C
    .end local v17    # "fraction":I
    :cond_c0
    move v6, v15

    .end local v15    # "offset":I
    .local v6, "offset":I
    :cond_c1
    :goto_c1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1da

    .line 153
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 155
    .local v4, "timezoneIndicator":C
    const/4 v14, 0x1

    if-ne v4, v13, :cond_d7

    .line 156
    sget-object v12, Lio/realm/internal/android/ISO8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    .line 157
    .local v12, "timezone":Ljava/util/TimeZone;
    add-int/2addr v6, v14

    .line 192
    move/from16 v20, v4

    move/from16 v23, v11

    goto/16 :goto_1a6

    .line 158
    .end local v12    # "timezone":Ljava/util/TimeZone;
    :cond_d7
    if-eq v4, v12, :cond_fa

    const/16 v12, 0x2d

    if-ne v4, v12, :cond_de

    goto :goto_fa

    .line 192
    :cond_de
    new-instance v12, Ljava/lang/IndexOutOfBoundsException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid time zone indicator \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 159
    :cond_fa
    :goto_fa
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 160
    .local v12, "timezoneOffset":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v6, v13

    .line 162
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v15, 0x3

    if-ne v13, v15, :cond_11c

    .line 163
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "00"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 166
    :cond_11c
    const-string v13, "+0000"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_19b

    const-string v13, "+00:00"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_134

    .line 167
    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v23, v11

    goto/16 :goto_1a1

    .line 173
    :cond_134
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "GMT"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 175
    .local v13, "timezoneId":Ljava/lang/String;
    invoke-static {v13}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v15

    .line 177
    .local v15, "timezone":Ljava/util/TimeZone;
    invoke-virtual {v15}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v19, v16

    .line 178
    .local v19, "act":Ljava/lang/String;
    move-object/from16 v14, v19

    .end local v19    # "act":Ljava/lang/String;
    .local v14, "act":Ljava/lang/String;
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_193

    .line 184
    move/from16 v20, v4

    .end local v4    # "timezoneIndicator":C
    .local v20, "timezoneIndicator":C
    const-string v4, ":"

    move/from16 v21, v6

    .end local v6    # "offset":I
    .local v21, "offset":I
    const-string v6, ""

    invoke-virtual {v14, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "cleaned":Ljava/lang/String;
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16c

    .line 191
    .end local v4    # "cleaned":Ljava/lang/String;
    .end local v12    # "timezoneOffset":Ljava/lang/String;
    .end local v13    # "timezoneId":Ljava/lang/String;
    .end local v14    # "act":Ljava/lang/String;
    move/from16 v23, v11

    goto :goto_199

    .line 186
    .restart local v4    # "cleaned":Ljava/lang/String;
    .restart local v12    # "timezoneOffset":Ljava/lang/String;
    .restart local v13    # "timezoneId":Ljava/lang/String;
    .restart local v14    # "act":Ljava/lang/String;
    :cond_16c
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    move-object/from16 v22, v4

    .end local v4    # "cleaned":Ljava/lang/String;
    .local v22, "cleaned":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v11

    .end local v11    # "hasT":Z
    .local v23, "hasT":Z
    const-string v11, "Mismatching time zone indicator: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " given, resolves to "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v15}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 191
    .end local v12    # "timezoneOffset":Ljava/lang/String;
    .end local v13    # "timezoneId":Ljava/lang/String;
    .end local v14    # "act":Ljava/lang/String;
    .end local v20    # "timezoneIndicator":C
    .end local v21    # "offset":I
    .end local v22    # "cleaned":Ljava/lang/String;
    .end local v23    # "hasT":Z
    .local v4, "timezoneIndicator":C
    .restart local v6    # "offset":I
    .restart local v11    # "hasT":Z
    :cond_193
    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v23, v11

    .end local v4    # "timezoneIndicator":C
    .end local v6    # "offset":I
    .end local v11    # "hasT":Z
    .restart local v20    # "timezoneIndicator":C
    .restart local v21    # "offset":I
    .restart local v23    # "hasT":Z
    :goto_199
    move-object v12, v15

    goto :goto_1a4

    .line 167
    .end local v15    # "timezone":Ljava/util/TimeZone;
    .end local v20    # "timezoneIndicator":C
    .end local v21    # "offset":I
    .end local v23    # "hasT":Z
    .restart local v4    # "timezoneIndicator":C
    .restart local v6    # "offset":I
    .restart local v11    # "hasT":Z
    .restart local v12    # "timezoneOffset":Ljava/lang/String;
    :cond_19b
    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v23, v11

    .end local v4    # "timezoneIndicator":C
    .end local v6    # "offset":I
    .end local v11    # "hasT":Z
    .restart local v20    # "timezoneIndicator":C
    .restart local v21    # "offset":I
    .restart local v23    # "hasT":Z
    :goto_1a1
    sget-object v4, Lio/realm/internal/android/ISO8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    .line 191
    move-object v12, v4

    .line 192
    .local v12, "timezone":Ljava/util/TimeZone;
    :goto_1a4
    move/from16 v6, v21

    .end local v21    # "offset":I
    .restart local v6    # "offset":I
    :goto_1a6
    move-object v4, v12

    .line 195
    .end local v12    # "timezone":Ljava/util/TimeZone;
    .local v4, "timezone":Ljava/util/TimeZone;
    new-instance v11, Ljava/util/GregorianCalendar;

    invoke-direct {v11, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 196
    .local v11, "calendar":Ljava/util/Calendar;
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->setLenient(Z)V

    .line 197
    const/4 v12, 0x1

    invoke-virtual {v11, v12, v0}, Ljava/util/Calendar;->set(II)V

    .line 198
    add-int/lit8 v12, v3, -0x1

    const/4 v13, 0x2

    invoke-virtual {v11, v13, v12}, Ljava/util/Calendar;->set(II)V

    .line 199
    const/4 v12, 0x5

    invoke-virtual {v11, v12, v5}, Ljava/util/Calendar;->set(II)V

    .line 200
    const/16 v12, 0xb

    invoke-virtual {v11, v12, v7}, Ljava/util/Calendar;->set(II)V

    .line 201
    const/16 v12, 0xc

    invoke-virtual {v11, v12, v8}, Ljava/util/Calendar;->set(II)V

    .line 202
    const/16 v12, 0xd

    invoke-virtual {v11, v12, v9}, Ljava/util/Calendar;->set(II)V

    .line 203
    const/16 v12, 0xe

    invoke-virtual {v11, v12, v10}, Ljava/util/Calendar;->set(II)V

    .line 205
    invoke-virtual {v2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 206
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    return-object v12

    .line 149
    .end local v4    # "timezone":Ljava/util/TimeZone;
    .end local v20    # "timezoneIndicator":C
    .end local v23    # "hasT":Z
    .local v11, "hasT":Z
    :cond_1da
    move/from16 v23, v11

    .end local v11    # "hasT":Z
    .restart local v23    # "hasT":Z
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v11, "No time zone indicator"

    invoke-direct {v4, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1e4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_1e4} :catch_1e9
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_1e4} :catch_1e6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_1e4} :catch_1e4

    .line 213
    .end local v0    # "year":I
    .end local v3    # "month":I
    .end local v5    # "day":I
    .end local v6    # "offset":I
    .end local v7    # "hour":I
    .end local v8    # "minutes":I
    .end local v9    # "seconds":I
    .end local v10    # "milliseconds":I
    .end local v23    # "hasT":Z
    :catch_1e4
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1ec

    .line 211
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1e6
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/NumberFormatException;
    nop

    .local v0, "fail":Ljava/lang/Exception;
    goto :goto_1eb

    .line 209
    .end local v0    # "fail":Ljava/lang/Exception;
    :catch_1e9
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    nop

    .line 215
    .local v0, "fail":Ljava/lang/Exception;
    :goto_1eb
    nop

    .line 214
    :goto_1ec
    nop

    .line 216
    if-nez v1, :cond_1f1

    const/4 v3, 0x0

    goto :goto_207

    :cond_1f1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "input":Ljava/lang/String;
    :goto_207
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "msg":Ljava/lang/String;
    if-eqz v4, :cond_213

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_231

    .line 219
    :cond_213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 221
    :cond_231
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse date ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 222
    .local v5, "ex":Ljava/text/ParseException;
    invoke-virtual {v5, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 223
    throw v5

    nop

    :pswitch_data_258
    .packed-switch 0x1
        :pswitch_bc
        :pswitch_b9
    .end packed-switch
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .registers 9
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 249
    if-ltz p1, :cond_69

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_69

    if-gt p1, p2, :cond_69

    .line 253
    move v0, p1

    .line 254
    .local v0, "i":I
    const/4 v1, 0x0

    .line 256
    .local v1, "result":I
    const/16 v2, 0xa

    if-ge v0, p2, :cond_3a

    .line 257
    add-int/lit8 v3, v0, 0x1

    .local v3, "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .end local v0    # "i":I
    invoke-static {v0, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 258
    .local v0, "digit":I
    if-ltz v0, :cond_1f

    .line 261
    neg-int v1, v0

    .line 263
    .end local v3    # "i":I
    .local v0, "i":I
    :goto_1d
    move v0, v3

    goto :goto_3a

    .line 259
    .local v0, "digit":I
    .restart local v3    # "i":I
    :cond_1f
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    .end local v3    # "i":I
    .local v0, "i":I
    :cond_3a
    :goto_3a
    if-ge v0, p2, :cond_67

    .line 264
    add-int/lit8 v3, v0, 0x1

    .restart local v3    # "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .end local v0    # "i":I
    invoke-static {v0, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 265
    .local v0, "digit":I
    if-ltz v0, :cond_4c

    .line 268
    mul-int/lit8 v1, v1, 0xa

    .line 269
    sub-int/2addr v1, v0

    goto :goto_1d

    .line 266
    :cond_4c
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    .end local v3    # "i":I
    .local v0, "i":I
    :cond_67
    neg-int v2, v1

    return v2

    .line 250
    .end local v0    # "i":I
    .end local v1    # "result":I
    :cond_69
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
