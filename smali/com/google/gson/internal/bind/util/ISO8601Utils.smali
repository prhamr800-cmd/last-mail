###### Class com.google.gson.internal.bind.util.ISO8601Utils (com.google.gson.internal.bind.util.ISO8601Utils)
.class public Lcom/google/gson/internal/bind/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field private static final TIMEZONE_UTC:Ljava/util/TimeZone;

.field private static final UTC_ID:Ljava/lang/String; = "UTC"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .registers 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "expected"    # C

    .line 288
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

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;

    .line 45
    sget-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Z)Ljava/lang/String;
    .registers 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "millis"    # Z

    .line 56
    sget-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;
    .registers 11
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "millis"    # Z
    .param p2, "tz"    # Ljava/util/TimeZone;

    .line 68
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 69
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 72
    const-string/jumbo v1, "yyyy-MM-ddThh:mm:ss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 73
    .local v1, "capacity":I
    if-eqz p1, :cond_1a

    const-string v2, ".sss"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    add-int/2addr v1, v2

    .line 74
    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "Z"

    :goto_24
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_2c

    :cond_29
    const-string v2, "+hh:mm"

    goto :goto_24

    :goto_2c
    add-int/2addr v1, v2

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77
    .local v2, "formatted":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const-string/jumbo v5, "yyyy"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 78
    const/16 v4, 0x2d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v3

    const-string v3, "MM"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v5, v3}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v5, "dd"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v3, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 82
    const/16 v3, 0x54

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v5, "hh"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v3, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 84
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const-string v6, "mm"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v2, v5, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const-string v6, "ss"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v2, v5, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 88
    if-eqz p1, :cond_b6

    .line 89
    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    const/16 v5, 0xe

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const-string v6, "sss"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v2, v5, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 93
    :cond_b6
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .line 94
    .local v5, "offset":I
    if-eqz v5, :cond_f1

    .line 95
    const v6, 0xea60

    div-int v7, v5, v6

    div-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 96
    .local v7, "hours":I
    div-int v6, v5, v6

    rem-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 97
    .local v6, "minutes":I
    if-gez v5, :cond_d6

    goto :goto_d8

    :cond_d6
    const/16 v4, 0x2b

    :goto_d8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    const-string v4, "hh"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v7, v4}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    const-string v3, "mm"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v6, v3}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 101
    .end local v6    # "minutes":I
    .end local v7    # "hours":I
    goto :goto_f6

    .line 102
    :cond_f1
    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    :goto_f6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .registers 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 345
    move v0, p1

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 346
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 347
    .local v1, "c":C
    const/16 v2, 0x30

    if-lt v1, v2, :cond_17

    const/16 v2, 0x39

    if-le v1, v2, :cond_14

    goto :goto_17

    .line 345
    .end local v1    # "c":C
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 347
    .restart local v1    # "c":C
    :cond_17
    :goto_17
    return v0

    .line 349
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method private static padInt(Ljava/lang/StringBuilder;II)V
    .registers 6
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # I
    .param p2, "length"    # I

    .line 334
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "strValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p2, v1

    .local v1, "i":I
    :goto_a
    if-lez v1, :cond_14

    .line 336
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 338
    .end local v1    # "i":I
    :cond_14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 28
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 124
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    move-object v4, v3

    .line 126
    .local v4, "fail":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 129
    .local v0, "offset":I
    add-int/lit8 v5, v0, 0x4

    .local v5, "offset":I
    invoke-static {v1, v0, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v0

    .line 130
    .local v0, "year":I
    const/16 v6, 0x2d

    invoke-static {v1, v5, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 131
    add-int/lit8 v5, v5, 0x1

    .line 135
    :cond_1a
    add-int/lit8 v7, v5, 0x2

    .local v7, "offset":I
    invoke-static {v1, v5, v7}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v5

    .line 136
    .local v5, "month":I
    invoke-static {v1, v7, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 137
    add-int/lit8 v7, v7, 0x1

    .line 141
    :cond_28
    add-int/lit8 v8, v7, 0x2

    .local v8, "offset":I
    invoke-static {v1, v7, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v7

    .line 143
    .local v7, "day":I
    const/4 v9, 0x0

    .line 144
    .local v9, "hour":I
    const/4 v10, 0x0

    .line 145
    .local v10, "minutes":I
    const/4 v11, 0x0

    .line 146
    .local v11, "seconds":I
    const/4 v12, 0x0

    .line 149
    .local v12, "milliseconds":I
    const/16 v13, 0x54

    invoke-static {v1, v8, v13}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v13
    :try_end_38
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_38} :catch_20d
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_38} :catch_208
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_38} :catch_204

    .line 151
    .local v13, "hasT":Z
    if-nez v13, :cond_5e

    :try_start_3a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-gt v14, v8, :cond_5e

    .line 152
    new-instance v6, Ljava/util/GregorianCalendar;

    add-int/lit8 v14, v5, -0x1

    invoke-direct {v6, v0, v14, v7}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 154
    .local v6, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 155
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    return-object v14

    .line 266
    .end local v0    # "year":I
    .end local v5    # "month":I
    .end local v6    # "calendar":Ljava/util/Calendar;
    .end local v7    # "day":I
    .end local v8    # "offset":I
    .end local v9    # "hour":I
    .end local v10    # "minutes":I
    .end local v11    # "seconds":I
    .end local v12    # "milliseconds":I
    .end local v13    # "hasT":Z
    :catch_4f
    move-exception v0

    move-object/from16 v22, v4

    goto/16 :goto_207

    .line 264
    :catch_54
    move-exception v0

    move-object/from16 v22, v4

    goto/16 :goto_20b

    .line 262
    :catch_59
    move-exception v0

    move-object/from16 v22, v4

    goto/16 :goto_210

    .line 158
    .restart local v0    # "year":I
    .restart local v5    # "month":I
    .restart local v7    # "day":I
    .restart local v8    # "offset":I
    .restart local v9    # "hour":I
    .restart local v10    # "minutes":I
    .restart local v11    # "seconds":I
    .restart local v12    # "milliseconds":I
    .restart local v13    # "hasT":Z
    :cond_5e
    const/16 v14, 0x2b

    const/16 v15, 0x5a

    if-eqz v13, :cond_d4

    .line 161
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v3, v8, 0x2

    .local v3, "offset":I
    invoke-static {v1, v8, v3}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v8

    .end local v8    # "offset":I
    move v9, v8

    .line 162
    const/16 v8, 0x3a

    invoke-static {v1, v3, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v17

    if-eqz v17, :cond_77

    .line 163
    add-int/lit8 v3, v3, 0x1

    .line 166
    :cond_77
    add-int/lit8 v6, v3, 0x2

    .local v6, "offset":I
    invoke-static {v1, v3, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v3

    .end local v3    # "offset":I
    move v10, v3

    .line 167
    invoke-static {v1, v6, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 168
    add-int/lit8 v6, v6, 0x1

    .line 171
    .end local v6    # "offset":I
    .restart local v8    # "offset":I
    :cond_86
    move v8, v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_d4

    .line 172
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 173
    .local v3, "c":C
    if-eq v3, v15, :cond_d4

    if-eq v3, v14, :cond_d4

    const/16 v6, 0x2d

    if-eq v3, v6, :cond_d4

    .line 174
    add-int/lit8 v6, v8, 0x2

    .restart local v6    # "offset":I
    invoke-static {v1, v8, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v8

    .line 175
    .end local v11    # "seconds":I
    .local v8, "seconds":I
    const/16 v11, 0x3b

    if-le v8, v11, :cond_a9

    const/16 v11, 0x3f

    if-ge v8, v11, :cond_a9

    const/16 v8, 0x3b

    .line 177
    .end local v8    # "seconds":I
    .restart local v11    # "seconds":I
    :cond_a9
    move v11, v8

    const/16 v8, 0x2e

    invoke-static {v1, v6, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v8

    if-eqz v8, :cond_d3

    .line 178
    add-int/lit8 v6, v6, 0x1

    .line 179
    add-int/lit8 v8, v6, 0x1

    invoke-static {v1, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    move-result v8

    .line 180
    .local v8, "endOffset":I
    add-int/lit8 v14, v6, 0x3

    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 181
    .local v14, "parseEndOffset":I
    invoke-static {v1, v6, v14}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v17
    :try_end_c4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3a .. :try_end_c4} :catch_59
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_c4} :catch_54
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_c4} :catch_4f

    .line 183
    .local v17, "fraction":I
    sub-int v18, v14, v6

    packed-switch v18, :pswitch_data_282

    .line 191
    move/from16 v12, v17

    goto :goto_d2

    .line 185
    :pswitch_cc
    mul-int/lit8 v12, v17, 0xa

    .line 186
    goto :goto_d2

    .line 188
    :pswitch_cf
    mul-int/lit8 v12, v17, 0x64

    .line 189
    nop

    .line 193
    :goto_d2
    goto :goto_d4

    .line 200
    .end local v3    # "c":C
    .end local v8    # "endOffset":I
    .end local v14    # "parseEndOffset":I
    .end local v17    # "fraction":I
    :cond_d3
    move v8, v6

    .end local v6    # "offset":I
    .local v8, "offset":I
    :cond_d4
    :goto_d4
    :try_start_d4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_1f4

    .line 204
    const/4 v3, 0x0

    .line 205
    .local v3, "timezone":Ljava/util/TimeZone;
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6
    :try_end_df
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d4 .. :try_end_df} :catch_20d
    .catch Ljava/lang/NumberFormatException; {:try_start_d4 .. :try_end_df} :catch_208
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d4 .. :try_end_df} :catch_204

    .line 207
    .local v6, "timezoneIndicator":C
    const/4 v14, 0x1

    if-ne v6, v15, :cond_ec

    .line 208
    :try_start_e2
    sget-object v15, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    move-object v3, v15

    .line 209
    add-int/2addr v8, v14

    .line 248
    move-object/from16 v22, v4

    move/from16 v23, v6

    goto/16 :goto_1c1

    .line 210
    :cond_ec
    const/16 v15, 0x2b

    if-eq v6, v15, :cond_115

    const/16 v15, 0x2d

    if-ne v6, v15, :cond_f7

    .line 211
    move-object/from16 v19, v3

    goto :goto_117

    .line 245
    :cond_f7
    new-instance v14, Ljava/lang/IndexOutOfBoundsException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    .end local v3    # "timezone":Ljava/util/TimeZone;
    .local v19, "timezone":Ljava/util/TimeZone;
    const-string v3, "Invalid time zone indicator \'"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_115
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e2 .. :try_end_115} :catch_59
    .catch Ljava/lang/NumberFormatException; {:try_start_e2 .. :try_end_115} :catch_54
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e2 .. :try_end_115} :catch_4f

    .line 211
    .end local v19    # "timezone":Ljava/util/TimeZone;
    .restart local v3    # "timezone":Ljava/util/TimeZone;
    :cond_115
    move-object/from16 v19, v3

    .end local v3    # "timezone":Ljava/util/TimeZone;
    .restart local v19    # "timezone":Ljava/util/TimeZone;
    :goto_117
    :try_start_117
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "timezoneOffset":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    const/4 v14, 0x5

    if-lt v15, v14, :cond_124

    move-object v14, v3

    goto :goto_135

    :cond_124
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "00"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_135
    move-object v3, v14

    .line 216
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v8, v14

    .line 218
    const-string v14, "+0000"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1b8

    const-string v14, "+00:00"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_153

    .line 219
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v6

    goto/16 :goto_1be

    .line 225
    :cond_153
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "GMT"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 228
    .local v14, "timezoneId":Ljava/lang/String;
    invoke-static {v14}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v15

    .line 230
    .end local v19    # "timezone":Ljava/util/TimeZone;
    .local v15, "timezone":Ljava/util/TimeZone;
    invoke-virtual {v15}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v20, v17

    .line 231
    .local v20, "act":Ljava/lang/String;
    move-object/from16 v21, v3

    move-object/from16 v3, v20

    .end local v20    # "act":Ljava/lang/String;
    .local v3, "act":Ljava/lang/String;
    .local v21, "timezoneOffset":Ljava/lang/String;
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17
    :try_end_176
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_117 .. :try_end_176} :catch_20d
    .catch Ljava/lang/NumberFormatException; {:try_start_117 .. :try_end_176} :catch_208
    .catch Ljava/lang/IllegalArgumentException; {:try_start_117 .. :try_end_176} :catch_204

    if-nez v17, :cond_1b2

    .line 237
    move-object/from16 v22, v4

    .end local v4    # "fail":Ljava/lang/Exception;
    .local v22, "fail":Ljava/lang/Exception;
    :try_start_17a
    const-string v4, ":"

    move/from16 v23, v6

    .end local v6    # "timezoneIndicator":C
    .local v23, "timezoneIndicator":C
    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "cleaned":Ljava/lang/String;
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18b

    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "cleaned":Ljava/lang/String;
    .end local v14    # "timezoneId":Ljava/lang/String;
    .end local v21    # "timezoneOffset":Ljava/lang/String;
    goto :goto_1b6

    .line 239
    .restart local v3    # "act":Ljava/lang/String;
    .restart local v4    # "cleaned":Ljava/lang/String;
    .restart local v14    # "timezoneId":Ljava/lang/String;
    .restart local v21    # "timezoneOffset":Ljava/lang/String;
    :cond_18b
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    move-object/from16 v24, v3

    .end local v3    # "act":Ljava/lang/String;
    .local v24, "act":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v4

    .end local v4    # "cleaned":Ljava/lang/String;
    .local v25, "cleaned":Ljava/lang/String;
    const-string v4, "Mismatching time zone indicator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " given, resolves to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v15}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 244
    .end local v14    # "timezoneId":Ljava/lang/String;
    .end local v21    # "timezoneOffset":Ljava/lang/String;
    .end local v22    # "fail":Ljava/lang/Exception;
    .end local v23    # "timezoneIndicator":C
    .end local v24    # "act":Ljava/lang/String;
    .end local v25    # "cleaned":Ljava/lang/String;
    .local v4, "fail":Ljava/lang/Exception;
    .restart local v6    # "timezoneIndicator":C
    :cond_1b2
    move-object/from16 v22, v4

    move/from16 v23, v6

    .end local v4    # "fail":Ljava/lang/Exception;
    .end local v6    # "timezoneIndicator":C
    .restart local v22    # "fail":Ljava/lang/Exception;
    .restart local v23    # "timezoneIndicator":C
    :goto_1b6
    move-object v3, v15

    goto :goto_1c0

    .line 219
    .end local v15    # "timezone":Ljava/util/TimeZone;
    .end local v22    # "fail":Ljava/lang/Exception;
    .end local v23    # "timezoneIndicator":C
    .local v3, "timezoneOffset":Ljava/lang/String;
    .restart local v4    # "fail":Ljava/lang/Exception;
    .restart local v6    # "timezoneIndicator":C
    .restart local v19    # "timezone":Ljava/util/TimeZone;
    :cond_1b8
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v6

    .end local v3    # "timezoneOffset":Ljava/lang/String;
    .end local v4    # "fail":Ljava/lang/Exception;
    .end local v6    # "timezoneIndicator":C
    .restart local v21    # "timezoneOffset":Ljava/lang/String;
    .restart local v22    # "fail":Ljava/lang/Exception;
    .restart local v23    # "timezoneIndicator":C
    :goto_1be
    sget-object v3, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 244
    .end local v19    # "timezone":Ljava/util/TimeZone;
    .end local v21    # "timezoneOffset":Ljava/lang/String;
    .local v3, "timezone":Ljava/util/TimeZone;
    :goto_1c0
    nop

    .line 248
    :goto_1c1
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 249
    .local v4, "calendar":Ljava/util/Calendar;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->setLenient(Z)V

    .line 250
    const/4 v6, 0x1

    invoke-virtual {v4, v6, v0}, Ljava/util/Calendar;->set(II)V

    .line 251
    add-int/lit8 v6, v5, -0x1

    const/4 v14, 0x2

    invoke-virtual {v4, v14, v6}, Ljava/util/Calendar;->set(II)V

    .line 252
    const/4 v6, 0x5

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 253
    const/16 v6, 0xb

    invoke-virtual {v4, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 254
    const/16 v6, 0xc

    invoke-virtual {v4, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 255
    const/16 v6, 0xd

    invoke-virtual {v4, v6, v11}, Ljava/util/Calendar;->set(II)V

    .line 256
    const/16 v6, 0xe

    invoke-virtual {v4, v6, v12}, Ljava/util/Calendar;->set(II)V

    .line 258
    invoke-virtual {v2, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 259
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    return-object v6

    .line 201
    .end local v3    # "timezone":Ljava/util/TimeZone;
    .end local v22    # "fail":Ljava/lang/Exception;
    .end local v23    # "timezoneIndicator":C
    .local v4, "fail":Ljava/lang/Exception;
    :cond_1f4
    move-object/from16 v22, v4

    .end local v4    # "fail":Ljava/lang/Exception;
    .restart local v22    # "fail":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No time zone indicator"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1fe
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17a .. :try_end_1fe} :catch_202
    .catch Ljava/lang/NumberFormatException; {:try_start_17a .. :try_end_1fe} :catch_200
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17a .. :try_end_1fe} :catch_1fe

    .line 266
    .end local v0    # "year":I
    .end local v5    # "month":I
    .end local v7    # "day":I
    .end local v8    # "offset":I
    .end local v9    # "hour":I
    .end local v10    # "minutes":I
    .end local v11    # "seconds":I
    .end local v12    # "milliseconds":I
    .end local v13    # "hasT":Z
    :catch_1fe
    move-exception v0

    goto :goto_207

    .line 264
    :catch_200
    move-exception v0

    goto :goto_20b

    .line 262
    :catch_202
    move-exception v0

    goto :goto_210

    .line 266
    .end local v22    # "fail":Ljava/lang/Exception;
    .restart local v4    # "fail":Ljava/lang/Exception;
    :catch_204
    move-exception v0

    move-object/from16 v22, v4

    .line 267
    .end local v4    # "fail":Ljava/lang/Exception;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v22    # "fail":Ljava/lang/Exception;
    :goto_207
    goto :goto_212

    .line 264
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v22    # "fail":Ljava/lang/Exception;
    .restart local v4    # "fail":Ljava/lang/Exception;
    :catch_208
    move-exception v0

    move-object/from16 v22, v4

    .line 265
    .end local v4    # "fail":Ljava/lang/Exception;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v22    # "fail":Ljava/lang/Exception;
    :goto_20b
    nop

    .end local v22    # "fail":Ljava/lang/Exception;
    .local v0, "fail":Ljava/lang/Exception;
    goto :goto_211

    .line 262
    .end local v0    # "fail":Ljava/lang/Exception;
    .restart local v4    # "fail":Ljava/lang/Exception;
    :catch_20d
    move-exception v0

    move-object/from16 v22, v4

    .line 263
    .end local v4    # "fail":Ljava/lang/Exception;
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v22    # "fail":Ljava/lang/Exception;
    :goto_210
    nop

    .line 268
    .end local v22    # "fail":Ljava/lang/Exception;
    .local v0, "fail":Ljava/lang/Exception;
    :goto_211
    nop

    .line 269
    :goto_212
    if-nez v1, :cond_217

    const/16 v16, 0x0

    goto :goto_22f

    :cond_217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    :goto_22f
    move-object/from16 v3, v16

    .line 270
    .local v3, "input":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "msg":Ljava/lang/String;
    if-eqz v4, :cond_23d

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_25b

    .line 272
    :cond_23d
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

    .line 274
    :cond_25b
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

    .line 275
    .local v5, "ex":Ljava/text/ParseException;
    invoke-virtual {v5, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 276
    throw v5

    nop

    :pswitch_data_282
    .packed-switch 0x1
        :pswitch_cf
        :pswitch_cc
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

    .line 301
    if-ltz p1, :cond_69

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_69

    if-gt p1, p2, :cond_69

    .line 305
    move v0, p1

    .line 306
    .local v0, "i":I
    const/4 v1, 0x0

    .line 308
    .local v1, "result":I
    const/16 v2, 0xa

    if-ge v0, p2, :cond_3a

    .line 309
    add-int/lit8 v3, v0, 0x1

    .local v3, "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .end local v0    # "i":I
    invoke-static {v0, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 310
    .local v0, "digit":I
    if-ltz v0, :cond_1f

    .line 313
    neg-int v1, v0

    .line 315
    .end local v3    # "i":I
    .local v0, "i":I
    :goto_1d
    move v0, v3

    goto :goto_3a

    .line 311
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

    .line 315
    .end local v3    # "i":I
    .local v0, "i":I
    :cond_3a
    :goto_3a
    if-ge v0, p2, :cond_67

    .line 316
    add-int/lit8 v3, v0, 0x1

    .restart local v3    # "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .end local v0    # "i":I
    invoke-static {v0, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 317
    .local v0, "digit":I
    if-ltz v0, :cond_4c

    .line 320
    mul-int/lit8 v1, v1, 0xa

    .line 321
    sub-int/2addr v1, v0

    goto :goto_1d

    .line 318
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

    .line 323
    .end local v3    # "i":I
    .local v0, "i":I
    :cond_67
    neg-int v2, v1

    return v2

    .line 302
    .end local v0    # "i":I
    .end local v1    # "result":I
    :cond_69
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
