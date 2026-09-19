###### Class io.realm.RealmObject (io.realm.RealmObject)
.class public abstract Lio/realm/RealmObject;
.super Ljava/lang/Object;
.source "RealmObject.java"

# interfaces
.implements Lio/realm/RealmModel;
.implements Lio/realm/internal/ManagableObject;


# annotations
.annotation runtime Lio/realm/annotations/RealmClass;
.end annotation


# static fields
.field static final MSG_DELETED_OBJECT:Ljava/lang/String; = "the object is already deleted."

.field static final MSG_DYNAMIC_OBJECT:Ljava/lang/String; = "the object is an instance of DynamicRealmObject. Use DynamicRealmObject.getDynamicRealm() instead."

.field static final MSG_NULL_OBJECT:Ljava/lang/String; = "\'model\' is null."


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;",
            "Lio/realm/RealmChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 541
    .local p0, "object":Lio/realm/RealmModel;, "TE;"
    .local p1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<TE;>;"
    new-instance v0, Lio/realm/ProxyState$RealmChangeListenerWrapper;

    invoke-direct {v0, p1}, Lio/realm/ProxyState$RealmChangeListenerWrapper;-><init>(Lio/realm/RealmChangeListener;)V

    invoke-static {p0, v0}, Lio/realm/RealmObject;->addChangeListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V

    .line 542
    return-void
.end method

