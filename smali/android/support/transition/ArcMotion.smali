###### Class android.support.transition.ArcMotion (android.support.transition.ArcMotion)
.class public Landroid/support/transition/ArcMotion;
.super Landroid/support/transition/PathMotion;
.source "ArcMotion.java"


# static fields
.field private static final DEFAULT_MAX_ANGLE_DEGREES:F = 70.0f

.field private static final DEFAULT_MAX_TANGENT:F

.field private static final DEFAULT_MIN_ANGLE_DEGREES:F


# instance fields
.field private mMaximumAngle:F

.field private mMaximumTangent:F

.field private mMinimumHorizontalAngle:F

.field private mMinimumHorizontalTangent:F

.field private mMinimumVerticalAngle:F

.field private mMinimumVerticalTangent:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 54
    nop

    .line 55
    const-wide v0, 0x4041800000000000L    # 35.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/support/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 64
    invoke-direct {p0}, Landroid/support/transition/PathMotion;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 58
    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalAngle:F

    .line 59
    const/high16 v1, 0x428c0000    # 70.0f

    iput v1, p0, Landroid/support/transition/ArcMotion;->mMaximumAngle:F

    .line 60
    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 61
    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 62
    sget v0, Landroid/support/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v0, p0, Landroid/support/transition/ArcMotion;->mMaximumTangent:F

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/support/transition/PathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 58
    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalAngle:F

    .line 59
    const/high16 v1, 0x428c0000    # 70.0f

    iput v1, p0, Landroid/support/transition/ArcMotion;->mMaximumAngle:F

    .line 60
    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 61
    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 62
    sget v2, Landroid/support/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v2, p0, Landroid/support/transition/ArcMotion;->mMaximumTangent:F

    .line 69
    sget-object v2, Landroid/support/transition/Styleable;->ARC_MOTION:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 70
    .local v2, "a":Landroid/content/res/TypedArray;
    move-object v3, p2

    check-cast v3, Lorg/xmlpull/v1/XmlPullParser;

    .line 71
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v4, "minimumVerticalAngle"

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v4

    .line 74
    .local v4, "minimumVerticalAngle":F
    invoke-virtual {p0, v4}, Landroid/support/transition/ArcMotion;->setMinimumVerticalAngle(F)V

    .line 75
    const-string v5, "minimumHorizontalAngle"

    const/4 v6, 0x0

    invoke-static {v2, v3, v5, v6, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    .line 78
    .local v0, "minimumHorizontalAngle":F
    invoke-virtual {p0, v0}, Landroid/support/transition/ArcMotion;->setMinimumHorizontalAngle(F)V

    .line 79
    const-string v5, "maximumAngle"

    const/4 v6, 0x2

    invoke-static {v2, v3, v5, v6, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v1

    .line 81
    .local v1, "maximumAngle":F
    invoke-virtual {p0, v1}, Landroid/support/transition/ArcMotion;->setMaximumAngle(F)V

    .line 82
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    return-void
.end method

.method private static toTangent(F)F
    .registers 3
    .param p0, "arcInDegrees"    # F

    .line 174
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_1a

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_1a

    .line 177
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 175
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arc must be between 0 and 90 degrees"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMaximumAngle()F
    .registers 2

    .line 170
    iget v0, p0, Landroid/support/transition/ArcMotion;->mMaximumAngle:F

    return v0
.end method

.method public getMinimumHorizontalAngle()F
    .registers 2

    .line 112
    iget v0, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalAngle:F

    return v0
.end method

.method public getMinimumVerticalAngle()F
    .registers 2

    .line 143
    iget v0, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalAngle:F

    return v0
.end method

.method public getPath(FFFF)Landroid/graphics/Path;
    .registers 36
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    .line 198
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    move-object v10, v3

    .line 199
    .local v10, "path":Landroid/graphics/Path;
    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 203
    sub-float v11, p3, v1

    .line 204
    .local v11, "deltaX":F
    sub-float v12, p4, v2

    .line 207
    .local v12, "deltaY":F
    mul-float v3, v11, v11

    mul-float v4, v12, v12

    add-float v13, v3, v4

    .line 210
    .local v13, "h2":F
    add-float v3, v1, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v14, v3, v4

    .line 211
    .local v14, "dx":F
    add-float v3, v2, p4

    div-float v15, v3, v4

    .line 214
    .local v15, "dy":F
    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v16, v13, v3

    .line 218
    .local v16, "midDist2":F
    cmpl-float v3, v2, p4

    if-lez v3, :cond_2d

    const/4 v3, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    move/from16 v17, v3

    .line 220
    .local v17, "isMovingUpwards":Z
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5d

    .line 226
    mul-float v3, v12, v4

    div-float v3, v13, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 227
    .local v3, "eDistY":F
    if-eqz v17, :cond_4b

    .line 228
    add-float v5, p4, v3

    .line 229
    .local v5, "ey":F
    move/from16 v6, p3

    goto :goto_4e

    .line 231
    .end local v5    # "ey":F
    :cond_4b
    add-float v5, v2, v3

    .line 232
    .restart local v5    # "ey":F
    move v6, v1

    .line 235
    .local v6, "ex":F
    :goto_4e
    iget v7, v0, Landroid/support/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float v7, v7, v16

    iget v8, v0, Landroid/support/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float v7, v7, v8

    .line 237
    .end local v3    # "eDistY":F
    .local v7, "minimumArcDist2":F
    nop

    .line 248
    move/from16 v30, v6

    move v6, v5

    move/from16 v5, v30

    goto :goto_74

    .line 239
    .end local v5    # "ey":F
    .end local v6    # "ex":F
    .end local v7    # "minimumArcDist2":F
    :cond_5d
    mul-float v3, v11, v4

    div-float v3, v13, v3

    .line 240
    .local v3, "eDistX":F
    if-eqz v17, :cond_68

    .line 241
    add-float v5, v1, v3

    .line 242
    .local v5, "ex":F
    move/from16 v6, p2

    goto :goto_6c

    .line 244
    .end local v5    # "ex":F
    :cond_68
    sub-float v5, p3, v3

    .line 245
    .restart local v5    # "ex":F
    move/from16 v6, p4

    .line 248
    .local v6, "ey":F
    :goto_6c
    iget v7, v0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float v7, v7, v16

    iget v8, v0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float v7, v7, v8

    .end local v3    # "eDistX":F
    .restart local v7    # "minimumArcDist2":F
    :goto_74
    move/from16 v18, v7

    .line 251
    .end local v7    # "minimumArcDist2":F
    .local v18, "minimumArcDist2":F
    sub-float v19, v14, v5

    .line 252
    .local v19, "arcDistX":F
    sub-float v20, v15, v6

    .line 253
    .local v20, "arcDistY":F
    mul-float v3, v19, v19

    mul-float v7, v20, v20

    add-float v21, v3, v7

    .line 255
    .local v21, "arcDist2":F
    iget v3, v0, Landroid/support/transition/ArcMotion;->mMaximumTangent:F

    mul-float v3, v3, v16

    iget v7, v0, Landroid/support/transition/ArcMotion;->mMaximumTangent:F

    mul-float v22, v3, v7

    .line 257
    .local v22, "maximumArcDist2":F
    const/4 v3, 0x0

    .line 258
    .local v3, "newArcDistance2":F
    cmpg-float v7, v21, v18

    if-gez v7, :cond_92

    .line 259
    move/from16 v3, v18

    .line 263
    .end local v3    # "newArcDistance2":F
    .local v23, "newArcDistance2":F
    :cond_8f
    :goto_8f
    move/from16 v23, v3

    goto :goto_99

    .line 260
    .end local v23    # "newArcDistance2":F
    .restart local v3    # "newArcDistance2":F
    :cond_92
    cmpl-float v7, v21, v22

    if-lez v7, :cond_8f

    .line 261
    move/from16 v3, v22

    goto :goto_8f

    .line 263
    .end local v3    # "newArcDistance2":F
    .restart local v23    # "newArcDistance2":F
    :goto_99
    const/4 v3, 0x0

    cmpl-float v3, v23, v3

    if-eqz v3, :cond_b2

    .line 264
    div-float v3, v23, v21

    .line 265
    .local v3, "ratio2":F
    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 266
    .local v7, "ratio":F
    sub-float v8, v5, v14

    mul-float v8, v8, v7

    add-float v5, v14, v8

    .line 267
    sub-float v8, v6, v15

    mul-float v8, v8, v7

    add-float v6, v15, v8

    .line 269
    .end local v3    # "ratio2":F
    .end local v5    # "ex":F
    .end local v6    # "ey":F
    .end local v7    # "ratio":F
    .local v24, "ex":F
    .local v25, "ey":F
    :cond_b2
    move/from16 v24, v5

    move/from16 v25, v6

    add-float v3, v1, v24

    div-float v26, v3, v4

    .line 270
    .local v26, "control1X":F
    add-float v3, v2, v25

    div-float v27, v3, v4

    .line 271
    .local v27, "control1Y":F
    add-float v3, v24, p3

    div-float v28, v3, v4

    .line 272
    .local v28, "control2X":F
    add-float v3, v25, p4

    div-float v29, v3, v4

    .line 273
    .local v29, "control2Y":F
    move-object v3, v10

    move/from16 v4, v26

    move/from16 v5, v27

    move/from16 v6, v28

    move/from16 v7, v29

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 274
    return-object v10
.end method

.method public setMaximumAngle(F)V
    .registers 3
    .param p1, "angleInDegrees"    # F

    .line 156
    iput p1, p0, Landroid/support/transition/ArcMotion;->mMaximumAngle:F

    .line 157
    invoke-static {p1}, Landroid/support/transition/ArcMotion;->toTangent(F)F

    move-result v0

    iput v0, p0, Landroid/support/transition/ArcMotion;->mMaximumTangent:F

    .line 158
    return-void
.end method

.method public setMinimumHorizontalAngle(F)V
    .registers 3
    .param p1, "angleInDegrees"    # F

    .line 97
    iput p1, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 98
    invoke-static {p1}, Landroid/support/transition/ArcMotion;->toTangent(F)F

    move-result v0

    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 99
    return-void
.end method

.method public setMinimumVerticalAngle(F)V
    .registers 3
    .param p1, "angleInDegrees"    # F

    .line 127
    iput p1, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalAngle:F

    .line 128
    invoke-static {p1}, Landroid/support/transition/ArcMotion;->toTangent(F)F

    move-result v0

    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 129
    return-void
.end method
