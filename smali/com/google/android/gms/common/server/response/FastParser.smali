###### Class com.google.android.gms.common.server.response.FastParser (com.google.android.gms.common.server.response.FastParser)
.class public Lcom/google/android/gms/common/server/response/FastParser;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/server/response/FastParser$zaa;,
        Lcom/google/android/gms/common/server/response/FastParser$ParseException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zaqf:[C

.field private static final zaqg:[C

.field private static final zaqh:[C

.field private static final zaqi:[C

.field private static final zaqj:[C

.field private static final zaqk:[C

.field private static final zaqm:Lcom/google/android/gms/common/server/response/FastParser$zaa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/FastParser$zaa<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final zaqn:Lcom/google/android/gms/common/server/response/FastParser$zaa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/FastParser$zaa<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final zaqo:Lcom/google/android/gms/common/server/response/FastParser$zaa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/FastParser$zaa<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final zaqp:Lcom/google/android/gms/common/server/response/FastParser$zaa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/FastParser$zaa<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final zaqq:Lcom/google/android/gms/common/server/response/FastParser$zaa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/FastParser$zaa<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zaqr:Lcom/google/android/gms/common/server/response/FastParser$zaa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/FastParser$zaa<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zaqs:Lcom/google/android/gms/common/server/response/FastParser$zaa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/FastParser$zaa<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field

.field private static final zaqt:Lcom/google/android/gms/common/server/response/FastParser$zaa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/FastParser$zaa<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zaqa:[C

.field private final zaqb:[C

.field private final zaqc:[C

.field private final zaqd:Ljava/lang/StringBuilder;

.field private final zaqe:Ljava/lang/StringBuilder;

.field private final zaql:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 530
    const/4 v0, 0x3

    new-array v1, v0, [C

    fill-array-data v1, :array_6a

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zaqf:[C

    .line 531
    new-array v0, v0, [C

    fill-array-data v0, :array_72

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaqg:[C

    .line 532
    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_7a

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zaqh:[C

    .line 533
    new-array v0, v0, [C

    fill-array-data v0, :array_82

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaqi:[C

    .line 534
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_8a

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaqj:[C

    .line 535
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput-char v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaqk:[C

    .line 536
    new-instance v0, Lcom/google/android/gms/common/server/response/zaa;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zaa;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaqm:Lcom/google/android/gms/common/server/response/FastParser$zaa;

    .line 537
    new-instance v0, Lcom/google/android/gms/common/server/response/zab;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zab;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaqn:Lcom/google/android/gms/common/server/response/FastParser$zaa;

    .line 538
    new-instance v0, Lcom/google/android/gms/common/server/response/zac;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zac;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaqo:Lcom/google/android/gms/common/server/response/FastParser$zaa;

    .line 539
    new-instance v0, Lcom/google/android/gms/common/server/response/zad;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zad;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaqp:Lcom/google/android/gms/common/server/response/FastParser$zaa;

    .line 540
    new-instance v0, Lcom/google/android/gms/common/server/response/zae;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zae;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaqq:Lcom/google/android/gms/common/server/response/FastParser$zaa;

    .line 541
    new-instance v0, Lcom/google/android/gms/common/server/response/zaf;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zaf;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaqr:Lcom/google/android/gms/common/server/response/FastParser$zaa;

    .line 542
    new-instance v0, Lcom/google/android/gms/common/server/response/zag;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zag;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaqs:Lcom/google/android/gms/common/server/response/FastParser$zaa;

    .line 543
    new-instance v0, Lcom/google/android/gms/common/server/response/zah;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zah;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaqt:Lcom/google/android/gms/common/server/response/FastParser$zaa;

    return-void

    nop

    :array_6a
    .array-data 2
        0x75s
        0x6cs
        0x6cs
    .end array-data

    nop

    :array_72
    .array-data 2
        0x72s
        0x75s
        0x65s
    .end array-data

    nop

    :array_7a
    .array-data 2
        0x72s
        0x75s
        0x65s
        0x22s
    .end array-data

    :array_82
    .array-data 2
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data

    :array_8a
    .array-data 2
        0x61s
        0x6cs
        0x73s
        0x65s
        0x22s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqa:[C

    .line 3
    const/16 v0, 0x20

    new-array v1, v0, [C

    iput-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqb:[C

    .line 4
    const/16 v1, 0x400

    new-array v2, v1, [C

    iput-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqc:[C

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqd:Ljava/lang/StringBuilder;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqe:Ljava/lang/StringBuilder;

    .line 7
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaql:Ljava/util/Stack;

    .line 8
    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zad(Ljava/io/BufferedReader;)I

    move-result p0

    return p0
.end method

.method private final zaa(Ljava/io/BufferedReader;[C)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v0

    .line 467
    if-eqz v0, :cond_a9

    .line 469
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_a1

    .line 471
    const/16 v2, 0x6e

    const/4 v3, 0x0

    if-ne v0, v2, :cond_15

    .line 472
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zaqf:[C

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zab(Ljava/io/BufferedReader;[C)V

    .line 473
    return v3

    .line 474
    :cond_15
    const/16 v2, 0x400

    invoke-virtual {p1, v2}, Ljava/io/BufferedReader;->mark(I)V

    .line 475
    nop

    .line 476
    const/4 v2, -0x1

    const/16 v4, 0x22

    const/4 v5, 0x1

    if-ne v0, v4, :cond_5a

    .line 477
    nop

    .line 478
    nop

    .line 479
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_25
    array-length v6, p2

    if-ge v0, v6, :cond_59

    invoke-virtual {p1, p2, v0, v5}, Ljava/io/BufferedReader;->read([CII)I

    move-result v6

    if-eq v6, v2, :cond_59

    .line 480
    aget-char v6, p2, v0

    .line 481
    invoke-static {v6}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v7

    if-nez v7, :cond_51

    .line 483
    if-ne v6, v4, :cond_44

    if-nez v1, :cond_44

    .line 484
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 485
    add-int/lit8 p2, v0, 0x1

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Ljava/io/BufferedReader;->skip(J)J

    .line 486
    return v0

    .line 487
    :cond_44
    const/16 v7, 0x5c

    if-ne v6, v7, :cond_4c

    .line 488
    nop

    .line 490
    xor-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 489
    :cond_4c
    nop

    .line 490
    const/4 v1, 0x0

    :goto_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 482
    :cond_51
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Unexpected control character while reading string"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 491
    :cond_59
    goto :goto_8e

    .line 492
    :cond_5a
    aput-char v0, p2, v3

    .line 493
    const/4 v0, 0x1

    :goto_5d
    array-length v4, p2

    if-ge v0, v4, :cond_8e

    invoke-virtual {p1, p2, v0, v5}, Ljava/io/BufferedReader;->read([CII)I

    move-result v4

    if-eq v4, v2, :cond_8e

    .line 494
    aget-char v4, p2, v0

    const/16 v6, 0x7d

    if-eq v4, v6, :cond_82

    aget-char v4, p2, v0

    if-eq v4, v1, :cond_82

    aget-char v4, p2, v0

    .line 495
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_82

    aget-char v4, p2, v0

    const/16 v6, 0x5d

    if-ne v4, v6, :cond_7f

    goto :goto_82

    .line 500
    :cond_7f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 496
    :cond_82
    :goto_82
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 497
    add-int/lit8 v1, v0, -0x1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Ljava/io/BufferedReader;->skip(J)J

    .line 498
    aput-char v3, p2, v0

    .line 499
    return v0

    .line 501
    :cond_8e
    :goto_8e
    array-length p1, p2

    if-ne v0, p1, :cond_99

    .line 502
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Absurdly long value"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 503
    :cond_99
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Unexpected EOF"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 470
    :cond_a1
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Missing value"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 468
    :cond_a9
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Unexpected EOF"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zaa(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaql:Ljava/util/Stack;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v0

    .line 200
    const/16 v2, 0x22

    const/4 v3, 0x0

    if-eq v0, v2, :cond_44

    const/16 p1, 0x5d

    if-eq v0, p1, :cond_38

    const/16 p1, 0x7d

    if-ne v0, p1, :cond_1f

    .line 201
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    .line 202
    return-object v3

    .line 213
    :cond_1f
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected token: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_38
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    .line 204
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    .line 205
    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    .line 206
    return-object v3

    .line 207
    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaql:Ljava/util/Stack;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqb:[C

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqd:Ljava/lang/StringBuilder;

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zab(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    .line 210
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result p1

    const/16 v1, 0x3a

    if-ne p1, v1, :cond_62

    .line 212
    return-object v0

    .line 211
    :cond_62
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Expected key/value separator"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zaa(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v0

    .line 296
    const/16 v1, 0x22

    if-eq v0, v1, :cond_1b

    const/16 p2, 0x6e

    if-ne v0, p2, :cond_13

    .line 298
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zaqf:[C

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zab(Ljava/io/BufferedReader;[C)V

    .line 299
    const/4 p1, 0x0

    return-object p1

    .line 300
    :cond_13
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Expected string"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 297
    :cond_1b
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/server/response/FastParser;->zab(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final zaa(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
            ">(",
            "Ljava/io/BufferedReader;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<",
            "**>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 432
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v1

    .line 433
    const/16 v2, 0x5d

    const/4 v3, 0x5

    if-eq v1, v2, :cond_a2

    const/16 v4, 0x6e

    if-eq v1, v4, :cond_98

    const/16 v4, 0x13

    const/16 v5, 0x7b

    if-ne v1, v5, :cond_81

    .line 436
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaql:Ljava/util/Stack;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    nop

    .line 442
    :goto_23
    :try_start_23
    invoke-virtual {p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zacp()Lcom/google/android/gms/common/server/response/FastJsonResponse;

    move-result-object v1

    .line 443
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 444
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/InstantiationException; {:try_start_23 .. :try_end_30} :catch_78
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_30} :catch_6f

    .line 450
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v1

    .line 451
    const/16 v7, 0x2c

    if-eq v1, v7, :cond_55

    if-ne v1, v2, :cond_3e

    .line 456
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    .line 457
    return-object v0

    .line 458
    :cond_3e
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected token: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 452
    :cond_55
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v1

    if-ne v1, v5, :cond_65

    .line 454
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaql:Ljava/util/Stack;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    goto :goto_23

    .line 453
    :cond_65
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Expected start of next object in array"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 445
    :cond_6d
    nop

    .line 459
    return-object v0

    .line 448
    :catch_6f
    move-exception p1

    .line 449
    new-instance p2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Error instantiating inner object"

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 446
    :catch_78
    move-exception p1

    .line 447
    new-instance p2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Error instantiating inner object"

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 441
    :cond_81
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected token: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 438
    :cond_98
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zaqf:[C

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zab(Ljava/io/BufferedReader;[C)V

    .line 439
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    .line 440
    const/4 p1, 0x0

    return-object p1

    .line 434
    :cond_a2
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    .line 435
    return-object v0
.end method

.method private final zaa(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastParser$zaa;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/BufferedReader;",
            "Lcom/google/android/gms/common/server/response/FastParser$zaa<",
            "TO;>;)",
            "Ljava/util/ArrayList<",
            "TO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v0

    .line 279
    const/16 v1, 0x6e

    if-ne v0, v1, :cond_f

    .line 280
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zaqf:[C

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zab(Ljava/io/BufferedReader;[C)V

    .line 281
    const/4 p1, 0x0

    return-object p1

    .line 282
    :cond_f
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_4d

    .line 284
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaql:Ljava/util/Stack;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    :goto_22
    const/16 v2, 0x400

    invoke-virtual {p1, v2}, Ljava/io/BufferedReader;->mark(I)V

    .line 287
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v2

    .line 288
    if-eqz v2, :cond_45

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_44

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_40

    .line 293
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 294
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/common/server/response/FastParser$zaa;->zah(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 290
    :cond_40
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    .line 291
    return-object v0

    .line 289
    :cond_44
    goto :goto_22

    .line 292
    :cond_45
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Unexpected EOF"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :cond_4d
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Expected start of array"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;Z)Z

    move-result p0

    return p0
.end method

.method private final zaa(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getFieldMappings()Ljava/util/Map;

    move-result-object v0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    .line 46
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_10

    .line 47
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    .line 48
    return v2

    .line 49
    :cond_10
    const/4 v4, 0x0

    :goto_11
    if-eqz v1, :cond_2b1

    .line 50
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    .line 51
    if-nez v1, :cond_20

    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zab(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 53
    :cond_20
    iget-object v5, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaql:Ljava/util/Stack;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    nop

    .line 55
    iget v5, v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zapq:I

    .line 56
    const/16 v7, 0x7b

    const/16 v8, 0x2c

    const/16 v9, 0x7d

    const/16 v10, 0x6e

    packed-switch v5, :pswitch_data_2b6

    .line 184
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 185
    iget p2, v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zapq:I

    .line 186
    const/16 v0, 0x1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid field type "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :pswitch_53
    nop

    .line 147
    iget-boolean v5, v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zapr:Z

    .line 148
    if-eqz v5, :cond_8d

    .line 149
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v5

    .line 150
    if-ne v5, v10, :cond_6b

    .line 151
    sget-object v5, Lcom/google/android/gms/common/server/response/FastParser;->zaqf:[C

    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zab(Ljava/io/BufferedReader;[C)V

    .line 152
    nop

    .line 153
    iget-object v5, v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zapu:Ljava/lang/String;

    .line 154
    invoke-virtual {p2, v1, v5, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeArrayInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 155
    goto/16 :goto_27e

    .line 156
    :cond_6b
    iget-object v7, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaql:Ljava/util/Stack;

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const/16 v7, 0x5b

    if-ne v5, v7, :cond_85

    .line 159
    nop

    .line 160
    iget-object v5, v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zapu:Ljava/lang/String;

    .line 161
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/util/ArrayList;

    move-result-object v7

    .line 162
    invoke-virtual {p2, v1, v5, v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeArrayInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 163
    goto/16 :goto_27e

    .line 158
    :cond_85
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Expected array start"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_8d
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v5

    .line 165
    if-ne v5, v10, :cond_a0

    .line 166
    sget-object v5, Lcom/google/android/gms/common/server/response/FastParser;->zaqf:[C

    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zab(Ljava/io/BufferedReader;[C)V

    .line 167
    nop

    .line 168
    iget-object v5, v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zapu:Ljava/lang/String;

    .line 169
    invoke-virtual {p2, v1, v5, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V

    .line 170
    goto/16 :goto_27e

    .line 171
    :cond_a0
    iget-object v10, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaql:Ljava/util/Stack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    if-ne v5, v7, :cond_cc

    .line 174
    :try_start_ab
    invoke-virtual {v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zacp()Lcom/google/android/gms/common/server/response/FastJsonResponse;

    move-result-object v5

    .line 175
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z

    .line 176
    nop

    .line 177
    iget-object v7, v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zapu:Ljava/lang/String;

    .line 178
    invoke-virtual {p2, v1, v7, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    :try_end_b8
    .catch Ljava/lang/InstantiationException; {:try_start_ab .. :try_end_b8} :catch_c3
    .catch Ljava/lang/IllegalAccessException; {:try_start_ab .. :try_end_b8} :catch_ba

    .line 179
    goto/16 :goto_27e

    .line 182
    :catch_ba
    move-exception p1

    .line 183
    new-instance p2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Error instantiating inner object"

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 180
    :catch_c3
    move-exception p1

    .line 181
    new-instance p2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Error instantiating inner object"

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 173
    :cond_cc
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Expected start of object"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :pswitch_d4
    nop

    .line 116
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v5

    .line 117
    if-ne v5, v10, :cond_e4

    .line 118
    sget-object v5, Lcom/google/android/gms/common/server/response/FastParser;->zaqf:[C

    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zab(Ljava/io/BufferedReader;[C)V

    .line 119
    nop

    .line 144
    move-object v5, v4

    goto/16 :goto_16c

    .line 120
    :cond_e4
    if-ne v5, v7, :cond_192

    .line 122
    iget-object v5, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaql:Ljava/util/Stack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 124
    :cond_f4
    :goto_f4
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v7

    .line 125
    if-eqz v7, :cond_18a

    const/16 v10, 0x22

    if-eq v7, v10, :cond_105

    if-eq v7, v9, :cond_101

    goto :goto_f4

    .line 141
    :cond_101
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    .line 142
    goto :goto_16c

    .line 126
    :cond_105
    iget-object v7, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqb:[C

    iget-object v11, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqd:Ljava/lang/StringBuilder;

    invoke-static {p1, v7, v11, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zab(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v7

    .line 127
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v11

    .line 128
    const/16 v12, 0x3a

    if-eq v11, v12, :cond_132

    .line 129
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "No map value found for key "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_128

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_12e

    :cond_128
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_12e
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_132
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v11

    .line 131
    if-eq v11, v10, :cond_155

    .line 132
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Expected String value for key "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_14b

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_151

    :cond_14b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_151
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_155
    iget-object v10, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqb:[C

    iget-object v11, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqd:Ljava/lang/StringBuilder;

    invoke-static {p1, v10, v11, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zab(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v10

    .line 134
    invoke-virtual {v5, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v7

    .line 136
    if-eq v7, v8, :cond_f4

    .line 137
    if-ne v7, v9, :cond_171

    .line 138
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    .line 139
    nop

    .line 144
    :goto_16c
    invoke-virtual {p2, v1, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaa(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/Map;)V

    .line 145
    goto/16 :goto_27e

    .line 140
    :cond_171
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 p2, 0x30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unexpected character while parsing string map: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_18a
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Unexpected EOF"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_192
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Expected start of a map object"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :pswitch_19a
    iget-object v5, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqc:[C

    iget-object v7, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqe:Ljava/lang/StringBuilder;

    sget-object v10, Lcom/google/android/gms/common/server/response/FastParser;->zaqk:[C

    .line 111
    invoke-direct {p0, p1, v5, v7, v10}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v5

    .line 112
    invoke-static {v5}, Lcom/google/android/gms/common/util/Base64Utils;->decodeUrlSafe(Ljava/lang/String;)[B

    move-result-object v5

    .line 113
    invoke-virtual {p2, v1, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaa(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;[B)V

    .line 114
    goto/16 :goto_27e

    .line 105
    :pswitch_1ad
    iget-object v5, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqc:[C

    iget-object v7, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqe:Ljava/lang/StringBuilder;

    sget-object v10, Lcom/google/android/gms/common/server/response/FastParser;->zaqk:[C

    .line 106
    invoke-direct {p0, p1, v5, v7, v10}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-static {v5}, Lcom/google/android/gms/common/util/Base64Utils;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 108
    invoke-virtual {p2, v1, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaa(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;[B)V

    .line 109
    goto/16 :goto_27e

    .line 99
    :pswitch_1c0
    nop

    .line 100
    iget-boolean v5, v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zapr:Z

    .line 101
    if-eqz v5, :cond_1d0

    .line 102
    sget-object v5, Lcom/google/android/gms/common/server/response/FastParser;->zaqr:Lcom/google/android/gms/common/server/response/FastParser$zaa;

    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastParser$zaa;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zah(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_27e

    .line 103
    :cond_1d0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zac(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaa(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;)V

    .line 104
    goto/16 :goto_27e

    .line 93
    :pswitch_1d9
    nop

    .line 94
    iget-boolean v5, v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zapr:Z

    .line 95
    if-eqz v5, :cond_1e9

    .line 96
    sget-object v5, Lcom/google/android/gms/common/server/response/FastParser;->zaqq:Lcom/google/android/gms/common/server/response/FastParser$zaa;

    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastParser$zaa;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zag(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_27e

    .line 97
    :cond_1e9
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;Z)Z

    move-result v5

    invoke-virtual {p2, v1, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaa(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Z)V

    .line 98
    goto/16 :goto_27e

    .line 87
    :pswitch_1f2
    nop

    .line 88
    iget-boolean v5, v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zapr:Z

    .line 89
    if-eqz v5, :cond_202

    .line 90
    sget-object v5, Lcom/google/android/gms/common/server/response/FastParser;->zaqt:Lcom/google/android/gms/common/server/response/FastParser$zaa;

    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastParser$zaa;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaf(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_27e

    .line 91
    :cond_202
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaa(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/math/BigDecimal;)V

    .line 92
    goto/16 :goto_27e

    .line 81
    :pswitch_20b
    nop

    .line 82
    iget-boolean v5, v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zapr:Z

    .line 83
    if-eqz v5, :cond_21a

    .line 84
    sget-object v5, Lcom/google/android/gms/common/server/response/FastParser;->zaqp:Lcom/google/android/gms/common/server/response/FastParser$zaa;

    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastParser$zaa;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zae(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto :goto_27e

    .line 85
    :cond_21a
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zah(Ljava/io/BufferedReader;)D

    move-result-wide v10

    invoke-virtual {p2, v1, v10, v11}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaa(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;D)V

    .line 86
    goto :goto_27e

    .line 75
    :pswitch_222
    nop

    .line 76
    iget-boolean v5, v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zapr:Z

    .line 77
    if-eqz v5, :cond_231

    .line 78
    sget-object v5, Lcom/google/android/gms/common/server/response/FastParser;->zaqo:Lcom/google/android/gms/common/server/response/FastParser$zaa;

    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastParser$zaa;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zad(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto :goto_27e

    .line 79
    :cond_231
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zag(Ljava/io/BufferedReader;)F

    move-result v5

    invoke-virtual {p2, v1, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaa(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;F)V

    .line 80
    goto :goto_27e

    .line 69
    :pswitch_239
    nop

    .line 70
    iget-boolean v5, v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zapr:Z

    .line 71
    if-eqz v5, :cond_248

    .line 72
    sget-object v5, Lcom/google/android/gms/common/server/response/FastParser;->zaqn:Lcom/google/android/gms/common/server/response/FastParser$zaa;

    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastParser$zaa;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto :goto_27e

    .line 73
    :cond_248
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zae(Ljava/io/BufferedReader;)J

    move-result-wide v10

    invoke-virtual {p2, v1, v10, v11}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaa(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;J)V

    .line 74
    goto :goto_27e

    .line 63
    :pswitch_250
    nop

    .line 64
    iget-boolean v5, v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zapr:Z

    .line 65
    if-eqz v5, :cond_25f

    .line 66
    sget-object v5, Lcom/google/android/gms/common/server/response/FastParser;->zaqs:Lcom/google/android/gms/common/server/response/FastParser$zaa;

    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastParser$zaa;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zab(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto :goto_27e

    .line 67
    :cond_25f
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaf(Ljava/io/BufferedReader;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaa(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/math/BigInteger;)V

    .line 68
    goto :goto_27e

    .line 57
    :pswitch_267
    nop

    .line 58
    iget-boolean v5, v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zapr:Z

    .line 59
    if-eqz v5, :cond_276

    .line 60
    sget-object v5, Lcom/google/android/gms/common/server/response/FastParser;->zaqm:Lcom/google/android/gms/common/server/response/FastParser$zaa;

    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastParser$zaa;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaa(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto :goto_27e

    .line 61
    :cond_276
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zad(Ljava/io/BufferedReader;)I

    move-result v5

    invoke-virtual {p2, v1, v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaa(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;I)V

    .line 62
    nop

    .line 187
    :goto_27e
    invoke-direct {p0, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    .line 188
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    .line 189
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v1

    .line 190
    if-eq v1, v8, :cond_2ab

    if-ne v1, v9, :cond_292

    .line 191
    nop

    .line 192
    nop

    .line 49
    move-object v1, v4

    goto/16 :goto_11

    .line 195
    :cond_292
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 p2, 0x37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Expected end of object or field separator, but found: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_2ab
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    .line 194
    goto/16 :goto_11

    .line 196
    :cond_2b1
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    .line 197
    return v3

    nop

    :pswitch_data_2b6
    .packed-switch 0x0
        :pswitch_267
        :pswitch_250
        :pswitch_239
        :pswitch_222
        :pswitch_20b
        :pswitch_1f2
        :pswitch_1d9
        :pswitch_1c0
        :pswitch_1ad
        :pswitch_19a
        :pswitch_d4
        :pswitch_53
    .end packed-switch
.end method

.method private final zaa(Ljava/io/BufferedReader;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v1

    .line 408
    const/16 v2, 0x22

    if-eq v1, v2, :cond_4b

    const/16 v2, 0x66

    const/4 v3, 0x0

    if-eq v1, v2, :cond_40

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_3a

    const/16 v2, 0x74

    if-ne v1, v2, :cond_21

    .line 411
    if-eqz p2, :cond_1b

    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zaqh:[C

    goto :goto_1d

    :cond_1b
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zaqg:[C

    :goto_1d
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zab(Ljava/io/BufferedReader;[C)V

    .line 412
    return v0

    .line 418
    :cond_21
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 p2, 0x13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unexpected token: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 409
    :cond_3a
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zaqf:[C

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zab(Ljava/io/BufferedReader;[C)V

    .line 410
    return v3

    .line 413
    :cond_40
    if-eqz p2, :cond_45

    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zaqj:[C

    goto :goto_47

    :cond_45
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zaqi:[C

    :goto_47
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zab(Ljava/io/BufferedReader;[C)V

    .line 414
    return v3

    .line 415
    :cond_4b
    if-nez p2, :cond_50

    .line 417
    nop

    .line 407
    const/4 p2, 0x1

    goto :goto_1

    .line 416
    :cond_50
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "No boolean value found in string"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic zab(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zae(Ljava/io/BufferedReader;)J

    move-result-wide p0

    return-wide p0
.end method

.method private final zab(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->mark(I)V

    .line 215
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v0

    .line 216
    const/16 v1, 0x5c

    const/16 v2, 0x12

    const/16 v3, 0x7d

    const/16 v4, 0x2c

    const/16 v5, 0x22

    const/4 v6, 0x0

    if-eq v0, v5, :cond_d7

    if-eq v0, v4, :cond_cf

    const/16 v7, 0x20

    const/16 v8, 0x5b

    const/4 v9, 0x1

    if-eq v0, v8, :cond_6e

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_2d

    .line 268
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 269
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqc:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;[C)I

    goto/16 :goto_eb

    .line 230
    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaql:Ljava/util/Stack;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {p1, v7}, Ljava/io/BufferedReader;->mark(I)V

    .line 232
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v0

    .line 233
    if-ne v0, v3, :cond_44

    .line 234
    invoke-direct {p0, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    goto/16 :goto_eb

    .line 235
    :cond_44
    if-ne v0, v5, :cond_57

    .line 236
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 237
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 238
    :cond_4c
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zab(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4c

    .line 239
    invoke-direct {p0, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    goto/16 :goto_eb

    .line 240
    :cond_57
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 241
    :cond_6e
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaql:Ljava/util/Stack;

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-virtual {p1, v7}, Ljava/io/BufferedReader;->mark(I)V

    .line 243
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v0

    .line 244
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_87

    .line 245
    invoke-direct {p0, v10}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    goto :goto_eb

    .line 246
    :cond_87
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 247
    nop

    .line 248
    nop

    .line 249
    nop

    .line 250
    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_8f
    if-lez v9, :cond_cb

    .line 251
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v12

    .line 252
    if-eqz v12, :cond_c3

    .line 254
    invoke-static {v12}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v13

    if-nez v13, :cond_bb

    .line 256
    if-ne v12, v5, :cond_a4

    if-nez v0, :cond_a4

    .line 257
    nop

    .line 258
    xor-int/lit8 v11, v11, 0x1

    :cond_a4
    if-ne v12, v8, :cond_aa

    if-nez v11, :cond_aa

    .line 259
    add-int/lit8 v9, v9, 0x1

    .line 260
    :cond_aa
    if-ne v12, v7, :cond_b0

    if-nez v11, :cond_b0

    .line 261
    add-int/lit8 v9, v9, -0x1

    .line 262
    :cond_b0
    if-ne v12, v1, :cond_b8

    if-eqz v11, :cond_b8

    .line 263
    nop

    .line 250
    xor-int/lit8 v0, v0, 0x1

    goto :goto_8f

    .line 264
    :cond_b8
    nop

    .line 250
    const/4 v0, 0x0

    goto :goto_8f

    .line 255
    :cond_bb
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Unexpected control character while reading array"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 253
    :cond_c3
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Unexpected EOF while parsing array"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 265
    :cond_cb
    invoke-direct {p0, v10}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    .line 266
    goto :goto_eb

    .line 267
    :cond_cf
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Missing value"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :cond_d7
    nop

    .line 218
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqa:[C

    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_144

    .line 220
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqa:[C

    aget-char v0, v0, v6

    .line 221
    const/4 v8, 0x0

    :goto_e6
    if-ne v0, v5, :cond_118

    if-eqz v8, :cond_eb

    goto :goto_118

    .line 270
    :cond_eb
    :goto_eb
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result v0

    .line 271
    const/4 v1, 0x2

    if-eq v0, v4, :cond_110

    if-ne v0, v3, :cond_f9

    .line 274
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    .line 275
    const/4 p1, 0x0

    return-object p1

    .line 276
    :cond_f9
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 272
    :cond_110
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V

    .line 273
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 222
    :cond_118
    :goto_118
    if-ne v0, v1, :cond_11f

    .line 223
    nop

    .line 225
    xor-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_121

    .line 224
    :cond_11f
    nop

    .line 225
    const/4 v8, 0x0

    :goto_121
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqa:[C

    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v0

    if-eq v0, v7, :cond_13c

    .line 227
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqa:[C

    aget-char v0, v0, v6

    .line 228
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v9

    if-nez v9, :cond_134

    goto :goto_e6

    .line 229
    :cond_134
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Unexpected control character while reading string"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_13c
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Unexpected EOF while parsing string"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 219
    :cond_144
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Unexpected EOF while parsing string"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zab(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 302
    nop

    .line 303
    nop

    .line 304
    array-length v1, p1

    invoke-virtual {p0, v1}, Ljava/io/BufferedReader;->mark(I)V

    .line 305
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {p0, p1}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_77

    .line 306
    move v4, v2

    move v2, v1

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v3, :cond_6d

    .line 307
    aget-char v5, p1, v1

    .line 308
    invoke-static {v5}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3e

    .line 309
    if-eqz p3, :cond_31

    .line 310
    const/4 v6, 0x0

    :goto_24
    array-length v8, p3

    if-ge v6, v8, :cond_31

    .line 311
    aget-char v8, p3, v6

    if-ne v8, v5, :cond_2e

    .line 312
    nop

    .line 315
    const/4 v6, 0x1

    goto :goto_33

    .line 313
    :cond_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 314
    :cond_31
    nop

    .line 315
    const/4 v6, 0x0

    :goto_33
    if-eqz v6, :cond_36

    goto :goto_3e

    .line 316
    :cond_36
    new-instance p0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p1, "Unexpected control character while reading string"

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 317
    :cond_3e
    :goto_3e
    const/16 v6, 0x22

    if-ne v5, v6, :cond_5f

    .line 318
    if-nez v2, :cond_5f

    .line 319
    invoke-virtual {p2, p1, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p0}, Ljava/io/BufferedReader;->reset()V

    .line 321
    add-int/2addr v1, v7

    int-to-long v0, v1

    invoke-virtual {p0, v0, v1}, Ljava/io/BufferedReader;->skip(J)J

    .line 322
    if-eqz v4, :cond_5a

    .line 323
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/JsonUtils;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 324
    :cond_5a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 325
    :cond_5f
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_68

    .line 326
    nop

    .line 327
    xor-int/lit8 v2, v2, 0x1

    .line 329
    const/4 v4, 0x1

    goto :goto_6a

    .line 328
    :cond_68
    nop

    .line 329
    const/4 v2, 0x0

    :goto_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 330
    :cond_6d
    invoke-virtual {p2, p1, v0, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 331
    array-length v1, p1

    invoke-virtual {p0, v1}, Ljava/io/BufferedReader;->mark(I)V

    .line 305
    move v1, v2

    move v2, v4

    goto :goto_c

    .line 332
    :cond_77
    new-instance p0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p1, "Unexpected EOF while parsing string"

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zab(Ljava/io/BufferedReader;[C)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    nop

    .line 505
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    array-length v2, p2

    if-ge v1, v2, :cond_33

    .line 506
    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqb:[C

    array-length v3, p2

    sub-int/2addr v3, v1

    invoke-virtual {p1, v2, v0, v3}, Ljava/io/BufferedReader;->read([CII)I

    move-result v2

    .line 507
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2b

    .line 509
    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_29

    .line 510
    add-int v4, v3, v1

    aget-char v4, p2, v4

    iget-object v5, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqb:[C

    aget-char v5, v5, v3

    if-ne v4, v5, :cond_21

    .line 512
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 511
    :cond_21
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Unexpected character"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 513
    :cond_29
    add-int/2addr v1, v2

    .line 514
    goto :goto_3

    .line 508
    :cond_2b
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Unexpected EOF"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 515
    :cond_33
    return-void
.end method

.method static synthetic zac(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zag(Ljava/io/BufferedReader;)F

    move-result p0

    return p0
.end method

.method private final zac(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqb:[C

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqd:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic zad(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)D
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zah(Ljava/io/BufferedReader;)D

    move-result-wide p0

    return-wide p0
.end method

.method private final zad(Ljava/io/BufferedReader;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqc:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;[C)I

    move-result p1

    .line 334
    const/4 v0, 0x0

    if-nez p1, :cond_a

    .line 335
    return v0

    .line 336
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqc:[C

    .line 337
    nop

    .line 338
    nop

    .line 339
    nop

    .line 340
    if-lez p1, :cond_84

    .line 341
    aget-char v2, v1, v0

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-ne v2, v3, :cond_21

    .line 342
    nop

    .line 343
    const/high16 v2, -0x80000000

    .line 344
    nop

    .line 346
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/high16 v5, -0x80000000

    goto :goto_29

    .line 345
    :cond_21
    const v2, -0x7fffffff

    .line 346
    const/4 v2, 0x0

    const/4 v3, 0x0

    const v5, -0x7fffffff

    :goto_29
    const/16 v6, 0xa

    if-ge v2, p1, :cond_41

    .line 347
    add-int/lit8 v0, v2, 0x1

    aget-char v2, v1, v2

    invoke-static {v2, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 348
    if-ltz v2, :cond_39

    .line 350
    neg-int v2, v2

    goto :goto_43

    .line 349
    :cond_39
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Unexpected non-digit character"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 351
    :cond_41
    move v0, v2

    const/4 v2, 0x0

    :goto_43
    if-ge v0, p1, :cond_75

    .line 352
    add-int/lit8 v7, v0, 0x1

    aget-char v0, v1, v0

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 353
    if-ltz v0, :cond_6d

    .line 355
    const v8, -0xccccccc

    if-lt v2, v8, :cond_65

    .line 357
    mul-int/lit8 v2, v2, 0xa

    .line 358
    add-int v8, v5, v0

    if-lt v2, v8, :cond_5d

    .line 360
    sub-int/2addr v2, v0

    .line 351
    move v0, v7

    goto :goto_43

    .line 359
    :cond_5d
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Number too large"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 356
    :cond_65
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Number too large"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 354
    :cond_6d
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Unexpected non-digit character"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :cond_75
    if-eqz v3, :cond_82

    .line 363
    if-le v0, v4, :cond_7a

    .line 364
    return v2

    .line 365
    :cond_7a
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "No digits to parse"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 366
    :cond_82
    neg-int p1, v2

    .line 367
    return p1

    .line 361
    :cond_84
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "No number to parse"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zae(Ljava/io/BufferedReader;)J
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/common/server/response/FastParser;->zaqc:[C

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;[C)I

    move-result v1

    .line 369
    const-wide/16 v2, 0x0

    if-nez v1, :cond_f

    .line 370
    return-wide v2

    .line 371
    :cond_f
    iget-object v4, v0, Lcom/google/android/gms/common/server/response/FastParser;->zaqc:[C

    .line 372
    nop

    .line 373
    nop

    .line 374
    nop

    .line 375
    if-lez v1, :cond_91

    .line 376
    const/4 v5, 0x0

    aget-char v6, v4, v5

    const/16 v7, 0x2d

    const/4 v8, 0x1

    if-ne v6, v7, :cond_26

    .line 377
    nop

    .line 378
    const-wide/high16 v5, -0x8000000000000000L

    .line 379
    nop

    .line 381
    move-wide v6, v5

    const/4 v5, 0x1

    const/4 v9, 0x1

    goto :goto_2c

    .line 380
    :cond_26
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 381
    const/4 v9, 0x0

    :goto_2c
    const/16 v10, 0xa

    if-ge v5, v1, :cond_45

    .line 382
    add-int/lit8 v2, v5, 0x1

    aget-char v3, v4, v5

    invoke-static {v3, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 383
    if-ltz v3, :cond_3d

    .line 385
    neg-int v3, v3

    int-to-long v11, v3

    goto :goto_47

    .line 384
    :cond_3d
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v2, "Unexpected non-digit character"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    :cond_45
    move-wide v11, v2

    move v2, v5

    :goto_47
    if-ge v2, v1, :cond_82

    .line 387
    add-int/lit8 v3, v2, 0x1

    aget-char v2, v4, v2

    invoke-static {v2, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 388
    if-ltz v2, :cond_7a

    .line 390
    const-wide v13, -0xcccccccccccccccL

    cmp-long v5, v11, v13

    if-ltz v5, :cond_72

    .line 392
    const-wide/16 v13, 0xa

    mul-long v11, v11, v13

    .line 393
    int-to-long v13, v2

    add-long v15, v6, v13

    cmp-long v2, v11, v15

    if-ltz v2, :cond_6a

    .line 395
    sub-long/2addr v11, v13

    .line 386
    move v2, v3

    goto :goto_47

    .line 394
    :cond_6a
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v2, "Number too large"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    :cond_72
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v2, "Number too large"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    :cond_7a
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v2, "Unexpected non-digit character"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    :cond_82
    if-eqz v9, :cond_8f

    .line 398
    if-le v2, v8, :cond_87

    .line 399
    return-wide v11

    .line 400
    :cond_87
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v2, "No digits to parse"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_8f
    neg-long v1, v11

    .line 402
    return-wide v1

    .line 396
    :cond_91
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v2, "No number to parse"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic zae(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zac(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zaf(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/math/BigInteger;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaf(Ljava/io/BufferedReader;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private final zaf(Ljava/io/BufferedReader;)Ljava/math/BigInteger;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqc:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;[C)I

    move-result p1

    .line 404
    if-nez p1, :cond_a

    .line 405
    const/4 p1, 0x0

    return-object p1

    .line 406
    :cond_a
    new-instance v0, Ljava/math/BigInteger;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqc:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final zag(Ljava/io/BufferedReader;)F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqc:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;[C)I

    move-result p1

    .line 420
    if-nez p1, :cond_a

    .line 421
    const/4 p1, 0x0

    return p1

    .line 422
    :cond_a
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqc:[C

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method static synthetic zag(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/math/BigDecimal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method private final zah(Ljava/io/BufferedReader;)D
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqc:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;[C)I

    move-result p1

    .line 424
    if-nez p1, :cond_b

    .line 425
    const-wide/16 v0, 0x0

    return-wide v0

    .line 426
    :cond_b
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqc:[C

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method private final zai(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqc:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;[C)I

    move-result p1

    .line 428
    if-nez p1, :cond_a

    .line 429
    const/4 p1, 0x0

    return-object p1

    .line 430
    :cond_a
    new-instance v0, Ljava/math/BigDecimal;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqc:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final zaj(Ljava/io/BufferedReader;)C
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqa:[C

    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    .line 461
    return v2

    .line 462
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqa:[C

    aget-char v0, v0, v2

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 463
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqa:[C

    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 464
    return v2

    .line 465
    :cond_1e
    iget-object p1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaqa:[C

    aget-char p1, p1, v2

    return p1
.end method

.method private final zak(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaql:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/16 v1, 0x2e

    if-nez v0, :cond_38

    .line 518
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaql:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 519
    if-ne v0, p1, :cond_19

    .line 521
    return-void

    .line 520
    :cond_19
    new-instance v2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Expected state "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but had "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 517
    :cond_38
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Expected state "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but had empty stack"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .registers 7
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x400

    invoke-direct {v0, v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 10
    :try_start_c
    iget-object p1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaql:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    nop

    .line 12
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)C

    move-result p1

    .line 13
    if-eqz p1, :cond_98

    const/16 v2, 0x5b

    const/4 v3, 0x1

    if-eq p1, v2, :cond_4c

    const/16 v2, 0x7b

    if-ne p1, v2, :cond_33

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaql:Ljava/util/Stack;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z

    .line 16
    goto :goto_80

    .line 29
    :cond_33
    new-instance p2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const/16 v1, 0x13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected token: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 17
    :cond_4c
    iget-object p1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaql:Ljava/util/Stack;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    nop

    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getFieldMappings()Ljava/util/Map;

    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v3, :cond_90

    .line 22
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    .line 23
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaa(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/util/ArrayList;

    move-result-object v2

    .line 24
    nop

    .line 25
    iget-object v3, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zapu:Ljava/lang/String;

    .line 26
    invoke-virtual {p2, p1, v3, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeArrayInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 27
    nop

    .line 30
    :goto_80
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zak(I)V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_83} :catch_a2
    .catchall {:try_start_c .. :try_end_83} :catchall_a0

    .line 31
    :try_start_83
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    .line 32
    return-void

    .line 33
    :catch_87
    move-exception p1

    .line 34
    const-string p1, "FastParser"

    const-string p2, "Failed to close reader while parsing."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void

    .line 21
    :cond_90
    :try_start_90
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Object array response class must have a single Field"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_98
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "No data to parse"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_a0} :catch_a2
    .catchall {:try_start_90 .. :try_end_a0} :catchall_a0

    .line 38
    :catchall_a0
    move-exception p1

    goto :goto_a9

    .line 36
    :catch_a2
    move-exception p1

    .line 37
    :try_start_a3
    new-instance p2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-direct {p2, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_a9
    .catchall {:try_start_a3 .. :try_end_a9} :catchall_a0

    .line 38
    :goto_a9
    nop

    .line 39
    :try_start_aa
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_ae

    .line 40
    goto :goto_b6

    .line 41
    :catch_ae
    move-exception p2

    .line 42
    const-string p2, "FastParser"

    const-string v0, "Failed to close reader while parsing."

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_b6
    throw p1
.end method

###### Class com.google.android.gms.common.server.response.FastParser.ParseException (com.google.android.gms.common.server.response.FastParser$ParseException)
.class public Lcom/google/android/gms/common/server/response/FastParser$ParseException;
.super Ljava/lang/Exception;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/server/response/FastParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 6
    return-void
.end method

###### Class com.google.android.gms.common.server.response.FastParser.zaa (com.google.android.gms.common.server.response.FastParser$zaa)
.class interface abstract Lcom/google/android/gms/common/server/response/FastParser$zaa;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/server/response/FastParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "zaa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract zah(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastParser;",
            "Ljava/io/BufferedReader;",
            ")TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
