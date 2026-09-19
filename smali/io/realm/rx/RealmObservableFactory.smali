###### Class io.realm.rx.RealmObservableFactory (io.realm.rx.RealmObservableFactory)
.class public Lio/realm/rx/RealmObservableFactory;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/rx/RxObservableFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;
    }
.end annotation


# static fields
.field private static final BACK_PRESSURE_STRATEGY:Lio/reactivex/BackpressureStrategy;


# instance fields
.field private listRefs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter<",
            "Lio/realm/RealmList;",
            ">;>;"
        }
    .end annotation
.end field

.field private objectRefs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter<",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private resultsRefs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter<",
            "Lio/realm/RealmResults;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    sget-object v0, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    sput-object v0, Lio/realm/rx/RealmObservableFactory;->BACK_PRESSURE_STRATEGY:Lio/reactivex/BackpressureStrategy;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lio/realm/rx/RealmObservableFactory$1;

    invoke-direct {v0, p0}, Lio/realm/rx/RealmObservableFactory$1;-><init>(Lio/realm/rx/RealmObservableFactory;)V

    iput-object v0, p0, Lio/realm/rx/RealmObservableFactory;->resultsRefs:Ljava/lang/ThreadLocal;

    .line 66
    new-instance v0, Lio/realm/rx/RealmObservableFactory$2;

    invoke-direct {v0, p0}, Lio/realm/rx/RealmObservableFactory$2;-><init>(Lio/realm/rx/RealmObservableFactory;)V

    iput-object v0, p0, Lio/realm/rx/RealmObservableFactory;->listRefs:Ljava/lang/ThreadLocal;

    .line 72
    new-instance v0, Lio/realm/rx/RealmObservableFactory$3;

    invoke-direct {v0, p0}, Lio/realm/rx/RealmObservableFactory$3;-><init>(Lio/realm/rx/RealmObservableFactory;)V

    iput-object v0, p0, Lio/realm/rx/RealmObservableFactory;->objectRefs:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static synthetic access$100(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;
    .registers 2
    .param p0, "x0"    # Lio/realm/rx/RealmObservableFactory;

    .line 55
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory;->resultsRefs:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$200(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;
    .registers 2
    .param p0, "x0"    # Lio/realm/rx/RealmObservableFactory;

    .line 55
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory;->listRefs:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$300(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;
    .registers 2
    .param p0, "x0"    # Lio/realm/rx/RealmObservableFactory;

    .line 55
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory;->objectRefs:Ljava/lang/ThreadLocal;

    return-object v0
.end method


# virtual methods
.method public changesetsFrom(Lio/realm/DynamicRealm;Lio/realm/DynamicRealmObject;)Lio/reactivex/Observable;
    .registers 5
    .param p1, "realm"    # Lio/realm/DynamicRealm;
    .param p2, "object"    # Lio/realm/DynamicRealmObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/DynamicRealmObject;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/realm/rx/ObjectChange<",
            "Lio/realm/DynamicRealmObject;",
            ">;>;"
        }
    .end annotation

    .line 551
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 552
    .local v0, "realmConfig":Lio/realm/RealmConfiguration;
    new-instance v1, Lio/realm/rx/RealmObservableFactory$17;

    invoke-direct {v1, p0, v0, p2}, Lio/realm/rx/RealmObservableFactory$17;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/DynamicRealmObject;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v1

    return-object v1
.end method

.method public changesetsFrom(Lio/realm/DynamicRealm;Lio/realm/RealmList;)Lio/reactivex/Observable;
    .registers 5
    .param p1, "realm"    # Lio/realm/DynamicRealm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/RealmList<",
            "TE;>;)",
            "Lio/reactivex/Observable<",
            "Lio/realm/rx/CollectionChange<",
            "Lio/realm/RealmList<",
            "TE;>;>;>;"
        }
    .end annotation

    .line 405
    .local p2, "list":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 406
    .local v0, "realmConfig":Lio/realm/RealmConfiguration;
    new-instance v1, Lio/realm/rx/RealmObservableFactory$13;

    invoke-direct {v1, p0, v0, p2}, Lio/realm/rx/RealmObservableFactory$13;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmList;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v1

    return-object v1
.end method

.method public changesetsFrom(Lio/realm/DynamicRealm;Lio/realm/RealmResults;)Lio/reactivex/Observable;
    .registers 5
    .param p1, "realm"    # Lio/realm/DynamicRealm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/RealmResults<",
            "TE;>;)",
            "Lio/reactivex/Observable<",
            "Lio/realm/rx/CollectionChange<",
            "Lio/realm/RealmResults<",
            "TE;>;>;>;"
        }
    .end annotation

    .line 259
    .local p2, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 260
    .local v0, "realmConfig":Lio/realm/RealmConfiguration;
    new-instance v1, Lio/realm/rx/RealmObservableFactory$9;

    invoke-direct {v1, p0, v0, p2}, Lio/realm/rx/RealmObservableFactory$9;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmResults;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v1

    return-object v1
.end method

.method public changesetsFrom(Lio/realm/Realm;Lio/realm/RealmList;)Lio/reactivex/Observable;
    .registers 5
    .param p1, "realm"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmList<",
            "TE;>;)",
            "Lio/reactivex/Observable<",
            "Lio/realm/rx/CollectionChange<",
            "Lio/realm/RealmList<",
            "TE;>;>;>;"
        }
    .end annotation

    .line 332
    .local p2, "list":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 333
    .local v0, "realmConfig":Lio/realm/RealmConfiguration;
    new-instance v1, Lio/realm/rx/RealmObservableFactory$11;

    invoke-direct {v1, p0, v0, p2}, Lio/realm/rx/RealmObservableFactory$11;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmList;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v1

    return-object v1
.end method

.method public changesetsFrom(Lio/realm/Realm;Lio/realm/RealmModel;)Lio/reactivex/Observable;
    .registers 5
    .param p1, "realm"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "TE;)",
            "Lio/reactivex/Observable<",
            "Lio/realm/rx/ObjectChange<",
            "TE;>;>;"
        }
    .end annotation

    .line 478
    .local p2, "object":Lio/realm/RealmModel;, "TE;"
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 479
    .local v0, "realmConfig":Lio/realm/RealmConfiguration;
    new-instance v1, Lio/realm/rx/RealmObservableFactory$15;

    invoke-direct {v1, p0, v0, p2}, Lio/realm/rx/RealmObservableFactory$15;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmModel;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v1

    return-object v1
.end method

.method public changesetsFrom(Lio/realm/Realm;Lio/realm/RealmResults;)Lio/reactivex/Observable;
    .registers 5
    .param p1, "realm"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmResults<",
            "TE;>;)",
            "Lio/reactivex/Observable<",
            "Lio/realm/rx/CollectionChange<",
            "Lio/realm/RealmResults<",
            "TE;>;>;>;"
        }
    .end annotation

    .line 186
    .local p2, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 187
    .local v0, "realmConfig":Lio/realm/RealmConfiguration;
    new-instance v1, Lio/realm/rx/RealmObservableFactory$7;

    invoke-direct {v1, p0, v0, p2}, Lio/realm/rx/RealmObservableFactory$7;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmResults;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 597
    instance-of v0, p1, Lio/realm/rx/RealmObservableFactory;

    return v0
.end method

.method public from(Lio/realm/DynamicRealm;)Lio/reactivex/Flowable;
    .registers 5
    .param p1, "realm"    # Lio/realm/DynamicRealm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/DynamicRealm;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lio/realm/DynamicRealm;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 117
    .local v0, "realmConfig":Lio/realm/RealmConfiguration;
    new-instance v1, Lio/realm/rx/RealmObservableFactory$5;

    invoke-direct {v1, p0, v0}, Lio/realm/rx/RealmObservableFactory$5;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;)V

    sget-object v2, Lio/realm/rx/RealmObservableFactory;->BACK_PRESSURE_STRATEGY:Lio/reactivex/BackpressureStrategy;

    invoke-static {v1, v2}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v1

    return-object v1
.end method

.method public from(Lio/realm/DynamicRealm;Lio/realm/DynamicRealmObject;)Lio/reactivex/Flowable;
    .registers 6
    .param p1, "realm"    # Lio/realm/DynamicRealm;
    .param p2, "object"    # Lio/realm/DynamicRealmObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/DynamicRealmObject;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lio/realm/DynamicRealmObject;",
            ">;"
        }
    .end annotation

    .line 514
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 515
    .local v0, "realmConfig":Lio/realm/RealmConfiguration;
    new-instance v1, Lio/realm/rx/RealmObservableFactory$16;

    invoke-direct {v1, p0, v0, p2}, Lio/realm/rx/RealmObservableFactory$16;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/DynamicRealmObject;)V

    sget-object v2, Lio/realm/rx/RealmObservableFactory;->BACK_PRESSURE_STRATEGY:Lio/reactivex/BackpressureStrategy;

    invoke-static {v1, v2}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v1

    return-object v1
.end method

.method public from(Lio/realm/DynamicRealm;Lio/realm/RealmList;)Lio/reactivex/Flowable;
    .registers 6
    .param p1, "realm"    # Lio/realm/DynamicRealm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/RealmList<",
            "TE;>;)",
            "Lio/reactivex/Flowable<",
            "Lio/realm/RealmList<",
            "TE;>;>;"
        }
    .end annotation

    .line 368
    .local p2, "list":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 369
    .local v0, "realmConfig":Lio/realm/RealmConfiguration;
    new-instance v1, Lio/realm/rx/RealmObservableFactory$12;

    invoke-direct {v1, p0, v0, p2}, Lio/realm/rx/RealmObservableFactory$12;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmList;)V

    sget-object v2, Lio/realm/rx/RealmObservableFactory;->BACK_PRESSURE_STRATEGY:Lio/reactivex/BackpressureStrategy;

    invoke-static {v1, v2}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v1

    return-object v1
.end method

.method public from(Lio/realm/DynamicRealm;Lio/realm/RealmResults;)Lio/reactivex/Flowable;
    .registers 6
    .param p1, "realm"    # Lio/realm/DynamicRealm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/RealmResults<",
            "TE;>;)",
            "Lio/reactivex/Flowable<",
            "Lio/realm/RealmResults<",
            "TE;>;>;"
        }
    .end annotation

    .line 222
    .local p2, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 223
    .local v0, "realmConfig":Lio/realm/RealmConfiguration;
    new-instance v1, Lio/realm/rx/RealmObservableFactory$8;

    invoke-direct {v1, p0, v0, p2}, Lio/realm/rx/RealmObservableFactory$8;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmResults;)V

    sget-object v2, Lio/realm/rx/RealmObservableFactory;->BACK_PRESSURE_STRATEGY:Lio/reactivex/BackpressureStrategy;

    invoke-static {v1, v2}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v1

    return-object v1
.end method

.method public from(Lio/realm/Realm;)Lio/reactivex/Flowable;
    .registers 5
    .param p1, "realm"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lio/realm/Realm;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 84
    .local v0, "realmConfig":Lio/realm/RealmConfiguration;
    new-instance v1, Lio/realm/rx/RealmObservableFactory$4;

    invoke-direct {v1, p0, v0}, Lio/realm/rx/RealmObservableFactory$4;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;)V

    sget-object v2, Lio/realm/rx/RealmObservableFactory;->BACK_PRESSURE_STRATEGY:Lio/reactivex/BackpressureStrategy;

    invoke-static {v1, v2}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v1

    return-object v1
.end method

