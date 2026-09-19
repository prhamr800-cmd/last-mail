###### Class com.huxq17.download.utils.Util (com.huxq17.download.utils.Util)
.class public Lcom/huxq17/download/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final BIN:Ljava/lang/String; = "bin"

.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field public static final CONTENT_LENGTH_NOT_FOUND:I = -0x1

.field public static final DOWNLOAD_PART:Ljava/lang/String; = "DOWNLOAD_PART-"

.field public static final TRANSFER_ENCODING_CHUNKED:Ljava/lang/String; = "chunked"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 248
    const-string v0, "attachment;\\s*filename\\s*=\\s*(\"?)([^\"]*)\\1\\s*$"

    .line 249
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/huxq17/download/utils/Util;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 248
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 40
    if-eqz p0, :cond_a

    .line 42
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 46
    goto :goto_a

    .line 45
    :catch_6
    move-exception v0

    goto :goto_a

    .line 43
    :catch_8
    move-exception v0

    .line 44
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 48
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_a
    :goto_a
    return-void
.end method

.method public static getCachePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 56
    .local v0, "externalCacheDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 57
    if-eqz v0, :cond_17

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 60
    :cond_17
    invoke-static {p0}, Lcom/huxq17/download/utils/Util;->hasStoragePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 61
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "cacheFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_50

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 65
    :cond_50
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 67
    .end local v1    # "cacheFile":Ljava/io/File;
    :cond_55
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 71
    :cond_5e
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTempDir(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "filePath"    # Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 78
    .local v1, "parentFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getUsableSpace(Ljava/io/File;)J
    .registers 3
    .param p0, "file"    # Ljava/io/File;

    .line 82
    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 83
    :cond_5
    invoke-static {p0}, Lcom/huxq17/download/utils/Util;->getUsableSpaceBeforeO(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getUsableSpaceAfterO(Landroid/content/Context;Ljava/io/File;)J
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 93
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 95
    .local v0, "sm":Landroid/os/storage/StorageManager;
    :try_start_8
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v1

    .line 96
    .local v1, "uuid":Ljava/util/UUID;
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;)J
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_10

    .line 99
    .end local v1    # "uuid":Ljava/util/UUID;
    goto :goto_14

    .line 97
    :catch_10
    move-exception v1

    .line 98
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    .end local v1    # "e":Ljava/io/IOException;
    :goto_14
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private static getUsableSpaceBeforeO(Ljava/io/File;)J
    .registers 5
    .param p0, "file"    # Ljava/io/File;

    .line 104
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 105
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    return-wide v0

    .line 107
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 108
    .local v0, "parentFile":Ljava/io/File;
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2a

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_25

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    nop

    :cond_24
    return-wide v1

    .line 113
    :cond_25
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    return-wide v1

    .line 115
    :cond_2a
    return-wide v1
.end method

.method public static guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "contentDisposition"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "mimeType"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "filename":Ljava/lang/String;
    const/4 v1, 0x0

    .line 138
    .local v1, "extension":Ljava/lang/String;
    const/16 v2, 0x2f

    if-eqz p1, :cond_18

    .line 139
    invoke-static {p1}, Lcom/huxq17/download/utils/Util;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_18

    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 142
    .local v3, "index":I
    if-lez v3, :cond_18

    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    .end local v3    # "index":I
    :cond_18
    const/4 v3, 0x0

    if-nez v0, :cond_41

    .line 150
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "decodedUrl":Ljava/lang/String;
    if-eqz v4, :cond_41

    .line 152
    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 154
    .local v5, "queryIndex":I
    if-lez v5, :cond_2d

    .line 155
    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 157
    :cond_2d
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_41

    .line 158
    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 159
    .local v2, "index":I
    if-lez v2, :cond_41

    .line 160
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .end local v2    # "index":I
    .end local v4    # "decodedUrl":Ljava/lang/String;
    .end local v5    # "queryIndex":I
    :cond_41
    if-nez v0, :cond_47

    .line 168
    invoke-static {p0}, Lcom/huxq17/download/utils/MD5Util;->getMD5ByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_47
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 174
    .local v2, "dotIndex":I
    if-ltz v2, :cond_9c

    .line 175
    if-eqz p2, :cond_9c

    .line 178
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "urlExt":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, "typeFromExt":Ljava/lang/String;
    if-eqz v5, :cond_9c

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9c

    .line 181
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_8b

    const-string v6, "bin"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8b

    .line 183
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9c

    .line 185
    :cond_8b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    .end local v4    # "urlExt":Ljava/lang/String;
    .end local v5    # "typeFromExt":Ljava/lang/String;
    :cond_9c
    :goto_9c
    if-nez v1, :cond_e8

    .line 191
    if-eqz p2, :cond_c7

    .line 192
    const-string v4, ";"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 193
    .local v4, "index":I
    if-ltz v4, :cond_ac

    .line 194
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 196
    :cond_ac
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_c7

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    .end local v4    # "index":I
    :cond_c7
    if-nez v1, :cond_e8

    .line 202
    if-eqz p2, :cond_e8

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "text/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e8

    .line 203
    const-string/jumbo v4, "text/html"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 204
    const-string v1, ".html"

    goto :goto_e8

    .line 206
    :cond_e6
    const-string v1, ".txt"

    .line 212
    :cond_e8
    :goto_e8
    if-ltz v2, :cond_f4

    .line 213
    if-nez v1, :cond_f0

    .line 214
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    :cond_f0
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_f4
    if-eqz v1, :cond_105

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_105
    return-object v0
.end method

.method public static hasStoragePermission(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 51
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "contentDisposition"    # Ljava/lang/String;

    .line 235
    :try_start_0
    sget-object v0, Lcom/huxq17/download/utils/Util;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 236
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 237
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_11} :catch_13

    return-object v1

    .line 241
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_12
    goto :goto_14

    .line 239
    :catch_13
    move-exception v0

    .line 242
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseContentLength(Ljava/lang/String;)J
    .registers 5
    .param p0, "contentLength"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 120
    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    .line 123
    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9} :catch_a

    return-wide v2

    .line 124
    :catch_a
    move-exception v2

    .line 127
    return-wide v0
.end method

.method public static setFilePathIfNeed(Lcom/huxq17/download/core/task/DownloadTask;Lokhttp3/Response;)V
    .registers 8
    .param p0, "downloadTask"    # Lcom/huxq17/download/core/task/DownloadTask;
    .param p1, "response"    # Lokhttp3/Response;

    .line 253
    invoke-virtual {p0}, Lcom/huxq17/download/core/task/DownloadTask;->getDownloadInfo()Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4a

    .line 254
    const-string v0, "Content-Disposition"

    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "contentDisposition":Ljava/lang/String;
    const-string v1, "Content-Type"

    invoke-virtual {p1, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "contentType":Ljava/lang/String;
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/huxq17/download/utils/Util;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "fileName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/huxq17/download/core/task/DownloadTask;->getRequest()Lcom/huxq17/download/core/DownloadRequest;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/huxq17/download/DownloadProvider;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/huxq17/download/utils/Util;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huxq17/download/core/DownloadRequest;->setFilePath(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/huxq17/download/core/task/DownloadTask;->updateInfo()V

    .line 260
    .end local v0    # "contentDisposition":Ljava/lang/String;
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_4a
    return-void
.end method