.method public static addChangeListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;",
            "Lio/realm/RealmObjectChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 485
    .local p0, "object":Lio/realm/RealmModel;, "TE;"
    .local p1, "listener":Lio/realm/RealmObjectChangeListener;, "Lio/realm/RealmObjectChangeListener<TE;>;"
    if-eqz p0, :cond_38

    .line 489
    if-eqz p1, :cond_30

    .line 492
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_28

    .line 493
    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 494
    .local v0, "proxy":Lio/realm/internal/RealmObjectProxy;
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    .line 495
    .local v1, "realm":Lio/realm/BaseRealm;
    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 496
    iget-object v2, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v2, v2, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v3, "Listeners cannot be used on current thread."

    invoke-interface {v2, v3}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 498
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/realm/ProxyState;->addChangeListener(Lio/realm/RealmObjectChangeListener;)V

    .line 499
    .end local v0    # "proxy":Lio/realm/internal/RealmObjectProxy;
    .end local v1    # "realm":Lio/realm/BaseRealm;
    nop

    .line 502
    return-void

    .line 500
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add listener from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asChangesetObservable(Lio/realm/RealmModel;)Lio/reactivex/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)",
            "Lio/reactivex/Observable<",
            "Lio/realm/rx/ObjectChange<",
            "TE;>;>;"
        }
    .end annotation

    .line 761
    .local p0, "object":Lio/realm/RealmModel;, "TE;"
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_51

    .line 762
    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 763
    .local v0, "proxy":Lio/realm/internal/RealmObjectProxy;
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    .line 764
    .local v1, "realm":Lio/realm/BaseRealm;
    instance-of v2, v1, Lio/realm/Realm;

    if-eqz v2, :cond_21

    .line 765
    iget-object v2, v1, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lio/realm/Realm;

    invoke-interface {v2, v3, p0}, Lio/realm/rx/RxObservableFactory;->changesetsFrom(Lio/realm/Realm;Lio/realm/RealmModel;)Lio/reactivex/Observable;

    move-result-object v2

    return-object v2

    .line 766
    :cond_21
    instance-of v2, v1, Lio/realm/DynamicRealm;

    if-eqz v2, :cond_36

    .line 767
    move-object v2, v1

    check-cast v2, Lio/realm/DynamicRealm;

    .line 768
    .local v2, "dynamicRealm":Lio/realm/DynamicRealm;
    move-object v3, p0

    check-cast v3, Lio/realm/DynamicRealmObject;

    .line 769
    .local v3, "dynamicObject":Lio/realm/DynamicRealmObject;
    iget-object v4, v1, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v4}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lio/realm/rx/RxObservableFactory;->changesetsFrom(Lio/realm/DynamicRealm;Lio/realm/DynamicRealmObject;)Lio/reactivex/Observable;

    move-result-object v4

    return-object v4

    .line 771
    .end local v2    # "dynamicRealm":Lio/realm/DynamicRealm;
    .end local v3    # "dynamicObject":Lio/realm/DynamicRealmObject;
    :cond_36
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 776
    .end local v0    # "proxy":Lio/realm/internal/RealmObjectProxy;
    .end local v1    # "realm":Lio/realm/BaseRealm;
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create Observables from unmanaged RealmObjects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asFlowable(Lio/realm/RealmModel;)Lio/reactivex/Flowable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)",
            "Lio/reactivex/Flowable<",
            "TE;>;"
        }
    .end annotation

    .line 719
    .local p0, "object":Lio/realm/RealmModel;, "TE;"
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_51

    .line 720
    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 721
    .local v0, "proxy":Lio/realm/internal/RealmObjectProxy;
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    .line 722
    .local v1, "realm":Lio/realm/BaseRealm;
    instance-of v2, v1, Lio/realm/Realm;

    if-eqz v2, :cond_21

    .line 723
    iget-object v2, v1, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lio/realm/Realm;

    invoke-interface {v2, v3, p0}, Lio/realm/rx/RxObservableFactory;->from(Lio/realm/Realm;Lio/realm/RealmModel;)Lio/reactivex/Flowable;

    move-result-object v2

    return-object v2

    .line 724
    :cond_21
    instance-of v2, v1, Lio/realm/DynamicRealm;

    if-eqz v2, :cond_36

    .line 725
    move-object v2, v1

    check-cast v2, Lio/realm/DynamicRealm;

    .line 726
    .local v2, "dynamicRealm":Lio/realm/DynamicRealm;
    move-object v3, p0

    check-cast v3, Lio/realm/DynamicRealmObject;

    .line 728
    .local v3, "dynamicObject":Lio/realm/DynamicRealmObject;
    iget-object v4, v1, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v4}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lio/realm/rx/RxObservableFactory;->from(Lio/realm/DynamicRealm;Lio/realm/DynamicRealmObject;)Lio/reactivex/Flowable;

    move-result-object v4

    .line 729
    .local v4, "observable":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TE;>;"
    return-object v4

    .line 731
    .end local v2    # "dynamicRealm":Lio/realm/DynamicRealm;
    .end local v3    # "dynamicObject":Lio/realm/DynamicRealmObject;
    .end local v4    # "observable":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TE;>;"
    :cond_36
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 736
    .end local v0    # "proxy":Lio/realm/internal/RealmObjectProxy;
    .end local v1    # "realm":Lio/realm/BaseRealm;
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create Observables from unmanaged RealmObjects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deleteFromRealm(Lio/realm/RealmModel;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)V"
        }
    .end annotation

    .line 99
    .local p0, "object":Lio/realm/RealmModel;, "TE;"
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_53

    .line 104
    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 105
    .local v0, "proxy":Lio/realm/internal/RealmObjectProxy;
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 108
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 112
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 113
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    .line 114
    .local v1, "row":Lio/realm/internal/Row;
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->moveLastOver(J)V

    .line 115
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    sget-object v3, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    invoke-virtual {v2, v3}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 116
    return-void

    .line 109
    .end local v1    # "row":Lio/realm/internal/Row;
    :cond_43
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Object malformed: missing Realm. Make sure to instantiate RealmObjects with Realm.createObject()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_4b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Object malformed: missing object in Realm. Make sure to instantiate RealmObjects with Realm.createObject()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    .end local v0    # "proxy":Lio/realm/internal/RealmObjectProxy;
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object not managed by Realm, so it cannot be removed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRealm(Lio/realm/RealmModel;)Lio/realm/Realm;
    .registers 4
    .param p0, "model"    # Lio/realm/RealmModel;

    .line 319
    if-eqz p0, :cond_34

    .line 322
    instance-of v0, p0, Lio/realm/DynamicRealmObject;

    if-nez v0, :cond_2c

    .line 325
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-nez v0, :cond_c

    .line 326
    const/4 v0, 0x0

    return-object v0

    .line 328
    :cond_c
    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 329
    .local v0, "realm":Lio/realm/BaseRealm;
    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 330
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 334
    move-object v1, v0

    check-cast v1, Lio/realm/Realm;

    return-object v1

    .line 331
    :cond_24
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "the object is already deleted."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    .end local v0    # "realm":Lio/realm/BaseRealm;
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the object is an instance of DynamicRealmObject. Use DynamicRealmObject.getDynamicRealm() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'model\' is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isLoaded(Lio/realm/RealmModel;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)Z"
        }
    .end annotation

    .line 239
    .local p0, "object":Lio/realm/RealmModel;, "TE;"
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1b

    .line 240
    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 241
    .local v0, "proxy":Lio/realm/internal/RealmObjectProxy;
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 242
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->isLoaded()Z

    move-result v1

    return v1

    .line 244
    .end local v0    # "proxy":Lio/realm/internal/RealmObjectProxy;
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method public static isManaged(Lio/realm/RealmModel;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)Z"
        }
    .end annotation

    .line 291
    .local p0, "object":Lio/realm/RealmModel;, "TE;"
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    return v0
.end method

