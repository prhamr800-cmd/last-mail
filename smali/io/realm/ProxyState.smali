###### Class io.realm.ProxyState (io.realm.ProxyState)
.class public final Lio/realm/ProxyState;
.super Ljava/lang/Object;
.source "ProxyState.java"

# interfaces
.implements Lio/realm/internal/PendingRow$FrontEnd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/ProxyState$QueryCallback;,
        Lio/realm/ProxyState$RealmChangeListenerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/RealmModel;",
        ">",
        "Ljava/lang/Object;",
        "Lio/realm/internal/PendingRow$FrontEnd;"
    }
.end annotation


# static fields
.field private static queryCallback:Lio/realm/ProxyState$QueryCallback;


# instance fields
.field private acceptDefaultValue:Z

.field private excludeFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private model:Lio/realm/RealmModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private observerPairs:Lio/realm/internal/ObserverPairList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/ObserverPairList<",
            "Lio/realm/internal/OsObject$ObjectObserverPair;",
            ">;"
        }
    .end annotation
.end field

.field private osObject:Lio/realm/internal/OsObject;

.field private realm:Lio/realm/BaseRealm;

.field private row:Lio/realm/internal/Row;

.field private underConstruction:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 87
    new-instance v0, Lio/realm/ProxyState$QueryCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/ProxyState$QueryCallback;-><init>(Lio/realm/ProxyState$1;)V

    sput-object v0, Lio/realm/ProxyState;->queryCallback:Lio/realm/ProxyState$QueryCallback;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 89
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    .line 85
    new-instance v0, Lio/realm/internal/ObserverPairList;

    invoke-direct {v0}, Lio/realm/internal/ObserverPairList;-><init>()V

    iput-object v0, p0, Lio/realm/ProxyState;->observerPairs:Lio/realm/internal/ObserverPairList;

    .line 89
    return-void
.end method

.method public constructor <init>(Lio/realm/RealmModel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 91
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    .local p1, "model":Lio/realm/RealmModel;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    .line 85
    new-instance v0, Lio/realm/internal/ObserverPairList;

    invoke-direct {v0}, Lio/realm/internal/ObserverPairList;-><init>()V

    iput-object v0, p0, Lio/realm/ProxyState;->observerPairs:Lio/realm/internal/ObserverPairList;

    .line 92
    iput-object p1, p0, Lio/realm/ProxyState;->model:Lio/realm/RealmModel;

    .line 93
    return-void
.end method

.method private notifyQueryFinished()V
    .registers 3

    .line 132
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    iget-object v0, p0, Lio/realm/ProxyState;->observerPairs:Lio/realm/internal/ObserverPairList;

    sget-object v1, Lio/realm/ProxyState;->queryCallback:Lio/realm/ProxyState$QueryCallback;

    invoke-virtual {v0, v1}, Lio/realm/internal/ObserverPairList;->foreach(Lio/realm/internal/ObserverPairList$Callback;)V

    .line 133
    return-void
.end method

.method private registerToObjectNotifier()V
    .registers 4

    .line 173
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    iget-object v0, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    invoke-interface {v0}, Lio/realm/internal/Row;->isAttached()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_37

    .line 177
    :cond_19
    iget-object v0, p0, Lio/realm/ProxyState;->osObject:Lio/realm/internal/OsObject;

    if-nez v0, :cond_36

    .line 178
    new-instance v0, Lio/realm/internal/OsObject;

    iget-object v1, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    iget-object v1, v1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v2, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    check-cast v2, Lio/realm/internal/UncheckedRow;

    invoke-direct {v0, v1, v2}, Lio/realm/internal/OsObject;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/UncheckedRow;)V

    iput-object v0, p0, Lio/realm/ProxyState;->osObject:Lio/realm/internal/OsObject;

    .line 179
    iget-object v0, p0, Lio/realm/ProxyState;->osObject:Lio/realm/internal/OsObject;

    iget-object v1, p0, Lio/realm/ProxyState;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0, v1}, Lio/realm/internal/OsObject;->setObserverPairs(Lio/realm/internal/ObserverPairList;)V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/ProxyState;->observerPairs:Lio/realm/internal/ObserverPairList;

    .line 183
    :cond_36
    return-void

    .line 174
    :cond_37
    :goto_37
    return-void
