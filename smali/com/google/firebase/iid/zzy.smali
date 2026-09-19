###### Class com.google.firebase.iid.zzy (com.google.firebase.iid.zzy)
.class final Lcom/google/firebase/iid/zzy;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzz;Z)Lcom/google/firebase/iid/zzz;
    .registers 13
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 67
    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 68
    const-string v0, "FirebaseInstanceId"

    const-string v2, "Writing key to properties file"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_10
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 70
    const-string v2, "pub"

    invoke-static {p3}, Lcom/google/firebase/iid/zzz;->zza(Lcom/google/firebase/iid/zzz;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    const-string v2, "pri"

    invoke-static {p3}, Lcom/google/firebase/iid/zzz;->zzb(Lcom/google/firebase/iid/zzz;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    const-string v2, "cre"

    invoke-static {p3}, Lcom/google/firebase/iid/zzz;->zzc(Lcom/google/firebase/iid/zzz;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    invoke-static {p1, p2}, Lcom/google/firebase/iid/zzy;->zzf(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 74
    const/4 p2, 0x0

    :try_start_39
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 75
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_43} :catch_c4

    .line 76
    :try_start_43
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_47} :catch_ba
    .catchall {:try_start_43 .. :try_end_47} :catchall_b7

    .line 77
    nop

    .line 78
    :try_start_48
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    .line 79
    const-wide/16 v3, 0x0

    if-eqz p4, :cond_94

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_53} :catch_ab
    .catchall {:try_start_48 .. :try_end_53} :catchall_a8

    cmp-long p4, v5, v3

    if-lez p4, :cond_94

    .line 80
    :try_start_57
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 81
    invoke-static {p1}, Lcom/google/firebase/iid/zzy;->zza(Ljava/nio/channels/FileChannel;)Lcom/google/firebase/iid/zzz;

    move-result-object p4
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5e} :catch_67
    .catch Lcom/google/firebase/iid/zzaa; {:try_start_57 .. :try_end_5e} :catch_67
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5e} :catch_ab
    .catchall {:try_start_57 .. :try_end_5e} :catchall_a8

    .line 82
    if-eqz p1, :cond_63

    :try_start_60
    invoke-static {p2, p1}, Lcom/google/firebase/iid/zzy;->zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_63} :catch_ba
    .catchall {:try_start_60 .. :try_end_63} :catchall_b7

    :cond_63
    :try_start_63
    invoke-static {p2, v2}, Lcom/google/firebase/iid/zzy;->zza(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_c4

    .line 83
    return-object p4

    .line 84
    :catch_67
    move-exception p4

    .line 85
    :try_start_68
    const-string v5, "FirebaseInstanceId"

    invoke-static {v5, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 86
    const-string v1, "FirebaseInstanceId"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x40

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Tried reading key pair before writing new one, but failed with: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_94
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 88
    invoke-static {p1}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object p4

    invoke-virtual {v0, p4, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_9e} :catch_ab
    .catchall {:try_start_68 .. :try_end_9e} :catchall_a8

    .line 89
    nop

    .line 90
    if-eqz p1, :cond_a4

    :try_start_a1
    invoke-static {p2, p1}, Lcom/google/firebase/iid/zzy;->zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_a4} :catch_ba
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_b7

    :cond_a4
    :try_start_a4
    invoke-static {p2, v2}, Lcom/google/firebase/iid/zzy;->zza(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_c4

    .line 91
    return-object p3

    .line 93
    :catchall_a8
    move-exception p3

    move-object p4, p2

    goto :goto_b1

    .line 92
    :catch_ab
    move-exception p3

    :try_start_ac
    throw p3
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ad

    .line 93
    :catchall_ad
    move-exception p4

    move-object v7, p4

    move-object p4, p3

    move-object p3, v7

    :goto_b1
    if-eqz p1, :cond_b6

    :try_start_b3
    invoke-static {p4, p1}, Lcom/google/firebase/iid/zzy;->zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V

    :cond_b6
    throw p3
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_b7} :catch_ba
    .catchall {:try_start_b3 .. :try_end_b7} :catchall_b7

    .line 95
    :catchall_b7
    move-exception p1

    move-object p3, p2

    goto :goto_c0

    .line 94
    :catch_ba
    move-exception p1

    :try_start_bb
    throw p1
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_bc

    .line 95
    :catchall_bc
    move-exception p3

    move-object v7, p3

    move-object p3, p1

    move-object p1, v7

    :goto_c0
    :try_start_c0
    invoke-static {p3, v2}, Lcom/google/firebase/iid/zzy;->zza(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)V

    throw p1
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c4} :catch_c4

    .line 96
    :catch_c4
    move-exception p1

    .line 97
    const-string p3, "FirebaseInstanceId"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/lit8 p4, p4, 0x15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Failed to write key: "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-object p2
