###### Class com.digikala.dms.helper.touch.SwipeMenuCallback (com.digikala.dms.helper.touch.SwipeMenuCallback)
.class public Lcom/digikala/dms/helper/touch/SwipeMenuCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "SwipeMenuCallback.java"


# static fields
.field private static final buttonWidth:F = 300.0f


# instance fields
.field private buttonInstance:Landroid/graphics/RectF;

.field private buttonShowedState:Lcom/digikala/dms/helper/touch/ButtonsState;

.field private buttonsActions:Lcom/digikala/dms/helper/touch/SwipeControllerActions;

.field private currentItemViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field private swipeBack:Z


# direct methods
.method public constructor <init>(Lcom/digikala/dms/helper/touch/SwipeControllerActions;)V
    .registers 3
    .param p1, "buttonsActions"    # Lcom/digikala/dms/helper/touch/SwipeControllerActions;

    .line 37
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->swipeBack:Z

    .line 27
    sget-object v0, Lcom/digikala/dms/helper/touch/ButtonsState;->GONE:Lcom/digikala/dms/helper/touch/ButtonsState;

    iput-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->buttonShowedState:Lcom/digikala/dms/helper/touch/ButtonsState;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->buttonInstance:Landroid/graphics/RectF;

    .line 31
    iput-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->currentItemViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 33
    iput-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->buttonsActions:Lcom/digikala/dms/helper/touch/SwipeControllerActions;

    .line 38
    iput-object p1, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->buttonsActions:Lcom/digikala/dms/helper/touch/SwipeControllerActions;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;)Z
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    .line 23
    iget-boolean v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->swipeBack:Z

    return v0
.end method

