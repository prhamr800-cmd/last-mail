###### Class io.github.francoiscampbell.circlelayout.CircleLayout (io.github.francoiscampbell.circlelayout.CircleLayout)
.class public final Lio/github/francoiscampbell/circlelayout/CircleLayout;
.super Landroid/view/ViewGroup;
.source "CircleLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/francoiscampbell/circlelayout/CircleLayout$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u000b\n\u0002\u0010\u0006\n\u0002\u0008\u0003\u0018\u0000 C2\u00020\u0001:\u0001CB/\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u000e\u0010*\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u0007J\u001e\u0010,\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u00072\u0006\u0010.\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u0007J>\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\'\u001a\u00020\u00072\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001505H\u0002J\u0008\u00106\u001a\u000201H\u0014J0\u00107\u001a\u0002012\u0006\u00108\u001a\u00020$2\u0006\u00109\u001a\u00020\u00072\u0006\u0010:\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\u00072\u0006\u0010<\u001a\u00020\u0007H\u0016J\u0018\u0010=\u001a\u0002012\u0006\u0010>\u001a\u00020\u00072\u0006\u0010?\u001a\u00020\u0007H\u0016J\u0016\u0010@\u001a\u00020A2\u0006\u0010\'\u001a\u00020A2\u0006\u0010\u000c\u001a\u00020AJ\u0016\u0010B\u001a\u00020A2\u0006\u0010\'\u001a\u00020A2\u0006\u0010\u000c\u001a\u00020AR$\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010R(\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u001e\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0011\u0010#\u001a\u00020$8F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R$\u0010\'\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010 \"\u0004\u0008)\u0010\"\u00a8\u0006D"
    }
    d2 = {
        "Lio/github/francoiscampbell/circlelayout/CircleLayout;",
        "Landroid/view/ViewGroup;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "value",
        "",
        "angle",
        "getAngle",
        "()F",
        "setAngle",
        "(F)V",
        "angleOffset",
        "getAngleOffset",
        "setAngleOffset",
        "newCenterView",
        "Landroid/view/View;",
        "centerView",
        "getCenterView",
        "()Landroid/view/View;",
        "setCenterView",
        "(Landroid/view/View;)V",
        "centerViewId",
        "childrenToLayout",
        "Ljava/util/LinkedList;",
        "direction",
        "getDirection",
        "()I",
        "setDirection",
        "(I)V",
        "hasCenterView",
        "",
        "getHasCenterView",
        "()Z",
        "radius",
        "getRadius",
        "setRadius",
        "getEqualAngle",
        "numSlices",
        "getLayoutRadius",
        "outerRadius",
        "maxChildRadius",
        "minChildRadius",
        "layoutChildrenAtAngle",
        "",
        "cx",
        "cy",
        "angleIncrement",
        "",
        "onFinishInflate",
        "onLayout",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "polarToX",
        "",
        "polarToY",
        "Companion",
        "circlelayout-compileReleaseKotlin"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# static fields
.field public static final CLOCKWISE:I = -0x1

.field public static final COUNTER_CLOCKWISE:I = 0x1

.field public static final Companion:Lio/github/francoiscampbell/circlelayout/CircleLayout$Companion;

.field public static final FITS_LARGEST_CHILD:I = -0x2

.field public static final FITS_SMALLEST_CHILD:I = -0x1


# instance fields
.field private angle:F

.field private angleOffset:F

.field private centerView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private centerViewId:I

.field private final childrenToLayout:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private direction:I

.field private radius:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/github/francoiscampbell/circlelayout/CircleLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/francoiscampbell/circlelayout/CircleLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->Companion:Lio/github/francoiscampbell/circlelayout/CircleLayout$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/github/francoiscampbell/circlelayout/CircleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lio/github/francoiscampbell/circlelayout/CircleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lio/github/francoiscampbell/circlelayout/CircleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    nop

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    sget v0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->FITS_LARGEST_CHILD:I

    iput v0, p0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->radius:I

    .line 55
    sget v0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->COUNTER_CLOCKWISE:I

    iput v0, p0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->direction:I

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->childrenToLayout:Ljava/util/LinkedList;

    .line 86
    sget-object v0, Lio/github/francoiscampbell/circlelayout/R$styleable;->CircleLayout:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v1, Lio/github/francoiscampbell/circlelayout/R$styleable;->CircleLayout_cl_centerView:I

    sget v2, Landroid/view/ViewGroup;->NO_ID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->centerViewId:I

    .line 88
    sget v1, Lio/github/francoiscampbell/circlelayout/R$styleable;->CircleLayout_cl_angle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->setAngle(F)V

    .line 89
    sget v1, Lio/github/francoiscampbell/circlelayout/R$styleable;->CircleLayout_cl_angleOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->setAngleOffset(F)V

    .line 90
    sget v1, Lio/github/francoiscampbell/circlelayout/R$styleable;->CircleLayout_cl_radius:I

    sget v2, Lio/github/francoiscampbell/circlelayout/CircleLayout;->FITS_LARGEST_CHILD:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->setRadius(I)V

    .line 91
    sget v1, Lio/github/francoiscampbell/circlelayout/R$styleable;->CircleLayout_cl_direction:I

    sget v2, Lio/github/francoiscampbell/circlelayout/CircleLayout;->COUNTER_CLOCKWISE:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->setDirection(I)V

    .line 92
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .end local v0    # "attributes":Landroid/content/res/TypedArray;
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_7

    .line 17
    const/4 p2, 0x0

    check-cast p2, Landroid/util/AttributeSet;

    :cond_7
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_d

    .line 18
    const/4 p3, 0x0

    :cond_d
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_12

    .line 19
    const/4 p4, 0x0

    :cond_12
    invoke-direct {p0, p1, p2, p3, p4}, Lio/github/francoiscampbell/circlelayout/CircleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final layoutChildrenAtAngle(IIFFILjava/util/List;)V
    .registers 25
    .param p1, "cx"    # I
    .param p2, "cy"    # I
    .param p3, "angleIncrement"    # F
    .param p4, "angleOffset"    # F
    .param p5, "radius"    # I
    .param p6, "childrenToLayout"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIFFI",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 172
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p3

    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 173
    .local v3, "angleIncrementRad":D
    move/from16 v5, p4

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 174
    .local v6, "currentAngleRad":D
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_5b

    const/4 v9, 0x0

    .line 175
    .local v9, "i":I
    :goto_1b
    move-object/from16 v10, p6

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 176
    .local v11, "child":Landroid/view/View;
    int-to-double v12, v1

    invoke-virtual {v0, v12, v13, v6, v7}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->polarToX(DD)D

    move-result-wide v12

    .line 177
    .local v12, "childCenterX":D
    int-to-double v14, v1

    invoke-virtual {v0, v14, v15, v6, v7}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->polarToY(DD)D

    move-result-wide v14

    .line 178
    .local v14, "childCenterY":D
    move/from16 v1, p1

    move/from16 v16, v8

    move/from16 v17, v9

    .end local v9    # "i":I
    .local v17, "i":I
    int-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v12

    double-to-int v8, v8

    move/from16 v9, p2

    int-to-double v1, v9

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v14

    double-to-int v1, v1

    invoke-static {v11, v8, v1}, Lio/github/francoiscampbell/circlelayout/ViewExtensionsKt;->layoutFromCenter(Landroid/view/View;II)V

    .line 180
    iget v1, v0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->direction:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    add-double/2addr v6, v1

    .line 174
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "childCenterX":D
    .end local v14    # "childCenterY":D
    move/from16 v8, v16

    move/from16 v1, v17

    .end local v17    # "i":I
    .local v1, "i":I
    if-eq v1, v8, :cond_5f

    add-int/lit8 v1, v1, 0x1

    move v9, v1

    move/from16 v1, p5

    move/from16 v2, p3

    goto :goto_1b

    .line 182
    .end local v1    # "i":I
    :cond_5b
    move/from16 v9, p2

    move-object/from16 v10, p6

    :cond_5f
    return-void
.end method


# virtual methods
.method public final getAngle()F
    .registers 2

    .line 28
    iget v0, p0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->angle:F

    return v0
.end method

.method public final getAngleOffset()F
    .registers 2

    .line 37
    iget v0, p0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->angleOffset:F

    return v0
.end method

.method public final getCenterView()Landroid/view/View;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 72
    iget-object v0, p0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->centerView:Landroid/view/View;

    return-object v0
.end method

.method public final getDirection()I
    .registers 2

    .line 55
    iget v0, p0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->direction:I

    return v0
.end method

.method public final getEqualAngle(I)F
    .registers 4
    .param p1, "numSlices"    # I

    .line 160
    if-eqz p1, :cond_4

    move v0, p1

    goto :goto_5

    :cond_4
    const/4 v0, 0x1

    :goto_5
    int-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v1, v0

    return v1
.end method

.method public final getHasCenterView()Z
    .registers 4

    .line 65
    iget-object v0, p0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->centerView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    iget-object v0, p0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->centerView:Landroid/view/View;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    sget v2, Landroid/view/ViewGroup;->GONE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method public final getLayoutRadius(III)I
    .registers 6
    .param p1, "outerRadius"    # I
    .param p2, "maxChildRadius"    # I
    .param p3, "minChildRadius"    # I

    .line 148
    iget v0, p0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->radius:I

    .line 149
    sget v1, Lio/github/francoiscampbell/circlelayout/CircleLayout;->FITS_LARGEST_CHILD:I

    if-ne v0, v1, :cond_9

    sub-int v0, p1, p2

    goto :goto_16

    .line 150
    :cond_9
    sget v1, Lio/github/francoiscampbell/circlelayout/CircleLayout;->FITS_SMALLEST_CHILD:I

    if-ne v0, v1, :cond_10

    sub-int v0, p1, p3

    goto :goto_16

    .line 151
    :cond_10
    iget v0, p0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->radius:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 148
    :goto_16
    return v0
.end method

.method public final getRadius()I
    .registers 2

    .line 46
    iget v0, p0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->radius:I

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 96
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 98
    iget v0, p0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->centerViewId:I

    invoke-virtual {p0, v0}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->setCenterView(Landroid/view/View;)V

    .line 99
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 27
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 107
    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->getLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->getPaddingLeft()I

    move-result v1

    add-int v8, v0, v1

    .line 108
    .local v8, "displayAreaLeft":I
    invoke-virtual/range {p0 .. p0}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->getTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->getPaddingTop()I

    move-result v1

    add-int v9, v0, v1

    .line 109
    .local v9, "displayAreaTop":I
    invoke-virtual/range {p0 .. p0}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->getRight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->getPaddingRight()I

    move-result v1

    sub-int v10, v0, v1

    .line 110
    .local v10, "displayAreaRight":I
    invoke-virtual/range {p0 .. p0}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->getBottom()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->getPaddingBottom()I

    move-result v1

    sub-int v11, v0, v1

    .line 112
    .local v11, "displayAreaBottom":I
    sub-int v12, v10, v8

    .line 113
    .local v12, "displayAreaWidth":I
    sub-int v13, v11, v9

    .line 114
    .local v13, "displayAreaHeight":I
    invoke-virtual/range {p0 .. p0}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->getPaddingLeft()I

    move-result v0

    div-int/lit8 v1, v12, 0x2

    add-int v14, v0, v1

    .line 115
    .local v14, "centerX":I
    invoke-virtual/range {p0 .. p0}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->getPaddingRight()I

    move-result v0

    div-int/lit8 v1, v13, 0x2

    add-int v15, v0, v1

    .line 116
    .local v15, "centerY":I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 118
    .local v6, "outerRadius":I
    iget-object v0, v7, Lio/github/francoiscampbell/circlelayout/CircleLayout;->centerView:Landroid/view/View;

    if-eqz v0, :cond_4b

    invoke-static {v0, v14, v15}, Lio/github/francoiscampbell/circlelayout/ViewExtensionsKt;->layoutFromCenter(Landroid/view/View;II)V

    .line 120
    :cond_4b
    move v0, v6

    .line 121
    .local v0, "minChildRadius":I
    const/4 v1, 0x0

    .line 122
    .local v1, "maxChildRadius":I
    iget-object v2, v7, Lio/github/francoiscampbell/circlelayout/CircleLayout;->childrenToLayout:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 123
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_9a

    .line 124
    .local v2, "i":I
    :goto_5b
    invoke-virtual {v7, v2}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 125
    .local v4, "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->getHasCenterView()Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    move/from16 v16, v8

    .end local v8    # "displayAreaLeft":I
    .local v16, "displayAreaLeft":I
    iget v8, v7, Lio/github/francoiscampbell/circlelayout/CircleLayout;->centerViewId:I

    if-eq v5, v8, :cond_7a

    goto :goto_72

    .end local v16    # "displayAreaLeft":I
    .restart local v8    # "displayAreaLeft":I
    :cond_70
    move/from16 v16, v8

    .end local v8    # "displayAreaLeft":I
    .restart local v16    # "displayAreaLeft":I
    :goto_72
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    sget v8, Landroid/view/ViewGroup;->GONE:I

    if-ne v5, v8, :cond_7b

    .line 126
    :cond_7a
    goto :goto_90

    .line 128
    :cond_7b
    iget-object v5, v7, Lio/github/francoiscampbell/circlelayout/CircleLayout;->childrenToLayout:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-static {v4}, Lio/github/francoiscampbell/circlelayout/ViewExtensionsKt;->getRadius(Landroid/view/View;)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 130
    invoke-static {v4}, Lio/github/francoiscampbell/circlelayout/ViewExtensionsKt;->getRadius(Landroid/view/View;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 123
    .end local v4    # "child":Landroid/view/View;
    :goto_90
    if-eq v2, v3, :cond_97

    add-int/lit8 v2, v2, 0x1

    move/from16 v8, v16

    goto :goto_5b

    .line 133
    .end local v2    # "i":I
    :cond_97
    move v5, v0

    move v8, v1

    goto :goto_9e

    .end local v16    # "displayAreaLeft":I
    .restart local v8    # "displayAreaLeft":I
    :cond_9a
    move/from16 v16, v8

    move v5, v0

    move v8, v1

    .end local v0    # "minChildRadius":I
    .end local v1    # "maxChildRadius":I
    .local v5, "minChildRadius":I
    .local v8, "maxChildRadius":I
    .restart local v16    # "displayAreaLeft":I
    :goto_9e
    iget v0, v7, Lio/github/francoiscampbell/circlelayout/CircleLayout;->angle:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-eqz v0, :cond_a9

    iget v0, v7, Lio/github/francoiscampbell/circlelayout/CircleLayout;->angle:F

    :goto_a7
    move v3, v0

    goto :goto_b4

    :cond_a9
    iget-object v0, v7, Lio/github/francoiscampbell/circlelayout/CircleLayout;->childrenToLayout:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {v7, v0}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->getEqualAngle(I)F

    move-result v0

    goto :goto_a7

    .line 136
    .local v3, "angleIncrement":F
    :goto_b4
    invoke-virtual {v7, v6, v8, v5}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->getLayoutRadius(III)I

    move-result v17

    .line 138
    .local v17, "layoutRadius":I
    iget v4, v7, Lio/github/francoiscampbell/circlelayout/CircleLayout;->angleOffset:F

    iget-object v0, v7, Lio/github/francoiscampbell/circlelayout/CircleLayout;->childrenToLayout:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/List;

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v19, v5

    .end local v5    # "minChildRadius":I
    .local v19, "minChildRadius":I
    move/from16 v5, v17

    move/from16 v20, v6

    .end local v6    # "outerRadius":I
    .local v20, "outerRadius":I
    move-object/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->layoutChildrenAtAngle(IIFFILjava/util/List;)V

    .line 139
    return-void
.end method

.method public onMeasure(II)V
    .registers 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 102
    invoke-virtual {p0, p1, p2}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->measureChildren(II)V

    .line 103
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 104
    return-void
.end method

.method public final polarToX(DD)D
    .registers 7
    .param p1, "radius"    # D
    .param p3, "angle"    # D

    .line 190
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v0, v0, p1

    return-wide v0
.end method

.method public final polarToY(DD)D
    .registers 7
    .param p1, "radius"    # D
    .param p3, "angle"    # D

    .line 198
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, p1

    return-wide v0
.end method

.method public final setAngle(F)V
    .registers 3
    .param p1, "value"    # F

    .line 30
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v0, p1, v0

    iput v0, p0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->angle:F

    .line 31
    invoke-virtual {p0}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->requestLayout()V

    .line 32
    return-void
.end method

.method public final setAngleOffset(F)V
    .registers 3
    .param p1, "value"    # F

    .line 39
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v0, p1, v0

    iput v0, p0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->angleOffset:F

    .line 40
    invoke-virtual {p0}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->requestLayout()V

    .line 41
    return-void
.end method

.method public final setCenterView(Landroid/view/View;)V
    .registers 5
    .param p1, "newCenterView"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 74
    if-eqz p1, :cond_2c

    invoke-virtual {p0, p1}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    goto :goto_2c

    .line 75
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View with ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a child of this layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 77
    :cond_2c
    :goto_2c
    iput-object p1, p0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->centerView:Landroid/view/View;

    .line 78
    if-eqz p1, :cond_35

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    goto :goto_37

    :cond_35
    sget v0, Landroid/view/ViewGroup;->NO_ID:I

    :goto_37
    iput v0, p0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->centerViewId:I

    .line 79
    invoke-virtual {p0}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->requestLayout()V

    .line 80
    return-void
.end method

.method public final setDirection(I)V
    .registers 3
    .param p1, "value"    # I

    .line 57
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->direction:I

    .line 58
    invoke-virtual {p0}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->requestLayout()V

    .line 59
    return-void
.end method

.method public final setRadius(I)V
    .registers 2
    .param p1, "value"    # I

    .line 48
    iput p1, p0, Lio/github/francoiscampbell/circlelayout/CircleLayout;->radius:I

    .line 49
    invoke-virtual {p0}, Lio/github/francoiscampbell/circlelayout/CircleLayout;->requestLayout()V

    .line 50
    return-void
.end method

###### Class io.github.francoiscampbell.circlelayout.CircleLayout.Companion (io.github.francoiscampbell.circlelayout.CircleLayout$Companion)
.class public final Lio/github/francoiscampbell/circlelayout/CircleLayout$Companion;
.super Ljava/lang/Object;
.source "CircleLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/francoiscampbell/circlelayout/CircleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lio/github/francoiscampbell/circlelayout/CircleLayout$Companion;",
        "",
        "()V",
        "CLOCKWISE",
        "",
        "COUNTER_CLOCKWISE",
        "FITS_LARGEST_CHILD",
        "FITS_SMALLEST_CHILD",
        "circlelayout-compileReleaseKotlin"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 201
    invoke-direct {p0}, Lio/github/francoiscampbell/circlelayout/CircleLayout$Companion;-><init>()V

    return-void
.end method
