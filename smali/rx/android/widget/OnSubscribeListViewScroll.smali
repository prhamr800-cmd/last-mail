###### Class rx.android.widget.OnSubscribeListViewScroll (rx.android.widget.OnSubscribeListViewScroll)
.class Lrx/android/widget/OnSubscribeListViewScroll;
.super Ljava/lang/Object;
.source "OnSubscribeListViewScroll.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/android/widget/OnSubscribeListViewScroll$CachedListeners;,
        Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Lrx/android/widget/OnListViewScrollEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final listView:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .registers 2
    .param p1, "listView"    # Landroid/widget/AbsListView;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/android/widget/OnSubscribeListViewScroll;->listView:Landroid/widget/AbsListView;

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 30
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/android/widget/OnSubscribeListViewScroll;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lrx/android/widget/OnListViewScrollEvent;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "observer":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/android/widget/OnListViewScrollEvent;>;"
    invoke-static {}, Lrx/android/internal/Assertions;->assertUiThread()V

    .line 42
    iget-object v0, p0, Lrx/android/widget/OnSubscribeListViewScroll;->listView:Landroid/widget/AbsListView;

    invoke-static {v0}, Lrx/android/widget/OnSubscribeListViewScroll$CachedListeners;->getFromViewOrCreate(Landroid/widget/AbsListView;)Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;

    move-result-object v0

    .line 43
    .local v0, "composite":Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;
    new-instance v1, Lrx/android/widget/OnSubscribeListViewScroll$1;

    invoke-direct {v1, p0, p1}, Lrx/android/widget/OnSubscribeListViewScroll$1;-><init>(Lrx/android/widget/OnSubscribeListViewScroll;Lrx/Subscriber;)V

    .line 59
    .local v1, "listener":Landroid/widget/AbsListView$OnScrollListener;
    invoke-virtual {v0, v1}, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z

    .line 60
    new-instance v2, Lrx/android/widget/OnSubscribeListViewScroll$2;

    invoke-direct {v2, p0, v0, v1}, Lrx/android/widget/OnSubscribeListViewScroll$2;-><init>(Lrx/android/widget/OnSubscribeListViewScroll;Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-static {v2}, Lrx/android/AndroidSubscriptions;->unsubscribeInUiThread(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 66
    return-void
.end method

###### Class rx.android.widget.OnSubscribeListViewScroll.AnonymousClass1 (rx.android.widget.OnSubscribeListViewScroll$1)
.class Lrx/android/widget/OnSubscribeListViewScroll$1;
.super Ljava/lang/Object;
.source "OnSubscribeListViewScroll.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/widget/OnSubscribeListViewScroll;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field currentScrollState:I

.field final synthetic this$0:Lrx/android/widget/OnSubscribeListViewScroll;

.field final synthetic val$observer:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/android/widget/OnSubscribeListViewScroll;Lrx/Subscriber;)V
    .registers 3

    .line 43
    iput-object p1, p0, Lrx/android/widget/OnSubscribeListViewScroll$1;->this$0:Lrx/android/widget/OnSubscribeListViewScroll;

    iput-object p2, p0, Lrx/android/widget/OnSubscribeListViewScroll$1;->val$observer:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 p1, 0x0

    iput p1, p0, Lrx/android/widget/OnSubscribeListViewScroll$1;->currentScrollState:I

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 7
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 53
    iget v0, p0, Lrx/android/widget/OnSubscribeListViewScroll$1;->currentScrollState:I

    invoke-static {p1, v0, p2, p3, p4}, Lrx/android/widget/OnListViewScrollEvent;->create(Landroid/widget/AbsListView;IIII)Lrx/android/widget/OnListViewScrollEvent;

    move-result-object v0

    .line 55
    .local v0, "event":Lrx/android/widget/OnListViewScrollEvent;
    iget-object v1, p0, Lrx/android/widget/OnSubscribeListViewScroll$1;->val$observer:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 48
    iput p2, p0, Lrx/android/widget/OnSubscribeListViewScroll$1;->currentScrollState:I

    .line 49
    return-void
.end method

###### Class rx.android.widget.OnSubscribeListViewScroll.AnonymousClass2 (rx.android.widget.OnSubscribeListViewScroll$2)
.class Lrx/android/widget/OnSubscribeListViewScroll$2;
.super Ljava/lang/Object;
.source "OnSubscribeListViewScroll.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/widget/OnSubscribeListViewScroll;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/widget/OnSubscribeListViewScroll;

.field final synthetic val$composite:Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;

.field final synthetic val$listener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method constructor <init>(Lrx/android/widget/OnSubscribeListViewScroll;Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 4

    .line 60
    iput-object p1, p0, Lrx/android/widget/OnSubscribeListViewScroll$2;->this$0:Lrx/android/widget/OnSubscribeListViewScroll;

    iput-object p2, p0, Lrx/android/widget/OnSubscribeListViewScroll$2;->val$composite:Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;

    iput-object p3, p0, Lrx/android/widget/OnSubscribeListViewScroll$2;->val$listener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 63
    iget-object v0, p0, Lrx/android/widget/OnSubscribeListViewScroll$2;->val$composite:Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;

    iget-object v1, p0, Lrx/android/widget/OnSubscribeListViewScroll$2;->val$listener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;->removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z

    .line 64
    return-void
.end method

###### Class rx.android.widget.OnSubscribeListViewScroll.CachedListeners (rx.android.widget.OnSubscribeListViewScroll$CachedListeners)
.class Lrx/android/widget/OnSubscribeListViewScroll$CachedListeners;
.super Ljava/lang/Object;
.source "OnSubscribeListViewScroll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/widget/OnSubscribeListViewScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedListeners"
.end annotation


# static fields
.field private static final sCachedListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 97
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lrx/android/widget/OnSubscribeListViewScroll$CachedListeners;->sCachedListeners:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFromViewOrCreate(Landroid/widget/AbsListView;)Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;
    .registers 4
    .param p0, "view"    # Landroid/widget/AbsListView;

    .line 101
    sget-object v0, Lrx/android/widget/OnSubscribeListViewScroll$CachedListeners;->sCachedListeners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;

    .line 102
    .local v0, "cached":Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;
    if-eqz v0, :cond_b

    .line 103
    return-object v0

    .line 106
    :cond_b
    new-instance v1, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;-><init>(Lrx/android/widget/OnSubscribeListViewScroll$1;)V

    .line 108
    .local v1, "listener":Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;
    sget-object v2, Lrx/android/widget/OnSubscribeListViewScroll$CachedListeners;->sCachedListeners:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 111
    return-object v1
.end method

###### Class rx.android.widget.OnSubscribeListViewScroll.CompositeOnScrollListener (rx.android.widget.OnSubscribeListViewScroll$CompositeOnScrollListener)
.class Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;
.super Ljava/lang/Object;
.source "OnSubscribeListViewScroll.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/widget/OnSubscribeListViewScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositeOnScrollListener"
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;->listeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lrx/android/widget/OnSubscribeListViewScroll$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/android/widget/OnSubscribeListViewScroll$1;

    .line 68
    invoke-direct {p0}, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .line 73
    iget-object v0, p0, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 7
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 89
    iget-object v0, p0, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    .line 90
    .local v1, "listener":Landroid/widget/AbsListView$OnScrollListener;
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 91
    .end local v1    # "listener":Landroid/widget/AbsListView$OnScrollListener;
    goto :goto_6

    .line 92
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_16
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 82
    iget-object v0, p0, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    .line 83
    .local v1, "listener":Landroid/widget/AbsListView$OnScrollListener;
    invoke-interface {v1, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 84
    .end local v1    # "listener":Landroid/widget/AbsListView$OnScrollListener;
    goto :goto_6

    .line 85
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_16
    return-void
.end method

.method public removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .line 77
    iget-object v0, p0, Lrx/android/widget/OnSubscribeListViewScroll$CompositeOnScrollListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
