###### Class io.fabric.sdk.android.services.common.ResponseParser (io.fabric.sdk.android.services.common.ResponseParser)
.class public Lio/fabric/sdk/android/services/common/ResponseParser;
.super Ljava/lang/Object;
.source "ResponseParser.java"


# static fields
.field public static final ResponseActionDiscard:I = 0x0

.field public static final ResponseActionRetry:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(I)I
    .registers 4
    .param p0, "statusCode"    # I

    .line 35
    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-lt p0, v1, :cond_a

    const/16 v1, 0x12b

    if-gt p0, v1, :cond_a

    .line 36
    return v0

    .line 37
    :cond_a
    const/16 v1, 0x12c

    const/4 v2, 0x1

    if-lt p0, v1, :cond_14

    const/16 v1, 0x18f

    if-gt p0, v1, :cond_14

    .line 38
    return v2

    .line 39
    :cond_14
    const/16 v1, 0x190

    if-lt p0, v1, :cond_1d

    const/16 v1, 0x1f3

    if-gt p0, v1, :cond_1d

    .line 40
    return v0

    .line 41
    :cond_1d
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_22

    .line 42
    return v2

    .line 45
    :cond_22
    return v2
.end method
