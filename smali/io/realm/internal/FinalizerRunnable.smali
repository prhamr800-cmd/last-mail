###### Class io.realm.internal.FinalizerRunnable (io.realm.internal.FinalizerRunnable)
.class Lio/realm/internal/FinalizerRunnable;
.super Ljava/lang/Object;
.source "FinalizerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lio/realm/internal/NativeObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lio/realm/internal/NativeObject;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p1, "referenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Lio/realm/internal/NativeObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/realm/internal/FinalizerRunnable;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 31
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 37
    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/realm/internal/FinalizerRunnable;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lio/realm/internal/NativeObjectReference;

    .line 38
    .local v0, "reference":Lio/realm/internal/NativeObjectReference;
    invoke-virtual {v0}, Lio/realm/internal/NativeObjectReference;->cleanup()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_c

    .line 46
    .end local v0    # "reference":Lio/realm/internal/NativeObjectReference;
    goto :goto_0

    .line 39
    :catch_c
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 43
    const-string v1, "The FinalizerRunnable thread has been interrupted. Native resources cannot be freed anymore"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lio/realm/log/RealmLog;->fatal(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    nop

    .line 48
    .end local v0    # "e":Ljava/lang/InterruptedException;
    return-void
.end method
