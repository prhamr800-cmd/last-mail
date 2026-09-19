###### Class rx.android.content.OnSubscribeCursor (rx.android.content.OnSubscribeCursor)
.class final Lrx/android/content/OnSubscribeCursor;
.super Ljava/lang/Object;
.source "OnSubscribeCursor.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Landroid/database/Cursor;)V
    .registers 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lrx/android/content/OnSubscribeCursor;->cursor:Landroid/database/Cursor;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 24
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/android/content/OnSubscribeCursor;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Landroid/database/Cursor;>;"
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lrx/android/content/OnSubscribeCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 36
    iget-object v0, p0, Lrx/android/content/OnSubscribeCursor;->cursor:Landroid/database/Cursor;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_14
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 39
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_28
    .catchall {:try_start_0 .. :try_end_1d} :catchall_26

    .line 46
    :cond_1d
    iget-object v0, p0, Lrx/android/content/OnSubscribeCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_3a

    :catchall_26
    move-exception v0

    goto :goto_40

    .line 41
    :catch_28
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_29
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_32

    .line 43
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_26

    .line 46
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_32
    iget-object v0, p0, Lrx/android/content/OnSubscribeCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 47
    :goto_3a
    iget-object v0, p0, Lrx/android/content/OnSubscribeCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_3f
    return-void

    .line 46
    :goto_40
    iget-object v1, p0, Lrx/android/content/OnSubscribeCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 47
    iget-object v1, p0, Lrx/android/content/OnSubscribeCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4d
    throw v0
.end method
