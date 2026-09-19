###### Class com.google.android.gms.measurement.internal.zzdu (com.google.android.gms.measurement.internal.zzdu)
.class public final Lcom/google/android/gms/measurement/internal/zzdu;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 24
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_2a

    .line 25
    aget-object v3, p1, v2

    .line 26
    if-nez p0, :cond_19

    if-nez v3, :cond_19

    .line 27
    nop

    .line 31
    const/4 v3, 0x1

    goto :goto_22

    .line 28
    :cond_19
    if-nez p0, :cond_1e

    .line 29
    nop

    .line 31
    const/4 v3, 0x0

    goto :goto_22

    .line 30
    :cond_1e
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 31
    :goto_22
    if-eqz v3, :cond_27

    .line 32
    aget-object p0, p2, v2

    return-object p0

    .line 33
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 34
    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zze(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 2
    return-object v0

    .line 3
    :cond_4
    nop

    .line 4
    nop

    .line 5
    :try_start_6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_34

    .line 7
    :try_start_10
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 9
    new-instance p0, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 10
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_31

    .line 11
    :try_start_24
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_2f

    .line 12
    :try_start_28
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 13
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    .line 14
    return-object v1

    .line 15
    :catchall_2f
    move-exception v1

    goto :goto_37

    :catchall_31
    move-exception v1

    move-object p0, v0

    goto :goto_37

    :catchall_34
    move-exception v1

    move-object p0, v0

    move-object v2, p0

    :goto_37
    if-eqz v2, :cond_3f

    .line 16
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_3f

    .line 19
    :catch_3d
    move-exception p0

    goto :goto_45

    .line 17
    :cond_3f
    :goto_3f
    if-eqz p0, :cond_44

    .line 18
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    :cond_44
    throw v1
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_45} :catch_3d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_28 .. :try_end_45} :catch_3d

    .line 19
    :goto_45
    nop

    .line 20
    return-object v0
.end method
