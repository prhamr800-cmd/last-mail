###### Class com.huxq17.download.utils.MD5Util (com.huxq17.download.utils.MD5Util)
.class public Lcom/huxq17/download/utils/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .registers 8
    .param p0, "src"    # [B

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_2d

    array-length v1, p0

    if-gtz v1, :cond_b

    goto :goto_2d

    .line 49
    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v3, p0

    if-ge v2, v3, :cond_28

    .line 50
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 51
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "hv":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_22

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    :cond_22
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .end local v3    # "v":I
    .end local v4    # "hv":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 57
    .end local v2    # "i":I
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 47
    :cond_2d
    :goto_2d
    const-string v1, ""

    return-object v1
.end method

.method public static getMD5(Ljava/io/File;)Ljava/lang/String;
    .registers 7
    .param p0, "file"    # Ljava/io/File;

    .line 14
    const/4 v0, 0x0

    .line 16
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 17
    .local v1, "MD5":Ljava/security/MessageDigest;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 18
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 20
    .local v2, "buffer":[B
    :goto_11
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "length":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1e

    .line 21
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_11

    .line 23
    :cond_1e
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/huxq17/download/utils/MD5Util;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_2c
    .catchall {:try_start_1 .. :try_end_26} :catchall_2a

    .line 28
    invoke-static {v0}, Lcom/huxq17/download/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 23
    return-object v3

    .line 28
    .end local v1    # "MD5":Ljava/security/MessageDigest;
    .end local v2    # "buffer":[B
    .end local v4    # "length":I
    :catchall_2a
    move-exception v1

    goto :goto_36

    .line 24
    :catch_2c
    move-exception v1

    .line 25
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    const-string v2, ""
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_2a

    .line 28
    invoke-static {v0}, Lcom/huxq17/download/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 26
    return-object v2

    .line 28
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_36
    invoke-static {v0}, Lcom/huxq17/download/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 29
    throw v1
.end method

.method public static getMD5ByStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "src"    # Ljava/lang/String;

    .line 34
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 35
    .local v0, "MD5":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 36
    .local v1, "buffer":[B
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 37
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/huxq17/download/utils/MD5Util;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v2

    .line 38
    .end local v0    # "MD5":Ljava/security/MessageDigest;
    .end local v1    # "buffer":[B
    :catch_16
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    const-string v1, ""

    return-object v1
.end method