.method public from(Lio/realm/Realm;Lio/realm/RealmList;)Lio/reactivex/Flowable;
    .registers 6
    .param p1, "realm"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmList<",
            "TE;>;)",
            "Lio/reactivex/Flowable<",
            "Lio/realm/RealmList<",
            "TE;>;>;"
        }
    .end annotation

    .line 295
    .local p2, "list":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 296
    .local v0, "realmConfig":Lio/realm/RealmConfiguration;
    new-instance v1, Lio/realm/rx/RealmObservableFactory$10;

    invoke-direct {v1, p0, v0, p2}, Lio/realm/rx/RealmObservableFactory$10;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmList;)V

    sget-object v2, Lio/realm/rx/RealmObservableFactory;->BACK_PRESSURE_STRATEGY:Lio/reactivex/BackpressureStrategy;

    invoke-static {v1, v2}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v1

    return-object v1
.end method

.method public from(Lio/realm/Realm;Lio/realm/RealmModel;)Lio/reactivex/Flowable;
    .registers 6
    .param p1, "realm"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/Realm;",
            "TE;)",
            "Lio/reactivex/Flowable<",
            "TE;>;"
        }
    .end annotation

    .line 441
    .local p2, "object":Lio/realm/RealmModel;, "TE;"
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 442
    .local v0, "realmConfig":Lio/realm/RealmConfiguration;
    new-instance v1, Lio/realm/rx/RealmObservableFactory$14;

    invoke-direct {v1, p0, v0, p2}, Lio/realm/rx/RealmObservableFactory$14;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmModel;)V

    sget-object v2, Lio/realm/rx/RealmObservableFactory;->BACK_PRESSURE_STRATEGY:Lio/reactivex/BackpressureStrategy;

    invoke-static {v1, v2}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v1

    return-object v1
.end method

.method public from(Lio/realm/Realm;Lio/realm/RealmResults;)Lio/reactivex/Flowable;
    .registers 6
    .param p1, "realm"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmResults<",
            "TE;>;)",
            "Lio/reactivex/Flowable<",
            "Lio/realm/RealmResults<",
            "TE;>;>;"
        }
    .end annotation

    .line 149
    .local p2, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 150
    .local v0, "realmConfig":Lio/realm/RealmConfiguration;
    new-instance v1, Lio/realm/rx/RealmObservableFactory$6;

    invoke-direct {v1, p0, v0, p2}, Lio/realm/rx/RealmObservableFactory$6;-><init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmResults;)V

    sget-object v2, Lio/realm/rx/RealmObservableFactory;->BACK_PRESSURE_STRATEGY:Lio/reactivex/BackpressureStrategy;

    invoke-static {v1, v2}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v1

    return-object v1
.end method

.method public from(Lio/realm/DynamicRealm;Lio/realm/RealmQuery;)Lio/reactivex/Single;
    .registers 5
    .param p1, "realm"    # Lio/realm/DynamicRealm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/RealmQuery<",
            "TE;>;)",
            "Lio/reactivex/Single<",
            "Lio/realm/RealmQuery<",
            "TE;>;>;"
        }
    .end annotation

    .line 592
    .local p2, "query":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RealmQuery not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public from(Lio/realm/Realm;Lio/realm/RealmQuery;)Lio/reactivex/Single;
    .registers 5
    .param p1, "realm"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmQuery<",
            "TE;>;)",
            "Lio/reactivex/Single<",
            "Lio/realm/RealmQuery<",
            "TE;>;>;"
        }
    .end annotation

    .line 587
    .local p2, "query":Lio/realm/RealmQuery;, "Lio/realm/RealmQuery<TE;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RealmQuery not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .line 602
    const/16 v0, 0x25

    return v0
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass1 (io.realm.rx.RealmObservableFactory$1)
.class Lio/realm/rx/RealmObservableFactory$1;
.super Ljava/lang/ThreadLocal;
.source "RealmObservableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/rx/RealmObservableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter<",
        "Lio/realm/RealmResults;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/rx/RealmObservableFactory;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory;)V
    .registers 2
    .param p1, "this$0"    # Lio/realm/rx/RealmObservableFactory;

    .line 60
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$1;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter<",
            "Lio/realm/RealmResults;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;-><init>(Lio/realm/rx/RealmObservableFactory$1;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 60
    invoke-virtual {p0}, Lio/realm/rx/RealmObservableFactory$1;->initialValue()Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    move-result-object v0

    return-object v0
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass10 (io.realm.rx.RealmObservableFactory$10)
.class Lio/realm/rx/RealmObservableFactory$10;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory;->from(Lio/realm/Realm;Lio/realm/RealmList;)Lio/reactivex/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableOnSubscribe<",
        "Lio/realm/RealmList<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/rx/RealmObservableFactory;

.field final synthetic val$list:Lio/realm/RealmList;

.field final synthetic val$realmConfig:Lio/realm/RealmConfiguration;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmList;)V
    .registers 4
    .param p1, "this$0"    # Lio/realm/rx/RealmObservableFactory;

    .line 296
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$10;->this$0:Lio/realm/rx/RealmObservableFactory;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$10;->val$realmConfig:Lio/realm/RealmConfiguration;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$10;->val$list:Lio/realm/RealmList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter<",
            "Lio/realm/RealmList<",
            "TE;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 301
    .local p1, "emitter":Lio/reactivex/FlowableEmitter;, "Lio/reactivex/FlowableEmitter<Lio/realm/RealmList<TE;>;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$10;->val$realmConfig:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    .line 302
    .local v0, "observableRealm":Lio/realm/Realm;
    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$10;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v1}, Lio/realm/rx/RealmObservableFactory;->access$200(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$10;->val$list:Lio/realm/RealmList;

    invoke-virtual {v1, v2}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->acquireReference(Ljava/lang/Object;)V

    .line 303
    new-instance v1, Lio/realm/rx/RealmObservableFactory$10$1;

    invoke-direct {v1, p0, p1}, Lio/realm/rx/RealmObservableFactory$10$1;-><init>(Lio/realm/rx/RealmObservableFactory$10;Lio/reactivex/FlowableEmitter;)V

    .line 311
    .local v1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<Lio/realm/RealmList<TE;>;>;"
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$10;->val$list:Lio/realm/RealmList;

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->addChangeListener(Lio/realm/RealmChangeListener;)V

    .line 314
    new-instance v2, Lio/realm/rx/RealmObservableFactory$10$2;

    invoke-direct {v2, p0, v1, v0}, Lio/realm/rx/RealmObservableFactory$10$2;-><init>(Lio/realm/rx/RealmObservableFactory$10;Lio/realm/RealmChangeListener;Lio/realm/Realm;)V

    invoke-static {v2}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/reactivex/FlowableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 324
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$10;->val$list:Lio/realm/RealmList;

    invoke-interface {p1, v2}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 326
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass10.AnonymousClass1 (io.realm.rx.RealmObservableFactory$10$1)
.class Lio/realm/rx/RealmObservableFactory$10$1;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$10;->subscribe(Lio/reactivex/FlowableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/RealmList<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$10;

.field final synthetic val$emitter:Lio/reactivex/FlowableEmitter;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$10;Lio/reactivex/FlowableEmitter;)V
    .registers 3
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$10;

    .line 303
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$10$1;->this$1:Lio/realm/rx/RealmObservableFactory$10;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$10$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "TE;>;)V"
        }
    .end annotation

    .line 306
    .local p1, "results":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$10$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 307
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$10$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$10$1;->this$1:Lio/realm/rx/RealmObservableFactory$10;

    iget-object v1, v1, Lio/realm/rx/RealmObservableFactory$10;->val$list:Lio/realm/RealmList;

    invoke-interface {v0, v1}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 309
    :cond_11
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .registers 2

    .line 303
    check-cast p1, Lio/realm/RealmList;

    invoke-virtual {p0, p1}, Lio/realm/rx/RealmObservableFactory$10$1;->onChange(Lio/realm/RealmList;)V

    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass10.AnonymousClass2 (io.realm.rx.RealmObservableFactory$10$2)
.class Lio/realm/rx/RealmObservableFactory$10$2;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$10;->subscribe(Lio/reactivex/FlowableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$10;

.field final synthetic val$listener:Lio/realm/RealmChangeListener;

.field final synthetic val$observableRealm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$10;Lio/realm/RealmChangeListener;Lio/realm/Realm;)V
    .registers 4
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$10;

    .line 314
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$10$2;->this$1:Lio/realm/rx/RealmObservableFactory$10;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$10$2;->val$listener:Lio/realm/RealmChangeListener;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$10$2;->val$observableRealm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 317
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$10$2;->this$1:Lio/realm/rx/RealmObservableFactory$10;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$10;->val$list:Lio/realm/RealmList;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$10$2;->val$listener:Lio/realm/RealmChangeListener;

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->removeChangeListener(Lio/realm/RealmChangeListener;)V

    .line 318
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$10$2;->val$observableRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 319
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$10$2;->this$1:Lio/realm/rx/RealmObservableFactory$10;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$10;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v0}, Lio/realm/rx/RealmObservableFactory;->access$200(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$10$2;->this$1:Lio/realm/rx/RealmObservableFactory$10;

    iget-object v1, v1, Lio/realm/rx/RealmObservableFactory$10;->val$list:Lio/realm/RealmList;

    invoke-virtual {v0, v1}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->releaseReference(Ljava/lang/Object;)V

    .line 320
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass11 (io.realm.rx.RealmObservableFactory$11)
.class Lio/realm/rx/RealmObservableFactory$11;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory;->changesetsFrom(Lio/realm/Realm;Lio/realm/RealmList;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lio/realm/rx/CollectionChange<",
        "Lio/realm/RealmList<",
        "TE;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/rx/RealmObservableFactory;

.field final synthetic val$list:Lio/realm/RealmList;

.field final synthetic val$realmConfig:Lio/realm/RealmConfiguration;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmList;)V
    .registers 4
    .param p1, "this$0"    # Lio/realm/rx/RealmObservableFactory;

    .line 333
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$11;->this$0:Lio/realm/rx/RealmObservableFactory;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$11;->val$realmConfig:Lio/realm/RealmConfiguration;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$11;->val$list:Lio/realm/RealmList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lio/realm/rx/CollectionChange<",
            "Lio/realm/RealmList<",
            "TE;>;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 338
    .local p1, "emitter":Lio/reactivex/ObservableEmitter;, "Lio/reactivex/ObservableEmitter<Lio/realm/rx/CollectionChange<Lio/realm/RealmList<TE;>;>;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$11;->val$realmConfig:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    .line 339
    .local v0, "observableRealm":Lio/realm/Realm;
    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$11;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v1}, Lio/realm/rx/RealmObservableFactory;->access$200(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$11;->val$list:Lio/realm/RealmList;

    invoke-virtual {v1, v2}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->acquireReference(Ljava/lang/Object;)V

    .line 340
    new-instance v1, Lio/realm/rx/RealmObservableFactory$11$1;

    invoke-direct {v1, p0, p1}, Lio/realm/rx/RealmObservableFactory$11$1;-><init>(Lio/realm/rx/RealmObservableFactory$11;Lio/reactivex/ObservableEmitter;)V

    .line 348
    .local v1, "listener":Lio/realm/OrderedRealmCollectionChangeListener;, "Lio/realm/OrderedRealmCollectionChangeListener<Lio/realm/RealmList<TE;>;>;"
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$11;->val$list:Lio/realm/RealmList;

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->addChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V

    .line 351
    new-instance v2, Lio/realm/rx/RealmObservableFactory$11$2;

    invoke-direct {v2, p0, v1, v0}, Lio/realm/rx/RealmObservableFactory$11$2;-><init>(Lio/realm/rx/RealmObservableFactory$11;Lio/realm/OrderedRealmCollectionChangeListener;Lio/realm/Realm;)V

    invoke-static {v2}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 361
    new-instance v2, Lio/realm/rx/CollectionChange;

    iget-object v3, p0, Lio/realm/rx/RealmObservableFactory$11;->val$list:Lio/realm/RealmList;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lio/realm/rx/CollectionChange;-><init>(Lio/realm/OrderedRealmCollection;Lio/realm/OrderedCollectionChangeSet;)V

    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 362
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass11.AnonymousClass1 (io.realm.rx.RealmObservableFactory$11$1)
.class Lio/realm/rx/RealmObservableFactory$11$1;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/OrderedRealmCollectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$11;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/OrderedRealmCollectionChangeListener<",
        "Lio/realm/RealmList<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$11;

.field final synthetic val$emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$11;Lio/reactivex/ObservableEmitter;)V
    .registers 3
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$11;

    .line 340
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$11$1;->this$1:Lio/realm/rx/RealmObservableFactory$11;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$11$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmList;Lio/realm/OrderedCollectionChangeSet;)V
    .registers 5
    .param p2, "changeSet"    # Lio/realm/OrderedCollectionChangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "TE;>;",
            "Lio/realm/OrderedCollectionChangeSet;",
            ")V"
        }
    .end annotation

    .line 343
    .local p1, "results":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$11$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 344
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$11$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lio/realm/rx/CollectionChange;

    invoke-direct {v1, p1, p2}, Lio/realm/rx/CollectionChange;-><init>(Lio/realm/OrderedRealmCollection;Lio/realm/OrderedCollectionChangeSet;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 346
    :cond_12
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;Lio/realm/OrderedCollectionChangeSet;)V
    .registers 3

    .line 340
    check-cast p1, Lio/realm/RealmList;

    invoke-virtual {p0, p1, p2}, Lio/realm/rx/RealmObservableFactory$11$1;->onChange(Lio/realm/RealmList;Lio/realm/OrderedCollectionChangeSet;)V

    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass11.AnonymousClass2 (io.realm.rx.RealmObservableFactory$11$2)
