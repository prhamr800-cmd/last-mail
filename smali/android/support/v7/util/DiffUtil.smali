###### Class android.support.v7.util.DiffUtil (android.support.v7.util.DiffUtil)
.class public Landroid/support/v7/util/DiffUtil;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/DiffUtil$PostponedUpdate;,
        Landroid/support/v7/util/DiffUtil$DiffResult;,
        Landroid/support/v7/util/DiffUtil$Range;,
        Landroid/support/v7/util/DiffUtil$Snake;,
        Landroid/support/v7/util/DiffUtil$ItemCallback;,
        Landroid/support/v7/util/DiffUtil$Callback;
    }
.end annotation


# static fields
.field private static final SNAKE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Landroid/support/v7/util/DiffUtil$1;

    invoke-direct {v0}, Landroid/support/v7/util/DiffUtil$1;-><init>()V

    sput-object v0, Landroid/support/v7/util/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;
    .registers 2
    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 105
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public static calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;
    .registers 21
    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "detectMoves"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/util/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    .line 124
    .local v0, "oldSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/util/DiffUtil$Callback;->getNewListSize()I

    move-result v1

    .line 126
    .local v1, "newSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v2, "snakes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Snake;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v3

    .line 132
    .local v9, "stack":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    new-instance v3, Landroid/support/v7/util/DiffUtil$Range;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4, v1}, Landroid/support/v7/util/DiffUtil$Range;-><init>(IIII)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    add-int v3, v0, v1

    sub-int v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v18, v3, v4

    .line 138
    .local v18, "max":I
    mul-int/lit8 v3, v18, 0x2

    new-array v8, v3, [I

    .line 139
    .local v8, "forward":[I
    mul-int/lit8 v3, v18, 0x2

    new-array v7, v3, [I

    .line 142
    .local v7, "backward":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "rangePool":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    :goto_33
    move-object v6, v3

    .line 143
    .end local v3    # "rangePool":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    .local v6, "rangePool":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_fd

    .line 144
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v9, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/util/DiffUtil$Range;

    .line 145
    .local v3, "range":Landroid/support/v7/util/DiffUtil$Range;
    iget v11, v3, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    iget v12, v3, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    iget v13, v3, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    iget v14, v3, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    move-object/from16 v10, p0

    move-object v15, v8

    move-object/from16 v16, v7

    move/from16 v17, v18

    invoke-static/range {v10 .. v17}, Landroid/support/v7/util/DiffUtil;->diffPartial(Landroid/support/v7/util/DiffUtil$Callback;IIII[I[II)Landroid/support/v7/util/DiffUtil$Snake;

    move-result-object v4

    .line 147
    .local v4, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    if-eqz v4, :cond_f6

    .line 148
    iget v5, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    if-lez v5, :cond_62

    .line 149
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_62
    iget v5, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v10, v3, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    add-int/2addr v5, v10

    iput v5, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 153
    iget v5, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v10, v3, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    add-int/2addr v5, v10

    iput v5, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 156
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7c

    new-instance v5, Landroid/support/v7/util/DiffUtil$Range;

    invoke-direct {v5}, Landroid/support/v7/util/DiffUtil$Range;-><init>()V

    goto :goto_88

    .line 157
    :cond_7c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 156
    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/util/DiffUtil$Range;

    .line 158
    .local v5, "left":Landroid/support/v7/util/DiffUtil$Range;
    :goto_88
    iget v10, v3, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 159
    iget v10, v3, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    .line 160
    iget-boolean v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    if-eqz v10, :cond_9d

    .line 161
    iget v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 162
    iget v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    goto :goto_b6

    .line 164
    :cond_9d
    iget-boolean v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    if-eqz v10, :cond_ac

    .line 165
    iget v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 166
    iget v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    goto :goto_b6

    .line 168
    :cond_ac
    iget v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 169
    iget v10, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v5, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    .line 172
    :goto_b6
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    move-object v10, v3

    .line 177
    .local v10, "right":Landroid/support/v7/util/DiffUtil$Range;
    iget-boolean v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    if-eqz v11, :cond_e4

    .line 178
    iget-boolean v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    if-eqz v11, :cond_d3

    .line 179
    iget v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v12, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 180
    iget v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v12, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    goto :goto_f2

    .line 182
    :cond_d3
    iget v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v12, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 183
    iget v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v12, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    goto :goto_f2

    .line 186
    :cond_e4
    iget v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v12, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 187
    iget v11, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v12, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    .line 189
    :goto_f2
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v5    # "left":Landroid/support/v7/util/DiffUtil$Range;
    .end local v10    # "right":Landroid/support/v7/util/DiffUtil$Range;
    goto :goto_f9

    .line 191
    :cond_f6
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v3    # "range":Landroid/support/v7/util/DiffUtil$Range;
    .end local v4    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    :goto_f9
    nop

    .line 142
    move-object v3, v6

    goto/16 :goto_33

    .line 196
    :cond_fd
    sget-object v3, Landroid/support/v7/util/DiffUtil;->SNAKE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 198
    new-instance v10, Landroid/support/v7/util/DiffUtil$DiffResult;

    move-object v3, v10

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v11, v6

    .end local v6    # "rangePool":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    .local v11, "rangePool":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Range;>;"
    move-object v6, v8

    move-object v12, v7

    .end local v7    # "backward":[I
    .local v12, "backward":[I
    move-object v13, v8

    .end local v8    # "forward":[I
    .local v13, "forward":[I
    move/from16 v8, p1

    invoke-direct/range {v3 .. v8}, Landroid/support/v7/util/DiffUtil$DiffResult;-><init>(Landroid/support/v7/util/DiffUtil$Callback;Ljava/util/List;[I[IZ)V

    return-object v10
.end method

.method private static diffPartial(Landroid/support/v7/util/DiffUtil$Callback;IIII[I[II)Landroid/support/v7/util/DiffUtil$Snake;
    .registers 28
    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;
    .param p1, "startOld"    # I
    .param p2, "endOld"    # I
    .param p3, "startNew"    # I
    .param p4, "endNew"    # I
    .param p5, "forward"    # [I
    .param p6, "backward"    # [I
    .param p7, "kOffset"    # I

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    sub-int v6, p2, p1

    .line 205
    .local v6, "oldSize":I
    sub-int v7, p4, p3

    .line 207
    .local v7, "newSize":I
    sub-int v8, p2, p1

    const/4 v9, 0x1

    if-lt v8, v9, :cond_17c

    sub-int v8, p4, p3

    if-ge v8, v9, :cond_19

    .line 208
    move/from16 v18, v6

    move/from16 v19, v7

    goto/16 :goto_180

    .line 211
    :cond_19
    sub-int v8, v6, v7

    .line 212
    .local v8, "delta":I
    add-int v10, v6, v7

    add-int/2addr v10, v9

    div-int/lit8 v10, v10, 0x2

    .line 213
    .local v10, "dLimit":I
    sub-int v11, p7, v10

    sub-int/2addr v11, v9

    add-int v12, p7, v10

    add-int/2addr v12, v9

    const/4 v13, 0x0

    invoke-static {v4, v11, v12, v13}, Ljava/util/Arrays;->fill([IIII)V

    .line 214
    sub-int v11, p7, v10

    sub-int/2addr v11, v9

    add-int/2addr v11, v8

    add-int v12, p7, v10

    add-int/2addr v12, v9

    add-int/2addr v12, v8

    invoke-static {v5, v11, v12, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 215
    rem-int/lit8 v11, v8, 0x2

    if-eqz v11, :cond_3b

    const/4 v11, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v11, 0x0

    .line 216
    .local v11, "checkInFwd":Z
    :goto_3c
    const/4 v12, 0x0

    .local v12, "d":I
    :goto_3d
    if-gt v12, v10, :cond_170

    .line 217
    neg-int v13, v12

    .local v13, "k":I
    :goto_40
    if-gt v13, v12, :cond_d9

    .line 222
    neg-int v9, v12

    if-eq v13, v9, :cond_5f

    if-eq v13, v12, :cond_56

    add-int v9, p7, v13

    const/4 v15, 0x1

    sub-int/2addr v9, v15

    aget v9, v4, v9

    add-int v16, p7, v13

    add-int/lit8 v16, v16, 0x1

    aget v2, v4, v16

    if-ge v9, v2, :cond_57

    goto :goto_60

    .line 226
    :cond_56
    const/4 v15, 0x1

    :cond_57
    add-int v2, p7, v13

    sub-int/2addr v2, v15

    aget v2, v4, v2

    add-int/2addr v2, v15

    .line 227
    .local v2, "x":I
    const/4 v9, 0x1

    goto :goto_66

    .line 223
    .end local v2    # "x":I
    :cond_5f
    const/4 v15, 0x1

    :goto_60
    add-int v2, p7, v13

    add-int/2addr v2, v15

    aget v2, v4, v2

    .line 224
    .restart local v2    # "x":I
    const/4 v9, 0x0

    .line 227
    .local v9, "removal":Z
    :goto_66
    nop

    .line 230
    sub-int v16, v2, v13

    .local v16, "y":I
    :goto_69
    move/from16 v17, v16

    .line 232
    .end local v16    # "y":I
    .local v17, "y":I
    if-ge v2, v6, :cond_8d

    move/from16 v3, v17

    .end local v17    # "y":I
    .local v3, "y":I
    if-ge v3, v7, :cond_88

    move/from16 v18, v6

    .end local v6    # "oldSize":I
    .local v18, "oldSize":I
    add-int v6, p1, v2

    move/from16 v19, v7

    .end local v7    # "newSize":I
    .local v19, "newSize":I
    add-int v7, p3, v3

    .line 233
    invoke-virtual {v0, v6, v7}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 234
    add-int/lit8 v2, v2, 0x1

    .line 235
    add-int/lit8 v16, v3, 0x1

    .line 230
    move/from16 v6, v18

    move/from16 v7, v19

    goto :goto_69

    .line 237
    .end local v18    # "oldSize":I
    .end local v19    # "newSize":I
    .restart local v6    # "oldSize":I
    .restart local v7    # "newSize":I
    :cond_88
    move/from16 v18, v6

    move/from16 v19, v7

    .end local v6    # "oldSize":I
    .end local v7    # "newSize":I
    .restart local v18    # "oldSize":I
    .restart local v19    # "newSize":I
    goto :goto_93

    .end local v3    # "y":I
    .end local v18    # "oldSize":I
    .end local v19    # "newSize":I
    .restart local v6    # "oldSize":I
    .restart local v7    # "newSize":I
    .restart local v17    # "y":I
    :cond_8d
    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v3, v17

    .end local v6    # "oldSize":I
    .end local v7    # "newSize":I
    .end local v17    # "y":I
    .restart local v3    # "y":I
    .restart local v18    # "oldSize":I
    .restart local v19    # "newSize":I
    :cond_93
    :goto_93
    add-int v6, p7, v13

    aput v2, v4, v6

    .line 238
    if-eqz v11, :cond_cf

    sub-int v6, v8, v12

    const/4 v7, 0x1

    add-int/2addr v6, v7

    if-lt v13, v6, :cond_cf

    add-int v6, v8, v12

    sub-int/2addr v6, v7

    if-gt v13, v6, :cond_cf

    .line 239
    add-int v6, p7, v13

    aget v6, v4, v6

    add-int v7, p7, v13

    aget v7, v5, v7

    if-lt v6, v7, :cond_cf

    .line 240
    new-instance v6, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v6}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 241
    .local v6, "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    add-int v7, p7, v13

    aget v7, v5, v7

    iput v7, v6, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 242
    iget v7, v6, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    sub-int/2addr v7, v13

    iput v7, v6, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 243
    add-int v7, p7, v13

    aget v7, v4, v7

    add-int v15, p7, v13

    aget v15, v5, v15

    sub-int/2addr v7, v15

    iput v7, v6, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 244
    iput-boolean v9, v6, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 245
    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    .line 246
    return-object v6

    .line 217
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v6    # "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    .end local v9    # "removal":Z
    :cond_cf
    const/4 v7, 0x0

    add-int/lit8 v13, v13, 0x2

    move/from16 v6, v18

    move/from16 v7, v19

    const/4 v9, 0x1

    goto/16 :goto_40

    .line 250
    .end local v13    # "k":I
    .end local v18    # "oldSize":I
    .end local v19    # "newSize":I
    .local v6, "oldSize":I
    .restart local v7    # "newSize":I
    :cond_d9
    move/from16 v18, v6

    move/from16 v19, v7

    const/4 v7, 0x0

    .end local v6    # "oldSize":I
    .end local v7    # "newSize":I
    .restart local v18    # "oldSize":I
    .restart local v19    # "newSize":I
    neg-int v2, v12

    .local v2, "k":I
    :goto_df
    if-gt v2, v12, :cond_165

    .line 252
    add-int v3, v2, v8

    .line 255
    .local v3, "backwardK":I
    add-int v6, v12, v8

    if-eq v3, v6, :cond_102

    neg-int v6, v12

    add-int/2addr v6, v8

    if-eq v3, v6, :cond_f9

    add-int v6, p7, v3

    const/4 v15, 0x1

    sub-int/2addr v6, v15

    aget v6, v5, v6

    add-int v9, p7, v3

    add-int/2addr v9, v15

    aget v9, v5, v9

    if-ge v6, v9, :cond_fa

    goto :goto_103

    .line 260
    :cond_f9
    const/4 v15, 0x1

    :cond_fa
    add-int v6, p7, v3

    add-int/2addr v6, v15

    aget v6, v5, v6

    sub-int/2addr v6, v15

    .line 261
    .local v6, "x":I
    const/4 v9, 0x1

    goto :goto_109

    .line 257
    .end local v6    # "x":I
    :cond_102
    const/4 v15, 0x1

    :goto_103
    add-int v6, p7, v3

    sub-int/2addr v6, v15

    aget v6, v5, v6

    .line 258
    .restart local v6    # "x":I
    const/4 v9, 0x0

    .line 261
    .restart local v9    # "removal":Z
    :goto_109
    nop

    .line 265
    sub-int v13, v6, v3

    .line 267
    .local v13, "y":I
    :goto_10c
    if-lez v6, :cond_125

    if-lez v13, :cond_125

    add-int v14, p1, v6

    const/4 v15, 0x1

    add-int/lit8 v7, v14, -0x1

    add-int v14, p3, v13

    add-int/lit8 v1, v14, -0x1

    .line 268
    invoke-virtual {v0, v7, v1}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v1

    if-eqz v1, :cond_125

    .line 269
    add-int/lit8 v6, v6, -0x1

    .line 270
    add-int/lit8 v13, v13, -0x1

    .line 265
    const/4 v7, 0x0

    goto :goto_10c

    .line 272
    :cond_125
    add-int v1, p7, v3

    aput v6, v5, v1

    .line 273
    if-nez v11, :cond_15f

    add-int v1, v2, v8

    neg-int v7, v12

    if-lt v1, v7, :cond_15f

    add-int v1, v2, v8

    if-gt v1, v12, :cond_15f

    .line 274
    add-int v1, p7, v3

    aget v1, v4, v1

    add-int v7, p7, v3

    aget v7, v5, v7

    if-lt v1, v7, :cond_15f

    .line 275
    new-instance v1, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v1}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 276
    .local v1, "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    add-int v7, p7, v3

    aget v7, v5, v7

    iput v7, v1, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 277
    iget v7, v1, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    sub-int/2addr v7, v3

    iput v7, v1, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 278
    add-int v7, p7, v3

    aget v7, v4, v7

    add-int v14, p7, v3

    aget v14, v5, v14

    sub-int/2addr v7, v14

    iput v7, v1, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 280
    iput-boolean v9, v1, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 281
    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    .line 282
    return-object v1

    .line 250
    .end local v1    # "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    .end local v3    # "backwardK":I
    .end local v6    # "x":I
    .end local v9    # "removal":Z
    .end local v13    # "y":I
    :cond_15f
    const/4 v7, 0x1

    add-int/lit8 v2, v2, 0x2

    const/4 v7, 0x0

    goto/16 :goto_df

    .line 216
    .end local v2    # "k":I
    :cond_165
    const/4 v7, 0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v18

    move/from16 v7, v19

    const/4 v9, 0x1

    const/4 v13, 0x0

    goto/16 :goto_3d

    .line 287
    .end local v12    # "d":I
    .end local v18    # "oldSize":I
    .end local v19    # "newSize":I
    .local v6, "oldSize":I
    .restart local v7    # "newSize":I
    :cond_170
    move/from16 v18, v6

    move/from16 v19, v7

    .end local v6    # "oldSize":I
    .end local v7    # "newSize":I
    .restart local v18    # "oldSize":I
    .restart local v19    # "newSize":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    .end local v8    # "delta":I
    .end local v10    # "dLimit":I
    .end local v11    # "checkInFwd":Z
    .end local v18    # "oldSize":I
    .end local v19    # "newSize":I
    .restart local v6    # "oldSize":I
    .restart local v7    # "newSize":I
    :cond_17c
    move/from16 v18, v6

    move/from16 v19, v7

    .end local v6    # "oldSize":I
    .end local v7    # "newSize":I
    .restart local v18    # "oldSize":I
    .restart local v19    # "newSize":I
    :goto_180
    const/4 v1, 0x0

    return-object v1
.end method

###### Class android.support.v7.util.DiffUtil.AnonymousClass1 (android.support.v7.util.DiffUtil$1)
.class final Landroid/support/v7/util/DiffUtil$1;
.super Ljava/lang/Object;
.source "DiffUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/support/v7/util/DiffUtil$Snake;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v7/util/DiffUtil$Snake;Landroid/support/v7/util/DiffUtil$Snake;)I
    .registers 6
    .param p1, "o1"    # Landroid/support/v7/util/DiffUtil$Snake;
    .param p2, "o2"    # Landroid/support/v7/util/DiffUtil$Snake;

    .line 87
    iget v0, p1, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v1, p2, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    sub-int/2addr v0, v1

    .line 88
    .local v0, "cmpX":I
    if-nez v0, :cond_d

    iget v1, p1, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v2, p2, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    sub-int/2addr v1, v2

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 84
    check-cast p1, Landroid/support/v7/util/DiffUtil$Snake;

    check-cast p2, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/util/DiffUtil$1;->compare(Landroid/support/v7/util/DiffUtil$Snake;Landroid/support/v7/util/DiffUtil$Snake;)I

    move-result p1

    return p1
.end method

###### Class android.support.v7.util.DiffUtil.Callback (android.support.v7.util.DiffUtil$Callback)
.class public abstract Landroid/support/v7/util/DiffUtil$Callback;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract areContentsTheSame(II)Z
.end method

.method public abstract areItemsTheSame(II)Z
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .registers 4
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 360
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNewListSize()I
.end method

.method public abstract getOldListSize()I
.end method

###### Class android.support.v7.util.DiffUtil.DiffResult (android.support.v7.util.DiffUtil$DiffResult)
.class public Landroid/support/v7/util/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# static fields
.field private static final FLAG_CHANGED:I = 0x2

.field private static final FLAG_IGNORE:I = 0x10

.field private static final FLAG_MASK:I = 0x1f

.field private static final FLAG_MOVED_CHANGED:I = 0x4

.field private static final FLAG_MOVED_NOT_CHANGED:I = 0x8

.field private static final FLAG_NOT_CHANGED:I = 0x1

.field private static final FLAG_OFFSET:I = 0x5

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private final mCallback:Landroid/support/v7/util/DiffUtil$Callback;

.field private final mDetectMoves:Z

.field private final mNewItemStatuses:[I

.field private final mNewListSize:I

.field private final mOldItemStatuses:[I

.field private final mOldListSize:I

.field private final mSnakes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/util/DiffUtil$Callback;Ljava/util/List;[I[IZ)V
    .registers 8
    .param p1, "callback"    # Landroid/support/v7/util/DiffUtil$Callback;
    .param p3, "oldItemStatuses"    # [I
    .param p4, "newItemStatuses"    # [I
    .param p5, "detectMoves"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/DiffUtil$Callback;",
            "Ljava/util/List<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;[I[IZ)V"
        }
    .end annotation

    .line 567
    .local p2, "snakes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Snake;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput-object p2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    .line 569
    iput-object p3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 570
    iput-object p4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 571
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 572
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 573
    iput-object p1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    .line 574
    invoke-virtual {p1}, Landroid/support/v7/util/DiffUtil$Callback;->getOldListSize()I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    .line 575
    invoke-virtual {p1}, Landroid/support/v7/util/DiffUtil$Callback;->getNewListSize()I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    .line 576
    iput-boolean p5, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 577
    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->addRootSnake()V

    .line 578
    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItems()V

    .line 579
    return-void
.end method

.method private addRootSnake()V
    .registers 5

    .line 586
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_13

    :cond_b
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/util/DiffUtil$Snake;

    .line 587
    .local v0, "firstSnake":Landroid/support/v7/util/DiffUtil$Snake;
    :goto_13
    if-eqz v0, :cond_1d

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    if-nez v2, :cond_1d

    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    if-eqz v2, :cond_31

    .line 588
    :cond_1d
    new-instance v2, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v2}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 589
    .local v2, "root":Landroid/support/v7/util/DiffUtil$Snake;
    iput v1, v2, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 590
    iput v1, v2, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 591
    iput-boolean v1, v2, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 592
    iput v1, v2, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 593
    iput-boolean v1, v2, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    .line 594
    iget-object v3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 596
    .end local v2    # "root":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_31
    return-void
.end method

.method private dispatchAdditions(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V
    .registers 13
    .param p2, "updateCallback"    # Landroid/support/v7/util/ListUpdateCallback;
    .param p3, "start"    # I
    .param p4, "count"    # I
    .param p5, "globalIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroid/support/v7/util/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    .line 873
    .local p1, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    iget-boolean v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v0, :cond_8

    .line 874
    invoke-interface {p2, p3, p4}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    .line 875
    return-void

    .line 877
    :cond_8
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_92

    .line 878
    iget-object v1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int v2, p5, v0

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    .line 879
    .local v1, "status":I
    const/4 v2, 0x1

    if-eqz v1, :cond_74

    const/4 v3, 0x4

    if-eq v1, v3, :cond_55

    const/16 v4, 0x8

    if-eq v1, v4, :cond_55

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2e

    .line 901
    new-instance v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    add-int v3, p5, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, p3, v4}, Landroid/support/v7/util/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    goto :goto_8e

    .line 904
    :cond_2e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown flag for pos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v4, p5, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v4, v1

    .line 906
    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 888
    :cond_55
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int v5, p5, v0

    aget v4, v4, v5

    shr-int/lit8 v4, v4, 0x5

    .line 889
    .local v4, "pos":I
    invoke-static {p1, v4, v2}, Landroid/support/v7/util/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-result-object v5

    .line 893
    .local v5, "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    iget v6, v5, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    invoke-interface {p2, v6, p3}, Landroid/support/v7/util/ListUpdateCallback;->onMoved(II)V

    .line 894
    if-ne v1, v3, :cond_8e

    .line 896
    iget-object v3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    add-int v6, p5, v0

    .line 897
    invoke-virtual {v3, v4, v6}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v3

    .line 896
    invoke-interface {p2, p3, v2, v3}, Landroid/support/v7/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_8e

    .line 881
    .end local v4    # "pos":I
    .end local v5    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    :cond_74
    invoke-interface {p2, p3, v2}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    .line 882
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    .line 883
    .local v4, "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    iget v5, v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    .line 884
    .end local v4    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    goto :goto_7b

    .line 885
    :cond_8d
    nop

    .line 877
    .end local v1    # "status":I
    :cond_8e
    :goto_8e
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_a

    .line 909
    .end local v0    # "i":I
    :cond_92
    return-void
.end method

.method private dispatchRemovals(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V
    .registers 14
    .param p2, "updateCallback"    # Landroid/support/v7/util/ListUpdateCallback;
    .param p3, "start"    # I
    .param p4, "count"    # I
    .param p5, "globalIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroid/support/v7/util/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    .line 913
    .local p1, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    iget-boolean v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v0, :cond_8

    .line 914
    invoke-interface {p2, p3, p4}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    .line 915
    return-void

    .line 917
    :cond_8
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_9c

    .line 918
    iget-object v1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int v2, p5, v0

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    .line 919
    .local v1, "status":I
    const/4 v2, 0x1

    if-eqz v1, :cond_7c

    const/4 v3, 0x4

    if-eq v1, v3, :cond_56

    const/16 v4, 0x8

    if-eq v1, v4, :cond_56

    const/16 v3, 0x10

    if-ne v1, v3, :cond_2f

    .line 942
    new-instance v3, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    add-int v4, p5, v0

    add-int v5, p3, v0

    invoke-direct {v3, v4, v5, v2}, Landroid/support/v7/util/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    goto :goto_98

    .line 945
    :cond_2f
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown flag for pos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v4, p5, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v4, v1

    .line 947
    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 928
    :cond_56
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int v5, p5, v0

    aget v4, v4, v5

    shr-int/lit8 v4, v4, 0x5

    .line 929
    .local v4, "pos":I
    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/support/v7/util/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-result-object v5

    .line 934
    .local v5, "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    add-int v6, p3, v0

    iget v7, v5, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int/2addr v7, v2

    invoke-interface {p2, v6, v7}, Landroid/support/v7/util/ListUpdateCallback;->onMoved(II)V

    .line 935
    if-ne v1, v3, :cond_98

    .line 937
    iget v3, v5, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int/2addr v3, v2

    iget-object v6, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    add-int v7, p5, v0

    .line 938
    invoke-virtual {v6, v7, v4}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v6

    .line 937
    invoke-interface {p2, v3, v2, v6}, Landroid/support/v7/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_98

    .line 921
    .end local v4    # "pos":I
    .end local v5    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    :cond_7c
    add-int v3, p3, v0

    invoke-interface {p2, v3, v2}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    .line 922
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_85
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_97

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    .line 923
    .local v4, "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    iget v5, v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    .line 924
    .end local v4    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    goto :goto_85

    .line 925
    :cond_97
    nop

    .line 917
    .end local v1    # "status":I
    :cond_98
    :goto_98
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_a

    .line 950
    .end local v0    # "i":I
    :cond_9c
    return-void
.end method

.method private findAddition(III)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I

    .line 646
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_9

    .line 647
    return-void

    .line 649
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    .line 650
    return-void
.end method

.method private findMatchingItem(IIIZ)Z
    .registers 20
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I
    .param p4, "removal"    # Z

    .line 723
    move-object v0, p0

    if-eqz p4, :cond_a

    .line 724
    add-int/lit8 v1, p2, -0x1

    .line 725
    .local v1, "myItemPos":I
    move/from16 v2, p1

    .line 726
    .local v2, "curX":I
    add-int/lit8 v3, p2, -0x1

    goto :goto_10

    .line 728
    .end local v1    # "myItemPos":I
    .end local v2    # "curX":I
    :cond_a
    add-int/lit8 v1, p1, -0x1

    .line 729
    .restart local v1    # "myItemPos":I
    add-int/lit8 v2, p1, -0x1

    .line 730
    .restart local v2    # "curX":I
    move/from16 v3, p2

    .line 732
    .local v3, "curY":I
    :goto_10
    move v4, v3

    move v3, v2

    move/from16 v2, p3

    .local v2, "i":I
    .local v3, "curX":I
    .local v4, "curY":I
    :goto_14
    if-ltz v2, :cond_8d

    .line 733
    iget-object v5, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/util/DiffUtil$Snake;

    .line 734
    .local v5, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    iget v6, v5, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v7, v5, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v6, v7

    .line 735
    .local v6, "endX":I
    iget v7, v5, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v8, v5, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v7, v8

    .line 736
    .local v7, "endY":I
    const/4 v8, 0x4

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-eqz p4, :cond_58

    .line 738
    add-int/lit8 v11, v3, -0x1

    .local v11, "pos":I
    :goto_30
    if-lt v11, v6, :cond_86

    .line 739
    iget-object v12, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v12, v11, v1}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v12

    if-eqz v12, :cond_55

    .line 741
    iget-object v12, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v12, v11, v1}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v12

    .line 742
    .local v12, "theSame":Z
    if-eqz v12, :cond_45

    const/16 v8, 0x8

    nop

    .line 744
    .local v8, "changeFlag":I
    :cond_45
    iget-object v9, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v13, v11, 0x5

    or-int/lit8 v13, v13, 0x10

    aput v13, v9, v1

    .line 745
    iget-object v9, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v13, v1, 0x5

    or-int/2addr v13, v8

    aput v13, v9, v11

    .line 746
    return v10

    .line 738
    .end local v8    # "changeFlag":I
    .end local v12    # "theSame":Z
    :cond_55
    add-int/lit8 v11, v11, -0x1

    goto :goto_30

    .line 751
    .end local v11    # "pos":I
    :cond_58
    add-int/lit8 v11, v4, -0x1

    .restart local v11    # "pos":I
    :goto_5a
    if-lt v11, v7, :cond_86

    .line 752
    iget-object v12, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v12, v1, v11}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v12

    if-eqz v12, :cond_83

    .line 754
    iget-object v12, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v12, v1, v11}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v12

    .line 755
    .restart local v12    # "theSame":Z
    if-eqz v12, :cond_6f

    const/16 v8, 0x8

    nop

    .line 757
    .restart local v8    # "changeFlag":I
    :cond_6f
    iget-object v9, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int/lit8 v13, p1, -0x1

    shl-int/lit8 v14, v11, 0x5

    or-int/lit8 v14, v14, 0x10

    aput v14, v9, v13

    .line 758
    iget-object v9, v0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int/lit8 v13, p1, -0x1

    shl-int/lit8 v13, v13, 0x5

    or-int/2addr v13, v8

    aput v13, v9, v11

    .line 759
    return v10

    .line 751
    .end local v8    # "changeFlag":I
    .end local v12    # "theSame":Z
    :cond_83
    add-int/lit8 v11, v11, -0x1

    goto :goto_5a

    .line 763
    .end local v11    # "pos":I
    :cond_86
    iget v3, v5, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 764
    iget v4, v5, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 732
    .end local v5    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    .end local v6    # "endX":I
    .end local v7    # "endY":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 766
    .end local v2    # "i":I
    :cond_8d
    const/4 v2, 0x0

    return v2
.end method

.method private findMatchingItems()V
    .registers 15

    .line 610
    iget v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    .line 611
    .local v0, "posOld":I
    iget v1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    .line 613
    .local v1, "posNew":I
    iget-object v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_c
    if-ltz v2, :cond_62

    .line 614
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/util/DiffUtil$Snake;

    .line 615
    .local v4, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    iget v5, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v6, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v5, v6

    .line 616
    .local v5, "endX":I
    iget v6, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget v7, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v6, v7

    .line 617
    .local v6, "endY":I
    iget-boolean v7, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-eqz v7, :cond_34

    .line 618
    :goto_24
    if-le v0, v5, :cond_2c

    .line 620
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/util/DiffUtil$DiffResult;->findAddition(III)V

    .line 621
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    .line 623
    :cond_2c
    :goto_2c
    if-le v1, v6, :cond_34

    .line 626
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/util/DiffUtil$DiffResult;->findRemoval(III)V

    .line 627
    add-int/lit8 v1, v1, -0x1

    goto :goto_2c

    .line 630
    :cond_34
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_35
    iget v8, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    if-ge v7, v8, :cond_5b

    .line 632
    iget v8, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/2addr v8, v7

    .line 633
    .local v8, "oldItemPos":I
    iget v9, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/2addr v9, v7

    .line 634
    .local v9, "newItemPos":I
    iget-object v10, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    .line 635
    invoke-virtual {v10, v8, v9}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v10

    .line 636
    .local v10, "theSame":Z
    if-eqz v10, :cond_49

    const/4 v11, 0x1

    goto :goto_4a

    :cond_49
    const/4 v11, 0x2

    .line 637
    .local v11, "changeFlag":I
    :goto_4a
    iget-object v12, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v13, v9, 0x5

    or-int/2addr v13, v11

    aput v13, v12, v8

    .line 638
    iget-object v12, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v13, v8, 0x5

    or-int/2addr v13, v11

    aput v13, v12, v9

    .line 630
    .end local v8    # "oldItemPos":I
    .end local v9    # "newItemPos":I
    .end local v10    # "theSame":Z
    .end local v11    # "changeFlag":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    .line 640
    .end local v7    # "j":I
    :cond_5b
    iget v0, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 641
    iget v1, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 613
    .end local v4    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    .end local v5    # "endX":I
    .end local v6    # "endY":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 643
    .end local v2    # "i":I
    :cond_62
    return-void
.end method

.method private findRemoval(III)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I

    .line 653
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_9

    .line 654
    return-void

    .line 656
    :cond_9
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    .line 657
    return-void
.end method

.method private static removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    .registers 10
    .param p1, "pos"    # I
    .param p2, "removal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;IZ)",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;"
        }
    .end annotation

    .line 857
    .local p0, "updates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_37

    .line 858
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    .line 859
    .local v2, "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    iget v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->posInOwnerList:I

    if-ne v3, p1, :cond_34

    iget-boolean v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->removal:Z

    if-ne v3, p2, :cond_34

    .line 860
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 861
    move v3, v0

    .local v3, "j":I
    :goto_1a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_33

    .line 863
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    iget v5, v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    if-eqz p2, :cond_2c

    const/4 v6, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v6, -0x1

    :goto_2d
    add-int/2addr v5, v6

    iput v5, v4, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    .line 861
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 865
    .end local v3    # "j":I
    :cond_33
    return-object v2

    .line 857
    .end local v2    # "update":Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    :cond_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 868
    .end local v0    # "i":I
    :cond_37
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public convertNewPositionToOld(I)I
    .registers 5
    .param p1, "newListPosition"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 695
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    array-length v0, v0

    if-ge p1, v0, :cond_14

    .line 699
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v0, v0, p1

    .line 700
    .local v0, "status":I
    and-int/lit8 v1, v0, 0x1f

    if-nez v1, :cond_11

    .line 701
    const/4 v1, -0x1

    return v1

    .line 703
    :cond_11
    shr-int/lit8 v1, v0, 0x5

    return v1

    .line 696
    .end local v0    # "status":I
    :cond_14
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index out of bounds - passed position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new list size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public convertOldPositionToNew(I)I
    .registers 5
    .param p1, "oldListPosition"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 671
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    array-length v0, v0

    if-ge p1, v0, :cond_14

    .line 675
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v0, v0, p1

    .line 676
    .local v0, "status":I
    and-int/lit8 v1, v0, 0x1f

    if-nez v1, :cond_11

    .line 677
    const/4 v1, -0x1

    return v1

    .line 679
    :cond_11
    shr-int/lit8 v1, v0, 0x5

    return v1

    .line 672
    .end local v0    # "status":I
    :cond_14
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index out of bounds - passed position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", old list size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V
    .registers 19
    .param p1, "updateCallback"    # Landroid/support/v7/util/ListUpdateCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 816
    move-object/from16 v8, p0

    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/support/v7/util/BatchingListUpdateCallback;

    if-eqz v1, :cond_e

    .line 817
    move-object v1, v0

    check-cast v1, Landroid/support/v7/util/BatchingListUpdateCallback;

    .line 827
    .end local p1    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .local v9, "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .local v10, "batchingCallback":Landroid/support/v7/util/BatchingListUpdateCallback;
    :goto_b
    move-object v9, v0

    move-object v10, v1

    goto :goto_15

    .line 819
    .end local v9    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .end local v10    # "batchingCallback":Landroid/support/v7/util/BatchingListUpdateCallback;
    .restart local p1    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    :cond_e
    new-instance v1, Landroid/support/v7/util/BatchingListUpdateCallback;

    invoke-direct {v1, v0}, Landroid/support/v7/util/BatchingListUpdateCallback;-><init>(Landroid/support/v7/util/ListUpdateCallback;)V

    .line 823
    .local v1, "batchingCallback":Landroid/support/v7/util/BatchingListUpdateCallback;
    move-object v0, v1

    goto :goto_b

    .line 827
    .end local v1    # "batchingCallback":Landroid/support/v7/util/BatchingListUpdateCallback;
    .end local p1    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .restart local v9    # "updateCallback":Landroid/support/v7/util/ListUpdateCallback;
    .restart local v10    # "batchingCallback":Landroid/support/v7/util/BatchingListUpdateCallback;
    :goto_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v1, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    iget v0, v8, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    .line 829
    .local v0, "posOld":I
    iget v2, v8, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    .line 830
    .local v2, "posNew":I
    iget-object v3, v8, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v11, 0x1

    sub-int/2addr v3, v11

    move v12, v0

    move v13, v2

    .end local v0    # "posOld":I
    .end local v2    # "posNew":I
    .local v3, "snakeIndex":I
    .local v12, "posOld":I
    .local v13, "posNew":I
    :goto_28
    move v14, v3

    .end local v3    # "snakeIndex":I
    .local v14, "snakeIndex":I
    if-ltz v14, :cond_94

    .line 831
    iget-object v0, v8, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/support/v7/util/DiffUtil$Snake;

    .line 832
    .local v15, "snake":Landroid/support/v7/util/DiffUtil$Snake;
    iget v7, v15, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 833
    .local v7, "snakeSize":I
    iget v0, v15, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int v6, v0, v7

    .line 834
    .local v6, "endX":I
    iget v0, v15, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int v5, v0, v7

    .line 835
    .local v5, "endY":I
    if-ge v6, v12, :cond_4c

    .line 836
    sub-int v4, v12, v6

    move-object/from16 v0, p0

    move-object v2, v10

    move v3, v6

    move v11, v5

    .end local v5    # "endY":I
    .local v11, "endY":I
    move v5, v6

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchRemovals(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V

    goto :goto_4d

    .line 839
    .end local v11    # "endY":I
    .restart local v5    # "endY":I
    :cond_4c
    move v11, v5

    .end local v5    # "endY":I
    .restart local v11    # "endY":I
    :goto_4d
    if-ge v11, v13, :cond_5f

    .line 840
    sub-int v0, v13, v11

    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v10

    move v5, v6

    move/from16 v16, v6

    .end local v6    # "endX":I
    .local v16, "endX":I
    move v6, v0

    move v0, v7

    .end local v7    # "snakeSize":I
    .local v0, "snakeSize":I
    move v7, v11

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchAdditions(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V

    goto :goto_62

    .line 843
    .end local v0    # "snakeSize":I
    .end local v16    # "endX":I
    .restart local v6    # "endX":I
    .restart local v7    # "snakeSize":I
    :cond_5f
    move/from16 v16, v6

    move v0, v7

    .end local v6    # "endX":I
    .end local v7    # "snakeSize":I
    .restart local v0    # "snakeSize":I
    .restart local v16    # "endX":I
    :goto_62
    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_64
    move v2, v7

    .end local v7    # "i":I
    .local v2, "i":I
    if-ltz v2, :cond_8b

    .line 844
    iget-object v3, v8, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    iget v4, v15, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/2addr v4, v2

    aget v3, v3, v4

    and-int/lit8 v3, v3, 0x1f

    const/4 v4, 0x2

    if-ne v3, v4, :cond_87

    .line 845
    iget v3, v15, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/2addr v3, v2

    iget-object v4, v8, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    iget v5, v15, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/2addr v5, v2

    iget v6, v15, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/2addr v6, v2

    .line 846
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v4

    .line 845
    const/4 v5, 0x1

    invoke-virtual {v10, v3, v5, v4}, Landroid/support/v7/util/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_88

    .line 843
    :cond_87
    const/4 v5, 0x1

    :goto_88
    add-int/lit8 v7, v2, -0x1

    goto :goto_64

    .line 849
    .end local v2    # "i":I
    :cond_8b
    const/4 v5, 0x1

    iget v12, v15, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 850
    iget v13, v15, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 830
    .end local v0    # "snakeSize":I
    .end local v11    # "endY":I
    .end local v15    # "snake":Landroid/support/v7/util/DiffUtil$Snake;
    .end local v16    # "endX":I
    add-int/lit8 v3, v14, -0x1

    const/4 v11, 0x1

    goto :goto_28

    .line 852
    .end local v14    # "snakeIndex":I
    :cond_94
    invoke-virtual {v10}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 853
    return-void
.end method

.method public dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 802
    new-instance v0, Landroid/support/v7/util/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Landroid/support/v7/util/AdapterListUpdateCallback;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V

    .line 803
    return-void
.end method

.method getSnakes()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation

    .line 954
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    return-object v0
.end method

###### Class android.support.v7.util.DiffUtil.ItemCallback (android.support.v7.util.DiffUtil$ItemCallback)
.class public abstract Landroid/support/v7/util/DiffUtil$ItemCallback;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 373
    .local p0, "this":Landroid/support/v7/util/DiffUtil$ItemCallback;, "Landroid/support/v7/util/DiffUtil$ItemCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method public abstract areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method public getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 434
    .local p0, "this":Landroid/support/v7/util/DiffUtil$ItemCallback;, "Landroid/support/v7/util/DiffUtil$ItemCallback<TT;>;"
    .local p1, "oldItem":Ljava/lang/Object;, "TT;"
    .local p2, "newItem":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return-object v0
.end method

###### Class android.support.v7.util.DiffUtil.PostponedUpdate (android.support.v7.util.DiffUtil$PostponedUpdate)
.class Landroid/support/v7/util/DiffUtil$PostponedUpdate;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostponedUpdate"
.end annotation


# instance fields
.field currentPos:I

.field posInOwnerList:I

.field removal:Z


# direct methods
.method public constructor <init>(IIZ)V
    .registers 4
    .param p1, "posInOwnerList"    # I
    .param p2, "currentPos"    # I
    .param p3, "removal"    # Z

    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
    iput p1, p0, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->posInOwnerList:I

    .line 975
    iput p2, p0, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    .line 976
    iput-boolean p3, p0, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->removal:Z

    .line 977
    return-void
.end method

###### Class android.support.v7.util.DiffUtil.Range (android.support.v7.util.DiffUtil$Range)
.class Landroid/support/v7/util/DiffUtil$Range;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Range"
.end annotation


# instance fields
.field newListEnd:I

.field newListStart:I

.field oldListEnd:I

.field oldListStart:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "oldListStart"    # I
    .param p2, "oldListEnd"    # I
    .param p3, "newListStart"    # I
    .param p4, "newListEnd"    # I

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput p1, p0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 487
    iput p2, p0, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 488
    iput p3, p0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    .line 489
    iput p4, p0, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    .line 490
    return-void
.end method

###### Class android.support.v7.util.DiffUtil.Snake (android.support.v7.util.DiffUtil$Snake)
.class Landroid/support/v7/util/DiffUtil$Snake;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Snake"
.end annotation


# instance fields
.field removal:Z

.field reverse:Z

.field size:I

.field x:I

.field y:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
