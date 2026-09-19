###### Class rx.android.view.OnSubscribeViewClick (rx.android.view.OnSubscribeViewClick)
.class final Lrx/android/view/OnSubscribeViewClick;
.super Ljava/lang/Object;
.source "OnSubscribeViewClick.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/android/view/OnSubscribeViewClick$CachedListeners;,
        Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Lrx/android/view/OnClickEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final emitInitialValue:Z

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "emitInitialValue"    # Z

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p2, p0, Lrx/android/view/OnSubscribeViewClick;->emitInitialValue:Z

    .line 35
    iput-object p1, p0, Lrx/android/view/OnSubscribeViewClick;->view:Landroid/view/View;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lrx/android/view/OnSubscribeViewClick;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lrx/android/view/OnSubscribeViewClick;

    .line 29
    iget-object v0, p0, Lrx/android/view/OnSubscribeViewClick;->view:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 29
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/android/view/OnSubscribeViewClick;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lrx/android/view/OnClickEvent;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "observer":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/android/view/OnClickEvent;>;"
    invoke-static {}, Lrx/android/internal/Assertions;->assertUiThread()V

    .line 41
    iget-object v0, p0, Lrx/android/view/OnSubscribeViewClick;->view:Landroid/view/View;

    invoke-static {v0}, Lrx/android/view/OnSubscribeViewClick$CachedListeners;->getFromViewOrCreate(Landroid/view/View;)Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;

    move-result-object v0

    .line 43
    .local v0, "composite":Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;
    new-instance v1, Lrx/android/view/OnSubscribeViewClick$1;

    invoke-direct {v1, p0, p1}, Lrx/android/view/OnSubscribeViewClick$1;-><init>(Lrx/android/view/OnSubscribeViewClick;Lrx/Subscriber;)V

    .line 50
    .local v1, "listener":Landroid/view/View$OnClickListener;
    new-instance v2, Lrx/android/view/OnSubscribeViewClick$2;

    invoke-direct {v2, p0, v0, v1}, Lrx/android/view/OnSubscribeViewClick$2;-><init>(Lrx/android/view/OnSubscribeViewClick;Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-static {v2}, Lrx/android/AndroidSubscriptions;->unsubscribeInUiThread(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    .line 57
    .local v2, "subscription":Lrx/Subscription;
    iget-boolean v3, p0, Lrx/android/view/OnSubscribeViewClick;->emitInitialValue:Z

    if-eqz v3, :cond_24

    .line 58
    iget-object v3, p0, Lrx/android/view/OnSubscribeViewClick;->view:Landroid/view/View;

    invoke-static {v3}, Lrx/android/view/OnClickEvent;->create(Landroid/view/View;)Lrx/android/view/OnClickEvent;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 61
    :cond_24
    invoke-virtual {v0, v1}, Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;->addOnClickListener(Landroid/view/View$OnClickListener;)Z

    .line 62
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 63
    return-void
.end method

###### Class rx.android.view.OnSubscribeViewClick.AnonymousClass1 (rx.android.view.OnSubscribeViewClick$1)
.class Lrx/android/view/OnSubscribeViewClick$1;
.super Ljava/lang/Object;
.source "OnSubscribeViewClick.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/view/OnSubscribeViewClick;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/view/OnSubscribeViewClick;

.field final synthetic val$observer:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/android/view/OnSubscribeViewClick;Lrx/Subscriber;)V
    .registers 3

    .line 43
    iput-object p1, p0, Lrx/android/view/OnSubscribeViewClick$1;->this$0:Lrx/android/view/OnSubscribeViewClick;

    iput-object p2, p0, Lrx/android/view/OnSubscribeViewClick$1;->val$observer:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "clicked"    # Landroid/view/View;

    .line 46
    iget-object v0, p0, Lrx/android/view/OnSubscribeViewClick$1;->val$observer:Lrx/Subscriber;

    iget-object v1, p0, Lrx/android/view/OnSubscribeViewClick$1;->this$0:Lrx/android/view/OnSubscribeViewClick;

    invoke-static {v1}, Lrx/android/view/OnSubscribeViewClick;->access$000(Lrx/android/view/OnSubscribeViewClick;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lrx/android/view/OnClickEvent;->create(Landroid/view/View;)Lrx/android/view/OnClickEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

###### Class rx.android.view.OnSubscribeViewClick.AnonymousClass2 (rx.android.view.OnSubscribeViewClick$2)
.class Lrx/android/view/OnSubscribeViewClick$2;
.super Ljava/lang/Object;
.source "OnSubscribeViewClick.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/view/OnSubscribeViewClick;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/view/OnSubscribeViewClick;

.field final synthetic val$composite:Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lrx/android/view/OnSubscribeViewClick;Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 4

    .line 50
    iput-object p1, p0, Lrx/android/view/OnSubscribeViewClick$2;->this$0:Lrx/android/view/OnSubscribeViewClick;

    iput-object p2, p0, Lrx/android/view/OnSubscribeViewClick$2;->val$composite:Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;

    iput-object p3, p0, Lrx/android/view/OnSubscribeViewClick$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 53
    iget-object v0, p0, Lrx/android/view/OnSubscribeViewClick$2;->val$composite:Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;

    iget-object v1, p0, Lrx/android/view/OnSubscribeViewClick$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;->removeOnClickListener(Landroid/view/View$OnClickListener;)Z

    .line 54
    return-void
.end method

###### Class rx.android.view.OnSubscribeViewClick.CachedListeners (rx.android.view.OnSubscribeViewClick$CachedListeners)
.class Lrx/android/view/OnSubscribeViewClick$CachedListeners;
.super Ljava/lang/Object;
.source "OnSubscribeViewClick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/view/OnSubscribeViewClick;
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
            "Landroid/view/View;",
            "Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lrx/android/view/OnSubscribeViewClick$CachedListeners;->sCachedListeners:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFromViewOrCreate(Landroid/view/View;)Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 88
    sget-object v0, Lrx/android/view/OnSubscribeViewClick$CachedListeners;->sCachedListeners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;

    .line 90
    .local v0, "cached":Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;
    if-eqz v0, :cond_b

    .line 91
    return-object v0

    .line 94
    :cond_b
    new-instance v1, Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;-><init>(Lrx/android/view/OnSubscribeViewClick$1;)V

    .line 96
    .local v1, "listener":Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;
    sget-object v2, Lrx/android/view/OnSubscribeViewClick$CachedListeners;->sCachedListeners:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-object v1
.end method

###### Class rx.android.view.OnSubscribeViewClick.CompositeOnClickListener (rx.android.view.OnSubscribeViewClick$CompositeOnClickListener)
.class Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;
.super Ljava/lang/Object;
.source "OnSubscribeViewClick.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/view/OnSubscribeViewClick;
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
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;->listeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lrx/android/view/OnSubscribeViewClick$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/android/view/OnSubscribeViewClick$1;

    .line 65
    invoke-direct {p0}, Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnClickListener(Landroid/view/View$OnClickListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 69
    iget-object v0, p0, Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 78
    iget-object v0, p0, Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnClickListener;

    .line 79
    .local v1, "listener":Landroid/view/View$OnClickListener;
    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 80
    .end local v1    # "listener":Landroid/view/View$OnClickListener;
    goto :goto_6

    .line 81
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_16
    return-void
.end method

.method public removeOnClickListener(Landroid/view/View$OnClickListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 73
    iget-object v0, p0, Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
