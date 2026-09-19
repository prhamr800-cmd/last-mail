###### Class com.huxq17.download.utils.FileUtil (com.huxq17.download.utils.FileUtil)
.class public Lcom/huxq17/download/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_17

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 50
    :cond_17
    const/4 v0, 0x0

    .line 51
    .local v0, "bufferedSource":Lokio/BufferedSource;
    const/4 v1, 0x0

    .line 53
    .local v1, "bufferedSink":Lokio/BufferedSink;
    :try_start_19
    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    move-object v0, v2

    .line 54
    invoke-static {p1}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    move-object v1, v2

    .line 55
    invoke-interface {v1, v0}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_2e} :catch_36
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2e} :catch_31
    .catchall {:try_start_19 .. :try_end_2e} :catchall_2f

    goto :goto_3a

    .line 61
    :catchall_2f
    move-exception v2

    goto :goto_42

    .line 58
    :catch_31
    move-exception v2

    .line 59
    .local v2, "e":Ljava/io/IOException;
    :try_start_32
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a

    .line 56
    .end local v2    # "e":Ljava/io/IOException;
    :catch_36
    move-exception v2

    .line 57
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_2f

    .line 61
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_3a
    invoke-static {v1}, Lcom/huxq17/download/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 62
    invoke-static {v0}, Lcom/huxq17/download/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 63
    nop

    .line 65
    return-void

    .line 61
    :goto_42
    invoke-static {v1}, Lcom/huxq17/download/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 62
    invoke-static {v0}, Lcom/huxq17/download/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 63
    throw v2
.end method

.method public static delete(Ljava/lang/String;)Z
    .registers 3
    .param p0, "filePathName"    # Ljava/lang/String;

    .line 86
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 87
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/huxq17/download/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .registers 5
    .param p0, "dirFile"    # Ljava/io/File;

    .line 20
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 21
    return v1

    .line 23
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 24
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 26
    :cond_13
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 27
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_24

    .line 28
    array-length v2, v0

    :goto_1a
    if-ge v1, v2, :cond_24

    aget-object v3, v0, v1

    .line 29
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Lcom/huxq17/download/utils/FileUtil;->deleteDir(Ljava/io/File;)Z

    .line 28
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 33
    .end local v0    # "children":[Ljava/io/File;
    :cond_24
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .registers 6
    .param p0, "file"    # Ljava/io/File;

    .line 92
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 93
    :cond_4
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "to":Ljava/io/File;
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v0, 0x1

    nop

    :cond_2e
    return v0
.end method

