###### Class com.snowplowanalytics.snowplow.tracker.DevicePlatforms (com.snowplowanalytics.snowplow.tracker.DevicePlatforms)
.class public final enum Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;
.super Ljava/lang/Enum;
.source "DevicePlatforms.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

.field public static final enum ConnectedTV:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

.field public static final enum Desktop:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

.field public static final enum GameConsole:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

.field public static final enum General:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

.field public static final enum InternetOfThings:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

.field public static final enum Mobile:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

.field public static final enum ServerSideApp:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

.field public static final enum Web:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 21
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    const-string v1, "Web"

    const-string/jumbo v2, "web"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->Web:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    .line 22
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    const-string v1, "Mobile"

    const-string v2, "mob"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->Mobile:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    .line 23
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    const-string v1, "Desktop"

    const-string v2, "pc"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->Desktop:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    .line 24
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    const-string v1, "ServerSideApp"

    const-string v2, "srv"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->ServerSideApp:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    .line 25
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    const-string v1, "General"

    const-string v2, "app"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->General:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    .line 26
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    const-string v1, "ConnectedTV"

    const-string/jumbo v2, "tv"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->ConnectedTV:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    .line 27
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    const-string v1, "GameConsole"

    const-string v2, "cnsl"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->GameConsole:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    .line 28
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    const-string v1, "InternetOfThings"

    const-string v2, "iot"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->InternetOfThings:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    .line 19
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->Web:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->Mobile:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->Desktop:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->ServerSideApp:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->General:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->ConnectedTV:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    aput-object v1, v0, v8

    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->GameConsole:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    aput-object v1, v0, v9

    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->InternetOfThings:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    aput-object v1, v0, v10

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->$VALUES:[Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->value:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    return-object v0
.end method

.method public static values()[Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;
    .registers 1

    .line 19
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->$VALUES:[Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    invoke-virtual {v0}, [Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->value:Ljava/lang/String;

    return-object v0
.end method
