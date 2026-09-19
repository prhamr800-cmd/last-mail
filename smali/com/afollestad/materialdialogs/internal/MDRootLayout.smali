###### Class com.afollestad.materialdialogs.internal.MDRootLayout (com.afollestad.materialdialogs.internal.MDRootLayout)
.class public Lcom/afollestad/materialdialogs/internal/MDRootLayout;
.super Landroid/view/ViewGroup;
.source "MDRootLayout.java"


# static fields
.field private static final INDEX_NEGATIVE:I = 0x1

.field private static final INDEX_NEUTRAL:I = 0x0

.field private static final INDEX_POSITIVE:I = 0x2


# instance fields
.field private bottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private buttonBarHeight:I

.field private buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field private buttonHorizontalEdgeMargin:I

.field private buttonPaddingFull:I

.field private final buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

.field private content:Landroid/view/View;

.field private dividerPaint:Landroid/graphics/Paint;

.field private dividerWidth:I

.field private drawBottomDivider:Z

.field private drawTopDivider:Z

.field private isStacked:Z

.field private maxHeight:I

.field private noTitleNoPadding:Z

.field private noTitlePaddingFull:I

.field private reducePaddingNoTitleNoButtons:Z

.field private stackBehavior:Lcom/afollestad/materialdialogs/StackingBehavior;

.field private titleBar:Landroid/view/View;