.class Lio/realm/rx/RealmObservableFactory$11$2;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$11;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$11;

.field final synthetic val$listener:Lio/realm/OrderedRealmCollectionChangeListener;

.field final synthetic val$observableRealm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$11;Lio/realm/OrderedRealmCollectionChangeListener;Lio/realm/Realm;)V
    .registers 4
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$11;

    .line 351
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$11$2;->this$1:Lio/realm/rx/RealmObservableFactory$11;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$11$2;->val$listener:Lio/realm/OrderedRealmCollectionChangeListener;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$11$2;->val$observableRealm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 354
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$11$2;->this$1:Lio/realm/rx/RealmObservableFactory$11;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$11;->val$list:Lio/realm/RealmList;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$11$2;->val$listener:Lio/realm/OrderedRealmCollectionChangeListener;

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->removeChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V

    .line 355
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$11$2;->val$observableRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 356
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$11$2;->this$1:Lio/realm/rx/RealmObservableFactory$11;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$11;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v0}, Lio/realm/rx/RealmObservableFactory;->access$200(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$11$2;->this$1:Lio/realm/rx/RealmObservableFactory$11;

    iget-object v1, v1, Lio/realm/rx/RealmObservableFactory$11;->val$list:Lio/realm/RealmList;

    invoke-virtual {v0, v1}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->releaseReference(Ljava/lang/Object;)V

    .line 357
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass12 (io.realm.rx.RealmObservableFactory$12)
.class Lio/realm/rx/RealmObservableFactory$12;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory;->from(Lio/realm/DynamicRealm;Lio/realm/RealmList;)Lio/reactivex/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableOnSubscribe<",
        "Lio/realm/RealmList<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/rx/RealmObservableFactory;

.field final synthetic val$list:Lio/realm/RealmList;

.field final synthetic val$realmConfig:Lio/realm/RealmConfiguration;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmList;)V
    .registers 4
    .param p1, "this$0"    # Lio/realm/rx/RealmObservableFactory;

    .line 369
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$12;->this$0:Lio/realm/rx/RealmObservableFactory;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$12;->val$realmConfig:Lio/realm/RealmConfiguration;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$12;->val$list:Lio/realm/RealmList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter<",
            "Lio/realm/RealmList<",
            "TE;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 374
    .local p1, "emitter":Lio/reactivex/FlowableEmitter;, "Lio/reactivex/FlowableEmitter<Lio/realm/RealmList<TE;>;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$12;->val$realmConfig:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/DynamicRealm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/DynamicRealm;

    move-result-object v0

    .line 375
    .local v0, "observableRealm":Lio/realm/DynamicRealm;
    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$12;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v1}, Lio/realm/rx/RealmObservableFactory;->access$200(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$12;->val$list:Lio/realm/RealmList;

    invoke-virtual {v1, v2}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->acquireReference(Ljava/lang/Object;)V

    .line 376
    new-instance v1, Lio/realm/rx/RealmObservableFactory$12$1;

    invoke-direct {v1, p0, p1}, Lio/realm/rx/RealmObservableFactory$12$1;-><init>(Lio/realm/rx/RealmObservableFactory$12;Lio/reactivex/FlowableEmitter;)V

    .line 384
    .local v1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<Lio/realm/RealmList<TE;>;>;"
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$12;->val$list:Lio/realm/RealmList;

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->addChangeListener(Lio/realm/RealmChangeListener;)V

    .line 387
    new-instance v2, Lio/realm/rx/RealmObservableFactory$12$2;

    invoke-direct {v2, p0, v1, v0}, Lio/realm/rx/RealmObservableFactory$12$2;-><init>(Lio/realm/rx/RealmObservableFactory$12;Lio/realm/RealmChangeListener;Lio/realm/DynamicRealm;)V

    invoke-static {v2}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/reactivex/FlowableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 397
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$12;->val$list:Lio/realm/RealmList;

    invoke-interface {p1, v2}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 399
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass12.AnonymousClass1 (io.realm.rx.RealmObservableFactory$12$1)
.class Lio/realm/rx/RealmObservableFactory$12$1;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$12;->subscribe(Lio/reactivex/FlowableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/RealmList<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$12;

.field final synthetic val$emitter:Lio/reactivex/FlowableEmitter;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$12;Lio/reactivex/FlowableEmitter;)V
    .registers 3
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$12;

    .line 376
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$12$1;->this$1:Lio/realm/rx/RealmObservableFactory$12;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$12$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "TE;>;)V"
        }
    .end annotation

    .line 379
    .local p1, "results":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$12$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 380
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$12$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$12$1;->this$1:Lio/realm/rx/RealmObservableFactory$12;

    iget-object v1, v1, Lio/realm/rx/RealmObservableFactory$12;->val$list:Lio/realm/RealmList;

    invoke-interface {v0, v1}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 382
    :cond_11
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .registers 2

    .line 376
    check-cast p1, Lio/realm/RealmList;

    invoke-virtual {p0, p1}, Lio/realm/rx/RealmObservableFactory$12$1;->onChange(Lio/realm/RealmList;)V

    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass12.AnonymousClass2 (io.realm.rx.RealmObservableFactory$12$2)
.class Lio/realm/rx/RealmObservableFactory$12$2;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$12;->subscribe(Lio/reactivex/FlowableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$12;

.field final synthetic val$listener:Lio/realm/RealmChangeListener;

.field final synthetic val$observableRealm:Lio/realm/DynamicRealm;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$12;Lio/realm/RealmChangeListener;Lio/realm/DynamicRealm;)V
    .registers 4
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$12;

    .line 387
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$12$2;->this$1:Lio/realm/rx/RealmObservableFactory$12;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$12$2;->val$listener:Lio/realm/RealmChangeListener;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$12$2;->val$observableRealm:Lio/realm/DynamicRealm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 390
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$12$2;->this$1:Lio/realm/rx/RealmObservableFactory$12;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$12;->val$list:Lio/realm/RealmList;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$12$2;->val$listener:Lio/realm/RealmChangeListener;

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->removeChangeListener(Lio/realm/RealmChangeListener;)V

    .line 391
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$12$2;->val$observableRealm:Lio/realm/DynamicRealm;

    invoke-virtual {v0}, Lio/realm/DynamicRealm;->close()V

    .line 392
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$12$2;->this$1:Lio/realm/rx/RealmObservableFactory$12;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$12;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v0}, Lio/realm/rx/RealmObservableFactory;->access$200(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$12$2;->this$1:Lio/realm/rx/RealmObservableFactory$12;

    iget-object v1, v1, Lio/realm/rx/RealmObservableFactory$12;->val$list:Lio/realm/RealmList;

    invoke-virtual {v0, v1}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->releaseReference(Ljava/lang/Object;)V

    .line 393
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass13 (io.realm.rx.RealmObservableFactory$13)
.class Lio/realm/rx/RealmObservableFactory$13;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory;->changesetsFrom(Lio/realm/DynamicRealm;Lio/realm/RealmList;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lio/realm/rx/CollectionChange<",
        "Lio/realm/RealmList<",
        "TE;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/rx/RealmObservableFactory;

.field final synthetic val$list:Lio/realm/RealmList;

.field final synthetic val$realmConfig:Lio/realm/RealmConfiguration;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmList;)V
    .registers 4
    .param p1, "this$0"    # Lio/realm/rx/RealmObservableFactory;

    .line 406
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$13;->this$0:Lio/realm/rx/RealmObservableFactory;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$13;->val$realmConfig:Lio/realm/RealmConfiguration;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$13;->val$list:Lio/realm/RealmList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lio/realm/rx/CollectionChange<",
            "Lio/realm/RealmList<",
            "TE;>;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 411
    .local p1, "emitter":Lio/reactivex/ObservableEmitter;, "Lio/reactivex/ObservableEmitter<Lio/realm/rx/CollectionChange<Lio/realm/RealmList<TE;>;>;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$13;->val$realmConfig:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/DynamicRealm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/DynamicRealm;

    move-result-object v0

    .line 412
    .local v0, "observableRealm":Lio/realm/DynamicRealm;
    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$13;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v1}, Lio/realm/rx/RealmObservableFactory;->access$200(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$13;->val$list:Lio/realm/RealmList;

    invoke-virtual {v1, v2}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->acquireReference(Ljava/lang/Object;)V

    .line 413
    new-instance v1, Lio/realm/rx/RealmObservableFactory$13$1;

    invoke-direct {v1, p0, p1}, Lio/realm/rx/RealmObservableFactory$13$1;-><init>(Lio/realm/rx/RealmObservableFactory$13;Lio/reactivex/ObservableEmitter;)V

    .line 421
    .local v1, "listener":Lio/realm/OrderedRealmCollectionChangeListener;, "Lio/realm/OrderedRealmCollectionChangeListener<Lio/realm/RealmList<TE;>;>;"
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$13;->val$list:Lio/realm/RealmList;

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->addChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V

    .line 424
    new-instance v2, Lio/realm/rx/RealmObservableFactory$13$2;

    invoke-direct {v2, p0, v1, v0}, Lio/realm/rx/RealmObservableFactory$13$2;-><init>(Lio/realm/rx/RealmObservableFactory$13;Lio/realm/OrderedRealmCollectionChangeListener;Lio/realm/DynamicRealm;)V

    invoke-static {v2}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 434
    new-instance v2, Lio/realm/rx/CollectionChange;

    iget-object v3, p0, Lio/realm/rx/RealmObservableFactory$13;->val$list:Lio/realm/RealmList;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lio/realm/rx/CollectionChange;-><init>(Lio/realm/OrderedRealmCollection;Lio/realm/OrderedCollectionChangeSet;)V

    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 435
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass13.AnonymousClass1 (io.realm.rx.RealmObservableFactory$13$1)
.class Lio/realm/rx/RealmObservableFactory$13$1;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/OrderedRealmCollectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$13;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/OrderedRealmCollectionChangeListener<",
        "Lio/realm/RealmList<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$13;

.field final synthetic val$emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$13;Lio/reactivex/ObservableEmitter;)V
    .registers 3
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$13;

    .line 413
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$13$1;->this$1:Lio/realm/rx/RealmObservableFactory$13;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$13$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmList;Lio/realm/OrderedCollectionChangeSet;)V
    .registers 5
    .param p2, "changeSet"    # Lio/realm/OrderedCollectionChangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "TE;>;",
            "Lio/realm/OrderedCollectionChangeSet;",
            ")V"
        }
    .end annotation

    .line 416
    .local p1, "results":Lio/realm/RealmList;, "Lio/realm/RealmList<TE;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$13$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 417
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$13$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lio/realm/rx/CollectionChange;

    invoke-direct {v1, p1, p2}, Lio/realm/rx/CollectionChange;-><init>(Lio/realm/OrderedRealmCollection;Lio/realm/OrderedCollectionChangeSet;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 419
    :cond_12
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;Lio/realm/OrderedCollectionChangeSet;)V
    .registers 3

    .line 413
    check-cast p1, Lio/realm/RealmList;

    invoke-virtual {p0, p1, p2}, Lio/realm/rx/RealmObservableFactory$13$1;->onChange(Lio/realm/RealmList;Lio/realm/OrderedCollectionChangeSet;)V

    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass13.AnonymousClass2 (io.realm.rx.RealmObservableFactory$13$2)
