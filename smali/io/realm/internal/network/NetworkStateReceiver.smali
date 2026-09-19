###### Class io.realm.internal.network.NetworkStateReceiver (io.realm.internal.network.NetworkStateReceiver)
.class public Lio/realm/internal/network/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;
    }
.end annotation


# static fields
.field private static listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/realm/internal/network/NetworkStateReceiver;->listeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static addListener(Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;)V
    .registers 2
    .param p0, "listener"    # Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;

    .line 48
    sget-object v0, Lio/realm/internal/network/NetworkStateReceiver;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 71
    sget-boolean v0, Lio/realm/SyncManager$Debug;->skipOnlineChecking:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 72
    return v1

    .line 74
    :cond_6
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 75
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 76
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-nez v3, :cond_20

    :cond_1a
    invoke-static {}, Lio/realm/internal/Util;->isEmulator()Z

    move-result v3

    if-eqz v3, :cond_21

    :cond_20
    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method public static declared-synchronized removeListener(Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;)V
    .registers 3
    .param p0, "listener"    # Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;

    const-class v0, Lio/realm/internal/network/NetworkStateReceiver;

    monitor-enter v0

    .line 58
    :try_start_3
    sget-object v1, Lio/realm/internal/network/NetworkStateReceiver;->listeners:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 59
    monitor-exit v0

    return-void

    .line 57
    .end local p0    # "listener":Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;
    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 82
    invoke-static {p1}, Lio/realm/internal/network/NetworkStateReceiver;->isOnline(Landroid/content/Context;)Z

    move-result v0

    .line 83
    .local v0, "connected":Z
    sget-object v1, Lio/realm/internal/network/NetworkStateReceiver;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;

    .line 84
    .local v2, "listener":Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;
    invoke-interface {v2, v0}, Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;->onChange(Z)V

    .line 85
    .end local v2    # "listener":Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;
    goto :goto_a

    .line 86
    :cond_1a
    return-void
.end method

###### Class io.realm.internal.network.NetworkStateReceiver.ConnectionListener (io.realm.internal.network.NetworkStateReceiver$ConnectionListener)
.class public interface abstract Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;
.super Ljava/lang/Object;
.source "NetworkStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/network/NetworkStateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionListener"
.end annotation


# virtual methods
.method public abstract onChange(Z)V
.end method