.method static synthetic access$002(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/helper/touch/SwipeMenuCallback;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->swipeBack:Z

    return p1
.end method

.method static synthetic access$100(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;)Lcom/digikala/dms/helper/touch/ButtonsState;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    .line 23
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->buttonShowedState:Lcom/digikala/dms/helper/touch/ButtonsState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Lcom/digikala/dms/helper/touch/ButtonsState;)Lcom/digikala/dms/helper/touch/ButtonsState;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/helper/touch/SwipeMenuCallback;
    .param p1, "x1"    # Lcom/digikala/dms/helper/touch/ButtonsState;

    .line 23
    iput-object p1, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->buttonShowedState:Lcom/digikala/dms/helper/touch/ButtonsState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 8
    .param p0, "x0"    # Lcom/digikala/dms/helper/touch/SwipeMenuCallback;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "x3"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "x4"    # F
    .param p5, "x5"    # F
    .param p6, "x6"    # I
    .param p7, "x7"    # Z

    .line 23
    invoke-direct/range {p0 .. p7}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->setTouchDownListener(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Landroid/support/v7/widget/RecyclerView;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/digikala/dms/helper/touch/SwipeMenuCallback;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "x2"    # Z

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->setItemsClickable(Landroid/support/v7/widget/RecyclerView;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 8
    .param p0, "x0"    # Lcom/digikala/dms/helper/touch/SwipeMenuCallback;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "x3"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "x4"    # F
    .param p5, "x5"    # F
    .param p6, "x6"    # I
    .param p7, "x7"    # Z

    .line 23
    invoke-direct/range {p0 .. p7}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->setTouchUpListener(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method static synthetic access$501(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 8
    .param p0, "x0"    # Lcom/digikala/dms/helper/touch/SwipeMenuCallback;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "x3"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "x4"    # F
    .param p5, "x5"    # F
    .param p6, "x6"    # I
    .param p7, "x7"    # Z

    .line 23
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;)Lcom/digikala/dms/helper/touch/SwipeControllerActions;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    .line 23
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->buttonsActions:Lcom/digikala/dms/helper/touch/SwipeControllerActions;

    return-object v0
.end method

.method static synthetic access$700(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;)Landroid/graphics/RectF;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    .line 23
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->buttonInstance:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$802(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/helper/touch/SwipeMenuCallback;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 23
    iput-object p1, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->currentItemViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method private drawButtons(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 153
    const/high16 v0, 0x43960000    # 300.0f

    .line 154
    .local v0, "buttonWidthWithoutPadding":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 156
    .local v1, "corners":F
    iget-object v2, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 157
    .local v2, "itemView":Landroid/view/View;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 159
    .local v3, "p":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/lit8 v8, v8, -0xa

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 160
    .local v4, "rightButton":Landroid/graphics/RectF;
    const v5, -0x333334

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    invoke-virtual {p1, v4, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 162
    const-string/jumbo v5, "\u0628\u0631\u06af\u0634\u062a \u06a9\u0627\u0644\u0627 \u0627\u0632 \u0645\u0631\u062c\u0648\u0639\u06cc"

    invoke-direct {p0, v5, p1, v4, v3}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->drawText(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 164
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->buttonInstance:Landroid/graphics/RectF;

    .line 165
    iget-object v5, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->buttonShowedState:Lcom/digikala/dms/helper/touch/ButtonsState;

    sget-object v6, Lcom/digikala/dms/helper/touch/ButtonsState;->RIGHT_VISIBLE:Lcom/digikala/dms/helper/touch/ButtonsState;

    if-ne v5, v6, :cond_43

    .line 166
    iput-object v4, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->buttonInstance:Landroid/graphics/RectF;

    .line 168
    :cond_43
    return-void
.end method

.method private drawText(Ljava/lang/String;Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "c"    # Landroid/graphics/Canvas;
    .param p3, "button"    # Landroid/graphics/RectF;
    .param p4, "p"    # Landroid/graphics/Paint;

    .line 171
    const/high16 v0, 0x41f00000    # 30.0f

    .line 172
    .local v0, "textSize":F
    const/high16 v1, -0x10000

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    const/4 v1, 0x1

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 174
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 176
    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 177
    .local v1, "textWidth":F
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v1, v3

    sub-float/2addr v2, v4

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    div-float v3, v0, v3

    add-float/2addr v4, v3

    invoke-virtual {p2, p1, v2, v4, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 178
    return-void
.end method

.method private setItemsClickable(Landroid/support/v7/widget/RecyclerView;Z)V
    .registers 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "isClickable"    # Z

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 148
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 150
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method private setTouchDownListener(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 18
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 106
    new-instance v9, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$2;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$2;-><init>(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    move-object v0, p2

    invoke-virtual {p2, v9}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    return-void
.end method

.method private setTouchListener(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 18
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 86
    new-instance v9, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;

    move-object v0, v9

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;-><init>(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;FLandroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FIZ)V

    move-object v0, p2

    invoke-virtual {p2, v9}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    return-void
.end method

.method private setTouchUpListener(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 17
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 119
    new-instance v8, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;-><init>(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FIZ)V

    move-object v0, p2

    invoke-virtual {p2, v8}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    return-void
.end method


# virtual methods
.method public convertToAbsoluteDirection(II)I
    .registers 6
    .param p1, "flags"    # I
    .param p2, "layoutDirection"    # I

    .line 58
    iget-boolean v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->swipeBack:Z

    if-eqz v0, :cond_11

    .line 59
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->buttonShowedState:Lcom/digikala/dms/helper/touch/ButtonsState;

    sget-object v1, Lcom/digikala/dms/helper/touch/ButtonsState;->GONE:Lcom/digikala/dms/helper/touch/ButtonsState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->swipeBack:Z

    .line 60
    return v2

    .line 62
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v0

    return v0
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .registers 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->makeMovementFlags(II)I

    move-result v0

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 16
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 67
    const/4 v0, 0x1

    if-ne p6, v0, :cond_24

    .line 68
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->buttonShowedState:Lcom/digikala/dms/helper/touch/ButtonsState;

    sget-object v1, Lcom/digikala/dms/helper/touch/ButtonsState;->GONE:Lcom/digikala/dms/helper/touch/ButtonsState;

    if-eq v0, v1, :cond_21

    .line 69
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->buttonShowedState:Lcom/digikala/dms/helper/touch/ButtonsState;

    sget-object v1, Lcom/digikala/dms/helper/touch/ButtonsState;->RIGHT_VISIBLE:Lcom/digikala/dms/helper/touch/ButtonsState;

    if-ne v0, v1, :cond_15

    .line 70
    const/high16 v0, -0x3c6a0000    # -300.0f

    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    .line 71
    :cond_15
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-super/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    goto :goto_24

    .line 73
    :cond_21
    invoke-direct/range {p0 .. p7}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->setTouchListener(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 77
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->buttonShowedState:Lcom/digikala/dms/helper/touch/ButtonsState;

    sget-object v1, Lcom/digikala/dms/helper/touch/ButtonsState;->GONE:Lcom/digikala/dms/helper/touch/ButtonsState;

    if-ne v0, v1, :cond_35

    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-super/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 80
    :cond_35
    iput-object p3, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->currentItemViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 81
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 181
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->currentItemViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_9

    .line 182
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->currentItemViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->drawButtons(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 184
    :cond_9
    return-void
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .line 54
    return-void
.end method

###### Class com.digikala.dms.helper.touch.SwipeMenuCallback.AnonymousClass1 (com.digikala.dms.helper.touch.SwipeMenuCallback$1)
.class Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;
.super Ljava/lang/Object;
.source "SwipeMenuCallback.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->setTouchListener(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

.field final synthetic val$actionState:I

.field final synthetic val$c:Landroid/graphics/Canvas;

.field final synthetic val$dX:F

.field final synthetic val$dY:F

.field final synthetic val$isCurrentlyActive:Z

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;

.field final synthetic val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;FLandroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FIZ)V
    .registers 9
    .param p1, "this$0"    # Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    .line 86
    iput-object p1, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    iput p2, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->val$dX:F

    iput-object p3, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->val$c:Landroid/graphics/Canvas;

    iput-object p4, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object p5, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p6, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->val$dY:F

    iput p7, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->val$actionState:I

    iput-boolean p8, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->val$isCurrentlyActive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 89
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_14

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_12

    goto :goto_14

    :cond_12
    const/4 v2, 0x0

    nop

    :cond_14
    :goto_14
    invoke-static {v0, v2}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->access$002(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Z)Z

    .line 90
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    invoke-static {v0}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->access$000(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 91
    iget v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->val$dX:F

    const/high16 v1, -0x3c6a0000    # -300.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2e

    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    sget-object v1, Lcom/digikala/dms/helper/touch/ButtonsState;->RIGHT_VISIBLE:Lcom/digikala/dms/helper/touch/ButtonsState;

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->access$102(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Lcom/digikala/dms/helper/touch/ButtonsState;)Lcom/digikala/dms/helper/touch/ButtonsState;

    .line 93
    :cond_2e
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    invoke-static {v0}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->access$100(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;)Lcom/digikala/dms/helper/touch/ButtonsState;

    move-result-object v0

    sget-object v1, Lcom/digikala/dms/helper/touch/ButtonsState;->GONE:Lcom/digikala/dms/helper/touch/ButtonsState;

    if-eq v0, v1, :cond_52

    .line 94
    iget-object v4, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    iget-object v5, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->val$c:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v8, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->val$dX:F

    iget v9, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->val$dY:F

    iget v10, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->val$actionState:I

    iget-boolean v11, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->val$isCurrentlyActive:Z

    invoke-static/range {v4 .. v11}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->access$200(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 95
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    iget-object v1, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1, v3}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->access$300(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Landroid/support/v7/widget/RecyclerView;Z)V

    .line 98
    :cond_52
    return v3
.end method

###### Class com.digikala.dms.helper.touch.SwipeMenuCallback.AnonymousClass2 (com.digikala.dms.helper.touch.SwipeMenuCallback$2)
.class Lcom/digikala/dms/helper/touch/SwipeMenuCallback$2;
.super Ljava/lang/Object;
.source "SwipeMenuCallback.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->setTouchDownListener(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

.field final synthetic val$actionState:I

.field final synthetic val$c:Landroid/graphics/Canvas;

.field final synthetic val$dX:F

.field final synthetic val$dY:F

.field final synthetic val$isCurrentlyActive:Z

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;

.field final synthetic val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 9
    .param p1, "this$0"    # Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    .line 106
    iput-object p1, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$2;->this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    iput-object p2, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$2;->val$c:Landroid/graphics/Canvas;

    iput-object p3, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object p4, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$2;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p5, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$2;->val$dX:F

    iput p6, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$2;->val$dY:F

    iput p7, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$2;->val$actionState:I

    iput-boolean p8, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$2;->val$isCurrentlyActive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 109
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_19

    .line 110
    iget-object v1, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$2;->this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    iget-object v2, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$2;->val$c:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$2;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v5, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$2;->val$dX:F

    iget v6, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$2;->val$dY:F

    iget v7, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$2;->val$actionState:I

    iget-boolean v8, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$2;->val$isCurrentlyActive:Z

    invoke-static/range {v1 .. v8}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->access$400(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 112
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

###### Class com.digikala.dms.helper.touch.SwipeMenuCallback.AnonymousClass3 (com.digikala.dms.helper.touch.SwipeMenuCallback$3)
.class Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;
.super Ljava/lang/Object;
.source "SwipeMenuCallback.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->setTouchUpListener(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

.field final synthetic val$actionState:I

.field final synthetic val$c:Landroid/graphics/Canvas;

.field final synthetic val$dY:F

.field final synthetic val$isCurrentlyActive:Z

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;

.field final synthetic val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FIZ)V
    .registers 8
    .param p1, "this$0"    # Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    .line 119
    iput-object p1, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    iput-object p2, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->val$c:Landroid/graphics/Canvas;

    iput-object p3, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object p4, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p5, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->val$dY:F

    iput p6, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->val$actionState:I

    iput-boolean p7, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->val$isCurrentlyActive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 122
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7a

    .line 123
    iget-object v3, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    iget-object v4, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->val$c:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v7, 0x0

    iget v8, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->val$dY:F

    iget v9, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->val$actionState:I

    iget-boolean v10, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->val$isCurrentlyActive:Z

    invoke-static/range {v3 .. v10}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->access$501(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 124
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3$1;

    invoke-direct {v3, p0}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3$1;-><init>(Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    iget-object v3, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v3, v2}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->access$300(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Landroid/support/v7/widget/RecyclerView;Z)V

    .line 131
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->access$002(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Z)Z

    .line 133
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    invoke-static {v0}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->access$600(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;)Lcom/digikala/dms/helper/touch/SwipeControllerActions;

    move-result-object v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    invoke-static {v0}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->access$700(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    invoke-static {v0}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->access$700(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 134
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    invoke-static {v0}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->access$100(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;)Lcom/digikala/dms/helper/touch/ButtonsState;

    move-result-object v0

    sget-object v2, Lcom/digikala/dms/helper/touch/ButtonsState;->RIGHT_VISIBLE:Lcom/digikala/dms/helper/touch/ButtonsState;

    if-ne v0, v2, :cond_6d

    .line 135
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    invoke-static {v0}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->access$600(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;)Lcom/digikala/dms/helper/touch/SwipeControllerActions;

    move-result-object v0

    iget-object v2, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->val$viewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/digikala/dms/helper/touch/SwipeControllerActions;->onRightClicked(I)V

    .line 138
    :cond_6d
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    sget-object v2, Lcom/digikala/dms/helper/touch/ButtonsState;->GONE:Lcom/digikala/dms/helper/touch/ButtonsState;

    invoke-static {v0, v2}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->access$102(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Lcom/digikala/dms/helper/touch/ButtonsState;)Lcom/digikala/dms/helper/touch/ButtonsState;

    .line 139
    iget-object v0, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->this$0:Lcom/digikala/dms/helper/touch/SwipeMenuCallback;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/digikala/dms/helper/touch/SwipeMenuCallback;->access$802(Lcom/digikala/dms/helper/touch/SwipeMenuCallback;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 141
    :cond_7a
    return v1
.end method

###### Class com.digikala.dms.helper.touch.SwipeMenuCallback.AnonymousClass3.AnonymousClass1 (com.digikala.dms.helper.touch.SwipeMenuCallback$3$1)
.class Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3$1;
.super Ljava/lang/Object;
.source "SwipeMenuCallback.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;


# direct methods
.method constructor <init>(Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;)V
    .registers 2
    .param p1, "this$1"    # Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;

    .line 124
    iput-object p1, p0, Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3$1;->this$1:Lcom/digikala/dms/helper/touch/SwipeMenuCallback$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 127
    const/4 v0, 0x0

    return v0
.end method