.field private topOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private useFullPadding:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    .line 40
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    .line 41
    sget-object v1, Lcom/afollestad/materialdialogs/StackingBehavior;->ADAPTIVE:Lcom/afollestad/materialdialogs/StackingBehavior;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->stackBehavior:Lcom/afollestad/materialdialogs/StackingBehavior;

    .line 42
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isStacked:Z

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->useFullPadding:Z

    .line 51
    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 64
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    .line 40
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    .line 41
    sget-object v1, Lcom/afollestad/materialdialogs/StackingBehavior;->ADAPTIVE:Lcom/afollestad/materialdialogs/StackingBehavior;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->stackBehavior:Lcom/afollestad/materialdialogs/StackingBehavior;

    .line 42
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isStacked:Z

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->useFullPadding:Z

    .line 51
    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    .line 40
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    .line 41
    sget-object v1, Lcom/afollestad/materialdialogs/StackingBehavior;->ADAPTIVE:Lcom/afollestad/materialdialogs/StackingBehavior;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->stackBehavior:Lcom/afollestad/materialdialogs/StackingBehavior;

    .line 42
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isStacked:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->useFullPadding:Z

    .line 51
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    .line 40
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    .line 41
    sget-object v1, Lcom/afollestad/materialdialogs/StackingBehavior;->ADAPTIVE:Lcom/afollestad/materialdialogs/StackingBehavior;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->stackBehavior:Lcom/afollestad/materialdialogs/StackingBehavior;

    .line 42
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isStacked:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->useFullPadding:Z

    .line 51
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/webkit/WebView;

    .line 30
    invoke-static {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canWebViewScroll(Landroid/webkit/WebView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/afollestad/materialdialogs/internal/MDRootLayout;
    .param p1, "x1"    # Z

    .line 30
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    return p1
.end method

.method static synthetic access$202(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/afollestad/materialdialogs/internal/MDRootLayout;
    .param p1, "x1"    # Z

    .line 30
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    return p1
.end method

.method static synthetic access$300(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V
    .registers 4
    .param p0, "x0"    # Lcom/afollestad/materialdialogs/internal/MDRootLayout;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/afollestad/materialdialogs/internal/MDRootLayout;)[Lcom/afollestad/materialdialogs/internal/MDButton;
    .registers 2
    .param p0, "x0"    # Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    .line 30
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZZ)V
    .registers 5
    .param p0, "x0"    # Lcom/afollestad/materialdialogs/internal/MDRootLayout;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidateDividersForScrollingView(Landroid/view/ViewGroup;ZZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/webkit/WebView;ZZZ)V
    .registers 5
    .param p0, "x0"    # Lcom/afollestad/materialdialogs/internal/MDRootLayout;
    .param p1, "x1"    # Landroid/webkit/WebView;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidateDividersForWebView(Landroid/webkit/WebView;ZZZ)V

    return-void
.end method

.method private addScrollListener(Landroid/view/ViewGroup;ZZ)V
    .registers 7
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .param p2, "setForTop"    # Z
    .param p3, "setForBottom"    # Z

    .line 554
    if-nez p3, :cond_6

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->topOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_c

    :cond_6
    if-eqz p3, :cond_44

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->bottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v0, :cond_44

    .line 556
    :cond_c
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_23

    .line 557
    new-instance v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V

    .line 573
    .local v0, "scrollListener":Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    move-object v1, p1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 574
    move-object v1, p1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 575
    .end local v0    # "scrollListener":Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    goto :goto_44

    .line 576
    :cond_23
    new-instance v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V

    .line 595
    .local v0, "onScrollChangedListener":Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    if-nez p3, :cond_36

    .line 596
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->topOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 597
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->topOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_41

    .line 599
    :cond_36
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->bottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 600
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->bottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 602
    :goto_41
    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    .line 605
    .end local v0    # "onScrollChangedListener":Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    :cond_44
    :goto_44
    return-void
.end method

.method private static canAdapterViewScroll(Landroid/widget/AdapterView;)Z
    .registers 8
    .param p0, "lv"    # Landroid/widget/AdapterView;

    .line 113
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 114
    return v1

    .line 118
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 119
    .local v0, "firstItemVisible":Z
    :goto_13
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v3, v4, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    .line 121
    .local v3, "lastItemVisible":Z
    :goto_21
    if-eqz v0, :cond_56

    if-eqz v3, :cond_56

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_56

    .line 123
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v5

    if-ge v4, v5, :cond_3a

    .line 124
    return v2

    .line 127
    :cond_3a
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 128
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_54

    .line 127
    const/4 v1, 0x1

    goto :goto_55

    .line 128
    :cond_54
    nop

    .line 127
    :goto_55
    return v1

    .line 131
    :cond_56
    return v2
.end method

.method public static canRecyclerViewScroll(Landroid/support/v7/widget/RecyclerView;)Z
    .registers 2
    .param p0, "view"    # Landroid/support/v7/widget/RecyclerView;

    .line 93
    if-eqz p0, :cond_14

    .line 94
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 95
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 93
    :goto_15
    return v0
.end method

.method private static canScrollViewScroll(Landroid/widget/ScrollView;)Z
    .registers 5
    .param p0, "sv"    # Landroid/widget/ScrollView;

    .line 99
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 100
    return v1

    .line 102
    :cond_8
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 103
    .local v0, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v2, v0, :cond_22

    const/4 v1, 0x1

    nop

    :cond_22
    return v1
.end method

.method private static canWebViewScroll(Landroid/webkit/WebView;)Z
    .registers 4
    .param p0, "view"    # Landroid/webkit/WebView;

    .line 108
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    mul-float v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private static getBottomView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 143
    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2c

    .line 146
    :cond_9
    const/4 v0, 0x0

    .line 147
    .local v0, "bottomView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_2b

    .line 148
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 149
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_28

    .line 150
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    if-ne v3, v4, :cond_28

    .line 151
    move-object v0, v2

    .line 152
    goto :goto_2b

    .line 147
    .end local v2    # "child":Landroid/view/View;
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 155
    .end local v1    # "i":I
    :cond_2b
    :goto_2b
    return-object v0

    .line 144
    .end local v0    # "bottomView":Landroid/view/View;
    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getTopView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 160
    if-eqz p0, :cond_28

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_28

    .line 163
    :cond_9
    const/4 v0, 0x0

    .line 164
    .local v0, "topView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_27

    .line 165
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 166
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-nez v3, :cond_24

    .line 167
    move-object v0, v2

    .line 168
    goto :goto_27

    .line 164
    .end local v2    # "child":Landroid/view/View;
    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 171
    .end local v1    # "i":I
    :cond_27
    :goto_27
    return-object v0

    .line 161
    .end local v0    # "topView":Landroid/view/View;
    :cond_28
    :goto_28
    const/4 v0, 0x0

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 177
    .local v0, "r":Landroid/content/res/Resources;
    sget-object v1, Lcom/afollestad/materialdialogs/R$styleable;->MDRootLayout:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 178
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/afollestad/materialdialogs/R$styleable;->MDRootLayout_md_reduce_padding_no_title_no_buttons:I

    .line 179
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->reducePaddingNoTitleNoButtons:Z

    .line 180
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    sget v3, Lcom/afollestad/materialdialogs/R$dimen;->md_notitle_vertical_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->noTitlePaddingFull:I

    .line 183
    sget v3, Lcom/afollestad/materialdialogs/R$dimen;->md_button_frame_vertical_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonPaddingFull:I

    .line 185
    sget v3, Lcom/afollestad/materialdialogs/R$dimen;->md_button_padding_frame_side:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonHorizontalEdgeMargin:I

    .line 186
    sget v3, Lcom/afollestad/materialdialogs/R$dimen;->md_button_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonBarHeight:I

    .line 188
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->dividerPaint:Landroid/graphics/Paint;

    .line 189
    sget v3, Lcom/afollestad/materialdialogs/R$dimen;->md_divider_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->dividerWidth:I

    .line 190
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->dividerPaint:Landroid/graphics/Paint;

    sget v4, Lcom/afollestad/materialdialogs/R$attr;->md_divider_color:I

    invoke-static {p1, v4}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    invoke-virtual {p0, v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setWillNotDraw(Z)V

    .line 192
    return-void
.end method

.method private invalidateDividersForScrollingView(Landroid/view/ViewGroup;ZZZ)V
    .registers 9
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "setForTop"    # Z
    .param p3, "setForBottom"    # Z
    .param p4, "hasButtons"    # Z

    .line 609
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_30

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_30

    .line 610
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    .line 612
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2d

    .line 615
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-le v2, v3, :cond_2d

    const/4 v2, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    .line 617
    :cond_30
    if-eqz p3, :cond_5b

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_5b

    .line 618
    if-eqz p4, :cond_58

    .line 620
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 621
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v2, v3, :cond_58

    goto :goto_59

    :cond_58
    const/4 v0, 0x0

    :goto_59
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    .line 623
    :cond_5b
    return-void
.end method

.method private invalidateDividersForWebView(Landroid/webkit/WebView;ZZZ)V
    .registers 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "setForTop"    # Z
    .param p3, "setForBottom"    # Z
    .param p4, "hasButtons"    # Z

    .line 627
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_22

    .line 628
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    .line 630
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1f

    .line 633
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    if-lez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    .line 635
    :cond_22
    if-eqz p3, :cond_48

    .line 637
    if-eqz p4, :cond_45

    .line 639
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 640
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScale()F

    move-result v4

    mul-float v3, v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_45

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    .line 642
    :cond_48
    return-void
.end method

.method private invertGravityIfNecessary()V
    .registers 4

    .line 456
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_7

    .line 457
    return-void

    .line 459
    :cond_7
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 460
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2e

    .line 461
    sget-object v1, Lcom/afollestad/materialdialogs/internal/MDRootLayout$4;->$SwitchMap$com$afollestad$materialdialogs$GravityEnum:[I

    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/GravityEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_30

    goto :goto_2e

    .line 466
    :pswitch_24
    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    goto :goto_2e

    .line 463
    :pswitch_29
    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 464
    nop

    .line 470
    :cond_2e
    :goto_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_29
        :pswitch_24
    .end packed-switch
.end method

.method private static isVisible(Landroid/view/View;)Z
    .registers 5
    .param p0, "v"    # Landroid/view/View;

    .line 85
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    .line 86
    .local v2, "visible":Z
    :goto_f
    if-eqz v2, :cond_2d

    instance-of v3, p0, Lcom/afollestad/materialdialogs/internal/MDButton;

    if-eqz v3, :cond_2d

    .line 87
    move-object v3, p0

    check-cast v3, Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/internal/MDButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    move v2, v0

    .line 89
    :cond_2d
    return v2
.end method

.method private setUpDividersVisibility(Landroid/view/View;ZZ)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "setForTop"    # Z
    .param p3, "setForBottom"    # Z

    .line 482
    if-nez p1, :cond_3

    .line 483
    return-void

    .line 485
    :cond_3
    instance-of v0, p1, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 486
    move-object v0, p1

    check-cast v0, Landroid/widget/ScrollView;

    .line 487
    .local v0, "sv":Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canScrollViewScroll(Landroid/widget/ScrollView;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 488
    invoke-direct {p0, v0, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V

    goto :goto_1d

    .line 490
    :cond_15
    if-eqz p2, :cond_19

    .line 491
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    .line 493
    :cond_19
    if-eqz p3, :cond_1d

    .line 494
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    .line 497
    .end local v0    # "sv":Landroid/widget/ScrollView;
    :cond_1d
    :goto_1d
    goto :goto_80

    :cond_1e
    instance-of v0, p1, Landroid/widget/AdapterView;

    if-eqz v0, :cond_38

    .line 498
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterView;

    .line 499
    .local v0, "sv":Landroid/widget/AdapterView;
    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canAdapterViewScroll(Landroid/widget/AdapterView;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 500
    invoke-direct {p0, v0, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V

    goto :goto_37

    .line 502
    :cond_2f
    if-eqz p2, :cond_33

    .line 503
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    .line 505
    :cond_33
    if-eqz p3, :cond_37

    .line 506
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    .line 509
    .end local v0    # "sv":Landroid/widget/AdapterView;
    :cond_37
    :goto_37
    goto :goto_80

    :cond_38
    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_49

    .line 510
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/View;ZZ)V

    .line 511
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_80

    .line 531
    :cond_49
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_65

    .line 532
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canRecyclerViewScroll(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    .line 533
    .local v0, "canScroll":Z
    if-eqz p2, :cond_58

    .line 534
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    .line 536
    :cond_58
    if-eqz p3, :cond_5c

    .line 537
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    .line 539
    :cond_5c
    if-eqz v0, :cond_64

    .line 540
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V

    .line 542
    .end local v0    # "canScroll":Z
    :cond_64
    goto :goto_80

    :cond_65
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_80

    .line 543
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getTopView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 544
    .local v0, "topView":Landroid/view/View;
    invoke-direct {p0, v0, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setUpDividersVisibility(Landroid/view/View;ZZ)V

    .line 545
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getBottomView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 546
    .local v2, "bottomView":Landroid/view/View;
    if-eq v2, v0, :cond_80

    .line 547
    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setUpDividersVisibility(Landroid/view/View;ZZ)V

    .line 550
    .end local v0    # "topView":Landroid/view/View;
    .end local v2    # "bottomView":Landroid/view/View;
    :cond_80
    :goto_80
    return-void
.end method


# virtual methods
.method public noTitleNoPadding()V
    .registers 2

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->noTitleNoPadding:Z

    .line 200
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 318
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 320
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    if-eqz v0, :cond_3e

    .line 321
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawTopDivider:Z

    if-eqz v0, :cond_23

    .line 322
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 323
    .local v0, "y":I
    const/4 v2, 0x0

    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->dividerWidth:I

    sub-int v1, v0, v1

    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 326
    .end local v0    # "y":I
    :cond_23
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->drawBottomDivider:Z

    if-eqz v0, :cond_3e

    .line 327
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 328
    .restart local v0    # "y":I
    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->dividerWidth:I

    add-int/2addr v1, v0

    int-to-float v5, v1

    iget-object v6, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 331
    .end local v0    # "y":I
    :cond_3e
    return-void
.end method

.method public onFinishInflate()V
    .registers 7

    .line 204
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 205
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_51

    .line 206
    invoke-virtual {p0, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 207
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->md_titleFrame:I

    if-ne v3, v4, :cond_1a

    .line 208
    iput-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    goto :goto_4e

    .line 209
    :cond_1a
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->md_buttonDefaultNeutral:I

    if-ne v3, v4, :cond_2a

    .line 210
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object v4, v2

    check-cast v4, Lcom/afollestad/materialdialogs/internal/MDButton;

    aput-object v4, v3, v0

    goto :goto_4e

    .line 211
    :cond_2a
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->md_buttonDefaultNegative:I

    if-ne v3, v4, :cond_3b

    .line 212
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object v4, v2

    check-cast v4, Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    goto :goto_4e

    .line 213
    :cond_3b
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->md_buttonDefaultPositive:I

    if-ne v3, v4, :cond_4c

    .line 214
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v4, 0x2

    move-object v5, v2

    check-cast v5, Lcom/afollestad/materialdialogs/internal/MDButton;

    aput-object v5, v3, v4

    goto :goto_4e

    .line 216
    :cond_4c
    iput-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    .line 205
    .end local v2    # "v":Landroid/view/View;
    :goto_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 219
    .end local v1    # "i":I
    :cond_51
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 22
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 335
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    iget-object v4, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    invoke-static {v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 336
    iget-object v4, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 337
    .local v4, "height":I
    iget-object v5, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    add-int v6, v2, v4

    invoke-virtual {v5, v1, v2, v3, v6}, Landroid/view/View;->layout(IIII)V

    .line 338
    add-int/2addr v2, v4

    .line 339
    .end local v4    # "height":I
    .end local p3    # "t":I
    .local v2, "t":I
    goto :goto_2a

    .end local v2    # "t":I
    .restart local p3    # "t":I
    :cond_1f
    iget-boolean v4, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->noTitleNoPadding:Z

    if-nez v4, :cond_2a

    iget-boolean v4, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->useFullPadding:Z

    if-eqz v4, :cond_2a

    .line 340
    iget v4, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->noTitlePaddingFull:I

    add-int/2addr v2, v4

    .line 343
    .end local p3    # "t":I
    .restart local v2    # "t":I
    :cond_2a
    :goto_2a
    iget-object v4, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    invoke-static {v4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 344
    iget-object v4, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    iget-object v5, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 347
    :cond_3e
    iget-boolean v4, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isStacked:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_66

    .line 348
    iget v4, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonPaddingFull:I

    sub-int v4, p5, v4

    .line 349
    .end local p5    # "b":I
    .local v4, "b":I
    iget-object v7, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v8, v7

    :goto_4b
    if-ge v6, v8, :cond_16b

    aget-object v9, v7, v6

    .line 350
    .local v9, "mButton":Lcom/afollestad/materialdialogs/internal/MDButton;
    invoke-static {v9}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_63

    .line 351
    invoke-virtual {v9}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {v9, v1, v10, v3, v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 352
    invoke-virtual {v9}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v4, v10

    .line 349
    .end local v9    # "mButton":Lcom/afollestad/materialdialogs/internal/MDButton;
    :cond_63
    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    .line 357
    .end local v4    # "b":I
    .restart local p5    # "b":I
    :cond_66
    move/from16 v4, p5

    .line 358
    .local v4, "barBottom":I
    iget-boolean v8, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->useFullPadding:Z

    if-eqz v8, :cond_6f

    .line 359
    iget v8, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonPaddingFull:I

    sub-int/2addr v4, v8

    .line 361
    :cond_6f
    iget v8, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonBarHeight:I

    sub-int v8, v4, v8

    .line 373
    .local v8, "barTop":I
    iget v9, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonHorizontalEdgeMargin:I

    .line 376
    .local v9, "offset":I
    const/4 v10, -0x1

    .line 377
    .local v10, "neutralLeft":I
    const/4 v11, -0x1

    .line 379
    .local v11, "neutralRight":I
    iget-object v12, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    invoke-static {v12}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_b1

    .line 381
    iget-object v12, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v14, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v12, v14, :cond_94

    .line 382
    add-int v12, v1, v9

    .line 383
    .local v12, "bl":I
    iget-object v14, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v14, v14, v13

    invoke-virtual {v14}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v12

    goto :goto_a1

    .line 386
    .end local v12    # "bl":I
    :cond_94
    sub-int v14, v3, v9

    .line 387
    .local v14, "br":I
    iget-object v12, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v12

    sub-int v12, v14, v12

    .line 388
    .restart local v12    # "bl":I
    move v11, v12

    .line 390
    :goto_a1
    iget-object v15, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v15, v15, v13

    invoke-virtual {v15, v12, v8, v14, v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 391
    iget-object v15, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v15, v15, v13

    invoke-virtual {v15}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v9, v15

    .line 394
    .end local v12    # "bl":I
    .end local v14    # "br":I
    :cond_b1
    iget-object v12, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v12, v12, v5

    invoke-static {v12}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_f4

    .line 396
    iget-object v12, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v14, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v12, v14, :cond_cd

    .line 397
    add-int v12, v1, v9

    .line 398
    .restart local v12    # "bl":I
    iget-object v14, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v14, v14, v5

    invoke-virtual {v14}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v12

    goto :goto_ed

    .line 399
    .end local v12    # "bl":I
    :cond_cd
    iget-object v12, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v14, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v12, v14, :cond_e0

    .line 400
    sub-int v14, v3, v9

    .line 401
    .restart local v14    # "br":I
    iget-object v12, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v12

    sub-int v12, v14, v12

    goto :goto_ed

    .line 404
    .end local v14    # "br":I
    :cond_e0
    iget v12, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonHorizontalEdgeMargin:I

    add-int/2addr v12, v1

    .line 405
    .restart local v12    # "bl":I
    iget-object v14, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v14, v14, v5

    invoke-virtual {v14}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v12

    .line 406
    .restart local v14    # "br":I
    move v10, v14

    .line 408
    :goto_ed
    iget-object v15, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v15, v15, v5

    invoke-virtual {v15, v12, v8, v14, v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 411
    .end local v12    # "bl":I
    .end local v14    # "br":I
    :cond_f4
    iget-object v12, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v12, v12, v6

    invoke-static {v12}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_169

    .line 413
    iget-object v12, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v14, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v12, v14, :cond_113

    .line 414
    iget v12, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonHorizontalEdgeMargin:I

    sub-int v12, v3, v12

    .line 415
    .local v12, "br":I
    iget-object v13, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v13, v13, v6

    invoke-virtual {v13}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v13

    sub-int v13, v12, v13

    goto :goto_162

    .line 416
    .end local v12    # "br":I
    :cond_113
    iget-object v12, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v14, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v12, v14, :cond_127

    .line 417
    iget v12, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonHorizontalEdgeMargin:I

    add-int v13, v1, v12

    .line 418
    .local v13, "bl":I
    iget-object v12, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v12, v12, v6

    invoke-virtual {v12}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v13

    goto :goto_162

    .line 421
    .end local v13    # "bl":I
    :cond_127
    const/4 v12, -0x1

    if-ne v10, v12, :cond_137

    if-eq v11, v12, :cond_137

    .line 422
    iget-object v12, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v12, v12, v6

    invoke-virtual {v12}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v12

    sub-int v10, v11, v12

    goto :goto_160

    .line 423
    :cond_137
    if-ne v11, v12, :cond_146

    if-eq v10, v12, :cond_146

    .line 424
    iget-object v12, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v12, v12, v6

    invoke-virtual {v12}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v10

    .line 429
    move v11, v12

    goto :goto_160

    .line 425
    :cond_146
    if-ne v11, v12, :cond_160

    .line 426
    sub-int v12, v3, v1

    div-int/2addr v12, v13

    iget-object v14, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v14, v14, v6

    invoke-virtual {v14}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v14

    div-int/2addr v14, v13

    sub-int/2addr v12, v14

    .line 427
    .end local v10    # "neutralLeft":I
    .local v12, "neutralLeft":I
    iget-object v10, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v12

    .line 429
    move v11, v10

    move v10, v12

    .end local v12    # "neutralLeft":I
    .restart local v10    # "neutralLeft":I
    :cond_160
    :goto_160
    move v13, v10

    .line 430
    .restart local v13    # "bl":I
    move v12, v11

    .line 433
    .local v12, "br":I
    :goto_162
    iget-object v14, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v6, v14, v6

    invoke-virtual {v6, v13, v8, v12, v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 437
    .end local v4    # "barBottom":I
    .end local v8    # "barTop":I
    .end local v9    # "offset":I
    .end local v10    # "neutralLeft":I
    .end local v11    # "neutralRight":I
    .end local v12    # "br":I
    .end local v13    # "bl":I
    :cond_169
    move/from16 v4, p5

    .end local p5    # "b":I
    .local v4, "b":I
    :cond_16b
    iget-object v6, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    invoke-direct {v0, v6, v5, v5}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setUpDividersVisibility(Landroid/view/View;ZZ)V

    .line 438
    return-void
.end method

.method public onMeasure(II)V
    .registers 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 223
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 224
    .local v3, "width":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 226
    .local v4, "height":I
    iget v5, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->maxHeight:I

    if-le v4, v5, :cond_14

    .line 227
    iget v4, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->maxHeight:I

    .line 230
    :cond_14
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->useFullPadding:Z

    .line 231
    const/4 v6, 0x0

    .line 234
    .local v6, "hasButtons":Z
    iget-object v7, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->stackBehavior:Lcom/afollestad/materialdialogs/StackingBehavior;

    sget-object v8, Lcom/afollestad/materialdialogs/StackingBehavior;->ALWAYS:Lcom/afollestad/materialdialogs/StackingBehavior;

    const/4 v9, 0x0

    if-ne v7, v8, :cond_21

    .line 235
    const/4 v7, 0x1

    goto :goto_64

    .line 236
    :cond_21
    iget-object v7, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->stackBehavior:Lcom/afollestad/materialdialogs/StackingBehavior;

    sget-object v8, Lcom/afollestad/materialdialogs/StackingBehavior;->NEVER:Lcom/afollestad/materialdialogs/StackingBehavior;

    if-ne v7, v8, :cond_29

    .line 237
    const/4 v7, 0x0

    goto :goto_64

    .line 239
    :cond_29
    const/4 v7, 0x0

    .line 240
    .local v7, "buttonsWidth":I
    iget-object v8, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v10, v8

    move v11, v6

    const/4 v6, 0x0

    .end local v6    # "hasButtons":Z
    .local v11, "hasButtons":Z
    :goto_2f
    if-ge v6, v10, :cond_4a

    aget-object v12, v8, v6

    .line 241
    .local v12, "button":Lcom/afollestad/materialdialogs/internal/MDButton;
    if-eqz v12, :cond_47

    invoke-static {v12}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_47

    .line 242
    invoke-virtual {v12, v9, v9}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStacked(ZZ)V

    .line 243
    invoke-virtual {v0, v12, v1, v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->measureChild(Landroid/view/View;II)V

    .line 244
    invoke-virtual {v12}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v7, v13

    .line 245
    const/4 v11, 0x1

    .line 240
    .end local v12    # "button":Lcom/afollestad/materialdialogs/internal/MDButton;
    :cond_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 249
    :cond_4a
    nop

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/afollestad/materialdialogs/R$dimen;->md_neutral_button_margin:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 251
    .local v6, "buttonBarPadding":I
    mul-int/lit8 v8, v6, 0x2

    sub-int v8, v3, v8

    .line 252
    .local v8, "buttonFrameWidth":I
    if-le v7, v8, :cond_61

    const/4 v10, 0x1

    goto :goto_62

    :cond_61
    const/4 v10, 0x0

    :goto_62
    move v7, v10

    move v6, v11

    .line 255
    .end local v8    # "buttonFrameWidth":I
    .end local v11    # "hasButtons":Z
    .local v6, "hasButtons":Z
    .local v7, "stacked":Z
    :goto_64
    const/4 v8, 0x0

    .line 256
    .local v8, "stackedHeight":I
    iput-boolean v7, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isStacked:Z

    .line 257
    if-eqz v7, :cond_8c

    .line 258
    iget-object v10, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v11, v10

    move v12, v8

    move v8, v6

    const/4 v6, 0x0

    .end local v6    # "hasButtons":Z
    .local v8, "hasButtons":Z
    .local v12, "stackedHeight":I
    :goto_6f
    if-ge v6, v11, :cond_8a

    aget-object v13, v10, v6

    .line 259
    .local v13, "button":Lcom/afollestad/materialdialogs/internal/MDButton;
    if-eqz v13, :cond_87

    invoke-static {v13}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_87

    .line 260
    invoke-virtual {v13, v5, v9}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStacked(ZZ)V

    .line 261
    invoke-virtual {v0, v13, v1, v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->measureChild(Landroid/view/View;II)V

    .line 262
    invoke-virtual {v13}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v12, v14

    .line 263
    const/4 v8, 0x1

    .line 258
    .end local v13    # "button":Lcom/afollestad/materialdialogs/internal/MDButton;
    :cond_87
    add-int/lit8 v6, v6, 0x1

    goto :goto_6f

    .line 268
    :cond_8a
    move v6, v8

    move v8, v12

    .end local v12    # "stackedHeight":I
    .restart local v6    # "hasButtons":Z
    .local v8, "stackedHeight":I
    :cond_8c
    move v10, v4

    .line 269
    .local v10, "availableHeight":I
    const/4 v11, 0x0

    .line 270
    .local v11, "fullPadding":I
    const/4 v12, 0x0

    .line 271
    .local v12, "minPadding":I
    if-eqz v6, :cond_aa

    .line 272
    iget-boolean v13, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isStacked:Z

    if-eqz v13, :cond_a1

    .line 273
    sub-int/2addr v10, v8

    .line 274
    iget v13, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonPaddingFull:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v11, v13

    .line 275
    iget v13, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonPaddingFull:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    goto :goto_af

    .line 277
    :cond_a1
    iget v13, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonBarHeight:I

    sub-int/2addr v10, v13

    .line 278
    iget v13, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonPaddingFull:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v11, v13

    goto :goto_af

    .line 283
    :cond_aa
    iget v13, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonPaddingFull:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v11, v13

    .line 286
    :goto_af
    iget-object v13, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    invoke-static {v13}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    if-eqz v13, :cond_ca

    .line 287
    iget-object v13, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    .line 288
    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 287
    invoke-virtual {v13, v15, v9}, Landroid/view/View;->measure(II)V

    .line 289
    iget-object v13, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int/2addr v10, v13

    goto :goto_d1

    .line 290
    :cond_ca
    iget-boolean v13, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->noTitleNoPadding:Z

    if-nez v13, :cond_d1

    .line 291
    iget v13, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->noTitlePaddingFull:I

    add-int/2addr v11, v13

    .line 294
    :cond_d1
    :goto_d1
    iget-object v13, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    invoke-static {v13}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_11d

    .line 295
    iget-object v13, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    .line 296
    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    sub-int v15, v10, v12

    const/high16 v5, -0x80000000

    .line 297
    invoke-static {v15, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 295
    invoke-virtual {v13, v14, v5}, Landroid/view/View;->measure(II)V

    .line 299
    iget-object v5, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v13, v10, v11

    if-gt v5, v13, :cond_11a

    .line 300
    iget-boolean v5, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->reducePaddingNoTitleNoButtons:Z

    if-eqz v5, :cond_10e

    iget-object v5, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->titleBar:Landroid/view/View;

    invoke-static {v5}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_10e

    if-eqz v6, :cond_103

    goto :goto_10e

    .line 304
    :cond_103
    iput-boolean v9, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->useFullPadding:Z

    .line 305
    iget-object v5, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v12

    sub-int/2addr v10, v5

    goto :goto_11d

    .line 301
    :cond_10e
    :goto_10e
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->useFullPadding:Z

    .line 302
    iget-object v5, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->content:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v11

    sub-int/2addr v10, v5

    goto :goto_11d

    .line 308
    :cond_11a
    iput-boolean v9, v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->useFullPadding:Z

    .line 309
    const/4 v10, 0x0

    .line 313
    :cond_11d
    :goto_11d
    sub-int v5, v4, v10

    invoke-virtual {v0, v3, v5}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setMeasuredDimension(II)V

    .line 314
    return-void
.end method

.method public setButtonGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V
    .registers 2
    .param p1, "gravity"    # Lcom/afollestad/materialdialogs/GravityEnum;

    .line 451
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 452
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invertGravityIfNecessary()V

    .line 453
    return-void
.end method

.method public setButtonStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V
    .registers 6
    .param p1, "gravity"    # Lcom/afollestad/materialdialogs/GravityEnum;

    .line 473
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->buttons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 474
    .local v3, "mButton":Lcom/afollestad/materialdialogs/internal/MDButton;
    if-eqz v3, :cond_d

    .line 475
    invoke-virtual {v3, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V

    .line 473
    .end local v3    # "mButton":Lcom/afollestad/materialdialogs/internal/MDButton;
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 478
    :cond_10
    return-void
.end method

.method public setDividerColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 446
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 447
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidate()V

    .line 448
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 2
    .param p1, "maxHeight"    # I

    .line 195
    iput p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->maxHeight:I

    .line 196
    return-void
.end method

.method public setStackingBehavior(Lcom/afollestad/materialdialogs/StackingBehavior;)V
    .registers 2
    .param p1, "behavior"    # Lcom/afollestad/materialdialogs/StackingBehavior;

    .line 441
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->stackBehavior:Lcom/afollestad/materialdialogs/StackingBehavior;

    .line 442
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidate()V

    .line 443
    return-void
.end method

###### Class com.afollestad.materialdialogs.internal.MDRootLayout.AnonymousClass1 (com.afollestad.materialdialogs.internal.MDRootLayout$1)
.class Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;
.super Ljava/lang/Object;
.source "MDRootLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setUpDividersVisibility(Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

.field final synthetic val$setForBottom:Z

.field final synthetic val$setForTop:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/View;ZZ)V
    .registers 5
    .param p1, "this$0"    # Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    .line 512
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iput-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$setForTop:Z

    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$setForBottom:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 5

    .line 515
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_3c

    .line 516
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$view:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->access$000(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 517
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$setForTop:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 518
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    invoke-static {v0, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->access$102(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Z)Z

    .line 520
    :cond_1c
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$setForBottom:Z

    if-eqz v0, :cond_33

    .line 521
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    invoke-static {v0, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->access$202(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Z)Z

    goto :goto_33

    .line 524
    :cond_26
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$view:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$setForTop:Z

    iget-boolean v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$setForBottom:Z

    invoke-static {v0, v1, v2, v3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->access$300(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V

    .line 526
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 528
    :cond_3c
    const/4 v0, 0x1

    return v0
.end method

###### Class com.afollestad.materialdialogs.internal.MDRootLayout.AnonymousClass2 (com.afollestad.materialdialogs.internal.MDRootLayout$2)
.class Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "MDRootLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

.field final synthetic val$setForBottom:Z

.field final synthetic val$setForTop:Z

.field final synthetic val$vg:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V
    .registers 5
    .param p1, "this$0"    # Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    .line 558
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iput-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$vg:Landroid/view/ViewGroup;

    iput-boolean p3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$setForTop:Z

    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$setForBottom:Z

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 11
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 561
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, "hasButtons":Z
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->access$400(Lcom/afollestad/materialdialogs/internal/MDRootLayout;)[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1f

    aget-object v4, v1, v3

    .line 564
    .local v4, "button":Lcom/afollestad/materialdialogs/internal/MDButton;
    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1c

    .line 565
    const/4 v0, 0x1

    .line 566
    goto :goto_1f

    .line 563
    .end local v4    # "button":Lcom/afollestad/materialdialogs/internal/MDButton;
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 569
    :cond_1f
    :goto_1f
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$vg:Landroid/view/ViewGroup;

    iget-boolean v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$setForTop:Z

    iget-boolean v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->val$setForBottom:Z

    invoke-static {v1, v2, v3, v4, v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->access$500(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZZ)V

    .line 570
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidate()V

    .line 571
    return-void
.end method

###### Class com.afollestad.materialdialogs.internal.MDRootLayout.AnonymousClass3 (com.afollestad.materialdialogs.internal.MDRootLayout$3)
.class Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;
.super Ljava/lang/Object;
.source "MDRootLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

.field final synthetic val$setForBottom:Z

.field final synthetic val$setForTop:Z

.field final synthetic val$vg:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V
    .registers 5
    .param p1, "this$0"    # Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    .line 577
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iput-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;->val$vg:Landroid/view/ViewGroup;

    iput-boolean p3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;->val$setForTop:Z

    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;->val$setForBottom:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .registers 8

    .line 580
    const/4 v0, 0x0

    .line 581
    .local v0, "hasButtons":Z
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->access$400(Lcom/afollestad/materialdialogs/internal/MDRootLayout;)[Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 582
    .local v4, "button":Lcom/afollestad/materialdialogs/internal/MDButton;
    if-eqz v4, :cond_19

    invoke-virtual {v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_19

    .line 583
    const/4 v0, 0x1

    .line 584
    goto :goto_1c

    .line 581
    .end local v4    # "button":Lcom/afollestad/materialdialogs/internal/MDButton;
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 587
    :cond_1c
    :goto_1c
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;->val$vg:Landroid/view/ViewGroup;

    instance-of v1, v1, Landroid/webkit/WebView;

    if-eqz v1, :cond_30

    .line 588
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;->val$vg:Landroid/view/ViewGroup;

    check-cast v2, Landroid/webkit/WebView;

    iget-boolean v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;->val$setForTop:Z

    iget-boolean v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;->val$setForBottom:Z

    invoke-static {v1, v2, v3, v4, v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->access$600(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/webkit/WebView;ZZZ)V

    goto :goto_3b

    .line 590
    :cond_30
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;->val$vg:Landroid/view/ViewGroup;

    iget-boolean v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;->val$setForTop:Z

    iget-boolean v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;->val$setForBottom:Z

    invoke-static {v1, v2, v3, v4, v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->access$500(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZZ)V

    .line 592
    :goto_3b
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;->this$0:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidate()V

    .line 593
    return-void
.end method

###### Class com.afollestad.materialdialogs.internal.MDRootLayout.AnonymousClass4 (com.afollestad.materialdialogs.internal.MDRootLayout$4)
.class synthetic Lcom/afollestad/materialdialogs/internal/MDRootLayout$4;
.super Ljava/lang/Object;
.source "MDRootLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/internal/MDRootLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$afollestad$materialdialogs$GravityEnum:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 461
    invoke-static {}, Lcom/afollestad/materialdialogs/GravityEnum;->values()[Lcom/afollestad/materialdialogs/GravityEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$4;->$SwitchMap$com$afollestad$materialdialogs$GravityEnum:[I

    :try_start_9
    sget-object v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$4;->$SwitchMap$com$afollestad$materialdialogs$GravityEnum:[I

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/GravityEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$4;->$SwitchMap$com$afollestad$materialdialogs$GravityEnum:[I

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/GravityEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    return-void
.end method
