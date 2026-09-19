###### Class com.digikala.dms.view.fragment.PartialItemCountFragment (com.digikala.dms.view.fragment.PartialItemCountFragment)
.class public Lcom/digikala/dms/view/fragment/PartialItemCountFragment;
.super Landroid/support/v4/app/Fragment;
.source "PartialItemCountFragment.java"


# static fields
.field private static final ARG_ITEM_COUNT:Ljava/lang/String; = "item_count"


# instance fields
.field private itemCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 23
    return-void
.end method

.method public static newInstance(I)Lcom/digikala/dms/view/fragment/PartialItemCountFragment;
    .registers 4
    .param p0, "itemCount"    # I

    .line 26
    new-instance v0, Lcom/digikala/dms/view/fragment/PartialItemCountFragment;

    invoke-direct {v0}, Lcom/digikala/dms/view/fragment/PartialItemCountFragment;-><init>()V

    .line 27
    .local v0, "fragment":Lcom/digikala/dms/view/fragment/PartialItemCountFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 28
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "item_count"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/PartialItemCountFragment;->setArguments(Landroid/os/Bundle;)V

    .line 30
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialItemCountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 37
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/PartialItemCountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "item_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/digikala/dms/view/fragment/PartialItemCountFragment;->itemCount:I

    .line 39
    :cond_15
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 45
    const v0, 0x7f0c0047

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0900e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    .line 48
    .local v1, "numberPicker":Landroid/widget/NumberPicker;
    const v2, 0x7f090073

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 50
    .local v2, "confirmButton":Landroid/widget/TextView;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 51
    iget v3, p0, Lcom/digikala/dms/view/fragment/PartialItemCountFragment;->itemCount:I

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 53
    new-instance v3, Lcom/digikala/dms/view/fragment/PartialItemCountFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/digikala/dms/view/fragment/PartialItemCountFragment$1;-><init>(Lcom/digikala/dms/view/fragment/PartialItemCountFragment;Landroid/widget/NumberPicker;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-object v0
.end method

###### Class com.digikala.dms.view.fragment.PartialItemCountFragment.AnonymousClass1 (com.digikala.dms.view.fragment.PartialItemCountFragment$1)
.class Lcom/digikala/dms/view/fragment/PartialItemCountFragment$1;
.super Ljava/lang/Object;
.source "PartialItemCountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/PartialItemCountFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/PartialItemCountFragment;

.field final synthetic val$numberPicker:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/PartialItemCountFragment;Landroid/widget/NumberPicker;)V
    .registers 3
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/PartialItemCountFragment;

    .line 53
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/PartialItemCountFragment$1;->this$0:Lcom/digikala/dms/view/fragment/PartialItemCountFragment;

    iput-object p2, p0, Lcom/digikala/dms/view/fragment/PartialItemCountFragment$1;->val$numberPicker:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/PartialItemCountFragment$1;->this$0:Lcom/digikala/dms/view/fragment/PartialItemCountFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/PartialItemCountFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/fragment/PartialDialogFragment;

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/PartialItemCountFragment$1;->val$numberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/PartialDialogFragment;->onConfirmButtonClick(I)V

    .line 57
    return-void
.end method
