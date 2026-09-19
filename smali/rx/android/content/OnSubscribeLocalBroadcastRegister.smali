###### Class rx.android.content.OnSubscribeLocalBroadcastRegister (rx.android.content.OnSubscribeLocalBroadcastRegister)
.class Lrx/android/content/OnSubscribeLocalBroadcastRegister;
.super Ljava/lang/Object;
.source "OnSubscribeLocalBroadcastRegister.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final intentFilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intentFilter"    # Landroid/content/IntentFilter;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/android/content/OnSubscribeLocalBroadcastRegister;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lrx/android/content/OnSubscribeLocalBroadcastRegister;->intentFilter:Landroid/content/IntentFilter;

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 28
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/android/content/OnSubscribeLocalBroadcastRegister;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Landroid/content/Intent;>;"
    iget-object v0, p0, Lrx/android/content/OnSubscribeLocalBroadcastRegister;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 41
    .local v0, "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v1, Lrx/android/content/OnSubscribeLocalBroadcastRegister$1;

    invoke-direct {v1, p0, p1}, Lrx/android/content/OnSubscribeLocalBroadcastRegister$1;-><init>(Lrx/android/content/OnSubscribeLocalBroadcastRegister;Lrx/Subscriber;)V

    .line 48
    .local v1, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    new-instance v2, Lrx/android/content/OnSubscribeLocalBroadcastRegister$2;

    invoke-direct {v2, p0, v0, v1}, Lrx/android/content/OnSubscribeLocalBroadcastRegister$2;-><init>(Lrx/android/content/OnSubscribeLocalBroadcastRegister;Landroid/support/v4/content/LocalBroadcastManager;Landroid/content/BroadcastReceiver;)V

    invoke-static {v2}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    .line 55
    .local v2, "subscription":Lrx/Subscription;
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 56
    iget-object v3, p0, Lrx/android/content/OnSubscribeLocalBroadcastRegister;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 57
    return-void
.end method

###### Class rx.android.content.OnSubscribeLocalBroadcastRegister.AnonymousClass1 (rx.android.content.OnSubscribeLocalBroadcastRegister$1)
.class Lrx/android/content/OnSubscribeLocalBroadcastRegister$1;
.super Landroid/content/BroadcastReceiver;
.source "OnSubscribeLocalBroadcastRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/content/OnSubscribeLocalBroadcastRegister;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/content/OnSubscribeLocalBroadcastRegister;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/android/content/OnSubscribeLocalBroadcastRegister;Lrx/Subscriber;)V
    .registers 3

    .line 41
    iput-object p1, p0, Lrx/android/content/OnSubscribeLocalBroadcastRegister$1;->this$0:Lrx/android/content/OnSubscribeLocalBroadcastRegister;

    iput-object p2, p0, Lrx/android/content/OnSubscribeLocalBroadcastRegister$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 44
    iget-object v0, p0, Lrx/android/content/OnSubscribeLocalBroadcastRegister$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

###### Class rx.android.content.OnSubscribeLocalBroadcastRegister.AnonymousClass2 (rx.android.content.OnSubscribeLocalBroadcastRegister$2)
.class Lrx/android/content/OnSubscribeLocalBroadcastRegister$2;
.super Ljava/lang/Object;
.source "OnSubscribeLocalBroadcastRegister.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/content/OnSubscribeLocalBroadcastRegister;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/content/OnSubscribeLocalBroadcastRegister;

.field final synthetic val$broadcastReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic val$localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;


# direct methods
.method constructor <init>(Lrx/android/content/OnSubscribeLocalBroadcastRegister;Landroid/support/v4/content/LocalBroadcastManager;Landroid/content/BroadcastReceiver;)V
    .registers 4

    .line 48
    iput-object p1, p0, Lrx/android/content/OnSubscribeLocalBroadcastRegister$2;->this$0:Lrx/android/content/OnSubscribeLocalBroadcastRegister;

    iput-object p2, p0, Lrx/android/content/OnSubscribeLocalBroadcastRegister$2;->val$localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iput-object p3, p0, Lrx/android/content/OnSubscribeLocalBroadcastRegister$2;->val$broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 51
    iget-object v0, p0, Lrx/android/content/OnSubscribeLocalBroadcastRegister$2;->val$localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lrx/android/content/OnSubscribeLocalBroadcastRegister$2;->val$broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 52
    return-void
.end method