.method public static isValid(Lio/realm/RealmModel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)Z"
        }
    .end annotation

    .line 149
    .local p0, "object":Lio/realm/RealmModel;, "TE;"
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    .line 150
    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 151
    .local v0, "proxy":Lio/realm/internal/RealmObjectProxy;
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    .line 152
    .local v3, "row":Lio/realm/internal/Row;
    if-eqz v3, :cond_1a

    invoke-interface {v3}, Lio/realm/internal/Row;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1

    .line 155
    .end local v0    # "proxy":Lio/realm/internal/RealmObjectProxy;
    .end local v3    # "row":Lio/realm/internal/Row;
    :cond_1c
    if-eqz p0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return v1
.end method

.method public static load(Lio/realm/RealmModel;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)Z"
        }
    .end annotation

    .line 357
    .local p0, "object":Lio/realm/RealmModel;, "TE;"
    invoke-static {p0}, Lio/realm/RealmObject;->isLoaded(Lio/realm/RealmModel;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 358
    return v1

    .line 359
    :cond_8
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_17

    .line 360
    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->load()V

    .line 361
    return v1

    .line 363
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static removeAllChangeListeners(Lio/realm/RealmModel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)V"
        }
    .end annotation

    .line 623
    .local p0, "object":Lio/realm/RealmModel;, "TE;"
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_24

    .line 624
    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 625
    .local v0, "proxy":Lio/realm/internal/RealmObjectProxy;
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    .line 626
    .local v1, "realm":Lio/realm/BaseRealm;
    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 627
    iget-object v2, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v2, v2, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v3, "Listeners cannot be used on current thread."

    invoke-interface {v2, v3}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 628
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->removeAllChangeListeners()V

    .line 629
    .end local v0    # "proxy":Lio/realm/internal/RealmObjectProxy;
    .end local v1    # "realm":Lio/realm/BaseRealm;
    nop

    .line 632
    return-void

    .line 630
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot remove listeners from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static removeChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;",
            "Lio/realm/RealmChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 606
    .local p0, "object":Lio/realm/RealmModel;, "TE;"
    .local p1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<TE;>;"
    new-instance v0, Lio/realm/ProxyState$RealmChangeListenerWrapper;

    invoke-direct {v0, p1}, Lio/realm/ProxyState$RealmChangeListenerWrapper;-><init>(Lio/realm/RealmChangeListener;)V

    invoke-static {p0, v0}, Lio/realm/RealmObject;->removeChangeListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V

    .line 607
    return-void
.end method

