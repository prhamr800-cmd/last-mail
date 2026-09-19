###### Class com.squareup.okhttp.internal.tls.DistinguishedNameParser (com.squareup.okhttp.internal.tls.DistinguishedNameParser)
.class final Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;
.super Ljava/lang/Object;
.source "DistinguishedNameParser.java"


# instance fields
.field private beg:I

.field private chars:[C

.field private cur:I

.field private final dn:Ljava/lang/String;

.field private end:I

.field private final length:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3
    .param p1, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    .line 45
    return-void
.end method

.method private escapedAV()Ljava/lang/String;
    .registers 6

    .line 188
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 189
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 191
    :cond_8
    :goto_8
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_1d

    .line 193
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iget v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 196
    :cond_1d
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x20

    if-eq v0, v2, :cond_6d

    if-eq v0, v1, :cond_5e

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_49

    packed-switch v0, :pswitch_data_d2

    .line 225
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 226
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_8

    .line 204
    :cond_49
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    .line 205
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 206
    goto :goto_8

    .line 201
    :cond_5e
    :pswitch_5e
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iget v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 210
    :cond_6d
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->cur:I

    .line 212
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 213
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    aput-char v2, v0, v3

    .line 215
    :goto_81
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v3, :cond_a0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v3

    if-ne v0, v2, :cond_a0

    .line 216
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    aput-char v2, v0, v3

    .line 215
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_81

    .line 218
    :cond_a0
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v2, :cond_c2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v2

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_c2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v2

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_c2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v2

    if-ne v0, v1, :cond_8

    .line 221
    :cond_c2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->cur:I

    iget v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    nop

    :pswitch_data_d2
    .packed-switch 0x2b
        :pswitch_5e
        :pswitch_5e
    .end packed-switch
.end method

.method private getByte(I)I
    .registers 11
    .param p1, "position"    # I

    .line 312
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_78

    .line 318
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    aget-char v0, v0, p1

    .line 319
    .local v0, "b1":I
    const/16 v1, 0x46

    const/16 v2, 0x41

    const/16 v3, 0x66

    const/16 v4, 0x61

    const/16 v5, 0x39

    const/16 v6, 0x30

    if-lt v0, v6, :cond_1c

    if-gt v0, v5, :cond_1c

    .line 320
    sub-int/2addr v0, v6

    goto :goto_29

    .line 321
    :cond_1c
    if-lt v0, v4, :cond_23

    if-gt v0, v3, :cond_23

    .line 322
    add-int/lit8 v0, v0, -0x57

    goto :goto_29

    .line 323
    :cond_23
    if-lt v0, v2, :cond_5f

    if-gt v0, v1, :cond_5f

    .line 324
    add-int/lit8 v0, v0, -0x37

    .line 329
    :goto_29
    iget-object v7, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    add-int/lit8 v8, p1, 0x1

    aget-char v7, v7, v8

    .line 330
    .local v7, "b2":I
    if-lt v7, v6, :cond_35

    if-gt v7, v5, :cond_35

    .line 331
    sub-int/2addr v7, v6

    goto :goto_42

    .line 332
    :cond_35
    if-lt v7, v4, :cond_3c

    if-gt v7, v3, :cond_3c

    .line 333
    add-int/lit8 v7, v7, -0x57

    goto :goto_42

    .line 334
    :cond_3c
    if-lt v7, v2, :cond_46

    if-gt v7, v1, :cond_46

    .line 335
    add-int/lit8 v7, v7, -0x37

    .line 340
    :goto_42
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v1, v7

    return v1

    .line 337
    :cond_46
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed DN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    .end local v7    # "b2":I
    :cond_5f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed DN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    .end local v0    # "b1":I
    :cond_78
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEscaped()C
    .registers 4

    .line 233
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 234
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_37

    .line 238
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_30

    const/16 v1, 0x25

    if-eq v0, v1, :cond_30

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_30

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_30

    packed-switch v0, :pswitch_data_50

    packed-switch v0, :pswitch_data_58

    packed-switch v0, :pswitch_data_62

    .line 257
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->getUTF8()C

    move-result v0

    return v0

    .line 253
    :cond_30
    :pswitch_30
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    return v0

    .line 235
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_50
    .packed-switch 0x22
        :pswitch_30
        :pswitch_30
    .end packed-switch

    :pswitch_data_58
    .packed-switch 0x2a
        :pswitch_30
        :pswitch_30
        :pswitch_30
    .end packed-switch

    :pswitch_data_62
    .packed-switch 0x3b
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method

.method private getUTF8()C
    .registers 9

    .line 264
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v0

    .line 265
    .local v0, "res":I
    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 267
    const/16 v1, 0x80

    if-ge v0, v1, :cond_12

    .line 268
    int-to-char v1, v0

    return v1

    .line 269
    :cond_12
    const/16 v2, 0xc0

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_6c

    const/16 v2, 0xf7

    if-gt v0, v2, :cond_6c

    .line 272
    const/16 v2, 0xdf

    if-gt v0, v2, :cond_24

    .line 273
    const/4 v2, 0x1

    .line 274
    .local v2, "count":I
    and-int/lit8 v0, v0, 0x1f

    goto :goto_2f

    .line 275
    .end local v2    # "count":I
    :cond_24
    const/16 v2, 0xef

    if-gt v0, v2, :cond_2c

    .line 276
    const/4 v2, 0x2

    .line 277
    .restart local v2    # "count":I
    and-int/lit8 v0, v0, 0xf

    goto :goto_2f

    .line 279
    .end local v2    # "count":I
    :cond_2c
    const/4 v2, 0x3

    .line 280
    .restart local v2    # "count":I
    and-int/lit8 v0, v0, 0x7

    .line 284
    :goto_2f
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_30
    if-ge v4, v2, :cond_6a

    .line 285
    iget v5, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 286
    iget v5, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v6, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v5, v6, :cond_69

    iget-object v5, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v6, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v5, v5, v6

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_49

    goto :goto_69

    .line 289
    :cond_49
    iget v5, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 291
    iget v5, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    invoke-direct {p0, v5}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v5

    .line 292
    .local v5, "b":I
    iget v6, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 293
    and-int/lit16 v6, v5, 0xc0

    if-eq v6, v1, :cond_60

    .line 294
    return v3

    .line 297
    :cond_60
    shl-int/lit8 v6, v0, 0x6

    and-int/lit8 v7, v5, 0x3f

    add-int v0, v6, v7

    .line 284
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 287
    .end local v5    # "b":I
    :cond_69
    :goto_69
    return v3

    .line 299
    .end local v4    # "i":I
    :cond_6a
    int-to-char v1, v0

    return v1

    .line 301
    .end local v2    # "count":I
    :cond_6c
    return v3
.end method

.method private hexAV()Ljava/lang/String;
    .registers 6

    .line 138
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_d1

    .line 143
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 144
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 149
    :goto_12
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_85

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_85

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_85

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_37

    goto :goto_85

    .line 155
    :cond_37
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_60

    .line 156
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 157
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 160
    :goto_4b
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v2, :cond_8a

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v2

    if-ne v0, v1, :cond_8a

    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_4b

    .line 163
    :cond_60
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v2

    const/16 v2, 0x41

    if-lt v0, v2, :cond_7e

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v2

    const/16 v2, 0x46

    if-gt v0, v2, :cond_7e

    .line 164
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v3, v0, v2

    add-int/2addr v3, v1

    int-to-char v1, v3

    aput-char v1, v0, v2

    .line 167
    :cond_7e
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_12

    .line 151
    :cond_85
    :goto_85
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 152
    nop

    .line 172
    :cond_8a
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    .line 173
    .local v0, "hexLen":I
    const/4 v1, 0x5

    if-lt v0, v1, :cond_b8

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_b8

    .line 178
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 179
    .local v1, "encoded":[B
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    add-int/lit8 v3, v3, 0x1

    .local v3, "p":I
    :goto_9f
    array-length v4, v1

    if-ge v2, v4, :cond_ae

    .line 180
    invoke-direct {p0, v3}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 179
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9f

    .line 183
    .end local v2    # "i":I
    .end local v3    # "p":I
    :cond_ae
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 174
    .end local v1    # "encoded":[B
    :cond_b8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected end of DN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    .end local v0    # "hexLen":I
    :cond_d1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextAT()Ljava/lang/String;
    .registers 6

    .line 51
    :goto_0
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_17

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_17

    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_0

    .line 53
    :cond_17
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_1f

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_1f
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 61
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 62
    :goto_29
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_48

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_48

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_48

    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_29

    .line 66
    :cond_48
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_126

    .line 71
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 75
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_9f

    .line 76
    :goto_5a
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_77

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_77

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_77

    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_5a

    .line 79
    :cond_77
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_86

    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_86

    goto :goto_9f

    .line 80
    :cond_86
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_9f
    :goto_9f
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 88
    :goto_a5
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_ba

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_ba

    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_a5

    .line 93
    :cond_ba
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_117

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    add-int/lit8 v2, v2, 0x3

    aget-char v0, v0, v2

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_117

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    aget-char v0, v0, v2

    const/16 v2, 0x4f

    if-eq v0, v2, :cond_e2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    aget-char v0, v0, v2

    const/16 v2, 0x6f

    if-ne v0, v2, :cond_117

    :cond_e2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    add-int/lit8 v2, v2, 0x1

    aget-char v0, v0, v2

    const/16 v2, 0x49

    if-eq v0, v2, :cond_fa

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    add-int/lit8 v2, v2, 0x1

    aget-char v0, v0, v2

    const/16 v2, 0x69

    if-ne v0, v2, :cond_117

    :cond_fa
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    add-int/lit8 v2, v2, 0x2

    aget-char v0, v0, v2

    const/16 v2, 0x44

    if-eq v0, v2, :cond_112

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    add-int/lit8 v2, v2, 0x2

    aget-char v0, v0, v2

    const/16 v2, 0x64

    if-ne v0, v2, :cond_117

    .line 97
    :cond_112
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 100
    :cond_117
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iget v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 67
    :cond_126
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private quotedAV()Ljava/lang/String;
    .registers 6

    .line 105
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 106
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 107
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 110
    :goto_e
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_79

    .line 114
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_4b

    .line 116
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 117
    nop

    .line 130
    :goto_25
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_3c

    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3c

    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    goto :goto_25

    .line 133
    :cond_3c
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iget v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 118
    :cond_4b
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_60

    .line 119
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v0, v1

    goto :goto_6c

    .line 122
    :cond_60
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v1, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 124
    :goto_6c
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 125
    iget v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    goto :goto_e

    .line 111
    :cond_79
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public findMostSpecific(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "attributeType"    # Ljava/lang/String;

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 352
    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->beg:I

    .line 353
    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->end:I

    .line 354
    iput v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->cur:I

    .line 355
    iget-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    .line 357
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "attType":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 359
    return-object v1

    .line 362
    :cond_19
    :goto_19
    const-string v2, ""

    .line 364
    .local v2, "attValue":Ljava/lang/String;
    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-ne v3, v4, :cond_22

    .line 365
    return-object v1

    .line 368
    :cond_22
    iget-object v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_a8

    .line 381
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v2

    goto :goto_3b

    .line 379
    :sswitch_30
    goto :goto_3b

    .line 373
    :sswitch_31
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v2

    .line 374
    goto :goto_3b

    .line 370
    :sswitch_36
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v2

    .line 371
    nop

    .line 387
    :goto_3b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 388
    return-object v2

    .line 391
    :cond_42
    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    iget v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->length:I

    if-lt v3, v4, :cond_49

    .line 392
    return-object v1

    .line 395
    :cond_49
    iget-object v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_82

    iget-object v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_5e

    goto :goto_82

    .line 396
    :cond_5e
    iget-object v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->chars:[C

    iget v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_69

    goto :goto_82

    .line 397
    :cond_69
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    :cond_82
    :goto_82
    iget v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->pos:I

    .line 401
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    .line 402
    if-eqz v0, :cond_8f

    .line 405
    .end local v2    # "attValue":Ljava/lang/String;
    goto :goto_19

    .line 403
    .restart local v2    # "attValue":Ljava/lang/String;
    :cond_8f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/tls/DistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_a8
    .sparse-switch
        0x22 -> :sswitch_36
        0x23 -> :sswitch_31
        0x2b -> :sswitch_30
        0x2c -> :sswitch_30
        0x3b -> :sswitch_30
    .end sparse-switch
.end method
