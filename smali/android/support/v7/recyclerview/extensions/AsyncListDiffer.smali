###### Class android.support.v7.recyclerview.extensions.AsyncListDiffer (android.support.v7.recyclerview.extensions.AsyncListDiffer)
.class public Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;
.super Ljava/lang/Object;
.source "AsyncListDiffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$MainThreadExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final sMainThreadExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field final mConfig:Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mMainThreadExecutor:Ljava/util/concurrent/Executor;

.field mMaxScheduledGeneration:I

.field private mReadOnlyList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 131
    new-instance v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$MainThreadExecutor;

    invoke-direct {v0}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$MainThreadExecutor;-><init>()V

    sput-object v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/util/ListUpdateCallback;Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;)V
    .registers 4
    .param p1, "listUpdateCallback"    # Landroid/support/v7/util/ListUpdateCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/ListUpdateCallback;",
            "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig<",
            "TT;>;)V"
        }
    .end annotation

    .line 161
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer<TT;>;"
    .local p2, "config":Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;, "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    nop

    .line 180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 162
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

    .line 163
    iput-object p2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mConfig:Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    .line 164
    invoke-virtual {p2}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 165
    invoke-virtual {p2}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    goto :goto_1f

    .line 167
    :cond_1b
    sget-object v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 169
    :goto_1f
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/util/DiffUtil$ItemCallback;)V
    .registers 5
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/util/DiffUtil$ItemCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$Adapter;",
            "Landroid/support/v7/util/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 145
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer<TT;>;"
    .local p2, "diffCallback":Landroid/support/v7/util/DiffUtil$ItemCallback;, "Landroid/support/v7/util/DiffUtil$ItemCallback<TT;>;"
    new-instance v0, Landroid/support/v7/util/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Landroid/support/v7/util/AdapterListUpdateCallback;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v1, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;

    invoke-direct {v1, p2}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;-><init>(Landroid/support/v7/util/DiffUtil$ItemCallback;)V

    .line 146
    invoke-virtual {v1}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->build()Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    move-result-object v1

    .line 145
    invoke-direct {p0, v0, v1}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;-><init>(Landroid/support/v7/util/ListUpdateCallback;Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;)V

    .line 147
    return-void
.end method


# virtual methods
.method public getCurrentList()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 199
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer<TT;>;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    return-object v0
.end method

