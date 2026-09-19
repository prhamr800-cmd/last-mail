###### Class com.crashlytics.android.core.NativeCrashWriter (com.crashlytics.android.core.NativeCrashWriter)
.class Lcom/crashlytics/android/core/NativeCrashWriter;
.super Ljava/lang/Object;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$ExecutionMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$ApplicationMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$LogMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$NullMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;,
        Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIGNAL:Lcom/crashlytics/android/core/internal/models/SignalData;

.field private static final EMPTY_BINARY_IMAGE_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;

.field private static final EMPTY_CHILDREN:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

.field private static final EMPTY_CUSTOM_ATTRIBUTE_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;

.field private static final EMPTY_FRAME_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;

.field private static final EMPTY_THREAD_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;

.field static final NDK_CRASH_TYPE:Ljava/lang/String; = "ndk-crash"


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 27
    new-instance v0, Lcom/crashlytics/android/core/internal/models/SignalData;

    const-string v1, ""

    const-string v2, ""

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/crashlytics/android/core/internal/models/SignalData;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lcom/crashlytics/android/core/NativeCrashWriter;->DEFAULT_SIGNAL:Lcom/crashlytics/android/core/internal/models/SignalData;

    .line 29
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    sput-object v1, Lcom/crashlytics/android/core/NativeCrashWriter;->EMPTY_CHILDREN:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    .line 30
    new-array v1, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;

    sput-object v1, Lcom/crashlytics/android/core/NativeCrashWriter;->EMPTY_THREAD_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;

    .line 31
    new-array v1, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;

    sput-object v1, Lcom/crashlytics/android/core/NativeCrashWriter;->EMPTY_FRAME_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;

    .line 32
    new-array v1, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;

    sput-object v1, Lcom/crashlytics/android/core/NativeCrashWriter;->EMPTY_BINARY_IMAGE_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;

    .line 34
    new-array v0, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;

    sput-object v0, Lcom/crashlytics/android/core/NativeCrashWriter;->EMPTY_CUSTOM_ATTRIBUTE_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    return-void
.end method

