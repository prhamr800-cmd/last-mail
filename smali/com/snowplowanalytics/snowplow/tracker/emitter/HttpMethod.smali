###### Class com.snowplowanalytics.snowplow.tracker.emitter.HttpMethod (com.snowplowanalytics.snowplow.tracker.emitter.HttpMethod)
.class public final enum Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

.field public static final enum GET:Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

.field public static final enum POST:Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 23
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;->GET:Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    .line 27
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    const-string v1, "POST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;->POST:Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;->GET:Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;->POST:Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;->$VALUES:[Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    return-object v0
.end method

.method public static values()[Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;
    .registers 1

    .line 19
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;->$VALUES:[Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    invoke-virtual {v0}, [Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    return-object v0
.end method
