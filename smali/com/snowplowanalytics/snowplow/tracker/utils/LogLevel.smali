###### Class com.snowplowanalytics.snowplow.tracker.utils.LogLevel (com.snowplowanalytics.snowplow.tracker.utils.LogLevel)
.class public final enum Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

.field public static final enum DEBUG:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

.field public static final enum ERROR:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

.field public static final enum OFF:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

.field public static final enum VERBOSE:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;


# instance fields
.field private level:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 23
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;->OFF:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    .line 28
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    const-string v1, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;->ERROR:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    .line 33
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    const-string v1, "DEBUG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;->DEBUG:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    .line 38
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    const-string v1, "VERBOSE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;->VERBOSE:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;->OFF:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;->ERROR:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;->DEBUG:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;->VERBOSE:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;->$VALUES:[Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "c"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;->level:I

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;
    .registers 1

    .line 18
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;->$VALUES:[Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    invoke-virtual {v0}, [Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;->level:I

    return v0
.end method
