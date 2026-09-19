###### Class rx.android.AndroidSubscriptions (rx.android.AndroidSubscriptions)
.class public final Lrx/android/AndroidSubscriptions;
.super Ljava/lang/Object;
.source "AndroidSubscriptions.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static unsubscribeInUiThread(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 2
    .param p0, "unsubscribe"    # Lrx/functions/Action0;

    .line 34
    new-instance v0, Lrx/android/AndroidSubscriptions$1;

    invoke-direct {v0, p0}, Lrx/android/AndroidSubscriptions$1;-><init>(Lrx/functions/Action0;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

###### Class rx.android.AndroidSubscriptions.AnonymousClass1 (rx.android.AndroidSubscriptions$1)
.class final Lrx/android/AndroidSubscriptions$1;
.super Ljava/lang/Object;
.source "AndroidSubscriptions.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/AndroidSubscriptions;->unsubscribeInUiThread(Lrx/functions/Action0;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$unsubscribe:Lrx/functions/Action0;


# direct methods
.method constructor <init>(Lrx/functions/Action0;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lrx/android/AndroidSubscriptions$1;->val$unsubscribe:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 38
    iget-object v0, p0, Lrx/android/AndroidSubscriptions$1;->val$unsubscribe:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    goto :goto_20

    .line 40
    :cond_10
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 41
    .local v0, "inner":Lrx/Scheduler$Worker;
    new-instance v1, Lrx/android/AndroidSubscriptions$1$1;

    invoke-direct {v1, p0, v0}, Lrx/android/AndroidSubscriptions$1$1;-><init>(Lrx/android/AndroidSubscriptions$1;Lrx/Scheduler$Worker;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 49
    .end local v0    # "inner":Lrx/Scheduler$Worker;
    :goto_20
    return-void
.end method

###### Class rx.android.AndroidSubscriptions.AnonymousClass1.C00321 (rx.android.AndroidSubscriptions$1$1)
.class Lrx/android/AndroidSubscriptions$1$1;
.super Ljava/lang/Object;
.source "AndroidSubscriptions.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/AndroidSubscriptions$1;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/AndroidSubscriptions$1;

.field final synthetic val$inner:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/android/AndroidSubscriptions$1;Lrx/Scheduler$Worker;)V
    .registers 3

    .line 41
    iput-object p1, p0, Lrx/android/AndroidSubscriptions$1$1;->this$0:Lrx/android/AndroidSubscriptions$1;

    iput-object p2, p0, Lrx/android/AndroidSubscriptions$1$1;->val$inner:Lrx/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .line 44
    iget-object v0, p0, Lrx/android/AndroidSubscriptions$1$1;->this$0:Lrx/android/AndroidSubscriptions$1;

    iget-object v0, v0, Lrx/android/AndroidSubscriptions$1;->val$unsubscribe:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 45
    iget-object v0, p0, Lrx/android/AndroidSubscriptions$1$1;->val$inner:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 46
    return-void
.end method
