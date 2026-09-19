###### Class com.snowplowanalytics.snowplow.tracker.utils.Logger (com.snowplowanalytics.snowplow.tracker.utils.Logger)
.class public Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static level:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->level:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 48
    sget v0, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->level:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_10

    .line 49
    invoke-static {p0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_10
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 35
    sget v0, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_10

    .line 36
    invoke-static {p0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_10
    return-void
.end method

.method private static varargs getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->getThread()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SnowplowTracker->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getThread()Ljava/lang/String;
    .registers 1

    .line 94
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateLogLevel(Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;)V
    .registers 2
    .param p0, "newLevel"    # Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    .line 103
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;->getLevel()I

    move-result v0

    sput v0, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->level:I

    .line 104
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 61
    sget v0, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_10

    .line 62
    invoke-static {p0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->getMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_10
    return-void
.end method
