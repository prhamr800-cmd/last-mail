###### Class com.crashlytics.android.core.ByteString (com.crashlytics.android.core.ByteString)
.class final Lcom/crashlytics/android/core/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/ByteString$CodedBuilder;,
        Lcom/crashlytics/android/core/ByteString$Output;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/crashlytics/android/core/ByteString;


# instance fields
.field private final bytes:[B

.field private volatile hash:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 85
    new-instance v0, Lcom/crashlytics/android/core/ByteString;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V

    sput-object v0, Lcom/crashlytics/android/core/ByteString;->EMPTY:Lcom/crashlytics/android/core/ByteString;

    return-void
.end method

.method private constructor <init>([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const/4 v0, 0x0

    iput v0, p0, Lcom/crashlytics/android/core/ByteString;->hash:I

    .line 53
    iput-object p1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    .line 54
    return-void
.end method

.method synthetic constructor <init>([BLcom/crashlytics/android/core/ByteString$1;)V
    .registers 3
    .param p1, "x0"    # [B
    .param p2, "x1"    # Lcom/crashlytics/android/core/ByteString$1;

    .line 49
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V

    return-void
.end method

.method public static copyFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;
    .registers 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/crashlytics/android/core/ByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static copyFrom(Ljava/nio/ByteBuffer;)Lcom/crashlytics/android/core/ByteString;
    .registers 2
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 119
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/core/ByteString;->copyFrom(Ljava/nio/ByteBuffer;I)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static copyFrom(Ljava/nio/ByteBuffer;I)Lcom/crashlytics/android/core/ByteString;
    .registers 4
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # I

    .line 109
    new-array v0, p1, [B

    .line 110
    .local v0, "copy":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 111
    new-instance v1, Lcom/crashlytics/android/core/ByteString;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static copyFrom(Ljava/util/List;)Lcom/crashlytics/android/core/ByteString;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/crashlytics/android/core/ByteString;",
            ">;)",
            "Lcom/crashlytics/android/core/ByteString;"
        }
    .end annotation

    .line 152
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/crashlytics/android/core/ByteString;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 153
    sget-object v0, Lcom/crashlytics/android/core/ByteString;->EMPTY:Lcom/crashlytics/android/core/ByteString;

    return-object v0

    .line 154
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_18

    .line 155
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/core/ByteString;

    return-object v0

    .line 158
    :cond_18
    const/4 v0, 0x0

    .line 159
    .local v0, "size":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/crashlytics/android/core/ByteString;

    .line 160
    .local v3, "str":Lcom/crashlytics/android/core/ByteString;
    invoke-virtual {v3}, Lcom/crashlytics/android/core/ByteString;->size()I

    move-result v4

    add-int/2addr v0, v4

    .line 161
    .end local v3    # "str":Lcom/crashlytics/android/core/ByteString;
    goto :goto_1d

    .line 162
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2f
    new-array v1, v0, [B

    .line 163
    .local v1, "bytes":[B
    const/4 v3, 0x0

    .line 164
    .local v3, "pos":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/crashlytics/android/core/ByteString;

    .line 165
    .local v5, "str":Lcom/crashlytics/android/core/ByteString;
    iget-object v6, v5, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    invoke-virtual {v5}, Lcom/crashlytics/android/core/ByteString;->size()I

    move-result v7

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    invoke-virtual {v5}, Lcom/crashlytics/android/core/ByteString;->size()I

    move-result v6

    add-int/2addr v3, v6

    .line 167
    .end local v5    # "str":Lcom/crashlytics/android/core/ByteString;
    goto :goto_36

    .line 168
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_51
    new-instance v2, Lcom/crashlytics/android/core/ByteString;

    invoke-direct {v2, v1}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V

    return-object v2
.end method

.method public static copyFrom([B)Lcom/crashlytics/android/core/ByteString;
    .registers 3
    .param p0, "bytes"    # [B

    .line 101
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/crashlytics/android/core/ByteString;->copyFrom([BII)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static copyFrom([BII)Lcom/crashlytics/android/core/ByteString;
    .registers 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "size"    # I

    .line 92
    new-array v0, p2, [B

    .line 93
    .local v0, "copy":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    new-instance v1, Lcom/crashlytics/android/core/ByteString;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;
    .registers 4
    .param p0, "text"    # Ljava/lang/String;

    .line 137
    :try_start_0
    new-instance v0, Lcom/crashlytics/android/core/ByteString;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/ByteString;-><init>([B)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 138
    :catch_c
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static newCodedBuilder(I)Lcom/crashlytics/android/core/ByteString$CodedBuilder;
    .registers 3
    .param p0, "size"    # I

    .line 368
    new-instance v0, Lcom/crashlytics/android/core/ByteString$CodedBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/crashlytics/android/core/ByteString$CodedBuilder;-><init>(ILcom/crashlytics/android/core/ByteString$1;)V

    return-object v0
.end method

.method public static newOutput()Lcom/crashlytics/android/core/ByteString$Output;
    .registers 1

    .line 327
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->newOutput(I)Lcom/crashlytics/android/core/ByteString$Output;

    move-result-object v0

    return-object v0
.end method

.method public static newOutput(I)Lcom/crashlytics/android/core/ByteString$Output;
    .registers 4
    .param p0, "initialCapacity"    # I

    .line 320
    new-instance v0, Lcom/crashlytics/android/core/ByteString$Output;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/core/ByteString$Output;-><init>(Ljava/io/ByteArrayOutputStream;Lcom/crashlytics/android/core/ByteString$1;)V

    return-object v0
.end method


# virtual methods
.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 225
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 226
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public byteAt(I)B
    .registers 3
    .param p1, "index"    # I

    .line 62
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public copyTo(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "target"    # Ljava/nio/ByteBuffer;

    .line 207
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 208
    return-void
.end method

.method public copyTo([BI)V
    .registers 6
    .param p1, "target"    # [B
    .param p2, "offset"    # I

    .line 181
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    return-void
.end method

.method public copyTo([BIII)V
    .registers 6
    .param p1, "target"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "targetOffset"    # I
    .param p4, "size"    # I

    .line 195
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;

    .line 254
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 255
    return v0

    .line 258
    :cond_4
    instance-of v1, p1, Lcom/crashlytics/android/core/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 259
    return v2

    .line 262
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/crashlytics/android/core/ByteString;

    .line 263
    .local v1, "other":Lcom/crashlytics/android/core/ByteString;
    iget-object v3, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v3, v3

    .line 264
    .local v3, "size":I
    iget-object v4, v1, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v4, v4

    if-eq v3, v4, :cond_16

    .line 265
    return v2

    .line 268
    :cond_16
    iget-object v4, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    .line 269
    .local v4, "thisBytes":[B
    iget-object v5, v1, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    .line 270
    .local v5, "otherBytes":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1b
    if-ge v6, v3, :cond_27

    .line 271
    aget-byte v7, v4, v6

    aget-byte v8, v5, v6

    if-eq v7, v8, :cond_24

    .line 272
    return v2

    .line 270
    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 276
    .end local v6    # "i":I
    :cond_27
    return v0
.end method

.method public hashCode()I
    .registers 7

    .line 283
    iget v0, p0, Lcom/crashlytics/android/core/ByteString;->hash:I

    .line 285
    .local v0, "h":I
    if-nez v0, :cond_1b

    .line 286
    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    .line 287
    .local v1, "thisBytes":[B
    iget-object v2, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v2, v2

    .line 289
    .local v2, "size":I
    move v0, v2

    .line 290
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_16

    .line 291
    mul-int/lit8 v4, v0, 0x1f

    aget-byte v5, v1, v3

    add-int v0, v4, v5

    .line 290
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 293
    .end local v3    # "i":I
    :cond_16
    if-nez v0, :cond_19

    .line 294
    const/4 v0, 0x1

    .line 297
    :cond_19
    iput v0, p0, Lcom/crashlytics/android/core/ByteString;->hash:I

    .line 300
    .end local v1    # "thisBytes":[B
    .end local v2    # "size":I
    :cond_1b
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public newInput()Ljava/io/InputStream;
    .registers 3

    .line 310
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .registers 5

    .line 214
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    array-length v0, v0

    .line 215
    .local v0, "size":I
    new-array v1, v0, [B

    .line 216
    .local v1, "copy":[B
    iget-object v2, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    return-object v1
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public toStringUtf8()Ljava/lang/String;
    .registers 4

    .line 243
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString;->bytes:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 244
    :catch_a
    move-exception v0

    .line 245
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class com.crashlytics.android.core.ByteString.AnonymousClass1 (com.crashlytics.android.core.ByteString$1)
.class synthetic Lcom/crashlytics/android/core/ByteString$1;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.crashlytics.android.core.ByteString.CodedBuilder (com.crashlytics.android.core.ByteString$CodedBuilder)
.class final Lcom/crashlytics/android/core/ByteString$CodedBuilder;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CodedBuilder"
.end annotation


# instance fields
.field private final buffer:[B

.field private final output:Lcom/crashlytics/android/core/CodedOutputStream;


# direct methods
.method private constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/crashlytics/android/core/ByteString$CodedBuilder;->buffer:[B

    .line 378
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString$CodedBuilder;->buffer:[B

    invoke-static {v0}, Lcom/crashlytics/android/core/CodedOutputStream;->newInstance([B)Lcom/crashlytics/android/core/CodedOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/ByteString$CodedBuilder;->output:Lcom/crashlytics/android/core/CodedOutputStream;

    .line 379
    return-void
.end method

.method synthetic constructor <init>(ILcom/crashlytics/android/core/ByteString$1;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/crashlytics/android/core/ByteString$1;

    .line 372
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/ByteString$CodedBuilder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/crashlytics/android/core/ByteString;
    .registers 4

    .line 382
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString$CodedBuilder;->output:Lcom/crashlytics/android/core/CodedOutputStream;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CodedOutputStream;->checkNoSpaceLeft()V

    .line 387
    new-instance v0, Lcom/crashlytics/android/core/ByteString;

    iget-object v1, p0, Lcom/crashlytics/android/core/ByteString$CodedBuilder;->buffer:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/core/ByteString;-><init>([BLcom/crashlytics/android/core/ByteString$1;)V

    return-object v0
.end method

.method public getCodedOutput()Lcom/crashlytics/android/core/CodedOutputStream;
    .registers 2

    .line 391
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString$CodedBuilder;->output:Lcom/crashlytics/android/core/CodedOutputStream;

    return-object v0
.end method

###### Class com.crashlytics.android.core.ByteString.Output (com.crashlytics.android.core.ByteString$Output)
.class final Lcom/crashlytics/android/core/ByteString$Output;
.super Ljava/io/FilterOutputStream;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Output"
.end annotation


# instance fields
.field private final bout:Ljava/io/ByteArrayOutputStream;


# direct methods
.method private constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .registers 2
    .param p1, "bout"    # Ljava/io/ByteArrayOutputStream;

    .line 341
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 342
    iput-object p1, p0, Lcom/crashlytics/android/core/ByteString$Output;->bout:Ljava/io/ByteArrayOutputStream;

    .line 343
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/ByteArrayOutputStream;Lcom/crashlytics/android/core/ByteString$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "x1"    # Lcom/crashlytics/android/core/ByteString$1;

    .line 334
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/ByteString$Output;-><init>(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method


# virtual methods
.method public toByteString()Lcom/crashlytics/android/core/ByteString;
    .registers 4

    .line 349
    iget-object v0, p0, Lcom/crashlytics/android/core/ByteString$Output;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 350
    .local v0, "byteArray":[B
    new-instance v1, Lcom/crashlytics/android/core/ByteString;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/crashlytics/android/core/ByteString;-><init>([BLcom/crashlytics/android/core/ByteString$1;)V

    return-object v1
.end method
