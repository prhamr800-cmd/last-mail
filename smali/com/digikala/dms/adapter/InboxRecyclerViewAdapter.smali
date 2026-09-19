###### Class com.digikala.dms.adapter.InboxRecyclerViewAdapter (com.digikala.dms.adapter.InboxRecyclerViewAdapter)
.class public Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "InboxRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/ServerMessages;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/ServerMessages;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 28
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/model/domain/ServerMessages;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;->list:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;->list:Ljava/util/List;

    .line 30
    iput-object p2, p0, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public insert(ILcom/digikala/dms/model/domain/ServerMessages;)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "data"    # Lcom/digikala/dms/model/domain/ServerMessages;

    .line 61
    iget-object v0, p0, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;->notifyItemInserted(I)V

    .line 63
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 57
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 22
    check-cast p1, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;->onBindViewHolder(Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;I)V
    .registers 5
    .param p1, "holder"    # Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 45
    iget-object v0, p0, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/model/domain/ServerMessages;

    iget-object v1, p0, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;->bind(Lcom/digikala/dms/model/domain/ServerMessages;Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 37
    const v1, 0x7f0c001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;-><init>(Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;Landroid/view/View;)V

    .line 40
    .local v1, "viewHolder":Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;
    return-object v1
.end method

.method public remove(Lcom/digikala/dms/model/domain/ServerMessages;)V
    .registers 4
    .param p1, "data"    # Lcom/digikala/dms/model/domain/ServerMessages;

    .line 67
    iget-object v0, p0, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 68
    .local v0, "position":I
    iget-object v1, p0, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 69
    invoke-virtual {p0, v0}, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;->notifyItemRemoved(I)V

    .line 70
    return-void
.end method

###### Class com.digikala.dms.adapter.InboxRecyclerViewAdapter.ViewHolder (com.digikala.dms.adapter.InboxRecyclerViewAdapter$ViewHolder)
.class Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "InboxRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private message:Lcom/digikala/dms/model/domain/ServerMessages;

.field private messageTextView:Lcom/digikala/dms/view/custom/XeiTextView;

.field final synthetic this$0:Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;

.field private titleTextView:Lcom/digikala/dms/view/custom/XeiTextView;


# direct methods
.method constructor <init>(Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 80
    iput-object p1, p0, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;->this$0:Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter;

    .line 81
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 83
    const v0, 0x7f0901cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;->titleTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    .line 84
    const v0, 0x7f090120

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/digikala/dms/view/custom/XeiTextView;

    iput-object v0, p0, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;->messageTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    .line 85
    return-void
.end method


# virtual methods
.method public bind(Lcom/digikala/dms/model/domain/ServerMessages;Landroid/content/Context;)V
    .registers 5
    .param p1, "message"    # Lcom/digikala/dms/model/domain/ServerMessages;
    .param p2, "context"    # Landroid/content/Context;

    .line 88
    iput-object p1, p0, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;->message:Lcom/digikala/dms/model/domain/ServerMessages;

    .line 89
    iput-object p2, p0, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;->context:Landroid/content/Context;

    .line 91
    iget-object v0, p0, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;->titleTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    iget-object v1, p0, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;->message:Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/ServerMessages;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;->messageTextView:Lcom/digikala/dms/view/custom/XeiTextView;

    iget-object v1, p0, Lcom/digikala/dms/adapter/InboxRecyclerViewAdapter$ViewHolder;->message:Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/ServerMessages;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/custom/XeiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method
