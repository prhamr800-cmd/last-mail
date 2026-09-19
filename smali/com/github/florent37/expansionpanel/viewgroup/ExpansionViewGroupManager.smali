###### Class com.github.florent37.expansionpanel.viewgroup.ExpansionViewGroupManager (com.github.florent37.expansionpanel.viewgroup.ExpansionViewGroupManager)
.class Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;
.super Ljava/lang/Object;
.source "ExpansionViewGroupManager.java"


# instance fields
.field private expansionLayoutCollection:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

.field private final viewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    invoke-direct {v0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;->expansionLayoutCollection:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    .line 13
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;->viewGroup:Landroid/view/ViewGroup;

    .line 14
    return-void
.end method

.method private findExpansionsViews(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 21
    instance-of v0, p1, Lcom/github/florent37/expansionpanel/ExpansionLayout;

    if-eqz v0, :cond_d

    .line 22
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;->expansionLayoutCollection:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    move-object v1, p1

    check-cast v1, Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-virtual {v0, v1}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->add(Lcom/github/florent37/expansionpanel/ExpansionLayout;)Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    goto :goto_28

    .line 23
    :cond_d
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_28

    .line 24
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 25
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;->findExpansionsViews(Landroid/view/View;)V

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 28
    .end local v0    # "i":I
    :cond_28
    :goto_28
    return-void
.end method


# virtual methods
.method public onViewAdded()V
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;->viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;->findExpansionsViews(Landroid/view/View;)V

    .line 18
    return-void
.end method

.method public setOpenOnlyOne(Z)V
    .registers 3
    .param p1, "openOnlyOne"    # Z

    .line 31
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionViewGroupManager;->expansionLayoutCollection:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    invoke-virtual {v0, p1}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->openOnlyOne(Z)Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    .line 32
    return-void
.end method
