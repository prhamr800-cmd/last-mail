###### Class com.digikala.dms.view.fragment.PartialReasonFragment (com.digikala.dms.view.fragment.PartialReasonFragment)
.class public Lcom/digikala/dms/view/fragment/PartialReasonFragment;
.super Landroid/support/v4/app/Fragment;
.source "PartialReasonFragment.java"


# instance fields
.field listView:Landroid/widget/ListView;

.field private rejectReasons:[Ljava/lang/String;

.field rejectReasons1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/RejectReason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 34
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lcom/digikala/dms/view/fragment/PartialReasonFragment;
    .registers 3
    .param p0, "rejectReasons"    # [Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/digikala/dms/view/fragment/PartialReasonFragment;

    invoke-direct {v0}, Lcom/digikala/dms/view/fragment/PartialReasonFragment;-><init>()V

    .line 38
    .local v0, "fragment":Lcom/digikala/dms/view/fragment/PartialReasonFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v1, "args":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/PartialReasonFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v0
.end method


# virtual methods
.method public getRejectReasonFromDatabase()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/RejectReason;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 86
    .local v0, "realm":Lio/realm/Realm;
    const-class v1, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string/jumbo v2, "type"

    sget-object v3, Lcom/digikala/dms/util/Constant;->Companion:Lcom/digikala/dms/util/Constant$Companion;

    invoke-virtual {v3}, Lcom/digikala/dms/util/Constant$Companion;->getEXTRA_REASON_TYPE_RETURN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 87
    .local v1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/RejectReason;>;"
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 88
    .local v2, "rejectReasons":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/model/domain/RejectReason;>;"
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 89
    return-object v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 78
    const v0, 0x7f0c0048

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f090140

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/digikala/dms/view/fragment/PartialReasonFragment;->listView:Landroid/widget/ListView;

    .line 80
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/PartialReasonFragment;->rejectReasons1:Ljava/util/ArrayList;

    .line 49
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialReasonFragment;->rejectReasons1:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialReasonFragment;->getRejectReasonFromDatabase()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 50
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 52
    .local v1, "rejectReasons":[Ljava/lang/String;
    :try_start_16
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialReasonFragment;->rejectReasons1:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1e} :catch_20

    move-object v1, v2

    .line 55
    goto :goto_24

    .line 53
    :catch_20
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_24
    nop

    .local v0, "i":I
    :goto_25
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialReasonFragment;->rejectReasons1:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3e

    .line 57
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialReasonFragment;->rejectReasons1:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/RejectReason;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 60
    .end local v0    # "i":I
    :cond_3e
    nop

    .line 61
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialReasonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0084

    const v4, 0x7f0901b7

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 62
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialReasonFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialReasonFragment;->listView:Landroid/widget/ListView;

    new-instance v3, Lcom/digikala/dms/view/fragment/PartialReasonFragment$1;

    invoke-direct {v3, p0}, Lcom/digikala/dms/view/fragment/PartialReasonFragment$1;-><init>(Lcom/digikala/dms/view/fragment/PartialReasonFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    nop

    .line 73
    return-void
.end method

###### Class com.digikala.dms.view.fragment.PartialReasonFragment.AnonymousClass1 (com.digikala.dms.view.fragment.PartialReasonFragment$1)
.class Lcom/digikala/dms/view/fragment/PartialReasonFragment$1;
.super Ljava/lang/Object;
.source "PartialReasonFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/PartialReasonFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/PartialReasonFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/PartialReasonFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/PartialReasonFragment;

    .line 63
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/PartialReasonFragment$1;->this$0:Lcom/digikala/dms/view/fragment/PartialReasonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 66
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialReasonFragment$1;->this$0:Lcom/digikala/dms/view/fragment/PartialReasonFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/PartialReasonFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/fragment/PartialDialogFragment;

    invoke-virtual {v0, p3}, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->changeToItemCountPage(I)V

    .line 67
    return-void
.end method
