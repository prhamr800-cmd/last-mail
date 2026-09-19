###### Class rx.android.view.OnSubscribeViewDetachedFromWindowFirst (rx.android.view.OnSubscribeViewDetachedFromWindowFirst)
.class final Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst;
.super Ljava/lang/Object;
.source "OnSubscribeViewDetachedFromWindowFirst.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst;->view:Landroid/view/View;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 25
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Landroid/view/View;>;"
    new-instance v0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;

    iget-object v1, p0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst;->view:Landroid/view/View;

    invoke-direct {v0, p1, v1}, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;-><init>(Lrx/Subscriber;Landroid/view/View;)V

    .line 35
    .local v0, "adapter":Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 36
    iget-object v1, p0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 37
    return-void
.end method

###### Class rx.android.view.OnSubscribeViewDetachedFromWindowFirst.SubscriptionAdapter (rx.android.view.OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter)
.class Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;
.super Ljava/lang/Object;
.source "OnSubscribeViewDetachedFromWindowFirst.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubscriptionAdapter"
.end annotation


# instance fields
.field private subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lrx/Subscriber;Landroid/view/View;)V
    .registers 3
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 46
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Landroid/view/View;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;->subscriber:Lrx/Subscriber;

    .line 48
    iput-object p2, p0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;->view:Landroid/view/View;

    .line 49
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .line 76
    iget-object v0, p0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;->view:Landroid/view/View;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 53
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_11

    .line 58
    iget-object v0, p0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;->subscriber:Lrx/Subscriber;

    .line 59
    .local v0, "originalSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Landroid/view/View;>;"
    invoke-virtual {p0}, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;->unsubscribe()V

    .line 60
    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 63
    .end local v0    # "originalSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Landroid/view/View;>;"
    :cond_11
    return-void
.end method

.method public unsubscribe()V
    .registers 2

    .line 67
    invoke-virtual {p0}, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_10

    .line 68
    iget-object v0, p0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;->view:Landroid/view/View;

    .line 70
    iput-object v0, p0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst$SubscriptionAdapter;->subscriber:Lrx/Subscriber;

    .line 72
    :cond_10
    return-void
.end method
