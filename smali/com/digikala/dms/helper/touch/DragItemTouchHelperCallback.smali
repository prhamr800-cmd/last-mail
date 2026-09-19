###### Class com.digikala.dms.helper.touch.DragItemTouchHelperCallback (com.digikala.dms.helper.touch.DragItemTouchHelperCallback)
.class public Lcom/digikala/dms/helper/touch/DragItemTouchHelperCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "DragItemTouchHelperCallback.java"


# static fields
.field public static final ALPHA_FULL:F = 1.0f


# instance fields
.field private final mAdapter:Lcom/digikala/dms/helper/touch/ItemTouchHelperAdapter;


# direct methods
.method public constructor <init>(Lcom/digikala/dms/helper/touch/ItemTouchHelperAdapter;)V
    .registers 2
    .param p1, "adapter"    # Lcom/digikala/dms/helper/touch/ItemTouchHelperAdapter;

    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/digikala/dms/helper/touch/DragItemTouchHelperCallback;->mAdapter:Lcom/digikala/dms/helper/touch/ItemTouchHelperAdapter;

    .line 43
    return-void
.end method


# virtual methods
.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 114
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 116
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 118
    instance-of v0, p2, Lcom/digikala/dms/helper/touch/ItemTouchHelperViewHolder;

    if-eqz v0, :cond_14

    .line 120
    move-object v0, p2

    check-cast v0, Lcom/digikala/dms/helper/touch/ItemTouchHelperViewHolder;

    .line 121
    .local v0, "itemViewHolder":Lcom/digikala/dms/helper/touch/ItemTouchHelperViewHolder;
    invoke-interface {v0}, Lcom/digikala/dms/helper/touch/ItemTouchHelperViewHolder;->onItemClear()V

    .line 123
    .end local v0    # "itemViewHolder":Lcom/digikala/dms/helper/touch/ItemTouchHelperViewHolder;
    :cond_14
    return-void
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .registers 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 58
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 59
    const/16 v0, 0xf

    .line 60
    .local v0, "dragFlags":I
    const/4 v2, 0x0

    .line 61
    .local v2, "swipeFlags":I
    const/16 v3, 0xf

    invoke-static {v3, v1}, Lcom/digikala/dms/helper/touch/DragItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result v1

    return v1

    .line 63
    .end local v0    # "dragFlags":I
    .end local v2    # "swipeFlags":I
    :cond_13
    const/4 v0, 0x3

    .line 64
    .restart local v0    # "dragFlags":I
    const/16 v2, 0x30

    .line 65
    .restart local v2    # "swipeFlags":I
    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/digikala/dms/helper/touch/DragItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result v1

    return v1
.end method

.method public isItemViewSwipeEnabled()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .registers 2

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 11
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 88
    const/4 v0, 0x1

    if-ne p6, v0, :cond_1d

    .line 90
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 91
    .local v0, "alpha":F
    iget-object v1, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 92
    iget-object v1, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 93
    .end local v0    # "alpha":F
    goto :goto_20

    .line 94
    :cond_1d
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 96
    :goto_20
    return-void
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "source"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 71
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-eq v0, v1, :cond_c

    .line 72
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_c
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/DragItemTouchHelperCallback;->mAdapter:Lcom/digikala/dms/helper/touch/ItemTouchHelperAdapter;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, v2, p2, p3}, Lcom/digikala/dms/helper/touch/ItemTouchHelperAdapter;->onItemMove(IILandroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 4
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .line 101
    if-eqz p2, :cond_c

    .line 102
    instance-of v0, p1, Lcom/digikala/dms/helper/touch/ItemTouchHelperViewHolder;

    if-eqz v0, :cond_c

    .line 104
    move-object v0, p1

    check-cast v0, Lcom/digikala/dms/helper/touch/ItemTouchHelperViewHolder;

    .line 105
    .local v0, "itemViewHolder":Lcom/digikala/dms/helper/touch/ItemTouchHelperViewHolder;
    invoke-interface {v0}, Lcom/digikala/dms/helper/touch/ItemTouchHelperViewHolder;->onItemSelected()V

    .line 109
    .end local v0    # "itemViewHolder":Lcom/digikala/dms/helper/touch/ItemTouchHelperViewHolder;
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 110
    return-void
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 5
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .line 83
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/DragItemTouchHelperCallback;->mAdapter:Lcom/digikala/dms/helper/touch/ItemTouchHelperAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/digikala/dms/helper/touch/ItemTouchHelperAdapter;->onItemDismiss(I)V

    .line 84
    return-void
.end method