.end method

.method private static zza(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/google/firebase/iid/zzz;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/iid/zzaa;
        }
    .end annotation

    .line 137
    const-string/jumbo v0, "|P|"

    .line 138
    invoke-static {p1, v0}, Lcom/google/firebase/iid/zzaw;->zzd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    const-string/jumbo v2, "|K|"

    .line 141
    invoke-static {p1, v2}, Lcom/google/firebase/iid/zzaw;->zzd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    if-eqz v0, :cond_2a

    if-nez v2, :cond_1c

    goto :goto_2a

    .line 145
    :cond_1c
    invoke-static {v0, v2}, Lcom/google/firebase/iid/zzy;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    .line 146
    invoke-static {p0, p1}, Lcom/google/firebase/iid/zzy;->zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)J

    move-result-wide p0

    .line 147
    new-instance v1, Lcom/google/firebase/iid/zzz;

    invoke-direct {v1, v0, p0, p1}, Lcom/google/firebase/iid/zzz;-><init>(Ljava/security/KeyPair;J)V

    return-object v1

    .line 144
    :cond_2a
    :goto_2a
    return-object v1
.end method

.method private final zza(Ljava/io/File;)Lcom/google/firebase/iid/zzz;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/iid/zzaa;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 115
    const/4 p1, 0x0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_a} :catch_35
    .catchall {:try_start_6 .. :try_end_a} :catchall_33

    .line 116
    nop

    .line 117
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x1

    move-object v1, v7

    :try_start_14
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    .line 118
    invoke-static {v7}, Lcom/google/firebase/iid/zzy;->zza(Ljava/nio/channels/FileChannel;)Lcom/google/firebase/iid/zzz;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1b} :catch_27
    .catchall {:try_start_14 .. :try_end_1b} :catchall_24

    .line 119
    if-eqz v7, :cond_20

    :try_start_1d
    invoke-static {p1, v7}, Lcom/google/firebase/iid/zzy;->zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_35
    .catchall {:try_start_1d .. :try_end_20} :catchall_33

    :cond_20
    invoke-static {p1, v0}, Lcom/google/firebase/iid/zzy;->zza(Ljava/lang/Throwable;Ljava/io/FileInputStream;)V

    .line 120
    return-object v1

    .line 122
    :catchall_24
    move-exception v1

    move-object v2, p1

    goto :goto_2d

    .line 121
    :catch_27
    move-exception v1

    :try_start_28
    throw v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    .line 122
    :catchall_29
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_2d
    if-eqz v7, :cond_32

    :try_start_2f
    invoke-static {v2, v7}, Lcom/google/firebase/iid/zzy;->zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V

    :cond_32
    throw v1
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_33} :catch_35
    .catchall {:try_start_2f .. :try_end_33} :catchall_33

    .line 124
    :catchall_33
    move-exception v1

    goto :goto_37

    .line 123
    :catch_35
    move-exception p1

    :try_start_36
    throw p1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_33

    .line 124
    :goto_37
    invoke-static {p1, v0}, Lcom/google/firebase/iid/zzy;->zza(Ljava/lang/Throwable;Ljava/io/FileInputStream;)V

    throw v1
.end method

