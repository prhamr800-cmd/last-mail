###### Class com.squareup.okhttp.internal.http.HeaderParser (com.squareup.okhttp.internal.http.HeaderParser)
.class public final Lcom/squareup/okhttp/internal/http/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static parseSeconds(Ljava/lang/String;I)I
    .registers 7
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 54
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_19

    .line 55
    .local v0, "seconds":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_f

    .line 56
    const v2, 0x7fffffff

    return v2

    .line 57
    :cond_f
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_17

    .line 58
    const/4 v2, 0x0

    return v2

    .line 60
    :cond_17
    long-to-int v2, v0

    return v2

    .line 62
    .end local v0    # "seconds":J
    :catch_19
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "characters"    # Ljava/lang/String;

    .line 26
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 28
    goto :goto_15

    .line 26
    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 31
    :cond_15
    :goto_15
    return p1
.end method

.method public static skipWhitespace(Ljava/lang/String;I)I
    .registers 4
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .line 39
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_16

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 41
    .local v0, "c":C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_13

    const/16 v1, 0x9

    if-eq v0, v1, :cond_13

    .line 42
    goto :goto_16

    .line 39
    .end local v0    # "c":C
    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 45
    :cond_16
    :goto_16
    return p1
.end method
