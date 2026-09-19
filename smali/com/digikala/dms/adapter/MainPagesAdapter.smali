###### Class com.digikala.dms.adapter.MainPagesAdapter (com.digikala.dms.adapter.MainPagesAdapter)
.class public Lcom/digikala/dms/adapter/MainPagesAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MainPagesAdapter.java"


# static fields
.field private static final SIZE_PAGES:I = 0x3


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .registers 2
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .line 19
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 44
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 4
    .param p1, "position"    # I

    .line 25
    packed-switch p1, :pswitch_data_26

    .line 37
    const/4 v0, 0x0

    goto :goto_24

    .line 33
    :pswitch_5
    invoke-static {}, Lcom/digikala/dms/view/fragment/MapFragment;->newInstance()Lcom/digikala/dms/view/fragment/MapFragment;

    move-result-object v0

    .line 34
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_24

    .line 30
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_a
    sget-object v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->Companion:Lcom/digikala/dms/view/fragment/ShipmentsListFragment$Companion;

    sget-object v1, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->Companion:Lcom/digikala/dms/view/fragment/ShipmentsListFragment$Companion;

    invoke-virtual {v1}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$Companion;->getWHICH_LIST_OPEN()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$Companion;->newInstance(I)Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    move-result-object v0

    .line 31
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_24

    .line 27
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :pswitch_17
    sget-object v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->Companion:Lcom/digikala/dms/view/fragment/ShipmentsListFragment$Companion;

    sget-object v1, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;->Companion:Lcom/digikala/dms/view/fragment/ShipmentsListFragment$Companion;

    invoke-virtual {v1}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$Companion;->getWHICH_LIST_CLOSE()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/ShipmentsListFragment$Companion;->newInstance(I)Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    move-result-object v0

    .line 28
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    nop

    .line 37
    :goto_24
    nop

    .line 39
    return-object v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_17
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "position"    # I

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method
