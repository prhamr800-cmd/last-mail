###### Class rx.android.widget.OnSubscribeCompoundButtonInput (rx.android.widget.OnSubscribeCompoundButtonInput)
.class Lrx/android/widget/OnSubscribeCompoundButtonInput;
.super Ljava/lang/Object;
.source "OnSubscribeCompoundButtonInput.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/android/widget/OnSubscribeCompoundButtonInput$CachedListeners;,
        Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Lrx/android/view/OnCheckedChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final button:Landroid/widget/CompoundButton;

.field private final emitInitialValue:Z


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton;Z)V
    .registers 3
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "emitInitialValue"    # Z

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p2, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput;->emitInitialValue:Z

    .line 37
    iput-object p1, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput;->button:Landroid/widget/CompoundButton;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lrx/android/widget/OnSubscribeCompoundButtonInput;)Landroid/widget/CompoundButton;
    .registers 2
    .param p0, "x0"    # Lrx/android/widget/OnSubscribeCompoundButtonInput;

    .line 31
    iget-object v0, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput;->button:Landroid/widget/CompoundButton;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 31
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/android/widget/OnSubscribeCompoundButtonInput;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lrx/android/view/OnCheckedChangeEvent;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "observer":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/android/view/OnCheckedChangeEvent;>;"
    invoke-static {}, Lrx/android/internal/Assertions;->assertUiThread()V

    .line 43
    iget-object v0, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput;->button:Landroid/widget/CompoundButton;

    invoke-static {v0}, Lrx/android/widget/OnSubscribeCompoundButtonInput$CachedListeners;->getFromViewOrCreate(Landroid/widget/CompoundButton;)Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;

    move-result-object v0

    .line 45
    .local v0, "composite":Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;
    new-instance v1, Lrx/android/widget/OnSubscribeCompoundButtonInput$1;

    invoke-direct {v1, p0, p1}, Lrx/android/widget/OnSubscribeCompoundButtonInput$1;-><init>(Lrx/android/widget/OnSubscribeCompoundButtonInput;Lrx/Subscriber;)V

    .line 52
    .local v1, "listener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    new-instance v2, Lrx/android/widget/OnSubscribeCompoundButtonInput$2;

    invoke-direct {v2, p0, v0, v1}, Lrx/android/widget/OnSubscribeCompoundButtonInput$2;-><init>(Lrx/android/widget/OnSubscribeCompoundButtonInput;Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {v2}, Lrx/android/AndroidSubscriptions;->unsubscribeInUiThread(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    .line 59
    .local v2, "subscription":Lrx/Subscription;
    iget-boolean v3, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput;->emitInitialValue:Z

    if-eqz v3, :cond_24

    .line 60
    iget-object v3, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput;->button:Landroid/widget/CompoundButton;

    invoke-static {v3}, Lrx/android/view/OnCheckedChangeEvent;->create(Landroid/widget/CompoundButton;)Lrx/android/view/OnCheckedChangeEvent;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 63
    :cond_24
    invoke-virtual {v0, v1}, Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;->addOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Z

    .line 64
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 65
    return-void
.end method

###### Class rx.android.widget.OnSubscribeCompoundButtonInput.AnonymousClass1 (rx.android.widget.OnSubscribeCompoundButtonInput$1)
.class Lrx/android/widget/OnSubscribeCompoundButtonInput$1;
.super Ljava/lang/Object;
.source "OnSubscribeCompoundButtonInput.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/widget/OnSubscribeCompoundButtonInput;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/widget/OnSubscribeCompoundButtonInput;

.field final synthetic val$observer:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/android/widget/OnSubscribeCompoundButtonInput;Lrx/Subscriber;)V
    .registers 3

    .line 45
    iput-object p1, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$1;->this$0:Lrx/android/widget/OnSubscribeCompoundButtonInput;

    iput-object p2, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$1;->val$observer:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 48
    iget-object v0, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$1;->val$observer:Lrx/Subscriber;

    iget-object v1, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$1;->this$0:Lrx/android/widget/OnSubscribeCompoundButtonInput;

    invoke-static {v1}, Lrx/android/widget/OnSubscribeCompoundButtonInput;->access$000(Lrx/android/widget/OnSubscribeCompoundButtonInput;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-static {v1, p2}, Lrx/android/view/OnCheckedChangeEvent;->create(Landroid/widget/CompoundButton;Z)Lrx/android/view/OnCheckedChangeEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

###### Class rx.android.widget.OnSubscribeCompoundButtonInput.AnonymousClass2 (rx.android.widget.OnSubscribeCompoundButtonInput$2)
.class Lrx/android/widget/OnSubscribeCompoundButtonInput$2;
.super Ljava/lang/Object;
.source "OnSubscribeCompoundButtonInput.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/widget/OnSubscribeCompoundButtonInput;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/widget/OnSubscribeCompoundButtonInput;

.field final synthetic val$composite:Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;

.field final synthetic val$listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method constructor <init>(Lrx/android/widget/OnSubscribeCompoundButtonInput;Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 4

    .line 52
    iput-object p1, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$2;->this$0:Lrx/android/widget/OnSubscribeCompoundButtonInput;

    iput-object p2, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$2;->val$composite:Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;

    iput-object p3, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$2;->val$listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 55
    iget-object v0, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$2;->val$composite:Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;

    iget-object v1, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$2;->val$listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;->removeOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Z

    .line 56
    return-void
.end method

###### Class rx.android.widget.OnSubscribeCompoundButtonInput.CachedListeners (rx.android.widget.OnSubscribeCompoundButtonInput$CachedListeners)
.class Lrx/android/widget/OnSubscribeCompoundButtonInput$CachedListeners;
.super Ljava/lang/Object;
.source "OnSubscribeCompoundButtonInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/widget/OnSubscribeCompoundButtonInput;
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
            "Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 87
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lrx/android/widget/OnSubscribeCompoundButtonInput$CachedListeners;->sCachedListeners:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFromViewOrCreate(Landroid/widget/CompoundButton;)Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;
    .registers 4
    .param p0, "button"    # Landroid/widget/CompoundButton;

    .line 90
    sget-object v0, Lrx/android/widget/OnSubscribeCompoundButtonInput$CachedListeners;->sCachedListeners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;

    .line 92
    .local v0, "cached":Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;
    if-eqz v0, :cond_b

    .line 93
    return-object v0

    .line 96
    :cond_b
    new-instance v1, Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;-><init>(Lrx/android/widget/OnSubscribeCompoundButtonInput$1;)V

    .line 98
    .local v1, "listener":Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;
    sget-object v2, Lrx/android/widget/OnSubscribeCompoundButtonInput$CachedListeners;->sCachedListeners:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    return-object v1
.end method

###### Class rx.android.widget.OnSubscribeCompoundButtonInput.CompositeOnCheckedChangeListener (rx.android.widget.OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener)
.class Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;
.super Ljava/lang/Object;
.source "OnSubscribeCompoundButtonInput.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/widget/OnSubscribeCompoundButtonInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositeOnCheckedChangeListener"
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;->listeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lrx/android/widget/OnSubscribeCompoundButtonInput$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/android/widget/OnSubscribeCompoundButtonInput$1;

    .line 67
    invoke-direct {p0}, Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 71
    iget-object v0, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 80
    iget-object v0, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 81
    .local v1, "listener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-interface {v1, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 82
    .end local v1    # "listener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    goto :goto_6

    .line 83
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_16
    return-void
.end method

.method public removeOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 75
    iget-object v0, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