.method latchList(Ljava/util/List;Landroid/support/v7/util/DiffUtil$DiffResult;)V
    .registers 4
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "diffResult"    # Landroid/support/v7/util/DiffUtil$DiffResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/support/v7/util/DiffUtil$DiffResult;",
            ")V"
        }
    .end annotation

    .line 315
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer<TT;>;"
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mList:Ljava/util/List;

    .line 317
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 318
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

    invoke-virtual {p2, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V

    .line 319
    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .registers 6
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 215
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer<TT;>;"
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mMaxScheduledGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mMaxScheduledGeneration:I

    .line 217
    .local v0, "runGeneration":I
    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mList:Ljava/util/List;

    if-ne p1, v1, :cond_b

    .line 219
    return-void

    .line 223
    :cond_b
    const/4 v1, 0x0

    if-nez p1, :cond_23

    .line 225
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 226
    .local v2, "countRemoved":I
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mList:Ljava/util/List;

    .line 227
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 229
    iget-object v3, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

    invoke-interface {v3, v1, v2}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    .line 230
    return-void

    .line 234
    .end local v2    # "countRemoved":I
    :cond_23
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mList:Ljava/util/List;

    if-nez v2, :cond_39

    .line 235
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mList:Ljava/util/List;

    .line 236
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 238
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mUpdateCallback:Landroid/support/v7/util/ListUpdateCallback;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    .line 239
    return-void

    .line 242
    :cond_39
    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mList:Ljava/util/List;

    .line 243
    .local v1, "oldList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mConfig:Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    invoke-virtual {v2}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->getBackgroundThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    invoke-direct {v3, p0, v1, p1, v0}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;-><init>(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;Ljava/util/List;Ljava/util/List;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 311
    return-void
.end method

###### Class android.support.v7.recyclerview.extensions.AsyncListDiffer.AnonymousClass1 (android.support.v7.recyclerview.extensions.AsyncListDiffer$1)
.class Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;
.super Ljava/lang/Object;
.source "AsyncListDiffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->submitList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

.field final synthetic val$newList:Ljava/util/List;

.field final synthetic val$oldList:Ljava/util/List;

.field final synthetic val$runGeneration:I


# direct methods
.method constructor <init>(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;Ljava/util/List;Ljava/util/List;I)V
    .registers 5
    .param p1, "this$0"    # Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    .line 243
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;"
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    iput-object p2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    iput-object p3, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    iput p4, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$runGeneration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 246
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;"
    new-instance v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;

    invoke-direct {v0, p0}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;-><init>(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;)V

    invoke-static {v0}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    .line 301
    .local v0, "result":Landroid/support/v7/util/DiffUtil$DiffResult;
    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    iget-object v1, v1, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;

    invoke-direct {v2, p0, v0}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;-><init>(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;Landroid/support/v7/util/DiffUtil$DiffResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method

###### Class android.support.v7.recyclerview.extensions.AsyncListDiffer.AnonymousClass1.C00021 (android.support.v7.recyclerview.extensions.AsyncListDiffer$1$1)
.class Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;
.super Landroid/support/v7/util/DiffUtil$Callback;
.source "AsyncListDiffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;


# direct methods
.method constructor <init>(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;)V
    .registers 2
    .param p1, "this$1"    # Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    .line 246
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;"
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .registers 6
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .line 270
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 271
    .local v0, "oldItem":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v1, v1, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 272
    .local v1, "newItem":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_23

    if-eqz v1, :cond_23

    .line 273
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mConfig:Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    invoke-virtual {v2}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->getDiffCallback()Landroid/support/v7/util/DiffUtil$ItemCallback;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/util/DiffUtil$ItemCallback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 275
    :cond_23
    if-nez v0, :cond_29

    if-nez v1, :cond_29

    .line 276
    const/4 v2, 0x1

    return v2

    .line 282
    :cond_29
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public areItemsTheSame(II)Z
    .registers 6
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .line 259
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 260
    .local v0, "oldItem":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v1, v1, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 261
    .local v1, "newItem":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_23

    if-eqz v1, :cond_23

    .line 262
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mConfig:Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    invoke-virtual {v2}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->getDiffCallback()Landroid/support/v7/util/DiffUtil$ItemCallback;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/util/DiffUtil$ItemCallback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 265
    :cond_23
    if-nez v0, :cond_29

    if-nez v1, :cond_29

    const/4 v2, 0x1

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    return v2
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .registers 6
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 288
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 289
    .local v0, "oldItem":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v1, v1, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 290
    .local v1, "newItem":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_23

    if-eqz v1, :cond_23

    .line 291
    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    iget-object v2, v2, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mConfig:Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    invoke-virtual {v2}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->getDiffCallback()Landroid/support/v7/util/DiffUtil$ItemCallback;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/util/DiffUtil$ItemCallback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 297
    :cond_23
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public getNewListSize()I
    .registers 2

    .line 254
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .registers 2

    .line 249
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

###### Class android.support.v7.recyclerview.extensions.AsyncListDiffer.AnonymousClass1.AnonymousClass2 (android.support.v7.recyclerview.extensions.AsyncListDiffer$1$2)
.class Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;
.super Ljava/lang/Object;
.source "AsyncListDiffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

.field final synthetic val$result:Landroid/support/v7/util/DiffUtil$DiffResult;


# direct methods
.method constructor <init>(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;Landroid/support/v7/util/DiffUtil$DiffResult;)V
    .registers 3
    .param p1, "this$1"    # Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    .line 301
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;"
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iput-object p2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->val$result:Landroid/support/v7/util/DiffUtil$DiffResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 304
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;, "Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    iget v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->mMaxScheduledGeneration:I

    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget v1, v1, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$runGeneration:I

    if-ne v0, v1, :cond_19

    .line 305
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v1, v1, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->val$result:Landroid/support/v7/util/DiffUtil$DiffResult;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->latchList(Ljava/util/List;Landroid/support/v7/util/DiffUtil$DiffResult;)V

    .line 307
    :cond_19
    return-void
.end method

###### Class android.support.v7.recyclerview.extensions.AsyncListDiffer.MainThreadExecutor (android.support.v7.recyclerview.extensions.AsyncListDiffer$MainThreadExecutor)
.class Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$MainThreadExecutor;
.super Ljava/lang/Object;
.source "AsyncListDiffer.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadExecutor"
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$MainThreadExecutor;->mHandler:Landroid/os/Handler;

    .line 123
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 126
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$MainThreadExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method