.method static synthetic access$000()[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    .registers 1

    .line 19
    sget-object v0, Lcom/crashlytics/android/core/NativeCrashWriter;->EMPTY_CHILDREN:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    return-object v0
.end method

.method private static createBinaryImagesMessage([Lcom/crashlytics/android/core/internal/models/BinaryImageData;)Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;
    .registers 5
    .param p0, "binaryImages"    # [Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    .line 591
    if-eqz p0, :cond_6

    array-length v0, p0

    new-array v0, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;

    goto :goto_8

    :cond_6
    sget-object v0, Lcom/crashlytics/android/core/NativeCrashWriter;->EMPTY_BINARY_IMAGE_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;

    .line 593
    .local v0, "binaryImageMessages":[Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;
    :goto_8
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_18

    .line 594
    new-instance v2, Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;-><init>(Lcom/crashlytics/android/core/internal/models/BinaryImageData;)V

    aput-object v2, v0, v1

    .line 593
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 596
    .end local v1    # "i":I
    :cond_18
    new-instance v1, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;-><init>([Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    return-object v1
.end method

.method private static createCustomAttributesMessage([Lcom/crashlytics/android/core/internal/models/CustomAttributeData;)Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;
    .registers 5
    .param p0, "customAttributes"    # [Lcom/crashlytics/android/core/internal/models/CustomAttributeData;

    .line 601
    if-eqz p0, :cond_6

    array-length v0, p0

    new-array v0, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;

    goto :goto_8

    :cond_6
    sget-object v0, Lcom/crashlytics/android/core/NativeCrashWriter;->EMPTY_CUSTOM_ATTRIBUTE_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;

    .line 604
    .local v0, "customAttributeMessages":[Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;
    :goto_8
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_18

    .line 605
    new-instance v2, Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;-><init>(Lcom/crashlytics/android/core/internal/models/CustomAttributeData;)V

    aput-object v2, v0, v1

    .line 604
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 607
    .end local v1    # "i":I
    :cond_18
    new-instance v1, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;-><init>([Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    return-object v1
.end method

.method private static createDeviceMessage(Lcom/crashlytics/android/core/internal/models/DeviceData;)Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    .registers 13
    .param p0, "deviceData"    # Lcom/crashlytics/android/core/internal/models/DeviceData;

    .line 557
    if-nez p0, :cond_8

    .line 558
    new-instance v0, Lcom/crashlytics/android/core/NativeCrashWriter$NullMessage;

    invoke-direct {v0}, Lcom/crashlytics/android/core/NativeCrashWriter$NullMessage;-><init>()V

    return-object v0

    .line 560
    :cond_8
    new-instance v0, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;

    iget v1, p0, Lcom/crashlytics/android/core/internal/models/DeviceData;->batteryCapacity:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v2, v1, v2

    iget v3, p0, Lcom/crashlytics/android/core/internal/models/DeviceData;->batteryVelocity:I

    iget-boolean v4, p0, Lcom/crashlytics/android/core/internal/models/DeviceData;->proximity:Z

    iget v5, p0, Lcom/crashlytics/android/core/internal/models/DeviceData;->orientation:I

    iget-wide v6, p0, Lcom/crashlytics/android/core/internal/models/DeviceData;->totalPhysicalMemory:J

    iget-wide v8, p0, Lcom/crashlytics/android/core/internal/models/DeviceData;->availablePhysicalMemory:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/crashlytics/android/core/internal/models/DeviceData;->totalInternalStorage:J

    iget-wide v10, p0, Lcom/crashlytics/android/core/internal/models/DeviceData;->availableInternalStorage:J

    sub-long/2addr v8, v10

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;-><init>(FIZIJJ)V

    return-object v0
.end method

.method private static createEventMessage(Lcom/crashlytics/android/core/internal/models/SessionEventData;Lcom/crashlytics/android/core/LogFileManager;Ljava/util/Map;)Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;
    .registers 20
    .param p0, "crashEvent"    # Lcom/crashlytics/android/core/internal/models/SessionEventData;
    .param p1, "logFileManager"    # Lcom/crashlytics/android/core/LogFileManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/internal/models/SessionEventData;",
            "Lcom/crashlytics/android/core/LogFileManager;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/crashlytics/android/core/internal/models/SessionEventData;->signal:Lcom/crashlytics/android/core/internal/models/SignalData;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/crashlytics/android/core/internal/models/SessionEventData;->signal:Lcom/crashlytics/android/core/internal/models/SignalData;

    goto :goto_b

    :cond_9
    sget-object v1, Lcom/crashlytics/android/core/NativeCrashWriter;->DEFAULT_SIGNAL:Lcom/crashlytics/android/core/internal/models/SignalData;

    .line 503
    .local v1, "signal":Lcom/crashlytics/android/core/internal/models/SignalData;
    :goto_b
    new-instance v2, Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;

    invoke-direct {v2, v1}, Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;-><init>(Lcom/crashlytics/android/core/internal/models/SignalData;)V

    .line 505
    .local v2, "signalMessage":Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;
    iget-object v3, v0, Lcom/crashlytics/android/core/internal/models/SessionEventData;->threads:[Lcom/crashlytics/android/core/internal/models/ThreadData;

    invoke-static {v3}, Lcom/crashlytics/android/core/NativeCrashWriter;->createThreadsMessage([Lcom/crashlytics/android/core/internal/models/ThreadData;)Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;

    move-result-object v3

    .line 506
    .local v3, "threadsMessage":Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;
    iget-object v4, v0, Lcom/crashlytics/android/core/internal/models/SessionEventData;->binaryImages:[Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    invoke-static {v4}, Lcom/crashlytics/android/core/NativeCrashWriter;->createBinaryImagesMessage([Lcom/crashlytics/android/core/internal/models/BinaryImageData;)Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;

    move-result-object v4

    .line 509
    .local v4, "binaryImagesMessage":Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;
    new-instance v5, Lcom/crashlytics/android/core/NativeCrashWriter$ExecutionMessage;

    invoke-direct {v5, v2, v3, v4}, Lcom/crashlytics/android/core/NativeCrashWriter$ExecutionMessage;-><init>(Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;)V

    .line 511
    .local v5, "executionMessage":Lcom/crashlytics/android/core/NativeCrashWriter$ExecutionMessage;
    iget-object v6, v0, Lcom/crashlytics/android/core/internal/models/SessionEventData;->customAttributes:[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;

    move-object/from16 v7, p2

    invoke-static {v6, v7}, Lcom/crashlytics/android/core/NativeCrashWriter;->mergeCustomAttributes([Lcom/crashlytics/android/core/internal/models/CustomAttributeData;Ljava/util/Map;)[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;

    move-result-object v6

    invoke-static {v6}, Lcom/crashlytics/android/core/NativeCrashWriter;->createCustomAttributesMessage([Lcom/crashlytics/android/core/internal/models/CustomAttributeData;)Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;

    move-result-object v6

    .line 515
    .local v6, "customAttributesMessage":Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;
    new-instance v8, Lcom/crashlytics/android/core/NativeCrashWriter$ApplicationMessage;

    invoke-direct {v8, v5, v6}, Lcom/crashlytics/android/core/NativeCrashWriter$ApplicationMessage;-><init>(Lcom/crashlytics/android/core/NativeCrashWriter$ExecutionMessage;Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;)V

    .line 517
    .local v8, "applicationMessage":Lcom/crashlytics/android/core/NativeCrashWriter$ApplicationMessage;
    iget-object v9, v0, Lcom/crashlytics/android/core/internal/models/SessionEventData;->deviceData:Lcom/crashlytics/android/core/internal/models/DeviceData;

    invoke-static {v9}, Lcom/crashlytics/android/core/NativeCrashWriter;->createDeviceMessage(Lcom/crashlytics/android/core/internal/models/DeviceData;)Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    move-result-object v9

    .line 519
    .local v9, "deviceMessage":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    invoke-virtual/range {p1 .. p1}, Lcom/crashlytics/android/core/LogFileManager;->getByteStringForLog()Lcom/crashlytics/android/core/ByteString;

    move-result-object v10

    .line 521
    .local v10, "logByteString":Lcom/crashlytics/android/core/ByteString;
    if-nez v10, :cond_49

    .line 522
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v11

    const-string v12, "CrashlyticsCore"

    const-string v13, "No log data to include with this event."

    invoke-interface {v11, v12, v13}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_49
    invoke-virtual/range {p1 .. p1}, Lcom/crashlytics/android/core/LogFileManager;->clearLog()V

    .line 528
    if-eqz v10, :cond_54

    new-instance v11, Lcom/crashlytics/android/core/NativeCrashWriter$LogMessage;

    invoke-direct {v11, v10}, Lcom/crashlytics/android/core/NativeCrashWriter$LogMessage;-><init>(Lcom/crashlytics/android/core/ByteString;)V

    goto :goto_59

    :cond_54
    new-instance v11, Lcom/crashlytics/android/core/NativeCrashWriter$NullMessage;

    invoke-direct {v11}, Lcom/crashlytics/android/core/NativeCrashWriter$NullMessage;-><init>()V

    .line 531
    .local v11, "logMessage":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    :goto_59
    new-instance v12, Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;

    iget-wide v13, v0, Lcom/crashlytics/android/core/internal/models/SessionEventData;->timestamp:J

    const-string v15, "ndk-crash"

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    const/16 v16, 0x0

    aput-object v8, v0, v16

    const/16 v16, 0x1

    aput-object v9, v0, v16

    const/16 v16, 0x2

    aput-object v11, v0, v16

    invoke-direct {v12, v13, v14, v15, v0}, Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;-><init>(JLjava/lang/String;[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    return-object v12
.end method

.method private static createFramesMessage([Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;)Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;
    .registers 5
    .param p0, "frames"    # [Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    .line 582
    if-eqz p0, :cond_6

    array-length v0, p0

    new-array v0, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;

    goto :goto_8

    :cond_6
    sget-object v0, Lcom/crashlytics/android/core/NativeCrashWriter;->EMPTY_FRAME_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;

    .line 584
    .local v0, "frameMessages":[Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;
    :goto_8
    const/4 v1, 0x0

    .local v1, "frameIdx":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_18

    .line 585
    new-instance v2, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;-><init>(Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;)V

    aput-object v2, v0, v1

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 587
    .end local v1    # "frameIdx":I
    :cond_18
    new-instance v1, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;-><init>([Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    return-object v1
.end method

.method private static createThreadsMessage([Lcom/crashlytics/android/core/internal/models/ThreadData;)Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;
    .registers 6
    .param p0, "threads"    # [Lcom/crashlytics/android/core/internal/models/ThreadData;

    .line 571
    if-eqz p0, :cond_6

    array-length v0, p0

    new-array v0, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;

    goto :goto_8

    :cond_6
    sget-object v0, Lcom/crashlytics/android/core/NativeCrashWriter;->EMPTY_THREAD_MESSAGES:[Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;

    .line 573
    .local v0, "threadMessages":[Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;
    :goto_8
    const/4 v1, 0x0

    .local v1, "threadIdx":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_1e

    .line 574
    aget-object v2, p0, v1

    .line 575
    .local v2, "threadData":Lcom/crashlytics/android/core/internal/models/ThreadData;
    new-instance v3, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;

    iget-object v4, v2, Lcom/crashlytics/android/core/internal/models/ThreadData;->frames:[Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    invoke-static {v4}, Lcom/crashlytics/android/core/NativeCrashWriter;->createFramesMessage([Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;)Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;-><init>(Lcom/crashlytics/android/core/internal/models/ThreadData;Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;)V

    aput-object v3, v0, v1

    .line 573
    .end local v2    # "threadData":Lcom/crashlytics/android/core/internal/models/ThreadData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 578
    .end local v1    # "threadIdx":I
    :cond_1e
    new-instance v1, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;-><init>([Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    return-object v1
.end method

.method private static mergeCustomAttributes([Lcom/crashlytics/android/core/internal/models/CustomAttributeData;Ljava/util/Map;)[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    .registers 10
    .param p0, "ndkAttributes"    # [Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/crashlytics/android/core/internal/models/CustomAttributeData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/crashlytics/android/core/internal/models/CustomAttributeData;"
        }
    .end annotation

    .line 538
    .local p1, "javaAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 539
    .local v0, "sorted":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-eqz p0, :cond_19

    .line 540
    move-object v2, p0

    .local v2, "arr$":[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    array-length v3, v2

    const/4 v4, 0x0

    .local v3, "len$":I
    .local v4, "i$":I
    :goto_b
    if-ge v4, v3, :cond_19

    aget-object v5, v2, v4

    .line 541
    .local v5, "attr":Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    iget-object v6, v5, Lcom/crashlytics/android/core/internal/models/CustomAttributeData;->key:Ljava/lang/String;

    iget-object v7, v5, Lcom/crashlytics/android/core/internal/models/CustomAttributeData;->value:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .end local v5    # "attr":Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 546
    .end local v2    # "arr$":[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_19
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljava/util/Map$Entry;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/Map$Entry;

    .line 548
    .local v2, "entryArray":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v3, v2

    new-array v3, v3, [Lcom/crashlytics/android/core/internal/models/CustomAttributeData;

    .line 549
    .local v3, "merged":[Lcom/crashlytics/android/core/internal/models/CustomAttributeData;
    nop

    .local v1, "i":I
    :goto_2d
    array-length v4, v3

    if-ge v1, v4, :cond_4a

    .line 550
    new-instance v4, Lcom/crashlytics/android/core/internal/models/CustomAttributeData;

    aget-object v5, v2, v1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aget-object v6, v2, v1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/crashlytics/android/core/internal/models/CustomAttributeData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 552
    .end local v1    # "i":I
    :cond_4a
    return-object v3
.end method

.method public static writeNativeCrash(Lcom/crashlytics/android/core/internal/models/SessionEventData;Lcom/crashlytics/android/core/LogFileManager;Ljava/util/Map;Lcom/crashlytics/android/core/CodedOutputStream;)V
    .registers 5
    .param p0, "crashEventData"    # Lcom/crashlytics/android/core/internal/models/SessionEventData;
    .param p1, "logFileManager"    # Lcom/crashlytics/android/core/LogFileManager;
    .param p3, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/internal/models/SessionEventData;",
            "Lcom/crashlytics/android/core/LogFileManager;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/crashlytics/android/core/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    .local p2, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcom/crashlytics/android/core/NativeCrashWriter;->createEventMessage(Lcom/crashlytics/android/core/internal/models/SessionEventData;Lcom/crashlytics/android/core/LogFileManager;Ljava/util/Map;)Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;

    move-result-object v0

    .line 624
    .local v0, "crashEventMessage":Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;
    invoke-virtual {v0, p3}, Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;->write(Lcom/crashlytics/android/core/CodedOutputStream;)V

    .line 625
    return-void
.end method

###### Class com.crashlytics.android.core.NativeCrashWriter.ApplicationMessage (com.crashlytics.android.core.NativeCrashWriter$ApplicationMessage)
.class final Lcom/crashlytics/android/core/NativeCrashWriter$ApplicationMessage;
.super Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApplicationMessage"
.end annotation


# static fields
.field private static final PROTOBUF_TAG:I = 0x3


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/NativeCrashWriter$ExecutionMessage;Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;)V
    .registers 5
    .param p1, "executionMessage"    # Lcom/crashlytics/android/core/NativeCrashWriter$ExecutionMessage;
    .param p2, "customAttrs"    # Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;

    .line 289
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    .line 290
    return-void
.end method

###### Class com.crashlytics.android.core.NativeCrashWriter.BinaryImageMessage (com.crashlytics.android.core.NativeCrashWriter$BinaryImageMessage)
.class final Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;
.super Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BinaryImageMessage"
.end annotation


# static fields
.field private static final PROTOBUF_TAG:I = 0x4


# instance fields
.field private final baseAddr:J

.field private final filePath:Ljava/lang/String;

.field private final imageSize:J

.field private final uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/internal/models/BinaryImageData;)V
    .registers 4
    .param p1, "binaryImageData"    # Lcom/crashlytics/android/core/internal/models/BinaryImageData;

    .line 431
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    .line 432
    iget-wide v0, p1, Lcom/crashlytics/android/core/internal/models/BinaryImageData;->baseAddress:J

    iput-wide v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;->baseAddr:J

    .line 433
    iget-wide v0, p1, Lcom/crashlytics/android/core/internal/models/BinaryImageData;->size:J

    iput-wide v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;->imageSize:J

    .line 434
    iget-object v0, p1, Lcom/crashlytics/android/core/internal/models/BinaryImageData;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;->filePath:Ljava/lang/String;

    .line 435
    iget-object v0, p1, Lcom/crashlytics/android/core/internal/models/BinaryImageData;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;->uuid:Ljava/lang/String;

    .line 436
    return-void
.end method


# virtual methods
.method public getPropertiesSize()I
    .registers 6

    .line 440
    iget-wide v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;->baseAddr:J

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    .line 441
    .local v0, "addrSize":I
    iget-wide v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;->imageSize:J

    const/4 v3, 0x2

    invoke-static {v3, v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    .line 442
    .local v1, "imgSize":I
    iget-object v2, p0, Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v2

    .line 444
    .local v2, "pathSize":I
    iget-object v3, p0, Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;->uuid:Ljava/lang/String;

    invoke-static {v3}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v3

    .line 447
    .local v3, "uuidSize":I
    add-int v4, v2, v0

    add-int/2addr v4, v1

    add-int/2addr v4, v3

    return v4
.end method

.method public writeProperties(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .registers 5
    .param p1, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    iget-wide v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;->baseAddr:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 453
    iget-wide v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;->imageSize:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 454
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 455
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$BinaryImageMessage;->uuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 456
    return-void
.end method

###### Class com.crashlytics.android.core.NativeCrashWriter.CustomAttributeMessage (com.crashlytics.android.core.NativeCrashWriter$CustomAttributeMessage)
.class final Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;
.super Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CustomAttributeMessage"
.end annotation


# static fields
.field private static final PROTOBUF_TAG:I = 0x2


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/internal/models/CustomAttributeData;)V
    .registers 4
    .param p1, "customAttributeData"    # Lcom/crashlytics/android/core/internal/models/CustomAttributeData;

    .line 470
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    .line 471
    iget-object v0, p1, Lcom/crashlytics/android/core/internal/models/CustomAttributeData;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;->key:Ljava/lang/String;

    .line 472
    iget-object v0, p1, Lcom/crashlytics/android/core/internal/models/CustomAttributeData;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;->value:Ljava/lang/String;

    .line 473
    return-void
.end method


# virtual methods
.method public getPropertiesSize()I
    .registers 4

    .line 477
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v0

    .line 478
    .local v0, "size":I
    iget-object v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;->value:Ljava/lang/String;

    if-nez v1, :cond_12

    const-string v1, ""

    goto :goto_14

    :cond_12
    iget-object v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;->value:Ljava/lang/String;

    :goto_14
    invoke-static {v1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 480
    return v0
.end method

.method public writeProperties(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .registers 4
    .param p1, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 486
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;->value:Ljava/lang/String;

    if-nez v0, :cond_11

    const-string v0, ""

    goto :goto_13

    :cond_11
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$CustomAttributeMessage;->value:Ljava/lang/String;

    :goto_13
    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 487
    return-void
.end method

###### Class com.crashlytics.android.core.NativeCrashWriter.DeviceMessage (com.crashlytics.android.core.NativeCrashWriter$DeviceMessage)
.class final Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;
.super Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceMessage"
.end annotation


# static fields
.field private static final PROTOBUF_TAG:I = 0x5


# instance fields
.field private final batteryLevel:F

.field private final batteryVelocity:I

.field private final diskUsed:J

.field private final orientation:I

.field private final proximityOn:Z

.field private final ramUsed:J


# direct methods
.method public constructor <init>(FIZIJJ)V
    .registers 11
    .param p1, "batteryLevel"    # F
    .param p2, "batteryVelocity"    # I
    .param p3, "proximityOn"    # Z
    .param p4, "orientation"    # I
    .param p5, "ramUsed"    # J
    .param p7, "diskUsed"    # J

    .line 225
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    .line 227
    iput p1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;->batteryLevel:F

    .line 228
    iput p2, p0, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;->batteryVelocity:I

    .line 229
    iput-boolean p3, p0, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;->proximityOn:Z

    .line 230
    iput p4, p0, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;->orientation:I

    .line 231
    iput-wide p5, p0, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;->ramUsed:J

    .line 232
    iput-wide p7, p0, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;->diskUsed:J

    .line 233
    return-void
.end method


# virtual methods
.method public getPropertiesSize()I
    .registers 5

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "size":I
    iget v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;->batteryLevel:F

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 239
    iget v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;->batteryVelocity:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    iget-boolean v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;->proximityOn:Z

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    iget v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;->orientation:I

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    iget-wide v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;->ramUsed:J

    const/4 v3, 0x5

    invoke-static {v3, v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 243
    iget-wide v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;->diskUsed:J

    const/4 v3, 0x6

    invoke-static {v3, v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    return v0
.end method

.method public writeProperties(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .registers 5
    .param p1, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;->batteryLevel:F

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeFloat(IF)V

    .line 250
    iget v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;->batteryVelocity:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeSInt32(II)V

    .line 251
    iget-boolean v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;->proximityOn:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBool(IZ)V

    .line 252
    iget v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;->orientation:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    .line 253
    iget-wide v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;->ramUsed:J

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 254
    iget-wide v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$DeviceMessage;->diskUsed:J

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 255
    return-void
.end method

###### Class com.crashlytics.android.core.NativeCrashWriter.EventMessage (com.crashlytics.android.core.NativeCrashWriter$EventMessage)
.class final Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;
.super Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventMessage"
.end annotation


# static fields
.field private static final PROTOBUF_TAG:I = 0xa


# instance fields
.field private final crashType:Ljava/lang/String;

.field private final time:J


# direct methods
.method public varargs constructor <init>(JLjava/lang/String;[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V
    .registers 6
    .param p1, "time"    # J
    .param p3, "crashType"    # Ljava/lang/String;
    .param p4, "eventMessages"    # [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    .line 181
    const/16 v0, 0xa

    invoke-direct {p0, v0, p4}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    .line 182
    iput-wide p1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;->time:J

    .line 183
    iput-object p3, p0, Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;->crashType:Ljava/lang/String;

    .line 184
    return-void
.end method


# virtual methods
.method public getPropertiesSize()I
    .registers 4

    .line 188
    iget-wide v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;->time:J

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    .line 189
    .local v0, "timeSize":I
    iget-object v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;->crashType:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    .line 191
    .local v1, "typeSize":I
    add-int v2, v0, v1

    return v2
.end method

.method public writeProperties(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .registers 5
    .param p1, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-wide v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;->time:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 197
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$EventMessage;->crashType:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 198
    return-void
.end method

###### Class com.crashlytics.android.core.NativeCrashWriter.ExecutionMessage (com.crashlytics.android.core.NativeCrashWriter$ExecutionMessage)
.class final Lcom/crashlytics/android/core/NativeCrashWriter$ExecutionMessage;
.super Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExecutionMessage"
.end annotation


# static fields
.field private static final PROTOBUF_TAG:I = 0x1


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;)V
    .registers 7
    .param p1, "signalMessage"    # Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;
    .param p2, "threads"    # Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;
    .param p3, "binaryImages"    # Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;

    .line 302
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p3, v0, v2

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    .line 303
    return-void
.end method

###### Class com.crashlytics.android.core.NativeCrashWriter.FrameMessage (com.crashlytics.android.core.NativeCrashWriter$FrameMessage)
.class final Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;
.super Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FrameMessage"
.end annotation


# static fields
.field private static final PROTOBUF_TAG:I = 0x3


# instance fields
.field private final address:J

.field private final file:Ljava/lang/String;

.field private final importance:I

.field private final offset:J

.field private final symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;)V
    .registers 4
    .param p1, "frameData"    # Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;

    .line 356
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    .line 357
    iget-wide v0, p1, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;->address:J

    iput-wide v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->address:J

    .line 358
    iget-object v0, p1, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;->symbol:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->symbol:Ljava/lang/String;

    .line 359
    iget-object v0, p1, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;->file:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->file:Ljava/lang/String;

    .line 360
    iget-wide v0, p1, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;->offset:J

    iput-wide v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->offset:J

    .line 361
    iget v0, p1, Lcom/crashlytics/android/core/internal/models/ThreadData$FrameData;->importance:I

    iput v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->importance:I

    .line 362
    return-void
.end method


# virtual methods
.method public getPropertiesSize()I
    .registers 5

    .line 366
    iget-wide v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->address:J

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    .line 367
    .local v0, "size":I
    iget-object v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->symbol:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 368
    iget-object v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->file:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    iget-wide v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->offset:J

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 370
    iget v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->importance:I

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 371
    return v0
.end method

.method public writeProperties(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .registers 5
    .param p1, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    iget-wide v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->address:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 377
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->symbol:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 378
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->file:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 379
    iget-wide v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->offset:J

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 380
    iget v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$FrameMessage;->importance:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    .line 381
    return-void
.end method

###### Class com.crashlytics.android.core.NativeCrashWriter.LogMessage (com.crashlytics.android.core.NativeCrashWriter$LogMessage)
.class final Lcom/crashlytics/android/core/NativeCrashWriter$LogMessage;
.super Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogMessage"
.end annotation


# static fields
.field private static final PROTOBUF_TAG:I = 0x6


# instance fields
.field logBytes:Lcom/crashlytics/android/core/ByteString;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/ByteString;)V
    .registers 4
    .param p1, "logBytes"    # Lcom/crashlytics/android/core/ByteString;

    .line 264
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    .line 265
    iput-object p1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$LogMessage;->logBytes:Lcom/crashlytics/android/core/ByteString;

    .line 266
    return-void
.end method


# virtual methods
.method public getPropertiesSize()I
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$LogMessage;->logBytes:Lcom/crashlytics/android/core/ByteString;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v0

    return v0
.end method

.method public writeProperties(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .registers 4
    .param p1, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$LogMessage;->logBytes:Lcom/crashlytics/android/core/ByteString;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 276
    return-void
.end method

###### Class com.crashlytics.android.core.NativeCrashWriter.NullMessage (com.crashlytics.android.core.NativeCrashWriter$NullMessage)
.class final Lcom/crashlytics/android/core/NativeCrashWriter$NullMessage;
.super Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullMessage"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 155
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    .line 156
    return-void
.end method


# virtual methods
.method public getSize()I
    .registers 2

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public write(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .registers 2
    .param p1, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    return-void
.end method

###### Class com.crashlytics.android.core.NativeCrashWriter.ProtobufMessage (com.crashlytics.android.core.NativeCrashWriter$ProtobufMessage)
.class abstract Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
.super Ljava/lang/Object;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ProtobufMessage"
.end annotation


# instance fields
.field private final children:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

.field private final tag:I


# direct methods
.method public varargs constructor <init>(I[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V
    .registers 4
    .param p1, "tag"    # I
    .param p2, "children"    # [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->tag:I

    .line 52
    if-eqz p2, :cond_9

    move-object v0, p2

    goto :goto_d

    :cond_9
    invoke-static {}, Lcom/crashlytics/android/core/NativeCrashWriter;->access$000()[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->children:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    .line 53
    return-void
.end method


# virtual methods
.method public getPropertiesSize()I
    .registers 2

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()I
    .registers 3

    .line 61
    invoke-virtual {p0}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->getSizeNoTag()I

    move-result v0

    .line 62
    .local v0, "size":I
    invoke-static {v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    iget v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->tag:I

    invoke-static {v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    return v0
.end method

.method public getSizeNoTag()I
    .registers 7

    .line 73
    invoke-virtual {p0}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->getPropertiesSize()I

    move-result v0

    .line 74
    .local v0, "size":I
    iget-object v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->children:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    .local v1, "arr$":[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_8
    if-ge v3, v2, :cond_14

    aget-object v4, v1, v3

    .line 75
    .local v4, "child":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    invoke-virtual {v4}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->getSize()I

    move-result v5

    add-int/2addr v0, v5

    .line 74
    .end local v4    # "child":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 77
    .end local v1    # "arr$":[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_14
    return v0
.end method

.method public write(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .registers 6
    .param p1, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->tag:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    .line 88
    invoke-virtual {p0}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->getSizeNoTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->writeProperties(Lcom/crashlytics/android/core/CodedOutputStream;)V

    .line 90
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->children:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    .local v0, "arr$":[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_14
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    .line 91
    .local v3, "child":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    invoke-virtual {v3, p1}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->write(Lcom/crashlytics/android/core/CodedOutputStream;)V

    .line 90
    .end local v3    # "child":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 93
    .end local v0    # "arr$":[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1e
    return-void
.end method

.method public writeProperties(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .registers 2
    .param p1, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    return-void
.end method

###### Class com.crashlytics.android.core.NativeCrashWriter.RepeatedMessage (com.crashlytics.android.core.NativeCrashWriter$RepeatedMessage)
.class final Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;
.super Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RepeatedMessage"
.end annotation


# instance fields
.field private final messages:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;


# direct methods
.method public varargs constructor <init>([Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V
    .registers 4
    .param p1, "messages"    # [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    .line 127
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    .line 128
    iput-object p1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;->messages:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    .line 129
    return-void
.end method


# virtual methods
.method public getSize()I
    .registers 7

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "size":I
    iget-object v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;->messages:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    .local v1, "arr$":[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_5
    if-ge v3, v2, :cond_11

    aget-object v4, v1, v3

    .line 142
    .local v4, "message":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    invoke-virtual {v4}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->getSize()I

    move-result v5

    add-int/2addr v0, v5

    .line 141
    .end local v4    # "message":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 144
    .end local v1    # "arr$":[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_11
    return v0
.end method

.method public write(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .registers 6
    .param p1, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;->messages:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    .local v0, "arr$":[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 134
    .local v3, "message":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    invoke-virtual {v3, p1}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->write(Lcom/crashlytics/android/core/CodedOutputStream;)V

    .line 133
    .end local v3    # "message":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 136
    .end local v0    # "arr$":[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_e
    return-void
.end method

###### Class com.crashlytics.android.core.NativeCrashWriter.SignalMessage (com.crashlytics.android.core.NativeCrashWriter$SignalMessage)
.class final Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;
.super Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SignalMessage"
.end annotation


# static fields
.field private static final PROTOBUF_TAG:I = 0x3


# instance fields
.field private final sigAddr:J

.field private final sigCode:Ljava/lang/String;

.field private final sigName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/internal/models/SignalData;)V
    .registers 4
    .param p1, "signalData"    # Lcom/crashlytics/android/core/internal/models/SignalData;

    .line 396
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    .line 397
    iget-object v0, p1, Lcom/crashlytics/android/core/internal/models/SignalData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;->sigName:Ljava/lang/String;

    .line 398
    iget-object v0, p1, Lcom/crashlytics/android/core/internal/models/SignalData;->code:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;->sigCode:Ljava/lang/String;

    .line 399
    iget-wide v0, p1, Lcom/crashlytics/android/core/internal/models/SignalData;->faultAddress:J

    iput-wide v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;->sigAddr:J

    .line 400
    return-void
.end method


# virtual methods
.method public getPropertiesSize()I
    .registers 5

    .line 404
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;->sigName:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v0

    .line 405
    .local v0, "size":I
    iget-object v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;->sigCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 406
    iget-wide v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;->sigAddr:J

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 407
    return v0
.end method

.method public writeProperties(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .registers 5
    .param p1, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;->sigName:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 413
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;->sigCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 414
    iget-wide v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$SignalMessage;->sigAddr:J

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    .line 415
    return-void
.end method

###### Class com.crashlytics.android.core.NativeCrashWriter.ThreadMessage (com.crashlytics.android.core.NativeCrashWriter$ThreadMessage)
.class final Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;
.super Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadMessage"
.end annotation


# static fields
.field private static final PROTOBUF_TAG:I = 0x1


# instance fields
.field private final importance:I

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/internal/models/ThreadData;Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;)V
    .registers 6
    .param p1, "threadData"    # Lcom/crashlytics/android/core/internal/models/ThreadData;
    .param p2, "frames"    # Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;

    .line 317
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    .line 318
    iget-object v0, p1, Lcom/crashlytics/android/core/internal/models/ThreadData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;->name:Ljava/lang/String;

    .line 319
    iget v0, p1, Lcom/crashlytics/android/core/internal/models/ThreadData;->importance:I

    iput v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;->importance:I

    .line 320
    return-void
.end method

.method private hasName()Z
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;->name:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method public getPropertiesSize()I
    .registers 4

    .line 324
    invoke-direct {p0}, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;->hasName()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 326
    .local v0, "nameSize":I
    :goto_13
    const/4 v1, 0x2

    iget v2, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;->importance:I

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public writeProperties(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .registers 4
    .param p1, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    invoke-direct {p0}, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;->hasName()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 332
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    .line 334
    :cond_10
    const/4 v0, 0x2

    iget v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;->importance:I

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    .line 335
    return-void
.end method
