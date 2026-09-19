###### Class com.digikala.dms.model.design.TrackingType (com.digikala.dms.model.design.TrackingType)
.class public Lcom/digikala/dms/model/design/TrackingType;
.super Ljava/lang/Object;
.source "TrackingType.java"


# instance fields
.field private hasTrack:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "HasTrack"
    .end annotation
.end field

.field private timeInterval:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TimeInterval"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .registers 3
    .param p1, "hasTrack"    # Ljava/lang/Boolean;
    .param p2, "timeInterval"    # Ljava/lang/Integer;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/digikala/dms/model/design/TrackingType;->hasTrack:Ljava/lang/Boolean;

    .line 18
    iput-object p2, p0, Lcom/digikala/dms/model/design/TrackingType;->timeInterval:Ljava/lang/Integer;

    .line 19
    return-void
.end method


# virtual methods
.method public getHasTrack()Ljava/lang/Boolean;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/digikala/dms/model/design/TrackingType;->hasTrack:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTimeInterval()Ljava/lang/Integer;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/digikala/dms/model/design/TrackingType;->timeInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method public setHasTrack(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "hasTrack"    # Ljava/lang/Boolean;

    .line 26
    iput-object p1, p0, Lcom/digikala/dms/model/design/TrackingType;->hasTrack:Ljava/lang/Boolean;

    .line 27
    return-void
.end method

.method public setTimeInterval(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "timeInterval"    # Ljava/lang/Integer;

    .line 34
    iput-object p1, p0, Lcom/digikala/dms/model/design/TrackingType;->timeInterval:Ljava/lang/Integer;

    .line 35
    return-void
.end method
