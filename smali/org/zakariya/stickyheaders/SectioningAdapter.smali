###### Class org.zakariya.stickyheaders.SectioningAdapter (org.zakariya.stickyheaders.SectioningAdapter)
.class public Lorg/zakariya/stickyheaders/SectioningAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SectioningAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/zakariya/stickyheaders/SectioningAdapter$SelectionVisitor;,
        Lorg/zakariya/stickyheaders/SectioningAdapter$FooterViewHolder;,
        Lorg/zakariya/stickyheaders/SectioningAdapter$GhostHeaderViewHolder;,
        Lorg/zakariya/stickyheaders/SectioningAdapter$HeaderViewHolder;,
        Lorg/zakariya/stickyheaders/SectioningAdapter$ItemViewHolder;,
        Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;,
        Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;,
        Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final NO_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SectioningAdapter"

.field public static final TYPE_FOOTER:I = 0x3

.field public static final TYPE_GHOST_HEADER:I = 0x1

.field public static final TYPE_HEADER:I = 0x0

.field public static final TYPE_ITEM:I = 0x2


# instance fields
.field private collapsedSections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mainThreadHandler:Landroid/os/Handler;

.field private sectionIndicesByAdapterPosition:[I

.field private sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/zakariya/stickyheaders/SectioningAdapter$Section;",
            ">;"
        }
    .end annotation
.end field

.field private selectionStateBySection:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;",
            ">;"
        }
    .end annotation
.end field

.field private totalNumberOfItems:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->collapsedSections:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->selectionStateBySection:Ljava/util/HashMap;

    return-void
.end method

