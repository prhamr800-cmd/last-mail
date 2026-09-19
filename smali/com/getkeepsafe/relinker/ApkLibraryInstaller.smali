###### Class com.getkeepsafe.relinker.ApkLibraryInstaller (com.getkeepsafe.relinker.ApkLibraryInstaller)
.class public Lcom/getkeepsafe/relinker/ApkLibraryInstaller;
.super Ljava/lang/Object;
.source "ApkLibraryInstaller.java"

# interfaces
.implements Lcom/getkeepsafe/relinker/ReLinker$LibraryInstaller;


# static fields
.field private static final COPY_BUFFER_SIZE:I = 0x1000

.field private static final MAX_TRIES:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .registers 3
    .param p1, "closeable"    # Ljava/io/Closeable;

    .line 169
    if-eqz p1, :cond_8

    .line 170
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_8

    .line 172
    :catch_6
    move-exception v0

    nop

    .line 173
    :cond_8
    :goto_8
    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    const-wide/16 v0, 0x0

    .line 150
    .local v0, "copied":J
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 152
    .local v2, "buf":[B
    :goto_6
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 153
    .local v3, "read":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_12

    .line 154
    nop

    .line 159
    .end local v3    # "read":I
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 160
    return-wide v0

    .line 156
    .restart local v3    # "read":I
    :cond_12
    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 157
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 158
    .end local v3    # "read":I
    goto :goto_6
.end method


# virtual methods
.method public installLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/getkeepsafe/relinker/ReLinkerInstance;)V
    .registers 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "abis"    # [Ljava/lang/String;
    .param p3, "mappedLibraryName"    # Ljava/lang/String;
    .param p4, "destination"    # Ljava/io/File;
    .param p5, "instance"    # Lcom/getkeepsafe/relinker/ReLinkerInstance;

    .line 49
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v6, 0x0

    move-object v7, v6

    .line 51
    .local v7, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_120

    move-object v8, v0

    .line 52
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v0, 0x0

    .line 53
    .local v0, "tries":I
    :goto_12
    add-int/lit8 v10, v0, 0x1

    .local v10, "tries":I
    const/4 v11, 0x5

    const/4 v12, 0x1

    if-ge v0, v11, :cond_29

    .line 55
    .end local v0    # "tries":I
    :try_start_18
    new-instance v0, Ljava/util/zip/ZipFile;

    new-instance v13, Ljava/io/File;

    iget-object v14, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v13, v12}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_26
    .catchall {:try_start_18 .. :try_end_24} :catchall_120

    move-object v7, v0

    .line 56
    goto :goto_29

    .line 57
    :catch_26
    move-exception v0

    .line 52
    move v0, v10

    goto :goto_12

    .line 60
    :cond_29
    :goto_29
    if-nez v7, :cond_39

    .line 61
    :try_start_2b
    const-string v0, "FATAL! Couldn\'t find application APK!"

    invoke-virtual {v5, v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_120

    .line 133
    if-eqz v7, :cond_38

    .line 134
    :try_start_32
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_38

    .line 136
    :catch_36
    move-exception v0

    nop

    .line 62
    :cond_38
    :goto_38
    return-void

    .line 65
    :cond_39
    const/4 v0, 0x0

    .line 66
    .end local v10    # "tries":I
    .restart local v0    # "tries":I
    :goto_3a
    add-int/lit8 v10, v0, 0x1

    .restart local v10    # "tries":I
    if-ge v0, v11, :cond_111

    .line 67
    .end local v0    # "tries":I
    const/4 v0, 0x0

    .line 68
    .local v0, "jniNameInApk":Ljava/lang/String;
    const/4 v13, 0x0

    .line 70
    .local v13, "libraryEntry":Ljava/util/zip/ZipEntry;
    :try_start_40
    array-length v14, v2

    move-object v15, v13

    move-object v13, v0

    const/4 v0, 0x0

    .end local v0    # "jniNameInApk":Ljava/lang/String;
    .local v13, "jniNameInApk":Ljava/lang/String;
    .local v15, "libraryEntry":Ljava/util/zip/ZipEntry;
    :goto_44
    if-ge v0, v14, :cond_78

    aget-object v16, v2, v0

    move-object/from16 v17, v16

    .line 71
    .local v17, "abi":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lib"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v6, v17

    .end local v17    # "abi":Ljava/lang/String;
    .local v6, "abi":Ljava/lang/String;
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v9, Ljava/io/File;->separatorChar:C

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v13, v9

    .line 73
    invoke-virtual {v7, v13}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v9

    move-object v15, v9

    .line 75
    if-eqz v15, :cond_73

    .line 76
    goto :goto_78

    .line 70
    .end local v6    # "abi":Ljava/lang/String;
    :cond_73
    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x5

    goto :goto_44

    .line 80
    :cond_78
    :goto_78
    if-eqz v13, :cond_84

    const-string v0, "Looking for %s in APK..."

    new-array v6, v12, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v13, v6, v9

    invoke-virtual {v5, v0, v6}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_84
    if-nez v15, :cond_94

    .line 84
    if-eqz v13, :cond_8e

    .line 85
    new-instance v0, Lcom/getkeepsafe/relinker/MissingLibraryException;

    invoke-direct {v0, v13}, Lcom/getkeepsafe/relinker/MissingLibraryException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_8e
    new-instance v0, Lcom/getkeepsafe/relinker/MissingLibraryException;

    invoke-direct {v0, v3}, Lcom/getkeepsafe/relinker/MissingLibraryException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_94
    const-string v0, "Found %s! Extracting..."

    new-array v6, v12, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v13, v6, v9

    invoke-virtual {v5, v0, v6}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9e
    .catchall {:try_start_40 .. :try_end_9e} :catchall_120

    .line 93
    :try_start_9e
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a8} :catch_108
    .catchall {:try_start_9e .. :try_end_a8} :catchall_120

    if-nez v0, :cond_ae

    .line 94
    nop

    .line 66
    const/4 v9, 0x0

    .end local v13    # "jniNameInApk":Ljava/lang/String;
    .end local v15    # "libraryEntry":Ljava/util/zip/ZipEntry;
    :goto_ac
    const/4 v14, 0x0

    goto :goto_10c

    .line 99
    .restart local v13    # "jniNameInApk":Ljava/lang/String;
    .restart local v15    # "libraryEntry":Ljava/util/zip/ZipEntry;
    :cond_ae
    nop

    .line 101
    const/4 v6, 0x0

    .line 102
    .local v6, "inputStream":Ljava/io/InputStream;
    const/4 v9, 0x0

    move-object v11, v9

    .line 104
    .local v11, "fileOut":Ljava/io/FileOutputStream;
    :try_start_b2
    invoke-virtual {v7, v15}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    move-object v6, v0

    .line 105
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v11, v0

    .line 106
    invoke-direct {v1, v6, v11}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v16

    .line 107
    .local v16, "written":J
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 108
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->length()J

    move-result-wide v18
    :try_end_cc
    .catch Ljava/io/FileNotFoundException; {:try_start_b2 .. :try_end_cc} :catch_102
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_cc} :catch_f9
    .catchall {:try_start_b2 .. :try_end_cc} :catchall_f1

    cmp-long v0, v16, v18

    if-eqz v0, :cond_d7

    .line 119
    :try_start_d0
    invoke-direct {v1, v6}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 120
    invoke-direct {v1, v11}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_ac

    .line 119
    .end local v16    # "written":J
    :cond_d7
    invoke-direct {v1, v6}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 120
    invoke-direct {v1, v11}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 121
    nop

    .line 124
    const/4 v14, 0x0

    invoke-virtual {v4, v12, v14}, Ljava/io/File;->setReadable(ZZ)Z

    .line 125
    invoke-virtual {v4, v12, v14}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 126
    invoke-virtual {v4, v12}, Ljava/io/File;->setWritable(Z)Z
    :try_end_e8
    .catchall {:try_start_d0 .. :try_end_e8} :catchall_120

    .line 133
    if-eqz v7, :cond_f0

    .line 134
    :try_start_ea
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_ee

    goto :goto_f0

    .line 136
    :catch_ee
    move-exception v0

    nop

    .line 127
    :cond_f0
    :goto_f0
    return-void

    .line 119
    :catchall_f1
    move-exception v0

    :try_start_f2
    invoke-direct {v1, v6}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 120
    invoke-direct {v1, v11}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 115
    :catch_f9
    move-exception v0

    const/4 v14, 0x0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {v1, v6}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    .line 120
    :goto_fe
    invoke-direct {v1, v11}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_10c

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    :catch_102
    move-exception v0

    const/4 v14, 0x0

    .line 119
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-direct {v1, v6}, Lcom/getkeepsafe/relinker/ApkLibraryInstaller;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_fe

    .line 96
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "fileOut":Ljava/io/FileOutputStream;
    :catch_108
    move-exception v0

    const/4 v9, 0x0

    const/4 v14, 0x0

    .line 98
    .local v0, "ignored":Ljava/io/IOException;
    nop

    .line 66
    .end local v0    # "ignored":Ljava/io/IOException;
    .end local v13    # "jniNameInApk":Ljava/lang/String;
    .end local v15    # "libraryEntry":Ljava/util/zip/ZipEntry;
    :goto_10c
    move-object v6, v9

    move v0, v10

    const/4 v11, 0x5

    goto/16 :goto_3a

    .line 130
    :cond_111
    const-string v0, "FATAL! Couldn\'t extract the library from the APK!"

    invoke-virtual {v5, v0}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->log(Ljava/lang/String;)V
    :try_end_116
    .catchall {:try_start_f2 .. :try_end_116} :catchall_120

    .line 133
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "tries":I
    if-eqz v7, :cond_11e

    .line 134
    :try_start_118
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_11b} :catch_11c

    goto :goto_11e

    .line 136
    :catch_11c
    move-exception v0

    .line 137
    goto :goto_11f

    .line 136
    :cond_11e
    :goto_11e
    nop

    .line 138
    :goto_11f
    return-void

    .line 132
    :catchall_120
    move-exception v0

    move-object v6, v0

    .line 133
    if-eqz v7, :cond_12a

    .line 134
    :try_start_124
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_127} :catch_128

    goto :goto_12a

    .line 136
    :catch_128
    move-exception v0

    nop

    :cond_12a
    :goto_12a
    throw v6
.end method
