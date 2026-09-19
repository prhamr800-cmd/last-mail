###### Class com.digikala.dms.view.activity.InboxActivity (com.digikala.dms.view.activity.InboxActivity)
.class public Lcom/digikala/dms/view/activity/InboxActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "InboxActivity.java"


# instance fields
.field private adapter:Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;

.field private linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initUI()V
    .registers 4

    .line 29
    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/InboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/digikala/dms/view/activity/InboxActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 30
    new-instance v0, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;

    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v1

    const-class v2, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/digikala/dms/view/activity/InboxActivity;->adapter:Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;

    .line 31
    iget-object v0, p0, Lcom/digikala/dms/view/activity/InboxActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/digikala/dms/view/activity/InboxActivity;->adapter:Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 32
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/digikala/dms/view/activity/InboxActivity;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 33
    iget-object v0, p0, Lcom/digikala/dms/view/activity/InboxActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/digikala/dms/view/activity/InboxActivity;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 22
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/activity/InboxActivity;->setContentView(I)V

    .line 25
    invoke-direct {p0}, Lcom/digikala/dms/view/activity/InboxActivity;->initUI()V

    .line 26
    return-void
.end method
