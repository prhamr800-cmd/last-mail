###### Class android.support.design.widget.BaseTransientBottomBar (android.support.design.widget.BaseTransientBottomBar)
.class public abstract Landroid/support/design/widget/BaseTransientBottomBar;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BaseTransientBottomBar$BehaviorDelegate;,
        Landroid/support/design/widget/BaseTransientBottomBar$Behavior;,
        Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;,
        Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;,
        Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;,
        Landroid/support/design/widget/BaseTransientBottomBar$Duration;,
        Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;,
        Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroid/support/design/widget/BaseTransientBottomBar<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ANIMATION_DURATION:I = 0xfa

.field static final ANIMATION_FADE_DURATION:I = 0xb4

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field static final MSG_DISMISS:I = 0x1

.field static final MSG_SHOW:I

.field private static final SNACKBAR_STYLE_ATTR:[I

.field private static final USE_OFFSET_API:Z

.field static final handler:Landroid/os/Handler;


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private behavior:Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field private final contentViewCallback:Landroid/support/design/snackbar/ContentViewCallback;

.field private final context:Landroid/content/Context;

.field private duration:I

.field final managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

.field private final targetParent:Landroid/view/ViewGroup;

.field protected final view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-lt v0, v3, :cond_10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v0, v3, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    sput-boolean v0, Landroid/support/design/widget/BaseTransientBottomBar;->USE_OFFSET_API:Z

    .line 180
    new-array v0, v1, [I

    sget v1, Landroid/support/design/R$attr;->snackbarStyle:I

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->SNACKBAR_STYLE_ATTR:[I

    .line 183
    new-instance v0, Landroid/os/Handler;

    .line 185
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$1;

    invoke-direct {v2}, Landroid/support/design/widget/BaseTransientBottomBar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    .line 201
    return-void
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/snackbar/ContentViewCallback;)V
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "content"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "contentViewCallback"    # Landroid/support/design/snackbar/ContentViewCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 241
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    new-instance v0, Landroid/support/design/widget/BaseTransientBottomBar$4;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BaseTransientBottomBar$4;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    iput-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    .line 242
    if-eqz p1, :cond_7a

    .line 245
    if-eqz p2, :cond_72

    .line 248
    if-eqz p3, :cond_6a

    .line 252
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    .line 253
    iput-object p3, p0, Landroid/support/design/widget/BaseTransientBottomBar;->contentViewCallback:Landroid/support/design/snackbar/ContentViewCallback;

    .line 254
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 256
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/design/internal/ThemeEnforcement;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 258
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 262
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->getSnackbarBaseLayoutResId()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    iput-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 263
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1, p2}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->addView(Landroid/view/View;)V

    .line 265
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 266
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 269
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 270
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$2;

    invoke-direct {v2, p0}, Landroid/support/design/widget/BaseTransientBottomBar$2;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 287
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$3;

    invoke-direct {v2, p0}, Landroid/support/design/widget/BaseTransientBottomBar$3;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 308
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->context:Landroid/content/Context;

    const-string v2, "accessibility"

    .line 309
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 310
    return-void

    .line 249
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transient bottom bar must have non-null callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transient bottom bar must have non-null content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_7a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transient bottom bar must have non-null parent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Landroid/support/design/widget/BaseTransientBottomBar;)Landroid/support/design/snackbar/ContentViewCallback;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/BaseTransientBottomBar;

    .line 72
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->contentViewCallback:Landroid/support/design/snackbar/ContentViewCallback;

    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 72
    sget-boolean v0, Landroid/support/design/widget/BaseTransientBottomBar;->USE_OFFSET_API:Z

    return v0
.end method

