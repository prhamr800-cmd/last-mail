###### Class android.support.transition.ImageViewUtils (android.support.transition.ImageViewUtils)
.class Landroid/support/transition/ImageViewUtils;
.super Ljava/lang/Object;
.source "ImageViewUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageViewUtils"

.field private static sAnimateTransformMethod:Ljava/lang/reflect/Method;

.field private static sAnimateTransformMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method static animateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .registers 5
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_a

    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_2a

    .line 59
    :cond_a
    invoke-static {}, Landroid/support/transition/ImageViewUtils;->fetchAnimateTransformMethod()V

    .line 60
    sget-object v0, Landroid/support/transition/ImageViewUtils;->sAnimateTransformMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2a

    .line 62
    :try_start_11
    sget-object v0, Landroid/support/transition/ImageViewUtils;->sAnimateTransformMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_1c} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_1c} :catch_1d

    goto :goto_29

    .line 65
    :catch_1d
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 63
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_28
    move-exception v0

    .line 67
    :goto_29
    nop

    .line 70
    :cond_2a
    :goto_2a
    return-void
.end method

.method private static fetchAnimateTransformMethod()V
    .registers 6

    .line 73
    sget-boolean v0, Landroid/support/transition/ImageViewUtils;->sAnimateTransformMethodFetched:Z

    if-nez v0, :cond_26

    .line 75
    const/4 v0, 0x1

    :try_start_5
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "animateTransform"

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Matrix;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ImageViewUtils;->sAnimateTransformMethod:Ljava/lang/reflect/Method;

    .line 77
    sget-object v1, Landroid/support/transition/ImageViewUtils;->sAnimateTransformMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1b} :catch_1c

    .line 80
    goto :goto_24

    .line 78
    :catch_1c
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "ImageViewUtils"

    const-string v3, "Failed to retrieve animateTransform method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_24
    sput-boolean v0, Landroid/support/transition/ImageViewUtils;->sAnimateTransformMethodFetched:Z

    .line 83
    :cond_26
    return-void
.end method

.method static reserveEndAnimateTransform(Landroid/widget/ImageView;Landroid/animation/Animator;)V
    .registers 4
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_e

    .line 91
    new-instance v0, Landroid/support/transition/ImageViewUtils$1;

    invoke-direct {v0, p0}, Landroid/support/transition/ImageViewUtils$1;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 106
    :cond_e
    return-void
.end method

.method static startAnimateTransform(Landroid/widget/ImageView;)V
    .registers 4
    .param p0, "view"    # Landroid/widget/ImageView;

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_27

    .line 41
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    .line 42
    .local v0, "scaleType":Landroid/widget/ImageView$ScaleType;
    sget v1, Landroid/support/transition/R$id;->save_scale_type:I

    invoke-virtual {p0, v1, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 43
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_1d

    .line 44
    sget v1, Landroid/support/transition/R$id;->save_image_matrix:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_22

    .line 46
    :cond_1d
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 48
    :goto_22
    sget-object v1, Landroid/support/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 50
    .end local v0    # "scaleType":Landroid/widget/ImageView$ScaleType;
    :cond_27
    return-void
.end method

###### Class android.support.transition.ImageViewUtils.AnonymousClass1 (android.support.transition.ImageViewUtils$1)
.class final Landroid/support/transition/ImageViewUtils$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ImageViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ImageViewUtils;->reserveEndAnimateTransform(Landroid/widget/ImageView;Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    .line 91
    iput-object p1, p0, Landroid/support/transition/ImageViewUtils$1;->val$view:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 94
    iget-object v0, p0, Landroid/support/transition/ImageViewUtils$1;->val$view:Landroid/widget/ImageView;

    sget v1, Landroid/support/transition/R$id;->save_scale_type:I

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView$ScaleType;

    .line 96
    .local v0, "scaleType":Landroid/widget/ImageView$ScaleType;
    iget-object v1, p0, Landroid/support/transition/ImageViewUtils$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 97
    iget-object v1, p0, Landroid/support/transition/ImageViewUtils$1;->val$view:Landroid/widget/ImageView;

    sget v2, Landroid/support/transition/R$id;->save_scale_type:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 98
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_31

    .line 99
    iget-object v1, p0, Landroid/support/transition/ImageViewUtils$1;->val$view:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/transition/ImageViewUtils$1;->val$view:Landroid/widget/ImageView;

    sget v4, Landroid/support/transition/R$id;->save_image_matrix:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 100
    iget-object v1, p0, Landroid/support/transition/ImageViewUtils$1;->val$view:Landroid/widget/ImageView;

    sget v2, Landroid/support/transition/R$id;->save_image_matrix:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 102
    :cond_31
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 103
    return-void
.end method