.method private static zza(Ljava/nio/channels/FileChannel;)Lcom/google/firebase/iid/zzz;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/iid/zzaa;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 126
    invoke-static {p0}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 127
    const-string p0, "pub"

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 128
    const-string v1, "pri"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    if-eqz p0, :cond_38

    if-eqz v1, :cond_38

    .line 131
    invoke-static {p0, v1}, Lcom/google/firebase/iid/zzy;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object p0

    .line 132
    :try_start_20
    const-string v1, "cre"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_2a} :catch_31

    .line 133
    nop

    .line 136
    new-instance v2, Lcom/google/firebase/iid/zzz;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/firebase/iid/zzz;-><init>(Ljava/security/KeyPair;J)V

    return-object v2

    .line 134
    :catch_31
    move-exception p0

    .line 135
    new-instance v0, Lcom/google/firebase/iid/zzaa;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/zzaa;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 130
    :cond_38
    new-instance p0, Lcom/google/firebase/iid/zzaa;

    const-string v0, "Invalid properties file"

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/zzaa;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zza(Landroid/content/Context;)V
    .registers 6

    .line 18
    invoke-static {p0}, Lcom/google/firebase/iid/zzy;->zzb(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_20

    aget-object v2, p0, v1

    .line 20
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.InstanceId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 21
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 22
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 23
    :cond_20
    return-void
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzz;)V
    .registers 6

    .line 148
    const-string v0, "com.google.android.gms.appid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 149
    :try_start_7
    invoke-static {p1, p2}, Lcom/google/firebase/iid/zzy;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/google/firebase/iid/zzz;

    move-result-object v0

    .line 150
    invoke-virtual {p3, v0}, Lcom/google/firebase/iid/zzz;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_f
    .catch Lcom/google/firebase/iid/zzaa; {:try_start_7 .. :try_end_f} :catch_13

    if-eqz v0, :cond_12

    .line 151
    return-void

    .line 152
    :cond_12
    goto :goto_14

    .line 153
    :catch_13
    move-exception v0

    .line 154
    :goto_14
    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 155
    const-string v0, "FirebaseInstanceId"

    const-string v1, "Writing key to shared preferences"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_24
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 157
    const-string/jumbo v0, "|P|"

    .line 158
    invoke-static {p2, v0}, Lcom/google/firebase/iid/zzaw;->zzd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/google/firebase/iid/zzz;->zza(Lcom/google/firebase/iid/zzz;)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    const-string/jumbo v0, "|K|"

    .line 161
    invoke-static {p2, v0}, Lcom/google/firebase/iid/zzaw;->zzd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/google/firebase/iid/zzz;->zzb(Lcom/google/firebase/iid/zzz;)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 163
    const-string v0, "cre"

    .line 164
    invoke-static {p2, v0}, Lcom/google/firebase/iid/zzaw;->zzd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 165
    invoke-static {p3}, Lcom/google/firebase/iid/zzz;->zzc(Lcom/google/firebase/iid/zzz;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .line 166
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    return-void
.end method

.method private static synthetic zza(Ljava/lang/Throwable;Ljava/io/FileInputStream;)V
    .registers 2

    .line 178
    if-eqz p0, :cond_b

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzc;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method private static synthetic zza(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)V
    .registers 2

    .line 177
    if-eqz p0, :cond_b

    :try_start_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzc;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method private static synthetic zza(Ljava/lang/Throwable;Ljava/nio/channels/FileChannel;)V
    .registers 2

    .line 176
    if-eqz p0, :cond_b

    :try_start_2
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzc;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method private static zzb(Landroid/content/SharedPreferences;Ljava/lang/String;)J
    .registers 3

    .line 169
    const-string v0, "cre"

    .line 170
    invoke-static {p1, v0}, Lcom/google/firebase/iid/zzaw;->zzd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 171
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 172
    if-eqz p0, :cond_13

    .line 173
    :try_start_d
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_11} :catch_12

    return-wide p0

    .line 174
    :catch_12
    move-exception p0

    .line 175
    :cond_13
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static zzb(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .line 99
    invoke-static {p0}, Landroid/support/v4/content/ContextCompat;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 101
    return-object v0

    .line 102
    :cond_d
    const-string v0, "FirebaseInstanceId"

    const-string v1, "noBackupFilesDir doesn\'t exist, using regular files directory instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/iid/zzaa;
        }
    .end annotation

    .line 44
    const/16 v0, 0x8

    :try_start_2
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 45
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_a} :catch_54

    .line 46
    nop

    .line 49
    :try_start_b
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    .line 51
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    .line 52
    new-instance v0, Ljava/security/KeyPair;

    invoke-direct {v0, p0, p1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_28
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_b .. :try_end_28} :catch_29
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_28} :catch_29

    return-object v0

    .line 53
    :catch_29
    move-exception p0

    .line 54
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid key stored "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance p1, Lcom/google/firebase/iid/zzaa;

    invoke-direct {p1, p0}, Lcom/google/firebase/iid/zzaa;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 47
    :catch_54
    move-exception p0

    .line 48
    new-instance p1, Lcom/google/firebase/iid/zzaa;

    invoke-direct {p1, p0}, Lcom/google/firebase/iid/zzaa;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method private final zzd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzz;
    .registers 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/iid/zzaa;
        }
    .end annotation

    .line 24
    nop

    .line 25
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/zzy;->zze(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzz;

    move-result-object v1

    .line 26
    if-eqz v1, :cond_c

    .line 27
    invoke-direct {p0, p1, p2, v1}, Lcom/google/firebase/iid/zzy;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzz;)V
    :try_end_b
    .catch Lcom/google/firebase/iid/zzaa; {:try_start_2 .. :try_end_b} :catch_f

    .line 28
    return-object v1

    .line 29
    :cond_c
    nop

    .line 31
    move-object v1, v0

    goto :goto_10

    .line 30
    :catch_f
    move-exception v1

    .line 31
    :goto_10
    nop

    .line 32
    :try_start_11
    const-string v2, "com.google.android.gms.appid"

    .line 33
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 34
    invoke-static {v2, p2}, Lcom/google/firebase/iid/zzy;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/google/firebase/iid/zzz;

    move-result-object v2

    .line 35
    nop

    .line 36
    if-eqz v2, :cond_23

    .line 37
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/google/firebase/iid/zzy;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzz;Z)Lcom/google/firebase/iid/zzz;
    :try_end_22
    .catch Lcom/google/firebase/iid/zzaa; {:try_start_11 .. :try_end_22} :catch_24

    .line 38
    return-object v2

    .line 39
    :cond_23
    goto :goto_26

    .line 40
    :catch_24
    move-exception p1

    move-object v1, p1

    .line 41
    :goto_26
    if-nez v1, :cond_29

    .line 43
    return-object v0

    .line 42
    :cond_29
    throw v1
