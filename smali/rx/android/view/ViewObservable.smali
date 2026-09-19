###### Class rx.android.view.ViewObservable (rx.android.view.ViewObservable)
.class public final Lrx/android/view/ViewObservable;
.super Ljava/lang/Object;
.source "ViewObservable.java"


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

.method public static bindView(Landroid/view/View;Lrx/Observable;)Lrx/Observable;
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Lrx/Observable<",
            "TT;>;)",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 52
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    if-eqz p0, :cond_1d

    if-eqz p1, :cond_1d

    .line 54
    invoke-static {}, Lrx/android/internal/Assertions;->assertUiThread()V

    .line 55
    new-instance v0, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst;

    invoke-direct {v0, p0}, Lrx/android/view/OnSubscribeViewDetachedFromWindowFirst;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->takeUntil(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0

    .line 53
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View and Observable must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clicks(Landroid/view/View;)Lrx/Observable;
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/Observable<",
            "Lrx/android/view/OnClickEvent;",
            ">;"
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lrx/android/view/ViewObservable;->clicks(Landroid/view/View;Z)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static clicks(Landroid/view/View;Z)Lrx/Observable;
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "emitInitialValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z)",
            "Lrx/Observable<",
            "Lrx/android/view/OnClickEvent;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lrx/android/view/OnSubscribeViewClick;

    invoke-direct {v0, p0, p1}, Lrx/android/view/OnSubscribeViewClick;-><init>(Landroid/view/View;Z)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