.class Lio/realm/rx/RealmObservableFactory$13$2;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$13;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$13;

.field final synthetic val$listener:Lio/realm/OrderedRealmCollectionChangeListener;

.field final synthetic val$observableRealm:Lio/realm/DynamicRealm;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$13;Lio/realm/OrderedRealmCollectionChangeListener;Lio/realm/DynamicRealm;)V
    .registers 4
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$13;

    .line 424
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$13$2;->this$1:Lio/realm/rx/RealmObservableFactory$13;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$13$2;->val$listener:Lio/realm/OrderedRealmCollectionChangeListener;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$13$2;->val$observableRealm:Lio/realm/DynamicRealm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 427
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$13$2;->this$1:Lio/realm/rx/RealmObservableFactory$13;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$13;->val$list:Lio/realm/RealmList;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$13$2;->val$listener:Lio/realm/OrderedRealmCollectionChangeListener;

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->removeChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V

    .line 428
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$13$2;->val$observableRealm:Lio/realm/DynamicRealm;

    invoke-virtual {v0}, Lio/realm/DynamicRealm;->close()V

    .line 429
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$13$2;->this$1:Lio/realm/rx/RealmObservableFactory$13;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$13;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v0}, Lio/realm/rx/RealmObservableFactory;->access$200(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$13$2;->this$1:Lio/realm/rx/RealmObservableFactory$13;

    iget-object v1, v1, Lio/realm/rx/RealmObservableFactory$13;->val$list:Lio/realm/RealmList;

    invoke-virtual {v0, v1}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->releaseReference(Ljava/lang/Object;)V

    .line 430
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass14 (io.realm.rx.RealmObservableFactory$14)
.class Lio/realm/rx/RealmObservableFactory$14;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory;->from(Lio/realm/Realm;Lio/realm/RealmModel;)Lio/reactivex/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableOnSubscribe<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/rx/RealmObservableFactory;

.field final synthetic val$object:Lio/realm/RealmModel;

.field final synthetic val$realmConfig:Lio/realm/RealmConfiguration;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmModel;)V
    .registers 4
    .param p1, "this$0"    # Lio/realm/rx/RealmObservableFactory;

    .line 442
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$14;->this$0:Lio/realm/rx/RealmObservableFactory;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$14;->val$realmConfig:Lio/realm/RealmConfiguration;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$14;->val$object:Lio/realm/RealmModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter<",
            "TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 447
    .local p1, "emitter":Lio/reactivex/FlowableEmitter;, "Lio/reactivex/FlowableEmitter<TE;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$14;->val$realmConfig:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    .line 448
    .local v0, "observableRealm":Lio/realm/Realm;
    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$14;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v1}, Lio/realm/rx/RealmObservableFactory;->access$300(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$14;->val$object:Lio/realm/RealmModel;

    invoke-virtual {v1, v2}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->acquireReference(Ljava/lang/Object;)V

    .line 449
    new-instance v1, Lio/realm/rx/RealmObservableFactory$14$1;

    invoke-direct {v1, p0, p1}, Lio/realm/rx/RealmObservableFactory$14$1;-><init>(Lio/realm/rx/RealmObservableFactory$14;Lio/reactivex/FlowableEmitter;)V

    .line 457
    .local v1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<TE;>;"
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$14;->val$object:Lio/realm/RealmModel;

    invoke-static {v2, v1}, Lio/realm/RealmObject;->addChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V

    .line 460
    new-instance v2, Lio/realm/rx/RealmObservableFactory$14$2;

    invoke-direct {v2, p0, v1, v0}, Lio/realm/rx/RealmObservableFactory$14$2;-><init>(Lio/realm/rx/RealmObservableFactory$14;Lio/realm/RealmChangeListener;Lio/realm/Realm;)V

    invoke-static {v2}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/reactivex/FlowableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 470
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$14;->val$object:Lio/realm/RealmModel;

    invoke-interface {p1, v2}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 472
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass14.AnonymousClass1 (io.realm.rx.RealmObservableFactory$14$1)
.class Lio/realm/rx/RealmObservableFactory$14$1;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$14;->subscribe(Lio/reactivex/FlowableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$14;

.field final synthetic val$emitter:Lio/reactivex/FlowableEmitter;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$14;Lio/reactivex/FlowableEmitter;)V
    .registers 3
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$14;

    .line 449
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$14$1;->this$1:Lio/realm/rx/RealmObservableFactory$14;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$14$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmModel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 452
    .local p1, "obj":Lio/realm/RealmModel;, "TE;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$14$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 453
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$14$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 455
    :cond_d
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .registers 2

    .line 449
    check-cast p1, Lio/realm/RealmModel;

    invoke-virtual {p0, p1}, Lio/realm/rx/RealmObservableFactory$14$1;->onChange(Lio/realm/RealmModel;)V

    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass14.AnonymousClass2 (io.realm.rx.RealmObservableFactory$14$2)
.class Lio/realm/rx/RealmObservableFactory$14$2;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$14;->subscribe(Lio/reactivex/FlowableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$14;

.field final synthetic val$listener:Lio/realm/RealmChangeListener;

.field final synthetic val$observableRealm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$14;Lio/realm/RealmChangeListener;Lio/realm/Realm;)V
    .registers 4
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$14;

    .line 460
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$14$2;->this$1:Lio/realm/rx/RealmObservableFactory$14;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$14$2;->val$listener:Lio/realm/RealmChangeListener;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$14$2;->val$observableRealm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 463
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$14$2;->this$1:Lio/realm/rx/RealmObservableFactory$14;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$14;->val$object:Lio/realm/RealmModel;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$14$2;->val$listener:Lio/realm/RealmChangeListener;

    invoke-static {v0, v1}, Lio/realm/RealmObject;->removeChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V

    .line 464
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$14$2;->val$observableRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 465
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$14$2;->this$1:Lio/realm/rx/RealmObservableFactory$14;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$14;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v0}, Lio/realm/rx/RealmObservableFactory;->access$300(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$14$2;->this$1:Lio/realm/rx/RealmObservableFactory$14;

    iget-object v1, v1, Lio/realm/rx/RealmObservableFactory$14;->val$object:Lio/realm/RealmModel;

    invoke-virtual {v0, v1}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->releaseReference(Ljava/lang/Object;)V

    .line 466
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass15 (io.realm.rx.RealmObservableFactory$15)
.class Lio/realm/rx/RealmObservableFactory$15;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory;->changesetsFrom(Lio/realm/Realm;Lio/realm/RealmModel;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lio/realm/rx/ObjectChange<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/rx/RealmObservableFactory;

.field final synthetic val$object:Lio/realm/RealmModel;

.field final synthetic val$realmConfig:Lio/realm/RealmConfiguration;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmModel;)V
    .registers 4
    .param p1, "this$0"    # Lio/realm/rx/RealmObservableFactory;

    .line 479
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$15;->this$0:Lio/realm/rx/RealmObservableFactory;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$15;->val$realmConfig:Lio/realm/RealmConfiguration;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$15;->val$object:Lio/realm/RealmModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lio/realm/rx/ObjectChange<",
            "TE;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 484
    .local p1, "emitter":Lio/reactivex/ObservableEmitter;, "Lio/reactivex/ObservableEmitter<Lio/realm/rx/ObjectChange<TE;>;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$15;->val$realmConfig:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    .line 485
    .local v0, "observableRealm":Lio/realm/Realm;
    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$15;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v1}, Lio/realm/rx/RealmObservableFactory;->access$300(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$15;->val$object:Lio/realm/RealmModel;

    invoke-virtual {v1, v2}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->acquireReference(Ljava/lang/Object;)V

    .line 486
    new-instance v1, Lio/realm/rx/RealmObservableFactory$15$1;

    invoke-direct {v1, p0, p1}, Lio/realm/rx/RealmObservableFactory$15$1;-><init>(Lio/realm/rx/RealmObservableFactory$15;Lio/reactivex/ObservableEmitter;)V

    .line 494
    .local v1, "listener":Lio/realm/RealmObjectChangeListener;, "Lio/realm/RealmObjectChangeListener<TE;>;"
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$15;->val$object:Lio/realm/RealmModel;

    invoke-static {v2, v1}, Lio/realm/RealmObject;->addChangeListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V

    .line 497
    new-instance v2, Lio/realm/rx/RealmObservableFactory$15$2;

    invoke-direct {v2, p0, v1, v0}, Lio/realm/rx/RealmObservableFactory$15$2;-><init>(Lio/realm/rx/RealmObservableFactory$15;Lio/realm/RealmObjectChangeListener;Lio/realm/Realm;)V

    invoke-static {v2}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 507
    new-instance v2, Lio/realm/rx/ObjectChange;

    iget-object v3, p0, Lio/realm/rx/RealmObservableFactory$15;->val$object:Lio/realm/RealmModel;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lio/realm/rx/ObjectChange;-><init>(Lio/realm/RealmModel;Lio/realm/ObjectChangeSet;)V

    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 508
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass15.AnonymousClass1 (io.realm.rx.RealmObservableFactory$15$1)
.class Lio/realm/rx/RealmObservableFactory$15$1;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/RealmObjectChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$15;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmObjectChangeListener<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$15;

.field final synthetic val$emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$15;Lio/reactivex/ObservableEmitter;)V
    .registers 3
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$15;

    .line 486
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$15$1;->this$1:Lio/realm/rx/RealmObservableFactory$15;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$15$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmModel;Lio/realm/ObjectChangeSet;)V
    .registers 5
    .param p2, "changeSet"    # Lio/realm/ObjectChangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lio/realm/ObjectChangeSet;",
            ")V"
        }
    .end annotation

    .line 489
    .local p1, "obj":Lio/realm/RealmModel;, "TE;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$15$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 490
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$15$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lio/realm/rx/ObjectChange;

    invoke-direct {v1, p1, p2}, Lio/realm/rx/ObjectChange;-><init>(Lio/realm/RealmModel;Lio/realm/ObjectChangeSet;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 492
    :cond_12
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass15.AnonymousClass2 (io.realm.rx.RealmObservableFactory$15$2)
.class Lio/realm/rx/RealmObservableFactory$15$2;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$15;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$15;

.field final synthetic val$listener:Lio/realm/RealmObjectChangeListener;

.field final synthetic val$observableRealm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$15;Lio/realm/RealmObjectChangeListener;Lio/realm/Realm;)V
    .registers 4
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$15;

    .line 497
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$15$2;->this$1:Lio/realm/rx/RealmObservableFactory$15;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$15$2;->val$listener:Lio/realm/RealmObjectChangeListener;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$15$2;->val$observableRealm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 500
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$15$2;->this$1:Lio/realm/rx/RealmObservableFactory$15;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$15;->val$object:Lio/realm/RealmModel;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$15$2;->val$listener:Lio/realm/RealmObjectChangeListener;

    invoke-static {v0, v1}, Lio/realm/RealmObject;->removeChangeListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V

    .line 501
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$15$2;->val$observableRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 502
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$15$2;->this$1:Lio/realm/rx/RealmObservableFactory$15;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$15;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v0}, Lio/realm/rx/RealmObservableFactory;->access$300(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$15$2;->this$1:Lio/realm/rx/RealmObservableFactory$15;

    iget-object v1, v1, Lio/realm/rx/RealmObservableFactory$15;->val$object:Lio/realm/RealmModel;

    invoke-virtual {v0, v1}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->releaseReference(Ljava/lang/Object;)V

    .line 503
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass16 (io.realm.rx.RealmObservableFactory$16)
.class Lio/realm/rx/RealmObservableFactory$16;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory;->from(Lio/realm/DynamicRealm;Lio/realm/DynamicRealmObject;)Lio/reactivex/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableOnSubscribe<",
        "Lio/realm/DynamicRealmObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/rx/RealmObservableFactory;

.field final synthetic val$object:Lio/realm/DynamicRealmObject;

.field final synthetic val$realmConfig:Lio/realm/RealmConfiguration;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/DynamicRealmObject;)V
    .registers 4
    .param p1, "this$0"    # Lio/realm/rx/RealmObservableFactory;

    .line 515
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$16;->this$0:Lio/realm/rx/RealmObservableFactory;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$16;->val$realmConfig:Lio/realm/RealmConfiguration;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$16;->val$object:Lio/realm/DynamicRealmObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter<",
            "Lio/realm/DynamicRealmObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 520
    .local p1, "emitter":Lio/reactivex/FlowableEmitter;, "Lio/reactivex/FlowableEmitter<Lio/realm/DynamicRealmObject;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$16;->val$realmConfig:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/DynamicRealm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/DynamicRealm;

    move-result-object v0

    .line 521
    .local v0, "observableRealm":Lio/realm/DynamicRealm;
    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$16;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v1}, Lio/realm/rx/RealmObservableFactory;->access$300(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$16;->val$object:Lio/realm/DynamicRealmObject;

    invoke-virtual {v1, v2}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->acquireReference(Ljava/lang/Object;)V

    .line 522
    new-instance v1, Lio/realm/rx/RealmObservableFactory$16$1;

    invoke-direct {v1, p0, p1}, Lio/realm/rx/RealmObservableFactory$16$1;-><init>(Lio/realm/rx/RealmObservableFactory$16;Lio/reactivex/FlowableEmitter;)V

    .line 530
    .local v1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<Lio/realm/DynamicRealmObject;>;"
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$16;->val$object:Lio/realm/DynamicRealmObject;

    invoke-static {v2, v1}, Lio/realm/RealmObject;->addChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V

    .line 533
    new-instance v2, Lio/realm/rx/RealmObservableFactory$16$2;

    invoke-direct {v2, p0, v1, v0}, Lio/realm/rx/RealmObservableFactory$16$2;-><init>(Lio/realm/rx/RealmObservableFactory$16;Lio/realm/RealmChangeListener;Lio/realm/DynamicRealm;)V

    invoke-static {v2}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/reactivex/FlowableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 543
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$16;->val$object:Lio/realm/DynamicRealmObject;

    invoke-interface {p1, v2}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 545
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass16.AnonymousClass1 (io.realm.rx.RealmObservableFactory$16$1)
.class Lio/realm/rx/RealmObservableFactory$16$1;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$16;->subscribe(Lio/reactivex/FlowableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/DynamicRealmObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$16;

.field final synthetic val$emitter:Lio/reactivex/FlowableEmitter;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$16;Lio/reactivex/FlowableEmitter;)V
    .registers 3
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$16;

    .line 522
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$16$1;->this$1:Lio/realm/rx/RealmObservableFactory$16;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$16$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/DynamicRealmObject;)V
    .registers 3
    .param p1, "obj"    # Lio/realm/DynamicRealmObject;

    .line 525
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$16$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 526
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$16$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 528
    :cond_d
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .registers 2

    .line 522
    check-cast p1, Lio/realm/DynamicRealmObject;

    invoke-virtual {p0, p1}, Lio/realm/rx/RealmObservableFactory$16$1;->onChange(Lio/realm/DynamicRealmObject;)V

    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass16.AnonymousClass2 (io.realm.rx.RealmObservableFactory$16$2)
