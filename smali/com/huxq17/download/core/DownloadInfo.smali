###### Class com.huxq17.download.core.DownloadInfo (com.huxq17.download.core.DownloadInfo)
.class public final Lcom/huxq17/download/core/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huxq17/download/core/DownloadInfo$Status;
    }
.end annotation


# instance fields
.field private final completedSize:J

.field private final contentLength:J

.field private final createTime:J

.field private downloadDetailsInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

.field private final downloadFile:Ljava/io/File;

.field private final errorCode:Lcom/huxq17/download/ErrorCode;

.field private final finished:I

.field private final id:Ljava/lang/String;

.field private final progress:I

.field private final speed:Ljava/lang/String;

.field private final status:Lcom/huxq17/download/core/DownloadInfo$Status;

.field private final tag:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLcom/huxq17/download/ErrorCode;Lcom/huxq17/download/core/DownloadInfo$Status;IILcom/huxq17/download/core/DownloadDetailsInfo;)V
    .registers 33
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "downloadFile"    # Ljava/io/File;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;
    .param p5, "createTime"    # J
    .param p7, "speed"    # Ljava/lang/String;
    .param p8, "completedSize"    # J
    .param p10, "contentLength"    # J
    .param p12, "errorCode"    # Lcom/huxq17/download/ErrorCode;
    .param p13, "status"    # Lcom/huxq17/download/core/DownloadInfo$Status;
    .param p14, "finished"    # I
    .param p15, "progress"    # I
    .param p16, "downloadDetailsInfo"    # Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 27
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/huxq17/download/core/DownloadInfo;->url:Ljava/lang/String;

    .line 29
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/huxq17/download/core/DownloadInfo;->downloadFile:Ljava/io/File;

    .line 30
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/huxq17/download/core/DownloadInfo;->tag:Ljava/lang/String;

    .line 31
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/huxq17/download/core/DownloadInfo;->id:Ljava/lang/String;

    .line 32
    move-wide/from16 v5, p5

    iput-wide v5, v0, Lcom/huxq17/download/core/DownloadInfo;->createTime:J

    .line 33
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/huxq17/download/core/DownloadInfo;->speed:Ljava/lang/String;

    .line 34
    move-wide/from16 v8, p8

    iput-wide v8, v0, Lcom/huxq17/download/core/DownloadInfo;->completedSize:J

    .line 35
    move-wide/from16 v10, p10

    iput-wide v10, v0, Lcom/huxq17/download/core/DownloadInfo;->contentLength:J

    .line 36
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/huxq17/download/core/DownloadInfo;->errorCode:Lcom/huxq17/download/ErrorCode;

    .line 37
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/huxq17/download/core/DownloadInfo;->status:Lcom/huxq17/download/core/DownloadInfo$Status;

    .line 38
    move/from16 v14, p14

    iput v14, v0, Lcom/huxq17/download/core/DownloadInfo;->finished:I

    .line 39
    move/from16 v15, p15

    iput v15, v0, Lcom/huxq17/download/core/DownloadInfo;->progress:I

    .line 40
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/huxq17/download/core/DownloadInfo;->downloadDetailsInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 41
    return-void
.end method


# virtual methods
.method public getCompletedSize()J
    .registers 3

    .line 92
    iget-wide v0, p0, Lcom/huxq17/download/core/DownloadInfo;->completedSize:J

    return-wide v0
.end method

.method public getContentLength()J
    .registers 3

    .line 96
    iget-wide v0, p0, Lcom/huxq17/download/core/DownloadInfo;->contentLength:J

    return-wide v0
.end method

.method public getCreateTime()J
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/huxq17/download/core/DownloadInfo;->createTime:J

    return-wide v0
.end method

.method getDownloadDetailsInfo()Lcom/huxq17/download/core/DownloadDetailsInfo;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfo;->downloadDetailsInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    return-object v0
.end method

.method public getErrorCode()Lcom/huxq17/download/ErrorCode;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfo;->errorCode:Lcom/huxq17/download/ErrorCode;

    return-object v0
.end method