.end method


# virtual methods
.method public addChangeListener(Lio/realm/RealmObjectChangeListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmObjectChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 136
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    .local p1, "listener":Lio/realm/RealmObjectChangeListener;, "Lio/realm/RealmObjectChangeListener<TE;>;"
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    instance-of v0, v0, Lio/realm/internal/PendingRow;

    if-eqz v0, :cond_13

    .line 137
    iget-object v0, p0, Lio/realm/ProxyState;->observerPairs:Lio/realm/internal/ObserverPairList;

    new-instance v1, Lio/realm/internal/OsObject$ObjectObserverPair;

    iget-object v2, p0, Lio/realm/ProxyState;->model:Lio/realm/RealmModel;

    invoke-direct {v1, v2, p1}, Lio/realm/internal/OsObject$ObjectObserverPair;-><init>(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/ObserverPairList;->add(Lio/realm/internal/ObserverPairList$ObserverPair;)V

    goto :goto_27

    .line 138
    :cond_13
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    instance-of v0, v0, Lio/realm/internal/UncheckedRow;

    if-eqz v0, :cond_27

    .line 139
    invoke-direct {p0}, Lio/realm/ProxyState;->registerToObjectNotifier()V

    .line 140
    iget-object v0, p0, Lio/realm/ProxyState;->osObject:Lio/realm/internal/OsObject;

    if-eqz v0, :cond_27

    .line 141
    iget-object v0, p0, Lio/realm/ProxyState;->osObject:Lio/realm/internal/OsObject;

    iget-object v1, p0, Lio/realm/ProxyState;->model:Lio/realm/RealmModel;

    invoke-virtual {v0, v1, p1}, Lio/realm/internal/OsObject;->addListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V

    .line 144
    :cond_27
    :goto_27
    return-void
.end method

.method public checkValidObject(Lio/realm/RealmModel;)V
    .registers 4
    .param p1, "value"    # Lio/realm/RealmModel;

    .line 212
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 215
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-ne v0, v1, :cond_1e

    .line 218
    return-void

    .line 216
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'value\' belongs to a different Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'value\' is not a valid managed object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcceptDefaultValue$realm()Z
    .registers 2

    .line 112
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    iget-boolean v0, p0, Lio/realm/ProxyState;->acceptDefaultValue:Z

    return v0
.end method

.method public getExcludeFields$realm()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    iget-object v0, p0, Lio/realm/ProxyState;->excludeFields:Ljava/util/List;

    return-object v0
.end method

.method public getRealm$realm()Lio/realm/BaseRealm;
    .registers 2

    .line 96
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    iget-object v0, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    return-object v0
.end method

.method public getRow$realm()Lio/realm/internal/Row;
    .registers 2

    .line 104
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    return-object v0
.end method

.method public isLoaded()Z
    .registers 2

    .line 186
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    instance-of v0, v0, Lio/realm/internal/PendingRow;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isUnderConstruction()Z
    .registers 2

    .line 163
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    iget-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    return v0
.end method

.method public load()V
    .registers 2

    .line 190
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    instance-of v0, v0, Lio/realm/internal/PendingRow;

    if-eqz v0, :cond_d

    .line 191
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    check-cast v0, Lio/realm/internal/PendingRow;

    invoke-virtual {v0}, Lio/realm/internal/PendingRow;->executeQuery()V

    .line 193
    :cond_d
    return-void
.end method

.method public onQueryFinished(Lio/realm/internal/Row;)V
    .registers 3
    .param p1, "row"    # Lio/realm/internal/Row;

    .line 197
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    iput-object p1, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    .line 199
    invoke-direct {p0}, Lio/realm/ProxyState;->notifyQueryFinished()V

    .line 200
    invoke-interface {p1}, Lio/realm/internal/Row;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 201
    invoke-direct {p0}, Lio/realm/ProxyState;->registerToObjectNotifier()V

    .line 203
    :cond_e
    return-void
.end method

.method public removeAllChangeListeners()V
    .registers 3

    .line 155
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    iget-object v0, p0, Lio/realm/ProxyState;->osObject:Lio/realm/internal/OsObject;

    if-eqz v0, :cond_c

    .line 156
    iget-object v0, p0, Lio/realm/ProxyState;->osObject:Lio/realm/internal/OsObject;

    iget-object v1, p0, Lio/realm/ProxyState;->model:Lio/realm/RealmModel;

    invoke-virtual {v0, v1}, Lio/realm/internal/OsObject;->removeListener(Lio/realm/RealmModel;)V

    goto :goto_11

    .line 158
    :cond_c
    iget-object v0, p0, Lio/realm/ProxyState;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->clear()V

    .line 160
    :goto_11
    return-void
.end method

.method public removeChangeListener(Lio/realm/RealmObjectChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmObjectChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 147
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    .local p1, "listener":Lio/realm/RealmObjectChangeListener;, "Lio/realm/RealmObjectChangeListener<TE;>;"
    iget-object v0, p0, Lio/realm/ProxyState;->osObject:Lio/realm/internal/OsObject;

    if-eqz v0, :cond_c

    .line 148
    iget-object v0, p0, Lio/realm/ProxyState;->osObject:Lio/realm/internal/OsObject;

    iget-object v1, p0, Lio/realm/ProxyState;->model:Lio/realm/RealmModel;

    invoke-virtual {v0, v1, p1}, Lio/realm/internal/OsObject;->removeListener(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V

    goto :goto_13

    .line 150
    :cond_c
    iget-object v0, p0, Lio/realm/ProxyState;->observerPairs:Lio/realm/internal/ObserverPairList;

    iget-object v1, p0, Lio/realm/ProxyState;->model:Lio/realm/RealmModel;

    invoke-virtual {v0, v1, p1}, Lio/realm/internal/ObserverPairList;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    :goto_13
    return-void
.end method

.method public setAcceptDefaultValue$realm(Z)V
    .registers 2
    .param p1, "acceptDefaultValue"    # Z

    .line 116
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    iput-boolean p1, p0, Lio/realm/ProxyState;->acceptDefaultValue:Z

    .line 117
    return-void
.end method

.method public setConstructionFinished()V
    .registers 2

    .line 167
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/ProxyState;->excludeFields:Ljava/util/List;

    .line 170
    return-void
.end method

.method public setExcludeFields$realm(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    .local p1, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lio/realm/ProxyState;->excludeFields:Ljava/util/List;

    .line 126
    return-void
.end method

.method public setRealm$realm(Lio/realm/BaseRealm;)V
    .registers 2
    .param p1, "realm"    # Lio/realm/BaseRealm;

    .line 100
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    iput-object p1, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    .line 101
    return-void
.end method

.method public setRow$realm(Lio/realm/internal/Row;)V
    .registers 2
    .param p1, "row"    # Lio/realm/internal/Row;

    .line 108
    .local p0, "this":Lio/realm/ProxyState;, "Lio/realm/ProxyState<TE;>;"
    iput-object p1, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    .line 109
    return-void
.end method

###### Class io.realm.ProxyState.AnonymousClass1 (io.realm.ProxyState$1)
.class synthetic Lio/realm/ProxyState$1;
.super Ljava/lang/Object;
.source "ProxyState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/ProxyState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.realm.ProxyState.QueryCallback (io.realm.ProxyState$QueryCallback)
.class Lio/realm/ProxyState$QueryCallback;
.super Ljava/lang/Object;
.source "ProxyState.java"

# interfaces
.implements Lio/realm/internal/ObserverPairList$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/ProxyState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/internal/ObserverPairList$Callback<",
        "Lio/realm/internal/OsObject$ObjectObserverPair;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/ProxyState$1;)V
    .registers 2
    .param p1, "x0"    # Lio/realm/ProxyState$1;

    .line 65
    invoke-direct {p0}, Lio/realm/ProxyState$QueryCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCalled(Lio/realm/internal/ObserverPairList$ObserverPair;Ljava/lang/Object;)V
    .registers 3

    .line 65
    check-cast p1, Lio/realm/internal/OsObject$ObjectObserverPair;

    invoke-virtual {p0, p1, p2}, Lio/realm/ProxyState$QueryCallback;->onCalled(Lio/realm/internal/OsObject$ObjectObserverPair;Ljava/lang/Object;)V

    return-void
.end method

.method public onCalled(Lio/realm/internal/OsObject$ObjectObserverPair;Ljava/lang/Object;)V
    .registers 5
    .param p1, "pair"    # Lio/realm/internal/OsObject$ObjectObserverPair;
    .param p2, "observer"    # Ljava/lang/Object;

    .line 70
    move-object v0, p2

    check-cast v0, Lio/realm/RealmModel;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/OsObject$ObjectObserverPair;->onChange(Lio/realm/RealmModel;Lio/realm/ObjectChangeSet;)V

    .line 71
    return-void
.end method

###### Class io.realm.ProxyState.RealmChangeListenerWrapper (io.realm.ProxyState$RealmChangeListenerWrapper)
.class Lio/realm/ProxyState$RealmChangeListenerWrapper;
.super Ljava/lang/Object;
.source "ProxyState.java"

# interfaces
.implements Lio/realm/RealmObjectChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/ProxyState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RealmChangeListenerWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/realm/RealmModel;",
        ">",
        "Ljava/lang/Object;",
        "Lio/realm/RealmObjectChangeListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final listener:Lio/realm/RealmChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmChangeListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/realm/RealmChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lio/realm/ProxyState$RealmChangeListenerWrapper;, "Lio/realm/ProxyState$RealmChangeListenerWrapper<TT;>;"
    .local p1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_8

    .line 45
    iput-object p1, p0, Lio/realm/ProxyState$RealmChangeListenerWrapper;->listener:Lio/realm/RealmChangeListener;

    .line 46
    return-void

    .line 43
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 55
    .local p0, "this":Lio/realm/ProxyState$RealmChangeListenerWrapper;, "Lio/realm/ProxyState$RealmChangeListenerWrapper<TT;>;"
    instance-of v0, p1, Lio/realm/ProxyState$RealmChangeListenerWrapper;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/realm/ProxyState$RealmChangeListenerWrapper;->listener:Lio/realm/RealmChangeListener;

    move-object v1, p1

    check-cast v1, Lio/realm/ProxyState$RealmChangeListenerWrapper;

    iget-object v1, v1, Lio/realm/ProxyState$RealmChangeListenerWrapper;->listener:Lio/realm/RealmChangeListener;

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 61
    .local p0, "this":Lio/realm/ProxyState$RealmChangeListenerWrapper;, "Lio/realm/ProxyState$RealmChangeListenerWrapper<TT;>;"
    iget-object v0, p0, Lio/realm/ProxyState$RealmChangeListenerWrapper;->listener:Lio/realm/RealmChangeListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onChange(Lio/realm/RealmModel;Lio/realm/ObjectChangeSet;)V
    .registers 4
    .param p2, "changes"    # Lio/realm/ObjectChangeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/realm/ObjectChangeSet;",
            ")V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lio/realm/ProxyState$RealmChangeListenerWrapper;, "Lio/realm/ProxyState$RealmChangeListenerWrapper<TT;>;"
    .local p1, "object":Lio/realm/RealmModel;, "TT;"
    iget-object v0, p0, Lio/realm/ProxyState$RealmChangeListenerWrapper;->listener:Lio/realm/RealmChangeListener;

    invoke-interface {v0, p1}, Lio/realm/RealmChangeListener;->onChange(Ljava/lang/Object;)V

    .line 51
    return-void
.end method
