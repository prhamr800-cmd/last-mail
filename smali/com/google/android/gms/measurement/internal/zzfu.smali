###### Class com.google.android.gms.measurement.internal.zzfu (com.google.android.gms.measurement.internal.zzfu)
.class public final Lcom/google/android/gms/measurement/internal/zzfu;
.super Lcom/google/android/gms/measurement/internal/zzcq;


# static fields
.field private static final zzavb:[Ljava/lang/String;


# instance fields
.field private zzaed:I

.field private zzavc:Ljava/security/SecureRandom;

.field private final zzavd:Ljava/util/concurrent/atomic/AtomicLong;

.field private zzave:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 617
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "firebase_"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "google_"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ga_"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzfu;->zzavb:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbu;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzcq;-><init>(Lcom/google/android/gms/measurement/internal/zzbu;)V

    .line 2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzave:Ljava/lang/Integer;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzavd:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    return-void
.end method

.method static getMessageDigest()Ljava/security/MessageDigest;
    .registers 2

    .line 434
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_12

    .line 435
    :try_start_4
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_a} :catch_e

    .line 436
    if-eqz v1, :cond_d

    .line 437
    return-object v1

    .line 438
    :cond_d
    goto :goto_f

    .line 439
    :catch_e
    move-exception v1

    .line 440
    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 441
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zza(ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 5

    .line 247
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 248
    return-object v0

    .line 249
    :cond_4
    instance-of v1, p1, Ljava/lang/Long;

    if-nez v1, :cond_79

    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_d

    goto :goto_79

    .line 251
    :cond_d
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1d

    .line 252
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 253
    :cond_1d
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_2d

    .line 254
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 255
    :cond_2d
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_3d

    .line 256
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 257
    :cond_3d
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_53

    .line 258
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4c

    const-wide/16 p0, 0x1

    goto :goto_4e

    :cond_4c
    const-wide/16 p0, 0x0

    :goto_4e
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 259
    :cond_53
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_62

    .line 260
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 261
    :cond_62
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_70

    instance-of v1, p1, Ljava/lang/Character;

    if-nez v1, :cond_70

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_6f

    goto :goto_70

    .line 264
    :cond_6f
    return-object v0

    .line 262
    :cond_70
    :goto_70
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 263
    invoke-static {p1, p0, p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 250
    :cond_79
    :goto_79
    return-object p1
.end method

.method public static zza(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 5

    .line 265
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    if-le v0, p1, :cond_22

    .line 266
    if-eqz p2, :cond_20

    .line 267
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 268
    :cond_20
    const/4 p0, 0x0

    return-object p0

    .line 269
    :cond_22
    return-object p0
.end method

.method private static zza(Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 5

    .line 382
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    if-eqz p1, :cond_1b

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_d

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1b

    .line 384
    :cond_d
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 385
    const-string v0, "_el"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 386
    :cond_1b
    return-void
.end method

.method static zza(Landroid/content/Context;Z)Z
    .registers 3

    .line 452
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_10

    .line 454
    const-string p1, "com.google.android.gms.measurement.AppMeasurementJobService"

    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 455
    :cond_10
    const-string p1, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static zza(Landroid/os/Bundle;I)Z
    .registers 7

    .line 377
    const-string v0, "_err"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 378
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    .line 379
    const-string v0, "_err"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 380
    const/4 p0, 0x1

    return p0

    .line 381
    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Z)Z
    .registers 9

    .line 173
    const/4 v0, 0x1

    if-nez p4, :cond_4

    .line 174
    return v0

    .line 175
    :cond_4
    instance-of v1, p4, Ljava/lang/Long;

    if-nez v1, :cond_b2

    instance-of v1, p4, Ljava/lang/Float;

    if-nez v1, :cond_b2

    instance-of v1, p4, Ljava/lang/Integer;

    if-nez v1, :cond_b2

    instance-of v1, p4, Ljava/lang/Byte;

    if-nez v1, :cond_b2

    instance-of v1, p4, Ljava/lang/Short;

    if-nez v1, :cond_b2

    instance-of v1, p4, Ljava/lang/Boolean;

    if-nez v1, :cond_b2

    instance-of v1, p4, Ljava/lang/Double;

    if-eqz v1, :cond_22

    goto/16 :goto_b2

    .line 177
    :cond_22
    instance-of v1, p4, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_8d

    instance-of v1, p4, Ljava/lang/Character;

    if-nez v1, :cond_8d

    instance-of v1, p4, Ljava/lang/CharSequence;

    if-eqz v1, :cond_30

    goto :goto_8d

    .line 186
    :cond_30
    instance-of p1, p4, Landroid/os/Bundle;

    if-eqz p1, :cond_37

    if-eqz p5, :cond_37

    .line 187
    return v0

    .line 188
    :cond_37
    instance-of p1, p4, [Landroid/os/Parcelable;

    if-eqz p1, :cond_5f

    if-eqz p5, :cond_5f

    .line 189
    check-cast p4, [Landroid/os/Parcelable;

    .line 190
    array-length p1, p4

    const/4 p3, 0x0

    :goto_41
    if-ge p3, p1, :cond_5e

    aget-object p5, p4, p3

    .line 191
    instance-of v1, p5, Landroid/os/Bundle;

    if-nez v1, :cond_5b

    .line 192
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p3, "All Parcelable[] elements must be of type Bundle. Value type, name"

    .line 194
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    .line 195
    invoke-virtual {p1, p3, p4, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    return v2

    .line 197
    :cond_5b
    add-int/lit8 p3, p3, 0x1

    goto :goto_41

    .line 198
    :cond_5e
    return v0

    .line 199
    :cond_5f
    instance-of p1, p4, Ljava/util/ArrayList;

    if-eqz p1, :cond_8c

    if-eqz p5, :cond_8c

    .line 200
    check-cast p4, Ljava/util/ArrayList;

    .line 201
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_6c
    if-ge p3, p1, :cond_8b

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    add-int/lit8 p3, p3, 0x1

    .line 202
    instance-of v1, p5, Landroid/os/Bundle;

    if-nez v1, :cond_8a

    .line 203
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p3, "All ArrayList elements must be of type Bundle. Value type, name"

    .line 205
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    .line 206
    invoke-virtual {p1, p3, p4, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    return v2

    .line 208
    :cond_8a
    goto :goto_6c

    .line 209
    :cond_8b
    return v0

    .line 210
    :cond_8c
    return v2

    .line 178
    :cond_8d
    :goto_8d
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 179
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    invoke-virtual {p4, v2, p5}, Ljava/lang/String;->codePointCount(II)I

    move-result p5

    if-le p5, p3, :cond_b1

    .line 180
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    .line 181
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    const-string p5, "Value is too long; discarded. Value kind, name, value length"

    .line 182
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 183
    invoke-virtual {p3, p5, p1, p2, p4}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    return v2

    .line 185
    :cond_b1
    return v0

    .line 176
    :cond_b2
    :goto_b2
    return v0
.end method

.method static zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 231
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 233
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_16

    if-nez v1, :cond_16

    .line 234
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    return v2

    :cond_15
    return v3

    .line 235
    :cond_16
    if-eqz v0, :cond_36

    if-eqz v1, :cond_36

    .line 236
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2e

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2e

    .line 237
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v2

    :cond_2d
    return v3

    .line 238
    :cond_2e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_35

    return v2

    :cond_35
    return v3

    .line 239
    :cond_36
    if-nez v0, :cond_50

    if-eqz v1, :cond_50

    .line 240
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_41

    .line 241
    return v3

    .line 242
    :cond_41
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4f

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    goto :goto_4f

    :cond_4e
    return v3

    :cond_4f
    :goto_4f
    return v2

    .line 243
    :cond_50
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5e

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5d

    goto :goto_5e

    :cond_5d
    return v3

    :cond_5e
    :goto_5e
    return v2
.end method

.method static zza(Landroid/os/Parcelable;)[B
    .registers 3

    .line 553
    if-nez p0, :cond_4

    .line 554
    const/4 p0, 0x0

    return-object p0

    .line 555
    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 556
    const/4 v1, 0x0

    :try_start_9
    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 557
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_14

    .line 558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 559
    return-object p0

    .line 560
    :catchall_14
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static zzc(JJ)J
    .registers 6

    .line 587
    const-wide/32 v0, 0xea60

    mul-long p2, p2, v0

    add-long/2addr p0, p2

    const-wide/32 p2, 0x5265c00

    div-long/2addr p0, p2

    return-wide p0
.end method

.method static zzc([B)J
    .registers 10
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 442
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 444
    const-wide/16 v3, 0x0

    .line 445
    nop

    .line 446
    array-length v0, p0

    sub-int/2addr v0, v2

    .line 447
    :goto_13
    if-ltz v0, :cond_27

    array-length v2, p0

    add-int/lit8 v2, v2, -0x8

    if-lt v0, v2, :cond_27

    .line 448
    aget-byte v2, p0, v0

    int-to-long v5, v2

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    shl-long/2addr v5, v1

    add-long/2addr v3, v5

    .line 449
    add-int/lit8 v1, v1, 0x8

    .line 450
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 451
    :cond_27
    return-wide v3
.end method

.method private static zzc(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 456
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 457
    if-nez v1, :cond_8

    .line 458
    return v0

    .line 459
    :cond_8
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    .line 460
    if-eqz p0, :cond_19

    iget-boolean p0, p0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_15} :catch_1a

    if-eqz p0, :cond_19

    .line 461
    const/4 p0, 0x1

    return p0

    .line 462
    :cond_19
    goto :goto_1b

    .line 463
    :catch_1a
    move-exception p0

    .line 464
    :goto_1b
    return v0
.end method

.method static zzcv(Ljava/lang/String;)Z
    .registers 4

    .line 29
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_16

    const-string v1, "_ep"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    return v0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

.method private static zzcy(Ljava/lang/String;)Z
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 244
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v0, "^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$"

    .line 246
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static zzcz(Ljava/lang/String;)I
    .registers 2

    .line 387
    const-string v0, "_ldl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 388
    const/16 p0, 0x800

    return p0

    .line 389
    :cond_b
    const-string v0, "_id"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 390
    const/16 p0, 0x100

    return p0

    .line 391
    :cond_16
    const/16 p0, 0x24

    return p0
.end method

.method static zzd(Landroid/content/Intent;)Z
    .registers 2

    .line 76
    const-string v0, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 77
    const-string v0, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "https://www.google.com"

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "android-app://com.google.appcrawler"

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    .line 81
    return p0

    .line 80
    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method static zzda(Ljava/lang/String;)Z
    .registers 2

    .line 471
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private final zze(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 536
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 537
    nop

    .line 538
    :try_start_8
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    const/16 v1, 0x40

    .line 539
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 540
    if-eqz p1, :cond_40

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_40

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-lez p2, :cond_40

    .line 541
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    .line 542
    const-string p2, "X.509"

    invoke-static {p2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p2

    .line 543
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 544
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 545
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_3f
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_3f} :catch_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_3f} :catch_41

    return p1

    .line 546
    :cond_40
    goto :goto_5f

    .line 550
    :catch_41
    move-exception p1

    .line 551
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v0, "Package name not found"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5f

    .line 547
    :catch_50
    move-exception p1

    .line 548
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v0, "Error obtaining certificate"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 549
    nop

    .line 552
    :goto_5f
    const/4 p1, 0x1

    return p1
.end method

.method public static zzf(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 561
    if-nez p0, :cond_8

    .line 562
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    .line 563
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 564
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 565
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 566
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 567
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_34

    .line 568
    new-instance v3, Landroid/os/Bundle;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_15

    .line 569
    :cond_34
    instance-of v1, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    if-eqz v1, :cond_53

    .line 570
    check-cast v2, [Landroid/os/Parcelable;

    .line 571
    :goto_3b
    array-length v1, v2

    if-ge v3, v1, :cond_52

    .line 572
    aget-object v1, v2, v3

    instance-of v1, v1, Landroid/os/Bundle;

    if-eqz v1, :cond_4f

    .line 573
    new-instance v1, Landroid/os/Bundle;

    aget-object v4, v2, v3

    check-cast v4, Landroid/os/Bundle;

    invoke-direct {v1, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v1, v2, v3

    .line 574
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 575
    :cond_52
    goto :goto_15

    :cond_53
    instance-of v1, v2, Ljava/util/List;

    if-eqz v1, :cond_74

    .line 576
    check-cast v2, Ljava/util/List;

    .line 577
    :goto_59
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_74

    .line 578
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 579
    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_71

    .line 580
    new-instance v4, Landroid/os/Bundle;

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 582
    :cond_74
    goto :goto_15

    .line 583
    :cond_75
    return-object v0
.end method

.method static zzf(Ljava/lang/Object;)[Landroid/os/Bundle;
    .registers 3

    .line 278
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_d

    .line 279
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v1, 0x0

    check-cast p0, Landroid/os/Bundle;

    aput-object p0, v0, v1

    return-object v0

    .line 280
    :cond_d
    instance-of v0, p0, [Landroid/os/Parcelable;

    if-eqz v0, :cond_1d

    .line 281
    check-cast p0, [Landroid/os/Parcelable;

    array-length v0, p0

    const-class v1, [Landroid/os/Bundle;

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0

    .line 282
    :cond_1d
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_30

    .line 283
    check-cast p0, Ljava/util/ArrayList;

    .line 284
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0

    .line 285
    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method

.method private final zzt(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 103
    const/4 v0, 0x0

    if-nez p2, :cond_11

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v1, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    return v0

    .line 106
    :cond_11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_25

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v1, "Name is required and can\'t be empty. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    return v0

    .line 109
    :cond_25
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 110
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    const/16 v3, 0x5f

    if-nez v2, :cond_41

    if-eq v1, v3, :cond_41

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Name must start with a letter or _ (underscore). Type, name"

    .line 113
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    return v0

    .line 115
    :cond_41
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 116
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_49
    if-ge v1, v2, :cond_6b

    .line 117
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 118
    if-eq v4, v3, :cond_65

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v5

    if-nez v5, :cond_65

    .line 119
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    .line 121
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    return v0

    .line 123
    :cond_65
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 124
    goto :goto_49

    .line 125
    :cond_6b
    const/4 p1, 0x1

    return p1
.end method

.method static zzv(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 472
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 473
    const/4 p0, 0x1

    return p0

    .line 474
    :cond_6
    if-nez p0, :cond_a

    .line 475
    const/4 p0, 0x0

    return p0

    .line 476
    :cond_a
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    .line 609
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza(Landroid/net/Uri;)Landroid/os/Bundle;
    .registers 8
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 32
    return-object v0

    .line 33
    :cond_4
    nop

    .line 34
    nop

    .line 35
    nop

    .line 36
    nop

    .line 37
    :try_start_8
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 38
    const-string/jumbo v1, "utm_campaign"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    const-string/jumbo v2, "utm_source"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    const-string/jumbo v3, "utm_medium"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    const-string v4, "gclid"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_29
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_29} :catch_d2

    goto :goto_2e

    .line 42
    :cond_2a
    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    .line 46
    :goto_2e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 48
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 49
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_47

    goto :goto_48

    .line 75
    :cond_47
    return-object v0

    .line 50
    :cond_48
    :goto_48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_58

    .line 52
    const-string v5, "campaign"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_58
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 54
    const-string v1, "source"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_63
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 56
    const-string v1, "medium"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_6e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 58
    const-string v1, "gclid"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_79
    const-string/jumbo v1, "utm_term"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8c

    .line 61
    const-string/jumbo v2, "term"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_8c
    const-string/jumbo v1, "utm_content"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9e

    .line 64
    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_9e
    const-string v1, "aclid"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_af

    .line 67
    const-string v2, "aclid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_af
    const-string v1, "cp1"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c0

    .line 70
    const-string v2, "cp1"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_c0
    const-string v1, "anid"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d1

    .line 73
    const-string v1, "anid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_d1
    return-object v0

    .line 43
    :catch_d2
    move-exception p1

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Install referrer url isn\'t a hierarchical URI"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    return-object v0
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;
    .registers 24
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 286
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 287
    const/4 v9, 0x0

    if-eqz v7, :cond_18c

    .line 288
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 289
    nop

    .line 290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_19
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 291
    nop

    .line 292
    const/16 v15, 0x28

    const/4 v0, 0x3

    if-eqz v8, :cond_35

    invoke-interface {v8, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_35

    .line 313
    :cond_33
    const/4 v1, 0x0

    goto :goto_82

    .line 293
    :cond_35
    :goto_35
    const/16 v1, 0xe

    if-eqz p5, :cond_5d

    .line 294
    nop

    .line 295
    const-string v2, "event param"

    invoke-virtual {v6, v2, v14}, Lcom/google/android/gms/measurement/internal/zzfu;->zzs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 296
    nop

    .line 302
    :goto_43
    const/4 v2, 0x3

    goto :goto_5c

    .line 297
    :cond_45
    const-string v2, "event param"

    invoke-virtual {v6, v2, v9, v14}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 298
    nop

    .line 302
    const/16 v2, 0xe

    goto :goto_5c

    .line 299
    :cond_51
    const-string v2, "event param"

    invoke-virtual {v6, v2, v15, v14}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 300
    goto :goto_43

    .line 301
    :cond_5a
    nop

    .line 302
    const/4 v2, 0x0

    :goto_5c
    goto :goto_5e

    .line 303
    :cond_5d
    const/4 v2, 0x0

    :goto_5e
    if-nez v2, :cond_81

    .line 304
    nop

    .line 305
    const-string v2, "event param"

    invoke-direct {v6, v2, v14}, Lcom/google/android/gms/measurement/internal/zzfu;->zzt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 306
    nop

    .line 312
    :goto_6a
    const/4 v1, 0x3

    goto :goto_80

    .line 307
    :cond_6c
    const-string v2, "event param"

    invoke-virtual {v6, v2, v9, v14}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_75

    .line 308
    goto :goto_80

    .line 309
    :cond_75
    const-string v1, "event param"

    invoke-virtual {v6, v1, v15, v14}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7e

    .line 310
    goto :goto_6a

    .line 311
    :cond_7e
    nop

    .line 312
    const/4 v1, 0x0

    :goto_80
    goto :goto_82

    .line 313
    :cond_81
    move v1, v2

    :goto_82
    const/4 v5, 0x1

    if-eqz v1, :cond_9f

    .line 314
    invoke-static {v10, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/os/Bundle;I)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 315
    nop

    .line 316
    invoke-static {v14, v15, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    .line 317
    const-string v3, "_ev"

    invoke-virtual {v10, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    if-ne v1, v0, :cond_9a

    .line 319
    invoke-static {v10, v14}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 320
    :cond_9a
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 321
    goto/16 :goto_145

    .line 322
    :cond_9f
    nop

    .line 323
    invoke-virtual {v7, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 324
    nop

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 326
    if-eqz p6, :cond_e3

    const-string v0, "param"

    .line 327
    nop

    .line 328
    nop

    .line 329
    instance-of v1, v4, [Landroid/os/Parcelable;

    if-eqz v1, :cond_b7

    .line 330
    move-object v1, v4

    check-cast v1, [Landroid/os/Parcelable;

    array-length v1, v1

    goto :goto_c2

    .line 331
    :cond_b7
    instance-of v1, v4, Ljava/util/ArrayList;

    if-eqz v1, :cond_db

    .line 332
    move-object v1, v4

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 334
    :goto_c2
    const/16 v2, 0x3e8

    if-le v1, v2, :cond_da

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 336
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Parameter array is too long; discarded. Value kind, name, array length"

    .line 337
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 338
    invoke-virtual {v2, v3, v0, v14, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    nop

    .line 341
    const/4 v0, 0x0

    goto :goto_dd

    .line 340
    :cond_da
    goto :goto_dc

    .line 333
    :cond_db
    nop

    .line 341
    :goto_dc
    const/4 v0, 0x1

    :goto_dd
    if-nez v0, :cond_e3

    .line 342
    const/16 v0, 0x11

    .line 353
    const/4 v9, 0x1

    goto :goto_11f

    .line 343
    :cond_e3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzo;->zzax(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 344
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzda(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_fb

    .line 345
    :cond_f5
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzfu;->zzda(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 346
    :cond_fb
    const-string v1, "param"

    .line 347
    const/16 v16, 0x100

    .line 348
    move-object/from16 v0, p0

    move-object v2, v14

    move/from16 v3, v16

    const/4 v9, 0x1

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Z)Z

    move-result v0

    goto :goto_11a

    .line 349
    :cond_10c
    const/4 v9, 0x1

    const-string v1, "param"

    .line 350
    const/16 v3, 0x64

    .line 351
    move-object/from16 v0, p0

    move-object v2, v14

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Z)Z

    move-result v0

    .line 352
    :goto_11a
    if-eqz v0, :cond_11e

    .line 353
    const/4 v0, 0x0

    goto :goto_11f

    .line 352
    :cond_11e
    const/4 v0, 0x4

    .line 353
    :goto_11f
    nop

    .line 354
    if-eqz v0, :cond_148

    const-string v1, "_ev"

    .line 355
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_148

    .line 356
    invoke-static {v10, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/os/Bundle;I)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 357
    nop

    .line 358
    invoke-static {v14, v15, v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 359
    const-string v1, "_ev"

    invoke-virtual {v10, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v7, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 361
    :cond_141
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 362
    nop

    .line 290
    :goto_145
    const/4 v9, 0x0

    goto/16 :goto_19

    .line 363
    :cond_148
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzfu;->zzcv(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 364
    add-int/lit8 v13, v13, 0x1

    .line 365
    const/16 v0, 0x19

    if-le v13, v0, :cond_189

    .line 366
    const/16 v0, 0x30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Event can\'t contain more than 25 params"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 368
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzao;->zzbv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzao;->zzd(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 371
    invoke-virtual {v1, v0, v2, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 372
    const/4 v0, 0x5

    invoke-static {v10, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/os/Bundle;I)Z

    .line 373
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 374
    goto :goto_145

    .line 375
    :cond_189
    move-object/from16 v3, p2

    goto :goto_145

    .line 376
    :cond_18c
    const/4 v10, 0x0

    :cond_18d
    return-object v10
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzae;
    .registers 16

    .line 495
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    if-eqz p7, :cond_8

    .line 496
    const/4 p1, 0x0

    return-object p1

    .line 497
    :cond_8
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzcw(Ljava/lang/String;)I

    move-result p7

    .line 498
    if-nez p7, :cond_44

    .line 504
    if-eqz p3, :cond_17

    new-instance p7, Landroid/os/Bundle;

    invoke-direct {p7, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 505
    :goto_15
    move-object v3, p7

    goto :goto_1d

    .line 504
    :cond_17
    new-instance p7, Landroid/os/Bundle;

    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    goto :goto_15

    .line 505
    :goto_1d
    const-string p3, "_o"

    invoke-virtual {v3, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string p3, "_o"

    .line 507
    invoke-static {p3}, Lcom/google/android/gms/common/util/CollectionUtils;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 508
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 509
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object p1

    .line 510
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zze(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 511
    new-instance p3, Lcom/google/android/gms/measurement/internal/zzae;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzab;

    invoke-direct {v2, p1}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Landroid/os/Bundle;)V

    move-object v0, p3

    move-object v1, p2

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzab;Ljava/lang/String;J)V

    return-object p3

    .line 499
    :cond_44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 500
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    .line 501
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 502
    const-string p3, "Invalid conditional property event name"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zza(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 11

    .line 422
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 423
    return-void
.end method

.method final zza(Landroid/os/Bundle;J)V
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 591
    const-string v0, "_et"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 592
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1d

    .line 593
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Params already contained engagement"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 594
    :cond_1d
    const-string v2, "_et"

    add-long/2addr p2, v0

    invoke-virtual {p1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 595
    return-void
.end method

.method final zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 403
    if-nez p1, :cond_3

    .line 404
    return-void

    .line 405
    :cond_3
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_11

    .line 406
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 407
    return-void

    .line 408
    :cond_11
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 409
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 410
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-void

    .line 412
    :cond_1d
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_2b

    .line 413
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 414
    return-void

    .line 415
    :cond_2b
    if-eqz p2, :cond_4e

    .line 416
    if-eqz p3, :cond_38

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    .line 417
    :goto_39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p3

    .line 418
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjl()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p3

    const-string v0, "Not putting event parameter. Invalid value type. name, type"

    .line 419
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 420
    invoke-virtual {p3, v0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 421
    :cond_4e
    return-void
.end method

.method final zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 424
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 425
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/os/Bundle;I)Z

    .line 426
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 427
    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_11
    const/4 p3, 0x6

    if-eq p2, p3, :cond_1a

    const/4 p3, 0x7

    if-eq p2, p3, :cond_1a

    const/4 p3, 0x2

    if-ne p2, p3, :cond_20

    .line 429
    :cond_1a
    const-string p2, "_el"

    int-to-long p3, p5

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 430
    :cond_20
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    .line 431
    nop

    .line 432
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgj()Lcom/google/android/gms/measurement/internal/zzcy;

    move-result-object p2

    const-string p3, "auto"

    const-string p4, "_err"

    invoke-virtual {p2, p3, p4, p1}, Lcom/google/android/gms/measurement/internal/zzcy;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 433
    return-void
.end method

.method final zza(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 7

    .line 150
    const/4 v0, 0x0

    if-nez p3, :cond_11

    .line 151
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string p3, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    return v0

    .line 153
    :cond_11
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p2, :cond_2d

    .line 154
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Name is too long. Type, maximum supported length, name"

    .line 156
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    return v0

    .line 158
    :cond_2d
    const/4 p1, 0x1

    return p1
.end method

.method final zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 126
    const/4 v0, 0x0

    if-nez p3, :cond_11

    .line 127
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string p3, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    return v0

    .line 129
    :cond_11
    nop

    .line 130
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzfu;->zzavb:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_19
    const/4 v4, 0x1

    if-ge v3, v2, :cond_2a

    aget-object v5, v1, v3

    .line 132
    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 133
    nop

    .line 136
    const/4 v1, 0x1

    goto :goto_2c

    .line 134
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 135
    :cond_2a
    nop

    .line 136
    const/4 v1, 0x0

    :goto_2c
    if-eqz v1, :cond_3c

    .line 137
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v1, "Name starts with reserved prefix. Type, name"

    invoke-virtual {p2, v1, p1, p3}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    return v0

    .line 139
    :cond_3c
    if-eqz p2, :cond_65

    .line 140
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    array-length v1, p2

    const/4 v2, 0x0

    :goto_43
    if-ge v2, v1, :cond_53

    aget-object v3, p2, v2

    .line 142
    invoke-static {p3, v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 143
    nop

    .line 146
    const/4 p2, 0x1

    goto :goto_55

    .line 144
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 145
    :cond_53
    nop

    .line 146
    const/4 p2, 0x0

    :goto_55
    if-eqz p2, :cond_65

    .line 147
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v1, "Name is reserved. Type, name"

    invoke-virtual {p2, v1, p1, p3}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    return v0

    .line 149
    :cond_65
    return v4
.end method

.method public final bridge synthetic zzaf()V
    .registers 1

    .line 606
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzaf()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzef;Ljava/lang/String;)V
    .registers 5

    .line 596
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 597
    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :try_start_a
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzef;->zzb(Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 599
    return-void

    .line 600
    :catch_e
    move-exception p1

    .line 601
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v0, "Error returning string value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 602
    return-void
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 608
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final zzcw(Ljava/lang/String;)I
    .registers 5

    .line 159
    const-string v0, "event"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_a

    .line 160
    return v1

    .line 161
    :cond_a
    const-string v0, "event"

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzcs;->zzard:[Ljava/lang/String;

    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 162
    const/16 p1, 0xd

    return p1

    .line 163
    :cond_17
    const-string v0, "event"

    const/16 v2, 0x28

    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 164
    return v1

    .line 165
    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method final zzcx(Ljava/lang/String;)I
    .registers 5

    .line 166
    const-string/jumbo v0, "user property"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x6

    if-nez v0, :cond_b

    .line 167
    return v1

    .line 168
    :cond_b
    const-string/jumbo v0, "user property"

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzcu;->zzarh:[Ljava/lang/String;

    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 169
    const/16 p1, 0xf

    return p1

    .line 170
    :cond_19
    const-string/jumbo v0, "user property"

    const/16 v2, 0x18

    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 171
    return v1

    .line 172
    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method final zzd(Landroid/content/Context;Ljava/lang/String;)J
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 512
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 513
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 515
    nop

    .line 516
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 517
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzfu;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    .line 518
    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    if-nez v1, :cond_26

    .line 519
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "Could not get MD5 instance"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 520
    goto :goto_7b

    .line 521
    :cond_26
    if-eqz v0, :cond_7a

    .line 522
    :try_start_28
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zze(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6a

    .line 523
    nop

    .line 524
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    .line 525
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x40

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 526
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_5c

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    if-lez p2, :cond_5c

    .line 527
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 528
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc([B)J

    move-result-wide v2

    .line 529
    goto :goto_7b

    .line 530
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "Could not get signatures"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V
    :try_end_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_69} :catch_6c

    .line 531
    goto :goto_6b

    .line 532
    :cond_6a
    move-wide v2, v4

    :goto_6b
    goto :goto_7b

    .line 533
    :catch_6c
    move-exception p1

    .line 534
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v0, "Package name not found"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 535
    :cond_7a
    move-wide v2, v4

    :goto_7b
    return-wide v2
.end method

.method final zzdb(Ljava/lang/String;)Z
    .registers 3

    .line 477
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 478
    const/4 p1, 0x0

    return p1

    .line 479
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzid()Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    .line 481
    nop

    .line 482
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final zze(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    .line 483
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 484
    if-eqz p1, :cond_3f

    .line 485
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 486
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 487
    if-nez v3, :cond_3b

    .line 488
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 489
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v4, "Param value can\'t be null"

    .line 490
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zzbw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 491
    goto :goto_f

    .line 492
    :cond_3b
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 493
    goto :goto_f

    .line 494
    :cond_3f
    return-object v0
.end method

.method public final bridge synthetic zzgf()V
    .registers 1

    .line 603
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgf()V

    return-void
.end method

.method public final bridge synthetic zzgg()V
    .registers 1

    .line 604
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgg()V

    return-void
.end method

.method public final bridge synthetic zzgh()V
    .registers 1

    .line 605
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgh()V

    return-void
.end method

.method public final bridge synthetic zzgp()Lcom/google/android/gms/measurement/internal/zzy;
    .registers 2

    .line 607
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgp()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgq()Lcom/google/android/gms/measurement/internal/zzao;
    .registers 2

    .line 610
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgr()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    .line 611
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgs()Lcom/google/android/gms/measurement/internal/zzbp;
    .registers 2

    .line 612
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgt()Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 2

    .line 613
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgu()Lcom/google/android/gms/measurement/internal/zzbb;
    .registers 2

    .line 614
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgv()Lcom/google/android/gms/measurement/internal/zzo;
    .registers 2

    .line 615
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgw()Lcom/google/android/gms/measurement/internal/zzl;
    .registers 2

    .line 616
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    move-result-object v0

    return-object v0
.end method

.method protected final zzgy()Z
    .registers 2

    .line 5
    const/4 v0, 0x1

    return v0
.end method

.method protected final zzgz()V
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 7
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 8
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 9
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_27

    .line 10
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 11
    cmp-long v0, v1, v3

    if-nez v0, :cond_27

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v3, "Utils falling back to Random for random id"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 13
    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzavd:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 14
    return-void
.end method

.method final zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 270
    const-string v0, "_ev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x100

    if-eqz v0, :cond_10

    .line 271
    const/4 p1, 0x1

    invoke-static {v1, p2, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    .line 272
    return-object p1

    .line 273
    :cond_10
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzda(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 274
    goto :goto_19

    .line 275
    :cond_17
    const/16 v1, 0x64

    :goto_19
    const/4 p1, 0x0

    .line 276
    invoke-static {v1, p2, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    .line 277
    return-object p1
.end method

.method final zzi(Ljava/lang/String;Ljava/lang/Object;)I
    .registers 10

    .line 392
    const-string v0, "_ldl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 393
    const-string/jumbo v2, "user property referrer"

    .line 394
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzcz(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    .line 395
    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Z)Z

    move-result p1

    goto :goto_27

    .line 396
    :cond_18
    const-string/jumbo v1, "user property"

    .line 397
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzcz(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    .line 398
    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Z)Z

    move-result p1

    .line 399
    :goto_27
    if-eqz p1, :cond_2b

    const/4 p1, 0x0

    return p1

    :cond_2b
    const/4 p1, 0x7

    return p1
.end method

.method final zzj(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 400
    const-string v0, "_ldl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 401
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzcz(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 402
    :cond_12
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzcz(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzmj()J
    .registers 7

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzavd:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 16
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_32

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzavd:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 18
    :try_start_f
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    iget v3, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzaed:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzaed:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    .line 19
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_2f

    throw v1

    .line 20
    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzavd:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 21
    :try_start_35
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzavd:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzavd:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    .line 23
    monitor-exit v0

    return-wide v1

    .line 24
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_35 .. :try_end_48} :catchall_46

    throw v1
.end method

.method final zzmk()Ljava/security/SecureRandom;
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzavc:Ljava/security/SecureRandom;

    if-nez v0, :cond_e

    .line 27
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzavc:Ljava/security/SecureRandom;

    .line 28
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzavc:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public final zzml()I
    .registers 3

    .line 584
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzave:Ljava/lang/Integer;

    if-nez v0, :cond_18

    .line 585
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzave:Ljava/lang/Integer;

    .line 586
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzave:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method final zzmm()Ljava/lang/String;
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 588
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 589
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzmk()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 590
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%032x"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v0, 0x0

    aput-object v5, v4, v0

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzs(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 82
    const/4 v0, 0x0

    if-nez p2, :cond_11

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v1, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    return v0

    .line 85
    :cond_11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_25

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v1, "Name is required and can\'t be empty. Type"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    return v0

    .line 88
    :cond_25
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 89
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Name must start with a letter. Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    return v0

    .line 92
    :cond_3d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 93
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_45
    if-ge v1, v2, :cond_69

    .line 94
    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 95
    const/16 v4, 0x5f

    if-eq v3, v4, :cond_63

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_63

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    .line 98
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    return v0

    .line 100
    :cond_63
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 101
    goto :goto_45

    .line 102
    :cond_69
    const/4 p1, 0x1

    return p1
.end method

.method final zzu(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    .line 212
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzcy(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_45

    .line 213
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzkn()Z

    move-result p2

    if-eqz p2, :cond_26

    .line 214
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    .line 215
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v0, "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id"

    .line 216
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 217
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    :cond_26
    return v1

    .line 219
    :cond_27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_47

    .line 220
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzcy(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 221
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 222
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v0, "Invalid admob_app_id. Analytics disabled."

    .line 223
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    return v1

    .line 230
    :cond_45
    const/4 p1, 0x1

    return p1

    .line 225
    :cond_47
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzkn()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 226
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI"

    .line 228
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 229
    :cond_5c
    return v1
.end method

.method final zzx(Ljava/lang/String;)Z
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 465
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 466
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 467
    if-nez v0, :cond_13

    .line 468
    const/4 p1, 0x1

    return p1

    .line 469
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Permission not granted"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 470
    const/4 p1, 0x0

    return p1
.end method
