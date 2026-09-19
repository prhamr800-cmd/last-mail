###### Class io.realm.com_digikala_dms_model_domain_BatchRealmProxyInterface (io.realm.com_digikala_dms_model_domain_BatchRealmProxyInterface)
.class public interface abstract Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;
.super Ljava/lang/Object;
.source "com_digikala_dms_model_domain_BatchRealmProxyInterface.java"


# virtual methods
.method public abstract realmGet$id()Ljava/lang/String;
.end method

.method public abstract realmGet$shipments()Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract realmGet$status()I
.end method

.method public abstract realmSet$id(Ljava/lang/String;)V
.end method

.method public abstract realmSet$shipments(Lio/realm/RealmList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract realmSet$status(I)V
.end method
