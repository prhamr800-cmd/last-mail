###### Class com.digikala.dms.adapter.UserInformationCardViewAdapter (com.digikala.dms.adapter.UserInformationCardViewAdapter)
.class public Lcom/digikala/dms/adapter/UserInformationCardViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserInformationCardViewAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/CardType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/CardType;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/model/domain/CardType;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/digikala/dms/adapter/UserInformationCardViewAdapter;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/digikala/dms/adapter/UserInformationCardViewAdapter;->list:Ljava/util/List;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/adapter/UserInformationCardViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/digikala/dms/adapter/UserInformationCardViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I

    .line 40
    iget-object v0, p0, Lcom/digikala/dms/adapter/UserInformationCardViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/CardType;

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/CardType;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "i"    # I

    .line 45
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .line 50
    iget-object v0, p0, Lcom/digikala/dms/adapter/UserInformationCardViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    const v0, 0x7f0901cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    .line 52
    .local v0, "titleTextView":Lcom/digikala/dms/view/custom/XeiTextView;
    iget-object v1, p0, Lcom/digikala/dms/adapter/UserInformationCardViewAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/CardType;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/CardType;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-object p2
.end method
