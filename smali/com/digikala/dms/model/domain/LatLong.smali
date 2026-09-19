###### Class com.digikala.dms.model.domain.LatLong (com.digikala.dms.model.domain.LatLong)
.class public Lcom/digikala/dms/model/domain/LatLong;
.super Lio/realm/RealmObject;
.source "LatLong.java"

# interfaces
.implements Lio/realm/com_digikala_dms_model_domain_LatLongRealmProxyInterface;


# instance fields
.field private latitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Latitude"
    .end annotation
.end field

.field private longitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Longitude"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 20
    :cond_d
    return-void
.end method

.method public constructor <init>(DD)V
    .registers 6
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 22
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 23
    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/model/domain/LatLong;->realmSet$latitude(D)V

    .line 24
    invoke-virtual {p0, p3, p4}, Lcom/digikala/dms/model/domain/LatLong;->realmSet$longitude(D)V

    .line 25
    return-void
.end method


# virtual methods
.method public getLatitude()D
    .registers 3

    .line 28
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/LatLong;->realmGet$latitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .line 36
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/LatLong;->realmGet$longitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$latitude()D
    .registers 3

    iget-wide v0, p0, Lcom/digikala/dms/model/domain/LatLong;->latitude:D

    return-wide v0
.end method

.method public realmGet$longitude()D
    .registers 3

    iget-wide v0, p0, Lcom/digikala/dms/model/domain/LatLong;->longitude:D

    return-wide v0
.end method

.method public realmSet$latitude(D)V
    .registers 3

    iput-wide p1, p0, Lcom/digikala/dms/model/domain/LatLong;->latitude:D

    return-void
.end method

.method public realmSet$longitude(D)V
    .registers 3

    iput-wide p1, p0, Lcom/digikala/dms/model/domain/LatLong;->longitude:D

    return-void
.end method

.method public setLatitude(D)V
    .registers 3
    .param p1, "latitude"    # D

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/model/domain/LatLong;->realmSet$latitude(D)V

    .line 33
    return-void
.end method

.method public setLongitude(D)V
    .registers 3
    .param p1, "longitude"    # D

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/model/domain/LatLong;->realmSet$longitude(D)V

    .line 41
    return-void
.end method
