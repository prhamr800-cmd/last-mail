###### Class io.realm.internal.SubscriptionAwareOsResults (io.realm.internal.SubscriptionAwareOsResults)
.class public Lio/realm/internal/SubscriptionAwareOsResults;
.super Lio/realm/internal/OsResults;
.source "SubscriptionAwareOsResults.java"


# instance fields
.field private collectionChanged:Z

.field private delayedNotificationPtr:J

.field private firstCallback:Z

.field private subscription:Lio/realm/internal/sync/OsSubscription;

.field private subscriptionChanged:Z


# direct methods
.method constructor <init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;JLjava/lang/String;)V
    .registers 8
    .param p1, "sharedRealm"    # Lio/realm/internal/OsSharedRealm;
    .param p2, "table"    # Lio/realm/internal/Table;
    .param p3, "nativePtr"    # J
    .param p5, "subscriptionName"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->delayedNotificationPtr:J

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->subscription:Lio/realm/internal/sync/OsSubscription;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->collectionChanged:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->firstCallback:Z

    .line 53
    new-instance v0, Lio/realm/internal/sync/OsSubscription;

    invoke-direct {v0, p0, p5}, Lio/realm/internal/sync/OsSubscription;-><init>(Lio/realm/internal/OsResults;Ljava/lang/String;)V

    iput-object v0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->subscription:Lio/realm/internal/sync/OsSubscription;

    .line 54
    iget-object v0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->subscription:Lio/realm/internal/sync/OsSubscription;

    new-instance v1, Lio/realm/internal/SubscriptionAwareOsResults$1;

    invoke-direct {v1, p0}, Lio/realm/internal/SubscriptionAwareOsResults$1;-><init>(Lio/realm/internal/SubscriptionAwareOsResults;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/sync/OsSubscription;->addChangeListener(Lio/realm/RealmChangeListener;)V

    .line 60
    iget-object v0, p1, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    .line 61
    .local v0, "notifier":Lio/realm/internal/RealmNotifier;
    new-instance v1, Lio/realm/internal/SubscriptionAwareOsResults$2;

    invoke-direct {v1, p0}, Lio/realm/internal/SubscriptionAwareOsResults$2;-><init>(Lio/realm/internal/SubscriptionAwareOsResults;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/RealmNotifier;->addBeginSendingNotificationsCallback(Ljava/lang/Runnable;)V

    .line 69
    new-instance v1, Lio/realm/internal/SubscriptionAwareOsResults$3;

    invoke-direct {v1, p0}, Lio/realm/internal/SubscriptionAwareOsResults$3;-><init>(Lio/realm/internal/SubscriptionAwareOsResults;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/RealmNotifier;->addFinishedSendingNotificationsCallback(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lio/realm/internal/SubscriptionAwareOsResults;)Z
    .registers 2
    .param p0, "x0"    # Lio/realm/internal/SubscriptionAwareOsResults;

    .line 28
    iget-boolean v0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->subscriptionChanged:Z

    return v0
.end method

.method static synthetic access$002(Lio/realm/internal/SubscriptionAwareOsResults;Z)Z
    .registers 2
    .param p0, "x0"    # Lio/realm/internal/SubscriptionAwareOsResults;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lio/realm/internal/SubscriptionAwareOsResults;->subscriptionChanged:Z

    return p1
.end method

.method static synthetic access$100(Lio/realm/internal/SubscriptionAwareOsResults;)Z
    .registers 2
    .param p0, "x0"    # Lio/realm/internal/SubscriptionAwareOsResults;

    .line 28
    iget-boolean v0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->collectionChanged:Z

    return v0
.end method

.method static synthetic access$102(Lio/realm/internal/SubscriptionAwareOsResults;Z)Z
    .registers 2
    .param p0, "x0"    # Lio/realm/internal/SubscriptionAwareOsResults;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lio/realm/internal/SubscriptionAwareOsResults;->collectionChanged:Z

    return p1
.end method

.method static synthetic access$202(Lio/realm/internal/SubscriptionAwareOsResults;J)J
    .registers 3
    .param p0, "x0"    # Lio/realm/internal/SubscriptionAwareOsResults;
    .param p1, "x1"    # J

    .line 28
    iput-wide p1, p0, Lio/realm/internal/SubscriptionAwareOsResults;->delayedNotificationPtr:J

    return-wide p1
.end method

.method static synthetic access$300(Lio/realm/internal/SubscriptionAwareOsResults;)V
    .registers 1
    .param p0, "x0"    # Lio/realm/internal/SubscriptionAwareOsResults;

    .line 28
    invoke-direct {p0}, Lio/realm/internal/SubscriptionAwareOsResults;->triggerDelayedChangeListener()V

    return-void
.end method

.method public static createFromQuery(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;Ljava/lang/String;)Lio/realm/internal/SubscriptionAwareOsResults;
    .registers 15
    .param p0, "sharedRealm"    # Lio/realm/internal/OsSharedRealm;
    .param p1, "query"    # Lio/realm/internal/TableQuery;
    .param p2, "sortDescriptor"    # Lio/realm/internal/SortDescriptor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "distinctDescriptor"    # Lio/realm/internal/SortDescriptor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "subscriptionName"    # Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 45
    invoke-virtual {p0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/realm/internal/TableQuery;->getNativePtr()J

    move-result-wide v2

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lio/realm/internal/SubscriptionAwareOsResults;->nativeCreateResults(JJLio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;)J

    move-result-wide v0

    .line 46
    .local v0, "ptr":J
    new-instance v2, Lio/realm/internal/SubscriptionAwareOsResults;

    invoke-virtual {p1}, Lio/realm/internal/TableQuery;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    move-object v4, v2

    move-object v5, p0

    move-wide v7, v0

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lio/realm/internal/SubscriptionAwareOsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;JLjava/lang/String;)V

    return-object v2
.end method

.method private triggerDelayedChangeListener()V
    .registers 10

    .line 81
    iget-boolean v0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->subscriptionChanged:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->subscription:Lio/realm/internal/sync/OsSubscription;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 86
    .local v0, "subscription":Lio/realm/internal/sync/OsSubscription;
    :goto_8
    iget-wide v1, p0, Lio/realm/internal/SubscriptionAwareOsResults;->delayedNotificationPtr:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_23

    if-eqz v0, :cond_23

    .line 88
    invoke-virtual {v0}, Lio/realm/internal/sync/OsSubscription;->getState()Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    move-result-object v1

    sget-object v2, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->ERROR:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    if-eq v1, v2, :cond_23

    .line 89
    invoke-virtual {v0}, Lio/realm/internal/sync/OsSubscription;->getState()Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    move-result-object v1

    sget-object v2, Lio/realm/internal/sync/OsSubscription$SubscriptionState;->COMPLETE:Lio/realm/internal/sync/OsSubscription$SubscriptionState;

    if-eq v1, v2, :cond_23

    .line 90
    return-void

    .line 94
    :cond_23
    iget-wide v1, p0, Lio/realm/internal/SubscriptionAwareOsResults;->delayedNotificationPtr:J

    const/4 v7, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_32

    .line 95
    new-instance v1, Lio/realm/internal/EmptyLoadChangeSet;

    iget-boolean v2, p0, Lio/realm/internal/SubscriptionAwareOsResults;->firstCallback:Z

    invoke-direct {v1, v0, v2, v7}, Lio/realm/internal/EmptyLoadChangeSet;-><init>(Lio/realm/internal/sync/OsSubscription;ZZ)V

    goto :goto_3e

    .line 97
    :cond_32
    new-instance v8, Lio/realm/internal/OsCollectionChangeSet;

    iget-wide v2, p0, Lio/realm/internal/SubscriptionAwareOsResults;->delayedNotificationPtr:J

    iget-boolean v4, p0, Lio/realm/internal/SubscriptionAwareOsResults;->firstCallback:Z

    const/4 v6, 0x1

    move-object v1, v8

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lio/realm/internal/OsCollectionChangeSet;-><init>(JZLio/realm/internal/sync/OsSubscription;Z)V

    .line 103
    .local v1, "changeset":Lio/realm/internal/OsCollectionChangeSet;
    :goto_3e
    invoke-virtual {v1}, Lio/realm/internal/OsCollectionChangeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-virtual {p0}, Lio/realm/internal/SubscriptionAwareOsResults;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 104
    return-void

    .line 106
    :cond_4b
    iput-boolean v7, p0, Lio/realm/internal/SubscriptionAwareOsResults;->loaded:Z

    .line 107
    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/realm/internal/SubscriptionAwareOsResults;->firstCallback:Z

    .line 108
    iget-object v2, p0, Lio/realm/internal/SubscriptionAwareOsResults;->observerPairs:Lio/realm/internal/ObserverPairList;

    new-instance v3, Lio/realm/internal/ObservableCollection$Callback;

    invoke-direct {v3, v1}, Lio/realm/internal/ObservableCollection$Callback;-><init>(Lio/realm/internal/OsCollectionChangeSet;)V

    invoke-virtual {v2, v3}, Lio/realm/internal/ObserverPairList;->foreach(Lio/realm/internal/ObserverPairList$Callback;)V

    .line 109
    return-void
.end method


# virtual methods
.method public notifyChangeListeners(J)V
    .registers 4
    .param p1, "nativeChangeSetPtr"    # J

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/SubscriptionAwareOsResults;->collectionChanged:Z

    .line 114
    iput-wide p1, p0, Lio/realm/internal/SubscriptionAwareOsResults;->delayedNotificationPtr:J

    .line 115
    return-void
.end method

###### Class io.realm.internal.SubscriptionAwareOsResults.AnonymousClass1 (io.realm.internal.SubscriptionAwareOsResults$1)
.class Lio/realm/internal/SubscriptionAwareOsResults$1;
.super Ljava/lang/Object;
.source "SubscriptionAwareOsResults.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/internal/SubscriptionAwareOsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/internal/sync/OsSubscription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/internal/SubscriptionAwareOsResults;


# direct methods
.method constructor <init>(Lio/realm/internal/SubscriptionAwareOsResults;)V
    .registers 2
    .param p1, "this$0"    # Lio/realm/internal/SubscriptionAwareOsResults;

    .line 54
    iput-object p1, p0, Lio/realm/internal/SubscriptionAwareOsResults$1;->this$0:Lio/realm/internal/SubscriptionAwareOsResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/internal/sync/OsSubscription;)V
    .registers 4
    .param p1, "o"    # Lio/realm/internal/sync/OsSubscription;

    .line 57
    iget-object v0, p0, Lio/realm/internal/SubscriptionAwareOsResults$1;->this$0:Lio/realm/internal/SubscriptionAwareOsResults;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/realm/internal/SubscriptionAwareOsResults;->access$002(Lio/realm/internal/SubscriptionAwareOsResults;Z)Z

    .line 58
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .registers 2

    .line 54
    check-cast p1, Lio/realm/internal/sync/OsSubscription;

    invoke-virtual {p0, p1}, Lio/realm/internal/SubscriptionAwareOsResults$1;->onChange(Lio/realm/internal/sync/OsSubscription;)V

    return-void
.end method

###### Class io.realm.internal.SubscriptionAwareOsResults.AnonymousClass2 (io.realm.internal.SubscriptionAwareOsResults$2)
.class Lio/realm/internal/SubscriptionAwareOsResults$2;
.super Ljava/lang/Object;
.source "SubscriptionAwareOsResults.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/internal/SubscriptionAwareOsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/internal/SubscriptionAwareOsResults;


# direct methods
.method constructor <init>(Lio/realm/internal/SubscriptionAwareOsResults;)V
    .registers 2
    .param p1, "this$0"    # Lio/realm/internal/SubscriptionAwareOsResults;

    .line 61
    iput-object p1, p0, Lio/realm/internal/SubscriptionAwareOsResults$2;->this$0:Lio/realm/internal/SubscriptionAwareOsResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 64
    iget-object v0, p0, Lio/realm/internal/SubscriptionAwareOsResults$2;->this$0:Lio/realm/internal/SubscriptionAwareOsResults;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/realm/internal/SubscriptionAwareOsResults;->access$002(Lio/realm/internal/SubscriptionAwareOsResults;Z)Z

    .line 65
    iget-object v0, p0, Lio/realm/internal/SubscriptionAwareOsResults$2;->this$0:Lio/realm/internal/SubscriptionAwareOsResults;

    invoke-static {v0, v1}, Lio/realm/internal/SubscriptionAwareOsResults;->access$102(Lio/realm/internal/SubscriptionAwareOsResults;Z)Z

    .line 66
    iget-object v0, p0, Lio/realm/internal/SubscriptionAwareOsResults$2;->this$0:Lio/realm/internal/SubscriptionAwareOsResults;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lio/realm/internal/SubscriptionAwareOsResults;->access$202(Lio/realm/internal/SubscriptionAwareOsResults;J)J

    .line 67
    return-void
.end method

###### Class io.realm.internal.SubscriptionAwareOsResults.AnonymousClass3 (io.realm.internal.SubscriptionAwareOsResults$3)
.class Lio/realm/internal/SubscriptionAwareOsResults$3;
.super Ljava/lang/Object;
.source "SubscriptionAwareOsResults.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/internal/SubscriptionAwareOsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/internal/SubscriptionAwareOsResults;


# direct methods
.method constructor <init>(Lio/realm/internal/SubscriptionAwareOsResults;)V
    .registers 2
    .param p1, "this$0"    # Lio/realm/internal/SubscriptionAwareOsResults;

    .line 69
    iput-object p1, p0, Lio/realm/internal/SubscriptionAwareOsResults$3;->this$0:Lio/realm/internal/SubscriptionAwareOsResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 72
    iget-object v0, p0, Lio/realm/internal/SubscriptionAwareOsResults$3;->this$0:Lio/realm/internal/SubscriptionAwareOsResults;

    invoke-static {v0}, Lio/realm/internal/SubscriptionAwareOsResults;->access$100(Lio/realm/internal/SubscriptionAwareOsResults;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lio/realm/internal/SubscriptionAwareOsResults$3;->this$0:Lio/realm/internal/SubscriptionAwareOsResults;

    invoke-static {v0}, Lio/realm/internal/SubscriptionAwareOsResults;->access$000(Lio/realm/internal/SubscriptionAwareOsResults;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 73
    :cond_10
    iget-object v0, p0, Lio/realm/internal/SubscriptionAwareOsResults$3;->this$0:Lio/realm/internal/SubscriptionAwareOsResults;

    invoke-static {v0}, Lio/realm/internal/SubscriptionAwareOsResults;->access$300(Lio/realm/internal/SubscriptionAwareOsResults;)V

    .line 75
    :cond_15
    return-void
.end method
