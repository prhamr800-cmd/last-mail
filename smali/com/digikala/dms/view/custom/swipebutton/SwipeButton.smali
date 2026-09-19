###### Class com.digikala.dms.view.custom.swipebutton.SwipeButton (com.digikala.dms.view.custom.swipebutton.SwipeButton)
.class public Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;
.super Landroid/widget/Button;
.source "SwipeButton.java"


# instance fields
.field private confirmThresholdCrossed:Z

.field private originalButtonText:Ljava/lang/String;

.field private swipeButtonCustomItems:Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;

.field private swipeTextShown:Z

.field private swiping:Z

.field private x1:F

.field private x2Start:F

.field private y1:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swiping:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swiping:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swiping:Z

    .line 41
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 23
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 51
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_146

    goto/16 :goto_140

    .line 72
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 73
    .local v1, "x2":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 75
    .local v13, "y2":F
    iget-boolean v5, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swiping:Z

    if-nez v5, :cond_22

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->x2Start:F

    .line 78
    iput-boolean v3, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swiping:Z

    .line 82
    :cond_22
    iget v5, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->x1:F

    cmpg-float v5, v5, v1

    if-gez v5, :cond_140

    iget-boolean v5, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->confirmThresholdCrossed:Z

    if-nez v5, :cond_140

    .line 83
    invoke-virtual {v0, v2}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v5, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v5}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 87
    .local v2, "mDrawable":Landroid/graphics/drawable/ShapeDrawable;
    iget-object v5, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swipeButtonCustomItems:Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;

    invoke-virtual {v5}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->getGradientColor1()I

    move-result v14

    .line 88
    .local v14, "gradientColor1":I
    iget-object v5, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swipeButtonCustomItems:Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;

    invoke-virtual {v5}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->getGradientColor2()I

    move-result v15

    .line 89
    .local v15, "gradientColor2":I
    iget-object v5, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swipeButtonCustomItems:Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;

    invoke-virtual {v5}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->getGradientColor2Width()I

    move-result v12

    .line 90
    .local v12, "gradientColor2Width":I
    iget-object v5, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swipeButtonCustomItems:Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;

    invoke-virtual {v5}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->getGradientColor3()I

    move-result v16

    .line 91
    .local v16, "gradientColor3":I
    iget-object v5, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swipeButtonCustomItems:Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;

    invoke-virtual {v5}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->getActionConfirmDistanceFraction()D

    move-result-wide v17

    .line 95
    .local v17, "actionConfirmDistanceFraction":D
    new-instance v19, Landroid/graphics/LinearGradient;

    const/4 v7, 0x0

    int-to-float v5, v12

    sub-float v8, v1, v5

    const/4 v9, 0x0

    const/4 v5, 0x3

    new-array v10, v5, [I

    aput v16, v10, v4

    aput v15, v10, v3

    const/4 v4, 0x2

    aput v14, v10, v4

    new-array v11, v5, [F

    fill-array-data v11, :array_150

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v5, v19

    move v6, v1

    move/from16 v20, v12

    .end local v12    # "gradientColor2Width":I
    .local v20, "gradientColor2Width":I
    move-object v12, v4

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v4, v19

    .line 100
    .local v4, "shader":Landroid/graphics/Shader;
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 101
    invoke-virtual {v0, v2}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-boolean v5, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swipeTextShown:Z

    if-nez v5, :cond_93

    .line 105
    iget-object v5, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swipeButtonCustomItems:Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;

    invoke-virtual {v5}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->getButtonPressText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iput-boolean v3, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swipeTextShown:Z

    .line 110
    :cond_93
    iget v5, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->x2Start:F

    sub-float v5, v1, v5

    float-to-double v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->getWidth()I

    move-result v7

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v17

    cmpl-double v9, v5, v7

    if-lez v9, :cond_b4

    .line 111
    const-string v5, "CONFIRMATION"

    const-string v6, "Action Confirmed!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v5, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swipeButtonCustomItems:Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;

    invoke-virtual {v5}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->onSwipeConfirm()V

    .line 115
    iput-boolean v3, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->confirmThresholdCrossed:Z

    .line 118
    .end local v2    # "mDrawable":Landroid/graphics/drawable/ShapeDrawable;
    .end local v4    # "shader":Landroid/graphics/Shader;
    .end local v14    # "gradientColor1":I
    .end local v15    # "gradientColor2":I
    .end local v16    # "gradientColor3":I
    .end local v17    # "actionConfirmDistanceFraction":D
    .end local v20    # "gradientColor2Width":I
    :cond_b4
    goto/16 :goto_140

    .line 124
    .end local v1    # "x2":F
    .end local v13    # "y2":F
    :pswitch_b6
    iput-boolean v4, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swiping:Z

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 126
    .restart local v1    # "x2":F
    iget-object v3, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swipeButtonCustomItems:Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;

    invoke-virtual {v3}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->getPostConfirmationColor()I

    move-result v3

    .line 127
    .local v3, "buttonColor":I
    iget-object v5, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swipeButtonCustomItems:Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;

    invoke-virtual {v5}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->getActionConfirmText()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_cd

    iget-object v5, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->originalButtonText:Ljava/lang/String;

    goto :goto_d3

    :cond_cd
    iget-object v5, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swipeButtonCustomItems:Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;

    invoke-virtual {v5}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->getActionConfirmText()Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "actionConfirmText":Ljava/lang/String;
    :goto_d3
    invoke-virtual {v0, v2}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-virtual {v0, v3}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->setBackgroundColor(I)V

    .line 132
    iput-boolean v4, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swipeTextShown:Z

    .line 135
    iget v2, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->x2Start:F

    sub-float v2, v1, v2

    float-to-double v6, v2

    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->getWidth()I

    move-result v2

    int-to-double v8, v2

    iget-object v2, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swipeButtonCustomItems:Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;

    invoke-virtual {v2}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->getActionConfirmDistanceFraction()D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    cmpg-double v2, v6, v8

    if-gtz v2, :cond_108

    .line 136
    const-string v2, "CONFIRMATION"

    const-string v6, "Action not confirmed"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v2, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->originalButtonText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swipeButtonCustomItems:Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;

    invoke-virtual {v2}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->onSwipeCancel()V

    .line 139
    iput-boolean v4, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->confirmThresholdCrossed:Z

    goto :goto_140

    .line 142
    :cond_108
    const-string v2, "CONFIRMATION"

    const-string v4, "Action confirmed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v0, v5}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->setText(Ljava/lang/CharSequence;)V

    .line 146
    goto :goto_140

    .line 54
    .end local v1    # "x2":F
    .end local v3    # "buttonColor":I
    .end local v5    # "actionConfirmText":Ljava/lang/String;
    :pswitch_113
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->x1:F

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->y1:F

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->originalButtonText:Ljava/lang/String;

    .line 59
    iput-boolean v4, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->confirmThresholdCrossed:Z

    .line 61
    iget-boolean v1, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swipeTextShown:Z

    if-nez v1, :cond_13a

    .line 62
    iget-object v1, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swipeButtonCustomItems:Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;

    invoke-virtual {v1}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->getButtonPressText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iput-boolean v3, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swipeTextShown:Z

    .line 66
    :cond_13a
    iget-object v1, v0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swipeButtonCustomItems:Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;

    invoke-virtual {v1}, Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;->onButtonPress()V

    .line 67
    nop

    .line 150
    :cond_140
    :goto_140
    invoke-super/range {p0 .. p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_113
        :pswitch_b6
        :pswitch_e
    .end packed-switch

    :array_150
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setSwipeButtonCustomItems(Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;)V
    .registers 2
    .param p1, "swipeButtonCustomItems"    # Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;

    .line 45
    iput-object p1, p0, Lcom/digikala/dms/view/custom/swipebutton/SwipeButton;->swipeButtonCustomItems:Lcom/digikala/dms/view/custom/swipebutton/SwipeButtonCustomItems;

    .line 46
    return-void
.end method
