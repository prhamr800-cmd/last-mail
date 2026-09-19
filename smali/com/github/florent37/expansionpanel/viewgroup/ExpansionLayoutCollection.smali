###### Class com.github.florent37.expansionpanel.viewgroup.ExpansionLayoutCollection (com.github.florent37.expansionpanel.viewgroup.ExpansionLayoutCollection)
.class public Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;
.super Ljava/lang/Object;
.source "ExpansionLayoutCollection.java"


# instance fields
.field private final expansions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/github/florent37/expansionpanel/ExpansionLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final indicatorListener:Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;

.field private openOnlyOne:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->expansions:Ljava/util/Collection;

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->openOnlyOne:Z

    .line 13
    new-instance v0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection$1;

    invoke-direct {v0, p0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection$1;-><init>(Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;)V

    iput-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->indicatorListener:Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;

    return-void
.end method

.method static synthetic access$000(Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;)Z
    .registers 2
    .param p0, "x0"    # Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    .line 8
    iget-boolean v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->openOnlyOne:Z

    return v0
.end method

.method static synthetic access$100(Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;)Ljava/util/Collection;
    .registers 2
    .param p0, "x0"    # Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    .line 8
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->expansions:Ljava/util/Collection;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/github/florent37/expansionpanel/ExpansionLayout;)Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;
    .registers 3
    .param p1, "expansionLayout"    # Lcom/github/florent37/expansionpanel/ExpansionLayout;

    .line 27
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->expansions:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->indicatorListener:Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;

    invoke-virtual {p1, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->addIndicatorListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;)V

    .line 29
    return-object p0
.end method

.method public addAll(Ljava/util/Collection;)Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/github/florent37/expansionpanel/ExpansionLayout;",
            ">;)",
            "Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;"
        }
    .end annotation

    .line 40
    .local p1, "expansionLayouts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/github/florent37/expansionpanel/ExpansionLayout;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/expansionpanel/ExpansionLayout;

    .line 41
    .local v1, "expansionLayout":Lcom/github/florent37/expansionpanel/ExpansionLayout;
    invoke-virtual {p0, v1}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->add(Lcom/github/florent37/expansionpanel/ExpansionLayout;)Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    .line 42
    .end local v1    # "expansionLayout":Lcom/github/florent37/expansionpanel/ExpansionLayout;
    goto :goto_4

    .line 43
    :cond_14
    return-object p0
.end method

.method public varargs addAll([Lcom/github/florent37/expansionpanel/ExpansionLayout;)Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;
    .registers 5
    .param p1, "expansionLayouts"    # [Lcom/github/florent37/expansionpanel/ExpansionLayout;

    .line 33
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p1, v1

    .line 34
    .local v2, "expansionLayout":Lcom/github/florent37/expansionpanel/ExpansionLayout;
    invoke-virtual {p0, v2}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->add(Lcom/github/florent37/expansionpanel/ExpansionLayout;)Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    .line 33
    .end local v2    # "expansionLayout":Lcom/github/florent37/expansionpanel/ExpansionLayout;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 36
    :cond_c
    return-object p0
.end method

.method public openOnlyOne(Z)Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;
    .registers 2
    .param p1, "openOnlyOne"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->openOnlyOne:Z

    .line 56
    return-object p0
.end method

.method public remove(Lcom/github/florent37/expansionpanel/ExpansionLayout;)Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;
    .registers 3
    .param p1, "expansionLayout"    # Lcom/github/florent37/expansionpanel/ExpansionLayout;

    .line 47
    if-eqz p1, :cond_c

    .line 48
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->expansions:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->indicatorListener:Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;

    invoke-virtual {p1, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->removeIndicatorListener(Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;)V

    .line 51
    :cond_c
    return-object p0
.end method

###### Class com.github.florent37.expansionpanel.viewgroup.ExpansionLayoutCollection.AnonymousClass1 (com.github.florent37.expansionpanel.viewgroup.ExpansionLayoutCollection$1)
.class Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection$1;
.super Ljava/lang/Object;
.source "ExpansionLayoutCollection.java"

# interfaces
.implements Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;


# direct methods
.method constructor <init>(Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;)V
    .registers 2
    .param p1, "this$0"    # Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    .line 13
    iput-object p1, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection$1;->this$0:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartedExpand(Lcom/github/florent37/expansionpanel/ExpansionLayout;Z)V
    .registers 6
    .param p1, "expansionLayout"    # Lcom/github/florent37/expansionpanel/ExpansionLayout;
    .param p2, "willExpand"    # Z

    .line 16
    if-eqz p2, :cond_27

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection$1;->this$0:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    invoke-static {v0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->access$000(Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 17
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection$1;->this$0:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    invoke-static {v0}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->access$100(Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/expansionpanel/ExpansionLayout;

    .line 18
    .local v1, "view":Lcom/github/florent37/expansionpanel/ExpansionLayout;
    if-eq v1, p1, :cond_26

    .line 19
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->collapse(Z)V

    .line 21
    .end local v1    # "view":Lcom/github/florent37/expansionpanel/ExpansionLayout;
    :cond_26
    goto :goto_14

    .line 23
    :cond_27
    return-void
.end method
