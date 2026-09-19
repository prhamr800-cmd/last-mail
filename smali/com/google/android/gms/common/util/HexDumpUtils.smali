###### Class com.google.android.gms.common.util.HexDumpUtils (com.google.android.gms.common.util.HexDumpUtils)
.class public final Lcom/google/android/gms/common/util/HexDumpUtils;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump([BIIZ)Ljava/lang/String;
    .registers 15
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 2
    if-eqz p0, :cond_ca

    array-length v0, p0

    if-eqz v0, :cond_ca

    if-ltz p1, :cond_ca

    if-lez p2, :cond_ca

    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_10

    goto/16 :goto_ca

    .line 4
    :cond_10
    const/16 v0, 0x39

    .line 5
    if-eqz p3, :cond_16

    .line 6
    const/16 v0, 0x4b

    .line 7
    :cond_16
    add-int/lit8 v1, p2, 0x10

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v3, 0x10

    div-int/2addr v1, v3

    mul-int v0, v0, v1

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9
    nop

    .line 10
    nop

    .line 11
    nop

    .line 12
    const/4 v0, 0x0

    move v5, p1

    move p1, p2

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_2c
    if-lez p1, :cond_c5

    .line 13
    const/16 v7, 0x8

    if-nez v4, :cond_5c

    .line 14
    nop

    .line 15
    const/high16 v6, 0x10000

    if-ge p2, v6, :cond_49

    .line 16
    const-string v6, "%04X:"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    .line 17
    :cond_49
    const-string v6, "%08X:"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :goto_5a
    move v6, v5

    goto :goto_63

    .line 18
    :cond_5c
    if-ne v4, v7, :cond_63

    .line 19
    const-string v8, " -"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_63
    :goto_63
    const-string v8, " %02X"

    new-array v9, v2, [Ljava/lang/Object;

    aget-byte v10, p0, v5

    and-int/lit16 v10, v10, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    add-int/lit8 p1, p1, -0x1

    .line 22
    add-int/lit8 v4, v4, 0x1

    .line 23
    if-eqz p3, :cond_b6

    if-eq v4, v3, :cond_82

    if-nez p1, :cond_b6

    .line 24
    :cond_82
    rsub-int/lit8 v8, v4, 0x10

    .line 25
    if-lez v8, :cond_91

    .line 26
    const/4 v9, 0x0

    :goto_87
    if-ge v9, v8, :cond_91

    .line 27
    const-string v10, "   "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    add-int/lit8 v9, v9, 0x1

    goto :goto_87

    .line 29
    :cond_91
    if-lt v8, v7, :cond_98

    .line 30
    const-string v7, "  "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :cond_98
    const-string v7, "  "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const/4 v7, 0x0

    :goto_9e
    if-ge v7, v4, :cond_b6

    .line 33
    add-int v8, v6, v7

    aget-byte v8, p0, v8

    int-to-char v8, v8

    .line 34
    const/16 v9, 0x20

    if-lt v8, v9, :cond_ae

    const/16 v9, 0x7e

    if-gt v8, v9, :cond_ae

    goto :goto_b0

    :cond_ae
    const/16 v8, 0x2e

    :goto_b0
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    add-int/lit8 v7, v7, 0x1

    goto :goto_9e

    .line 36
    :cond_b6
    if-eq v4, v3, :cond_ba

    if-nez p1, :cond_c1

    .line 37
    :cond_ba
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    nop

    .line 39
    const/4 v4, 0x0

    :cond_c1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2c

    .line 40
    :cond_c5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_ca
    :goto_ca
    const/4 p0, 0x0

    return-object p0
.end method