.end method

.method private final zze(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzz;
    .registers 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/iid/zzaa;
        }
    .end annotation

    .line 56
    invoke-static {p1, p2}, Lcom/google/firebase/iid/zzy;->zzf(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_c

    .line 58
    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_c
    :try_start_c
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzy;->zza(Ljava/io/File;)Lcom/google/firebase/iid/zzz;

    move-result-object p2
    :try_end_10
    .catch Lcom/google/firebase/iid/zzaa; {:try_start_c .. :try_end_10} :catch_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_11

    return-object p2

    .line 60
    :catch_11
    move-exception p2

    .line 61
    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 62
    const-string v0, "FirebaseInstanceId"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to read key from file, retrying: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_3f
    :try_start_3f
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzy;->zza(Ljava/io/File;)Lcom/google/firebase/iid/zzz;

    move-result-object p1
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_43} :catch_44

    return-object p1

    .line 64
    :catch_44
    move-exception p1

    .line 65
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "IID file exists, but failed to read from it: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance p2, Lcom/google/firebase/iid/zzaa;

    invoke-direct {p2, p1}, Lcom/google/firebase/iid/zzaa;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method private static zzf(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 105
    const-string p1, "com.google.InstanceId.properties"

    goto :goto_36

    .line 106
    :cond_9
    :try_start_9
    const-string v0, "UTF-8"

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 108
    const/16 v0, 0xb

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "com.google.InstanceId_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".properties"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_35
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_35} :catch_40

    .line 110
    nop

    .line 113
    :goto_36
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/google/firebase/iid/zzy;->zzb(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 111
    :catch_40
    move-exception p0

    .line 112
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method final zzb(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzz;
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/iid/zzaa;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/zzy;->zzd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzz;

    move-result-object v0

    .line 3
    if-eqz v0, :cond_7

    .line 4
    return-object v0

    .line 5
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/iid/zzy;->zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzz;

    move-result-object p1

    return-object p1
.end method

.method final zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzz;
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 6
    new-instance v0, Lcom/google/firebase/iid/zzz;

    .line 7
    invoke-static {}, Lcom/google/firebase/iid/zza;->zzb()Ljava/security/KeyPair;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/iid/zzz;-><init>(Ljava/security/KeyPair;J)V

    .line 8
    nop

    .line 9
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/firebase/iid/zzy;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzz;Z)Lcom/google/firebase/iid/zzz;

    move-result-object v1

    .line 10
    const/4 v2, 0x3

    if-eqz v1, :cond_2c

    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/zzz;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 11
    const-string p1, "FirebaseInstanceId"

    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 12
    const-string p1, "FirebaseInstanceId"

    const-string p2, "Loaded key after generating new one, using loaded one"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_2b
    return-object v1

    .line 14
    :cond_2c
    const-string v1, "FirebaseInstanceId"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 15
    const-string v1, "FirebaseInstanceId"

    const-string v2, "Generated new key"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_3b
    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/iid/zzy;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/iid/zzz;)V

    .line 17
    return-object v0
.end method
