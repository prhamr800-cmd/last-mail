###### Class com.google.android.gms.common.util.MurmurHash3 (com.google.android.gms.common.util.MurmurHash3)
.class public Lcom/google/android/gms/common/util/MurmurHash3;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static murmurhash3_x86_32([BIII)I
    .registers 9
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    nop

    .line 2
    and-int/lit8 v0, p2, -0x4

    add-int/2addr v0, p1

    .line 3
    :goto_4
    const v1, 0x1b873593

    const v2, -0x3361d2af    # -8.293031E7f

    if-ge p1, v0, :cond_41

    .line 4
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    .line 5
    mul-int v3, v3, v2

    .line 6
    shl-int/lit8 v2, v3, 0xf

    ushr-int/lit8 v3, v3, 0x11

    or-int/2addr v2, v3

    .line 7
    mul-int v2, v2, v1

    .line 8
    xor-int/2addr p3, v2

    .line 9
    shl-int/lit8 v1, p3, 0xd

    ushr-int/lit8 p3, p3, 0x13

    or-int/2addr p3, v1

    .line 10
    mul-int/lit8 p3, p3, 0x5

    const v1, -0x19ab949c

    add-int/2addr p3, v1

    .line 11
    add-int/lit8 p1, p1, 0x4

    goto :goto_4

    .line 12
    :cond_41
    const/4 p1, 0x0

    .line 13
    and-int/lit8 v3, p2, 0x3

    packed-switch v3, :pswitch_data_7e

    goto :goto_68

    .line 14
    :pswitch_48
    add-int/lit8 p1, v0, 0x2

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    .line 15
    :pswitch_50
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr p1, v3

    .line 16
    :pswitch_59
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    .line 17
    mul-int p0, p0, v2

    .line 18
    shl-int/lit8 p1, p0, 0xf

    ushr-int/lit8 p0, p0, 0x11

    or-int/2addr p0, p1

    .line 19
    mul-int p0, p0, v1

    .line 20
    xor-int/2addr p3, p0

    .line 21
    :goto_68
    xor-int p0, p3, p2

    .line 22
    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    .line 23
    const p1, -0x7a143595

    mul-int p0, p0, p1

    .line 24
    ushr-int/lit8 p1, p0, 0xd

    xor-int/2addr p0, p1

    .line 25
    const p1, -0x3d4d51cb

    mul-int p0, p0, p1

    .line 26
    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    .line 27
    return p0

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_59
        :pswitch_50
        :pswitch_48
    .end packed-switch
.end method