.class Lio/realm/rx/RealmObservableFactory$16$2;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$16;->subscribe(Lio/reactivex/FlowableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$16;

.field final synthetic val$listener:Lio/realm/RealmChangeListener;

.field final synthetic val$observableRealm:Lio/realm/DynamicRealm;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$16;Lio/realm/RealmChangeListener;Lio/realm/DynamicRealm;)V
    .registers 4
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$16;

    .line 533
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$16$2;->this$1:Lio/realm/rx/RealmObservableFactory$16;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$16$2;->val$listener:Lio/realm/RealmChangeListener;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$16$2;->val$observableRealm:Lio/realm/DynamicRealm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 536
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$16$2;->this$1:Lio/realm/rx/RealmObservableFactory$16;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$16;->val$object:Lio/realm/DynamicRealmObject;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$16$2;->val$listener:Lio/realm/RealmChangeListener;

    invoke-static {v0, v1}, Lio/realm/RealmObject;->removeChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V

    .line 537
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$16$2;->val$observableRealm:Lio/realm/DynamicRealm;

    invoke-virtual {v0}, Lio/realm/DynamicRealm;->close()V

    .line 538
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$16$2;->this$1:Lio/realm/rx/RealmObservableFactory$16;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$16;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v0}, Lio/realm/rx/RealmObservableFactory;->access$300(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$16$2;->this$1:Lio/realm/rx/RealmObservableFactory$16;

    iget-object v1, v1, Lio/realm/rx/RealmObservableFactory$16;->val$object:Lio/realm/DynamicRealmObject;

    invoke-virtual {v0, v1}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->releaseReference(Ljava/lang/Object;)V

    .line 539
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass17 (io.realm.rx.RealmObservableFactory$17)
.class Lio/realm/rx/RealmObservableFactory$17;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory;->changesetsFrom(Lio/realm/DynamicRealm;Lio/realm/DynamicRealmObject;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lio/realm/rx/ObjectChange<",
        "Lio/realm/DynamicRealmObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/rx/RealmObservableFactory;

.field final synthetic val$object:Lio/realm/DynamicRealmObject;

.field final synthetic val$realmConfig:Lio/realm/RealmConfiguration;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/DynamicRealmObject;)V
    .registers 4
    .param p1, "this$0"    # Lio/realm/rx/RealmObservableFactory;

    .line 552
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$17;->this$0:Lio/realm/rx/RealmObservableFactory;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$17;->val$realmConfig:Lio/realm/RealmConfiguration;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$17;->val$object:Lio/realm/DynamicRealmObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lio/realm/rx/ObjectChange<",
            "Lio/realm/DynamicRealmObject;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 557
    .local p1, "emitter":Lio/reactivex/ObservableEmitter;, "Lio/reactivex/ObservableEmitter<Lio/realm/rx/ObjectChange<Lio/realm/DynamicRealmObject;>;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$17;->val$realmConfig:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/DynamicRealm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/DynamicRealm;

    move-result-object v0

    .line 558
    .local v0, "observableRealm":Lio/realm/DynamicRealm;
    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$17;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v1}, Lio/realm/rx/RealmObservableFactory;->access$300(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$17;->val$object:Lio/realm/DynamicRealmObject;

    invoke-virtual {v1, v2}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->acquireReference(Ljava/lang/Object;)V

    .line 559
    new-instance v1, Lio/realm/rx/RealmObservableFactory$17$1;

    invoke-direct {v1, p0, p1}, Lio/realm/rx/RealmObservableFactory$17$1;-><init>(Lio/realm/rx/RealmObservableFactory$17;Lio/reactivex/ObservableEmitter;)V

    .line 567
    .local v1, "listener":Lio/realm/RealmObjectChangeListener;, "Lio/realm/RealmObjectChangeListener<Lio/realm/DynamicRealmObject;>;"
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$17;->val$object:Lio/realm/DynamicRealmObject;

    invoke-virtual {v2, v1}, Lio/realm/DynamicRealmObject;->addChangeListener(Lio/realm/RealmObjectChangeListener;)V

    .line 570
    new-instance v2, Lio/realm/rx/RealmObservableFactory$17$2;

    invoke-direct {v2, p0, v1, v0}, Lio/realm/rx/RealmObservableFactory$17$2;-><init>(Lio/realm/rx/RealmObservableFactory$17;Lio/realm/RealmObjectChangeListener;Lio/realm/DynamicRealm;)V

    invoke-static {v2}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 580
    new-instance v2, Lio/realm/rx/ObjectChange;

    iget-object v3, p0, Lio/realm/rx/RealmObservableFactory$17;->val$object:Lio/realm/DynamicRealmObject;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lio/realm/rx/ObjectChange;-><init>(Lio/realm/RealmModel;Lio/realm/ObjectChangeSet;)V

    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 581
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass17.AnonymousClass1 (io.realm.rx.RealmObservableFactory$17$1)
.class Lio/realm/rx/RealmObservableFactory$17$1;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/RealmObjectChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$17;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmObjectChangeListener<",
        "Lio/realm/DynamicRealmObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$17;

.field final synthetic val$emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$17;Lio/reactivex/ObservableEmitter;)V
    .registers 3
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$17;

    .line 559
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$17$1;->this$1:Lio/realm/rx/RealmObservableFactory$17;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$17$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/DynamicRealmObject;Lio/realm/ObjectChangeSet;)V
    .registers 5
    .param p1, "obj"    # Lio/realm/DynamicRealmObject;
    .param p2, "changeSet"    # Lio/realm/ObjectChangeSet;

    .line 562
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$17$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 563
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$17$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lio/realm/rx/ObjectChange;

    invoke-direct {v1, p1, p2}, Lio/realm/rx/ObjectChange;-><init>(Lio/realm/RealmModel;Lio/realm/ObjectChangeSet;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 565
    :cond_12
    return-void
.end method

.method public bridge synthetic onChange(Lio/realm/RealmModel;Lio/realm/ObjectChangeSet;)V
    .registers 3

    .line 559
    check-cast p1, Lio/realm/DynamicRealmObject;

    invoke-virtual {p0, p1, p2}, Lio/realm/rx/RealmObservableFactory$17$1;->onChange(Lio/realm/DynamicRealmObject;Lio/realm/ObjectChangeSet;)V

    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass17.AnonymousClass2 (io.realm.rx.RealmObservableFactory$17$2)
.class Lio/realm/rx/RealmObservableFactory$17$2;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$17;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$17;

.field final synthetic val$listener:Lio/realm/RealmObjectChangeListener;

.field final synthetic val$observableRealm:Lio/realm/DynamicRealm;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$17;Lio/realm/RealmObjectChangeListener;Lio/realm/DynamicRealm;)V
    .registers 4
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$17;

    .line 570
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$17$2;->this$1:Lio/realm/rx/RealmObservableFactory$17;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$17$2;->val$listener:Lio/realm/RealmObjectChangeListener;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$17$2;->val$observableRealm:Lio/realm/DynamicRealm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 573
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$17$2;->this$1:Lio/realm/rx/RealmObservableFactory$17;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$17;->val$object:Lio/realm/DynamicRealmObject;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$17$2;->val$listener:Lio/realm/RealmObjectChangeListener;

    invoke-virtual {v0, v1}, Lio/realm/DynamicRealmObject;->removeChangeListener(Lio/realm/RealmObjectChangeListener;)V

    .line 574
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$17$2;->val$observableRealm:Lio/realm/DynamicRealm;

    invoke-virtual {v0}, Lio/realm/DynamicRealm;->close()V

    .line 575
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$17$2;->this$1:Lio/realm/rx/RealmObservableFactory$17;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$17;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v0}, Lio/realm/rx/RealmObservableFactory;->access$300(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$17$2;->this$1:Lio/realm/rx/RealmObservableFactory$17;

    iget-object v1, v1, Lio/realm/rx/RealmObservableFactory$17;->val$object:Lio/realm/DynamicRealmObject;

    invoke-virtual {v0, v1}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->releaseReference(Ljava/lang/Object;)V

    .line 576
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass2 (io.realm.rx.RealmObservableFactory$2)
.class Lio/realm/rx/RealmObservableFactory$2;
.super Ljava/lang/ThreadLocal;
.source "RealmObservableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/rx/RealmObservableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter<",
        "Lio/realm/RealmList;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/rx/RealmObservableFactory;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory;)V
    .registers 2
    .param p1, "this$0"    # Lio/realm/rx/RealmObservableFactory;

    .line 66
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$2;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter<",
            "Lio/realm/RealmList;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;-><init>(Lio/realm/rx/RealmObservableFactory$1;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 66
    invoke-virtual {p0}, Lio/realm/rx/RealmObservableFactory$2;->initialValue()Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    move-result-object v0

    return-object v0
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass3 (io.realm.rx.RealmObservableFactory$3)
.class Lio/realm/rx/RealmObservableFactory$3;
.super Ljava/lang/ThreadLocal;
.source "RealmObservableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/rx/RealmObservableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter<",
        "Lio/realm/RealmModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/rx/RealmObservableFactory;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory;)V
    .registers 2
    .param p1, "this$0"    # Lio/realm/rx/RealmObservableFactory;

    .line 72
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$3;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter<",
            "Lio/realm/RealmModel;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;-><init>(Lio/realm/rx/RealmObservableFactory$1;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 72
    invoke-virtual {p0}, Lio/realm/rx/RealmObservableFactory$3;->initialValue()Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    move-result-object v0

    return-object v0
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass4 (io.realm.rx.RealmObservableFactory$4)
.class Lio/realm/rx/RealmObservableFactory$4;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory;->from(Lio/realm/Realm;)Lio/reactivex/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableOnSubscribe<",
        "Lio/realm/Realm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/rx/RealmObservableFactory;

.field final synthetic val$realmConfig:Lio/realm/RealmConfiguration;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;)V
    .registers 3
    .param p1, "this$0"    # Lio/realm/rx/RealmObservableFactory;

    .line 84
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$4;->this$0:Lio/realm/rx/RealmObservableFactory;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$4;->val$realmConfig:Lio/realm/RealmConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter<",
            "Lio/realm/Realm;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    .local p1, "emitter":Lio/reactivex/FlowableEmitter;, "Lio/reactivex/FlowableEmitter<Lio/realm/Realm;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$4;->val$realmConfig:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    .line 89
    .local v0, "observableRealm":Lio/realm/Realm;
    new-instance v1, Lio/realm/rx/RealmObservableFactory$4$1;

    invoke-direct {v1, p0, p1}, Lio/realm/rx/RealmObservableFactory$4$1;-><init>(Lio/realm/rx/RealmObservableFactory$4;Lio/reactivex/FlowableEmitter;)V

    .line 97
    .local v1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<Lio/realm/Realm;>;"
    invoke-virtual {v0, v1}, Lio/realm/Realm;->addChangeListener(Lio/realm/RealmChangeListener;)V

    .line 100
    new-instance v2, Lio/realm/rx/RealmObservableFactory$4$2;

    invoke-direct {v2, p0, v0, v1}, Lio/realm/rx/RealmObservableFactory$4$2;-><init>(Lio/realm/rx/RealmObservableFactory$4;Lio/realm/Realm;Lio/realm/RealmChangeListener;)V

    invoke-static {v2}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/reactivex/FlowableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 109
    invoke-interface {p1, v0}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass4.AnonymousClass1 (io.realm.rx.RealmObservableFactory$4$1)