.method public getExtraData()Ljava/lang/Object;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfo;->downloadDetailsInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getWfExtraData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfo;->downloadFile:Ljava/io/File;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfo;->downloadFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getFinished()I
    .registers 2

    .line 108
    iget v0, p0, Lcom/huxq17/download/core/DownloadInfo;->finished:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMD5()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfo;->downloadDetailsInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getMd5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfo;->downloadFile:Ljava/io/File;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfo;->downloadFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getProgress()I
    .registers 2

    .line 100
    iget v0, p0, Lcom/huxq17/download/core/DownloadInfo;->progress:I

    return v0
.end method

.method public getSpeed()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfo;->speed:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/huxq17/download/core/DownloadInfo$Status;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfo;->status:Lcom/huxq17/download/core/DownloadInfo$Status;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfo;->tag:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfo;->tag:Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isFinished()Z
    .registers 3

    .line 112
    iget v0, p0, Lcom/huxq17/download/core/DownloadInfo;->finished:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isRunning()Z
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfo;->status:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadInfo$Status;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setErrorCode(Lcom/huxq17/download/ErrorCode;)V
    .registers 4
    .param p1, "errorCode"    # Lcom/huxq17/download/ErrorCode;

    .line 120
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfo;->downloadDetailsInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setErrorCode(Lcom/huxq17/download/ErrorCode;Z)V

    .line 121
    return-void
.end method

.method public setExtraData(Ljava/lang/Object;)V
    .registers 3
    .param p1, "extraData"    # Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfo;->downloadDetailsInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0, p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setExtraData(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public updateFilePath(Ljava/lang/String;)V
    .registers 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadInfo;->downloadDetailsInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0, p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->updateFilePath(Ljava/lang/String;)V

    .line 49
    return-void
.end method

###### Class com.huxq17.download.core.DownloadInfo.Status (com.huxq17.download.core.DownloadInfo$Status)
.class public final enum Lcom/huxq17/download/core/DownloadInfo$Status;
.super Ljava/lang/Enum;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huxq17/download/core/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huxq17/download/core/DownloadInfo$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huxq17/download/core/DownloadInfo$Status;

.field public static final enum DELETED:Lcom/huxq17/download/core/DownloadInfo$Status;

.field public static final enum FAILED:Lcom/huxq17/download/core/DownloadInfo$Status;

.field public static final enum FINISHED:Lcom/huxq17/download/core/DownloadInfo$Status;

.field public static final enum PAUSED:Lcom/huxq17/download/core/DownloadInfo$Status;

.field public static final enum PAUSING:Lcom/huxq17/download/core/DownloadInfo$Status;

.field public static final enum RUNNING:Lcom/huxq17/download/core/DownloadInfo$Status;

.field public static final enum STOPPED:Lcom/huxq17/download/core/DownloadInfo$Status;

