###### Class com.digikala.dms.model.domain.Rate (com.digikala.dms.model.domain.Rate)
.class public Lcom/digikala/dms/model/domain/Rate;
.super Lio/realm/RealmObject;
.source "Rate.java"

# interfaces
.implements Lio/realm/com_digikala_dms_model_domain_RateRealmProxyInterface;


# instance fields
.field private delta:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Delta"
    .end annotation
.end field

.field private rate:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Rate"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_d
    return-void
.end method


# virtual methods
.method public getDelta()D
    .registers 3

    .line 26
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Rate;->realmGet$delta()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRate()D
    .registers 3

    .line 18
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Rate;->realmGet$rate()D

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$delta()D
    .registers 3

    iget-wide v0, p0, Lcom/digikala/dms/model/domain/Rate;->delta:D

    return-wide v0
.end method

.method public realmGet$rate()D
    .registers 3

    iget-wide v0, p0, Lcom/digikala/dms/model/domain/Rate;->rate:D

    return-wide v0
.end method

.method public realmSet$delta(D)V
    .registers 3

    iput-wide p1, p0, Lcom/digikala/dms/model/domain/Rate;->delta:D

    return-void
.end method

.method public realmSet$rate(D)V
    .registers 3

    iput-wide p1, p0, Lcom/digikala/dms/model/domain/Rate;->rate:D

    return-void
.end method

.method public setDelta(D)V
    .registers 3
    .param p1, "delta"    # D

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/model/domain/Rate;->realmSet$delta(D)V

    .line 31
    return-void
.end method

.method public setRate(D)V
    .registers 3
    .param p1, "rate"    # D

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/model/domain/Rate;->realmSet$rate(D)V

    .line 23
    return-void
.end method