.method private animateViewOut(I)V
    .registers 6
    .param p1, "event"    # I

    .line 612
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 613
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-direct {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->getTranslationYBottom()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 614
    sget-object v1, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 615
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 616
    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$10;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$10;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 628
    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$11;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$11;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 646
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 647
    return-void
.end method

.method private getTranslationYBottom()I
    .registers 4

    .line 650
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getHeight()I

    move-result v0

    .line 651
    .local v0, "translationY":I
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 652
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_16

    .line 653
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    .line 655
    :cond_16
    return v0
.end method


# virtual methods
.method public addCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;
    .registers 3
    .param p1    # Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 406
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    .local p1, "callback":Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;, "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<TB;>;"
    if-nez p1, :cond_3

    .line 407
    return-object p0

    .line 409
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-nez v0, :cond_e

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    .line 412
    :cond_e
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    return-object p0
.end method

.method animateViewIn()V
    .registers 6

    .line 566
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-direct {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->getTranslationYBottom()I

    move-result v0

    .line 567
    .local v0, "translationYBottom":I
    sget-boolean v1, Landroid/support/design/widget/BaseTransientBottomBar;->USE_OFFSET_API:Z

    if-eqz v1, :cond_e

    .line 568
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_14

    .line 570
    :cond_e
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    .line 573
    :goto_14
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 574
    .local v1, "animator":Landroid/animation/ValueAnimator;
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 575
    sget-object v2, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 576
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 577
    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$8;

    invoke-direct {v2, p0}, Landroid/support/design/widget/BaseTransientBottomBar$8;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 590
    new-instance v2, Landroid/support/design/widget/BaseTransientBottomBar$9;

    invoke-direct {v2, p0, v0}, Landroid/support/design/widget/BaseTransientBottomBar$9;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 608
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 609
    return-void
.end method

.method public dismiss()V
    .registers 2

    .line 390
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BaseTransientBottomBar;->dispatchDismiss(I)V

    .line 391
    return-void
.end method

.method protected dispatchDismiss(I)V
    .registers 4
    .param p1, "event"    # I

    .line 394
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/SnackbarManager;->dismiss(Landroid/support/design/widget/SnackbarManager$Callback;I)V

    .line 395
    return-void
.end method

.method public getBehavior()Landroid/support/design/widget/BaseTransientBottomBar$Behavior;
    .registers 2

    .line 368
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->behavior:Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 374
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDuration()I
    .registers 2

    .line 348
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->duration:I

    return v0
.end method

.method protected getNewBehavior()Landroid/support/design/widget/SwipeDismissBehavior;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/design/widget/SwipeDismissBehavior<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 464
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    new-instance v0, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    invoke-direct {v0}, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;-><init>()V

    return-object v0
.end method

.method protected getSnackbarBaseLayoutResId()I
    .registers 2
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 314
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->hasSnackbarStyleAttr()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Landroid/support/design/R$layout;->mtrl_layout_snackbar:I

    goto :goto_b

    :cond_9
    sget v0, Landroid/support/design/R$layout;->design_layout_snackbar:I

    :goto_b
    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 380
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    return-object v0
.end method

.method protected hasSnackbarStyleAttr()Z
    .registers 5

    .line 323
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->context:Landroid/content/Context;

    sget-object v1, Landroid/support/design/widget/BaseTransientBottomBar;->SNACKBAR_STYLE_ATTR:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 324
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 325
    .local v3, "snackbarStyleResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 326
    if-eq v3, v1, :cond_15

    const/4 v2, 0x1

    nop

    :cond_15
    return v2
.end method

.method final hideView(I)V
    .registers 3
    .param p1, "event"    # I

    .line 659
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    .line 660
    invoke-direct {p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar;->animateViewOut(I)V

    goto :goto_15

    .line 663
    :cond_12
    invoke-virtual {p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewHidden(I)V

    .line 665
    :goto_15
    return-void
.end method

.method public isShown()Z
    .registers 3

    .line 438
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->isCurrent(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method public isShownOrQueued()Z
    .registers 3

    .line 446
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->isCurrentOrNext(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method onViewHidden(I)V
    .registers 5
    .param p1, "event"    # I

    .line 681
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->onDismissed(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 682
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-eqz v0, :cond_25

    .line 685
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 686
    .local v0, "callbackCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_15
    if-ltz v1, :cond_25

    .line 687
    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v2, p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;->onDismissed(Ljava/lang/Object;I)V

    .line 686
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 691
    .end local v0    # "callbackCount":I
    .end local v1    # "i":I
    :cond_25
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 692
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_37

    .line 693
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 695
    :cond_37
    return-void
.end method

.method onViewShown()V
    .registers 4

    .line 668
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->onShown(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 669
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-eqz v0, :cond_25

    .line 672
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 673
    .local v0, "callbackCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_15
    if-ltz v1, :cond_25

    .line 674
    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v2, p0}, Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;->onShown(Ljava/lang/Object;)V

    .line 673
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 677
    .end local v0    # "callbackCount":I
    .end local v1    # "i":I
    :cond_25
    return-void
.end method

.method public removeCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;
    .registers 3
    .param p1    # Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 425
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    .local p1, "callback":Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;, "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<TB;>;"
    if-nez p1, :cond_3

    .line 426
    return-object p0

    .line 428
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-nez v0, :cond_8

    .line 430
    return-object p0

    .line 432
    :cond_8
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 433
    return-object p0
.end method

.method public setBehavior(Landroid/support/design/widget/BaseTransientBottomBar$Behavior;)Landroid/support/design/widget/BaseTransientBottomBar;
    .registers 2
    .param p1, "behavior"    # Landroid/support/design/widget/BaseTransientBottomBar$Behavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/BaseTransientBottomBar$Behavior;",
            ")TB;"
        }
    .end annotation

    .line 358
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->behavior:Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    .line 359
    return-object p0
.end method

.method public setDuration(I)Landroid/support/design/widget/BaseTransientBottomBar;
    .registers 2
    .param p1, "duration"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 337
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iput p1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->duration:I

    .line 338
    return-object p0
.end method

.method shouldAnimate()Z
    .registers 5

    .line 699
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    const/4 v0, 0x1

    .line 700
    .local v0, "feedbackFlags":I
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 701
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 702
    .local v1, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-eqz v1, :cond_11

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return v2
.end method

.method public show()V
    .registers 4

    .line 385
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->getDuration()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/SnackbarManager;->show(ILandroid/support/design/widget/SnackbarManager$Callback;)V

    .line 386
    return-void
.end method

.method final showView()V
    .registers 5

    .line 468
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_40

    .line 469
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 471
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_39

    .line 473
    move-object v1, v0

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 475
    .local v1, "clp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->behavior:Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    if-nez v2, :cond_1e

    .line 476
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->getNewBehavior()Landroid/support/design/widget/SwipeDismissBehavior;

    move-result-object v2

    goto :goto_20

    :cond_1e
    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->behavior:Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    .line 478
    .local v2, "behavior":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<+Landroid/view/View;>;"
    :goto_20
    instance-of v3, v2, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    if-eqz v3, :cond_2a

    .line 479
    move-object v3, v2

    check-cast v3, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;

    invoke-static {v3, p0}, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->access$000(Landroid/support/design/widget/BaseTransientBottomBar$Behavior;Landroid/support/design/widget/BaseTransientBottomBar;)V

    .line 481
    :cond_2a
    new-instance v3, Landroid/support/design/widget/BaseTransientBottomBar$5;

    invoke-direct {v3, p0}, Landroid/support/design/widget/BaseTransientBottomBar$5;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/SwipeDismissBehavior;->setListener(Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;)V

    .line 506
    invoke-virtual {v1, v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    .line 508
    const/16 v3, 0x50

    iput v3, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 511
    .end local v1    # "clp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v2    # "behavior":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<+Landroid/view/View;>;"
    :cond_39
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 514
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_40
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$6;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$6;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setOnAttachStateChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;)V

    .line 537
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 538
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 540
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->animateViewIn()V

    goto :goto_6a

    .line 543
    :cond_5c
    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewShown()V

    goto :goto_6a

    .line 547
    :cond_60
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$7;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$7;-><init>(Landroid/support/design/widget/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;)V

    .line 563
    :goto_6a
    return-void
.end method

###### Class android.support.design.widget.BaseTransientBottomBar.AnonymousClass1 (android.support.design.widget.BaseTransientBottomBar$1)
.class final Landroid/support/design/widget/BaseTransientBottomBar$1;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_1a

    .line 197
    const/4 v0, 0x0

    return v0

    .line 194
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/design/widget/BaseTransientBottomBar;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Landroid/support/design/widget/BaseTransientBottomBar;->hideView(I)V

    .line 195
    return v1

    .line 191
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar;->showView()V

    .line 192
    return v1

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_12
        :pswitch_8
    .end packed-switch
.end method

###### Class android.support.design.widget.BaseTransientBottomBar.AnonymousClass10 (android.support.design.widget.BaseTransientBottomBar$10)
.class Landroid/support/design/widget/BaseTransientBottomBar$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar;->animateViewOut(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;I)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/design/widget/BaseTransientBottomBar;

    .line 617
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$10;, "Landroid/support/design/widget/BaseTransientBottomBar$10;"
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$10;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    iput p2, p0, Landroid/support/design/widget/BaseTransientBottomBar$10;->val$event:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 625
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$10;, "Landroid/support/design/widget/BaseTransientBottomBar$10;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$10;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    iget v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$10;->val$event:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewHidden(I)V

    .line 626
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 620
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$10;, "Landroid/support/design/widget/BaseTransientBottomBar$10;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$10;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-static {v0}, Landroid/support/design/widget/BaseTransientBottomBar;->access$100(Landroid/support/design/widget/BaseTransientBottomBar;)Landroid/support/design/snackbar/ContentViewCallback;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb4

    invoke-interface {v0, v1, v2}, Landroid/support/design/snackbar/ContentViewCallback;->animateContentOut(II)V

    .line 621
    return-void
.end method

###### Class android.support.design.widget.BaseTransientBottomBar.AnonymousClass11 (android.support.design.widget.BaseTransientBottomBar$11)
.class Landroid/support/design/widget/BaseTransientBottomBar$11;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar;->animateViewOut(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private previousAnimatedIntValue:I

.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/design/widget/BaseTransientBottomBar;

    .line 629
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$11;, "Landroid/support/design/widget/BaseTransientBottomBar$11;"
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$11;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$11;->previousAnimatedIntValue:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 634
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$11;, "Landroid/support/design/widget/BaseTransientBottomBar$11;"
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 635
    .local v0, "currentAnimatedIntValue":I
    invoke-static {}, Landroid/support/design/widget/BaseTransientBottomBar;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 638
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$11;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v1, v1, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    iget v2, p0, Landroid/support/design/widget/BaseTransientBottomBar$11;->previousAnimatedIntValue:I

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_24

    .line 641
    :cond_1c
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$11;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v1, v1, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    .line 643
    :goto_24
    iput v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$11;->previousAnimatedIntValue:I

    .line 644
    return-void
.end method

###### Class android.support.design.widget.BaseTransientBottomBar.AnonymousClass2 (android.support.design.widget.BaseTransientBottomBar$2)
.class Landroid/support/design/widget/BaseTransientBottomBar$2;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/snackbar/ContentViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/widget/BaseTransientBottomBar;

    .line 272
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$2;, "Landroid/support/design/widget/BaseTransientBottomBar$2;"
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$2;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .line 277
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$2;, "Landroid/support/design/widget/BaseTransientBottomBar$2;"
    nop

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 281
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v3

    .line 277
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 282
    return-object p2
.end method

###### Class android.support.design.widget.BaseTransientBottomBar.AnonymousClass3 (android.support.design.widget.BaseTransientBottomBar$3)
.class Landroid/support/design/widget/BaseTransientBottomBar$3;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/snackbar/ContentViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/widget/BaseTransientBottomBar;

    .line 289
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$3;, "Landroid/support/design/widget/BaseTransientBottomBar$3;"
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$3;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 293
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$3;, "Landroid/support/design/widget/BaseTransientBottomBar$3;"
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 294
    const/high16 v0, 0x100000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 295
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setDismissable(Z)V

    .line 296
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 300
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$3;, "Landroid/support/design/widget/BaseTransientBottomBar$3;"
    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_b

    .line 301
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$3;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar;->dismiss()V

    .line 302
    const/4 v0, 0x1

    return v0

    .line 304
    :cond_b
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

###### Class android.support.design.widget.BaseTransientBottomBar.AnonymousClass4 (android.support.design.widget.BaseTransientBottomBar$4)
.class Landroid/support/design/widget/BaseTransientBottomBar$4;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/support/design/widget/SnackbarManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/widget/BaseTransientBottomBar;

    .line 450
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$4;, "Landroid/support/design/widget/BaseTransientBottomBar$4;"
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$4;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(I)V
    .registers 7
    .param p1, "event"    # I

    .line 458
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$4;, "Landroid/support/design/widget/BaseTransientBottomBar$4;"
    sget-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    sget-object v1, Landroid/support/design/widget/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar$4;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    .line 459
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 458
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 460
    return-void
.end method

.method public show()V
    .registers 5

    .line 453
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$4;, "Landroid/support/design/widget/BaseTransientBottomBar$4;"
    sget-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    sget-object v1, Landroid/support/design/widget/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar$4;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 454
    return-void
.end method

###### Class android.support.design.widget.BaseTransientBottomBar.AnonymousClass5 (android.support.design.widget.BaseTransientBottomBar$5)
.class Landroid/support/design/widget/BaseTransientBottomBar$5;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar;->showView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/widget/BaseTransientBottomBar;

    .line 482
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$5;, "Landroid/support/design/widget/BaseTransientBottomBar$5;"
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$5;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 485
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$5;, "Landroid/support/design/widget/BaseTransientBottomBar$5;"
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$5;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar;->dispatchDismiss(I)V

    .line 487
    return-void
.end method

.method public onDragStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 491
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$5;, "Landroid/support/design/widget/BaseTransientBottomBar$5;"
    packed-switch p1, :pswitch_data_1e

    goto :goto_1c

    .line 495
    :pswitch_4
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$5;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v1, v1, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->pauseTimeout(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 496
    goto :goto_1c

    .line 499
    :pswitch_10
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$5;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v1, v1, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->restoreTimeoutIfPaused(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 500
    nop

    .line 504
    :goto_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_10
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

###### Class android.support.design.widget.BaseTransientBottomBar.AnonymousClass6 (android.support.design.widget.BaseTransientBottomBar$6)
.class Landroid/support/design/widget/BaseTransientBottomBar$6;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar;->showView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/widget/BaseTransientBottomBar;

    .line 515
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$6;, "Landroid/support/design/widget/BaseTransientBottomBar$6;"
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$6;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 517
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$6;, "Landroid/support/design/widget/BaseTransientBottomBar$6;"
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 521
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$6;, "Landroid/support/design/widget/BaseTransientBottomBar$6;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$6;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar;->isShownOrQueued()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 526
    sget-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$6$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$6$1;-><init>(Landroid/support/design/widget/BaseTransientBottomBar$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 534
    :cond_12
    return-void
.end method

###### Class android.support.design.widget.BaseTransientBottomBar.AnonymousClass6.AnonymousClass1 (android.support.design.widget.BaseTransientBottomBar$6$1)
.class Landroid/support/design/widget/BaseTransientBottomBar$6$1;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar$6;->onViewDetachedFromWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/design/widget/BaseTransientBottomBar$6;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar$6;)V
    .registers 2
    .param p1, "this$1"    # Landroid/support/design/widget/BaseTransientBottomBar$6;

    .line 527
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$6$1;, "Landroid/support/design/widget/BaseTransientBottomBar$6$1;"
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$6$1;->this$1:Landroid/support/design/widget/BaseTransientBottomBar$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 530
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$6$1;, "Landroid/support/design/widget/BaseTransientBottomBar$6$1;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$6$1;->this$1:Landroid/support/design/widget/BaseTransientBottomBar$6;

    iget-object v0, v0, Landroid/support/design/widget/BaseTransientBottomBar$6;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewHidden(I)V

    .line 531
    return-void
.end method

###### Class android.support.design.widget.BaseTransientBottomBar.AnonymousClass7 (android.support.design.widget.BaseTransientBottomBar$7)
.class Landroid/support/design/widget/BaseTransientBottomBar$7;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar;->showView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/widget/BaseTransientBottomBar;

    .line 548
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$7;, "Landroid/support/design/widget/BaseTransientBottomBar$7;"
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$7;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIII)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 551
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$7;, "Landroid/support/design/widget/BaseTransientBottomBar$7;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$7;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v0, v0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;)V

    .line 553
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$7;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 555
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$7;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar;->animateViewIn()V

    goto :goto_1b

    .line 558
    :cond_16
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$7;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewShown()V

    .line 560
    :goto_1b
    return-void
.end method

###### Class android.support.design.widget.BaseTransientBottomBar.AnonymousClass8 (android.support.design.widget.BaseTransientBottomBar$8)
.class Landroid/support/design/widget/BaseTransientBottomBar$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar;->animateViewIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/widget/BaseTransientBottomBar;

    .line 578
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$8;, "Landroid/support/design/widget/BaseTransientBottomBar$8;"
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$8;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 587
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$8;, "Landroid/support/design/widget/BaseTransientBottomBar$8;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$8;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewShown()V

    .line 588
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 581
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$8;, "Landroid/support/design/widget/BaseTransientBottomBar$8;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$8;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-static {v0}, Landroid/support/design/widget/BaseTransientBottomBar;->access$100(Landroid/support/design/widget/BaseTransientBottomBar;)Landroid/support/design/snackbar/ContentViewCallback;

    move-result-object v0

    const/16 v1, 0x46

    const/16 v2, 0xb4

    invoke-interface {v0, v1, v2}, Landroid/support/design/snackbar/ContentViewCallback;->animateContentIn(II)V

    .line 583
    return-void
.end method

###### Class android.support.design.widget.BaseTransientBottomBar.AnonymousClass9 (android.support.design.widget.BaseTransientBottomBar$9)
.class Landroid/support/design/widget/BaseTransientBottomBar$9;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar;->animateViewIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private previousAnimatedIntValue:I

.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar;

.field final synthetic val$translationYBottom:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;I)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/design/widget/BaseTransientBottomBar;

    .line 591
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$9;, "Landroid/support/design/widget/BaseTransientBottomBar$9;"
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$9;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    iput p2, p0, Landroid/support/design/widget/BaseTransientBottomBar$9;->val$translationYBottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iget p2, p0, Landroid/support/design/widget/BaseTransientBottomBar$9;->val$translationYBottom:I

    iput p2, p0, Landroid/support/design/widget/BaseTransientBottomBar$9;->previousAnimatedIntValue:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 596
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$9;, "Landroid/support/design/widget/BaseTransientBottomBar$9;"
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 597
    .local v0, "currentAnimatedIntValue":I
    invoke-static {}, Landroid/support/design/widget/BaseTransientBottomBar;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 600
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$9;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v1, v1, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    iget v2, p0, Landroid/support/design/widget/BaseTransientBottomBar$9;->previousAnimatedIntValue:I

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_24

    .line 603
    :cond_1c
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$9;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v1, v1, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    .line 605
    :goto_24
    iput v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$9;->previousAnimatedIntValue:I

    .line 606
    return-void
.end method

###### Class android.support.design.widget.BaseTransientBottomBar.BaseCallback (android.support.design.widget.BaseTransientBottomBar$BaseCallback)
.class public abstract Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback$DismissEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DISMISS_EVENT_ACTION:I = 0x1

.field public static final DISMISS_EVENT_CONSECUTIVE:I = 0x4

.field public static final DISMISS_EVENT_MANUAL:I = 0x3

.field public static final DISMISS_EVENT_SWIPE:I = 0x0

.field public static final DISMISS_EVENT_TIMEOUT:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 79
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;, "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Ljava/lang/Object;I)V
    .registers 3
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I)V"
        }
    .end annotation

    .line 115
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;, "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<TB;>;"
    .local p1, "transientBottomBar":Ljava/lang/Object;, "TB;"
    return-void
.end method

.method public onShown(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 125
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;, "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<TB;>;"
    .local p1, "transientBottomBar":Ljava/lang/Object;, "TB;"
    return-void
.end method

###### Class android.support.design.widget.BaseTransientBottomBar.BaseCallback.DismissEvent (android.support.design.widget.BaseTransientBottomBar$BaseCallback$DismissEvent)
.class public interface abstract annotation Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback$DismissEvent;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "DismissEvent"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class android.support.design.widget.BaseTransientBottomBar.Behavior (android.support.design.widget.BaseTransientBottomBar$Behavior)
.class public Landroid/support/design/widget/BaseTransientBottomBar$Behavior;
.super Landroid/support/design/widget/SwipeDismissBehavior;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/SwipeDismissBehavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final delegate:Landroid/support/design/widget/BaseTransientBottomBar$BehaviorDelegate;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 792
    invoke-direct {p0}, Landroid/support/design/widget/SwipeDismissBehavior;-><init>()V

    .line 793
    new-instance v0, Landroid/support/design/widget/BaseTransientBottomBar$BehaviorDelegate;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BaseTransientBottomBar$BehaviorDelegate;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->delegate:Landroid/support/design/widget/BaseTransientBottomBar$BehaviorDelegate;

    .line 794
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/BaseTransientBottomBar$Behavior;Landroid/support/design/widget/BaseTransientBottomBar;)V
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/BaseTransientBottomBar$Behavior;
    .param p1, "x1"    # Landroid/support/design/widget/BaseTransientBottomBar;

    .line 789
    invoke-direct {p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->setBaseTransientBottomBar(Landroid/support/design/widget/BaseTransientBottomBar;)V

    return-void
.end method

.method private setBaseTransientBottomBar(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/BaseTransientBottomBar<",
            "*>;)V"
        }
    .end annotation

    .line 797
    .local p1, "baseTransientBottomBar":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<*>;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->delegate:Landroid/support/design/widget/BaseTransientBottomBar$BehaviorDelegate;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$BehaviorDelegate;->setBaseTransientBottomBar(Landroid/support/design/widget/BaseTransientBottomBar;)V

    .line 798
    return-void
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 802
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->delegate:Landroid/support/design/widget/BaseTransientBottomBar$BehaviorDelegate;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$BehaviorDelegate;->canSwipeDismissView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 807
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$Behavior;->delegate:Landroid/support/design/widget/BaseTransientBottomBar$BehaviorDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/design/widget/BaseTransientBottomBar$BehaviorDelegate;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 808
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/SwipeDismissBehavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

###### Class android.support.design.widget.BaseTransientBottomBar.BehaviorDelegate (android.support.design.widget.BaseTransientBottomBar$BehaviorDelegate)
.class public Landroid/support/design/widget/BaseTransientBottomBar$BehaviorDelegate;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BehaviorDelegate"
.end annotation


# instance fields
.field private managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/SwipeDismissBehavior<",
            "*>;)V"
        }
    .end annotation

    .line 818
    .local p1, "behavior":Landroid/support/design/widget/SwipeDismissBehavior;, "Landroid/support/design/widget/SwipeDismissBehavior<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v0}, Landroid/support/design/widget/SwipeDismissBehavior;->setStartAlphaSwipeDistance(F)V

    .line 820
    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Landroid/support/design/widget/SwipeDismissBehavior;->setEndAlphaSwipeDistance(F)V

    .line 821
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/SwipeDismissBehavior;->setSwipeDirection(I)V

    .line 822
    return-void
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 829
    instance-of v0, p1, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 833
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_25

    packed-switch v0, :pswitch_data_30

    goto :goto_2f

    .line 837
    :pswitch_b
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 838
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$BehaviorDelegate;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->pauseTimeout(Landroid/support/design/widget/SnackbarManager$Callback;)V

    goto :goto_2f

    .line 843
    :cond_25
    :pswitch_25
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$BehaviorDelegate;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->restoreTimeoutIfPaused(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 844
    nop

    .line 848
    :cond_2f
    :goto_2f
    return-void

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_b
        :pswitch_25
    .end packed-switch
.end method

.method public setBaseTransientBottomBar(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/BaseTransientBottomBar<",
            "*>;)V"
        }
    .end annotation

    .line 825
    .local p1, "baseTransientBottomBar":Landroid/support/design/widget/BaseTransientBottomBar;, "Landroid/support/design/widget/BaseTransientBottomBar<*>;"
    iget-object v0, p1, Landroid/support/design/widget/BaseTransientBottomBar;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    iput-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$BehaviorDelegate;->managerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    .line 826
    return-void
.end method

###### Class android.support.design.widget.BaseTransientBottomBar.ContentViewCallback (android.support.design.widget.BaseTransientBottomBar$ContentViewCallback)
.class public interface abstract Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/support/design/snackbar/ContentViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentViewCallback"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

###### Class android.support.design.widget.BaseTransientBottomBar.Duration (android.support.design.widget.BaseTransientBottomBar$Duration)
.class public interface abstract annotation Landroid/support/design/widget/BaseTransientBottomBar$Duration;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/support/annotation/IntRange;
    from = 0x1L
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Duration"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class android.support.design.widget.BaseTransientBottomBar.OnAttachStateChangeListener (android.support.design.widget.BaseTransientBottomBar$OnAttachStateChangeListener)
.class public interface abstract Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "OnAttachStateChangeListener"
.end annotation


# virtual methods
.method public abstract onViewAttachedToWindow(Landroid/view/View;)V
.end method

.method public abstract onViewDetachedFromWindow(Landroid/view/View;)V
.end method

###### Class android.support.design.widget.BaseTransientBottomBar.OnLayoutChangeListener (android.support.design.widget.BaseTransientBottomBar$OnLayoutChangeListener)
.class public interface abstract Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "OnLayoutChangeListener"
.end annotation


# virtual methods
.method public abstract onLayoutChange(Landroid/view/View;IIII)V
.end method

###### Class android.support.design.widget.BaseTransientBottomBar.SnackbarBaseLayout (android.support.design.widget.BaseTransientBottomBar$SnackbarBaseLayout)
.class public Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;
.super Landroid/widget/FrameLayout;
.source "BaseTransientBottomBar.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SnackbarBaseLayout"
.end annotation


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private onAttachStateChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

.field private onLayoutChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;

.field private final touchExplorationStateChangeListener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 716
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 717
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 720
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 721
    sget-object v0, Landroid/support/design/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 722
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/design/R$styleable;->SnackbarLayout_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 723
    sget v1, Landroid/support/design/R$styleable;->SnackbarLayout_elevation:I

    const/4 v2, 0x0

    .line 724
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    .line 723
    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 726
    :cond_1c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 728
    const-string v1, "accessibility"

    .line 729
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 730
    new-instance v1, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout$1;-><init>(Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;)V

    iput-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->touchExplorationStateChangeListener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    .line 738
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->touchExplorationStateChangeListener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    invoke-static {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z

    .line 740
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setClickableOrFocusableBasedOnAccessibility(Z)V

    .line 741
    return-void
.end method

.method static synthetic access$300(Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;
    .param p1, "x1"    # Z

    .line 707
    invoke-direct {p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setClickableOrFocusableBasedOnAccessibility(Z)V

    return-void
.end method

.method private setClickableOrFocusableBasedOnAccessibility(Z)V
    .registers 3
    .param p1, "touchExplorationEnabled"    # Z

    .line 744
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setClickable(Z)V

    .line 745
    invoke-virtual {p0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setFocusable(Z)V

    .line 746
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .line 758
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 759
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    if-eqz v0, :cond_c

    .line 760
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    invoke-interface {v0, p0}, Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 763
    :cond_c
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 764
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 768
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 769
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    if-eqz v0, :cond_c

    .line 770
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    invoke-interface {v0, p0}, Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    .line 773
    :cond_c
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->touchExplorationStateChangeListener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    invoke-static {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z

    .line 775
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 750
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 751
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->onLayoutChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;

    if-eqz v0, :cond_11

    .line 752
    iget-object v1, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->onLayoutChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIII)V

    .line 754
    :cond_11
    return-void
.end method

.method setOnAttachStateChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    .line 784
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->onAttachStateChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener;

    .line 785
    return-void
.end method

.method setOnLayoutChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;)V
    .registers 2
    .param p1, "onLayoutChangeListener"    # Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;

    .line 779
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->onLayoutChangeListener:Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;

    .line 780
    return-void
.end method

###### Class android.support.design.widget.BaseTransientBottomBar.SnackbarBaseLayout.AnonymousClass1 (android.support.design.widget.BaseTransientBottomBar$SnackbarBaseLayout$1)
.class Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout$1;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 731
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout$1;->this$0:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 734
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout$1;->this$0:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->access$300(Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;Z)V

    .line 735
    return-void
.end method
