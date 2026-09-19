###### Class org.zakariya.stickyheaders.PagedLoadScrollListener (org.zakariya.stickyheaders.PagedLoadScrollListener)
.class public abstract Lorg/zakariya/stickyheaders/PagedLoadScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "PagedLoadScrollListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/zakariya/stickyheaders/PagedLoadScrollListener$LoadCompleteNotifier;
    }
.end annotation


# static fields
.field private static final DEFAULT_VISIBLE_THRESHOLD:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentPage:I

.field layoutManager:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;

.field loadCompleteNotifier:Lorg/zakariya/stickyheaders/PagedLoadScrollListener$LoadCompleteNotifier;

.field private loadExhausted:Z

.field private loading:Z

.field private previousTotalItemCount:I

.field private visibleThreshold:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const-class v0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;)V
    .registers 3
    .param p1, "layoutManager"    # Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;

    .line 53
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;-><init>(Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;I)V
    .registers 4
    .param p1, "layoutManager"    # Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;
    .param p2, "visibleThreshold"    # I

    .line 47
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->currentPage:I

    .line 28
    iput v0, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->previousTotalItemCount:I

    .line 29
    iput-boolean v0, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->loading:Z

    .line 30
    iput-boolean v0, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->loadExhausted:Z

    .line 34
    new-instance v0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener$1;

    invoke-direct {v0, p0}, Lorg/zakariya/stickyheaders/PagedLoadScrollListener$1;-><init>(Lorg/zakariya/stickyheaders/PagedLoadScrollListener;)V

    iput-object v0, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->loadCompleteNotifier:Lorg/zakariya/stickyheaders/PagedLoadScrollListener$LoadCompleteNotifier;

    .line 48
    iput-object p1, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->layoutManager:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;

    .line 49
    iput p2, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->visibleThreshold:I

    .line 50
    return-void
.end method

