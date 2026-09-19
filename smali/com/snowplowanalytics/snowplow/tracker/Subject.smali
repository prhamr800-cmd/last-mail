###### Class com.snowplowanalytics.snowplow.tracker.Subject (com.snowplowanalytics.snowplow.tracker.Subject)
.class public Lcom/snowplowanalytics/snowplow/tracker/Subject;
.super Ljava/lang/Object;
.source "Subject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private standardPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/snowplowanalytics/snowplow/tracker/Subject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/Subject;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;)V
    .registers 5
    .param p1, "builder"    # Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Subject;->standardPairs:Ljava/util/HashMap;

    .line 71
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/Subject;->setDefaultTimezone()V

    .line 72
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/Subject;->setDefaultLanguage()V

    .line 73
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 74
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snowplowanalytics/snowplow/tracker/Subject;->setDefaultScreenResolution(Landroid/content/Context;)V

    .line 76
    :cond_1d
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Subject;->TAG:Ljava/lang/String;

    const-string v1, "Subject created successfully."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;Lcom/snowplowanalytics/snowplow/tracker/Subject$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;
    .param p2, "x1"    # Lcom/snowplowanalytics/snowplow/tracker/Subject$1;

    .line 35
    invoke-direct {p0, p1}, Lcom/snowplowanalytics/snowplow/tracker/Subject;-><init>(Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;)V

    return-void
.end method

.method private setDefaultLanguage()V
    .registers 2

    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snowplowanalytics/snowplow/tracker/Subject;->setLanguage(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private setDefaultTimezone()V
    .registers 3

    .line 86
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 87
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/snowplowanalytics/snowplow/tracker/Subject;->setTimezone(Ljava/lang/String;)V

    .line 88
    return-void
.end method


# virtual methods
.method public getSubject()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Subject;->standardPairs:Ljava/util/HashMap;

    return-object v0
.end method

.method public setColorDepth(I)V
    .registers 5
    .param p1, "depth"    # I

    .line 166
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Subject;->standardPairs:Ljava/util/HashMap;

    const-string v1, "cd"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public setDefaultScreenResolution(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    const-string/jumbo v0, "window"

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 109
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 110
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 112
    .local v2, "size":Landroid/graphics/Point;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v3, v4, :cond_23

    .line 113
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 114
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v3, v4}, Lcom/snowplowanalytics/snowplow/tracker/Subject;->setScreenResolution(II)V

    goto :goto_2e

    .line 116
    :cond_23
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/snowplowanalytics/snowplow/tracker/Subject;->setScreenResolution(II)V

    .line 118
    :goto_2e
    return-void
.end method

.method public setDomainUserId(Ljava/lang/String;)V
    .registers 4
    .param p1, "domainUserId"    # Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Subject;->standardPairs:Ljava/util/HashMap;

    const-string v1, "duid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .registers 4
    .param p1, "ipAddress"    # Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Subject;->standardPairs:Ljava/util/HashMap;

    const-string v1, "ip"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 4
    .param p1, "language"    # Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Subject;->standardPairs:Ljava/util/HashMap;

    const-string v1, "lang"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-void
.end method

.method public setNetworkUserId(Ljava/lang/String;)V
    .registers 4
    .param p1, "networkUserId"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Subject;->standardPairs:Ljava/util/HashMap;

    const-string/jumbo v1, "tnuid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void
.end method

.method public setScreenResolution(II)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "res":Ljava/lang/String;
    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Subject;->standardPairs:Ljava/util/HashMap;

    const-string v2, "res"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .registers 4
    .param p1, "timezone"    # Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Subject;->standardPairs:Ljava/util/HashMap;

    const-string/jumbo v1, "tz"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 4
    .param p1, "userId"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Subject;->standardPairs:Ljava/util/HashMap;

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public setUseragent(Ljava/lang/String;)V
    .registers 4
    .param p1, "useragent"    # Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Subject;->standardPairs:Ljava/util/HashMap;

    const-string/jumbo v1, "ua"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method

.method public setViewPort(II)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "res":Ljava/lang/String;
    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Subject;->standardPairs:Ljava/util/HashMap;

    const-string/jumbo v2, "vp"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

###### Class com.snowplowanalytics.snowplow.tracker.Subject.AnonymousClass1 (com.snowplowanalytics.snowplow.tracker.Subject$1)
.class synthetic Lcom/snowplowanalytics/snowplow/tracker/Subject$1;
.super Ljava/lang/Object;
.source "Subject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.snowplowanalytics.snowplow.tracker.Subject.SubjectBuilder (com.snowplowanalytics.snowplow.tracker.Subject$SubjectBuilder)
.class public Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;
.super Ljava/lang/Object;
.source "Subject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubjectBuilder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;

    .line 43
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/snowplowanalytics/snowplow/tracker/Subject;
    .registers 3

    .line 61
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/Subject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snowplowanalytics/snowplow/tracker/Subject;-><init>(Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;Lcom/snowplowanalytics/snowplow/tracker/Subject$1;)V

    return-object v0
.end method

.method public context(Landroid/content/Context;)Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;->context:Landroid/content/Context;

    .line 52
    return-object p0
.end method
