###### Class io.realm.RealmResults (io.realm.RealmResults)
.class public Lio/realm/RealmResults;
.super Lio/realm/OrderedRealmCollectionImpl;
.source "RealmResults.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/OrderedRealmCollectionImpl<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/Class;)V
    .registers 4
    .param p1, "realm"    # Lio/realm/BaseRealm;
    .param p2, "osResults"    # Lio/realm/internal/OsResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsResults;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1, p2, p3}, Lio/realm/OrderedRealmCollectionImpl;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/Class;)V

    .line 86
    return-void
.end method

.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/String;)V
    .registers 4
    .param p1, "realm"    # Lio/realm/BaseRealm;
    .param p2, "osResults"    # Lio/realm/internal/OsResults;
    .param p3, "className"    # Ljava/lang/String;

    .line 89
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-direct {p0, p1, p2, p3}, Lio/realm/OrderedRealmCollectionImpl;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private checkForAddRemoveListener(Ljava/lang/Object;Z)V
    .registers 5
    .param p1, "listener"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "checkListener"    # Z

    .line 215
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    if-eqz p2, :cond_d

    if-eqz p1, :cond_5

    goto :goto_d

    .line 216
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_d
    :goto_d
    iget-object v0, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 219
    iget-object v0, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v1, "Listeners cannot be used on current thread."

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method static createBacklinkResults(Lio/realm/BaseRealm;Lio/realm/internal/Row;Ljava/lang/Class;Ljava/lang/String;)Lio/realm/RealmResults;
    .registers 8
    .param p0, "realm"    # Lio/realm/BaseRealm;
    .param p1, "row"    # Lio/realm/internal/Row;
    .param p3, "srcFieldName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "unused"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/Row;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmResults<",
            "TT;>;"
        }
    .end annotation

    .line 66
    .local p2, "srcTableType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v0, p1

    check-cast v0, Lio/realm/internal/UncheckedRow;

    .line 67
    .local v0, "uncheckedRow":Lio/realm/internal/UncheckedRow;
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    invoke-virtual {v1, p2}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 68
    .local v1, "srcTable":Lio/realm/internal/Table;
    new-instance v2, Lio/realm/RealmResults;

    iget-object v3, p0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    .line 70
    invoke-static {v3, v0, v1, p3}, Lio/realm/internal/OsResults;->createForBacklinks(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/UncheckedRow;Lio/realm/internal/Table;Ljava/lang/String;)Lio/realm/internal/OsResults;

    move-result-object v3

    invoke-direct {v2, p0, v3, p2}, Lio/realm/RealmResults;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/Class;)V

    .line 68
    return-object v2
.end method

.method static createDynamicBacklinkResults(Lio/realm/DynamicRealm;Lio/realm/internal/CheckedRow;Lio/realm/internal/Table;Ljava/lang/String;)Lio/realm/RealmResults;
    .registers 7
    .param p0, "realm"    # Lio/realm/DynamicRealm;
    .param p1, "row"    # Lio/realm/internal/CheckedRow;
    .param p2, "srcTable"    # Lio/realm/internal/Table;
    .param p3, "srcFieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/DynamicRealm;",
            "Lio/realm/internal/CheckedRow;",
            "Lio/realm/internal/Table;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmResults<",
            "Lio/realm/DynamicRealmObject;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-virtual {p2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->getClassNameForTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "srcClassName":Ljava/lang/String;
    new-instance v1, Lio/realm/RealmResults;

    iget-object v2, p0, Lio/realm/DynamicRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    .line 80
    invoke-static {v2, p1, p2, p3}, Lio/realm/internal/OsResults;->createForBacklinks(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/UncheckedRow;Lio/realm/internal/Table;Ljava/lang/String;)Lio/realm/internal/OsResults;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lio/realm/RealmResults;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/String;)V

    .line 78
    return-object v1
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1, p2}, Lio/realm/OrderedRealmCollectionImpl;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic addAll(ILjava/util/Collection;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1, p2}, Lio/realm/OrderedRealmCollectionImpl;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/OrderedRealmCollectionChangeListener<",
            "Lio/realm/RealmResults<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 210
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    .local p1, "listener":Lio/realm/OrderedRealmCollectionChangeListener;, "Lio/realm/OrderedRealmCollectionChangeListener<Lio/realm/RealmResults<TE;>;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/realm/RealmResults;->checkForAddRemoveListener(Ljava/lang/Object;Z)V

    .line 211
    iget-object v0, p0, Lio/realm/RealmResults;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/OsResults;->addListener(Ljava/lang/Object;Lio/realm/OrderedRealmCollectionChangeListener;)V

    .line 212
    return-void
