###### Class com.digikala.dms.view.custom.ExpandablePanel (com.digikala.dms.view.custom.ExpandablePanel)
.class public Lcom/digikala/dms/view/custom/ExpandablePanel;
.super Landroid/widget/LinearLayout;
.source "ExpandablePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/view/custom/ExpandablePanel$OnExpandListener;,
        Lcom/digikala/dms/view/custom/ExpandablePanel$ExpandAnimation;,
        Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIM_DURATION:I = 0x190


# instance fields
.field private animation:Lcom/digikala/dms/view/custom/ExpandablePanel$ExpandAnimation;

.field private context:Landroid/content/Context;

.field private mAnimationDuration:I

.field private mContent:Landroid/view/View;

.field private mContentContainer:Landroid/view/View;

.field private final mContentContainerId:I

.field private final mContentId:I

.field private mExpanded:Z

.field private mHandle:Landroid/view/View;

.field private final mHandleId:I

.field private mListener:Lcom/digikala/dms/view/custom/ExpandablePanel$OnExpandListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/digikala/dms/view/custom/ExpandablePanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mExpanded:Z

    .line 30
    iput v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mAnimationDuration:I

    .line 34
    new-instance v1, Lcom/digikala/dms/view/custom/ExpandablePanel$ExpandAnimation;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/custom/ExpandablePanel$ExpandAnimation;-><init>(Lcom/digikala/dms/view/custom/ExpandablePanel;)V

    iput-object v1, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->animation:Lcom/digikala/dms/view/custom/ExpandablePanel$ExpandAnimation;

    .line 42
    iput-object p1, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->context:Landroid/content/Context;

    .line 44
    sget-object v1, Lcom/digikala/dms/R$styleable;->ExpandablePanel:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 47
    .local v1, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x190

    :try_start_19
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mAnimationDuration:I

    .line 49
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 50
    .local v2, "handleId":I
    if-eqz v2, :cond_4f

    .line 55
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 56
    .local v3, "contentContainerId":I
    if-eqz v3, :cond_47

    .line 60
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 61
    .local v0, "contentId":I
    if-eqz v0, :cond_3f

    .line 65
    iput v2, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mHandleId:I

    .line 66
    iput v3, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mContentContainerId:I

    .line 67
    iput v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mContentId:I
    :try_end_3a
    .catchall {:try_start_19 .. :try_end_3a} :catchall_57

    .line 69
    .end local v0    # "contentId":I
    .end local v2    # "handleId":I
    .end local v3    # "contentContainerId":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    nop

    .line 72
    return-void

    .line 62
    .restart local v0    # "contentId":I
    .restart local v2    # "handleId":I
    .restart local v3    # "contentContainerId":I
    :cond_3f
    :try_start_3f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The content attribute is required and must refer to a valid child."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    .end local v0    # "contentId":I
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "The content attribute is required and must refer to a valid child."

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    .end local v3    # "contentContainerId":I
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_57
    .catchall {:try_start_3f .. :try_end_57} :catchall_57

    .line 69
    .end local v2    # "handleId":I
    :catchall_57
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static synthetic access$100(Lcom/digikala/dms/view/custom/ExpandablePanel;)Z
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/custom/ExpandablePanel;

    .line 16
    iget-boolean v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mExpanded:Z

    return v0
.end method

