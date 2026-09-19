###### Class com.snowplowanalytics.snowplow.tracker.tracker.ExceptionHandler (com.snowplowanalytics.snowplow.tracker.tracker.ExceptionHandler)
.class public Lcom/snowplowanalytics/snowplow/tracker/tracker/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final MAX_CLASS_NAME_LENGTH:I = 0x400

.field private static final MAX_EXCEPTION_NAME_LENGTH:I = 0x400

.field private static final MAX_MESSAGE_LENGTH:I = 0x800

.field private static final MAX_STACK_LENGTH:I = 0x1fa0

.field private static final MAX_THREAD_NAME_LENGTH:I = 0x400

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/snowplowanalytics/snowplow/tracker/tracker/ExceptionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/tracker/ExceptionHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/tracker/ExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 46
    return-void
.end method

.method private truncateString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "maxLength"    # I

    .line 109
    if-nez p1, :cond_4

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 14
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 55
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/tracker/ExceptionHandler;->TAG:Ljava/lang/String;

    const-string v1, "Uncaught exception being tracked..."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x800

    invoke-direct {p0, v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/tracker/ExceptionHandler;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "message":Ljava/lang/String;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 60
    :cond_1c
    const-string v0, "Android Exception. Null or empty message found"

    .line 63
    :cond_1e
    invoke-static {p2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1fa0

    invoke-direct {p0, v1, v3}, Lcom/snowplowanalytics/snowplow/tracker/tracker/ExceptionHandler;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "stack":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x400

    invoke-direct {p0, v3, v4}, Lcom/snowplowanalytics/snowplow/tracker/tracker/ExceptionHandler;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "threadName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 67
    .local v5, "lineNumber":Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 68
    .local v6, "className":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_58

    .line 69
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v2, v7, v2

    .line 72
    .local v2, "stackElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 73
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gez v7, :cond_50

    .line 74
    const/4 v5, 0x0

    .line 77
    :cond_50
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v4}, Lcom/snowplowanalytics/snowplow/tracker/tracker/ExceptionHandler;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 80
    .end local v2    # "stackElement":Ljava/lang/StackTraceElement;
    :cond_58
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/snowplowanalytics/snowplow/tracker/tracker/ExceptionHandler;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "exceptionName":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "message"

    invoke-static {v7, v0, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 84
    const-string v7, "stackTrace"

    invoke-static {v7, v1, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 85
    const-string/jumbo v7, "threadName"

    invoke-static {v7, v3, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 86
    const-string/jumbo v7, "threadId"

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 87
    const-string v7, "programmingLanguage"

    const-string v8, "JAVA"

    invoke-static {v7, v8, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 88
    const-string v7, "lineNumber"

    invoke-static {v7, v5, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 89
    const-string v7, "className"

    invoke-static {v7, v6, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 90
    const-string v7, "exceptionName"

    invoke-static {v7, v2, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 91
    const-string v7, "isFatal"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 93
    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->instance()Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    move-result-object v7

    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;->builder()Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;

    move-result-object v8

    new-instance v9, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    const-string v10, "iglu:com.snowplowanalytics.snowplow/application_error/jsonschema/1-0-0"

    invoke-direct {v9, v10, v4}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v8, v9}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;->eventData(Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;)Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;

    move-result-object v8

    .line 95
    invoke-virtual {v8}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;->build()Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;

    move-result-object v8

    .line 93
    invoke-virtual {v7, v8}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->track(Lcom/snowplowanalytics/snowplow/tracker/events/Event;)V

    .line 98
    iget-object v7, p0, Lcom/snowplowanalytics/snowplow/tracker/tracker/ExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v7, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method