.class Lio/realm/rx/RealmObservableFactory$4$1;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$4;->subscribe(Lio/reactivex/FlowableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/Realm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$4;

.field final synthetic val$emitter:Lio/reactivex/FlowableEmitter;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$4;Lio/reactivex/FlowableEmitter;)V
    .registers 3
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$4;

    .line 89
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$4$1;->this$1:Lio/realm/rx/RealmObservableFactory$4;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$4$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/Realm;)V
    .registers 3
    .param p1, "realm"    # Lio/realm/Realm;

    .line 92
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$4$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 93
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$4$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 95
    :cond_d
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .registers 2

    .line 89
    check-cast p1, Lio/realm/Realm;

    invoke-virtual {p0, p1}, Lio/realm/rx/RealmObservableFactory$4$1;->onChange(Lio/realm/Realm;)V

    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass4.AnonymousClass2 (io.realm.rx.RealmObservableFactory$4$2)
.class Lio/realm/rx/RealmObservableFactory$4$2;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$4;->subscribe(Lio/reactivex/FlowableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$4;

.field final synthetic val$listener:Lio/realm/RealmChangeListener;

.field final synthetic val$observableRealm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$4;Lio/realm/Realm;Lio/realm/RealmChangeListener;)V
    .registers 4
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$4;

    .line 100
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$4$2;->this$1:Lio/realm/rx/RealmObservableFactory$4;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$4$2;->val$observableRealm:Lio/realm/Realm;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$4$2;->val$listener:Lio/realm/RealmChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 103
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$4$2;->val$observableRealm:Lio/realm/Realm;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$4$2;->val$listener:Lio/realm/RealmChangeListener;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->removeChangeListener(Lio/realm/RealmChangeListener;)V

    .line 104
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$4$2;->val$observableRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 105
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass5 (io.realm.rx.RealmObservableFactory$5)
.class Lio/realm/rx/RealmObservableFactory$5;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory;->from(Lio/realm/DynamicRealm;)Lio/reactivex/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableOnSubscribe<",
        "Lio/realm/DynamicRealm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/rx/RealmObservableFactory;

.field final synthetic val$realmConfig:Lio/realm/RealmConfiguration;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;)V
    .registers 3
    .param p1, "this$0"    # Lio/realm/rx/RealmObservableFactory;

    .line 117
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$5;->this$0:Lio/realm/rx/RealmObservableFactory;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$5;->val$realmConfig:Lio/realm/RealmConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter<",
            "Lio/realm/DynamicRealm;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    .local p1, "emitter":Lio/reactivex/FlowableEmitter;, "Lio/reactivex/FlowableEmitter<Lio/realm/DynamicRealm;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$5;->val$realmConfig:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/DynamicRealm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/DynamicRealm;

    move-result-object v0

    .line 122
    .local v0, "observableRealm":Lio/realm/DynamicRealm;
    new-instance v1, Lio/realm/rx/RealmObservableFactory$5$1;

    invoke-direct {v1, p0, p1}, Lio/realm/rx/RealmObservableFactory$5$1;-><init>(Lio/realm/rx/RealmObservableFactory$5;Lio/reactivex/FlowableEmitter;)V

    .line 130
    .local v1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<Lio/realm/DynamicRealm;>;"
    invoke-virtual {v0, v1}, Lio/realm/DynamicRealm;->addChangeListener(Lio/realm/RealmChangeListener;)V

    .line 133
    new-instance v2, Lio/realm/rx/RealmObservableFactory$5$2;

    invoke-direct {v2, p0, v0, v1}, Lio/realm/rx/RealmObservableFactory$5$2;-><init>(Lio/realm/rx/RealmObservableFactory$5;Lio/realm/DynamicRealm;Lio/realm/RealmChangeListener;)V

    invoke-static {v2}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/reactivex/FlowableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 142
    invoke-interface {p1, v0}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 143
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass5.AnonymousClass1 (io.realm.rx.RealmObservableFactory$5$1)
.class Lio/realm/rx/RealmObservableFactory$5$1;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$5;->subscribe(Lio/reactivex/FlowableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/DynamicRealm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$5;

.field final synthetic val$emitter:Lio/reactivex/FlowableEmitter;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$5;Lio/reactivex/FlowableEmitter;)V
    .registers 3
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$5;

    .line 122
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$5$1;->this$1:Lio/realm/rx/RealmObservableFactory$5;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$5$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/DynamicRealm;)V
    .registers 3
    .param p1, "realm"    # Lio/realm/DynamicRealm;

    .line 125
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$5$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 126
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$5$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 128
    :cond_d
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .registers 2

    .line 122
    check-cast p1, Lio/realm/DynamicRealm;

    invoke-virtual {p0, p1}, Lio/realm/rx/RealmObservableFactory$5$1;->onChange(Lio/realm/DynamicRealm;)V

    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass5.AnonymousClass2 (io.realm.rx.RealmObservableFactory$5$2)
.class Lio/realm/rx/RealmObservableFactory$5$2;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$5;->subscribe(Lio/reactivex/FlowableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$5;

.field final synthetic val$listener:Lio/realm/RealmChangeListener;

.field final synthetic val$observableRealm:Lio/realm/DynamicRealm;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$5;Lio/realm/DynamicRealm;Lio/realm/RealmChangeListener;)V
    .registers 4
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$5;

    .line 133
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$5$2;->this$1:Lio/realm/rx/RealmObservableFactory$5;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$5$2;->val$observableRealm:Lio/realm/DynamicRealm;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$5$2;->val$listener:Lio/realm/RealmChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 136
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$5$2;->val$observableRealm:Lio/realm/DynamicRealm;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$5$2;->val$listener:Lio/realm/RealmChangeListener;

    invoke-virtual {v0, v1}, Lio/realm/DynamicRealm;->removeChangeListener(Lio/realm/RealmChangeListener;)V

    .line 137
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$5$2;->val$observableRealm:Lio/realm/DynamicRealm;

    invoke-virtual {v0}, Lio/realm/DynamicRealm;->close()V

    .line 138
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass6 (io.realm.rx.RealmObservableFactory$6)
.class Lio/realm/rx/RealmObservableFactory$6;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory;->from(Lio/realm/Realm;Lio/realm/RealmResults;)Lio/reactivex/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableOnSubscribe<",
        "Lio/realm/RealmResults<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/rx/RealmObservableFactory;

.field final synthetic val$realmConfig:Lio/realm/RealmConfiguration;

