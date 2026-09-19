###### Class com.digikala.dms.adapter.PartialDeliverDialogPagerAdapter (com.digikala.dms.adapter.PartialDeliverDialogPagerAdapter)
.class public Lcom/digikala/dms/adapter/PartialDeliverDialogPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "PartialDeliverDialogPagerAdapter.java"


# instance fields
.field private itemCount:I

.field private rejectReasons:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;[Ljava/lang/String;I)V
    .registers 4
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "rejectReasons"    # [Ljava/lang/String;
    .param p3, "itemCount"    # I

    .line 19
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 20
    iput-object p2, p0, Lcom/digikala/dms/adapter/PartialDeliverDialogPagerAdapter;->rejectReasons:[Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/digikala/dms/adapter/PartialDeliverDialogPagerAdapter;->itemCount:I

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 35
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 3
    .param p1, "position"    # I

    .line 26
    if-nez p1, :cond_9

    .line 27
    iget v0, p0, Lcom/digikala/dms/adapter/PartialDeliverDialogPagerAdapter;->itemCount:I

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/PartialItemCountFragment;->newInstance(I)Lcom/digikala/dms/view/fragment/PartialItemCountFragment;

    move-result-object v0

    return-object v0

    .line 29
    :cond_9
    iget-object v0, p0, Lcom/digikala/dms/adapter/PartialDeliverDialogPagerAdapter;->rejectReasons:[Ljava/lang/String;

    invoke-static {v0}, Lcom/digikala/dms/view/fragment/PartialReasonFragment;->newInstance([Ljava/lang/String;)Lcom/digikala/dms/view/fragment/PartialReasonFragment;

    move-result-object v0

    return-object v0
.end method
