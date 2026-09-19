###### Class com.github.jorgecastilloprz.progressarc.animations.ArcAnimationFactory (com.github.jorgecastilloprz.progressarc.animations.ArcAnimationFactory)
.class public Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory;
.super Ljava/lang/Object;
.source "ArcAnimationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;
    }
.end annotation


# static fields
.field public static final COMPLETE_ANIM_DURATION:I = 0x7d0

.field public static final COMPLETE_ROTATE_DURATION:I = 0x2ee0

.field public static final MAXIMUM_SWEEP_ANGLE:I = 0x12c

.field public static final MINIMUM_SWEEP_ANGLE:I = 0x14

.field public static final ROTATE_ANIMATOR_DURATION:I = 0x7d0

.field public static final SWEEP_ANIM_DURATION:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public buildAnimation(Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .registers 6
    .param p1, "type"    # Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;
    .param p2, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p3, "animatorListener"    # Landroid/animation/Animator$AnimatorListener;

    .line 43
    sget-object v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$1;->$SwitchMap$com$github$jorgecastilloprz$progressarc$animations$ArcAnimationFactory$Type:[I

    invoke-virtual {p1}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 54
    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/animations/CompleteArcAnimation;

    invoke-direct {v0, p2, p3}, Lcom/github/jorgecastilloprz/progressarc/animations/CompleteArcAnimation;-><init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_23

    .line 51
    :pswitch_11
    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/animations/ShrinkArcAnimation;

    invoke-direct {v0, p2, p3}, Lcom/github/jorgecastilloprz/progressarc/animations/ShrinkArcAnimation;-><init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 52
    .local v0, "arcAnimation":Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimation;
    goto :goto_23

    .line 48
    .end local v0    # "arcAnimation":Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimation;
    :pswitch_17
    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/animations/GrowArcAnimation;

    invoke-direct {v0, p2, p3}, Lcom/github/jorgecastilloprz/progressarc/animations/GrowArcAnimation;-><init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 49
    .restart local v0    # "arcAnimation":Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimation;
    goto :goto_23

    .line 45
    .end local v0    # "arcAnimation":Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimation;
    :pswitch_1d
    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/animations/RotateArcAnimation;

    invoke-direct {v0, p2}, Lcom/github/jorgecastilloprz/progressarc/animations/RotateArcAnimation;-><init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 46
    .restart local v0    # "arcAnimation":Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimation;
    nop

    .line 57
    :goto_23
    invoke-interface {v0}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimation;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    return-object v1

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_17
        :pswitch_11
    .end packed-switch
.end method

###### Class com.github.jorgecastilloprz.progressarc.animations.ArcAnimationFactory.AnonymousClass1 (com.github.jorgecastilloprz.progressarc.animations.ArcAnimationFactory$1)
.class synthetic Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$1;
.super Ljava/lang/Object;
.source "ArcAnimationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$github$jorgecastilloprz$progressarc$animations$ArcAnimationFactory$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 43
    invoke-static {}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->values()[Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$1;->$SwitchMap$com$github$jorgecastilloprz$progressarc$animations$ArcAnimationFactory$Type:[I

    :try_start_9
    sget-object v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$1;->$SwitchMap$com$github$jorgecastilloprz$progressarc$animations$ArcAnimationFactory$Type:[I

    sget-object v1, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->ROTATE:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    invoke-virtual {v1}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$1;->$SwitchMap$com$github$jorgecastilloprz$progressarc$animations$ArcAnimationFactory$Type:[I

    sget-object v1, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->GROW:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    invoke-virtual {v1}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$1;->$SwitchMap$com$github$jorgecastilloprz$progressarc$animations$ArcAnimationFactory$Type:[I

    sget-object v1, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->SHRINK:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    invoke-virtual {v1}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    return-void
.end method

###### Class com.github.jorgecastilloprz.progressarc.animations.ArcAnimationFactory.Type (com.github.jorgecastilloprz.progressarc.animations.ArcAnimationFactory$Type)
.class public final enum Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;
.super Ljava/lang/Enum;
.source "ArcAnimationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

.field public static final enum COMPLETE:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

.field public static final enum GROW:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

.field public static final enum ROTATE:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

.field public static final enum SHRINK:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 27
    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    const-string v1, "ROTATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->ROTATE:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    const-string v1, "GROW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->GROW:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    const-string v1, "SHRINK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->SHRINK:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    const-string v1, "COMPLETE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->COMPLETE:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    sget-object v1, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->ROTATE:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->GROW:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->SHRINK:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->COMPLETE:Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->$VALUES:[Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    return-object v0
.end method

.method public static values()[Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;
    .registers 1

    .line 26
    sget-object v0, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->$VALUES:[Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    invoke-virtual {v0}, [Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;

    return-object v0
.end method
