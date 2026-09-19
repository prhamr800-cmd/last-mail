###### Class android.support.transition.ChangeBounds (android.support.transition.ChangeBounds)
.class public Landroid/support/transition/ChangeBounds;
.super Landroid/support/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/ChangeBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:changeBounds:clip"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static final TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static sRectEvaluator:Landroid/support/transition/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mResizeClip:Z

.field private mTempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android:changeBounds:bounds"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android:changeBounds:clip"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "android:changeBounds:parent"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "android:changeBounds:windowX"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "android:changeBounds:windowY"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/support/transition/ChangeBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    .line 86
    new-instance v0, Landroid/support/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 99
    new-instance v0, Landroid/support/transition/ChangeBounds$3;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    .line 112
    new-instance v0, Landroid/support/transition/ChangeBounds$4;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    .line 129
    new-instance v0, Landroid/support/transition/ChangeBounds$5;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    .line 146
    new-instance v0, Landroid/support/transition/ChangeBounds$6;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Landroid/support/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    .line 167
    new-instance v0, Landroid/support/transition/RectEvaluator;

    invoke-direct {v0}, Landroid/support/transition/RectEvaluator;-><init>()V

    sput-object v0, Landroid/support/transition/ChangeBounds;->sRectEvaluator:Landroid/support/transition/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 169
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    .line 165
    iput-boolean v0, p0, Landroid/support/transition/ChangeBounds;->mReparent:Z

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 173
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    .line 165
    iput-boolean v0, p0, Landroid/support/transition/ChangeBounds;->mReparent:Z

    .line 175
    sget-object v1, Landroid/support/transition/Styleable;->CHANGE_BOUNDS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 176
    .local v1, "a":Landroid/content/res/TypedArray;
    move-object v2, p2

    check-cast v2, Landroid/content/res/XmlResourceParser;

    const-string v3, "resizeClip"

    invoke-static {v1, v2, v3, v0, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v0

    .line 178
    .local v0, "resizeClip":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    invoke-virtual {p0, v0}, Landroid/support/transition/ChangeBounds;->setResizeClip(Z)V

    .line 180
    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .registers 10
    .param p1, "values"    # Landroid/support/transition/TransitionValues;

    .line 217
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 219
    .local v0, "view":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_77

    .line 220
    :cond_14
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:bounds"

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 221
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 220
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:parent"

    iget-object v3, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-boolean v1, p0, Landroid/support/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_68

    .line 224
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 225
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowX"

    iget-object v3, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowY"

    iget-object v3, p0, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_68
    iget-boolean v1, p0, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    if-eqz v1, :cond_77

    .line 229
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:clip"

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_77
    return-void
.end method

.method private parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .registers 8
    .param p1, "startParent"    # Landroid/view/View;
    .param p2, "endParent"    # Landroid/view/View;

    .line 245
    const/4 v0, 0x1

    .line 246
    .local v0, "parentMatches":Z
    iget-boolean v1, p0, Landroid/support/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_1a

    .line 247
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/support/transition/ChangeBounds;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v2

    .line 248
    .local v2, "endValues":Landroid/support/transition/TransitionValues;
    const/4 v3, 0x0

    if-nez v2, :cond_13

    .line 249
    if-ne p1, p2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    move v0, v1

    goto :goto_1a

    .line 251
    :cond_13
    iget-object v4, v2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, v4, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    move v0, v1

    .line 254
    .end local v2    # "endValues":Landroid/support/transition/TransitionValues;
    :cond_1a
    :goto_1a
    return v0
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 241
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeBounds;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 242
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 236
    invoke-direct {p0, p1}, Landroid/support/transition/ChangeBounds;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 237
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 56
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 261
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    if-eqz v9, :cond_38c

    if-nez v10, :cond_c

    goto/16 :goto_38c

    .line 264
    :cond_c
    iget-object v11, v9, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    .line 265
    .local v11, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v12, v10, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    .line 266
    .local v12, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "android:changeBounds:parent"

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/view/ViewGroup;

    .line 267
    .local v13, "startParent":Landroid/view/ViewGroup;
    const-string v1, "android:changeBounds:parent"

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/view/ViewGroup;

    .line 268
    .local v14, "endParent":Landroid/view/ViewGroup;
    if-eqz v13, :cond_37f

    if-nez v14, :cond_33

    .line 269
    move-object/from16 v15, p1

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object v12, v10

    goto/16 :goto_38a

    .line 271
    :cond_33
    iget-object v15, v10, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 272
    .local v15, "view":Landroid/view/View;
    invoke-direct {v8, v13, v14}, Landroid/support/transition/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2a9

    .line 273
    iget-object v1, v9, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/graphics/Rect;

    .line 274
    .local v6, "startBounds":Landroid/graphics/Rect;
    iget-object v1, v10, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/graphics/Rect;

    .line 275
    .local v5, "endBounds":Landroid/graphics/Rect;
    iget v4, v6, Landroid/graphics/Rect;->left:I

    .line 276
    .local v4, "startLeft":I
    iget v1, v5, Landroid/graphics/Rect;->left:I

    .line 277
    .local v1, "endLeft":I
    iget v3, v6, Landroid/graphics/Rect;->top:I

    .line 278
    .local v3, "startTop":I
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 279
    .local v7, "endTop":I
    iget v2, v6, Landroid/graphics/Rect;->right:I

    .line 280
    .local v2, "startRight":I
    move-object/from16 v18, v11

    .end local v11    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v18, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v11, v5, Landroid/graphics/Rect;->right:I

    .line 281
    .local v11, "endRight":I
    move-object/from16 v19, v12

    .end local v12    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v19, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v12, v6, Landroid/graphics/Rect;->bottom:I

    .line 282
    .local v12, "startBottom":I
    move-object/from16 v20, v13

    .end local v13    # "startParent":Landroid/view/ViewGroup;
    .local v20, "startParent":Landroid/view/ViewGroup;
    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    .line 283
    .local v13, "endBottom":I
    move-object/from16 v21, v14

    .end local v14    # "endParent":Landroid/view/ViewGroup;
    .local v21, "endParent":Landroid/view/ViewGroup;
    sub-int v14, v2, v4

    .line 284
    .local v14, "startWidth":I
    move-object/from16 v22, v6

    .end local v6    # "startBounds":Landroid/graphics/Rect;
    .local v22, "startBounds":Landroid/graphics/Rect;
    sub-int v6, v12, v3

    .line 285
    .local v6, "startHeight":I
    move-object/from16 v23, v5

    .end local v5    # "endBounds":Landroid/graphics/Rect;
    .local v23, "endBounds":Landroid/graphics/Rect;
    sub-int v5, v11, v1

    .line 286
    .local v5, "endWidth":I
    sub-int v0, v13, v7

    .line 287
    .local v0, "endHeight":I
    move-object/from16 v25, v15

    .end local v15    # "view":Landroid/view/View;
    .local v25, "view":Landroid/view/View;
    iget-object v15, v9, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:changeBounds:clip"

    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 288
    .local v9, "startClip":Landroid/graphics/Rect;
    iget-object v15, v10, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v10, "android:changeBounds:clip"

    invoke-interface {v15, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 289
    .local v10, "endClip":Landroid/graphics/Rect;
    const/4 v15, 0x0

    .line 290
    .local v15, "numChanges":I
    if-eqz v14, :cond_90

    if-nez v6, :cond_94

    :cond_90
    if-eqz v5, :cond_a0

    if-eqz v0, :cond_a0

    .line 291
    :cond_94
    if-ne v4, v1, :cond_98

    if-eq v3, v7, :cond_9a

    :cond_98
    add-int/lit8 v15, v15, 0x1

    .line 292
    :cond_9a
    if-ne v2, v11, :cond_9e

    if-eq v12, v13, :cond_a0

    :cond_9e
    add-int/lit8 v15, v15, 0x1

    .line 294
    :cond_a0
    if-eqz v9, :cond_a8

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_ac

    :cond_a8
    if-nez v9, :cond_ae

    if-eqz v10, :cond_ae

    .line 296
    :cond_ac
    add-int/lit8 v15, v15, 0x1

    .line 298
    :cond_ae
    if-lez v15, :cond_2a2

    .line 300
    move-object/from16 v27, v9

    .end local v9    # "startClip":Landroid/graphics/Rect;
    .local v27, "startClip":Landroid/graphics/Rect;
    iget-boolean v9, v8, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    move-object/from16 v28, v10

    .end local v10    # "endClip":Landroid/graphics/Rect;
    .local v28, "endClip":Landroid/graphics/Rect;
    const/4 v10, 0x2

    if-nez v9, :cond_1b0

    .line 301
    move-object/from16 v9, v25

    .end local v25    # "view":Landroid/view/View;
    .local v9, "view":Landroid/view/View;
    invoke-static {v9, v4, v3, v2, v12}, Landroid/support/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 303
    if-ne v15, v10, :cond_162

    .line 304
    if-ne v14, v5, :cond_f0

    if-ne v6, v0, :cond_f0

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v10

    move/from16 v29, v15

    .end local v15    # "numChanges":I
    .local v29, "numChanges":I
    int-to-float v15, v4

    move/from16 v30, v0

    .end local v0    # "endHeight":I
    .local v30, "endHeight":I
    int-to-float v0, v3

    move/from16 v31, v6

    .end local v6    # "startHeight":I
    .local v31, "startHeight":I
    int-to-float v6, v1

    move/from16 v32, v5

    .end local v5    # "endWidth":I
    .local v32, "endWidth":I
    int-to-float v5, v7

    invoke-virtual {v10, v15, v0, v6, v5}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 307
    .local v0, "topLeftPath":Landroid/graphics/Path;
    sget-object v5, Landroid/support/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    invoke-static {v9, v5, v0}, Landroid/support/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 309
    .local v0, "anim":Landroid/animation/Animator;
    nop

    .line 385
    move/from16 v25, v1

    move/from16 v26, v2

    move/from16 v24, v3

    move/from16 v16, v7

    move/from16 v47, v11

    move/from16 v37, v12

    move/from16 v45, v14

    move/from16 v17, v30

    goto :goto_155

    .line 310
    .end local v29    # "numChanges":I
    .end local v30    # "endHeight":I
    .end local v31    # "startHeight":I
    .end local v32    # "endWidth":I
    .local v0, "endHeight":I
    .restart local v5    # "endWidth":I
    .restart local v6    # "startHeight":I
    .restart local v15    # "numChanges":I
    :cond_f0
    move/from16 v30, v0

    move/from16 v32, v5

    move/from16 v31, v6

    move/from16 v29, v15

    .end local v0    # "endHeight":I
    .end local v5    # "endWidth":I
    .end local v6    # "startHeight":I
    .end local v15    # "numChanges":I
    .restart local v29    # "numChanges":I
    .restart local v30    # "endHeight":I
    .restart local v31    # "startHeight":I
    .restart local v32    # "endWidth":I
    new-instance v0, Landroid/support/transition/ChangeBounds$ViewBounds;

    invoke-direct {v0, v9}, Landroid/support/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    .line 311
    .local v0, "viewBounds":Landroid/support/transition/ChangeBounds$ViewBounds;
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v5

    int-to-float v6, v4

    int-to-float v15, v3

    int-to-float v10, v1

    move/from16 v33, v14

    .end local v14    # "startWidth":I
    .local v33, "startWidth":I
    int-to-float v14, v7

    invoke-virtual {v5, v6, v15, v10, v14}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v5

    .line 313
    .local v5, "topLeftPath":Landroid/graphics/Path;
    sget-object v6, Landroid/support/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 314
    invoke-static {v0, v6, v5}, Landroid/support/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 316
    .local v6, "topLeftAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v10

    int-to-float v14, v2

    int-to-float v15, v12

    move-object/from16 v34, v5

    .end local v5    # "topLeftPath":Landroid/graphics/Path;
    .local v34, "topLeftPath":Landroid/graphics/Path;
    int-to-float v5, v11

    move-object/from16 v35, v9

    .end local v9    # "view":Landroid/view/View;
    .local v35, "view":Landroid/view/View;
    int-to-float v9, v13

    invoke-virtual {v10, v14, v15, v5, v9}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v5

    .line 318
    .local v5, "bottomRightPath":Landroid/graphics/Path;
    sget-object v9, Landroid/support/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    invoke-static {v0, v9, v5}, Landroid/support/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 320
    .local v9, "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 321
    .local v10, "set":Landroid/animation/AnimatorSet;
    const/4 v14, 0x2

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v15, 0x1

    aput-object v9, v14, v15

    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 322
    move-object v14, v10

    .line 323
    .local v14, "anim":Landroid/animation/Animator;
    new-instance v15, Landroid/support/transition/ChangeBounds$7;

    invoke-direct {v15, v8, v0}, Landroid/support/transition/ChangeBounds$7;-><init>(Landroid/support/transition/ChangeBounds;Landroid/support/transition/ChangeBounds$ViewBounds;)V

    invoke-virtual {v10, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 329
    .end local v0    # "viewBounds":Landroid/support/transition/ChangeBounds$ViewBounds;
    .end local v5    # "bottomRightPath":Landroid/graphics/Path;
    .end local v6    # "topLeftAnimator":Landroid/animation/ObjectAnimator;
    .end local v9    # "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    .end local v10    # "set":Landroid/animation/AnimatorSet;
    .end local v34    # "topLeftPath":Landroid/graphics/Path;
    nop

    .line 385
    move/from16 v25, v1

    move/from16 v26, v2

    move/from16 v24, v3

    move/from16 v16, v7

    move/from16 v47, v11

    move/from16 v37, v12

    move-object v0, v14

    move/from16 v17, v30

    move/from16 v45, v33

    move-object/from16 v9, v35

    .end local v1    # "endLeft":I
    .end local v2    # "startRight":I
    .end local v3    # "startTop":I
    .end local v4    # "startLeft":I
    .end local v7    # "endTop":I
    .end local v11    # "endRight":I
    .end local v12    # "startBottom":I
    .end local v14    # "anim":Landroid/animation/Animator;
    .end local v33    # "startWidth":I
    .end local v35    # "view":Landroid/view/View;
    .local v0, "anim":Landroid/animation/Animator;
    .local v9, "view":Landroid/view/View;
    .local v16, "endTop":I
    .local v17, "endHeight":I
    .local v24, "startTop":I
    .local v25, "endLeft":I
    .local v26, "startRight":I
    .local v27, "startLeft":I
    .local v30, "startClip":Landroid/graphics/Rect;
    .local v31, "endWidth":I
    .local v32, "startHeight":I
    .local v37, "startBottom":I
    .local v45, "startWidth":I
    .local v47, "endRight":I
    :goto_155
    const/4 v11, 0x1

    move-object/from16 v30, v27

    move/from16 v27, v4

    move/from16 v51, v32

    move/from16 v32, v31

    move/from16 v31, v51

    goto/16 :goto_288

    .line 330
    .end local v16    # "endTop":I
    .end local v17    # "endHeight":I
    .end local v24    # "startTop":I
    .end local v25    # "endLeft":I
    .end local v26    # "startRight":I
    .end local v29    # "numChanges":I
    .end local v30    # "startClip":Landroid/graphics/Rect;
    .end local v31    # "endWidth":I
    .end local v32    # "startHeight":I
    .end local v37    # "startBottom":I
    .end local v45    # "startWidth":I
    .end local v47    # "endRight":I
    .local v0, "endHeight":I
    .restart local v1    # "endLeft":I
    .restart local v2    # "startRight":I
    .restart local v3    # "startTop":I
    .restart local v4    # "startLeft":I
    .local v5, "endWidth":I
    .local v6, "startHeight":I
    .restart local v7    # "endTop":I
    .restart local v11    # "endRight":I
    .restart local v12    # "startBottom":I
    .local v14, "startWidth":I
    .restart local v15    # "numChanges":I
    .local v27, "startClip":Landroid/graphics/Rect;
    :cond_162
    move/from16 v30, v0

    move/from16 v32, v5

    move/from16 v31, v6

    move-object/from16 v35, v9

    move/from16 v33, v14

    move/from16 v29, v15

    .end local v0    # "endHeight":I
    .end local v5    # "endWidth":I
    .end local v6    # "startHeight":I
    .end local v9    # "view":Landroid/view/View;
    .end local v14    # "startWidth":I
    .end local v15    # "numChanges":I
    .restart local v29    # "numChanges":I
    .local v30, "endHeight":I
    .local v31, "startHeight":I
    .local v32, "endWidth":I
    .restart local v33    # "startWidth":I
    .restart local v35    # "view":Landroid/view/View;
    if-ne v4, v1, :cond_18a

    if-eq v3, v7, :cond_175

    .line 331
    move-object/from16 v9, v35

    goto :goto_18c

    .line 336
    :cond_175
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v0

    int-to-float v5, v2

    int-to-float v6, v12

    int-to-float v9, v11

    int-to-float v10, v13

    invoke-virtual {v0, v5, v6, v9, v10}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 338
    .local v0, "bottomRight":Landroid/graphics/Path;
    sget-object v5, Landroid/support/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    move-object/from16 v9, v35

    .end local v35    # "view":Landroid/view/View;
    .restart local v9    # "view":Landroid/view/View;
    invoke-static {v9, v5, v0}, Landroid/support/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 340
    .local v0, "anim":Landroid/animation/Animator;
    goto :goto_19f

    .line 331
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v9    # "view":Landroid/view/View;
    .restart local v35    # "view":Landroid/view/View;
    :cond_18a
    move-object/from16 v9, v35

    .end local v35    # "view":Landroid/view/View;
    .restart local v9    # "view":Landroid/view/View;
    :goto_18c
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v0

    int-to-float v5, v4

    int-to-float v6, v3

    int-to-float v10, v1

    int-to-float v14, v7

    invoke-virtual {v0, v5, v6, v10, v14}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 333
    .local v0, "topLeftPath":Landroid/graphics/Path;
    sget-object v5, Landroid/support/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    invoke-static {v9, v5, v0}, Landroid/support/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 335
    .local v0, "anim":Landroid/animation/Animator;
    nop

    .line 385
    .end local v1    # "endLeft":I
    .end local v2    # "startRight":I
    .end local v3    # "startTop":I
    .end local v4    # "startLeft":I
    .end local v7    # "endTop":I
    .end local v11    # "endRight":I
    .end local v12    # "startBottom":I
    .end local v33    # "startWidth":I
    .restart local v16    # "endTop":I
    .restart local v17    # "endHeight":I
    .restart local v24    # "startTop":I
    .restart local v25    # "endLeft":I
    .restart local v26    # "startRight":I
    .local v27, "startLeft":I
    .local v30, "startClip":Landroid/graphics/Rect;
    .local v31, "endWidth":I
    .local v32, "startHeight":I
    .restart local v37    # "startBottom":I
    .restart local v45    # "startWidth":I
    .restart local v47    # "endRight":I
    :goto_19f
    move/from16 v25, v1

    move/from16 v26, v2

    move/from16 v24, v3

    move/from16 v16, v7

    move/from16 v47, v11

    move/from16 v37, v12

    move/from16 v17, v30

    move/from16 v45, v33

    goto :goto_155

    .line 342
    .end local v9    # "view":Landroid/view/View;
    .end local v16    # "endTop":I
    .end local v17    # "endHeight":I
    .end local v24    # "startTop":I
    .end local v26    # "startRight":I
    .end local v29    # "numChanges":I
    .end local v30    # "startClip":Landroid/graphics/Rect;
    .end local v31    # "endWidth":I
    .end local v32    # "startHeight":I
    .end local v37    # "startBottom":I
    .end local v45    # "startWidth":I
    .end local v47    # "endRight":I
    .local v0, "endHeight":I
    .restart local v1    # "endLeft":I
    .restart local v2    # "startRight":I
    .restart local v3    # "startTop":I
    .restart local v4    # "startLeft":I
    .restart local v5    # "endWidth":I
    .restart local v6    # "startHeight":I
    .restart local v7    # "endTop":I
    .restart local v11    # "endRight":I
    .restart local v12    # "startBottom":I
    .restart local v14    # "startWidth":I
    .restart local v15    # "numChanges":I
    .local v25, "view":Landroid/view/View;
    .local v27, "startClip":Landroid/graphics/Rect;
    :cond_1b0
    move/from16 v30, v0

    move/from16 v32, v5

    move/from16 v31, v6

    move/from16 v33, v14

    move/from16 v29, v15

    move-object/from16 v9, v25

    .end local v0    # "endHeight":I
    .end local v5    # "endWidth":I
    .end local v6    # "startHeight":I
    .end local v14    # "startWidth":I
    .end local v15    # "numChanges":I
    .end local v25    # "view":Landroid/view/View;
    .restart local v9    # "view":Landroid/view/View;
    .restart local v29    # "numChanges":I
    .local v30, "endHeight":I
    .local v31, "startHeight":I
    .local v32, "endWidth":I
    .restart local v33    # "startWidth":I
    move/from16 v10, v33

    .end local v32    # "endWidth":I
    .end local v33    # "startWidth":I
    .restart local v5    # "endWidth":I
    .local v10, "startWidth":I
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 343
    .local v14, "maxWidth":I
    nop

    .end local v30    # "endHeight":I
    .end local v31    # "startHeight":I
    .restart local v0    # "endHeight":I
    .restart local v6    # "startHeight":I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 345
    .local v15, "maxHeight":I
    move/from16 v36, v2

    .end local v2    # "startRight":I
    .local v36, "startRight":I
    add-int v2, v4, v14

    move/from16 v37, v12

    .end local v12    # "startBottom":I
    .restart local v37    # "startBottom":I
    add-int v12, v3, v15

    invoke-static {v9, v4, v3, v2, v12}, Landroid/support/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 348
    const/4 v2, 0x0

    .line 349
    .local v2, "positionAnimator":Landroid/animation/ObjectAnimator;
    if-ne v4, v1, :cond_1e0

    if-eq v3, v7, :cond_1d8

    goto :goto_1e0

    .line 355
    :cond_1d8
    move/from16 v41, v1

    move-object v12, v2

    move/from16 v40, v3

    move/from16 v39, v4

    goto :goto_1fb

    .line 350
    :cond_1e0
    :goto_1e0
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v12

    move-object/from16 v38, v2

    .end local v2    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v38, "positionAnimator":Landroid/animation/ObjectAnimator;
    int-to-float v2, v4

    move/from16 v39, v4

    .end local v4    # "startLeft":I
    .local v39, "startLeft":I
    int-to-float v4, v3

    move/from16 v40, v3

    .end local v3    # "startTop":I
    .local v40, "startTop":I
    int-to-float v3, v1

    move/from16 v41, v1

    .end local v1    # "endLeft":I
    .local v41, "endLeft":I
    int-to-float v1, v7

    invoke-virtual {v12, v2, v4, v3, v1}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 352
    .local v1, "topLeftPath":Landroid/graphics/Path;
    sget-object v2, Landroid/support/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    invoke-static {v9, v2, v1}, Landroid/support/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 355
    move-object v12, v2

    .end local v1    # "topLeftPath":Landroid/graphics/Path;
    .end local v38    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v12, "positionAnimator":Landroid/animation/ObjectAnimator;
    :goto_1fb
    move/from16 v24, v40

    .end local v40    # "startTop":I
    .restart local v24    # "startTop":I
    move-object/from16 v3, v28

    .line 356
    .local v3, "finalClip":Landroid/graphics/Rect;
    if-nez v27, :cond_209

    .line 357
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v10, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 359
    move-object v4, v1

    goto :goto_20c

    :cond_209
    const/4 v2, 0x0

    move-object/from16 v4, v27

    .end local v27    # "startClip":Landroid/graphics/Rect;
    .local v4, "startClip":Landroid/graphics/Rect;
    :goto_20c
    if-nez v28, :cond_215

    .line 360
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 362
    move-object v2, v1

    goto :goto_217

    :cond_215
    move-object/from16 v2, v28

    .end local v28    # "endClip":Landroid/graphics/Rect;
    .local v2, "endClip":Landroid/graphics/Rect;
    :goto_217
    const/4 v1, 0x0

    .line 363
    .local v1, "clipAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_267

    .line 364
    invoke-static {v9, v4}, Landroid/support/v4/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 365
    move/from16 v42, v0

    .end local v0    # "endHeight":I
    .local v42, "endHeight":I
    const-string v0, "clipBounds"

    move-object/from16 v43, v1

    .end local v1    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .local v43, "clipAnimator":Landroid/animation/ObjectAnimator;
    sget-object v1, Landroid/support/transition/ChangeBounds;->sRectEvaluator:Landroid/support/transition/RectEvaluator;

    move/from16 v44, v5

    const/4 v5, 0x2

    .end local v5    # "endWidth":I
    .local v44, "endWidth":I
    new-array v5, v5, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v4, v5, v17

    const/16 v16, 0x1

    aput-object v2, v5, v16

    invoke-static {v9, v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 367
    .end local v43    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .local v5, "clipAnimator":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/support/transition/ChangeBounds$8;

    move/from16 v17, v42

    .end local v42    # "endHeight":I
    .restart local v17    # "endHeight":I
    move-object v0, v1

    move/from16 v45, v10

    move/from16 v25, v41

    move-object v10, v1

    .end local v10    # "startWidth":I
    .end local v41    # "endLeft":I
    .local v25, "endLeft":I
    .restart local v45    # "startWidth":I
    move-object/from16 v1, p0

    move-object/from16 v28, v2

    move/from16 v26, v36

    .end local v2    # "endClip":Landroid/graphics/Rect;
    .end local v36    # "startRight":I
    .restart local v26    # "startRight":I
    .restart local v28    # "endClip":Landroid/graphics/Rect;
    move-object v2, v9

    move-object/from16 v30, v4

    move/from16 v27, v39

    .end local v4    # "startClip":Landroid/graphics/Rect;
    .end local v39    # "startLeft":I
    .local v27, "startLeft":I
    .local v30, "startClip":Landroid/graphics/Rect;
    move/from16 v4, v25

    move/from16 v46, v14

    move/from16 v31, v44

    move-object v14, v5

    .end local v5    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .end local v44    # "endWidth":I
    .local v14, "clipAnimator":Landroid/animation/ObjectAnimator;
    .local v31, "endWidth":I
    .local v46, "maxWidth":I
    move v5, v7

    move/from16 v32, v6

    .end local v6    # "startHeight":I
    .local v32, "startHeight":I
    move v6, v11

    move/from16 v16, v7

    move/from16 v47, v11

    const/4 v11, 0x1

    .end local v7    # "endTop":I
    .end local v11    # "endRight":I
    .restart local v16    # "endTop":I
    .restart local v47    # "endRight":I
    move v7, v13

    invoke-direct/range {v0 .. v7}, Landroid/support/transition/ChangeBounds$8;-><init>(Landroid/support/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v14, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_284

    .line 385
    .end local v16    # "endTop":I
    .end local v17    # "endHeight":I
    .end local v25    # "endLeft":I
    .end local v26    # "startRight":I
    .end local v27    # "startLeft":I
    .end local v28    # "endClip":Landroid/graphics/Rect;
    .end local v30    # "startClip":Landroid/graphics/Rect;
    .end local v31    # "endWidth":I
    .end local v32    # "startHeight":I
    .end local v45    # "startWidth":I
    .end local v46    # "maxWidth":I
    .end local v47    # "endRight":I
    .restart local v0    # "endHeight":I
    .restart local v1    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .restart local v2    # "endClip":Landroid/graphics/Rect;
    .restart local v4    # "startClip":Landroid/graphics/Rect;
    .local v5, "endWidth":I
    .restart local v6    # "startHeight":I
    .restart local v7    # "endTop":I
    .restart local v10    # "startWidth":I
    .restart local v11    # "endRight":I
    .local v14, "maxWidth":I
    .restart local v36    # "startRight":I
    .restart local v39    # "startLeft":I
    .restart local v41    # "endLeft":I
    :cond_267
    move/from16 v17, v0

    move-object/from16 v43, v1

    move-object/from16 v28, v2

    move-object/from16 v30, v4

    move/from16 v31, v5

    move/from16 v32, v6

    move/from16 v16, v7

    move/from16 v45, v10

    move/from16 v47, v11

    move/from16 v46, v14

    move/from16 v26, v36

    move/from16 v27, v39

    move/from16 v25, v41

    const/4 v11, 0x1

    move-object/from16 v14, v43

    .end local v0    # "endHeight":I
    .end local v1    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "endClip":Landroid/graphics/Rect;
    .end local v4    # "startClip":Landroid/graphics/Rect;
    .end local v5    # "endWidth":I
    .end local v6    # "startHeight":I
    .end local v7    # "endTop":I
    .end local v10    # "startWidth":I
    .end local v11    # "endRight":I
    .end local v36    # "startRight":I
    .end local v39    # "startLeft":I
    .end local v41    # "endLeft":I
    .local v14, "clipAnimator":Landroid/animation/ObjectAnimator;
    .restart local v16    # "endTop":I
    .restart local v17    # "endHeight":I
    .restart local v25    # "endLeft":I
    .restart local v26    # "startRight":I
    .restart local v27    # "startLeft":I
    .restart local v28    # "endClip":Landroid/graphics/Rect;
    .restart local v30    # "startClip":Landroid/graphics/Rect;
    .restart local v31    # "endWidth":I
    .restart local v32    # "startHeight":I
    .restart local v45    # "startWidth":I
    .restart local v46    # "maxWidth":I
    .restart local v47    # "endRight":I
    :goto_284
    invoke-static {v12, v14}, Landroid/support/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    .line 388
    .end local v3    # "finalClip":Landroid/graphics/Rect;
    .end local v12    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .end local v14    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .end local v15    # "maxHeight":I
    .end local v46    # "maxWidth":I
    .local v0, "anim":Landroid/animation/Animator;
    :goto_288
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2a1

    .line 389
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 390
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-static {v1, v11}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 391
    new-instance v2, Landroid/support/transition/ChangeBounds$9;

    invoke-direct {v2, v8, v1}, Landroid/support/transition/ChangeBounds$9;-><init>(Landroid/support/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 418
    .local v2, "transitionListener":Landroid/support/transition/Transition$TransitionListener;
    invoke-virtual {v8, v2}, Landroid/support/transition/ChangeBounds;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 420
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "transitionListener":Landroid/support/transition/Transition$TransitionListener;
    :cond_2a1
    return-object v0

    .line 422
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v9    # "view":Landroid/view/View;
    .end local v13    # "endBottom":I
    .end local v16    # "endTop":I
    .end local v17    # "endHeight":I
    .end local v22    # "startBounds":Landroid/graphics/Rect;
    .end local v23    # "endBounds":Landroid/graphics/Rect;
    .end local v24    # "startTop":I
    .end local v26    # "startRight":I
    .end local v27    # "startLeft":I
    .end local v28    # "endClip":Landroid/graphics/Rect;
    .end local v29    # "numChanges":I
    .end local v30    # "startClip":Landroid/graphics/Rect;
    .end local v31    # "endWidth":I
    .end local v32    # "startHeight":I
    .end local v37    # "startBottom":I
    .end local v45    # "startWidth":I
    .end local v47    # "endRight":I
    .local v25, "view":Landroid/view/View;
    :cond_2a2
    move-object/from16 v9, v25

    .line 455
    .end local v25    # "view":Landroid/view/View;
    .restart local v9    # "view":Landroid/view/View;
    move-object/from16 v6, p2

    move-object/from16 v12, p3

    goto :goto_2f4

    .line 423
    .end local v9    # "view":Landroid/view/View;
    .end local v18    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "startParent":Landroid/view/ViewGroup;
    .end local v21    # "endParent":Landroid/view/ViewGroup;
    .local v11, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v12, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v13, "startParent":Landroid/view/ViewGroup;
    .local v14, "endParent":Landroid/view/ViewGroup;
    .local v15, "view":Landroid/view/View;
    :cond_2a9
    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object v9, v15

    const/4 v11, 0x1

    .end local v11    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "startParent":Landroid/view/ViewGroup;
    .end local v14    # "endParent":Landroid/view/ViewGroup;
    .end local v15    # "view":Landroid/view/View;
    .restart local v9    # "view":Landroid/view/View;
    .restart local v18    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "startParent":Landroid/view/ViewGroup;
    .restart local v21    # "endParent":Landroid/view/ViewGroup;
    move-object/from16 v6, p2

    iget-object v0, v6, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:windowX"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 424
    .local v7, "startX":I
    iget-object v0, v6, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:windowY"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 425
    .local v10, "startY":I
    move-object/from16 v12, p3

    iget-object v0, v12, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:windowX"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 426
    .local v13, "endX":I
    iget-object v0, v12, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:windowY"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 428
    .local v14, "endY":I
    if-ne v7, v13, :cond_2f6

    if-eq v10, v14, :cond_2f4

    goto :goto_2f6

    .line 455
    .end local v7    # "startX":I
    .end local v10    # "startY":I
    .end local v13    # "endX":I
    .end local v14    # "endY":I
    :cond_2f4
    :goto_2f4
    const/4 v0, 0x0

    return-object v0

    .line 429
    .restart local v7    # "startX":I
    .restart local v10    # "startY":I
    .restart local v13    # "endX":I
    .restart local v14    # "endY":I
    :cond_2f6
    :goto_2f6
    iget-object v0, v8, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    move-object/from16 v15, p1

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 430
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 432
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v4, v0

    .line 433
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v9, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 434
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v3, v0

    .line 436
    .local v3, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v9}, Landroid/support/transition/ViewUtils;->getTransitionAlpha(Landroid/view/View;)F

    move-result v16

    .line 437
    .local v16, "transitionAlpha":F
    const/4 v0, 0x0

    invoke-static {v9, v0}, Landroid/support/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 438
    invoke-static/range {p1 .. p1}, Landroid/support/transition/ViewUtils;->getOverlay(Landroid/view/View;)Landroid/support/transition/ViewOverlayImpl;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/support/transition/ViewOverlayImpl;->add(Landroid/graphics/drawable/Drawable;)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/ChangeBounds;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v0

    iget-object v1, v8, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int v1, v7, v1

    int-to-float v1, v1

    iget-object v2, v8, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    aget v2, v2, v11

    sub-int v2, v10, v2

    int-to-float v2, v2

    iget-object v11, v8, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    const/16 v17, 0x0

    aget v11, v11, v17

    sub-int v11, v13, v11

    int-to-float v11, v11

    move-object/from16 v48, v4

    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .local v48, "canvas":Landroid/graphics/Canvas;
    iget-object v4, v8, Landroid/support/transition/ChangeBounds;->mTempLocation:[I

    move-object/from16 v49, v5

    const/4 v5, 0x1

    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .local v49, "bitmap":Landroid/graphics/Bitmap;
    aget v4, v4, v5

    sub-int v4, v14, v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v11, v4}, Landroid/support/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v11

    .line 442
    .local v11, "topLeftPath":Landroid/graphics/Path;
    sget-object v0, Landroid/support/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    invoke-static {v0, v11}, Landroid/support/transition/PropertyValuesHolderUtils;->ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v22

    .line 444
    .local v22, "origin":Landroid/animation/PropertyValuesHolder;
    new-array v0, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aput-object v22, v0, v1

    invoke-static {v3, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 445
    .local v5, "anim":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/support/transition/ChangeBounds$10;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v17, v3

    .end local v3    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v17, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v6, v4

    move-object/from16 v23, v48

    .end local v48    # "canvas":Landroid/graphics/Canvas;
    .local v23, "canvas":Landroid/graphics/Canvas;
    move-object v4, v9

    move/from16 v50, v7

    move-object/from16 v24, v49

    move-object v7, v5

    .end local v5    # "anim":Landroid/animation/ObjectAnimator;
    .end local v49    # "bitmap":Landroid/graphics/Bitmap;
    .local v7, "anim":Landroid/animation/ObjectAnimator;
    .local v24, "bitmap":Landroid/graphics/Bitmap;
    .local v50, "startX":I
    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Landroid/support/transition/ChangeBounds$10;-><init>(Landroid/support/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    invoke-virtual {v7, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 452
    return-object v7

    .line 269
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "startY":I
    .end local v16    # "transitionAlpha":F
    .end local v17    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v18    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "startParent":Landroid/view/ViewGroup;
    .end local v21    # "endParent":Landroid/view/ViewGroup;
    .end local v22    # "origin":Landroid/animation/PropertyValuesHolder;
    .end local v23    # "canvas":Landroid/graphics/Canvas;
    .end local v24    # "bitmap":Landroid/graphics/Bitmap;
    .end local v50    # "startX":I
    .local v11, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v13, "startParent":Landroid/view/ViewGroup;
    .local v14, "endParent":Landroid/view/ViewGroup;
    :cond_37f
    move-object/from16 v15, p1

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object v12, v10

    .end local v11    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "startParent":Landroid/view/ViewGroup;
    .end local v14    # "endParent":Landroid/view/ViewGroup;
    .restart local v18    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "startParent":Landroid/view/ViewGroup;
    .restart local v21    # "endParent":Landroid/view/ViewGroup;
    :goto_38a
    const/4 v0, 0x0

    return-object v0

    .line 262
    .end local v18    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "startParent":Landroid/view/ViewGroup;
    .end local v21    # "endParent":Landroid/view/ViewGroup;
    :cond_38c
    :goto_38c
    move-object/from16 v15, p1

    move-object v12, v10

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResizeClip()Z
    .registers 2

    .line 213
    iget-boolean v0, p0, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 185
    sget-object v0, Landroid/support/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setResizeClip(Z)V
    .registers 2
    .param p1, "resizeClip"    # Z

    .line 202
    iput-boolean p1, p0, Landroid/support/transition/ChangeBounds;->mResizeClip:Z

    .line 203
    return-void
.end method

###### Class android.support.transition.ChangeBounds.AnonymousClass1 (android.support.transition.ChangeBounds$1)
.class final Landroid/support/transition/ChangeBounds$1;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private mBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4
    .param p2, "x1"    # Ljava/lang/String;

    .line 69
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/Drawable;)Landroid/graphics/PointF;
    .registers 5
    .param p1, "object"    # Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 82
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Landroid/support/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 69
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeBounds$1;->get(Landroid/graphics/drawable/Drawable;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/graphics/drawable/Drawable;Landroid/graphics/PointF;)V
    .registers 6
    .param p1, "object"    # Landroid/graphics/drawable/Drawable;
    .param p2, "value"    # Landroid/graphics/PointF;

    .line 74
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 75
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 76
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 77
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 69
    check-cast p1, Landroid/graphics/drawable/Drawable;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ChangeBounds$1;->set(Landroid/graphics/drawable/Drawable;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class android.support.transition.ChangeBounds.AnonymousClass10 (android.support.transition.ChangeBounds$10)
.class Landroid/support/transition/ChangeBounds$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/transition/ChangeBounds;

.field final synthetic val$drawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$sceneRoot:Landroid/view/ViewGroup;

.field final synthetic val$transitionAlpha:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .registers 6
    .param p1, "this$0"    # Landroid/support/transition/ChangeBounds;

    .line 445
    iput-object p1, p0, Landroid/support/transition/ChangeBounds$10;->this$0:Landroid/support/transition/ChangeBounds;

    iput-object p2, p0, Landroid/support/transition/ChangeBounds$10;->val$sceneRoot:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/transition/ChangeBounds$10;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Landroid/support/transition/ChangeBounds$10;->val$view:Landroid/view/View;

    iput p5, p0, Landroid/support/transition/ChangeBounds$10;->val$transitionAlpha:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 448
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$10;->val$sceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/transition/ViewUtils;->getOverlay(Landroid/view/View;)Landroid/support/transition/ViewOverlayImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/support/transition/ChangeBounds$10;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v0, v1}, Landroid/support/transition/ViewOverlayImpl;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 449
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$10;->val$view:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/ChangeBounds$10;->val$transitionAlpha:F

    invoke-static {v0, v1}, Landroid/support/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 450
    return-void
.end method

###### Class android.support.transition.ChangeBounds.AnonymousClass2 (android.support.transition.ChangeBounds$2)
.class final Landroid/support/transition/ChangeBounds$2;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/support/transition/ChangeBounds$ViewBounds;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .param p2, "x1"    # Ljava/lang/String;

    .line 87
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/support/transition/ChangeBounds$ViewBounds;)Landroid/graphics/PointF;
    .registers 3
    .param p1, "viewBounds"    # Landroid/support/transition/ChangeBounds$ViewBounds;

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 87
    check-cast p1, Landroid/support/transition/ChangeBounds$ViewBounds;

    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeBounds$2;->get(Landroid/support/transition/ChangeBounds$ViewBounds;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/support/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V
    .registers 3
    .param p1, "viewBounds"    # Landroid/support/transition/ChangeBounds$ViewBounds;
    .param p2, "topLeft"    # Landroid/graphics/PointF;

    .line 90
    invoke-virtual {p1, p2}, Landroid/support/transition/ChangeBounds$ViewBounds;->setTopLeft(Landroid/graphics/PointF;)V

    .line 91
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 87
    check-cast p1, Landroid/support/transition/ChangeBounds$ViewBounds;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ChangeBounds$2;->set(Landroid/support/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class android.support.transition.ChangeBounds.AnonymousClass3 (android.support.transition.ChangeBounds$3)
.class final Landroid/support/transition/ChangeBounds$3;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/support/transition/ChangeBounds$ViewBounds;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .param p2, "x1"    # Ljava/lang/String;

    .line 100
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/support/transition/ChangeBounds$ViewBounds;)Landroid/graphics/PointF;
    .registers 3
    .param p1, "viewBounds"    # Landroid/support/transition/ChangeBounds$ViewBounds;

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 100
    check-cast p1, Landroid/support/transition/ChangeBounds$ViewBounds;

    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeBounds$3;->get(Landroid/support/transition/ChangeBounds$ViewBounds;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/support/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V
    .registers 3
    .param p1, "viewBounds"    # Landroid/support/transition/ChangeBounds$ViewBounds;
    .param p2, "bottomRight"    # Landroid/graphics/PointF;

    .line 103
    invoke-virtual {p1, p2}, Landroid/support/transition/ChangeBounds$ViewBounds;->setBottomRight(Landroid/graphics/PointF;)V

    .line 104
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 100
    check-cast p1, Landroid/support/transition/ChangeBounds$ViewBounds;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ChangeBounds$3;->set(Landroid/support/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class android.support.transition.ChangeBounds.AnonymousClass4 (android.support.transition.ChangeBounds$4)
.class final Landroid/support/transition/ChangeBounds$4;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .param p2, "x1"    # Ljava/lang/String;

    .line 113
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Landroid/graphics/PointF;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 113
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeBounds$4;->get(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/view/View;Landroid/graphics/PointF;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bottomRight"    # Landroid/graphics/PointF;

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 117
    .local v0, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 118
    .local v1, "top":I
    iget v2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 119
    .local v2, "right":I
    iget v3, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 120
    .local v3, "bottom":I
    invoke-static {p1, v0, v1, v2, v3}, Landroid/support/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 121
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 113
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ChangeBounds$4;->set(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class android.support.transition.ChangeBounds.AnonymousClass5 (android.support.transition.ChangeBounds$5)
.class final Landroid/support/transition/ChangeBounds$5;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .param p2, "x1"    # Ljava/lang/String;

    .line 130
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Landroid/graphics/PointF;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 130
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeBounds$5;->get(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/view/View;Landroid/graphics/PointF;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "topLeft"    # Landroid/graphics/PointF;

    .line 133
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 134
    .local v0, "left":I
    iget v1, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 135
    .local v1, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 136
    .local v2, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 137
    .local v3, "bottom":I
    invoke-static {p1, v0, v1, v2, v3}, Landroid/support/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 138
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 130
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ChangeBounds$5;->set(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class android.support.transition.ChangeBounds.AnonymousClass6 (android.support.transition.ChangeBounds$6)
.class final Landroid/support/transition/ChangeBounds$6;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .param p2, "x1"    # Ljava/lang/String;

    .line 147
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Landroid/graphics/PointF;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 147
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeBounds$6;->get(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/view/View;Landroid/graphics/PointF;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "topLeft"    # Landroid/graphics/PointF;

    .line 150
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 151
    .local v0, "left":I
    iget v1, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 152
    .local v1, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 153
    .local v2, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 154
    .local v3, "bottom":I
    invoke-static {p1, v0, v1, v2, v3}, Landroid/support/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 155
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 147
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ChangeBounds$6;->set(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class android.support.transition.ChangeBounds.AnonymousClass7 (android.support.transition.ChangeBounds$7)
.class Landroid/support/transition/ChangeBounds$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mViewBounds:Landroid/support/transition/ChangeBounds$ViewBounds;

.field final synthetic this$0:Landroid/support/transition/ChangeBounds;

.field final synthetic val$viewBounds:Landroid/support/transition/ChangeBounds$ViewBounds;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeBounds;Landroid/support/transition/ChangeBounds$ViewBounds;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/transition/ChangeBounds;

    .line 323
    iput-object p1, p0, Landroid/support/transition/ChangeBounds$7;->this$0:Landroid/support/transition/ChangeBounds;

    iput-object p2, p0, Landroid/support/transition/ChangeBounds$7;->val$viewBounds:Landroid/support/transition/ChangeBounds$ViewBounds;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 326
    iget-object p2, p0, Landroid/support/transition/ChangeBounds$7;->val$viewBounds:Landroid/support/transition/ChangeBounds$ViewBounds;

    iput-object p2, p0, Landroid/support/transition/ChangeBounds$7;->mViewBounds:Landroid/support/transition/ChangeBounds$ViewBounds;

    return-void
.end method

###### Class android.support.transition.ChangeBounds.AnonymousClass8 (android.support.transition.ChangeBounds$8)
.class Landroid/support/transition/ChangeBounds$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$0:Landroid/support/transition/ChangeBounds;

.field final synthetic val$endBottom:I

.field final synthetic val$endLeft:I

.field final synthetic val$endRight:I

.field final synthetic val$endTop:I

.field final synthetic val$finalClip:Landroid/graphics/Rect;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .registers 8
    .param p1, "this$0"    # Landroid/support/transition/ChangeBounds;

    .line 367
    iput-object p1, p0, Landroid/support/transition/ChangeBounds$8;->this$0:Landroid/support/transition/ChangeBounds;

    iput-object p2, p0, Landroid/support/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    iput-object p3, p0, Landroid/support/transition/ChangeBounds$8;->val$finalClip:Landroid/graphics/Rect;

    iput p4, p0, Landroid/support/transition/ChangeBounds$8;->val$endLeft:I

    iput p5, p0, Landroid/support/transition/ChangeBounds$8;->val$endTop:I

    iput p6, p0, Landroid/support/transition/ChangeBounds$8;->val$endRight:I

    iput p7, p0, Landroid/support/transition/ChangeBounds$8;->val$endBottom:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/ChangeBounds$8;->mIsCanceled:Z

    .line 373
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 377
    iget-boolean v0, p0, Landroid/support/transition/ChangeBounds$8;->mIsCanceled:Z

    if-nez v0, :cond_18

    .line 378
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    iget-object v1, p0, Landroid/support/transition/ChangeBounds$8;->val$finalClip:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 379
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/ChangeBounds$8;->val$endLeft:I

    iget v2, p0, Landroid/support/transition/ChangeBounds$8;->val$endTop:I

    iget v3, p0, Landroid/support/transition/ChangeBounds$8;->val$endRight:I

    iget v4, p0, Landroid/support/transition/ChangeBounds$8;->val$endBottom:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 382
    :cond_18
    return-void
.end method

###### Class android.support.transition.ChangeBounds.AnonymousClass9 (android.support.transition.ChangeBounds$9)
.class Landroid/support/transition/ChangeBounds$9;
.super Landroid/support/transition/TransitionListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Landroid/support/transition/ChangeBounds;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeBounds;Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/transition/ChangeBounds;

    .line 391
    iput-object p1, p0, Landroid/support/transition/ChangeBounds$9;->this$0:Landroid/support/transition/ChangeBounds;

    iput-object p2, p0, Landroid/support/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/support/transition/TransitionListenerAdapter;-><init>()V

    .line 392
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/support/transition/ChangeBounds$9;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/support/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 396
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/ChangeBounds$9;->mCanceled:Z

    .line 398
    return-void
.end method

.method public onTransitionEnd(Landroid/support/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 402
    iget-boolean v0, p0, Landroid/support/transition/ChangeBounds$9;->mCanceled:Z

    if-nez v0, :cond_a

    .line 403
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 405
    :cond_a
    invoke-virtual {p1, p0}, Landroid/support/transition/Transition;->removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 406
    return-void
.end method

.method public onTransitionPause(Landroid/support/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 410
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 411
    return-void
.end method

.method public onTransitionResume(Landroid/support/transition/Transition;)V
    .registers 4
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 415
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 416
    return-void
.end method

###### Class android.support.transition.ChangeBounds.ViewBounds (android.support.transition.ChangeBounds$ViewBounds)
.class Landroid/support/transition/ChangeBounds$ViewBounds;
.super Ljava/lang/Object;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewBounds"
.end annotation


# instance fields
.field private mBottom:I

.field private mBottomRightCalls:I

.field private mLeft:I

.field private mRight:I

.field private mTop:I

.field private mTopLeftCalls:I

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    .line 470
    return-void
.end method

.method private setLeftTopRightBottom()V
    .registers 6

    .line 491
    iget-object v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mLeft:I

    iget v2, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTop:I

    iget v3, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mRight:I

    iget v4, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottom:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 492
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 493
    iput v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    .line 494
    return-void
.end method


# virtual methods
.method setBottomRight(Landroid/graphics/PointF;)V
    .registers 4
    .param p1, "bottomRight"    # Landroid/graphics/PointF;

    .line 482
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mRight:I

    .line 483
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottom:I

    .line 484
    iget v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    .line 485
    iget v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    iget v1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    if-ne v0, v1, :cond_1f

    .line 486
    invoke-direct {p0}, Landroid/support/transition/ChangeBounds$ViewBounds;->setLeftTopRightBottom()V

    .line 488
    :cond_1f
    return-void
.end method

.method setTopLeft(Landroid/graphics/PointF;)V
    .registers 4
    .param p1, "topLeft"    # Landroid/graphics/PointF;

    .line 473
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mLeft:I

    .line 474
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTop:I

    .line 475
    iget v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 476
    iget v0, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    iget v1, p0, Landroid/support/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    if-ne v0, v1, :cond_1f

    .line 477
    invoke-direct {p0}, Landroid/support/transition/ChangeBounds$ViewBounds;->setLeftTopRightBottom()V

    .line 479
    :cond_1f
    return-void
.end method
