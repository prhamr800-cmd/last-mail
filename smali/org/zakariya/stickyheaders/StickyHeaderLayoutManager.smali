###### Class org.zakariya.stickyheaders.StickyHeaderLayoutManager (org.zakariya.stickyheaders.StickyHeaderLayoutManager)
.class public Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "StickyHeaderLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;,
        Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SmoothScroller;,
        Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPositionChangedCallback;,
        Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field adapter:Lorg/zakariya/stickyheaders/SectioningAdapter;

.field firstViewAdapterPosition:I

.field firstViewTop:I

.field headerPositionChangedCallback:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPositionChangedCallback;

.field headerPositionsBySection:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;",
            ">;"
        }
    .end annotation
.end field

.field headerViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field pendingSavedState:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;

.field scrollTargetAdapterPosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    const-class v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerViews:Ljava/util/HashSet;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerPositionsBySection:Ljava/util/HashMap;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->scrollTargetAdapterPosition:I

    .line 80
    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .registers 2

    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method computeScrollVectorForPosition(I)I
    .registers 3
    .param p1, "targetPosition"    # I

    .line 575
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->updateFirstAdapterPosition()I

    .line 576
    iget v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewAdapterPosition:I

    if-le p1, v0, :cond_9

    .line 577
    const/4 v0, 0x1

    return v0

    .line 578
    :cond_9
    iget v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewAdapterPosition:I

    if-ge p1, v0, :cond_f

    .line 579
    const/4 v0, -0x1

    return v0

    .line 581
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method createSectionHeaderIfNeeded(Landroid/support/v7/widget/RecyclerView$Recycler;I)Landroid/view/View;
    .registers 7
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "sectionIndex"    # I

    .line 265
    iget-object v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->adapter:Lorg/zakariya/stickyheaders/SectioningAdapter;

    invoke-virtual {v0, p2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->doesSectionHaveHeader(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 268
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v1

    .local v1, "n":I
    :goto_d
    if-ge v0, v1, :cond_23

    .line 269
    invoke-virtual {p0, v0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 270
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewBaseType(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_20

    invoke-virtual {p0, v2}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewSectionIndex(Landroid/view/View;)I

    move-result v3

    if-ne v3, p2, :cond_20

    .line 271
    return-object v2

    .line 268
    .end local v2    # "view":Landroid/view/View;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 276
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_23
    iget-object v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->adapter:Lorg/zakariya/stickyheaders/SectioningAdapter;

    invoke-virtual {v0, p2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getAdapterPositionForSectionHeader(I)I

    move-result v0

    .line 277
    .local v0, "headerAdapterPosition":I
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    .line 278
    .local v1, "headerView":Landroid/view/View;
    iget-object v2, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerViews:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {p0, v1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->addView(Landroid/view/View;)V

    .line 280
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 282
    return-object v1

    .line 285
    .end local v0    # "headerAdapterPosition":I
    .end local v1    # "headerView":Landroid/view/View;
    :cond_3a
    const/4 v0, 0x0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .registers 4

    .line 440
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method getBottommostChildView()Landroid/view/View;
    .registers 8

    .line 675
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 676
    const/4 v0, 0x0

    return-object v0

    .line 680
    :cond_8
    const/4 v0, 0x0

    .line 681
    .local v0, "bottommostView":Landroid/view/View;
    const/high16 v1, -0x80000000

    .line 683
    .local v1, "bottom":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v3

    .local v3, "e":I
    :goto_10
    if-ge v2, v3, :cond_30

    .line 684
    invoke-virtual {p0, v2}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 687
    .local v4, "v":Landroid/view/View;
    invoke-virtual {p0, v4}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewAdapterPosition(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1e

    .line 688
    goto :goto_2d

    .line 692
    :cond_1e
    invoke-virtual {p0, v4}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewBaseType(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_25

    .line 693
    goto :goto_2d

    .line 696
    :cond_25
    invoke-virtual {p0, v4}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v5

    .line 697
    .local v5, "b":I
    if-le v5, v1, :cond_2d

    .line 698
    move v1, v5

    .line 699
    move-object v0, v4

    .line 683
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "b":I
    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 703
    .end local v2    # "i":I
    .end local v3    # "e":I
    :cond_30
    return-object v0
.end method

.method getEstimatedItemHeightForSmoothScroll(Landroid/support/v7/widget/RecyclerView;)I
    .registers 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "height":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .local v2, "n":I
    :goto_6
    if-ge v1, v2, :cond_17

    .line 569
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 571
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_17
    return v0
.end method

.method public getFirstVisibleFooterViewHolder(Z)Lorg/zakariya/stickyheaders/SectioningAdapter$FooterViewHolder;
    .registers 3
    .param p1, "fullyVisibleOnly"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 483
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getFirstVisibleViewHolderOfType(IZ)Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter$FooterViewHolder;

    return-object v0
.end method

.method public getFirstVisibleHeaderViewHolder(Z)Lorg/zakariya/stickyheaders/SectioningAdapter$HeaderViewHolder;
    .registers 3
    .param p1, "fullyVisibleOnly"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 474
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getFirstVisibleViewHolderOfType(IZ)Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter$HeaderViewHolder;

    return-object v0
.end method

.method public getFirstVisibleItemViewHolder(Z)Lorg/zakariya/stickyheaders/SectioningAdapter$ItemViewHolder;
    .registers 3
    .param p1, "fullyVisibleOnly"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 465
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getFirstVisibleViewHolderOfType(IZ)Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter$ItemViewHolder;

    return-object v0
.end method

.method getFirstVisibleViewHolderOfType(IZ)Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;
    .registers 13
    .param p1, "baseType"    # I
    .param p2, "fullyVisibleOnly"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 488
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 489
    return-object v1

    .line 495
    :cond_8
    const/4 v0, 0x0

    .line 496
    .local v0, "firstHeaderBottom":I
    if-eqz p1, :cond_18

    .line 497
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getFirstVisibleHeaderViewHolder(Z)Lorg/zakariya/stickyheaders/SectioningAdapter$HeaderViewHolder;

    move-result-object v2

    .line 498
    .local v2, "firstHeader":Lorg/zakariya/stickyheaders/SectioningAdapter$HeaderViewHolder;
    if-eqz v2, :cond_18

    .line 499
    iget-object v3, v2, Lorg/zakariya/stickyheaders/SectioningAdapter$HeaderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    .line 504
    .end local v2    # "firstHeader":Lorg/zakariya/stickyheaders/SectioningAdapter$HeaderViewHolder;
    :cond_18
    const/4 v2, 0x0

    .line 505
    .local v2, "topmostView":Landroid/view/View;
    const v3, 0x7fffffff

    .line 507
    .local v3, "top":I
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v5

    .local v5, "e":I
    :goto_21
    if-ge v4, v5, :cond_4f

    .line 508
    invoke-virtual {p0, v4}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 511
    .local v6, "v":Landroid/view/View;
    invoke-virtual {p0, v6}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewAdapterPosition(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2f

    .line 512
    goto :goto_4c

    .line 516
    :cond_2f
    invoke-virtual {p0, v6}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewBaseType(Landroid/view/View;)I

    move-result v7

    if-eq v7, p1, :cond_36

    .line 517
    goto :goto_4c

    .line 521
    :cond_36
    invoke-virtual {p0, v6}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v7

    .line 522
    .local v7, "t":I
    invoke-virtual {p0, v6}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v8

    .line 524
    .local v8, "b":I
    if-eqz p2, :cond_43

    .line 525
    if-ge v7, v0, :cond_48

    .line 526
    goto :goto_4c

    .line 529
    :cond_43
    add-int/lit8 v9, v0, 0x1

    if-gt v8, v9, :cond_48

    .line 530
    goto :goto_4c

    .line 534
    :cond_48
    if-ge v7, v3, :cond_4c

    .line 535
    move v3, v7

    .line 536
    move-object v2, v6

    .line 507
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "t":I
    .end local v8    # "b":I
    :cond_4c
    :goto_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 540
    .end local v4    # "i":I
    .end local v5    # "e":I
    :cond_4f
    if-eqz v2, :cond_56

    invoke-virtual {p0, v2}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewViewHolder(Landroid/view/View;)Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;

    move-result-object v1

    nop

    :cond_56
    return-object v1
.end method

.method public getHeaderPositionChangedCallback()Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPositionChangedCallback;
    .registers 2

    .line 83
    iget-object v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerPositionChangedCallback:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPositionChangedCallback;

    return-object v0
.end method

.method getTopmostChildView()Landroid/view/View;
    .registers 8

    .line 643
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 644
    const/4 v0, 0x0

    return-object v0

    .line 648
    :cond_8
    const/4 v0, 0x0

    .line 649
    .local v0, "topmostView":Landroid/view/View;
    const v1, 0x7fffffff

    .line 651
    .local v1, "top":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v3

    .local v3, "e":I
    :goto_11
    if-ge v2, v3, :cond_31

    .line 652
    invoke-virtual {p0, v2}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 655
    .local v4, "v":Landroid/view/View;
    invoke-virtual {p0, v4}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewAdapterPosition(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1f

    .line 656
    goto :goto_2e

    .line 660
    :cond_1f
    invoke-virtual {p0, v4}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewBaseType(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_26

    .line 661
    goto :goto_2e

    .line 664
    :cond_26
    invoke-virtual {p0, v4}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v5

    .line 665
    .local v5, "t":I
    if-ge v5, v1, :cond_2e

    .line 666
    move v1, v5

    .line 667
    move-object v0, v4

    .line 651
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "t":I
    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 671
    .end local v2    # "i":I
    .end local v3    # "e":I
    :cond_31
    return-object v0
.end method

.method getViewAdapterPosition(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 853
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewViewHolder(Landroid/view/View;)Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    return v0
.end method

.method getViewBaseType(Landroid/view/View;)I
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 839
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 840
    .local v0, "adapterPosition":I
    iget-object v1, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->adapter:Lorg/zakariya/stickyheaders/SectioningAdapter;

    invoke-virtual {v1, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getItemViewBaseType(I)I

    move-result v1

    return v1
.end method

.method getViewSectionIndex(Landroid/view/View;)I
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 844
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 845
    .local v0, "adapterPosition":I
    iget-object v1, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->adapter:Lorg/zakariya/stickyheaders/SectioningAdapter;

    invoke-virtual {v1, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getSectionForAdapterPosition(I)I

    move-result v1

    return v1
.end method

.method getViewViewHolder(Landroid/view/View;)Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 849
    sget v0, Lorg/zakariya/stickyheaders/R$id;->sectioning_adapter_tag_key_view_viewholder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;

    return-object v0
.end method

.method isViewRecycled(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 835
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewAdapterPosition(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .registers 6
    .param p1, "oldAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 98
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 101
    :try_start_3
    move-object v0, p2

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter;

    iput-object v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->adapter:Lorg/zakariya/stickyheaders/SectioningAdapter;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_8} :catch_17

    .line 104
    nop

    .line 106
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->removeAllViews()V

    .line 107
    iget-object v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 108
    iget-object v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerPositionsBySection:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 109
    return-void

    .line 102
    :catch_17
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "StickyHeaderLayoutManager must be used with a RecyclerView where the adapter is a kind of SectioningAdapter"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .registers 5
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;

    .line 113
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 116
    :try_start_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter;

    iput-object v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->adapter:Lorg/zakariya/stickyheaders/SectioningAdapter;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_b} :catch_d

    .line 119
    nop

    .line 120
    return-void

    .line 117
    :catch_d
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "StickyHeaderLayoutManager must be used with a RecyclerView where the adapter is a kind of SectioningAdapter"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .registers 3
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 124
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 127
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->updateFirstAdapterPosition()I

    .line 128
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 23
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 163
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->adapter:Lorg/zakariya/stickyheaders/SectioningAdapter;

    if-nez v0, :cond_9

    .line 164
    return-void

    .line 167
    :cond_9
    iget v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->scrollTargetAdapterPosition:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-ltz v0, :cond_19

    .line 168
    iget v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->scrollTargetAdapterPosition:I

    iput v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewAdapterPosition:I

    .line 169
    iput v9, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewTop:I

    .line 170
    const/4 v0, -0x1

    iput v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->scrollTargetAdapterPosition:I

    goto :goto_37

    .line 171
    :cond_19
    iget-object v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->pendingSavedState:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;

    if-eqz v0, :cond_34

    iget-object v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->pendingSavedState:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;

    invoke-virtual {v0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->isValid()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 172
    iget-object v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->pendingSavedState:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;

    iget v0, v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewAdapterPosition:I

    iput v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewAdapterPosition:I

    .line 173
    iget-object v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->pendingSavedState:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;

    iget v0, v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewTop:I

    iput v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewTop:I

    .line 174
    iput-object v8, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->pendingSavedState:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;

    goto :goto_37

    .line 176
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->updateFirstAdapterPosition()I

    .line 179
    :goto_37
    iget v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewTop:I

    .line 182
    .local v0, "top":I
    iget-object v1, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerViews:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 183
    iget-object v1, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerPositionsBySection:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 184
    invoke-virtual/range {p0 .. p1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getPaddingLeft()I

    move-result v10

    .line 188
    .local v10, "left":I
    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int v11, v1, v2

    .line 189
    .local v11, "right":I
    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getPaddingBottom()I

    move-result v2

    sub-int v12, v1, v2

    .line 190
    .local v12, "parentBottom":I
    const/4 v1, 0x0

    .line 193
    .local v1, "totalVendedHeight":I
    iget v2, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewAdapterPosition:I

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    if-le v2, v3, :cond_69

    .line 194
    iput v9, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewAdapterPosition:I

    .line 198
    :cond_69
    iget v2, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewAdapterPosition:I

    move v13, v0

    move v14, v1

    .end local v0    # "top":I
    .end local v1    # "totalVendedHeight":I
    .local v2, "adapterPosition":I
    .local v13, "top":I
    .local v14, "totalVendedHeight":I
    :goto_6d
    move v15, v2

    .end local v2    # "adapterPosition":I
    .local v15, "adapterPosition":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v15, v0, :cond_106

    .line 200
    invoke-virtual {v7, v15}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v5

    .line 201
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v6, v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->addView(Landroid/view/View;)V

    .line 202
    invoke-virtual {v6, v5, v9, v9}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 204
    invoke-virtual {v6, v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewBaseType(Landroid/view/View;)I

    move-result v4

    .line 205
    .local v4, "itemViewType":I
    if-nez v4, :cond_b1

    .line 206
    iget-object v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerViews:Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {v6, v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v16

    .line 210
    .local v16, "height":I
    add-int v17, v13, v16

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v10

    move v3, v13

    move v8, v4

    .end local v4    # "itemViewType":I
    .local v8, "itemViewType":I
    move v4, v11

    move-object/from16 v18, v5

    .end local v5    # "v":Landroid/view/View;
    .local v18, "v":Landroid/view/View;
    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 213
    add-int/lit8 v15, v15, 0x1

    .line 214
    invoke-virtual {v7, v15}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v5

    .line 215
    .local v5, "ghostHeader":Landroid/view/View;
    invoke-virtual {v6, v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->addView(Landroid/view/View;)V

    .line 216
    add-int v17, v13, v16

    move-object v1, v5

    move-object/from16 v19, v5

    .end local v5    # "ghostHeader":Landroid/view/View;
    .local v19, "ghostHeader":Landroid/view/View;
    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 218
    .end local v19    # "ghostHeader":Landroid/view/View;
    goto :goto_f6

    .end local v8    # "itemViewType":I
    .end local v16    # "height":I
    .end local v18    # "v":Landroid/view/View;
    .restart local v4    # "itemViewType":I
    .local v5, "v":Landroid/view/View;
    :cond_b1
    move v8, v4

    move-object/from16 v18, v5

    .end local v4    # "itemViewType":I
    .end local v5    # "v":Landroid/view/View;
    .restart local v8    # "itemViewType":I
    .restart local v18    # "v":Landroid/view/View;
    const/4 v0, 0x1

    if-ne v8, v0, :cond_e3

    .line 221
    add-int/lit8 v0, v15, -0x1

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v5

    .line 222
    .local v5, "headerView":Landroid/view/View;
    iget-object v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerViews:Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {v6, v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->addView(Landroid/view/View;)V

    .line 224
    invoke-virtual {v6, v5, v9, v9}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 225
    invoke-virtual {v6, v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v16

    .line 227
    .restart local v16    # "height":I
    add-int v17, v13, v16

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v10

    move v3, v13

    move v4, v11

    move-object/from16 v19, v5

    .end local v5    # "headerView":Landroid/view/View;
    .local v19, "headerView":Landroid/view/View;
    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 228
    add-int v5, v13, v16

    move-object/from16 v1, v18

    invoke-virtual/range {v0 .. v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 230
    .end local v19    # "headerView":Landroid/view/View;
    goto :goto_f6

    .line 231
    .end local v16    # "height":I
    :cond_e3
    move-object/from16 v5, v18

    .end local v18    # "v":Landroid/view/View;
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v6, v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v16

    .line 232
    .restart local v16    # "height":I
    add-int v17, v13, v16

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v10

    move v3, v13

    move v4, v11

    .end local v5    # "v":Landroid/view/View;
    .restart local v18    # "v":Landroid/view/View;
    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 235
    :goto_f6
    add-int v13, v13, v16

    .line 236
    add-int v14, v14, v16

    .line 239
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v0

    if-lt v0, v12, :cond_101

    .line 240
    goto :goto_106

    .line 198
    .end local v8    # "itemViewType":I
    .end local v18    # "v":Landroid/view/View;
    :cond_101
    add-int/lit8 v2, v15, 0x1

    const/4 v8, 0x0

    goto/16 :goto_6d

    .line 245
    .end local v15    # "adapterPosition":I
    .end local v16    # "height":I
    :cond_106
    :goto_106
    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 246
    .local v0, "innerHeight":I
    if-ge v14, v0, :cond_11d

    .line 249
    sub-int v1, v14, v0

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v7, v2}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    goto :goto_120

    .line 252
    :cond_11d
    invoke-virtual/range {p0 .. p1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->updateHeaderPositions(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 254
    :goto_120
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 148
    if-nez p1, :cond_3

    .line 149
    return-void

    .line 152
    :cond_3
    instance-of v0, p1, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;

    if-eqz v0, :cond_10

    .line 153
    move-object v0, p1

    check-cast v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;

    iput-object v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->pendingSavedState:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;

    .line 154
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->requestLayout()V

    goto :goto_3c

    .line 156
    :cond_10
    sget-object v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState: invalid saved state class, expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_3c
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 132
    iget-object v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->pendingSavedState:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;

    if-eqz v0, :cond_7

    .line 133
    iget-object v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->pendingSavedState:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;

    return-object v0

    .line 137
    :cond_7
    iget-object v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->adapter:Lorg/zakariya/stickyheaders/SectioningAdapter;

    if-eqz v0, :cond_e

    .line 138
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->updateFirstAdapterPosition()I

    .line 139
    :cond_e
    new-instance v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;

    invoke-direct {v0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;-><init>()V

    .line 140
    .local v0, "state":Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;
    iget v1, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewAdapterPosition:I

    iput v1, v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewAdapterPosition:I

    .line 141
    iget v1, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewTop:I

    iput v1, v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewTop:I

    .line 143
    return-object v0
.end method

.method recordHeaderPositionAndNotify(ILandroid/view/View;Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;)V
    .registers 7
    .param p1, "sectionIndex"    # I
    .param p2, "headerView"    # Landroid/view/View;
    .param p3, "newHeaderPosition"    # Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    .line 817
    iget-object v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerPositionsBySection:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 818
    iget-object v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerPositionsBySection:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    .line 819
    .local v0, "currentHeaderPosition":Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;
    if-eq v0, p3, :cond_2c

    .line 820
    iget-object v1, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerPositionsBySection:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    iget-object v1, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerPositionChangedCallback:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPositionChangedCallback;

    if-eqz v1, :cond_2c

    .line 822
    iget-object v1, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerPositionChangedCallback:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPositionChangedCallback;

    invoke-interface {v1, p1, p2, v0, p3}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPositionChangedCallback;->onHeaderPositionChanged(ILandroid/view/View;Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;)V

    .line 826
    .end local v0    # "currentHeaderPosition":Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;
    :cond_2c
    goto :goto_41

    .line 827
    :cond_2d
    iget-object v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerPositionsBySection:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    iget-object v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerPositionChangedCallback:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPositionChangedCallback;

    if-eqz v0, :cond_41

    .line 829
    iget-object v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerPositionChangedCallback:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPositionChangedCallback;

    sget-object v1, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;->NONE:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    invoke-interface {v0, p1, p2, v1, p3}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPositionChangedCallback;->onHeaderPositionChanged(ILandroid/view/View;Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;)V

    .line 832
    :cond_41
    :goto_41
    return-void
.end method

.method recycleViewsOutOfBounds(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .registers 12
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 586
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getHeight()I

    move-result v0

    .line 587
    .local v0, "height":I
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v1

    .line 588
    .local v1, "numChildren":I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 589
    .local v2, "remainingSections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 593
    .local v3, "viewsToRecycle":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/View;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    if-ge v5, v1, :cond_46

    .line 594
    invoke-virtual {p0, v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 597
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->isViewRecycled(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 598
    goto :goto_43

    .line 601
    :cond_21
    invoke-virtual {p0, v6}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewBaseType(Landroid/view/View;)I

    move-result v7

    if-eqz v7, :cond_43

    .line 602
    invoke-virtual {p0, v6}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_40

    invoke-virtual {p0, v6}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_34

    goto :goto_40

    .line 606
    :cond_34
    invoke-virtual {p0, v6}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewSectionIndex(Landroid/view/View;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 603
    :cond_40
    :goto_40
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 593
    .end local v6    # "view":Landroid/view/View;
    :cond_43
    :goto_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 614
    .end local v5    # "i":I
    :cond_46
    nop

    .local v4, "i":I
    :goto_47
    if-ge v4, v1, :cond_96

    .line 615
    invoke-virtual {p0, v4}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 618
    .local v5, "view":Landroid/view/View;
    invoke-virtual {p0, v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->isViewRecycled(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 619
    goto :goto_93

    .line 622
    :cond_54
    invoke-virtual {p0, v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewSectionIndex(Landroid/view/View;)I

    move-result v6

    .line 623
    .local v6, "sectionIndex":I
    invoke-virtual {p0, v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewBaseType(Landroid/view/View;)I

    move-result v7

    if-nez v7, :cond_93

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_93

    .line 624
    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 625
    .local v7, "translationY":F
    invoke-virtual {p0, v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v7

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_82

    invoke-virtual {p0, v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v7

    int-to-float v9, v0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_93

    .line 626
    :cond_82
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 627
    iget-object v8, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerViews:Ljava/util/HashSet;

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 628
    iget-object v8, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerPositionsBySection:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "sectionIndex":I
    .end local v7    # "translationY":F
    :cond_93
    :goto_93
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 633
    .end local v4    # "i":I
    :cond_96
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_aa

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 634
    .restart local v5    # "view":Landroid/view/View;
    invoke-virtual {p0, v5, p1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 635
    .end local v5    # "view":Landroid/view/View;
    goto :goto_9a

    .line 639
    :cond_aa
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->updateFirstAdapterPosition()I

    .line 640
    return-void
.end method

.method public scrollToPosition(I)V
    .registers 4
    .param p1, "position"    # I

    .line 450
    if-ltz p1, :cond_11

    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getItemCount()I

    move-result v0

    if-gt p1, v0, :cond_11

    .line 454
    iput p1, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->scrollTargetAdapterPosition:I

    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->pendingSavedState:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;

    .line 456
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->requestLayout()V

    .line 457
    return-void

    .line 451
    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "adapter position out of range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 30
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 292
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_e

    .line 293
    return v9

    .line 296
    :cond_e
    const/4 v0, 0x0

    .line 297
    .local v0, "scrolled":I
    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getPaddingLeft()I

    move-result v10

    .line 298
    .local v10, "left":I
    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int v11, v1, v2

    .line 301
    .local v11, "right":I
    const/4 v12, 0x1

    if-gez v7, :cond_c9

    .line 305
    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getTopmostChildView()Landroid/view/View;

    move-result-object v1

    .local v1, "topView":Landroid/view/View;
    :goto_24
    move-object v13, v1

    .line 306
    .end local v1    # "topView":Landroid/view/View;
    .local v13, "topView":Landroid/view/View;
    if-le v0, v7, :cond_c7

    .line 309
    invoke-virtual {v6, v13}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    neg-int v1, v1

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 310
    .local v14, "hangingTop":I
    sub-int v1, v0, v7

    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 312
    .local v15, "scrollBy":I
    sub-int v5, v0, v15

    .line 313
    .end local v0    # "scrolled":I
    .local v5, "scrolled":I
    invoke-virtual {v6, v15}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->offsetChildrenVertical(I)V

    .line 317
    iget v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewAdapterPosition:I

    if-lez v0, :cond_c3

    if-le v5, v7, :cond_c3

    .line 318
    iget v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewAdapterPosition:I

    sub-int/2addr v0, v12

    iput v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewAdapterPosition:I

    .line 322
    iget-object v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->adapter:Lorg/zakariya/stickyheaders/SectioningAdapter;

    iget v1, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewAdapterPosition:I

    invoke-virtual {v0, v1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getItemViewBaseType(I)I

    move-result v0

    .line 323
    .local v0, "itemViewType":I
    if-nez v0, :cond_52

    const/4 v1, 0x1

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    .line 326
    .local v1, "isHeader":Z
    :goto_53
    if-eqz v1, :cond_74

    .line 327
    iget v2, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewAdapterPosition:I

    sub-int/2addr v2, v12

    iput v2, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewAdapterPosition:I

    .line 328
    iget v2, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewAdapterPosition:I

    if-gez v2, :cond_63

    .line 329
    nop

    .line 363
    .end local v0    # "itemViewType":I
    .end local v1    # "isHeader":Z
    .end local v5    # "scrolled":I
    .end local v13    # "topView":Landroid/view/View;
    .end local v14    # "hangingTop":I
    .end local v15    # "scrollBy":I
    .local v21, "scrolled":I
    :goto_5f
    move/from16 v21, v5

    goto/16 :goto_c5

    .line 332
    .end local v21    # "scrolled":I
    .restart local v0    # "itemViewType":I
    .restart local v1    # "isHeader":Z
    .restart local v5    # "scrolled":I
    .restart local v13    # "topView":Landroid/view/View;
    .restart local v14    # "hangingTop":I
    .restart local v15    # "scrollBy":I
    :cond_63
    iget-object v2, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->adapter:Lorg/zakariya/stickyheaders/SectioningAdapter;

    iget v3, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewAdapterPosition:I

    invoke-virtual {v2, v3}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getItemViewBaseType(I)I

    move-result v0

    .line 333
    if-nez v0, :cond_6f

    const/4 v2, 0x1

    goto :goto_70

    :cond_6f
    const/4 v2, 0x0

    :goto_70
    move v1, v2

    .line 336
    if-eqz v1, :cond_74

    .line 337
    goto :goto_5f

    .line 340
    :cond_74
    move v4, v0

    move/from16 v16, v1

    .end local v0    # "itemViewType":I
    .end local v1    # "isHeader":Z
    .local v4, "itemViewType":I
    .local v16, "isHeader":Z
    iget v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewAdapterPosition:I

    invoke-virtual {v8, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v2

    .line 341
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v6, v2, v9}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->addView(Landroid/view/View;I)V

    .line 343
    invoke-virtual {v6, v13}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v17

    .line 345
    .local v17, "bottom":I
    if-ne v4, v12, :cond_88

    const/4 v0, 0x1

    goto :goto_89

    :cond_88
    const/4 v0, 0x0

    :goto_89
    move/from16 v18, v0

    .line 346
    .local v18, "isGhostHeader":Z
    if-eqz v18, :cond_a2

    .line 347
    iget-object v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->adapter:Lorg/zakariya/stickyheaders/SectioningAdapter;

    iget v1, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewAdapterPosition:I

    invoke-virtual {v0, v1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getSectionForAdapterPosition(I)I

    move-result v0

    invoke-virtual {v6, v8, v0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->createSectionHeaderIfNeeded(Landroid/support/v7/widget/RecyclerView$Recycler;I)Landroid/view/View;

    move-result-object v0

    .line 348
    .local v0, "header":Landroid/view/View;
    invoke-virtual {v6, v0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    sub-int v0, v17, v1

    .line 349
    .local v0, "top":I
    nop

    .line 351
    .end local v0    # "top":I
    .local v3, "top":I
    :goto_a0
    move v3, v0

    goto :goto_ac

    .line 350
    .end local v3    # "top":I
    :cond_a2
    invoke-virtual {v6, v2, v9, v9}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 351
    invoke-virtual {v6, v2}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    sub-int v0, v17, v0

    goto :goto_a0

    .line 354
    .restart local v3    # "top":I
    :goto_ac
    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v19, v2

    .end local v2    # "v":Landroid/view/View;
    .local v19, "v":Landroid/view/View;
    move v2, v10

    move/from16 v20, v4

    .end local v4    # "itemViewType":I
    .local v20, "itemViewType":I
    move v4, v11

    move/from16 v21, v5

    .end local v5    # "scrolled":I
    .restart local v21    # "scrolled":I
    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 355
    move-object/from16 v1, v19

    .line 361
    .end local v3    # "top":I
    .end local v13    # "topView":Landroid/view/View;
    .end local v14    # "hangingTop":I
    .end local v15    # "scrollBy":I
    .end local v16    # "isHeader":Z
    .end local v17    # "bottom":I
    .end local v18    # "isGhostHeader":Z
    .end local v19    # "v":Landroid/view/View;
    .end local v20    # "itemViewType":I
    .local v1, "topView":Landroid/view/View;
    nop

    .line 305
    move/from16 v0, v21

    goto/16 :goto_24

    .line 363
    .end local v1    # "topView":Landroid/view/View;
    .end local v21    # "scrolled":I
    .restart local v5    # "scrolled":I
    :cond_c3
    move/from16 v21, v5

    .end local v5    # "scrolled":I
    .restart local v21    # "scrolled":I
    :goto_c5
    move/from16 v0, v21

    .end local v21    # "scrolled":I
    .local v0, "scrolled":I
    :cond_c7
    goto/16 :goto_1b5

    .line 367
    :cond_c9
    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getHeight()I

    move-result v13

    .line 368
    .local v13, "parentHeight":I
    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getBottommostChildView()Landroid/view/View;

    move-result-object v1

    .local v1, "bottomView":Landroid/view/View;
    :goto_d1
    move-object v14, v1

    .line 370
    .end local v1    # "bottomView":Landroid/view/View;
    .local v14, "bottomView":Landroid/view/View;
    if-ge v0, v7, :cond_1b5

    .line 371
    invoke-virtual {v6, v14}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v1, v13

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 372
    .local v15, "hangingBottom":I
    sub-int v1, v7, v0

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v1

    neg-int v5, v1

    .line 373
    .local v5, "scrollBy":I
    sub-int v4, v0, v5

    .line 374
    .end local v0    # "scrolled":I
    .local v4, "scrolled":I
    invoke-virtual {v6, v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->offsetChildrenVertical(I)V

    .line 376
    invoke-virtual {v6, v14}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewAdapterPosition(Landroid/view/View;)I

    move-result v16

    .line 377
    .local v16, "adapterPosition":I
    add-int/lit8 v3, v16, 0x1

    .line 379
    .local v3, "nextAdapterPosition":I
    if-ge v4, v7, :cond_1b1

    invoke-virtual/range {p3 .. p3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v3, v0, :cond_1b1

    .line 381
    invoke-virtual {v6, v14}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v17

    .line 383
    .local v17, "top":I
    iget-object v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->adapter:Lorg/zakariya/stickyheaders/SectioningAdapter;

    invoke-virtual {v0, v3}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getItemViewBaseType(I)I

    move-result v2

    .line 384
    .local v2, "itemViewType":I
    if-nez v2, :cond_145

    .line 387
    iget-object v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->adapter:Lorg/zakariya/stickyheaders/SectioningAdapter;

    invoke-virtual {v0, v3}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getSectionForAdapterPosition(I)I

    move-result v0

    invoke-virtual {v6, v8, v0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->createSectionHeaderIfNeeded(Landroid/support/v7/widget/RecyclerView$Recycler;I)Landroid/view/View;

    move-result-object v1

    .line 388
    .local v1, "headerView":Landroid/view/View;
    invoke-virtual {v6, v1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v18

    .line 389
    .local v18, "height":I
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v20, v1

    .end local v1    # "headerView":Landroid/view/View;
    .local v20, "headerView":Landroid/view/View;
    move v9, v2

    .end local v2    # "itemViewType":I
    .local v9, "itemViewType":I
    move v2, v10

    move v12, v3

    .end local v3    # "nextAdapterPosition":I
    .local v12, "nextAdapterPosition":I
    move/from16 v3, v19

    move/from16 v19, v4

    .end local v4    # "scrolled":I
    .local v19, "scrolled":I
    move v4, v11

    move/from16 v21, v5

    .end local v5    # "scrollBy":I
    .local v21, "scrollBy":I
    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 392
    add-int/lit8 v12, v12, 0x1

    .line 393
    invoke-virtual {v8, v12}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v5

    .line 394
    .local v5, "ghostHeader":Landroid/view/View;
    invoke-virtual {v6, v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->addView(Landroid/view/View;)V

    .line 395
    add-int v24, v17, v18

    move-object v1, v5

    move/from16 v3, v17

    move-object/from16 v25, v5

    .end local v5    # "ghostHeader":Landroid/view/View;
    .local v25, "ghostHeader":Landroid/view/View;
    move/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 396
    move-object/from16 v0, v25

    .line 398
    .end local v14    # "bottomView":Landroid/view/View;
    .end local v18    # "height":I
    .end local v20    # "headerView":Landroid/view/View;
    .end local v25    # "ghostHeader":Landroid/view/View;
    .local v0, "bottomView":Landroid/view/View;
    nop

    .line 425
    move-object v1, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    goto/16 :goto_1ab

    .line 398
    .end local v0    # "bottomView":Landroid/view/View;
    .end local v9    # "itemViewType":I
    .end local v12    # "nextAdapterPosition":I
    .end local v19    # "scrolled":I
    .end local v21    # "scrollBy":I
    .restart local v2    # "itemViewType":I
    .restart local v3    # "nextAdapterPosition":I
    .restart local v4    # "scrolled":I
    .local v5, "scrollBy":I
    .restart local v14    # "bottomView":Landroid/view/View;
    :cond_145
    move v9, v2

    move v12, v3

    move/from16 v19, v4

    move/from16 v21, v5

    .end local v2    # "itemViewType":I
    .end local v3    # "nextAdapterPosition":I
    .end local v4    # "scrolled":I
    .end local v5    # "scrollBy":I
    .restart local v9    # "itemViewType":I
    .restart local v12    # "nextAdapterPosition":I
    .restart local v19    # "scrolled":I
    .restart local v21    # "scrollBy":I
    const/4 v5, 0x1

    if-ne v9, v5, :cond_185

    .line 401
    iget-object v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->adapter:Lorg/zakariya/stickyheaders/SectioningAdapter;

    invoke-virtual {v0, v12}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getSectionForAdapterPosition(I)I

    move-result v0

    invoke-virtual {v6, v8, v0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->createSectionHeaderIfNeeded(Landroid/support/v7/widget/RecyclerView$Recycler;I)Landroid/view/View;

    move-result-object v4

    .line 402
    .local v4, "headerView":Landroid/view/View;
    invoke-virtual {v6, v4}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v18

    .line 403
    .restart local v18    # "height":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v10

    move-object/from16 v20, v4

    .end local v4    # "headerView":Landroid/view/View;
    .restart local v20    # "headerView":Landroid/view/View;
    move v4, v11

    const/16 v23, 0x1

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 406
    invoke-virtual {v8, v12}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v5

    .line 407
    .local v5, "ghostHeader":Landroid/view/View;
    invoke-virtual {v6, v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->addView(Landroid/view/View;)V

    .line 408
    add-int v24, v17, v18

    move-object v1, v5

    move/from16 v3, v17

    move-object/from16 v25, v5

    .end local v5    # "ghostHeader":Landroid/view/View;
    .restart local v25    # "ghostHeader":Landroid/view/View;
    move/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 409
    move-object/from16 v0, v25

    .line 411
    .end local v14    # "bottomView":Landroid/view/View;
    .end local v18    # "height":I
    .end local v20    # "headerView":Landroid/view/View;
    .end local v25    # "ghostHeader":Landroid/view/View;
    .restart local v0    # "bottomView":Landroid/view/View;
    nop

    .line 425
    move-object v1, v0

    const/16 v22, 0x0

    goto :goto_1ab

    .line 413
    .end local v0    # "bottomView":Landroid/view/View;
    .restart local v14    # "bottomView":Landroid/view/View;
    :cond_185
    const/16 v23, 0x1

    invoke-virtual {v8, v12}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v5

    .line 414
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v6, v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->addView(Landroid/view/View;)V

    .line 416
    const/4 v4, 0x0

    invoke-virtual {v6, v5, v4, v4}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 417
    invoke-virtual {v6, v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v18

    .line 418
    .restart local v18    # "height":I
    add-int v20, v17, v18

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v10

    move/from16 v3, v17

    const/16 v22, 0x0

    move v4, v11

    move-object/from16 v24, v5

    .end local v5    # "v":Landroid/view/View;
    .local v24, "v":Landroid/view/View;
    move/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 419
    move-object/from16 v0, v24

    .line 425
    move-object v1, v0

    .line 368
    .end local v9    # "itemViewType":I
    .end local v12    # "nextAdapterPosition":I
    .end local v14    # "bottomView":Landroid/view/View;
    .end local v15    # "hangingBottom":I
    .end local v16    # "adapterPosition":I
    .end local v17    # "top":I
    .end local v18    # "height":I
    .end local v21    # "scrollBy":I
    .end local v24    # "v":Landroid/view/View;
    .local v1, "bottomView":Landroid/view/View;
    :goto_1ab
    move/from16 v0, v19

    const/4 v9, 0x0

    const/4 v12, 0x1

    goto/16 :goto_d1

    .line 428
    .end local v1    # "bottomView":Landroid/view/View;
    .end local v13    # "parentHeight":I
    .end local v19    # "scrolled":I
    .local v4, "scrolled":I
    :cond_1b1
    move/from16 v19, v4

    .end local v4    # "scrolled":I
    .restart local v19    # "scrolled":I
    move/from16 v0, v19

    .end local v19    # "scrolled":I
    .local v0, "scrolled":I
    :cond_1b5
    :goto_1b5
    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getTopmostChildView()Landroid/view/View;

    move-result-object v1

    .line 429
    .local v1, "topmostView":Landroid/view/View;
    if-eqz v1, :cond_1c1

    .line 430
    invoke-virtual {v6, v1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    iput v2, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewTop:I

    .line 433
    :cond_1c1
    invoke-virtual {v6, v8}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->updateHeaderPositions(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 434
    invoke-virtual {v6, v8}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->recycleViewsOutOfBounds(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 435
    return v0
.end method

.method public setHeaderPositionChangedCallback(Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPositionChangedCallback;)V
    .registers 2
    .param p1, "headerPositionChangedCallback"    # Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPositionChangedCallback;

    .line 93
    iput-object p1, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerPositionChangedCallback:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPositionChangedCallback;

    .line 94
    return-void
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .registers 10
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "position"    # I

    .line 545
    if-ltz p3, :cond_3b

    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getItemCount()I

    move-result v0

    if-gt p3, v0, :cond_3b

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->pendingSavedState:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;

    .line 552
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 553
    .local v0, "firstVisibleChild":Landroid/view/View;
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getEstimatedItemHeightForSmoothScroll(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    .line 554
    .local v1, "itemHeight":I
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 555
    .local v2, "currentPosition":I
    sub-int v3, v2, p3

    mul-int v3, v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 556
    .local v3, "distanceInPixels":I
    if-nez v3, :cond_2b

    .line 557
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v3, v4

    .line 560
    :cond_2b
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 561
    .local v4, "context":Landroid/content/Context;
    new-instance v5, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SmoothScroller;

    invoke-direct {v5, p0, v4, v3}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SmoothScroller;-><init>(Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;Landroid/content/Context;I)V

    .line 562
    .local v5, "scroller":Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SmoothScroller;
    invoke-virtual {v5, p3}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SmoothScroller;->setTargetPosition(I)V

    .line 563
    invoke-virtual {p0, v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 564
    return-void

    .line 546
    .end local v0    # "firstVisibleChild":Landroid/view/View;
    .end local v1    # "itemHeight":I
    .end local v2    # "currentPosition":I
    .end local v3    # "distanceInPixels":I
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "scroller":Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SmoothScroller;
    :cond_3b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "adapter position out of range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateFirstAdapterPosition()I
    .registers 4

    .line 715
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_12

    .line 716
    const/4 v0, 0x0

    iput v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewAdapterPosition:I

    .line 717
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewTop:I

    .line 718
    iget v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewTop:I

    return v0

    .line 721
    :cond_12
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getTopmostChildView()Landroid/view/View;

    move-result-object v0

    .line 722
    .local v0, "topmostView":Landroid/view/View;
    if-eqz v0, :cond_2f

    .line 723
    invoke-virtual {p0, v0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewAdapterPosition(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewAdapterPosition:I

    .line 724
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getPaddingTop()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewTop:I

    .line 725
    iget v1, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewTop:I

    return v1

    .line 733
    :cond_2f
    iget v1, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->firstViewTop:I

    return v1
.end method

.method updateHeaderPositions(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .registers 22
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 741
    move-object/from16 v6, p0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v7, v0

    .line 742
    .local v7, "visitedSections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v1

    .local v1, "n":I
    :goto_d
    if-ge v0, v1, :cond_2c

    .line 743
    invoke-virtual {v6, v0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 744
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v6, v2}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewSectionIndex(Landroid/view/View;)I

    move-result v3

    .line 745
    .local v3, "sectionIndex":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 746
    move-object/from16 v8, p1

    invoke-virtual {v6, v8, v3}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->createSectionHeaderIfNeeded(Landroid/support/v7/widget/RecyclerView$Recycler;I)Landroid/view/View;

    goto :goto_29

    .line 742
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "sectionIndex":I
    :cond_27
    move-object/from16 v8, p1

    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 751
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_2c
    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getPaddingLeft()I

    move-result v9

    .line 752
    .local v9, "left":I
    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int v10, v0, v1

    .line 754
    .local v10, "right":I
    iget-object v0, v6, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->headerViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_42
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/view/View;

    .line 755
    .local v12, "headerView":Landroid/view/View;
    invoke-virtual {v6, v12}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewSectionIndex(Landroid/view/View;)I

    move-result v13

    .line 758
    .local v13, "sectionIndex":I
    const/4 v0, 0x0

    .line 759
    .local v0, "ghostHeader":Landroid/view/View;
    const/4 v1, 0x0

    .line 760
    .local v1, "firstViewInNextSection":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getChildCount()I

    move-result v3

    move-object v14, v0

    move-object v15, v1

    .end local v0    # "ghostHeader":Landroid/view/View;
    .end local v1    # "firstViewInNextSection":Landroid/view/View;
    .local v3, "n":I
    .local v14, "ghostHeader":Landroid/view/View;
    .local v15, "firstViewInNextSection":Landroid/view/View;
    :goto_5c
    if-ge v2, v3, :cond_87

    .line 761
    invoke-virtual {v6, v2}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 764
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v6, v0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->isViewRecycled(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 765
    goto :goto_84

    .line 768
    :cond_69
    invoke-virtual {v6, v0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewBaseType(Landroid/view/View;)I

    move-result v1

    .line 769
    .local v1, "type":I
    if-nez v1, :cond_70

    .line 770
    goto :goto_84

    .line 773
    :cond_70
    invoke-virtual {v6, v0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewSectionIndex(Landroid/view/View;)I

    move-result v4

    .line 774
    .local v4, "viewSectionIndex":I
    if-ne v4, v13, :cond_7c

    .line 775
    const/4 v5, 0x1

    if-ne v1, v5, :cond_84

    .line 776
    move-object v5, v0

    .line 760
    move-object v14, v5

    goto :goto_84

    .line 778
    :cond_7c
    add-int/lit8 v5, v13, 0x1

    if-ne v4, v5, :cond_84

    .line 779
    if-nez v15, :cond_84

    .line 780
    nop

    .line 760
    move-object v15, v0

    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "type":I
    .end local v4    # "viewSectionIndex":I
    :cond_84
    :goto_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 785
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_87
    invoke-virtual {v6, v12}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v16

    .line 786
    .local v16, "height":I
    invoke-virtual/range {p0 .. p0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getPaddingTop()I

    move-result v0

    .line 789
    .local v0, "top":I
    sget-object v1, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;->STICKY:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    .line 791
    .local v1, "headerPosition":Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;
    if-eqz v14, :cond_9c

    .line 792
    invoke-virtual {v6, v14}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    .line 793
    .local v2, "ghostHeaderTop":I
    if-lt v2, v0, :cond_9c

    .line 794
    move v0, v2

    .line 795
    sget-object v1, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;->NATURAL:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    .line 799
    .end local v2    # "ghostHeaderTop":I
    :cond_9c
    if-eqz v15, :cond_aa

    .line 800
    invoke-virtual {v6, v15}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    .line 801
    .local v2, "nextViewTop":I
    sub-int v3, v2, v16

    if-ge v3, v0, :cond_aa

    .line 802
    sub-int v0, v2, v16

    .line 803
    sget-object v1, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;->TRAILING:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    .line 808
    .end local v0    # "top":I
    .end local v1    # "headerPosition":Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;
    .end local v2    # "nextViewTop":I
    .local v5, "headerPosition":Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;
    .local v17, "top":I
    :cond_aa
    move/from16 v17, v0

    move-object v5, v1

    invoke-virtual {v12}, Landroid/view/View;->bringToFront()V

    .line 809
    add-int v18, v17, v16

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v9

    move/from16 v3, v17

    move v4, v10

    move-object/from16 v19, v7

    move-object v7, v5

    .end local v5    # "headerPosition":Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;
    .local v7, "headerPosition":Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;
    .local v19, "visitedSections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 812
    invoke-virtual {v6, v13, v12, v7}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->recordHeaderPositionAndNotify(ILandroid/view/View;Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;)V

    .line 813
    .end local v7    # "headerPosition":Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;
    .end local v12    # "headerView":Landroid/view/View;
    .end local v13    # "sectionIndex":I
    .end local v14    # "ghostHeader":Landroid/view/View;
    .end local v15    # "firstViewInNextSection":Landroid/view/View;
    .end local v16    # "height":I
    .end local v17    # "top":I
    nop

    .line 754
    move-object/from16 v7, v19

    goto/16 :goto_42

    .line 814
    .end local v19    # "visitedSections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v7, "visitedSections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_c9
    move-object/from16 v19, v7

    .end local v7    # "visitedSections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v19    # "visitedSections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    return-void
.end method

###### Class org.zakariya.stickyheaders.StickyHeaderLayoutManager.HeaderPosition (org.zakariya.stickyheaders.StickyHeaderLayoutManager$HeaderPosition)
.class public final enum Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;
.super Ljava/lang/Enum;
.source "StickyHeaderLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeaderPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

.field public static final enum NATURAL:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

.field public static final enum NONE:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

.field public static final enum STICKY:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

.field public static final enum TRAILING:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 31
    new-instance v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;->NONE:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    .line 32
    new-instance v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    const-string v1, "NATURAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;->NATURAL:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    .line 33
    new-instance v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    const-string v1, "STICKY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;->STICKY:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    .line 34
    new-instance v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    const-string v1, "TRAILING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;->TRAILING:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    sget-object v1, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;->NONE:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    aput-object v1, v0, v2

    sget-object v1, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;->NATURAL:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    aput-object v1, v0, v3

    sget-object v1, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;->STICKY:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    aput-object v1, v0, v4

    sget-object v1, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;->TRAILING:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    aput-object v1, v0, v5

    sput-object v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;->$VALUES:[Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    return-object v0
.end method

.method public static values()[Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;
    .registers 1

    .line 30
    sget-object v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;->$VALUES:[Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    invoke-virtual {v0}, [Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;

    return-object v0
.end method

###### Class org.zakariya.stickyheaders.StickyHeaderLayoutManager.HeaderPositionChangedCallback (org.zakariya.stickyheaders.StickyHeaderLayoutManager$HeaderPositionChangedCallback)
.class public interface abstract Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPositionChangedCallback;
.super Ljava/lang/Object;
.source "StickyHeaderLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HeaderPositionChangedCallback"
.end annotation


# virtual methods
.method public abstract onHeaderPositionChanged(ILandroid/view/View;Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$HeaderPosition;)V
.end method

###### Class org.zakariya.stickyheaders.StickyHeaderLayoutManager.SavedState (org.zakariya.stickyheaders.StickyHeaderLayoutManager$SavedState)
.class Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "StickyHeaderLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field firstViewAdapterPosition:I

.field firstViewTop:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 925
    new-instance v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState$1;

    invoke-direct {v0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    const/4 v0, -0x1

    iput v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewAdapterPosition:I

    .line 886
    const/4 v0, 0x0

    iput v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewTop:I

    .line 889
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    const/4 v0, -0x1

    iput v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewAdapterPosition:I

    .line 886
    const/4 v0, 0x0

    iput v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewTop:I

    .line 892
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewAdapterPosition:I

    .line 893
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewTop:I

    .line 894
    return-void
.end method

.method public constructor <init>(Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;)V
    .registers 3
    .param p1, "other"    # Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;

    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    const/4 v0, -0x1

    iput v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewAdapterPosition:I

    .line 886
    const/4 v0, 0x0

    iput v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewTop:I

    .line 897
    iget v0, p1, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewAdapterPosition:I

    iput v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewAdapterPosition:I

    .line 898
    iget v0, p1, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewTop:I

    iput v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewTop:I

    .line 899
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 916
    const/4 v0, 0x0

    return v0
.end method

.method invalidate()V
    .registers 2

    .line 906
    const/4 v0, -0x1

    iput v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewAdapterPosition:I

    .line 907
    return-void
.end method

.method isValid()Z
    .registers 2

    .line 902
    iget v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewAdapterPosition:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " firstViewAdapterPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewAdapterPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " firstViewTop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 921
    iget v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewAdapterPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    iget v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;->firstViewTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    return-void
.end method

###### Class org.zakariya.stickyheaders.StickyHeaderLayoutManager.SavedState.AnonymousClass1 (org.zakariya.stickyheaders.StickyHeaderLayoutManager$SavedState$1)
.class final Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState$1;
.super Ljava/lang/Object;
.source "StickyHeaderLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 925
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 928
    new-instance v0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;

    invoke-direct {v0, p1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 925
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState$1;->newArray(I)[Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;
    .registers 3
    .param p1, "size"    # I

    .line 933
    new-array v0, p1, [Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SavedState;

    return-object v0
.end method

###### Class org.zakariya.stickyheaders.StickyHeaderLayoutManager.SmoothScroller (org.zakariya.stickyheaders.StickyHeaderLayoutManager$SmoothScroller)
.class Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SmoothScroller;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "StickyHeaderLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmoothScroller"
.end annotation


# static fields
.field private static final DEFAULT_DURATION:F = 1000.0f

.field private static final TARGET_SEEK_SCROLL_DISTANCE_PX:I = 0x2710


# instance fields
.field private final distanceInPixels:F

.field private final duration:F

.field final synthetic this$0:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;


# direct methods
.method public constructor <init>(Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;Landroid/content/Context;I)V
    .registers 6
    .param p1, "this$0"    # Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "distanceInPixels"    # I

    .line 863
    iput-object p1, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SmoothScroller;->this$0:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;

    .line 864
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 865
    int-to-float v0, p3

    iput v0, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SmoothScroller;->distanceInPixels:F

    .line 866
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result v0

    .line 867
    .local v0, "millisecondsPerPx":F
    const/16 v1, 0x2710

    if-ge p3, v1, :cond_22

    .line 868
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    int-to-float v1, v1

    goto :goto_24

    :cond_22
    const/high16 v1, 0x447a0000    # 1000.0f

    :goto_24
    iput v1, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SmoothScroller;->duration:F

    .line 869
    return-void
.end method


# virtual methods
.method protected calculateTimeForScrolling(I)I
    .registers 4
    .param p1, "dx"    # I

    .line 878
    int-to-float v0, p1

    iget v1, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SmoothScroller;->distanceInPixels:F

    div-float/2addr v0, v1

    .line 879
    .local v0, "proportion":F
    iget v1, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SmoothScroller;->duration:F

    mul-float v1, v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 5
    .param p1, "targetPosition"    # I

    .line 873
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager$SmoothScroller;->this$0:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;

    invoke-virtual {v1, p1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->computeScrollVectorForPosition(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
