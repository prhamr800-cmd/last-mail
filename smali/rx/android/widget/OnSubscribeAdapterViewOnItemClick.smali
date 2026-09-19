###### Class rx.android.widget.OnSubscribeAdapterViewOnItemClick (rx.android.widget.OnSubscribeAdapterViewOnItemClick)
.class Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;
.super Ljava/lang/Object;
.source "OnSubscribeAdapterViewOnItemClick.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CachedListeners;,
        Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Lrx/android/widget/OnItemClickEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapterView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 36
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;->adapterView:Landroid/widget/AdapterView;

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 32
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lrx/android/widget/OnItemClickEvent;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "observer":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/android/widget/OnItemClickEvent;>;"
    invoke-static {}, Lrx/android/internal/Assertions;->assertUiThread()V

    .line 43
    iget-object v0, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;->adapterView:Landroid/widget/AdapterView;

    invoke-static {v0}, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CachedListeners;->getFromViewOrCreate(Landroid/widget/AdapterView;)Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;

    move-result-object v0

    .line 45
    .local v0, "composite":Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;
    new-instance v1, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$1;

    invoke-direct {v1, p0, p1}, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$1;-><init>(Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;Lrx/Subscriber;)V

    .line 52
    .local v1, "listener":Landroid/widget/AdapterView$OnItemClickListener;
    new-instance v2, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$2;

    invoke-direct {v2, p0, v0, v1}, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$2;-><init>(Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {v2}, Lrx/android/AndroidSubscriptions;->unsubscribeInUiThread(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    .line 59
    .local v2, "subscription":Lrx/Subscription;
    invoke-virtual {v0, v1}, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;->addOnClickListener(Landroid/widget/AdapterView$OnItemClickListener;)Z

    .line 60
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 61
    return-void
.end method

###### Class rx.android.widget.OnSubscribeAdapterViewOnItemClick.AnonymousClass1 (rx.android.widget.OnSubscribeAdapterViewOnItemClick$1)
.class Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$1;
.super Ljava/lang/Object;
.source "OnSubscribeAdapterViewOnItemClick.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;

.field final synthetic val$observer:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;Lrx/Subscriber;)V
    .registers 3

    .line 45
    iput-object p1, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$1;->this$0:Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;

    iput-object p2, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$1;->val$observer:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 48
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$1;->val$observer:Lrx/Subscriber;

    invoke-static {p1, p2, p3, p4, p5}, Lrx/android/widget/OnItemClickEvent;->create(Landroid/widget/AdapterView;Landroid/view/View;IJ)Lrx/android/widget/OnItemClickEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

###### Class rx.android.widget.OnSubscribeAdapterViewOnItemClick.AnonymousClass2 (rx.android.widget.OnSubscribeAdapterViewOnItemClick$2)
.class Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$2;
.super Ljava/lang/Object;
.source "OnSubscribeAdapterViewOnItemClick.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;

.field final synthetic val$composite:Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;

.field final synthetic val$listener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>(Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 4

    .line 52
    iput-object p1, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$2;->this$0:Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;

    iput-object p2, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$2;->val$composite:Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;

    iput-object p3, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$2;->val$listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 55
    iget-object v0, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$2;->val$composite:Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;

    iget-object v1, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$2;->val$listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;->removeOnClickListener(Landroid/widget/AdapterView$OnItemClickListener;)Z

    .line 56
    return-void
.end method

###### Class rx.android.widget.OnSubscribeAdapterViewOnItemClick.CachedListeners (rx.android.widget.OnSubscribeAdapterViewOnItemClick$CachedListeners)
.class Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CachedListeners;
.super Ljava/lang/Object;
.source "OnSubscribeAdapterViewOnItemClick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;
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
            "Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CachedListeners;->sCachedListeners:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFromViewOrCreate(Landroid/widget/AdapterView;)Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)",
            "Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;"
        }
    .end annotation

    .line 86
    .local p0, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CachedListeners;->sCachedListeners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;

    .line 88
    .local v0, "cached":Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;
    if-eqz v0, :cond_b

    .line 89
    return-object v0

    .line 92
    :cond_b
    new-instance v1, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;-><init>(Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$1;)V

    .line 94
    .local v1, "listener":Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;
    sget-object v2, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CachedListeners;->sCachedListeners:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    return-object v1
.end method

###### Class rx.android.widget.OnSubscribeAdapterViewOnItemClick.CompositeOnClickListener (rx.android.widget.OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener)
.class Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;
.super Ljava/lang/Object;
.source "OnSubscribeAdapterViewOnItemClick.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositeOnClickListener"
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;->listeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$1;

    .line 63
    invoke-direct {p0}, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnClickListener(Landroid/widget/AdapterView$OnItemClickListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 67
    iget-object v0, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 76
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$OnItemClickListener;

    .line 77
    .local v1, "listener":Landroid/widget/AdapterView$OnItemClickListener;
    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 78
    .end local v1    # "listener":Landroid/widget/AdapterView$OnItemClickListener;
    goto :goto_6

    .line 79
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1b
    return-void
.end method

.method public removeOnClickListener(Landroid/widget/AdapterView$OnItemClickListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 71
    iget-object v0, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
