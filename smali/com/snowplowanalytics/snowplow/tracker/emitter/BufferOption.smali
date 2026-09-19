###### Class com.snowplowanalytics.snowplow.tracker.emitter.BufferOption (com.snowplowanalytics.snowplow.tracker.emitter.BufferOption)
.class public final enum Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;
.super Ljava/lang/Enum;
.source "BufferOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

.field public static final enum DefaultGroup:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

.field public static final enum HeavyGroup:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

.field public static final enum Single:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 24
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    const-string v1, "Single"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;->Single:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    .line 30
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    const-string v1, "DefaultGroup"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v3, v4}, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;->DefaultGroup:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    .line 36
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    const-string v1, "HeavyGroup"

    const/4 v4, 0x2

    const/16 v5, 0x19

    invoke-direct {v0, v1, v4, v5}, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;->HeavyGroup:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;->Single:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;->DefaultGroup:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;->HeavyGroup:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;->$VALUES:[Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

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

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;->code:I

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    return-object v0
.end method

.method public static values()[Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;
    .registers 1

    .line 19
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;->$VALUES:[Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    invoke-virtual {v0}, [Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;->code:I

    return v0
.end method