.end method

.method public addChangeListener(Lio/realm/RealmChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmResults<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 172
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    .local p1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<Lio/realm/RealmResults<TE;>;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/realm/RealmResults;->checkForAddRemoveListener(Ljava/lang/Object;Z)V

    .line 173
    iget-object v0, p0, Lio/realm/RealmResults;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/OsResults;->addListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V

    .line 174
    return-void
.end method

.method public asChangesetObservable()Lio/reactivex/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lio/realm/rx/CollectionChange<",
            "Lio/realm/RealmResults<",
            "TE;>;>;>;"
        }
    .end annotation

    .line 319
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    iget-object v0, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    instance-of v0, v0, Lio/realm/Realm;

    if-eqz v0, :cond_17

    .line 320
    iget-object v0, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    check-cast v1, Lio/realm/Realm;

    invoke-interface {v0, v1, p0}, Lio/realm/rx/RxObservableFactory;->changesetsFrom(Lio/realm/Realm;Lio/realm/RealmResults;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 321
    :cond_17
    iget-object v0, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    instance-of v0, v0, Lio/realm/DynamicRealm;

    if-eqz v0, :cond_2f

    .line 322
    iget-object v0, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    check-cast v0, Lio/realm/DynamicRealm;

    .line 323
    .local v0, "dynamicRealm":Lio/realm/DynamicRealm;
    move-object v1, p0

    .line 324
    .local v1, "dynamicResults":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lio/realm/DynamicRealmObject;>;"
    iget-object v2, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/rx/RxObservableFactory;->changesetsFrom(Lio/realm/DynamicRealm;Lio/realm/RealmResults;)Lio/reactivex/Observable;

    move-result-object v2

    return-object v2

    .line 326
    .end local v0    # "dynamicRealm":Lio/realm/DynamicRealm;
    .end local v1    # "dynamicResults":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lio/realm/DynamicRealmObject;>;"
    :cond_2f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not support RxJava2."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asFlowable()Lio/reactivex/Flowable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lio/realm/RealmResults<",
            "TE;>;>;"
        }
    .end annotation

    .line 288
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    iget-object v0, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    instance-of v0, v0, Lio/realm/Realm;

    if-eqz v0, :cond_17

    .line 289
    iget-object v0, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    check-cast v1, Lio/realm/Realm;

    invoke-interface {v0, v1, p0}, Lio/realm/rx/RxObservableFactory;->from(Lio/realm/Realm;Lio/realm/RealmResults;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0

    .line 290
    :cond_17
    iget-object v0, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    instance-of v0, v0, Lio/realm/DynamicRealm;

    if-eqz v0, :cond_2f

    .line 291
    iget-object v0, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    check-cast v0, Lio/realm/DynamicRealm;

    .line 292
    .local v0, "dynamicRealm":Lio/realm/DynamicRealm;
    move-object v1, p0

    .line 294
    .local v1, "dynamicResults":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lio/realm/DynamicRealmObject;>;"
    iget-object v2, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lio/realm/rx/RxObservableFactory;->from(Lio/realm/DynamicRealm;Lio/realm/RealmResults;)Lio/reactivex/Flowable;

    move-result-object v2

    .line 295
    .local v2, "results":Lio/reactivex/Flowable;
    return-object v2

    .line 297
    .end local v0    # "dynamicRealm":Lio/realm/DynamicRealm;
    .end local v1    # "dynamicResults":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lio/realm/DynamicRealmObject;>;"
    .end local v2    # "results":Lio/reactivex/Flowable;
    :cond_2f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not support RxJava2."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic average(Ljava/lang/String;)D
    .registers 4

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->average(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic clear()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic createSnapshot()Lio/realm/OrderedRealmCollectionSnapshot;
    .registers 2

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->createSnapshot()Lio/realm/OrderedRealmCollectionSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deleteAllFromRealm()Z
    .registers 2

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->deleteAllFromRealm()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic deleteFirstFromRealm()Z
    .registers 2

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->deleteFirstFromRealm()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic deleteFromRealm(I)V
    .registers 2

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->deleteFromRealm(I)V

    return-void
.end method

.method public bridge synthetic deleteLastFromRealm()Z
    .registers 2

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->deleteLastFromRealm()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic first()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic first(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->first(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isLoaded()Z
    .registers 2

    .line 117
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    iget-object v0, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 118
    iget-object v0, p0, Lio/realm/RealmResults;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isManaged()Z
    .registers 2

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->isManaged()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isValid()Z
    .registers 2

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->isValid()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic last()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic last(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->last(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 2

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public load()Z
    .registers 2

    .line 133
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    iget-object v0, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 134
    iget-object v0, p0, Lio/realm/RealmResults;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->load()V

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic max(Ljava/lang/String;)Ljava/lang/Number;
    .registers 2

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->max(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic maxDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->maxDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic min(Ljava/lang/String;)Ljava/lang/Number;
    .registers 2

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->min(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 2

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->minDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public removeAllChangeListeners()V
    .registers 3

    .line 229
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/realm/RealmResults;->checkForAddRemoveListener(Ljava/lang/Object;Z)V

    .line 230
    iget-object v0, p0, Lio/realm/RealmResults;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->removeAllListeners()V

    .line 231
    return-void
.end method

.method public removeChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/OrderedRealmCollectionChangeListener<",
            "Lio/realm/RealmResults<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 255
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    .local p1, "listener":Lio/realm/OrderedRealmCollectionChangeListener;, "Lio/realm/OrderedRealmCollectionChangeListener<Lio/realm/RealmResults<TE;>;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/realm/RealmResults;->checkForAddRemoveListener(Ljava/lang/Object;Z)V

    .line 256
    iget-object v0, p0, Lio/realm/RealmResults;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/OsResults;->removeListener(Ljava/lang/Object;Lio/realm/OrderedRealmCollectionChangeListener;)V

    .line 257
    return-void
.end method

.method public removeChangeListener(Lio/realm/RealmChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmResults<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 242
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    .local p1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<Lio/realm/RealmResults<TE;>;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/realm/RealmResults;->checkForAddRemoveListener(Ljava/lang/Object;Z)V

    .line 243
    iget-object v0, p0, Lio/realm/RealmResults;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/OsResults;->removeListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V

    .line 244
    return-void
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1, p2}, Lio/realm/OrderedRealmCollectionImpl;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic size()I
    .registers 2

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0}, Lio/realm/OrderedRealmCollectionImpl;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic sort(Ljava/lang/String;)Lio/realm/RealmResults;
    .registers 2

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->sort(Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;
    .registers 3

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1, p2}, Lio/realm/OrderedRealmCollectionImpl;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

.method public sort(Ljava/lang/String;Lio/realm/Sort;Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmResults;
    .registers 9
    .param p1, "fieldName1"    # Ljava/lang/String;
    .param p2, "sortOrder1"    # Lio/realm/Sort;
    .param p3, "fieldName2"    # Ljava/lang/String;
    .param p4, "sortOrder2"    # Lio/realm/Sort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            "Ljava/lang/String;",
            "Lio/realm/Sort;",
            ")",
            "Lio/realm/RealmResults<",
            "TE;>;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p3, v1, v3

    new-array v0, v0, [Lio/realm/Sort;

    aput-object p2, v0, v2

    aput-object p4, v0, v3

    invoke-virtual {p0, v1, v0}, Lio/realm/RealmResults;->sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmResults;
    .registers 3

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1, p2}, Lio/realm/OrderedRealmCollectionImpl;->sort([Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/RealmResults;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sum(Ljava/lang/String;)Ljava/lang/Number;
    .registers 2

    .line 61
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    invoke-super {p0, p1}, Lio/realm/OrderedRealmCollectionImpl;->sum(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public where()Lio/realm/RealmQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lio/realm/RealmResults;, "Lio/realm/RealmResults<TE;>;"
    iget-object v0, p0, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 98
    invoke-static {p0}, Lio/realm/RealmQuery;->createQueryFromResult(Lio/realm/RealmResults;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method