.method public static mergeFiles([Ljava/io/File;Ljava/io/File;)Z
    .registers 13
    .param p0, "sources"    # [Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .line 159
    array-length v0, p0

    new-array v0, v0, [Ljava/io/File;

    .line 160
    .local v0, "sortedFiles":[Ljava/io/File;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    array-length v3, p0

    const/4 v4, 0x1

    if-ge v2, v3, :cond_27

    .line 161
    aget-object v3, p0, v2

    .line 162
    .local v3, "partFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, "partFileName":Ljava/lang/String;
    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v4

    .line 164
    .local v6, "idIndex":I
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 165
    .local v4, "id":I
    array-length v7, v0

    if-ge v4, v7, :cond_26

    .line 166
    aput-object v3, v0, v4

    .line 160
    .end local v3    # "partFile":Ljava/io/File;
    .end local v4    # "id":I
    .end local v5    # "partFileName":Ljava/lang/String;
    .end local v6    # "idIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 168
    .restart local v3    # "partFile":Ljava/io/File;
    .restart local v4    # "id":I
    .restart local v5    # "partFileName":Ljava/lang/String;
    .restart local v6    # "idIndex":I
    :cond_26
    return v1

    .line 171
    .end local v2    # "i":I
    .end local v3    # "partFile":Ljava/io/File;
    .end local v4    # "id":I
    .end local v5    # "partFileName":Ljava/lang/String;
    .end local v6    # "idIndex":I
    :cond_27
    const/4 v2, 0x0

    .line 172
    .local v2, "bufferedSink":Lokio/BufferedSink;
    const/4 v3, 0x0

    .line 174
    .local v3, "bufferedSource":Lokio/BufferedSource;
    const/16 v5, 0x1f9c

    :try_start_2b
    new-array v5, v5, [B

    .line 176
    .local v5, "buffer":[B
    aget-object v6, v0, v1

    invoke-static {v6}, Lokio/Okio;->appendingSink(Ljava/io/File;)Lokio/Sink;

    move-result-object v6

    invoke-static {v6}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v6
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_37} :catch_78
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_37} :catch_71
    .catchall {:try_start_2b .. :try_end_37} :catchall_6e

    move-object v2, v6

    .line 177
    move-object v6, v3

    const/4 v3, 0x1

    .local v3, "i":I
    .local v6, "bufferedSource":Lokio/BufferedSource;
    :goto_3a
    :try_start_3a
    array-length v7, v0

    if-ge v3, v7, :cond_5a

    .line 178
    aget-object v7, v0, v3

    .line 179
    .local v7, "file":Ljava/io/File;
    invoke-static {v7}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v8

    invoke-static {v8}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v8

    move-object v6, v8

    .line 180
    :goto_48
    invoke-interface {v6, v5}, Lokio/BufferedSource;->read([B)I

    move-result v8

    move v9, v8

    .local v9, "len":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_54

    .line 181
    invoke-interface {v2, v5, v1, v9}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    goto :goto_48

    .line 183
    :cond_54
    invoke-static {v6}, Lcom/huxq17/download/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 177
    .end local v7    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 185
    .end local v3    # "i":I
    .end local v9    # "len":I
    :cond_5a
    invoke-interface {v2}, Lokio/BufferedSink;->flush()V

    .line 186
    aget-object v3, v0, v1

    invoke-static {v3, p1}, Lcom/huxq17/download/utils/FileUtil;->renameTo(Ljava/io/File;Ljava/io/File;)Z
    :try_end_62
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_62} :catch_6c
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_62} :catch_6a
    .catchall {:try_start_3a .. :try_end_62} :catchall_86

    .line 187
    nop

    .line 193
    invoke-static {v2}, Lcom/huxq17/download/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 194
    invoke-static {v6}, Lcom/huxq17/download/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 187
    return v4

    .line 190
    .end local v5    # "buffer":[B
    :catch_6a
    move-exception v3

    goto :goto_74

    .line 188
    :catch_6c
    move-exception v3

    goto :goto_7b

    .line 193
    .end local v6    # "bufferedSource":Lokio/BufferedSource;
    .local v3, "bufferedSource":Lokio/BufferedSource;
    :catchall_6e
    move-exception v1

    move-object v6, v3

    goto :goto_87

    .line 190
    :catch_71
    move-exception v4

    move-object v6, v3

    move-object v3, v4

    .line 191
    .local v3, "e":Ljava/io/IOException;
    .restart local v6    # "bufferedSource":Lokio/BufferedSource;
    :goto_74
    :try_start_74
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7e

    .line 188
    .end local v6    # "bufferedSource":Lokio/BufferedSource;
    .local v3, "bufferedSource":Lokio/BufferedSource;
    :catch_78
    move-exception v4

    move-object v6, v3

    move-object v3, v4

    .line 189
    .local v3, "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "bufferedSource":Lokio/BufferedSource;
    :goto_7b
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7e
    .catchall {:try_start_74 .. :try_end_7e} :catchall_86

    .line 193
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_7e
    invoke-static {v2}, Lcom/huxq17/download/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 194
    invoke-static {v6}, Lcom/huxq17/download/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 195
    nop

    .line 196
    return v1

    .line 193
    :catchall_86
    move-exception v1

    :goto_87
    invoke-static {v2}, Lcom/huxq17/download/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 194
    invoke-static {v6}, Lcom/huxq17/download/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 195
    throw v1
.end method

.method public static rename(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "filePathName"    # Ljava/lang/String;
    .param p1, "newPathName"    # Ljava/lang/String;

    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 69
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 71
    :cond_f
    invoke-static {p1}, Lcom/huxq17/download/utils/FileUtil;->delete(Ljava/lang/String;)Z

    .line 73
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, "newFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_23

    .line 76
    return v1

    .line 78
    :cond_23
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 79
    .local v1, "parentFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_30

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 82
    :cond_30
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    return v3
.end method

.method public static renameTo(Ljava/io/File;Ljava/io/File;)Z
    .registers 3
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 38
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 39
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0

    .line 41
    :cond_11
    const/4 v0, 0x0

    return v0

    .line 43
    :cond_13
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0
.end method