.method public static removeChangeListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V
    .registers 6
    .param p1, "listener"    # Lio/realm/RealmObjectChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;",
            "Lio/realm/RealmObjectChangeListener;",
            ")V"
        }
    .end annotation

    .line 577
    .local p0, "object":Lio/realm/RealmModel;, "TE;"
    if-eqz p0, :cond_38

    .line 581
    if-eqz p1, :cond_30

    .line 584
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_28

    .line 585
    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 586
    .local v0, "proxy":Lio/realm/internal/RealmObjectProxy;
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    .line 587
    .local v1, "realm":Lio/realm/BaseRealm;
    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 588
    iget-object v2, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v2, v2, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v3, "Listeners cannot be used on current thread."

    invoke-interface {v2, v3}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 590
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/realm/ProxyState;->removeChangeListener(Lio/realm/RealmObjectChangeListener;)V

    .line 591
    .end local v0    # "proxy":Lio/realm/internal/RealmObjectProxy;
    .end local v1    # "realm":Lio/realm/BaseRealm;
    nop

    .line 594
    return-void

    .line 592
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot remove listener from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addChangeListener(Lio/realm/RealmChangeListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/RealmChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 442
    .local p1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<TE;>;"
    invoke-static {p0, p1}, Lio/realm/RealmObject;->addChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V

    .line 443
    return-void
.end method

.method public final addChangeListener(Lio/realm/RealmObjectChangeListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/RealmObjectChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 403
    .local p1, "listener":Lio/realm/RealmObjectChangeListener;, "Lio/realm/RealmObjectChangeListener<TE;>;"
    invoke-static {p0, p1}, Lio/realm/RealmObject;->addChangeListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V

    .line 404
    return-void
.end method

.method public final asChangesetObservable()Lio/reactivex/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/RealmObject;",
            ">()",
            "Lio/reactivex/Observable<",
            "Lio/realm/rx/ObjectChange<",
            "TE;>;>;"
        }
    .end annotation

    .line 690
    invoke-static {p0}, Lio/realm/RealmObject;->asChangesetObservable(Lio/realm/RealmModel;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final asFlowable()Lio/reactivex/Flowable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/RealmObject;",
            ">()",
            "Lio/reactivex/Flowable<",
            "TE;>;"
        }
    .end annotation

    .line 668
    invoke-static {p0}, Lio/realm/RealmObject;->asFlowable(Lio/realm/RealmModel;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public final deleteFromRealm()V
    .registers 1

    .line 86
    invoke-static {p0}, Lio/realm/RealmObject;->deleteFromRealm(Lio/realm/RealmModel;)V

    .line 87
    return-void
.end method

.method public getRealm()Lio/realm/Realm;
    .registers 2

    .line 304
    invoke-static {p0}, Lio/realm/RealmObject;->getRealm(Lio/realm/RealmModel;)Lio/realm/Realm;

    move-result-object v0

    return-object v0
.end method

.method public final isLoaded()Z
    .registers 2

    .line 197
    invoke-static {p0}, Lio/realm/RealmObject;->isLoaded(Lio/realm/RealmModel;)Z

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .registers 2

    .line 268
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    return v0
.end method

.method public final isValid()Z
    .registers 2

    .line 138
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    return v0
.end method

.method public final load()Z
    .registers 2

    .line 345
    invoke-static {p0}, Lio/realm/RealmObject;->load(Lio/realm/RealmModel;)Z

    move-result v0

    return v0
.end method

.method public final removeAllChangeListeners()V
    .registers 1

    .line 613
    invoke-static {p0}, Lio/realm/RealmObject;->removeAllChangeListeners(Lio/realm/RealmModel;)V

    .line 614
    return-void
.end method

.method public final removeChangeListener(Lio/realm/RealmChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lio/realm/RealmChangeListener;

    .line 563
    invoke-static {p0, p1}, Lio/realm/RealmObject;->removeChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V

    .line 564
    return-void
.end method

.method public final removeChangeListener(Lio/realm/RealmObjectChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lio/realm/RealmObjectChangeListener;

    .line 552
    invoke-static {p0, p1}, Lio/realm/RealmObject;->removeChangeListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V

    .line 553
    return-void
.end method
