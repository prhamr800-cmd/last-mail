###### Class rx.android.widget.WidgetObservable (rx.android.widget.WidgetObservable)
.class public final Lrx/android/widget/WidgetObservable;
.super Ljava/lang/Object;
.source "WidgetObservable.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static input(Landroid/widget/CompoundButton;)Lrx/Observable;
    .registers 2
    .param p0, "button"    # Landroid/widget/CompoundButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/CompoundButton;",
            ")",
            "Lrx/Observable<",
            "Lrx/android/view/OnCheckedChangeEvent;",
            ">;"
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lrx/android/widget/WidgetObservable;->input(Landroid/widget/CompoundButton;Z)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static input(Landroid/widget/CompoundButton;Z)Lrx/Observable;
    .registers 3
    .param p0, "button"    # Landroid/widget/CompoundButton;
    .param p1, "emitInitialValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/CompoundButton;",
            "Z)",
            "Lrx/Observable<",
            "Lrx/android/view/OnCheckedChangeEvent;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lrx/android/widget/OnSubscribeCompoundButtonInput;

    invoke-direct {v0, p0, p1}, Lrx/android/widget/OnSubscribeCompoundButtonInput;-><init>(Landroid/widget/CompoundButton;Z)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static itemClicks(Landroid/widget/AdapterView;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)",
            "Lrx/Observable<",
            "Lrx/android/widget/OnItemClickEvent;",
            ">;"
        }
    .end annotation

    .line 33
    .local p0, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;

    invoke-direct {v0, p0}, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;-><init>(Landroid/widget/AdapterView;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static listScrollEvents(Landroid/widget/AbsListView;)Lrx/Observable;
    .registers 2
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView;",
            ")",
            "Lrx/Observable<",
            "Lrx/android/widget/OnListViewScrollEvent;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Lrx/android/widget/OnSubscribeListViewScroll;

    invoke-direct {v0, p0}, Lrx/android/widget/OnSubscribeListViewScroll;-><init>(Landroid/widget/AbsListView;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static text(Landroid/widget/TextView;)Lrx/Observable;
    .registers 2
    .param p0, "input"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            ")",
            "Lrx/Observable<",
            "Lrx/android/widget/OnTextChangeEvent;",
            ">;"
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lrx/android/widget/WidgetObservable;->text(Landroid/widget/TextView;Z)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static text(Landroid/widget/TextView;Z)Lrx/Observable;
    .registers 3
    .param p0, "input"    # Landroid/widget/TextView;
    .param p1, "emitInitialValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Z)",
            "Lrx/Observable<",
            "Lrx/android/widget/OnTextChangeEvent;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Lrx/android/widget/OnSubscribeTextViewInput;

    invoke-direct {v0, p0, p1}, Lrx/android/widget/OnSubscribeTextViewInput;-><init>(Landroid/widget/TextView;Z)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
