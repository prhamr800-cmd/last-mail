###### Class io.realm.DefaultCompactOnLaunchCallback (io.realm.DefaultCompactOnLaunchCallback)
.class public Lio/realm/DefaultCompactOnLaunchCallback;
.super Ljava/lang/Object;
.source "DefaultCompactOnLaunchCallback.java"

# interfaces
.implements Lio/realm/CompactOnLaunchCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldCompact(JJ)Z
    .registers 12
    .param p1, "totalBytes"    # J
    .param p3, "usedBytes"    # J

    .line 26
    const-wide/32 v0, 0x3200000

    .line 27
    .local v0, "thresholdSize":J
    const-wide/32 v2, 0x3200000

    cmp-long v4, p1, v2

    if-lez v4, :cond_1b

    long-to-double v2, p3

    long-to-double v4, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v6, v2, v4

    if-gez v6, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    return v2
.end method