.field final synthetic val$results:Lio/realm/RealmResults;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmResults;)V
    .registers 4
    .param p1, "this$0"    # Lio/realm/rx/RealmObservableFactory;

    .line 150
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$6;->this$0:Lio/realm/rx/RealmObservableFactory;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$6;->val$realmConfig:Lio/realm/RealmConfiguration;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$6;->val$results:Lio/realm/RealmResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter<",
            "Lio/realm/RealmResults<",
            "TE;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    .local p1, "emitter":Lio/reactivex/FlowableEmitter;, "Lio/reactivex/FlowableEmitter<Lio/realm/RealmResults<TE;>;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$6;->val$realmConfig:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    .line 156
    .local v0, "observableRealm":Lio/realm/Realm;
    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$6;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v1}, Lio/realm/rx/RealmObservableFactory;->access$100(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$6;->val$results:Lio/realm/RealmResults;

    invoke-virtual {v1, v2}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->acquireReference(Ljava/lang/Object;)V

    .line 157
    new-instance v1, Lio/realm/rx/RealmObservableFactory$6$1;

    invoke-direct {v1, p0, p1}, Lio/realm/rx/RealmObservableFactory$6$1;-><init>(Lio/realm/rx/RealmObservableFactory$6;Lio/reactivex/FlowableEmitter;)V

    .line 165
    .local v1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<Lio/realm/RealmResults<TE;>;>;"
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$6;->val$results:Lio/realm/RealmResults;

    invoke-virtual {v2, v1}, Lio/realm/RealmResults;->addChangeListener(Lio/realm/RealmChangeListener;)V

    .line 168
    new-instance v2, Lio/realm/rx/RealmObservableFactory$6$2;

    invoke-direct {v2, p0, v1, v0}, Lio/realm/rx/RealmObservableFactory$6$2;-><init>(Lio/realm/rx/RealmObservableFactory$6;Lio/realm/RealmChangeListener;Lio/realm/Realm;)V

    invoke-static {v2}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/reactivex/FlowableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 178
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$6;->val$results:Lio/realm/RealmResults;

    invoke-interface {p1, v2}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 180
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass6.AnonymousClass1 (io.realm.rx.RealmObservableFactory$6$1)
.class Lio/realm/rx/RealmObservableFactory$6$1;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$6;->subscribe(Lio/reactivex/FlowableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/RealmResults<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$6;

.field final synthetic val$emitter:Lio/reactivex/FlowableEmitter;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$6;Lio/reactivex/FlowableEmitter;)V
    .registers 3
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$6;

    .line 157
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$6$1;->this$1:Lio/realm/rx/RealmObservableFactory$6;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$6$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmResults;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "TE;>;)V"
        }
    .end annotation

    .line 160
    .local p1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$6$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 161
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$6$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 163
    :cond_d
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .registers 2

    .line 157
    check-cast p1, Lio/realm/RealmResults;

    invoke-virtual {p0, p1}, Lio/realm/rx/RealmObservableFactory$6$1;->onChange(Lio/realm/RealmResults;)V

    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass6.AnonymousClass2 (io.realm.rx.RealmObservableFactory$6$2)
.class Lio/realm/rx/RealmObservableFactory$6$2;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$6;->subscribe(Lio/reactivex/FlowableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$6;

.field final synthetic val$listener:Lio/realm/RealmChangeListener;

.field final synthetic val$observableRealm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$6;Lio/realm/RealmChangeListener;Lio/realm/Realm;)V
    .registers 4
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$6;

    .line 168
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$6$2;->this$1:Lio/realm/rx/RealmObservableFactory$6;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$6$2;->val$listener:Lio/realm/RealmChangeListener;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$6$2;->val$observableRealm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 171
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$6$2;->this$1:Lio/realm/rx/RealmObservableFactory$6;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$6;->val$results:Lio/realm/RealmResults;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$6$2;->val$listener:Lio/realm/RealmChangeListener;

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->removeChangeListener(Lio/realm/RealmChangeListener;)V

    .line 172
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$6$2;->val$observableRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 173
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$6$2;->this$1:Lio/realm/rx/RealmObservableFactory$6;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$6;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v0}, Lio/realm/rx/RealmObservableFactory;->access$100(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$6$2;->this$1:Lio/realm/rx/RealmObservableFactory$6;

    iget-object v1, v1, Lio/realm/rx/RealmObservableFactory$6;->val$results:Lio/realm/RealmResults;

    invoke-virtual {v0, v1}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->releaseReference(Ljava/lang/Object;)V

    .line 174
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass7 (io.realm.rx.RealmObservableFactory$7)
.class Lio/realm/rx/RealmObservableFactory$7;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory;->changesetsFrom(Lio/realm/Realm;Lio/realm/RealmResults;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lio/realm/rx/CollectionChange<",
        "Lio/realm/RealmResults<",
        "TE;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/rx/RealmObservableFactory;

.field final synthetic val$realmConfig:Lio/realm/RealmConfiguration;

.field final synthetic val$results:Lio/realm/RealmResults;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmResults;)V
    .registers 4
    .param p1, "this$0"    # Lio/realm/rx/RealmObservableFactory;

    .line 187
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$7;->this$0:Lio/realm/rx/RealmObservableFactory;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$7;->val$realmConfig:Lio/realm/RealmConfiguration;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$7;->val$results:Lio/realm/RealmResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lio/realm/rx/CollectionChange<",
            "Lio/realm/RealmResults<",
            "TE;>;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    .local p1, "emitter":Lio/reactivex/ObservableEmitter;, "Lio/reactivex/ObservableEmitter<Lio/realm/rx/CollectionChange<Lio/realm/RealmResults<TE;>;>;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$7;->val$realmConfig:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    .line 193
    .local v0, "observableRealm":Lio/realm/Realm;
    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$7;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v1}, Lio/realm/rx/RealmObservableFactory;->access$100(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$7;->val$results:Lio/realm/RealmResults;

    invoke-virtual {v1, v2}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->acquireReference(Ljava/lang/Object;)V

    .line 194
    new-instance v1, Lio/realm/rx/RealmObservableFactory$7$1;

    invoke-direct {v1, p0, p1}, Lio/realm/rx/RealmObservableFactory$7$1;-><init>(Lio/realm/rx/RealmObservableFactory$7;Lio/reactivex/ObservableEmitter;)V

    .line 202
    .local v1, "listener":Lio/realm/OrderedRealmCollectionChangeListener;, "Lio/realm/OrderedRealmCollectionChangeListener<Lio/realm/RealmResults<TE;>;>;"
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$7;->val$results:Lio/realm/RealmResults;

    invoke-virtual {v2, v1}, Lio/realm/RealmResults;->addChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V

    .line 205
    new-instance v2, Lio/realm/rx/RealmObservableFactory$7$2;

    invoke-direct {v2, p0, v1, v0}, Lio/realm/rx/RealmObservableFactory$7$2;-><init>(Lio/realm/rx/RealmObservableFactory$7;Lio/realm/OrderedRealmCollectionChangeListener;Lio/realm/Realm;)V

    invoke-static {v2}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 215
    new-instance v2, Lio/realm/rx/CollectionChange;

    iget-object v3, p0, Lio/realm/rx/RealmObservableFactory$7;->val$results:Lio/realm/RealmResults;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lio/realm/rx/CollectionChange;-><init>(Lio/realm/OrderedRealmCollection;Lio/realm/OrderedCollectionChangeSet;)V

    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 216
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass7.AnonymousClass1 (io.realm.rx.RealmObservableFactory$7$1)
.class Lio/realm/rx/RealmObservableFactory$7$1;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/OrderedRealmCollectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$7;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/OrderedRealmCollectionChangeListener<",
        "Lio/realm/RealmResults<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$7;

.field final synthetic val$emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$7;Lio/reactivex/ObservableEmitter;)V
    .registers 3
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$7;

    .line 194
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$7$1;->this$1:Lio/realm/rx/RealmObservableFactory$7;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$7$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmResults;Lio/realm/OrderedCollectionChangeSet;)V
    .registers 6
    .param p2, "changeSet"    # Lio/realm/OrderedCollectionChangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "TE;>;",
            "Lio/realm/OrderedCollectionChangeSet;",
            ")V"
        }
    .end annotation

    .line 197
    .local p1, "e":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$7$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_16

    .line 198
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$7$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lio/realm/rx/CollectionChange;

    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$7$1;->this$1:Lio/realm/rx/RealmObservableFactory$7;

    iget-object v2, v2, Lio/realm/rx/RealmObservableFactory$7;->val$results:Lio/realm/RealmResults;

    invoke-direct {v1, v2, p2}, Lio/realm/rx/CollectionChange;-><init>(Lio/realm/OrderedRealmCollection;Lio/realm/OrderedCollectionChangeSet;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 200
    :cond_16
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;Lio/realm/OrderedCollectionChangeSet;)V
    .registers 3

    .line 194
    check-cast p1, Lio/realm/RealmResults;

    invoke-virtual {p0, p1, p2}, Lio/realm/rx/RealmObservableFactory$7$1;->onChange(Lio/realm/RealmResults;Lio/realm/OrderedCollectionChangeSet;)V

    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass7.AnonymousClass2 (io.realm.rx.RealmObservableFactory$7$2)
.class Lio/realm/rx/RealmObservableFactory$7$2;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$7;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$7;

.field final synthetic val$listener:Lio/realm/OrderedRealmCollectionChangeListener;

.field final synthetic val$observableRealm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$7;Lio/realm/OrderedRealmCollectionChangeListener;Lio/realm/Realm;)V
    .registers 4
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$7;

    .line 205
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$7$2;->this$1:Lio/realm/rx/RealmObservableFactory$7;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$7$2;->val$listener:Lio/realm/OrderedRealmCollectionChangeListener;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$7$2;->val$observableRealm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 208
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$7$2;->this$1:Lio/realm/rx/RealmObservableFactory$7;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$7;->val$results:Lio/realm/RealmResults;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$7$2;->val$listener:Lio/realm/OrderedRealmCollectionChangeListener;

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->removeChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V

    .line 209
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$7$2;->val$observableRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 210
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$7$2;->this$1:Lio/realm/rx/RealmObservableFactory$7;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$7;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v0}, Lio/realm/rx/RealmObservableFactory;->access$100(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$7$2;->this$1:Lio/realm/rx/RealmObservableFactory$7;

    iget-object v1, v1, Lio/realm/rx/RealmObservableFactory$7;->val$results:Lio/realm/RealmResults;

    invoke-virtual {v0, v1}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->releaseReference(Ljava/lang/Object;)V

    .line 211
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass8 (io.realm.rx.RealmObservableFactory$8)
.class Lio/realm/rx/RealmObservableFactory$8;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory;->from(Lio/realm/DynamicRealm;Lio/realm/RealmResults;)Lio/reactivex/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableOnSubscribe<",
        "Lio/realm/RealmResults<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/rx/RealmObservableFactory;

.field final synthetic val$realmConfig:Lio/realm/RealmConfiguration;

.field final synthetic val$results:Lio/realm/RealmResults;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmResults;)V
    .registers 4
    .param p1, "this$0"    # Lio/realm/rx/RealmObservableFactory;

    .line 223
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$8;->this$0:Lio/realm/rx/RealmObservableFactory;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$8;->val$realmConfig:Lio/realm/RealmConfiguration;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$8;->val$results:Lio/realm/RealmResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter<",
            "Lio/realm/RealmResults<",
            "TE;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    .local p1, "emitter":Lio/reactivex/FlowableEmitter;, "Lio/reactivex/FlowableEmitter<Lio/realm/RealmResults<TE;>;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$8;->val$realmConfig:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/DynamicRealm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/DynamicRealm;

    move-result-object v0

    .line 229
    .local v0, "observableRealm":Lio/realm/DynamicRealm;
    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$8;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v1}, Lio/realm/rx/RealmObservableFactory;->access$100(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$8;->val$results:Lio/realm/RealmResults;

    invoke-virtual {v1, v2}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->acquireReference(Ljava/lang/Object;)V

    .line 230
    new-instance v1, Lio/realm/rx/RealmObservableFactory$8$1;

    invoke-direct {v1, p0, p1}, Lio/realm/rx/RealmObservableFactory$8$1;-><init>(Lio/realm/rx/RealmObservableFactory$8;Lio/reactivex/FlowableEmitter;)V

    .line 238
    .local v1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<Lio/realm/RealmResults<TE;>;>;"
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$8;->val$results:Lio/realm/RealmResults;

    invoke-virtual {v2, v1}, Lio/realm/RealmResults;->addChangeListener(Lio/realm/RealmChangeListener;)V

    .line 241
    new-instance v2, Lio/realm/rx/RealmObservableFactory$8$2;

    invoke-direct {v2, p0, v1, v0}, Lio/realm/rx/RealmObservableFactory$8$2;-><init>(Lio/realm/rx/RealmObservableFactory$8;Lio/realm/RealmChangeListener;Lio/realm/DynamicRealm;)V

    invoke-static {v2}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/reactivex/FlowableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 251
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$8;->val$results:Lio/realm/RealmResults;

    invoke-interface {p1, v2}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 253
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass8.AnonymousClass1 (io.realm.rx.RealmObservableFactory$8$1)
.class Lio/realm/rx/RealmObservableFactory$8$1;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$8;->subscribe(Lio/reactivex/FlowableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/RealmResults<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$8;

.field final synthetic val$emitter:Lio/reactivex/FlowableEmitter;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$8;Lio/reactivex/FlowableEmitter;)V
    .registers 3
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$8;

    .line 230
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$8$1;->this$1:Lio/realm/rx/RealmObservableFactory$8;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$8$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmResults;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "TE;>;)V"
        }
    .end annotation

    .line 233
    .local p1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$8$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 234
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$8$1;->val$emitter:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 236
    :cond_d
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .registers 2

    .line 230
    check-cast p1, Lio/realm/RealmResults;

    invoke-virtual {p0, p1}, Lio/realm/rx/RealmObservableFactory$8$1;->onChange(Lio/realm/RealmResults;)V

    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass8.AnonymousClass2 (io.realm.rx.RealmObservableFactory$8$2)
