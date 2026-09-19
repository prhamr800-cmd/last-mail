###### Class com.github.florent37.expansionpanel.viewgroup.ExpansionsViewGroupFrameLayout (com.github.florent37.expansionpanel.viewgroup.ExpansionsViewGroupFrameLayout)
.class public Lcom/github/florent37/expansionpanel/viewgroup/ExpansionsViewGroupFrameLayout;
.super Landroid/widget/LinearLayout;
.source "ExpansionsViewGroupFrameLayout.java"


# instance fields
.field private final expansionViewGroupManager:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;

    invoke-direct {v0, p0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionsViewGroupFrameLayout;->expansionViewGroupManager:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionsViewGroupFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;

    invoke-direct {v0, p0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionsViewGroupFrameLayout;->expansionViewGroupManager:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionsViewGroupFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance v0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;

    invoke-direct {v0, p0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionsViewGroupFrameLayout;->expansionViewGroupManager:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionsViewGroupFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    if-eqz p2, :cond_19

    .line 37
    sget-object v0, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionsViewGroupFrameLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_19

    .line 39
    iget-object v1, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionsViewGroupFrameLayout;->expansionViewGroupManager:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;

    sget v2, Lcom/github/florent37/expansionpanel/R$styleable;->ExpansionsViewGroupFrameLayout_expansion_openOnlyOne:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;->setOpenOnlyOne(Z)V

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_19
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 47
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionsViewGroupFrameLayout;->expansionViewGroupManager:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;

    invoke-virtual {v0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;->onViewAdded()V

    .line 49
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 53
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 54
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionsViewGroupFrameLayout;->expansionViewGroupManager:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;

    invoke-virtual {v0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;->onViewAdded()V

    .line 55
    return-void
.end method
