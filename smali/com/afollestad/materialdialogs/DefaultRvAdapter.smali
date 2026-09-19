###### Class com.afollestad.materialdialogs.DefaultRvAdapter (com.afollestad.materialdialogs.DefaultRvAdapter)
.class Lcom/afollestad/materialdialogs/DefaultRvAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DefaultRvAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;,
        Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;

.field private final dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private final itemGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field private final layout:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog;I)V
    .registers 4
    .param p1, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;
    .param p2, "layout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 31
    iput p2, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->layout:I

    .line 32
    iget-object v0, p1, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->itemGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .registers 2
    .param p0, "x0"    # Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    .line 22
    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;
    .registers 2
    .param p0, "x0"    # Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    .line 22
    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->callback:Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;

    return-object v0
.end method

.method private isRTL()Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-ge v0, v2, :cond_8

    .line 165
    return v1

    .line 167
    :cond_8
    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getBuilder()Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 168
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    const/4 v1, 0x1

    nop

    :cond_23
    return v1
.end method

.method private setupGravity(Landroid/view/ViewGroup;)V
    .registers 10
    .param p1, "view"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 121
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    .line 122
    .local v0, "itemRoot":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->itemGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/GravityEnum;->getGravityInt()I

    move-result v1

    .line 123
    .local v1, "gravityInt":I
    or-int/lit8 v2, v1, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 125
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_98

    .line 126
    iget-object v2, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->itemGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v3, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_57

    .line 127
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->isRTL()Z

    move-result v2

    if-nez v2, :cond_57

    .line 128
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/CompoundButton;

    if-eqz v2, :cond_57

    .line 129
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    .line 130
    .local v2, "first":Landroid/widget/CompoundButton;
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 132
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 133
    .local v3, "second":Landroid/widget/TextView;
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 134
    nop

    .line 135
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    .line 136
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    .line 137
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    .line 138
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    .line 134
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 140
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 141
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 142
    .end local v2    # "first":Landroid/widget/CompoundButton;
    .end local v3    # "second":Landroid/widget/TextView;
    goto :goto_98

    :cond_57
    iget-object v2, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->itemGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v3, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v2, v3, :cond_98

    .line 143
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 144
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/CompoundButton;

    if-eqz v3, :cond_98

    .line 145
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    .line 146
    .restart local v2    # "first":Landroid/widget/CompoundButton;
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 148
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 149
    .restart local v3    # "second":Landroid/widget/TextView;
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 150
    nop

    .line 151
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    .line 152
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    .line 153
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    .line 154
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    .line 150
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 156
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 157
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 160
    .end local v2    # "first":Landroid/widget/CompoundButton;
    .end local v3    # "second":Landroid/widget/TextView;
    :cond_98
    :goto_98
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 22
    check-cast p1, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;

    invoke-virtual {p0, p1, p2}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->onBindViewHolder(Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;I)V
    .registers 11
    .param p1, "holder"    # Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;
    .param p2, "index"    # I

    .line 48
    iget-object v0, p1, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->itemView:Landroid/view/View;

    .line 49
    .local v0, "view":Landroid/view/View;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->disabledIndices:[Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->isIn(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 50
    .local v1, "disabled":Z
    if-eqz v1, :cond_20

    iget-object v2, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemColor:I

    const v3, 0x3ecccccd    # 0.4f

    .line 52
    invoke-static {v2, v3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->adjustAlpha(IF)I

    move-result v2

    goto :goto_26

    :cond_20
    iget-object v2, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemColor:I

    .line 54
    .local v2, "itemTextColor":I
    :goto_26
    iget-object v3, p1, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->itemView:Landroid/view/View;

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 56
    sget-object v3, Lcom/afollestad/materialdialogs/DefaultRvAdapter$1;->$SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType:[I

    iget-object v4, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    invoke-virtual {v4}, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_122

    goto :goto_a6

    .line 74
    :pswitch_3f
    iget-object v3, p1, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->control:Landroid/widget/CompoundButton;

    check-cast v3, Landroid/widget/CheckBox;

    .line 75
    .local v3, "checkbox":Landroid/widget/CheckBox;
    iget-object v6, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v6, v6, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 76
    .local v6, "selected":Z
    iget-object v7, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->choiceWidgetColor:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_61

    .line 77
    iget-object v7, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->choiceWidgetColor:Landroid/content/res/ColorStateList;

    invoke-static {v3, v7}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/CheckBox;Landroid/content/res/ColorStateList;)V

    goto :goto_6a

    .line 79
    :cond_61
    iget-object v7, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    invoke-static {v3, v7}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/CheckBox;I)V

    .line 81
    :goto_6a
    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 82
    xor-int/lit8 v7, v1, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 83
    goto :goto_a6

    .line 60
    .end local v3    # "checkbox":Landroid/widget/CheckBox;
    .end local v6    # "selected":Z
    :pswitch_73
    iget-object v3, p1, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->control:Landroid/widget/CompoundButton;

    check-cast v3, Landroid/widget/RadioButton;

    .line 61
    .local v3, "radio":Landroid/widget/RadioButton;
    iget-object v6, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v6, v6, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v6, v6, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndex:I

    if-ne v6, p2, :cond_81

    const/4 v6, 0x1

    goto :goto_82

    :cond_81
    const/4 v6, 0x0

    .line 62
    .restart local v6    # "selected":Z
    :goto_82
    iget-object v7, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->choiceWidgetColor:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_94

    .line 63
    iget-object v7, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->choiceWidgetColor:Landroid/content/res/ColorStateList;

    invoke-static {v3, v7}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/RadioButton;Landroid/content/res/ColorStateList;)V

    goto :goto_9d

    .line 65
    :cond_94
    iget-object v7, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    invoke-static {v3, v7}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/RadioButton;I)V

    .line 67
    :goto_9d
    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 68
    xor-int/lit8 v7, v1, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 69
    nop

    .line 87
    .end local v3    # "radio":Landroid/widget/RadioButton;
    .end local v6    # "selected":Z
    :goto_a6
    iget-object v3, p1, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->title:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v6, v6, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v6, v6, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v3, p1, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget-object v3, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v6, p1, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->title:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->regularFont:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6, v7}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 91
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->setupGravity(Landroid/view/ViewGroup;)V

    .line 93
    iget-object v3, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v3, v3, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v3, v3, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemIds:[I

    if-eqz v3, :cond_f0

    .line 94
    iget-object v3, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v3, v3, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v3, v3, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemIds:[I

    array-length v3, v3

    if-ge p2, v3, :cond_ec

    .line 95
    iget-object v3, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v3, v3, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v3, v3, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemIds:[I

    aget v3, v3, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    goto :goto_f0

    .line 97
    :cond_ec
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    .line 101
    :cond_f0
    :goto_f0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v3, v6, :cond_120

    .line 102
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 103
    .local v3, "group":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_120

    .line 105
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/CompoundButton;

    const/4 v7, 0x0

    if-eqz v6, :cond_111

    .line 106
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_120

    .line 107
    :cond_111
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/CompoundButton;

    if-eqz v4, :cond_120

    .line 108
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 112
    .end local v3    # "group":Landroid/view/ViewGroup;
    :cond_120
    :goto_120
    return-void

    nop

    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_73
        :pswitch_3f
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->getListSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 43
    new-instance v1, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;

    invoke-direct {v1, v0, p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;-><init>(Landroid/view/View;Lcom/afollestad/materialdialogs/DefaultRvAdapter;)V

    return-object v1
.end method

.method setCallback(Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;

    .line 36
    iput-object p1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->callback:Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;

    .line 37
    return-void
.end method

###### Class com.afollestad.materialdialogs.DefaultRvAdapter.AnonymousClass1 (com.afollestad.materialdialogs.DefaultRvAdapter$1)
.class synthetic Lcom/afollestad/materialdialogs/DefaultRvAdapter$1;
.super Ljava/lang/Object;
.source "DefaultRvAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/DefaultRvAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 56
    invoke-static {}, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->values()[Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$1;->$SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType:[I

    :try_start_9
    sget-object v0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$1;->$SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType:[I

    sget-object v1, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->SINGLE:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->ordinal()I

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
    sget-object v0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$1;->$SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType:[I

    sget-object v1, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->MULTI:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    return-void
.end method

###### Class com.afollestad.materialdialogs.DefaultRvAdapter.DefaultVH (com.afollestad.materialdialogs.DefaultRvAdapter$DefaultVH)
.class Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DefaultRvAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/DefaultRvAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultVH"
.end annotation


# instance fields
.field final adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

.field final control:Landroid/widget/CompoundButton;

.field final title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/afollestad/materialdialogs/DefaultRvAdapter;)V
    .registers 4
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "adapter"    # Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    .line 185
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 186
    sget v0, Lcom/afollestad/materialdialogs/R$id;->md_control:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->control:Landroid/widget/CompoundButton;

    .line 187
    sget v0, Lcom/afollestad/materialdialogs/R$id;->md_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->title:Landroid/widget/TextView;

    .line 188
    iput-object p2, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    .line 189
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-static {p2}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$000(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listLongCallback:Lcom/afollestad/materialdialogs/MaterialDialog$ListLongCallback;

    if-eqz v0, :cond_29

    .line 191
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 193
    :cond_29
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .line 197
    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$100(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5b

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$000(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:Ljava/util/ArrayList;

    if-eqz v1, :cond_45

    .line 200
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->getAdapterPosition()I

    move-result v1

    iget-object v2, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    invoke-static {v2}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$000(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v2

    iget-object v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 201
    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$000(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    .line 203
    :cond_45
    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$100(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    invoke-static {v2}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$000(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v2

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->getAdapterPosition()I

    move-result v4

    const/4 v6, 0x0

    move-object v3, p1

    move-object v5, v0

    invoke-interface/range {v1 .. v6}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;->onItemSelected(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;Z)Z

    .line 205
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_5b
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .line 209
    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$100(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;

    move-result-object v0

    if-eqz v0, :cond_5d

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5d

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$000(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:Ljava/util/ArrayList;

    if-eqz v1, :cond_45

    .line 212
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->getAdapterPosition()I

    move-result v1

    iget-object v2, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    invoke-static {v2}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$000(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v2

    iget-object v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 213
    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$000(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    .line 215
    :cond_45
    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$100(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    .line 216
    invoke-static {v2}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$000(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v2

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->getAdapterPosition()I

    move-result v4

    const/4 v6, 0x1

    .line 215
    move-object v3, p1

    move-object v5, v0

    invoke-interface/range {v1 .. v6}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;->onItemSelected(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;Z)Z

    move-result v1

    return v1

    .line 218
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_5d
    const/4 v0, 0x0

    return v0
.end method

###### Class com.afollestad.materialdialogs.DefaultRvAdapter.InternalListCallback (com.afollestad.materialdialogs.DefaultRvAdapter$InternalListCallback)
.class interface abstract Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;
.super Ljava/lang/Object;
.source "DefaultRvAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/DefaultRvAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "InternalListCallback"
.end annotation


# virtual methods
.method public abstract onItemSelected(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;Z)Z
.end method
