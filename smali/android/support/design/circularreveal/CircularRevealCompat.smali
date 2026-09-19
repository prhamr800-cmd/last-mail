###### Class android.support.design.circularreveal.CircularRevealCompat (android.support.design.circularreveal.CircularRevealCompat)
.class public final Landroid/support/design/circularreveal/CircularRevealCompat;
.super Ljava/lang/Object;
.source "CircularRevealCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCircularReveal(Landroid/support/design/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;
    .registers 12
    .param p0, "view"    # Landroid/support/design/circularreveal/CircularRevealWidget;
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "endRadius"    # F

    .line 55
    sget-object v0, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Landroid/util/Property;

    sget-object v1, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    new-instance v4, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v4, p1, p2, p3}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 56
    invoke-static {p0, v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 61
    .local v0, "revealInfoAnimator":Landroid/animation/Animator;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_42

    .line 64
    invoke-interface {p0}, Landroid/support/design/circularreveal/CircularRevealWidget;->getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v1

    .line 65
    .local v1, "revealInfo":Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
    if-eqz v1, :cond_3a

    .line 69
    iget v3, v1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 70
    .local v3, "startRadius":F
    move-object v4, p0

    check-cast v4, Landroid/view/View;

    float-to-int v6, p1

    float-to-int v7, p2

    .line 71
    invoke-static {v4, v6, v7, v3, p3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v4

    .line 73
    .local v4, "circularRevealAnimator":Landroid/animation/Animator;
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 74
    .local v6, "set":Landroid/animation/AnimatorSet;
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v0, v7, v5

    aput-object v4, v7, v2

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 75
    return-object v6

    .line 66
    .end local v3    # "startRadius":F
    .end local v4    # "circularRevealAnimator":Landroid/animation/Animator;
    .end local v6    # "set":Landroid/animation/AnimatorSet;
    :cond_3a
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Caller must set a non-null RevealInfo before calling this."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    .end local v1    # "revealInfo":Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
    :cond_42
    return-object v0
.end method

.method public static createCircularReveal(Landroid/support/design/circularreveal/CircularRevealWidget;FFFF)Landroid/animation/Animator;
    .registers 12
    .param p0, "view"    # Landroid/support/design/circularreveal/CircularRevealWidget;
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F

    .line 94
    sget-object v0, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Landroid/util/Property;

    sget-object v1, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    new-instance v4, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v4, p1, p2, p3}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v4, p1, p2, p4}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 95
    invoke-static {p0, v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 101
    .local v0, "revealInfoAnimator":Landroid/animation/Animator;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_39

    .line 102
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    float-to-int v3, p1

    float-to-int v4, p2

    .line 103
    invoke-static {v1, v3, v4, p3, p4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    .line 105
    .local v1, "circularRevealAnimator":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 106
    .local v3, "set":Landroid/animation/AnimatorSet;
    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 107
    return-object v3

    .line 109
    .end local v1    # "circularRevealAnimator":Landroid/animation/Animator;
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    :cond_39
    return-object v0
.end method

.method public static createCircularRevealListener(Landroid/support/design/circularreveal/CircularRevealWidget;)Landroid/animation/Animator$AnimatorListener;
    .registers 2
    .param p0, "view"    # Landroid/support/design/circularreveal/CircularRevealWidget;

    .line 118
    new-instance v0, Landroid/support/design/circularreveal/CircularRevealCompat$1;

    invoke-direct {v0, p0}, Landroid/support/design/circularreveal/CircularRevealCompat$1;-><init>(Landroid/support/design/circularreveal/CircularRevealWidget;)V

    return-object v0
.end method

###### Class android.support.design.circularreveal.CircularRevealCompat.AnonymousClass1 (android.support.design.circularreveal.CircularRevealCompat$1)
.class final Landroid/support/design/circularreveal/CircularRevealCompat$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularRevealCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/circularreveal/CircularRevealCompat;->createCircularRevealListener(Landroid/support/design/circularreveal/CircularRevealWidget;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/support/design/circularreveal/CircularRevealWidget;


# direct methods
.method constructor <init>(Landroid/support/design/circularreveal/CircularRevealWidget;)V
    .registers 2

    .line 118
    iput-object p1, p0, Landroid/support/design/circularreveal/CircularRevealCompat$1;->val$view:Landroid/support/design/circularreveal/CircularRevealWidget;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 126
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealCompat$1;->val$view:Landroid/support/design/circularreveal/CircularRevealWidget;

    invoke-interface {v0}, Landroid/support/design/circularreveal/CircularRevealWidget;->destroyCircularRevealCache()V

    .line 127
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 121
    iget-object v0, p0, Landroid/support/design/circularreveal/CircularRevealCompat$1;->val$view:Landroid/support/design/circularreveal/CircularRevealWidget;

    invoke-interface {v0}, Landroid/support/design/circularreveal/CircularRevealWidget;->buildCircularRevealCache()V

    .line 122
    return-void
.end method