.method private buildSectionIndex()V
    .registers 9

    .line 1076
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    .line 1078
    const/4 v0, 0x0

    .line 1079
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "s":I
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getNumberOfSections()I

    move-result v2

    .local v2, "ns":I
    :goto_d
    const/4 v3, 0x0

    if-ge v1, v2, :cond_5a

    .line 1080
    new-instance v4, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;-><init>(Lorg/zakariya/stickyheaders/SectioningAdapter$1;)V

    .line 1081
    .local v4, "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    iput v0, v4, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->adapterPosition:I

    .line 1082
    invoke-virtual {p0, v1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->doesSectionHaveHeader(I)Z

    move-result v5

    iput-boolean v5, v4, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->hasHeader:Z

    .line 1083
    invoke-virtual {p0, v1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->doesSectionHaveFooter(I)Z

    move-result v5

    iput-boolean v5, v4, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->hasFooter:Z

    .line 1085
    invoke-virtual {p0, v1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->isSectionCollapsed(I)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1086
    iput v3, v4, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->length:I

    .line 1087
    invoke-virtual {p0, v1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getNumberOfItemsInSection(I)I

    move-result v3

    iput v3, v4, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->numberOfItems:I

    goto :goto_3b

    .line 1089
    :cond_33
    invoke-virtual {p0, v1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getNumberOfItemsInSection(I)I

    move-result v3

    iput v3, v4, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->numberOfItems:I

    iput v3, v4, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->length:I

    .line 1092
    :goto_3b
    iget-boolean v3, v4, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->hasHeader:Z

    if-eqz v3, :cond_45

    .line 1093
    iget v3, v4, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->length:I

    add-int/lit8 v3, v3, 0x2

    iput v3, v4, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->length:I

    .line 1095
    :cond_45
    iget-boolean v3, v4, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->hasFooter:Z

    if-eqz v3, :cond_4f

    .line 1096
    iget v3, v4, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->length:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->length:I

    .line 1099
    :cond_4f
    iget-object v3, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    iget v3, v4, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->length:I

    add-int/2addr v0, v3

    .line 1079
    .end local v4    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1104
    .end local v1    # "s":I
    .end local v2    # "ns":I
    :cond_5a
    iput v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->totalNumberOfItems:I

    .line 1106
    const/4 v0, 0x0

    .line 1107
    iget v1, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->totalNumberOfItems:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sectionIndicesByAdapterPosition:[I

    .line 1108
    const/4 v1, 0x0

    .restart local v1    # "s":I
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getNumberOfSections()I

    move-result v2

    .restart local v2    # "ns":I
    :goto_68
    if-ge v1, v2, :cond_86

    .line 1109
    iget-object v4, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;

    .line 1110
    .restart local v4    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_73
    iget v6, v4, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->length:I

    if-ge v5, v6, :cond_80

    .line 1111
    iget-object v6, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sectionIndicesByAdapterPosition:[I

    add-int v7, v0, v5

    aput v1, v6, v7

    .line 1110
    add-int/lit8 v5, v5, 0x1

    goto :goto_73

    .line 1114
    .end local v5    # "p":I
    :cond_80
    iget v5, v4, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->length:I

    add-int/2addr v0, v5

    .line 1108
    .end local v4    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 1116
    .end local v1    # "s":I
    .end local v2    # "ns":I
    :cond_86
    return-void
.end method

.method private getAdapterPosition(II)I
    .registers 6
    .param p1, "sectionIndex"    # I
    .param p2, "offsetIntoSection"    # I

    .line 382
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 383
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 386
    :cond_7
    if-ltz p1, :cond_48

    .line 390
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1e

    .line 394
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;

    .line 395
    .local v0, "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    iget v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->adapterPosition:I

    .line 396
    .local v1, "adapterPosition":I
    add-int v2, p2, v1

    return v2

    .line 391
    .end local v0    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    .end local v1    # "adapterPosition":I
    :cond_1e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sectionIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= sections.size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_48
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sectionIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSectionSelectionState(I)Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;
    .registers 5
    .param p1, "sectionIndex"    # I

    .line 499
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->selectionStateBySection:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;

    .line 500
    .local v0, "state":Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;
    if-eqz v0, :cond_f

    .line 501
    return-object v0

    .line 504
    :cond_f
    new-instance v1, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;-><init>(Lorg/zakariya/stickyheaders/SectioningAdapter$1;)V

    move-object v0, v1

    .line 505
    iget-object v1, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->selectionStateBySection:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    return-object v0
.end method

.method private notifySectionItemRangeInserted(IIIZ)V
    .registers 9
    .param p1, "sectionIndex"    # I
    .param p2, "fromPosition"    # I
    .param p3, "number"    # I
    .param p4, "updateSelectionState"    # Z

    .line 822
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 823
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 824
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyAllSectionsDataSetChanged()V

    goto :goto_27

    .line 826
    :cond_b
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 827
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;

    .line 830
    .local v0, "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    iget v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->numberOfItems:I

    if-gt p2, v1, :cond_2d

    .line 834
    move v1, p2

    .line 835
    .local v1, "offset":I
    iget-boolean v2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->hasHeader:Z

    if-eqz v2, :cond_21

    .line 836
    add-int/lit8 v1, v1, 0x2

    .line 839
    :cond_21
    iget v2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->adapterPosition:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2, p3}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyItemRangeInserted(II)V

    .line 842
    .end local v0    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    .end local v1    # "offset":I
    :goto_27
    if-eqz p4, :cond_2c

    .line 844
    invoke-direct {p0, p1, p2, p3}, Lorg/zakariya/stickyheaders/SectioningAdapter;->updateSectionItemRangeSelectionState(III)V

    .line 846
    :cond_2c
    return-void

    .line 831
    .restart local v0    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    :cond_2d
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemIndex adapterPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " exceeds sectionIndex numberOfItems: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->numberOfItems:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private notifySectionItemRangeRemoved(IIIZ)V
    .registers 9
    .param p1, "sectionIndex"    # I
    .param p2, "fromPosition"    # I
    .param p3, "number"    # I
    .param p4, "updateSelectionState"    # Z

    .line 860
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 861
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 862
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyAllSectionsDataSetChanged()V

    goto :goto_2d

    .line 864
    :cond_b
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 865
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;

    .line 868
    .local v0, "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    iget v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->numberOfItems:I

    if-gt p2, v1, :cond_58

    .line 873
    add-int v1, p2, p3

    iget v2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->numberOfItems:I

    if-gt v1, v2, :cond_34

    .line 877
    move v1, p2

    .line 878
    .local v1, "offset":I
    iget-boolean v2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->hasHeader:Z

    if-eqz v2, :cond_27

    .line 879
    add-int/lit8 v1, v1, 0x2

    .line 882
    :cond_27
    iget v2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->adapterPosition:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2, p3}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyItemRangeRemoved(II)V

    .line 885
    .end local v0    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    .end local v1    # "offset":I
    :goto_2d
    if-eqz p4, :cond_33

    .line 887
    neg-int v0, p3

    invoke-direct {p0, p1, p2, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->updateSectionItemRangeSelectionState(III)V

    .line 889
    :cond_33
    return-void

    .line 874
    .restart local v0    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    :cond_34
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemIndex adapterPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " exceeds sectionIndex numberOfItems: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->numberOfItems:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 869
    :cond_58
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemIndex adapterPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " exceeds sectionIndex numberOfItems: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->numberOfItems:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private post(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 1068
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->mainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 1069
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->mainThreadHandler:Landroid/os/Handler;

    .line 1072
    :cond_f
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->mainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1073
    return-void
.end method

.method public static unmaskBaseViewType(I)I
    .registers 2
    .param p0, "itemViewTypeMask"    # I

    .line 1256
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static unmaskUserViewType(I)I
    .registers 2
    .param p0, "itemViewTypeMask"    # I

    .line 1260
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private updateCollapseAndSelectionStateForSectionChange(II)V
    .registers 11
    .param p1, "sectionIndex"    # I
    .param p2, "delta"    # I

    .line 1145
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->collapsedSections:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1146
    .local v0, "collapseState":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->collapsedSections:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1148
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1150
    .local v2, "i":I
    if-gez p2, :cond_29

    if-ne v2, p1, :cond_29

    .line 1151
    goto :goto_14

    .line 1154
    :cond_29
    move v3, v2

    .line 1155
    .local v3, "j":I
    if-lt v3, p1, :cond_2d

    .line 1156
    add-int/2addr v3, p2

    .line 1159
    :cond_2d
    iget-object v4, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->collapsedSections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    .end local v2    # "i":I
    .end local v3    # "j":I
    goto :goto_14

    .line 1163
    :cond_3f
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->selectionStateBySection:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1164
    .local v1, "selectionState":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;>;"
    iget-object v2, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->selectionStateBySection:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1166
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1168
    .local v3, "i":I
    if-gez p2, :cond_68

    if-ne v3, p1, :cond_68

    .line 1169
    goto :goto_53

    .line 1172
    :cond_68
    move v4, v3

    .line 1173
    .local v4, "j":I
    if-lt v4, p1, :cond_6c

    .line 1174
    add-int/2addr v4, p2

    .line 1177
    :cond_6c
    iget-object v5, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->selectionStateBySection:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    .end local v3    # "i":I
    .end local v4    # "j":I
    goto :goto_53

    .line 1179
    :cond_7e
    return-void
.end method

.method private updateSectionItemRangeSelectionState(III)V
    .registers 12
    .param p1, "sectionIndex"    # I
    .param p2, "fromPosition"    # I
    .param p3, "delta"    # I

    .line 1119
    invoke-direct {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getSectionSelectionState(I)Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;

    move-result-object v0

    .line 1120
    .local v0, "sectionSelectionState":Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;
    iget-object v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->items:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 1121
    .local v1, "itemState":Landroid/util/SparseBooleanArray;
    iget-object v2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->items:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1123
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .local v3, "n":I
    :goto_14
    if-ge v2, v3, :cond_36

    .line 1124
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 1126
    .local v4, "pos":I
    if-gez p3, :cond_23

    if-lt v4, p2, :cond_23

    sub-int v5, p2, p3

    if-ge v4, v5, :cond_23

    .line 1127
    goto :goto_33

    .line 1130
    :cond_23
    move v5, v4

    .line 1131
    .local v5, "newPos":I
    if-lt v4, p2, :cond_27

    .line 1132
    add-int/2addr v5, p3

    .line 1135
    :cond_27
    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 1136
    iget-object v6, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->items:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1123
    .end local v4    # "pos":I
    .end local v5    # "newPos":I
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1139
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_36
    return-void
.end method


# virtual methods
.method public clearSelection()V
    .registers 2

    .line 546
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->clearSelection(Z)V

    .line 547
    return-void
.end method

.method public clearSelection(Z)V
    .registers 9
    .param p1, "notify"    # Z

    .line 517
    if-eqz p1, :cond_a

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->selectionStateBySection:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 518
    .local v0, "selectionState":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;>;"
    :goto_b
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->selectionStateBySection:Ljava/util/HashMap;

    .line 520
    if-eqz p1, :cond_63

    .line 523
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 524
    .local v2, "sectionIndex":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;

    .line 526
    .local v3, "state":Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;
    iget-boolean v4, v3, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->section:Z

    if-eqz v4, :cond_3e

    .line 527
    invoke-virtual {p0, v2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifySectionDataSetChanged(I)V

    goto :goto_62

    .line 529
    :cond_3e
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v5, v3, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->items:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    .local v5, "s":I
    :goto_45
    if-ge v4, v5, :cond_5b

    .line 530
    iget-object v6, v3, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->items:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 531
    iget-object v6, v3, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->items:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {p0, v2, v6}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifySectionItemChanged(II)V

    .line 529
    :cond_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 534
    .end local v4    # "i":I
    .end local v5    # "s":I
    :cond_5b
    iget-boolean v4, v3, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->footer:Z

    if-eqz v4, :cond_62

    .line 535
    invoke-virtual {p0, v2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifySectionFooterChanged(I)V

    .line 538
    .end local v2    # "sectionIndex":I
    .end local v3    # "state":Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;
    :cond_62
    :goto_62
    goto :goto_1c

    .line 540
    :cond_63
    return-void
.end method

.method public doesSectionHaveFooter(I)Z
    .registers 3
    .param p1, "sectionIndex"    # I

    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public doesSectionHaveHeader(I)Z
    .registers 3
    .param p1, "sectionIndex"    # I

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapterPositionForSectionFooter(I)I
    .registers 5
    .param p1, "sectionIndex"    # I

    .line 450
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->doesSectionHaveFooter(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 451
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;

    .line 452
    .local v0, "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    iget v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->adapterPosition:I

    .line 453
    .local v1, "adapterPosition":I
    iget v2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->length:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 455
    .end local v0    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    .end local v1    # "adapterPosition":I
    :cond_16
    const/4 v0, -0x1

    return v0
.end method

.method public getAdapterPositionForSectionGhostHeader(I)I
    .registers 3
    .param p1, "sectionIndex"    # I

    .line 420
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->doesSectionHaveHeader(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 421
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getAdapterPosition(II)I

    move-result v0

    return v0

    .line 423
    :cond_c
    const/4 v0, -0x1

    return v0
.end method

.method public getAdapterPositionForSectionHeader(I)I
    .registers 3
    .param p1, "sectionIndex"    # I

    .line 406
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->doesSectionHaveHeader(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 407
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getAdapterPosition(II)I

    move-result v0

    return v0

    .line 409
    :cond_c
    const/4 v0, -0x1

    return v0
.end method

.method public getAdapterPositionForSectionItem(II)I
    .registers 4
    .param p1, "sectionIndex"    # I
    .param p2, "offsetIntoSection"    # I

    .line 436
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->doesSectionHaveHeader(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 437
    invoke-direct {p0, p1, p2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getAdapterPosition(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0

    .line 439
    :cond_d
    invoke-direct {p0, p1, p2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getAdapterPosition(II)I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .registers 2

    .line 1183
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 1184
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 1186
    :cond_7
    iget v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->totalNumberOfItems:I

    return v0
.end method

.method public getItemViewBaseType(I)I
    .registers 3
    .param p1, "adapterPosition"    # I

    .line 1244
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getItemViewType(I)I

    move-result v0

    invoke-static {v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->unmaskBaseViewType(I)I

    move-result v0

    return v0
.end method

.method getItemViewBaseType(Lorg/zakariya/stickyheaders/SectioningAdapter$Section;I)I
    .registers 8
    .param p1, "section"    # Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    .param p2, "localPosition"    # I

    .line 1264
    iget-boolean v0, p1, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->hasHeader:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_19

    iget-boolean v0, p1, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->hasFooter:Z

    if-eqz v0, :cond_19

    .line 1265
    if-nez p2, :cond_f

    .line 1266
    return v2

    .line 1267
    :cond_f
    if-ne p2, v4, :cond_12

    .line 1268
    return v4

    .line 1269
    :cond_12
    iget v0, p1, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->length:I

    sub-int/2addr v0, v4

    if-ne p2, v0, :cond_18

    .line 1270
    return v1

    .line 1272
    :cond_18
    return v3

    .line 1274
    :cond_19
    iget-boolean v0, p1, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->hasHeader:Z

    if-eqz v0, :cond_24

    .line 1275
    if-nez p2, :cond_20

    .line 1276
    return v2

    .line 1277
    :cond_20
    if-ne p2, v4, :cond_23

    .line 1278
    return v4

    .line 1280
    :cond_23
    return v3

    .line 1282
    :cond_24
    iget-boolean v0, p1, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->hasFooter:Z

    if-eqz v0, :cond_2f

    .line 1283
    iget v0, p1, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->length:I

    sub-int/2addr v0, v4

    if-ne p2, v0, :cond_2e

    .line 1284
    return v1

    .line 1286
    :cond_2e
    return v3

    .line 1290
    :cond_2f
    return v3
.end method

.method public getItemViewType(I)I
    .registers 10
    .param p1, "adapterPosition"    # I

    .line 1191
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 1192
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 1195
    :cond_7
    if-ltz p1, :cond_d0

    .line 1197
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_a8

    .line 1201
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getSectionForAdapterPosition(I)I

    move-result v0

    .line 1202
    .local v0, "sectionIndex":I
    iget-object v1, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;

    .line 1203
    .local v1, "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    iget v2, v1, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->adapterPosition:I

    sub-int v2, p1, v2

    .line 1205
    .local v2, "localPosition":I
    invoke-virtual {p0, v1, v2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getItemViewBaseType(Lorg/zakariya/stickyheaders/SectioningAdapter$Section;I)I

    move-result v3

    .line 1206
    .local v3, "baseType":I
    const/4 v4, 0x0

    .line 1209
    .local v4, "userType":I
    const/16 v5, 0xff

    if-eqz v3, :cond_7c

    packed-switch v3, :pswitch_data_ec

    goto :goto_84

    .line 1227
    :pswitch_2c
    invoke-virtual {p0, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getSectionFooterUserType(I)I

    move-result v4

    .line 1228
    if-ltz v4, :cond_35

    if-gt v4, v5, :cond_35

    goto :goto_84

    .line 1229
    :cond_35
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Custom footer view type ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") must be in range [0,255]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1218
    :pswitch_51
    iget-boolean v6, v1, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->hasHeader:Z

    if-eqz v6, :cond_57

    .line 1219
    add-int/lit8 v2, v2, -0x2

    .line 1221
    :cond_57
    invoke-virtual {p0, v0, v2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getSectionItemUserType(II)I

    move-result v4

    .line 1222
    if-ltz v4, :cond_60

    if-gt v4, v5, :cond_60

    goto :goto_84

    .line 1223
    :cond_60
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Custom item view type ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") must be in range [0,255]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1211
    :cond_7c
    invoke-virtual {p0, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getSectionHeaderUserType(I)I

    move-result v4

    .line 1212
    if-ltz v4, :cond_8c

    if-gt v4, v5, :cond_8c

    .line 1236
    :goto_84
    and-int/lit16 v5, v4, 0xff

    shl-int/lit8 v5, v5, 0x8

    and-int/lit16 v6, v3, 0xff

    or-int/2addr v5, v6

    return v5

    .line 1213
    :cond_8c
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Custom header view type ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") must be in range [0,255]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1198
    .end local v0    # "sectionIndex":I
    .end local v1    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    .end local v2    # "localPosition":I
    .end local v3    # "baseType":I
    .end local v4    # "userType":I
    :cond_a8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adapterPosition ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")  cannot be > getItemCount() ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1196
    :cond_d0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adapterPosition ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") cannot be < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_ec
    .packed-switch 0x2
        :pswitch_51
        :pswitch_2c
    .end packed-switch
.end method

.method public getItemViewUserType(I)I
    .registers 3
    .param p1, "adapterPosition"    # I

    .line 1252
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getItemViewType(I)I

    move-result v0

    invoke-static {v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->unmaskUserViewType(I)I

    move-result v0

    return v0
.end method

.method public getNumberOfItemsInSection(I)I
    .registers 3
    .param p1, "sectionIndex"    # I

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public getNumberOfSections()I
    .registers 2

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public getPositionOfItemInSection(II)I
    .registers 8
    .param p1, "sectionIndex"    # I
    .param p2, "adapterPosition"    # I

    .line 348
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 349
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 352
    :cond_7
    if-ltz p1, :cond_7b

    .line 356
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_51

    .line 360
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;

    .line 361
    .local v0, "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    iget v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->adapterPosition:I

    sub-int v1, p2, v1

    .line 362
    .local v1, "localPosition":I
    iget v2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->length:I

    if-gt v1, v2, :cond_28

    .line 366
    iget-boolean v2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->hasHeader:Z

    if-eqz v2, :cond_27

    .line 368
    add-int/lit8 v1, v1, -0x2

    .line 371
    :cond_27
    return v1

    .line 363
    :cond_28
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adapterPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is beyond sectionIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->length:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    .end local v0    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    .end local v1    # "localPosition":I
    :cond_51
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sectionIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= sections.size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_7b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sectionIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSectionFooterUserType(I)I
    .registers 3
    .param p1, "sectionIndex"    # I

    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionForAdapterPosition(I)I
    .registers 5
    .param p1, "adapterPosition"    # I

    .line 322
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 323
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 326
    :cond_7
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_f

    .line 327
    const/4 v0, -0x1

    return v0

    .line 330
    :cond_f
    if-ltz p1, :cond_1c

    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1c

    .line 334
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sectionIndicesByAdapterPosition:[I

    aget v0, v0, p1

    return v0

    .line 331
    :cond_1c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adapterPosition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not in range of items represented by adapter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSectionHeaderUserType(I)I
    .registers 3
    .param p1, "sectionIndex"    # I

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionItemUserType(II)I
    .registers 4
    .param p1, "sectionIndex"    # I
    .param p2, "itemIndex"    # I

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedItemCount()I
    .registers 8

    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, "count":I
    iget-object v1, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->selectionStateBySection:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 578
    .local v2, "sectionIndex":I
    iget-object v3, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->selectionStateBySection:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;

    .line 580
    .local v3, "state":Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;
    iget-boolean v4, v3, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->section:Z

    if-eqz v4, :cond_39

    .line 582
    invoke-virtual {p0, v2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getNumberOfItemsInSection(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 584
    invoke-virtual {p0, v2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->doesSectionHaveFooter(I)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 588
    :cond_39
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v5, v3, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->items:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    .local v5, "s":I
    :goto_40
    if-ge v4, v5, :cond_4f

    .line 589
    iget-object v6, v3, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->items:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    .line 590
    .local v6, "selected":Z
    if-eqz v6, :cond_4c

    .line 591
    add-int/lit8 v0, v0, 0x1

    .line 588
    .end local v6    # "selected":Z
    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 594
    .end local v4    # "i":I
    .end local v5    # "s":I
    :cond_4f
    iget-boolean v4, v3, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->footer:Z

    if-eqz v4, :cond_55

    .line 595
    add-int/lit8 v0, v0, 0x1

    .line 598
    .end local v2    # "sectionIndex":I
    .end local v3    # "state":Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;
    :cond_55
    :goto_55
    goto :goto_b

    .line 600
    :cond_56
    return v0
.end method

.method public isSectionCollapsed(I)Z
    .registers 4
    .param p1, "sectionIndex"    # I

    .line 491
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->collapsedSections:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 492
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->collapsedSections:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 495
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public isSectionFooterSelected(I)Z
    .registers 4
    .param p1, "sectionIndex"    # I

    .line 772
    invoke-direct {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getSectionSelectionState(I)Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;

    move-result-object v0

    .line 773
    .local v0, "state":Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;
    iget-boolean v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->section:Z

    if-nez v1, :cond_f

    iget-boolean v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->footer:Z

    if-eqz v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x1

    :goto_10
    return v1
.end method

.method public isSectionItemSelected(II)Z
    .registers 5
    .param p1, "sectionIndex"    # I
    .param p2, "itemIndex"    # I

    .line 733
    invoke-direct {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getSectionSelectionState(I)Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;

    move-result-object v0

    .line 734
    .local v0, "state":Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;
    iget-boolean v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->section:Z

    if-nez v1, :cond_13

    iget-object v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->items:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    return v1
.end method

.method public isSectionSelected(I)Z
    .registers 3
    .param p1, "sectionIndex"    # I

    .line 692
    invoke-direct {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getSectionSelectionState(I)Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;

    move-result-object v0

    iget-boolean v0, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->section:Z

    return v0
.end method

.method public isSelectionEmpty()Z
    .registers 8

    .line 555
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->selectionStateBySection:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 556
    .local v1, "sectionIndex":I
    iget-object v2, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->selectionStateBySection:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;

    .line 558
    .local v2, "state":Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;
    iget-boolean v3, v2, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->section:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2c

    .line 559
    return v4

    .line 561
    :cond_2c
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v5, v2, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->items:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    .local v5, "s":I
    :goto_33
    if-ge v3, v5, :cond_41

    .line 562
    iget-object v6, v2, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->items:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 563
    return v4

    .line 561
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 566
    .end local v3    # "i":I
    .end local v5    # "s":I
    :cond_41
    iget-boolean v3, v2, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->footer:Z

    if-eqz v3, :cond_46

    .line 567
    return v4

    .line 570
    .end local v1    # "sectionIndex":I
    .end local v2    # "state":Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;
    :cond_46
    goto :goto_a

    .line 572
    :cond_47
    const/4 v0, 0x1

    return v0
.end method

.method public notifyAllSectionsDataSetChanged()V
    .registers 2

    .line 783
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 784
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyDataSetChanged()V

    .line 785
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->collapsedSections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 786
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->selectionStateBySection:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 787
    return-void
.end method

.method public notifySectionDataSetChanged(I)V
    .registers 5
    .param p1, "sectionIndex"    # I

    .line 797
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 798
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 799
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyAllSectionsDataSetChanged()V

    goto :goto_1d

    .line 801
    :cond_b
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 802
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;

    .line 803
    .local v0, "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    iget v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->adapterPosition:I

    iget v2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->length:I

    invoke-virtual {p0, v1, v2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyItemRangeChanged(II)V

    .line 807
    .end local v0    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    :goto_1d
    invoke-direct {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getSectionSelectionState(I)Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;

    move-result-object v0

    iget-object v0, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->items:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 808
    return-void
.end method

.method public notifySectionFooterChanged(I)V
    .registers 6
    .param p1, "sectionIndex"    # I

    .line 1046
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1047
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 1048
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyAllSectionsDataSetChanged()V

    goto :goto_24

    .line 1050
    :cond_b
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 1051
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;

    .line 1052
    .local v0, "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    iget-boolean v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->hasFooter:Z

    if-eqz v1, :cond_25

    .line 1055
    iget v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->adapterPosition:I

    iget v2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->length:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyItemChanged(I)V

    .line 1057
    .end local v0    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    :goto_24
    return-void

    .line 1053
    .restart local v0    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySectionFooterChanged: adapter implementation reports that section "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have a footer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public notifySectionFooterInserted(I)V
    .registers 6
    .param p1, "sectionIndex"    # I

    .line 1008
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1009
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 1010
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyAllSectionsDataSetChanged()V

    goto :goto_24

    .line 1012
    :cond_b
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 1013
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;

    .line 1014
    .local v0, "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    iget-boolean v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->hasFooter:Z

    if-eqz v1, :cond_25

    .line 1017
    iget v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->adapterPosition:I

    iget v2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->length:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyItemInserted(I)V

    .line 1019
    .end local v0    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    :goto_24
    return-void

    .line 1015
    .restart local v0    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySectionFooterInserted: adapter implementation reports that section "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have a footer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public notifySectionFooterRemoved(I)V
    .registers 6
    .param p1, "sectionIndex"    # I

    .line 1027
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1028
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 1029
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyAllSectionsDataSetChanged()V

    goto :goto_22

    .line 1031
    :cond_b
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 1032
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;

    .line 1033
    .local v0, "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    iget-boolean v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->hasFooter:Z

    if-nez v1, :cond_23

    .line 1036
    iget v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->adapterPosition:I

    iget v2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->length:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyItemRemoved(I)V

    .line 1038
    .end local v0    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    :goto_22
    return-void

    .line 1034
    .restart local v0    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySectionFooterRemoved: adapter implementation reports that section "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has a footer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public notifySectionInserted(I)V
    .registers 5
    .param p1, "sectionIndex"    # I

    .line 972
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 973
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 974
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyAllSectionsDataSetChanged()V

    goto :goto_1d

    .line 976
    :cond_b
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 977
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;

    .line 978
    .local v0, "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    iget v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->adapterPosition:I

    iget v2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->length:I

    invoke-virtual {p0, v1, v2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyItemRangeInserted(II)V

    .line 981
    .end local v0    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    :goto_1d
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->updateCollapseAndSelectionStateForSectionChange(II)V

    .line 982
    return-void
.end method

.method public notifySectionItemChanged(II)V
    .registers 7
    .param p1, "sectionIndex"    # I
    .param p2, "itemIndex"    # I

    .line 900
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 901
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 902
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyAllSectionsDataSetChanged()V

    goto :goto_26

    .line 904
    :cond_b
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 905
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;

    .line 906
    .local v0, "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    iget v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->numberOfItems:I

    if-ge p2, v1, :cond_27

    .line 909
    iget-boolean v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->hasHeader:Z

    if-eqz v1, :cond_20

    .line 910
    add-int/lit8 p2, p2, 0x2

    .line 912
    :cond_20
    iget v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->adapterPosition:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyItemChanged(I)V

    .line 914
    .end local v0    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    :goto_26
    return-void

    .line 907
    .restart local v0    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    :cond_27
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemIndex adapterPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " exceeds sectionIndex numberOfItems: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->numberOfItems:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public notifySectionItemInserted(II)V
    .registers 6
    .param p1, "sectionIndex"    # I
    .param p2, "itemIndex"    # I

    .line 924
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 925
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 926
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyAllSectionsDataSetChanged()V

    goto :goto_23

    .line 928
    :cond_b
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 929
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;

    .line 931
    .local v0, "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    move v1, p2

    .line 932
    .local v1, "offset":I
    iget-boolean v2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->hasHeader:Z

    if-eqz v2, :cond_1d

    .line 933
    add-int/lit8 v1, v1, 0x2

    .line 935
    :cond_1d
    iget v2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->adapterPosition:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyItemInserted(I)V

    .line 938
    .end local v0    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    .end local v1    # "offset":I
    :goto_23
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->updateSectionItemRangeSelectionState(III)V

    .line 939
    return-void
.end method

.method public notifySectionItemRangeInserted(III)V
    .registers 5
    .param p1, "sectionIndex"    # I
    .param p2, "fromPosition"    # I
    .param p3, "number"    # I

    .line 818
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifySectionItemRangeInserted(IIIZ)V

    .line 819
    return-void
.end method

.method public notifySectionItemRangeRemoved(III)V
    .registers 5
    .param p1, "sectionIndex"    # I
    .param p2, "fromPosition"    # I
    .param p3, "number"    # I

    .line 856
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifySectionItemRangeRemoved(IIIZ)V

    .line 857
    return-void
.end method

.method public notifySectionItemRemoved(II)V
    .registers 6
    .param p1, "sectionIndex"    # I
    .param p2, "itemIndex"    # I

    .line 949
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 950
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 951
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyAllSectionsDataSetChanged()V

    goto :goto_23

    .line 953
    :cond_b
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 954
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;

    .line 956
    .local v0, "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    move v1, p2

    .line 957
    .local v1, "offset":I
    iget-boolean v2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->hasHeader:Z

    if-eqz v2, :cond_1d

    .line 958
    add-int/lit8 v1, v1, 0x2

    .line 960
    :cond_1d
    iget v2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->adapterPosition:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyItemRemoved(I)V

    .line 963
    .end local v0    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    .end local v1    # "offset":I
    :goto_23
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->updateSectionItemRangeSelectionState(III)V

    .line 964
    return-void
.end method

.method public notifySectionRemoved(I)V
    .registers 5
    .param p1, "sectionIndex"    # I

    .line 990
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 991
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 992
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyAllSectionsDataSetChanged()V

    goto :goto_1d

    .line 994
    :cond_b
    iget-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;

    .line 995
    .local v0, "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 996
    iget v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->adapterPosition:I

    iget v2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->length:I

    invoke-virtual {p0, v1, v2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifyItemRangeRemoved(II)V

    .line 999
    .end local v0    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    :goto_1d
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->updateCollapseAndSelectionStateForSectionChange(II)V

    .line 1000
    return-void
.end method

.method public onBindFooterViewHolder(Lorg/zakariya/stickyheaders/SectioningAdapter$FooterViewHolder;II)V
    .registers 4
    .param p1, "viewHolder"    # Lorg/zakariya/stickyheaders/SectioningAdapter$FooterViewHolder;
    .param p2, "sectionIndex"    # I
    .param p3, "footerUserType"    # I

    .line 313
    return-void
.end method

.method public onBindGhostHeaderViewHolder(Lorg/zakariya/stickyheaders/SectioningAdapter$GhostHeaderViewHolder;I)V
    .registers 3
    .param p1, "viewHolder"    # Lorg/zakariya/stickyheaders/SectioningAdapter$GhostHeaderViewHolder;
    .param p2, "sectionIndex"    # I

    .line 303
    return-void
.end method

.method public onBindHeaderViewHolder(Lorg/zakariya/stickyheaders/SectioningAdapter$HeaderViewHolder;II)V
    .registers 4
    .param p1, "viewHolder"    # Lorg/zakariya/stickyheaders/SectioningAdapter$HeaderViewHolder;
    .param p2, "sectionIndex"    # I
    .param p3, "headerUserType"    # I

    .line 294
    return-void
.end method

.method public onBindItemViewHolder(Lorg/zakariya/stickyheaders/SectioningAdapter$ItemViewHolder;III)V
    .registers 5
    .param p1, "viewHolder"    # Lorg/zakariya/stickyheaders/SectioningAdapter$ItemViewHolder;
    .param p2, "sectionIndex"    # I
    .param p3, "itemIndex"    # I
    .param p4, "itemUserType"    # I

    .line 284
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 30
    check-cast p1, Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->onBindViewHolder(Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;I)V
    .registers 9
    .param p1, "holder"    # Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;
    .param p2, "adapterPosition"    # I

    .line 1316
    invoke-virtual {p0, p2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getSectionForAdapterPosition(I)I

    move-result v0

    .line 1319
    .local v0, "section":I
    invoke-static {p1, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;->access$200(Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;I)V

    .line 1320
    invoke-virtual {p0, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getNumberOfItemsInSection(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;->setNumberOfItemsInSection(I)V

    .line 1323
    invoke-virtual {p0, p1, v0, p2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->tagViewHolderItemView(Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;II)V

    .line 1325
    invoke-virtual {p1}, Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;->getItemViewType()I

    move-result v1

    invoke-static {v1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->unmaskBaseViewType(I)I

    move-result v1

    .line 1326
    .local v1, "baseType":I
    invoke-virtual {p1}, Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-static {v2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->unmaskUserViewType(I)I

    move-result v2

    .line 1327
    .local v2, "userType":I
    packed-switch v1, :pswitch_data_66

    .line 1348
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unrecognized viewType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " does not correspond to TYPE_ITEM, TYPE_HEADER, TYPE_GHOST_HEADER or TYPE_FOOTER"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1340
    :pswitch_41
    move-object v3, p1

    check-cast v3, Lorg/zakariya/stickyheaders/SectioningAdapter$FooterViewHolder;

    invoke-virtual {p0, v3, v0, v2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->onBindFooterViewHolder(Lorg/zakariya/stickyheaders/SectioningAdapter$FooterViewHolder;II)V

    .line 1341
    goto :goto_64

    .line 1333
    :pswitch_48
    move-object v3, p1

    check-cast v3, Lorg/zakariya/stickyheaders/SectioningAdapter$ItemViewHolder;

    .line 1334
    .local v3, "ivh":Lorg/zakariya/stickyheaders/SectioningAdapter$ItemViewHolder;
    invoke-virtual {p0, v0, p2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getPositionOfItemInSection(II)I

    move-result v4

    .line 1335
    .local v4, "positionInSection":I
    invoke-static {v3, v4}, Lorg/zakariya/stickyheaders/SectioningAdapter$ItemViewHolder;->access$300(Lorg/zakariya/stickyheaders/SectioningAdapter$ItemViewHolder;I)V

    .line 1336
    invoke-virtual {p0, v3, v0, v4, v2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->onBindItemViewHolder(Lorg/zakariya/stickyheaders/SectioningAdapter$ItemViewHolder;III)V

    .line 1337
    goto :goto_64

    .line 1344
    .end local v3    # "ivh":Lorg/zakariya/stickyheaders/SectioningAdapter$ItemViewHolder;
    .end local v4    # "positionInSection":I
    :pswitch_56
    move-object v3, p1

    check-cast v3, Lorg/zakariya/stickyheaders/SectioningAdapter$GhostHeaderViewHolder;

    invoke-virtual {p0, v3, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->onBindGhostHeaderViewHolder(Lorg/zakariya/stickyheaders/SectioningAdapter$GhostHeaderViewHolder;I)V

    .line 1345
    goto :goto_64

    .line 1329
    :pswitch_5d
    move-object v3, p1

    check-cast v3, Lorg/zakariya/stickyheaders/SectioningAdapter$HeaderViewHolder;

    invoke-virtual {p0, v3, v0, v2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->onBindHeaderViewHolder(Lorg/zakariya/stickyheaders/SectioningAdapter$HeaderViewHolder;II)V

    .line 1330
    nop

    .line 1350
    :goto_64
    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_56
        :pswitch_48
        :pswitch_41
    .end packed-switch
.end method

.method public onCreateFooterViewHolder(Landroid/view/ViewGroup;I)Lorg/zakariya/stickyheaders/SectioningAdapter$FooterViewHolder;
    .registers 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "footerUserType"    # I

    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateGhostHeaderViewHolder(Landroid/view/ViewGroup;)Lorg/zakariya/stickyheaders/SectioningAdapter$GhostHeaderViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 269
    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 270
    .local v0, "ghostView":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 271
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    new-instance v2, Lorg/zakariya/stickyheaders/SectioningAdapter$GhostHeaderViewHolder;

    invoke-direct {v2, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter$GhostHeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method public onCreateHeaderViewHolder(Landroid/view/ViewGroup;I)Lorg/zakariya/stickyheaders/SectioningAdapter$HeaderViewHolder;
    .registers 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "headerUserType"    # I

    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lorg/zakariya/stickyheaders/SectioningAdapter$ItemViewHolder;
    .registers 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "itemUserType"    # I

    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 1297
    invoke-static {p2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->unmaskBaseViewType(I)I

    move-result v0

    .line 1298
    .local v0, "baseViewType":I
    invoke-static {p2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->unmaskUserViewType(I)I

    move-result v1

    .line 1300
    .local v1, "userViewType":I
    packed-switch v0, :pswitch_data_3c

    .line 1311
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unrecognized viewType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does not correspond to TYPE_ITEM, TYPE_HEADER or TYPE_FOOTER"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1306
    :pswitch_28
    invoke-virtual {p0, p1, v1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->onCreateFooterViewHolder(Landroid/view/ViewGroup;I)Lorg/zakariya/stickyheaders/SectioningAdapter$FooterViewHolder;

    move-result-object v2

    return-object v2

    .line 1302
    :pswitch_2d
    invoke-virtual {p0, p1, v1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lorg/zakariya/stickyheaders/SectioningAdapter$ItemViewHolder;

    move-result-object v2

    return-object v2

    .line 1308
    :pswitch_32
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->onCreateGhostHeaderViewHolder(Landroid/view/ViewGroup;)Lorg/zakariya/stickyheaders/SectioningAdapter$GhostHeaderViewHolder;

    move-result-object v2

    return-object v2

    .line 1304
    :pswitch_37
    invoke-virtual {p0, p1, v1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->onCreateHeaderViewHolder(Landroid/view/ViewGroup;I)Lorg/zakariya/stickyheaders/SectioningAdapter$HeaderViewHolder;

    move-result-object v2

    return-object v2

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_37
        :pswitch_32
        :pswitch_2d
        :pswitch_28
    .end packed-switch
.end method

.method public setSectionFooterSelected(IZ)V
    .registers 5
    .param p1, "sectionIndex"    # I
    .param p2, "selected"    # Z

    .line 744
    invoke-direct {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getSectionSelectionState(I)Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;

    move-result-object v0

    .line 746
    .local v0, "state":Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;
    iget-boolean v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->section:Z

    if-eqz v1, :cond_9

    .line 747
    return-void

    .line 750
    :cond_9
    iget-boolean v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->footer:Z

    if-eq v1, p2, :cond_12

    .line 751
    iput-boolean p2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->footer:Z

    .line 752
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifySectionFooterChanged(I)V

    .line 754
    :cond_12
    return-void
.end method

.method public setSectionIsCollapsed(IZ)V
    .registers 8
    .param p1, "sectionIndex"    # I
    .param p2, "collapsed"    # Z

    .line 467
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->isSectionCollapsed(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 469
    .local v0, "notify":Z
    :goto_a
    iget-object v2, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->collapsedSections:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    if-eqz v0, :cond_33

    .line 472
    iget-object v2, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    if-nez v2, :cond_20

    .line 473
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->buildSectionIndex()V

    .line 475
    :cond_20
    iget-object v2, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;

    .line 476
    .local v2, "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    iget v3, v2, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;->numberOfItems:I

    .line 478
    .local v3, "number":I
    if-eqz p2, :cond_30

    .line 479
    invoke-direct {p0, p1, v1, v3, v1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifySectionItemRangeRemoved(IIIZ)V

    goto :goto_33

    .line 481
    :cond_30
    invoke-direct {p0, p1, v1, v3, v1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifySectionItemRangeInserted(IIIZ)V

    .line 484
    .end local v2    # "section":Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
    .end local v3    # "number":I
    :cond_33
    :goto_33
    return-void
.end method

.method public setSectionItemSelected(IIZ)V
    .registers 6
    .param p1, "sectionIndex"    # I
    .param p2, "itemIndex"    # I
    .param p3, "selected"    # Z

    .line 703
    invoke-direct {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getSectionSelectionState(I)Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;

    move-result-object v0

    .line 705
    .local v0, "state":Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;
    iget-boolean v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->section:Z

    if-eqz v1, :cond_9

    .line 706
    return-void

    .line 709
    :cond_9
    iget-object v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->items:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eq p3, v1, :cond_19

    .line 710
    iget-object v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->items:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 711
    invoke-virtual {p0, p1, p2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifySectionItemChanged(II)V

    .line 713
    :cond_19
    return-void
.end method

.method public setSectionSelected(IZ)V
    .registers 7
    .param p1, "sectionIndex"    # I
    .param p2, "selected"    # Z

    .line 658
    invoke-direct {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getSectionSelectionState(I)Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;

    move-result-object v0

    .line 659
    .local v0, "state":Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;
    iget-boolean v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->section:Z

    if-eq v1, p2, :cond_29

    .line 660
    iput-boolean p2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->section:Z

    .line 663
    iget-object v1, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->items:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 664
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->getNumberOfItemsInSection(I)I

    move-result v2

    .local v2, "n":I
    :goto_14
    if-ge v1, v2, :cond_1e

    .line 665
    iget-object v3, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->items:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 664
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 668
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1e
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->doesSectionHaveFooter(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 669
    iput-boolean p2, v0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->footer:Z

    .line 672
    :cond_26
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->notifySectionDataSetChanged(I)V

    .line 674
    :cond_29
    return-void
.end method

.method tagViewHolderItemView(Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;II)V
    .registers 6
    .param p1, "holder"    # Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;
    .param p2, "section"    # I
    .param p3, "adapterPosition"    # I

    .line 1362
    iget-object v0, p1, Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 1363
    .local v0, "view":Landroid/view/View;
    sget v1, Lorg/zakariya/stickyheaders/R$id;->sectioning_adapter_tag_key_view_viewholder:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1364
    return-void
.end method

.method public toggleSectionFooterSelection(I)V
    .registers 3
    .param p1, "sectionIndex"    # I

    .line 762
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->isSectionFooterSelected(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->setSectionFooterSelected(IZ)V

    .line 763
    return-void
.end method

.method public toggleSectionItemSelected(II)V
    .registers 4
    .param p1, "sectionIndex"    # I
    .param p2, "itemIndex"    # I

    .line 722
    invoke-virtual {p0, p1, p2}, Lorg/zakariya/stickyheaders/SectioningAdapter;->isSectionItemSelected(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->setSectionItemSelected(IIZ)V

    .line 723
    return-void
.end method

.method public toggleSectionSelected(I)V
    .registers 3
    .param p1, "sectionIndex"    # I

    .line 682
    invoke-virtual {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter;->isSectionSelected(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->setSectionSelected(IZ)V

    .line 683
    return-void
.end method

.method public traverseSelection(Lorg/zakariya/stickyheaders/SectioningAdapter$SelectionVisitor;)V
    .registers 8
    .param p1, "visitor"    # Lorg/zakariya/stickyheaders/SectioningAdapter$SelectionVisitor;

    .line 623
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->selectionStateBySection:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 624
    .local v0, "sectionIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 626
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 627
    .local v2, "sectionIndex":I
    iget-object v3, p0, Lorg/zakariya/stickyheaders/SectioningAdapter;->selectionStateBySection:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;

    .line 628
    .local v3, "state":Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;
    if-nez v3, :cond_35

    .line 629
    goto :goto_16

    .line 632
    :cond_35
    iget-boolean v4, v3, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->section:Z

    if-eqz v4, :cond_3d

    .line 633
    invoke-interface {p1, v2}, Lorg/zakariya/stickyheaders/SectioningAdapter$SelectionVisitor;->onVisitSelectedSection(I)V

    goto :goto_62

    .line 636
    :cond_3d
    iget-boolean v4, v3, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->footer:Z

    if-eqz v4, :cond_44

    .line 637
    invoke-interface {p1, v2}, Lorg/zakariya/stickyheaders/SectioningAdapter$SelectionVisitor;->onVisitSelectedFooter(I)V

    .line 641
    :cond_44
    iget-object v4, v3, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->items:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_4c
    if-ltz v4, :cond_62

    .line 642
    iget-object v5, v3, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->items:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 643
    iget-object v5, v3, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->items:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-interface {p1, v2, v5}, Lorg/zakariya/stickyheaders/SectioningAdapter$SelectionVisitor;->onVisitSelectedSectionItem(II)V

    .line 641
    :cond_5f
    add-int/lit8 v4, v4, -0x1

    goto :goto_4c

    .line 647
    .end local v2    # "sectionIndex":I
    .end local v3    # "state":Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;
    .end local v4    # "i":I
    :cond_62
    :goto_62
    goto :goto_16

    .line 649
    :cond_63
    return-void
.end method

###### Class org.zakariya.stickyheaders.SectioningAdapter.AnonymousClass1 (org.zakariya.stickyheaders.SectioningAdapter$1)
.class synthetic Lorg/zakariya/stickyheaders/SectioningAdapter$1;
.super Ljava/lang/Object;
.source "SectioningAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/SectioningAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class org.zakariya.stickyheaders.SectioningAdapter.FooterViewHolder (org.zakariya.stickyheaders.SectioningAdapter$FooterViewHolder)
.class public Lorg/zakariya/stickyheaders/SectioningAdapter$FooterViewHolder;
.super Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;
.source "SectioningAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/SectioningAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FooterViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "itemView"    # Landroid/view/View;

    .line 153
    invoke-direct {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 154
    return-void
.end method


# virtual methods
.method public isFooter()Z
    .registers 2

    .line 158
    const/4 v0, 0x1

    return v0
.end method

###### Class org.zakariya.stickyheaders.SectioningAdapter.GhostHeaderViewHolder (org.zakariya.stickyheaders.SectioningAdapter$GhostHeaderViewHolder)
.class public Lorg/zakariya/stickyheaders/SectioningAdapter$GhostHeaderViewHolder;
.super Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;
.source "SectioningAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/SectioningAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GhostHeaderViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "itemView"    # Landroid/view/View;

    .line 141
    invoke-direct {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 142
    return-void
.end method


# virtual methods
.method public isGhostHeader()Z
    .registers 2

    .line 146
    const/4 v0, 0x1

    return v0
.end method

###### Class org.zakariya.stickyheaders.SectioningAdapter.HeaderViewHolder (org.zakariya.stickyheaders.SectioningAdapter$HeaderViewHolder)
.class public Lorg/zakariya/stickyheaders/SectioningAdapter$HeaderViewHolder;
.super Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;
.source "SectioningAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/SectioningAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "itemView"    # Landroid/view/View;

    .line 129
    invoke-direct {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 130
    return-void
.end method


# virtual methods
.method public isHeader()Z
    .registers 2

    .line 134
    const/4 v0, 0x1

    return v0
.end method

###### Class org.zakariya.stickyheaders.SectioningAdapter.ItemViewHolder (org.zakariya.stickyheaders.SectioningAdapter$ItemViewHolder)
.class public Lorg/zakariya/stickyheaders/SectioningAdapter$ItemViewHolder;
.super Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;
.source "SectioningAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/SectioningAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private positionInSection:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "itemView"    # Landroid/view/View;

    .line 114
    invoke-direct {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method static synthetic access$300(Lorg/zakariya/stickyheaders/SectioningAdapter$ItemViewHolder;I)V
    .registers 2
    .param p0, "x0"    # Lorg/zakariya/stickyheaders/SectioningAdapter$ItemViewHolder;
    .param p1, "x1"    # I

    .line 110
    invoke-direct {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter$ItemViewHolder;->setPositionInSection(I)V

    return-void
.end method

.method private setPositionInSection(I)V
    .registers 2
    .param p1, "positionInSection"    # I

    .line 122
    iput p1, p0, Lorg/zakariya/stickyheaders/SectioningAdapter$ItemViewHolder;->positionInSection:I

    .line 123
    return-void
.end method


# virtual methods
.method public getPositionInSection()I
    .registers 2

    .line 118
    iget v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter$ItemViewHolder;->positionInSection:I

    return v0
.end method

###### Class org.zakariya.stickyheaders.SectioningAdapter.Section (org.zakariya.stickyheaders.SectioningAdapter$Section)
.class Lorg/zakariya/stickyheaders/SectioningAdapter$Section;
.super Ljava/lang/Object;
.source "SectioningAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/SectioningAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Section"
.end annotation


# instance fields
.field adapterPosition:I

.field hasFooter:Z

.field hasHeader:Z

.field length:I

.field numberOfItems:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/zakariya/stickyheaders/SectioningAdapter$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/zakariya/stickyheaders/SectioningAdapter$1;

    .line 42
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter$Section;-><init>()V

    return-void
.end method

###### Class org.zakariya.stickyheaders.SectioningAdapter.SectionSelectionState (org.zakariya.stickyheaders.SectioningAdapter$SectionSelectionState)
.class Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;
.super Ljava/lang/Object;
.source "SectioningAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/SectioningAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SectionSelectionState"
.end annotation


# instance fields
.field footer:Z

.field items:Landroid/util/SparseBooleanArray;

.field section:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;->items:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Lorg/zakariya/stickyheaders/SectioningAdapter$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/zakariya/stickyheaders/SectioningAdapter$1;

    .line 50
    invoke-direct {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter$SectionSelectionState;-><init>()V

    return-void
.end method

###### Class org.zakariya.stickyheaders.SectioningAdapter.SelectionVisitor (org.zakariya.stickyheaders.SectioningAdapter$SelectionVisitor)
.class public interface abstract Lorg/zakariya/stickyheaders/SectioningAdapter$SelectionVisitor;
.super Ljava/lang/Object;
.source "SectioningAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/SectioningAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SelectionVisitor"
.end annotation


# virtual methods
.method public abstract onVisitSelectedFooter(I)V
.end method

.method public abstract onVisitSelectedSection(I)V
.end method

.method public abstract onVisitSelectedSectionItem(II)V
.end method

###### Class org.zakariya.stickyheaders.SectioningAdapter.ViewHolder (org.zakariya.stickyheaders.SectioningAdapter$ViewHolder)
.class public Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SectioningAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/SectioningAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private numberOfItemsInSection:I

.field private section:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "itemView"    # Landroid/view/View;

    .line 70
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 71
    return-void
.end method

.method static synthetic access$200(Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;I)V
    .registers 2
    .param p0, "x0"    # Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;
    .param p1, "x1"    # I

    .line 65
    invoke-direct {p0, p1}, Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;->setSection(I)V

    return-void
.end method

.method private setSection(I)V
    .registers 2
    .param p1, "section"    # I

    .line 98
    iput p1, p0, Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;->section:I

    .line 99
    return-void
.end method


# virtual methods
.method public getItemViewBaseType()I
    .registers 2

    .line 74
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-static {v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->unmaskBaseViewType(I)I

    move-result v0

    return v0
.end method

.method public getItemViewUserType()I
    .registers 2

    .line 78
    invoke-virtual {p0}, Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-static {v0}, Lorg/zakariya/stickyheaders/SectioningAdapter;->unmaskUserViewType(I)I

    move-result v0

    return v0
.end method

.method public getNumberOfItemsInSection()I
    .registers 2

    .line 102
    iget v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;->numberOfItemsInSection:I

    return v0
.end method

.method public getSection()I
    .registers 2

    .line 94
    iget v0, p0, Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;->section:I

    return v0
.end method

.method public isFooter()Z
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public isGhostHeader()Z
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public isHeader()Z
    .registers 2

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method setNumberOfItemsInSection(I)V
    .registers 2
    .param p1, "numberOfItemsInSection"    # I

    .line 106
    iput p1, p0, Lorg/zakariya/stickyheaders/SectioningAdapter$ViewHolder;->numberOfItemsInSection:I

    .line 107
    return-void
.end method