.class Lio/realm/rx/RealmObservableFactory$8$2;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$8;->subscribe(Lio/reactivex/FlowableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$8;

.field final synthetic val$listener:Lio/realm/RealmChangeListener;

.field final synthetic val$observableRealm:Lio/realm/DynamicRealm;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$8;Lio/realm/RealmChangeListener;Lio/realm/DynamicRealm;)V
    .registers 4
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$8;

    .line 241
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$8$2;->this$1:Lio/realm/rx/RealmObservableFactory$8;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$8$2;->val$listener:Lio/realm/RealmChangeListener;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$8$2;->val$observableRealm:Lio/realm/DynamicRealm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 244
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$8$2;->this$1:Lio/realm/rx/RealmObservableFactory$8;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$8;->val$results:Lio/realm/RealmResults;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$8$2;->val$listener:Lio/realm/RealmChangeListener;

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->removeChangeListener(Lio/realm/RealmChangeListener;)V

    .line 245
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$8$2;->val$observableRealm:Lio/realm/DynamicRealm;

    invoke-virtual {v0}, Lio/realm/DynamicRealm;->close()V

    .line 246
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$8$2;->this$1:Lio/realm/rx/RealmObservableFactory$8;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$8;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v0}, Lio/realm/rx/RealmObservableFactory;->access$100(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$8$2;->this$1:Lio/realm/rx/RealmObservableFactory$8;

    iget-object v1, v1, Lio/realm/rx/RealmObservableFactory$8;->val$results:Lio/realm/RealmResults;

    invoke-virtual {v0, v1}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->releaseReference(Ljava/lang/Object;)V

    .line 247
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass9 (io.realm.rx.RealmObservableFactory$9)
.class Lio/realm/rx/RealmObservableFactory$9;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory;->changesetsFrom(Lio/realm/DynamicRealm;Lio/realm/RealmResults;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lio/realm/rx/CollectionChange<",
        "Lio/realm/RealmResults<",
        "TE;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/rx/RealmObservableFactory;

.field final synthetic val$realmConfig:Lio/realm/RealmConfiguration;

.field final synthetic val$results:Lio/realm/RealmResults;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory;Lio/realm/RealmConfiguration;Lio/realm/RealmResults;)V
    .registers 4
    .param p1, "this$0"    # Lio/realm/rx/RealmObservableFactory;

    .line 260
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$9;->this$0:Lio/realm/rx/RealmObservableFactory;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$9;->val$realmConfig:Lio/realm/RealmConfiguration;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$9;->val$results:Lio/realm/RealmResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lio/realm/rx/CollectionChange<",
            "Lio/realm/RealmResults<",
            "TE;>;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 265
    .local p1, "emitter":Lio/reactivex/ObservableEmitter;, "Lio/reactivex/ObservableEmitter<Lio/realm/rx/CollectionChange<Lio/realm/RealmResults<TE;>;>;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$9;->val$realmConfig:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/DynamicRealm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/DynamicRealm;

    move-result-object v0

    .line 266
    .local v0, "observableRealm":Lio/realm/DynamicRealm;
    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$9;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v1}, Lio/realm/rx/RealmObservableFactory;->access$100(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$9;->val$results:Lio/realm/RealmResults;

    invoke-virtual {v1, v2}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->acquireReference(Ljava/lang/Object;)V

    .line 267
    new-instance v1, Lio/realm/rx/RealmObservableFactory$9$1;

    invoke-direct {v1, p0, p1}, Lio/realm/rx/RealmObservableFactory$9$1;-><init>(Lio/realm/rx/RealmObservableFactory$9;Lio/reactivex/ObservableEmitter;)V

    .line 275
    .local v1, "listener":Lio/realm/OrderedRealmCollectionChangeListener;, "Lio/realm/OrderedRealmCollectionChangeListener<Lio/realm/RealmResults<TE;>;>;"
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$9;->val$results:Lio/realm/RealmResults;

    invoke-virtual {v2, v1}, Lio/realm/RealmResults;->addChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V

    .line 278
    new-instance v2, Lio/realm/rx/RealmObservableFactory$9$2;

    invoke-direct {v2, p0, v1, v0}, Lio/realm/rx/RealmObservableFactory$9$2;-><init>(Lio/realm/rx/RealmObservableFactory$9;Lio/realm/OrderedRealmCollectionChangeListener;Lio/realm/DynamicRealm;)V

    invoke-static {v2}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    .line 288
    new-instance v2, Lio/realm/rx/CollectionChange;

    iget-object v3, p0, Lio/realm/rx/RealmObservableFactory$9;->val$results:Lio/realm/RealmResults;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lio/realm/rx/CollectionChange;-><init>(Lio/realm/OrderedRealmCollection;Lio/realm/OrderedCollectionChangeSet;)V

    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 289
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass9.AnonymousClass1 (io.realm.rx.RealmObservableFactory$9$1)
.class Lio/realm/rx/RealmObservableFactory$9$1;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lio/realm/OrderedRealmCollectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$9;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/OrderedRealmCollectionChangeListener<",
        "Lio/realm/RealmResults<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$9;

.field final synthetic val$emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$9;Lio/reactivex/ObservableEmitter;)V
    .registers 3
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$9;

    .line 267
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$9$1;->this$1:Lio/realm/rx/RealmObservableFactory$9;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$9$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmResults;Lio/realm/OrderedCollectionChangeSet;)V
    .registers 5
    .param p2, "changeSet"    # Lio/realm/OrderedCollectionChangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "TE;>;",
            "Lio/realm/OrderedCollectionChangeSet;",
            ")V"
        }
    .end annotation

    .line 270
    .local p1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$9$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 271
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$9$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lio/realm/rx/CollectionChange;

    invoke-direct {v1, p1, p2}, Lio/realm/rx/CollectionChange;-><init>(Lio/realm/OrderedRealmCollection;Lio/realm/OrderedCollectionChangeSet;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 273
    :cond_12
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;Lio/realm/OrderedCollectionChangeSet;)V
    .registers 3

    .line 267
    check-cast p1, Lio/realm/RealmResults;

    invoke-virtual {p0, p1, p2}, Lio/realm/rx/RealmObservableFactory$9$1;->onChange(Lio/realm/RealmResults;Lio/realm/OrderedCollectionChangeSet;)V

    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.AnonymousClass9.AnonymousClass2 (io.realm.rx.RealmObservableFactory$9$2)
.class Lio/realm/rx/RealmObservableFactory$9$2;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$9;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/rx/RealmObservableFactory$9;

.field final synthetic val$listener:Lio/realm/OrderedRealmCollectionChangeListener;

.field final synthetic val$observableRealm:Lio/realm/DynamicRealm;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory$9;Lio/realm/OrderedRealmCollectionChangeListener;Lio/realm/DynamicRealm;)V
    .registers 4
    .param p1, "this$1"    # Lio/realm/rx/RealmObservableFactory$9;

    .line 278
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$9$2;->this$1:Lio/realm/rx/RealmObservableFactory$9;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$9$2;->val$listener:Lio/realm/OrderedRealmCollectionChangeListener;

    iput-object p3, p0, Lio/realm/rx/RealmObservableFactory$9$2;->val$observableRealm:Lio/realm/DynamicRealm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 281
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$9$2;->this$1:Lio/realm/rx/RealmObservableFactory$9;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$9;->val$results:Lio/realm/RealmResults;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$9$2;->val$listener:Lio/realm/OrderedRealmCollectionChangeListener;

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->removeChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V

    .line 282
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$9$2;->val$observableRealm:Lio/realm/DynamicRealm;

    invoke-virtual {v0}, Lio/realm/DynamicRealm;->close()V

    .line 283
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$9$2;->this$1:Lio/realm/rx/RealmObservableFactory$9;

    iget-object v0, v0, Lio/realm/rx/RealmObservableFactory$9;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-static {v0}, Lio/realm/rx/RealmObservableFactory;->access$100(Lio/realm/rx/RealmObservableFactory;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$9$2;->this$1:Lio/realm/rx/RealmObservableFactory$9;

    iget-object v1, v1, Lio/realm/rx/RealmObservableFactory$9;->val$results:Lio/realm/RealmResults;

    invoke-virtual {v0, v1}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->releaseReference(Ljava/lang/Object;)V

    .line 284
    return-void
.end method

###### Class io.realm.rx.RealmObservableFactory.StrongReferenceCounter (io.realm.rx.RealmObservableFactory$StrongReferenceCounter)
.class Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/rx/RealmObservableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StrongReferenceCounter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final references:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 607
    .local p0, "this":Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;, "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->references:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/rx/RealmObservableFactory$1;)V
    .registers 2
    .param p1, "x0"    # Lio/realm/rx/RealmObservableFactory$1;

    .line 607
    .local p0, "this":Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;, "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter<TK;>;"
    invoke-direct {p0}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireReference(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 612
    .local p0, "this":Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;, "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter<TK;>;"
    .local p1, "object":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->references:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 613
    .local v0, "count":Ljava/lang/Integer;
    const/4 v1, 0x1

    if-nez v0, :cond_15

    .line 614
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->references:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 616
    :cond_15
    iget-object v2, p0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->references:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    :goto_23
    return-void
.end method

.method public releaseReference(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 621
    .local p0, "this":Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;, "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter<TK;>;"
    .local p1, "object":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->references:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 622
    .local v0, "count":Ljava/lang/Integer;
    if-eqz v0, :cond_43

    .line 624
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_20

    .line 625
    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->references:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 626
    :cond_20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_2c

    .line 627
    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;->references:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    :goto_2b
    return-void

    .line 629
    :cond_2c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid reference count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 623
    :cond_43
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object does not have any references: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
