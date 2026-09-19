###### Class rx.android.widget.OnListViewScrollEvent (rx.android.widget.OnListViewScrollEvent)
.class public abstract Lrx/android/widget/OnListViewScrollEvent;
.super Ljava/lang/Object;
.source "OnListViewScrollEvent.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/widget/AbsListView;IIII)Lrx/android/widget/OnListViewScrollEvent;
    .registers 12
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "scrollState"    # I
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 31
    new-instance v6, Lrx/android/widget/AutoValue_OnListViewScrollEvent;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/android/widget/AutoValue_OnListViewScrollEvent;-><init>(Landroid/widget/AbsListView;IIII)V

    return-object v6
.end method


# virtual methods
.method public abstract firstVisibleItem()I
.end method

.method public abstract listView()Landroid/widget/AbsListView;
.end method

.method public abstract scrollState()I
.end method

.method public abstract totalItemCount()I
.end method

.method public abstract visibleItemCount()I
.end method