.method static synthetic access$102(Lcom/digikala/dms/view/custom/ExpandablePanel;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/custom/ExpandablePanel;
    .param p1, "x1"    # Z

    .line 16
    iput-boolean p1, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mExpanded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/digikala/dms/view/custom/ExpandablePanel;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/custom/ExpandablePanel;

    .line 16
    iget-object v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mContentContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/digikala/dms/view/custom/ExpandablePanel;)Lcom/digikala/dms/view/custom/ExpandablePanel$OnExpandListener;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/custom/ExpandablePanel;

    .line 16
    iget-object v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mListener:Lcom/digikala/dms/view/custom/ExpandablePanel$OnExpandListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/digikala/dms/view/custom/ExpandablePanel;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/custom/ExpandablePanel;

    .line 16
    iget-object v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mHandle:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 4

    .line 84
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 86
    iget v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/custom/ExpandablePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mHandle:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mHandle:Landroid/view/View;

    if-eqz v0, :cond_4a

    .line 91
    iget v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mContentContainerId:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/custom/ExpandablePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mContentContainer:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mContentContainer:Landroid/view/View;

    if-eqz v0, :cond_42

    .line 96
    iget v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mContentId:I

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/custom/ExpandablePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mContent:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mContentContainer:Landroid/view/View;

    if-eqz v0, :cond_3a

    .line 101
    iget-object v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mContentContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mHandle:Landroid/view/View;

    new-instance v1, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;-><init>(Lcom/digikala/dms/view/custom/ExpandablePanel;Lcom/digikala/dms/view/custom/ExpandablePanel$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void

    .line 98
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content container attribute must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnimationDuration(I)V
    .registers 2
    .param p1, "animationDuration"    # I

    .line 79
    iput p1, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mAnimationDuration:I

    .line 80
    return-void
.end method

.method public setOnExpandListener(Lcom/digikala/dms/view/custom/ExpandablePanel$OnExpandListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/digikala/dms/view/custom/ExpandablePanel$OnExpandListener;

    .line 75
    iput-object p1, p0, Lcom/digikala/dms/view/custom/ExpandablePanel;->mListener:Lcom/digikala/dms/view/custom/ExpandablePanel$OnExpandListener;

    .line 76
    return-void
.end method

###### Class com.digikala.dms.view.custom.ExpandablePanel.AnonymousClass1 (com.digikala.dms.view.custom.ExpandablePanel$1)
.class synthetic Lcom/digikala/dms/view/custom/ExpandablePanel$1;
.super Ljava/lang/Object;
.source "ExpandablePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/view/custom/ExpandablePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.digikala.dms.view.custom.ExpandablePanel.ExpandAnimation (com.digikala.dms.view.custom.ExpandablePanel$ExpandAnimation)
.class public Lcom/digikala/dms/view/custom/ExpandablePanel$ExpandAnimation;
.super Ljava/lang/Object;
.source "ExpandablePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/view/custom/ExpandablePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;


# direct methods
.method public constructor <init>(Lcom/digikala/dms/view/custom/ExpandablePanel;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/custom/ExpandablePanel;

    .line 163
    iput-object p1, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$ExpandAnimation;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method

###### Class com.digikala.dms.view.custom.ExpandablePanel.OnExpandListener (com.digikala.dms.view.custom.ExpandablePanel$OnExpandListener)
.class public interface abstract Lcom/digikala/dms/view/custom/ExpandablePanel$OnExpandListener;
.super Ljava/lang/Object;
.source "ExpandablePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/view/custom/ExpandablePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnExpandListener"
.end annotation


# virtual methods
.method public abstract onCollapse(Landroid/view/View;Landroid/view/View;)V
.end method

.method public abstract onExpand(Landroid/view/View;Landroid/view/View;)V
.end method

###### Class com.digikala.dms.view.custom.ExpandablePanel.PanelClicked (com.digikala.dms.view.custom.ExpandablePanel$PanelClicked)
.class Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;
.super Ljava/lang/Object;
.source "ExpandablePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/view/custom/ExpandablePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelClicked"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;


# direct methods
.method private constructor <init>(Lcom/digikala/dms/view/custom/ExpandablePanel;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/digikala/dms/view/custom/ExpandablePanel;Lcom/digikala/dms/view/custom/ExpandablePanel$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/digikala/dms/view/custom/ExpandablePanel;
    .param p2, "x1"    # Lcom/digikala/dms/view/custom/ExpandablePanel$1;

    .line 106
    invoke-direct {p0, p1}, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;-><init>(Lcom/digikala/dms/view/custom/ExpandablePanel;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    invoke-static {v0}, Lcom/digikala/dms/view/custom/ExpandablePanel;->access$100(Lcom/digikala/dms/view/custom/ExpandablePanel;)Z

    move-result v0

    const-wide/16 v1, 0x12c

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_4d

    .line 112
    new-array v0, v3, [I

    iget-object v3, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    invoke-static {v3}, Lcom/digikala/dms/view/custom/ExpandablePanel;->access$200(Lcom/digikala/dms/view/custom/ExpandablePanel;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    aput v3, v0, v5

    aput v5, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 113
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked$1;

    invoke-direct {v3, p0}, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked$1;-><init>(Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 124
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 129
    iget-object v1, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    invoke-static {v1}, Lcom/digikala/dms/view/custom/ExpandablePanel;->access$300(Lcom/digikala/dms/view/custom/ExpandablePanel;)Lcom/digikala/dms/view/custom/ExpandablePanel$OnExpandListener;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 130
    iget-object v1, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    invoke-static {v1}, Lcom/digikala/dms/view/custom/ExpandablePanel;->access$300(Lcom/digikala/dms/view/custom/ExpandablePanel;)Lcom/digikala/dms/view/custom/ExpandablePanel$OnExpandListener;

    move-result-object v1

    iget-object v2, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    invoke-static {v2}, Lcom/digikala/dms/view/custom/ExpandablePanel;->access$400(Lcom/digikala/dms/view/custom/ExpandablePanel;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    invoke-static {v3}, Lcom/digikala/dms/view/custom/ExpandablePanel;->access$200(Lcom/digikala/dms/view/custom/ExpandablePanel;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/digikala/dms/view/custom/ExpandablePanel$OnExpandListener;->onCollapse(Landroid/view/View;Landroid/view/View;)V

    .line 133
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    :cond_4c
    goto :goto_9c

    .line 134
    :cond_4d
    iget-object v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    invoke-static {v0}, Lcom/digikala/dms/view/custom/ExpandablePanel;->access$200(Lcom/digikala/dms/view/custom/ExpandablePanel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    invoke-virtual {v0}, Lcom/digikala/dms/view/custom/ExpandablePanel;->invalidate()V

    .line 139
    new-array v0, v3, [I

    iget-object v3, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    invoke-static {v3}, Lcom/digikala/dms/view/custom/ExpandablePanel;->access$200(Lcom/digikala/dms/view/custom/ExpandablePanel;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    aput v3, v0, v5

    const/16 v3, 0x258

    aput v3, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 140
    .restart local v0    # "anim":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked$2;

    invoke-direct {v3, p0}, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked$2;-><init>(Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 151
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 152
    iget-object v1, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    invoke-static {v1}, Lcom/digikala/dms/view/custom/ExpandablePanel;->access$300(Lcom/digikala/dms/view/custom/ExpandablePanel;)Lcom/digikala/dms/view/custom/ExpandablePanel$OnExpandListener;

    move-result-object v1

    if-eqz v1, :cond_9c

    .line 153
    iget-object v1, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    invoke-static {v1}, Lcom/digikala/dms/view/custom/ExpandablePanel;->access$300(Lcom/digikala/dms/view/custom/ExpandablePanel;)Lcom/digikala/dms/view/custom/ExpandablePanel$OnExpandListener;

    move-result-object v1

    iget-object v2, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    invoke-static {v2}, Lcom/digikala/dms/view/custom/ExpandablePanel;->access$400(Lcom/digikala/dms/view/custom/ExpandablePanel;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    invoke-static {v3}, Lcom/digikala/dms/view/custom/ExpandablePanel;->access$200(Lcom/digikala/dms/view/custom/ExpandablePanel;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/digikala/dms/view/custom/ExpandablePanel$OnExpandListener;->onExpand(Landroid/view/View;Landroid/view/View;)V

    .line 157
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    :cond_9c
    :goto_9c
    iget-object v0, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    iget-object v1, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    invoke-static {v1}, Lcom/digikala/dms/view/custom/ExpandablePanel;->access$100(Lcom/digikala/dms/view/custom/ExpandablePanel;)Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v0, v1}, Lcom/digikala/dms/view/custom/ExpandablePanel;->access$102(Lcom/digikala/dms/view/custom/ExpandablePanel;Z)Z

    .line 158
    return-void
.end method

###### Class com.digikala.dms.view.custom.ExpandablePanel.PanelClicked.AnonymousClass1 (com.digikala.dms.view.custom.ExpandablePanel$PanelClicked$1)
.class Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked$1;
.super Ljava/lang/Object;
.source "ExpandablePanel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;)V
    .registers 2
    .param p1, "this$1"    # Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;

    .line 113
    iput-object p1, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked$1;->this$1:Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 116
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 117
    .local v0, "val":I
    iget-object v1, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked$1;->this$1:Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;

    iget-object v1, v1, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    invoke-static {v1}, Lcom/digikala/dms/view/custom/ExpandablePanel;->access$200(Lcom/digikala/dms/view/custom/ExpandablePanel;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 118
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 119
    iget-object v2, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked$1;->this$1:Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;

    iget-object v2, v2, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    invoke-static {v2}, Lcom/digikala/dms/view/custom/ExpandablePanel;->access$200(Lcom/digikala/dms/view/custom/ExpandablePanel;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    return-void
.end method

###### Class com.digikala.dms.view.custom.ExpandablePanel.PanelClicked.AnonymousClass2 (com.digikala.dms.view.custom.ExpandablePanel$PanelClicked$2)
.class Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked$2;
.super Ljava/lang/Object;
.source "ExpandablePanel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;)V
    .registers 2
    .param p1, "this$1"    # Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;

    .line 140
    iput-object p1, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked$2;->this$1:Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 143
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 144
    .local v0, "val":I
    iget-object v1, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked$2;->this$1:Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;

    iget-object v1, v1, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    invoke-static {v1}, Lcom/digikala/dms/view/custom/ExpandablePanel;->access$200(Lcom/digikala/dms/view/custom/ExpandablePanel;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 145
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    iget-object v2, p0, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked$2;->this$1:Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;

    iget-object v2, v2, Lcom/digikala/dms/view/custom/ExpandablePanel$PanelClicked;->this$0:Lcom/digikala/dms/view/custom/ExpandablePanel;

    invoke-static {v2}, Lcom/digikala/dms/view/custom/ExpandablePanel;->access$200(Lcom/digikala/dms/view/custom/ExpandablePanel;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    return-void
.end method
