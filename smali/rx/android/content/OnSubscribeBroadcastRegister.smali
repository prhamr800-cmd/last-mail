###### Class rx.android.content.OnSubscribeBroadcastRegister (rx.android.content.OnSubscribeBroadcastRegister)
.class Lrx/android/content/OnSubscribeBroadcastRegister;
.super Ljava/lang/Object;
.source "OnSubscribeBroadcastRegister.java"

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
.field private final broadcastPermission:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final intentFilter:Landroid/content/IntentFilter;

.field private final schedulerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intentFilter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "schedulerHandler"    # Landroid/os/Handler;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/android/content/OnSubscribeBroadcastRegister;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lrx/android/content/OnSubscribeBroadcastRegister;->intentFilter:Landroid/content/IntentFilter;

    .line 38
    iput-object p3, p0, Lrx/android/content/OnSubscribeBroadcastRegister;->broadcastPermission:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lrx/android/content/OnSubscribeBroadcastRegister;->schedulerHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lrx/android/content/OnSubscribeBroadcastRegister;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lrx/android/content/OnSubscribeBroadcastRegister;

    .line 28
    iget-object v0, p0, Lrx/android/content/OnSubscribeBroadcastRegister;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 28
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/android/content/OnSubscribeBroadcastRegister;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Landroid/content/Intent;>;"
    new-instance v0, Lrx/android/content/OnSubscribeBroadcastRegister$1;

    invoke-direct {v0, p0, p1}, Lrx/android/content/OnSubscribeBroadcastRegister$1;-><init>(Lrx/android/content/OnSubscribeBroadcastRegister;Lrx/Subscriber;)V

    .line 51
    .local v0, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Lrx/android/content/OnSubscribeBroadcastRegister$2;

    invoke-direct {v1, p0, v0}, Lrx/android/content/OnSubscribeBroadcastRegister$2;-><init>(Lrx/android/content/OnSubscribeBroadcastRegister;Landroid/content/BroadcastReceiver;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    .line 58
    .local v1, "subscription":Lrx/Subscription;
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 59
    iget-object v2, p0, Lrx/android/content/OnSubscribeBroadcastRegister;->context:Landroid/content/Context;

    iget-object v3, p0, Lrx/android/content/OnSubscribeBroadcastRegister;->intentFilter:Landroid/content/IntentFilter;

    iget-object v4, p0, Lrx/android/content/OnSubscribeBroadcastRegister;->broadcastPermission:Ljava/lang/String;

    iget-object v5, p0, Lrx/android/content/OnSubscribeBroadcastRegister;->schedulerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 61
    return-void
.end method

###### Class rx.android.content.OnSubscribeBroadcastRegister.AnonymousClass1 (rx.android.content.OnSubscribeBroadcastRegister$1)
.class Lrx/android/content/OnSubscribeBroadcastRegister$1;
.super Landroid/content/BroadcastReceiver;
.source "OnSubscribeBroadcastRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/content/OnSubscribeBroadcastRegister;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/content/OnSubscribeBroadcastRegister;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/android/content/OnSubscribeBroadcastRegister;Lrx/Subscriber;)V
    .registers 3

    .line 44
    iput-object p1, p0, Lrx/android/content/OnSubscribeBroadcastRegister$1;->this$0:Lrx/android/content/OnSubscribeBroadcastRegister;

    iput-object p2, p0, Lrx/android/content/OnSubscribeBroadcastRegister$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 47
    iget-object v0, p0, Lrx/android/content/OnSubscribeBroadcastRegister$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

###### Class rx.android.content.OnSubscribeBroadcastRegister.AnonymousClass2 (rx.android.content.OnSubscribeBroadcastRegister$2)
.class Lrx/android/content/OnSubscribeBroadcastRegister$2;
.super Ljava/lang/Object;
.source "OnSubscribeBroadcastRegister.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/content/OnSubscribeBroadcastRegister;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/content/OnSubscribeBroadcastRegister;

.field final synthetic val$broadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lrx/android/content/OnSubscribeBroadcastRegister;Landroid/content/BroadcastReceiver;)V
    .registers 3

    .line 51
    iput-object p1, p0, Lrx/android/content/OnSubscribeBroadcastRegister$2;->this$0:Lrx/android/content/OnSubscribeBroadcastRegister;

    iput-object p2, p0, Lrx/android/content/OnSubscribeBroadcastRegister$2;->val$broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 54
    iget-object v0, p0, Lrx/android/content/OnSubscribeBroadcastRegister$2;->this$0:Lrx/android/content/OnSubscribeBroadcastRegister;

    invoke-static {v0}, Lrx/android/content/OnSubscribeBroadcastRegister;->access$000(Lrx/android/content/OnSubscribeBroadcastRegister;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lrx/android/content/OnSubscribeBroadcastRegister$2;->val$broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 55
    return-void
.end method