.field public static final enum WAIT:Lcom/huxq17/download/core/DownloadInfo$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 128
    new-instance v0, Lcom/huxq17/download/core/DownloadInfo$Status;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huxq17/download/core/DownloadInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huxq17/download/core/DownloadInfo$Status;->STOPPED:Lcom/huxq17/download/core/DownloadInfo$Status;

    new-instance v0, Lcom/huxq17/download/core/DownloadInfo$Status;

    const-string v1, "WAIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huxq17/download/core/DownloadInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huxq17/download/core/DownloadInfo$Status;->WAIT:Lcom/huxq17/download/core/DownloadInfo$Status;

    new-instance v0, Lcom/huxq17/download/core/DownloadInfo$Status;

    const-string v1, "RUNNING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huxq17/download/core/DownloadInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huxq17/download/core/DownloadInfo$Status;->RUNNING:Lcom/huxq17/download/core/DownloadInfo$Status;

    new-instance v0, Lcom/huxq17/download/core/DownloadInfo$Status;

    const-string v1, "PAUSING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huxq17/download/core/DownloadInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huxq17/download/core/DownloadInfo$Status;->PAUSING:Lcom/huxq17/download/core/DownloadInfo$Status;

    new-instance v0, Lcom/huxq17/download/core/DownloadInfo$Status;

    const-string v1, "PAUSED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/huxq17/download/core/DownloadInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huxq17/download/core/DownloadInfo$Status;->PAUSED:Lcom/huxq17/download/core/DownloadInfo$Status;

    new-instance v0, Lcom/huxq17/download/core/DownloadInfo$Status;

    const-string v1, "FAILED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/huxq17/download/core/DownloadInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huxq17/download/core/DownloadInfo$Status;->FAILED:Lcom/huxq17/download/core/DownloadInfo$Status;

    new-instance v0, Lcom/huxq17/download/core/DownloadInfo$Status;

    const-string v1, "FINISHED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/huxq17/download/core/DownloadInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huxq17/download/core/DownloadInfo$Status;->FINISHED:Lcom/huxq17/download/core/DownloadInfo$Status;

    new-instance v0, Lcom/huxq17/download/core/DownloadInfo$Status;

    const-string v1, "DELETED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/huxq17/download/core/DownloadInfo$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huxq17/download/core/DownloadInfo$Status;->DELETED:Lcom/huxq17/download/core/DownloadInfo$Status;

    .line 127
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/huxq17/download/core/DownloadInfo$Status;

    sget-object v1, Lcom/huxq17/download/core/DownloadInfo$Status;->STOPPED:Lcom/huxq17/download/core/DownloadInfo$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huxq17/download/core/DownloadInfo$Status;->WAIT:Lcom/huxq17/download/core/DownloadInfo$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huxq17/download/core/DownloadInfo$Status;->RUNNING:Lcom/huxq17/download/core/DownloadInfo$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huxq17/download/core/DownloadInfo$Status;->PAUSING:Lcom/huxq17/download/core/DownloadInfo$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huxq17/download/core/DownloadInfo$Status;->PAUSED:Lcom/huxq17/download/core/DownloadInfo$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huxq17/download/core/DownloadInfo$Status;->FAILED:Lcom/huxq17/download/core/DownloadInfo$Status;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huxq17/download/core/DownloadInfo$Status;->FINISHED:Lcom/huxq17/download/core/DownloadInfo$Status;

    aput-object v1, v0, v8

    sget-object v1, Lcom/huxq17/download/core/DownloadInfo$Status;->DELETED:Lcom/huxq17/download/core/DownloadInfo$Status;

    aput-object v1, v0, v9

    sput-object v0, Lcom/huxq17/download/core/DownloadInfo$Status;->$VALUES:[Lcom/huxq17/download/core/DownloadInfo$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadInfo$Status;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 127
    const-class v0, Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/DownloadInfo$Status;

    return-object v0
.end method

.method public static values()[Lcom/huxq17/download/core/DownloadInfo$Status;
    .registers 1

    .line 127
    sget-object v0, Lcom/huxq17/download/core/DownloadInfo$Status;->$VALUES:[Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {v0}, [Lcom/huxq17/download/core/DownloadInfo$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huxq17/download/core/DownloadInfo$Status;

    return-object v0
.end method


# virtual methods
.method public isCanceled()Z
    .registers 3

    .line 140
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadInfo$Status;->ordinal()I

    move-result v0

    sget-object v1, Lcom/huxq17/download/core/DownloadInfo$Status;->PAUSING:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {v1}, Lcom/huxq17/download/core/DownloadInfo$Status;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1a

    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadInfo$Status;->ordinal()I

    move-result v0

    sget-object v1, Lcom/huxq17/download/core/DownloadInfo$Status;->PAUSED:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {v1}, Lcom/huxq17/download/core/DownloadInfo$Status;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public isRunning()Z
    .registers 3

    .line 131
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadInfo$Status;->ordinal()I

    move-result v0

    sget-object v1, Lcom/huxq17/download/core/DownloadInfo$Status;->WAIT:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {v1}, Lcom/huxq17/download/core/DownloadInfo$Status;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1a

    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadInfo$Status;->ordinal()I

    move-result v0

    sget-object v1, Lcom/huxq17/download/core/DownloadInfo$Status;->RUNNING:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {v1}, Lcom/huxq17/download/core/DownloadInfo$Status;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public shouldStop()Z
    .registers 3

    .line 135
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadInfo$Status;->ordinal()I

    move-result v0

    sget-object v1, Lcom/huxq17/download/core/DownloadInfo$Status;->STOPPED:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {v1}, Lcom/huxq17/download/core/DownloadInfo$Status;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_1a

    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadInfo$Status;->ordinal()I

    move-result v0

    sget-object v1, Lcom/huxq17/download/core/DownloadInfo$Status;->FAILED:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {v1}, Lcom/huxq17/download/core/DownloadInfo$Status;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method
