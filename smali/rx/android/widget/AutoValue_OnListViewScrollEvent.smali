###### Class rx.android.widget.AutoValue_OnListViewScrollEvent (rx.android.widget.AutoValue_OnListViewScrollEvent)
.class final Lrx/android/widget/AutoValue_OnListViewScrollEvent;
.super Lrx/android/widget/OnListViewScrollEvent;
.source "AutoValue_OnListViewScrollEvent.java"


# instance fields
.field private final firstVisibleItem:I

.field private final listView:Landroid/widget/AbsListView;

.field private final scrollState:I

.field private final totalItemCount:I

.field private final visibleItemCount:I


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;IIII)V
    .registers 8
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I
    .param p3, "firstVisibleItem"    # I
    .param p4, "visibleItemCount"    # I
    .param p5, "totalItemCount"    # I

    .line 18
    invoke-direct {p0}, Lrx/android/widget/OnListViewScrollEvent;-><init>()V

    .line 19
    if-eqz p1, :cond_10

    .line 22
    iput-object p1, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->listView:Landroid/widget/AbsListView;

    .line 23
    iput p2, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->scrollState:I

    .line 24
    iput p3, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->firstVisibleItem:I

    .line 25
    iput p4, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->visibleItemCount:I

    .line 26
    iput p5, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->totalItemCount:I

    .line 27
    return-void

    .line 20
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null listView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 67
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 68
    return v0

    .line 70
    :cond_4
    instance-of v1, p1, Lrx/android/widget/OnListViewScrollEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_3b

    .line 71
    move-object v1, p1

    check-cast v1, Lrx/android/widget/OnListViewScrollEvent;

    .line 72
    .local v1, "that":Lrx/android/widget/OnListViewScrollEvent;
    iget-object v3, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->listView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Lrx/android/widget/OnListViewScrollEvent;->listView()Landroid/widget/AbsListView;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    iget v3, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->scrollState:I

    invoke-virtual {v1}, Lrx/android/widget/OnListViewScrollEvent;->scrollState()I

    move-result v4

    if-ne v3, v4, :cond_39

    iget v3, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->firstVisibleItem:I

    invoke-virtual {v1}, Lrx/android/widget/OnListViewScrollEvent;->firstVisibleItem()I

    move-result v4

    if-ne v3, v4, :cond_39

    iget v3, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->visibleItemCount:I

    invoke-virtual {v1}, Lrx/android/widget/OnListViewScrollEvent;->visibleItemCount()I

    move-result v4

    if-ne v3, v4, :cond_39

    iget v3, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->totalItemCount:I

    invoke-virtual {v1}, Lrx/android/widget/OnListViewScrollEvent;->totalItemCount()I

    move-result v4

    if-ne v3, v4, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    return v0

    .line 78
    .end local v1    # "that":Lrx/android/widget/OnListViewScrollEvent;
    :cond_3b
    return v2
.end method

.method public firstVisibleItem()I
    .registers 2

    .line 41
    iget v0, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->firstVisibleItem:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 83
    const/4 v0, 0x1

    .line 84
    .local v0, "h":I
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 85
    iget-object v2, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->listView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 86
    mul-int v0, v0, v1

    .line 87
    iget v2, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->scrollState:I

    xor-int/2addr v0, v2

    .line 88
    mul-int v0, v0, v1

    .line 89
    iget v2, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->firstVisibleItem:I

    xor-int/2addr v0, v2

    .line 90
    mul-int v0, v0, v1

    .line 91
    iget v2, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->visibleItemCount:I

    xor-int/2addr v0, v2

    .line 92
    mul-int v0, v0, v1

    .line 93
    iget v1, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->totalItemCount:I

    xor-int/2addr v0, v1

    .line 94
    return v0
.end method

.method public listView()Landroid/widget/AbsListView;
    .registers 2

    .line 31
    iget-object v0, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->listView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method public scrollState()I
    .registers 2

    .line 36
    iget v0, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->scrollState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnListViewScrollEvent{listView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->listView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scrollState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->scrollState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstVisibleItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->firstVisibleItem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visibleItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->visibleItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->totalItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalItemCount()I
    .registers 2

    .line 51
    iget v0, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->totalItemCount:I

    return v0
.end method

.method public visibleItemCount()I
    .registers 2

    .line 46
    iget v0, p0, Lrx/android/widget/AutoValue_OnListViewScrollEvent;->visibleItemCount:I

    return v0
.end method