.method static synthetic access$002(Lorg/zakariya/stickyheaders/PagedLoadScrollListener;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/zakariya/stickyheaders/PagedLoadScrollListener;
    .param p1, "x1"    # Z

    .line 9
    iput-boolean p1, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->loading:Z

    return p1
.end method

.method static synthetic access$102(Lorg/zakariya/stickyheaders/PagedLoadScrollListener;I)I
    .registers 2
    .param p0, "x0"    # Lorg/zakariya/stickyheaders/PagedLoadScrollListener;
    .param p1, "x1"    # I

    .line 9
    iput p1, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->previousTotalItemCount:I

    return p1
.end method

.method static synthetic access$202(Lorg/zakariya/stickyheaders/PagedLoadScrollListener;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/zakariya/stickyheaders/PagedLoadScrollListener;
    .param p1, "x1"    # Z

    .line 9
    iput-boolean p1, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->loadExhausted:Z

    return p1
.end method


# virtual methods
.method public abstract onLoadMore(ILorg/zakariya/stickyheaders/PagedLoadScrollListener$LoadCompleteNotifier;)V
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 9
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 60
    iget-boolean v0, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->loading:Z

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->loadExhausted:Z

    if-eqz v0, :cond_9

    goto :goto_3c

    .line 66
    :cond_9
    iget-object v0, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->layoutManager:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;

    invoke-virtual {v0}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getItemCount()I

    move-result v0

    .line 67
    .local v0, "totalItemCount":I
    iget v1, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->previousTotalItemCount:I

    if-ge v0, v1, :cond_19

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->currentPage:I

    .line 69
    iput v0, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->previousTotalItemCount:I

    goto :goto_3b

    .line 70
    :cond_19
    if-lez v0, :cond_3b

    .line 72
    iget-object v1, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->layoutManager:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;

    invoke-virtual {v1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getBottommostChildView()Landroid/view/View;

    move-result-object v1

    .line 73
    .local v1, "lastVisibleItem":Landroid/view/View;
    iget-object v2, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->layoutManager:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;

    invoke-virtual {v2, v1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getViewAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 75
    .local v2, "lastVisibleItemAdapterPosition":I
    iget v3, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->visibleThreshold:I

    add-int/2addr v3, v2

    if-le v3, v0, :cond_3b

    .line 76
    iget v3, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->currentPage:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->currentPage:I

    .line 77
    iput-boolean v4, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->loading:Z

    .line 78
    iget v3, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->currentPage:I

    iget-object v4, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->loadCompleteNotifier:Lorg/zakariya/stickyheaders/PagedLoadScrollListener$LoadCompleteNotifier;

    invoke-virtual {p0, v3, v4}, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->onLoadMore(ILorg/zakariya/stickyheaders/PagedLoadScrollListener$LoadCompleteNotifier;)V

    .line 81
    .end local v1    # "lastVisibleItem":Landroid/view/View;
    .end local v2    # "lastVisibleItemAdapterPosition":I
    :cond_3b
    :goto_3b
    return-void

    .line 61
    .end local v0    # "totalItemCount":I
    :cond_3c
    :goto_3c
    return-void
.end method

###### Class org.zakariya.stickyheaders.PagedLoadScrollListener.AnonymousClass1 (org.zakariya.stickyheaders.PagedLoadScrollListener$1)
.class Lorg/zakariya/stickyheaders/PagedLoadScrollListener$1;
.super Ljava/lang/Object;
.source "PagedLoadScrollListener.java"

# interfaces
.implements Lorg/zakariya/stickyheaders/PagedLoadScrollListener$LoadCompleteNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/PagedLoadScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/zakariya/stickyheaders/PagedLoadScrollListener;


# direct methods
.method constructor <init>(Lorg/zakariya/stickyheaders/PagedLoadScrollListener;)V
    .registers 2
    .param p1, "this$0"    # Lorg/zakariya/stickyheaders/PagedLoadScrollListener;

    .line 34
    iput-object p1, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener$1;->this$0:Lorg/zakariya/stickyheaders/PagedLoadScrollListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyLoadComplete()V
    .registers 3

    .line 37
    iget-object v0, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener$1;->this$0:Lorg/zakariya/stickyheaders/PagedLoadScrollListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->access$002(Lorg/zakariya/stickyheaders/PagedLoadScrollListener;Z)Z

    .line 38
    iget-object v0, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener$1;->this$0:Lorg/zakariya/stickyheaders/PagedLoadScrollListener;

    iget-object v1, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener$1;->this$0:Lorg/zakariya/stickyheaders/PagedLoadScrollListener;

    iget-object v1, v1, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->layoutManager:Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;

    invoke-virtual {v1}, Lorg/zakariya/stickyheaders/StickyHeaderLayoutManager;->getItemCount()I

    move-result v1

    invoke-static {v0, v1}, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->access$102(Lorg/zakariya/stickyheaders/PagedLoadScrollListener;I)I

    .line 39
    return-void
.end method

.method public notifyLoadExhausted()V
    .registers 3

    .line 43
    iget-object v0, p0, Lorg/zakariya/stickyheaders/PagedLoadScrollListener$1;->this$0:Lorg/zakariya/stickyheaders/PagedLoadScrollListener;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/zakariya/stickyheaders/PagedLoadScrollListener;->access$202(Lorg/zakariya/stickyheaders/PagedLoadScrollListener;Z)Z

    .line 44
    return-void
.end method

###### Class org.zakariya.stickyheaders.PagedLoadScrollListener.LoadCompleteNotifier (org.zakariya.stickyheaders.PagedLoadScrollListener$LoadCompleteNotifier)
.class public interface abstract Lorg/zakariya/stickyheaders/PagedLoadScrollListener$LoadCompleteNotifier;
.super Ljava/lang/Object;
.source "PagedLoadScrollListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/zakariya/stickyheaders/PagedLoadScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadCompleteNotifier"
.end annotation


# virtual methods
.method public abstract notifyLoadComplete()V
.end method

.method public abstract notifyLoadExhausted()V
.end method
