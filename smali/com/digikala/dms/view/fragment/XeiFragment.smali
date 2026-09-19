###### Class com.digikala.dms.view.fragment.XeiFragment (com.digikala.dms.view.fragment.XeiFragment)
.class public abstract Lcom/digikala/dms/view/fragment/XeiFragment;
.super Landroid/support/v4/app/Fragment;
.source "XeiFragment.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/view/fragment/XeiFragment$FragmentChanger;
    }
.end annotation


# instance fields
.field private mLoadDataOnResume:Z

.field protected mRequestTag:Ljava/lang/String;

.field private mWebApiRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/XeiFragment;->mRequestTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addRequestToLoadList(Lcom/digikala/dms/helper/webservice/WebApiRequest;Z)V
    .registers 4
    .param p2, "loadDataOnResume"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest<",
            "*>;Z)V"
        }
    .end annotation

    .line 30
    .local p1, "request":Lcom/digikala/dms/helper/webservice/WebApiRequest;, "Lcom/digikala/dms/helper/webservice/WebApiRequest<*>;"
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/XeiFragment;->mWebApiRequestList:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/XeiFragment;->mWebApiRequestList:Ljava/util/ArrayList;

    .line 33
    :cond_b
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/XeiFragment;->mWebApiRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iput-boolean p2, p0, Lcom/digikala/dms/view/fragment/XeiFragment;->mLoadDataOnResume:Z

    .line 35
    return-void
.end method

.method protected loadData()V
    .registers 5

    .line 38
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/XeiFragment;->mWebApiRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/helper/webservice/WebApiRequest;

    .line 39
    .local v1, "request":Lcom/digikala/dms/helper/webservice/WebApiRequest;, "Lcom/digikala/dms/helper/webservice/WebApiRequest<*>;"
    invoke-virtual {v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->getStatus()Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    move-result-object v2

    sget-object v3, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;->READY:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    if-eq v2, v3, :cond_22

    invoke-virtual {v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->getStatus()Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    move-result-object v2

    sget-object v3, Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;->ERROR:Lcom/digikala/dms/helper/webservice/WebApiRequest$RequestStatus;

    if-ne v2, v3, :cond_25

    .line 40
    :cond_22
    invoke-virtual {v1}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    .line 42
    .end local v1    # "request":Lcom/digikala/dms/helper/webservice/WebApiRequest;, "Lcom/digikala/dms/helper/webservice/WebApiRequest<*>;"
    :cond_25
    goto :goto_6

    .line 43
    :cond_26
    return-void
.end method

.method protected abstract makeApiRequests()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 22
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/XeiFragment;->makeApiRequests()V

    .line 24
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 54
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 55
    iget-boolean v0, p0, Lcom/digikala/dms/view/fragment/XeiFragment;->mLoadDataOnResume:Z

    if-eqz v0, :cond_a

    .line 56
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/XeiFragment;->loadData()V

    .line 58
    :cond_a
    return-void
.end method

.method public reloadRequests()V
    .registers 4

    .line 47
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/XeiFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_14

    .line 48
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/XeiFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Retry kon"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 50
    :cond_14
    return-void
.end method

###### Class com.digikala.dms.view.fragment.XeiFragment.FragmentChanger (com.digikala.dms.view.fragment.XeiFragment$FragmentChanger)
.class public interface abstract Lcom/digikala/dms/view/fragment/XeiFragment$FragmentChanger;
.super Ljava/lang/Object;
.source "XeiFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/view/fragment/XeiFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FragmentChanger"
.end annotation


# virtual methods
.method public abstract changeFragment(Landroid/support/v4/app/Fragment;)V
.end method
