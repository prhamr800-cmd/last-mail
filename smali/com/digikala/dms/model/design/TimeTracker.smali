###### Class com.digikala.dms.model.design.TimeTracker (com.digikala.dms.model.design.TimeTracker)
.class public Lcom/digikala/dms/model/design/TimeTracker;
.super Ljava/lang/Object;
.source "TimeTracker.java"


# static fields
.field public static final STATE_EARLY:I = 0x2

.field public static final STATE_LATE:I = 0x1

.field public static final STATE_ON_TIME:I


# instance fields
.field private diffTime:I

.field private state:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeliveryTimeTracker(Ljava/lang/String;)Lcom/digikala/dms/model/design/TimeTracker;
    .registers 10
    .param p0, "timeScope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "timeScopeSplitted":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    .line 51
    .local v2, "startTime":I
    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    .line 53
    .local v4, "endTime":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    .line 54
    .local v5, "currentHour":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 56
    .local v6, "currentMinute":I
    add-int v7, v5, v6

    .line 58
    .local v7, "now":I
    new-instance v8, Lcom/digikala/dms/model/design/TimeTracker;

    invoke-direct {v8}, Lcom/digikala/dms/model/design/TimeTracker;-><init>()V

    .line 60
    .local v8, "timeTrack":Lcom/digikala/dms/model/design/TimeTracker;
    if-gt v7, v4, :cond_45

    if-lt v7, v2, :cond_45

    .line 61
    invoke-virtual {v8, v1}, Lcom/digikala/dms/model/design/TimeTracker;->setState(I)V

    goto :goto_59

    .line 62
    :cond_45
    if-le v7, v4, :cond_50

    .line 63
    invoke-virtual {v8, v3}, Lcom/digikala/dms/model/design/TimeTracker;->setState(I)V

    .line 64
    sub-int v1, v7, v4

    invoke-virtual {v8, v1}, Lcom/digikala/dms/model/design/TimeTracker;->setDiffTime(I)V

    goto :goto_59

    .line 66
    :cond_50
    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Lcom/digikala/dms/model/design/TimeTracker;->setState(I)V

    .line 67
    sub-int v1, v2, v7

    invoke-virtual {v8, v1}, Lcom/digikala/dms/model/design/TimeTracker;->setDiffTime(I)V

    .line 70
    :goto_59
    return-object v8
.end method


# virtual methods
.method public getDiffTime()I
    .registers 2

    .line 30
    iget v0, p0, Lcom/digikala/dms/model/design/TimeTracker;->diffTime:I

    return v0
.end method

.method public getState()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/digikala/dms/model/design/TimeTracker;->state:I

    return v0
.end method

.method public setDiffTime(I)V
    .registers 2
    .param p1, "diffTime"    # I

    .line 34
    iput p1, p0, Lcom/digikala/dms/model/design/TimeTracker;->diffTime:I

    .line 35
    return-void
.end method

.method public setState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 26
    iput p1, p0, Lcom/digikala/dms/model/design/TimeTracker;->state:I

    .line 27
    return-void
.end method
