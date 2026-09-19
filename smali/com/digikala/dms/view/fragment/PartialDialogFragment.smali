###### Class com.digikala.dms.view.fragment.PartialDialogFragment (com.digikala.dms.view.fragment.PartialDialogFragment)
.class public Lcom/digikala/dms/view/fragment/PartialDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "PartialDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/view/fragment/PartialDialogFragment$OnItemChangeListener;
    }
.end annotation


# static fields
.field public static final ARG_ITEM_COUNT:Ljava/lang/String; = "item_count"

.field private static final ITEM_COUNT_PAGE:I = 0x0

.field private static final PARTIAL_REASONS_PAGE:I = 0x1

.field private static onItemChangeListener:Lcom/digikala/dms/view/fragment/PartialDialogFragment$OnItemChangeListener;


# instance fields
.field RejectReasonsData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/RejectReason;",
            ">;"
        }
    .end annotation
.end field

.field private count:I

.field private reasonPosition:I

.field private rejectReasons:[Ljava/lang/String;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 41
    return-void
.end method

.method public static newInstance(I)Lcom/digikala/dms/view/fragment/PartialDialogFragment;
    .registers 4
    .param p0, "count"    # I

    .line 44
    new-instance v0, Lcom/digikala/dms/view/fragment/PartialDialogFragment;

    invoke-direct {v0}, Lcom/digikala/dms/view/fragment/PartialDialogFragment;-><init>()V

    .line 45
    .local v0, "fragment":Lcom/digikala/dms/view/fragment/PartialDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "item_count"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v0
.end method

.method public static setOnItemChangeListener(Lcom/digikala/dms/view/fragment/PartialDialogFragment$OnItemChangeListener;)V
    .registers 1
    .param p0, "onItemChangeListener"    # Lcom/digikala/dms/view/fragment/PartialDialogFragment$OnItemChangeListener;

    .line 129
    sput-object p0, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->onItemChangeListener:Lcom/digikala/dms/view/fragment/PartialDialogFragment$OnItemChangeListener;

    .line 130
    return-void
.end method


# virtual methods
.method public changeToItemCountPage(I)V
    .registers 5
    .param p1, "reasonPosition"    # I

    .line 108
    iput p1, p0, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->reasonPosition:I

    .line 109
    iget v0, p0, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->count:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 110
    invoke-virtual {p0, v1}, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->onConfirmButtonClick(I)V

    goto :goto_11

    .line 112
    :cond_b
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 114
    :goto_11
    return-void
.end method

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

    .line 132
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 134
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

    .line 135
    .local v1, "results":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/RejectReason;>;"
    invoke-virtual {v0, v1}, Lio/realm/Realm;->copyFromRealm(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 136
    .local v2, "rejectReasons":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/model/domain/RejectReason;>;"
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 137
    return-object v2
.end method

.method public onConfirmButtonClick(I)V
    .registers 4
    .param p1, "count"    # I

    .line 117
    sget-object v0, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->onItemChangeListener:Lcom/digikala/dms/view/fragment/PartialDialogFragment$OnItemChangeListener;

    if-eqz v0, :cond_b

    .line 118
    sget-object v0, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->onItemChangeListener:Lcom/digikala/dms/view/fragment/PartialDialogFragment$OnItemChangeListener;

    iget v1, p0, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->reasonPosition:I

    invoke-interface {v0, v1, p1}, Lcom/digikala/dms/view/fragment/PartialDialogFragment$OnItemChangeListener;->onChange(II)V

    .line 120
    :cond_b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 67
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->getRejectReasonFromDatabase()Ljava/util/List;

    .line 70
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->getRejectReasonFromDatabase()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->RejectReasonsData:Ljava/util/List;

    .line 72
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 74
    .local v1, "rejectReasons":[Ljava/lang/String;
    :try_start_15
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->RejectReasonsData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_1f

    move-object v1, v2

    .line 77
    goto :goto_23

    .line 75
    :catch_1f
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_23
    nop

    .local v0, "i":I
    :goto_24
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->RejectReasonsData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3d

    .line 79
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->RejectReasonsData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/RejectReason;

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/RejectReason;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 82
    .end local v0    # "i":I
    :cond_3d
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "item_count"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->count:I

    .line 84
    .end local v1    # "rejectReasons":[Ljava/lang/String;
    :cond_49
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 57
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 58
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 90
    const v0, 0x7f0c007c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f09013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 93
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/digikala/dms/adapter/PartialDeliverDialogPagerAdapter;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->rejectReasons:[Ljava/lang/String;

    iget v5, p0, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->count:I

    invoke-direct {v2, v3, v4, v5}, Lcom/digikala/dms/adapter/PartialDeliverDialogPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;[Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 94
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 96
    return-object v0
.end method

###### Class com.digikala.dms.view.fragment.PartialDialogFragment.OnItemChangeListener (com.digikala.dms.view.fragment.PartialDialogFragment$OnItemChangeListener)
.class public interface abstract Lcom/digikala/dms/view/fragment/PartialDialogFragment$OnItemChangeListener;
.super Ljava/lang/Object;
.source "PartialDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/view/fragment/PartialDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemChangeListener"
.end annotation


# virtual methods
.method public abstract onChange(II)V
.end method
